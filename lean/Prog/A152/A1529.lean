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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A152900: Primes p such that there exists a triangular number t with p*t also triangular.

The programs for A152900, there is no canonical definition to state claims against.
-/

/-! ## A152900.P7647835422428157626

`p?[lt[A100796(n+1), 15]]`
-/

namespace A152900.P7647835422428157626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100796 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A152900.P7647835422428157626

/-! ## A152900.P4543466648459160899

`A000040(∑[∏{e}[A000108(n), #]])`
-/

namespace A152900.P4543466648459160899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152900.P4543466648459160899

/-! ## A152900.P12203429748423418491

`A216887(∑[∏{e}[A000108(n), #]])`
-/

namespace A152900.P12203429748423418491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216887 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152900.P12203429748423418491

/-! ## A152900.P2965401802621172628

`A008578(∑[∏{e}[A000108(n), #]]+1)`
-/

namespace A152900.P2965401802621172628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A152900.P2965401802621172628

/-!
# A152901: Decimal expansion of log_24 (2).

The programs for A152901, there is no canonical definition to state claims against.
-/

/-! ## A152901.P7763126987642673870

`9-A154216(n)`
-/

namespace A152901.P7763126987642673870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A154216 n

end

end A152901.P7763126987642673870

/-!
# A152902: Convolution sequence, A000027 / A008683.

The programs for A152902, there is no canonical definition to state claims against.
-/

/-! ## A152902.P5867756938076978456

`∑[∑[A073776(n)]]`
-/

namespace A152902.P5867756938076978456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073776 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152902.P5867756938076978456

/-! ## A152902.P13500862588561059242

`record[abs(A152903(n+1))]`
-/

namespace A152902.P13500862588561059242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A152903 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152902.P13500862588561059242

/-! ## A152902.P7713465493646058137

`sqrt(record[A152903(n+2)²])`
-/

namespace A152902.P7713465493646058137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152903 (n + 2) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A152902.P7713465493646058137

/-! ## A152902.P14737999781094797290

`∑[∑[A336358(A048811(n+7))]]`
-/

namespace A152902.P14737999781094797290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336358 (A048811 (n + 7)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152902.P14737999781094797290

/-! ## A152902.P7834970420664539915

`∑[∑[A135665(7*A206432(n))]]`
-/

namespace A152902.P7834970420664539915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (7 * A206432 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152902.P7834970420664539915

/-!
# A152904: Triangle read by rows: T(n,k) = A008683(n-k+1); 1<=k<=n; mu(n) "decrescendo".

The programs for A152904, the canonical program `A152904.P15399582764245374812` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152904 has offset 1).

The definition of A152904 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152904.P15399582764245374812

`∏{e}[C(comp[∑[n]]-n, 2)-n, -#^(1-n^8)]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A152904

/-- `∏{e}[C(comp[∑[n]]-n, 2)-n, -#^(1-n^8)]` -/
def P15399582764245374812.Spec : Prop :=
  ∀ n, P15399582764245374812.a n = (A152904 (n + 1) : ℚ)

end A152904

/-! ## A152904.P9885686526682547588

`A008683(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A152904.P9885686526682547588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A152904.P9885686526682547588

namespace A152904

/-- `A008683(C(comp[∑[n]]-n, 2)-n)` -/
def P9885686526682547588.Spec : Prop :=
  ∀ n, P9885686526682547588.a n = A152904 (n + 1)

end A152904

/-! ## A152904.P10968634778811485401

`A008683(A004736(n+1))`
-/

namespace A152904.P10968634778811485401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A004736 (n + 1)).toNat

end

end A152904.P10968634778811485401

namespace A152904

/-- `A008683(A004736(n+1))` -/
def P10968634778811485401.Spec : Prop :=
  ∀ n, P10968634778811485401.a n = A152904 (n + 1)

end A152904

/-! ## A152904.P11663570283741335157

`A008683(A025581(n)+1)`
-/

namespace A152904.P11663570283741335157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A025581 n + 1).toNat

end

end A152904.P11663570283741335157

namespace A152904

/-- `A008683(A025581(n)+1)` -/
def P11663570283741335157.Spec : Prop :=
  ∀ n, P11663570283741335157.a n = A152904 (n + 1)

end A152904

/-! ## A152904.P8587343118153126253

`A054527(A286244(n+1))`
-/

namespace A152904.P8587343118153126253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054527 (A286244 (n + 1)).toNat

end

end A152904.P8587343118153126253

namespace A152904

/-- `A054527(A286244(n+1))` -/
def P8587343118153126253.Spec : Prop :=
  ∀ n, P8587343118153126253.a n = A152904 (n + 1)

end A152904

/-! ## A152904.P4776977200140933674

`A008683(A103217(n)/A099375(n))`
-/

namespace A152904.P4776977200140933674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((A103217 n : ℚ) / (A099375 n : ℚ))).toNat

end

end A152904.P4776977200140933674

namespace A152904

/-- `A008683(A103217(n)/A099375(n))` -/
def P4776977200140933674.Spec : Prop :=
  ∀ n, P4776977200140933674.a n = A152904 (n + 1)

end A152904

/-! ## A152904.P10808322966565055366

`A008683(A002024(n+1)-A002262(n))`
-/

namespace A152904.P10808322966565055366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002024 (n + 1) - A002262 n).toNat

end

end A152904.P10808322966565055366

namespace A152904

/-- `A008683(A002024(n+1)-A002262(n))` -/
def P10808322966565055366.Spec : Prop :=
  ∀ n, P10808322966565055366.a n = A152904 (n + 1)

end A152904

/-! ## A152904.P8437728677724514567

`A054527(A038722(n+1))`
-/

namespace A152904.P8437728677724514567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054527 (A038722 (n + 1)).toNat

end

end A152904.P8437728677724514567

namespace A152904

/-- `A054527(A038722(n+1))` -/
def P8437728677724514567.Spec : Prop :=
  ∀ n, P8437728677724514567.a n = A152904 (n + 1)

end A152904

/-! ## A152904.P1152252292461691703

`A054527(A278818(n))`
-/

namespace A152904.P1152252292461691703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054527 (A278818 n).toNat

end

end A152904.P1152252292461691703

namespace A152904

/-- `A054527(A278818(n))` -/
def P1152252292461691703.Spec : Prop :=
  ∀ n, P1152252292461691703.a n = A152904 (n + 1)

end A152904

/-! ## A152904.P1634357445650168460

`A053864(A055461(n+1))`
-/

namespace A152904.P1634357445650168460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053864 (A055461 (n + 1)).toNat

end

end A152904.P1634357445650168460

namespace A152904

/-- `A053864(A055461(n+1))` -/
def P1634357445650168460.Spec : Prop :=
  ∀ n, P1634357445650168460.a n = A152904 (n + 1)

end A152904

/-! ## A152904.P16905538721681017396

`A008683(A057555(2*(n+1)))`
-/

namespace A152904.P16905538721681017396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A057555 (2 * (n + 1))).toNat

end

end A152904.P16905538721681017396

namespace A152904

/-- `A008683(A057555(2*(n+1)))` -/
def P16905538721681017396.Spec : Prop :=
  ∀ n, P16905538721681017396.a n = A152904 (n + 1)

end A152904

/-! ## A152904.P4872085691919376500

`A008683(A097285(2*(n+1))-A097285(2*n+1))`
-/

namespace A152904.P4872085691919376500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A097285 (2 * (n + 1)) - A097285 (2 * n + 1)).toNat

end

end A152904.P4872085691919376500

namespace A152904

/-- `A008683(A097285(2*(n+1))-A097285(2*n+1))` -/
def P4872085691919376500.Spec : Prop :=
  ∀ n, P4872085691919376500.a n = A152904 (n + 1)

end A152904

/-! ## A152904.P7967079276419314776

`A008683(A143326(n+1)/A143327(n+1))`
-/

namespace A152904.P7967079276419314776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((A143326 (n + 1) : ℚ) / (A143327 (n + 1) : ℚ))).toNat

end

end A152904.P7967079276419314776

namespace A152904

/-- `A008683(A143326(n+1)/A143327(n+1))` -/
def P7967079276419314776.Spec : Prop :=
  ∀ n, P7967079276419314776.a n = A152904 (n + 1)

end A152904

/-! ## A152904.P1831979333590403811

`A008683(A352001(n+1))`
-/

namespace A152904.P1831979333590403811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A352001 (n + 1)).toNat

end

end A152904.P1831979333590403811

namespace A152904

/-- `A008683(A352001(n+1))` -/
def P1831979333590403811.Spec : Prop :=
  ∀ n, P1831979333590403811.a n = A152904 (n + 1)

end A152904

/-! ## A152904.P12041558365019996965

`A344864(A130321(n))`
-/

namespace A152904.P12041558365019996965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344864 (A130321 n).toNat

end

end A152904.P12041558365019996965

namespace A152904

/-- `A344864(A130321(n))` -/
def P12041558365019996965.Spec : Prop :=
  ∀ n, P12041558365019996965.a n = A152904 (n + 1)

end A152904

/-!
# A152905: Irregular triangle read by rows, numbers in A007318 repeated .

The programs for A152905, the canonical program `A152905.P10328363192187516747` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152905 has offset 0).

The definition of A152905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152905.P10328363192187516747

`A007318(floor(n/2))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A152905

/-- `A007318(floor(n/2))` -/
def P10328363192187516747.Spec : Prop :=
  ∀ n, P10328363192187516747.a n = A152905 n

theorem P10328363192187516747.correct : P10328363192187516747.Spec := by
  intro n
  simp only [A152905]

end A152905

/-! ## A152905.P10583938474020178944

`A028326(A004526(n))/2`
-/

namespace A152905.P10583938474020178944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 (A004526 n).toNat : ℚ) / 2

end

end A152905.P10583938474020178944

namespace A152905

/-- `A028326(A004526(n))/2` -/
def P10583938474020178944.Spec : Prop :=
  ∀ n, P10583938474020178944.a n = (A152905 n : ℚ)

end A152905

/-! ## A152905.P6726935452790746321

`A152906(A168237(n))`
-/

namespace A152905.P6726935452790746321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152906 (A168237 n).toNat

end

end A152905.P6726935452790746321

namespace A152905

/-- `A152906(A168237(n))` -/
def P6726935452790746321.Spec : Prop :=
  ∀ n, P6726935452790746321.a n = A152905 n

end A152905

/-! ## A152905.P14975626108344337210

`A152906(A007494(n))`
-/

namespace A152905.P14975626108344337210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152906 (A007494 n).toNat

end

end A152905.P14975626108344337210

namespace A152905

/-- `A152906(A007494(n))` -/
def P14975626108344337210.Spec : Prop :=
  ∀ n, P14975626108344337210.a n = A152905 n

end A152905

/-! ## A152905.P6185096429641018421

`A152906(A026430(n))`
-/

namespace A152905.P6185096429641018421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152906 (A026430 n).toNat

end

end A152905.P6185096429641018421

namespace A152905

/-- `A152906(A026430(n))` -/
def P6185096429641018421.Spec : Prop :=
  ∀ n, P6185096429641018421.a n = A152905 n

end A152905

/-! ## A152905.P18043781704987585417

`A152906(A032766(n))`
-/

namespace A152905.P18043781704987585417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152906 (A032766 n).toNat

end

end A152905.P18043781704987585417

namespace A152905

/-- `A152906(A032766(n))` -/
def P18043781704987585417.Spec : Prop :=
  ∀ n, P18043781704987585417.a n = A152905 n

end A152905

/-! ## A152905.P5996013126485946181

`A152906(A166517(n))`
-/

namespace A152905.P5996013126485946181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152906 (A166517 n).toNat

end

end A152905.P5996013126485946181

namespace A152905

/-- `A152906(A166517(n))` -/
def P5996013126485946181.Spec : Prop :=
  ∀ n, P5996013126485946181.a n = A152905 n

end A152905

/-! ## A152905.P7270281837158440480

`A152906(A057353(2*n))`
-/

namespace A152905.P7270281837158440480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152906 (A057353 (2 * n)).toNat

end

end A152905.P7270281837158440480

namespace A152905

/-- `A152906(A057353(2*n))` -/
def P7270281837158440480.Spec : Prop :=
  ∀ n, P7270281837158440480.a n = A152905 n

end A152905

/-! ## A152905.P9419746138302663774

`A152907(2*n)`
-/

namespace A152905.P9419746138302663774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152907 (2 * n)

end

end A152905.P9419746138302663774

namespace A152905

/-- `A152907(2*n)` -/
def P9419746138302663774.Spec : Prop :=
  ∀ n, P9419746138302663774.a n = A152905 n

end A152905

/-! ## A152905.P4894505178451042896

`A152906(A130766(2*n))`
-/

namespace A152905.P4894505178451042896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152906 (A130766 (2 * n)).toNat

end

end A152905.P4894505178451042896

namespace A152905

/-- `A152906(A130766(2*n))` -/
def P4894505178451042896.Spec : Prop :=
  ∀ n, P4894505178451042896.a n = A152905 n

end A152905

/-! ## A152905.P17020083514752096679

`A152906(A187321(2*n))`
-/

namespace A152905.P17020083514752096679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152906 (A187321 (2 * n)).toNat

end

end A152905.P17020083514752096679

namespace A152905

/-- `A152906(A187321(2*n))` -/
def P17020083514752096679.Spec : Prop :=
  ∀ n, P17020083514752096679.a n = A152905 n

end A152905

/-! ## A152905.P6566758903756321317

`A028326(A002265(2*n))/2`
-/

namespace A152905.P6566758903756321317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 (A002265 (2 * n)).toNat : ℚ) / 2

end

end A152905.P6566758903756321317

namespace A152905

/-- `A028326(A002265(2*n))/2` -/
def P6566758903756321317.Spec : Prop :=
  ∀ n, P6566758903756321317.a n = (A152905 n : ℚ)

end A152905

/-! ## A152905.P8431594064317908913

`A211226(A007607(n+1)-1)`
-/

namespace A152905.P8431594064317908913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211226 (A007607 (n + 1) - 1).toNat

end

end A152905.P8431594064317908913

namespace A152905

/-- `A211226(A007607(n+1)-1)` -/
def P8431594064317908913.Spec : Prop :=
  ∀ n, P8431594064317908913.a n = A152905 n

end A152905

/-! ## A152905.P16326957935954769543

`A051159(A116942(2*n+1))`
-/

namespace A152905.P16326957935954769543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 (A116942 (2 * n + 1)).toNat

end

end A152905.P16326957935954769543

namespace A152905

/-- `A051159(A116942(2*n+1))` -/
def P16326957935954769543.Spec : Prop :=
  ∀ n, P16326957935954769543.a n = A152905 n

end A152905

/-! ## A152905.P11245439654122279190

`A051159(eq[1, A057212(n+1)])`
-/

namespace A152905.P11245439654122279190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A152905.P11245439654122279190

namespace A152905

/-- `A051159(eq[1, A057212(n+1)])` -/
def P11245439654122279190.Spec : Prop :=
  ∀ n, P11245439654122279190.a n = A152905 n

end A152905

/-! ## A152905.P5947271375348499287

`A211226(lt[A057211(n+1), 1])`
-/

namespace A152905.P5947271375348499287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211226 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A152905.P5947271375348499287

namespace A152905

/-- `A211226(lt[A057211(n+1), 1])` -/
def P5947271375348499287.Spec : Prop :=
  ∀ n, P5947271375348499287.a n = A152905 n

end A152905

/-! ## A152905.P11036610294968171858

`Δ[record[A276444(n+2)]]`
-/

namespace A152905.P11036610294968171858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276444 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152905.P11036610294968171858

namespace A152905

/-- `Δ[record[A276444(n+2)]]` -/
def P11036610294968171858.Spec : Prop :=
  ∀ n, P11036610294968171858.a n = A152905 n

end A152905

/-!
# A152906: Irregular triangle read by rows, numbers in A007318 repeated three times .

The programs for A152906, the canonical program `A152906.P12804490832586299334` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152906 has offset 0).

The definition of A152906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152906.P12804490832586299334

`A007318(floor(n/3))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A152906

/-- `A007318(floor(n/3))` -/
def P12804490832586299334.Spec : Prop :=
  ∀ n, P12804490832586299334.a n = A152906 n

theorem P12804490832586299334.correct : P12804490832586299334.Spec := by
  intro n
  simp only [A152906]

end A152906

/-! ## A152906.P13255063704469488714

`abs(A108086(floor(n/3)))`
-/

namespace A152906.P13255063704469488714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 ⌊(n : ℚ) / 3⌋.toNat|

end

end A152906.P13255063704469488714

namespace A152906

/-- `abs(A108086(floor(n/3)))` -/
def P13255063704469488714.Spec : Prop :=
  ∀ n, P13255063704469488714.a n = A152906 n

end A152906

/-! ## A152906.P3364575250690994574

`abs(A130595(floor(n/3)))`
-/

namespace A152906.P3364575250690994574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 ⌊(n : ℚ) / 3⌋.toNat|

end

end A152906.P3364575250690994574

namespace A152906

/-- `abs(A130595(floor(n/3)))` -/
def P3364575250690994574.Spec : Prop :=
  ∀ n, P3364575250690994574.a n = A152906 n

end A152906

/-! ## A152906.P11801760044926501024

`sqrt(A008459(floor(n/3)))`
-/

namespace A152906.P11801760044926501024
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 ⌊(n : ℚ) / 3⌋.toNat : ℝ)

end

end A152906.P11801760044926501024

namespace A152906

/-- `sqrt(A008459(floor(n/3)))` -/
def P11801760044926501024.Spec : Prop :=
  ∀ n, P11801760044926501024.a n = (A152906 n : ℝ)

end A152906

/-! ## A152906.P4060494781943429210

`A028326(floor(n/3))/2`
-/

namespace A152906.P4060494781943429210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 ⌊(n : ℚ) / 3⌋.toNat : ℚ) / 2

end

end A152906.P4060494781943429210

namespace A152906

/-- `A028326(floor(n/3))/2` -/
def P4060494781943429210.Spec : Prop :=
  ∀ n, P4060494781943429210.a n = (A152906 n : ℚ)

end A152906

/-! ## A152906.P16248619732078800886

`A014473(ceil((n-2)/3))+1`
-/

namespace A152906.P16248619732078800886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 ⌈((n : ℤ) - 2 : ℚ) / 3⌉.toNat + 1

end

end A152906.P16248619732078800886

namespace A152906

/-- `A014473(ceil((n-2)/3))+1` -/
def P16248619732078800886.Spec : Prop :=
  ∀ n, P16248619732078800886.a n = A152906 n

end A152906

/-! ## A152906.P3924485913322889446

`A152905(A004396(n))`
-/

namespace A152906.P3924485913322889446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152905 (A004396 n).toNat

end

end A152906.P3924485913322889446

namespace A152906

/-- `A152905(A004396(n))` -/
def P3924485913322889446.Spec : Prop :=
  ∀ n, P3924485913322889446.a n = A152906 n

end A152906

/-! ## A152906.P4711332682032068660

`A152905(A004523(n))`
-/

namespace A152906.P4711332682032068660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152905 (A004523 n).toNat

end

end A152906.P4711332682032068660

namespace A152906

/-- `A152905(A004523(n))` -/
def P4711332682032068660.Spec : Prop :=
  ∀ n, P4711332682032068660.a n = A152906 n

end A152906

/-! ## A152906.P7401482958076050094

`A152905(A096386(n))`
-/

namespace A152906.P7401482958076050094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152905 (A096386 n).toNat

end

end A152906.P7401482958076050094

namespace A152906

/-- `A152905(A096386(n))` -/
def P7401482958076050094.Spec : Prop :=
  ∀ n, P7401482958076050094.a n = A152906 n

end A152906

/-! ## A152906.P9876365608094646958

`A152905(A274616(n))`
-/

namespace A152906.P9876365608094646958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152905 (A274616 n).toNat

end

end A152906.P9876365608094646958

namespace A152906

/-- `A152905(A274616(n))` -/
def P9876365608094646958.Spec : Prop :=
  ∀ n, P9876365608094646958.a n = A152906 n

end A152906

/-! ## A152906.P18176565297148891335

`A152905(A240438(n+1)-n²)`
-/

namespace A152906.P18176565297148891335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152905 (A240438 (n + 1) - (n ^ 2 : ℤ)).toNat

end

end A152906.P18176565297148891335

namespace A152906

/-- `A152905(A240438(n+1)-n²)` -/
def P18176565297148891335.Spec : Prop :=
  ∀ n, P18176565297148891335.a n = A152906 n

end A152906

/-! ## A152906.P6744724495681175757

`A152907(A004773(n))`
-/

namespace A152906.P6744724495681175757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152907 (A004773 n).toNat

end

end A152906.P6744724495681175757

namespace A152906

/-- `A152907(A004773(n))` -/
def P6744724495681175757.Spec : Prop :=
  ∀ n, P6744724495681175757.a n = A152906 n

end A152906

/-! ## A152906.P4741100731464864544

`A152907(A131452(n))`
-/

namespace A152906.P4741100731464864544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152907 (A131452 n).toNat

end

end A152906.P4741100731464864544

namespace A152906

/-- `A152907(A131452(n))` -/
def P4741100731464864544.Spec : Prop :=
  ∀ n, P4741100731464864544.a n = A152906 n

end A152906

/-! ## A152906.P2855274916037244598

`A152907(A168056(n))`
-/

namespace A152906.P2855274916037244598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152907 (A168056 n).toNat

end

end A152906.P2855274916037244598

namespace A152906

/-- `A152907(A168056(n))` -/
def P2855274916037244598.Spec : Prop :=
  ∀ n, P2855274916037244598.a n = A152906 n

end A152906

/-! ## A152906.P7432219816676047287

`A152907(A222657(n))`
-/

namespace A152906.P7432219816676047287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152907 (A222657 n).toNat

end

end A152906.P7432219816676047287

namespace A152906

/-- `A152907(A222657(n))` -/
def P7432219816676047287.Spec : Prop :=
  ∀ n, P7432219816676047287.a n = A152906 n

end A152906

/-! ## A152906.P14395508084494394176

`A152907(A004772(n+1))`
-/

namespace A152906.P14395508084494394176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152907 (A004772 (n + 1)).toNat

end

end A152906.P14395508084494394176

namespace A152906

/-- `A152907(A004772(n+1))` -/
def P14395508084494394176.Spec : Prop :=
  ∀ n, P14395508084494394176.a n = A152906 n

end A152906

/-! ## A152906.P5754908678694962951

`A152907(A042965(n+1))`
-/

namespace A152906.P5754908678694962951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152907 (A042965 (n + 1)).toNat

end

end A152906.P5754908678694962951

namespace A152906

/-- `A152907(A042965(n+1))` -/
def P5754908678694962951.Spec : Prop :=
  ∀ n, P5754908678694962951.a n = A152906 n

end A152906

/-! ## A152906.P9868064708456669273

`A152907(A042968(n+1))`
-/

namespace A152906.P9868064708456669273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152907 (A042968 (n + 1)).toNat

end

end A152906.P9868064708456669273

namespace A152906

/-- `A152907(A042968(n+1))` -/
def P9868064708456669273.Spec : Prop :=
  ∀ n, P9868064708456669273.a n = A152906 n

end A152906

/-! ## A152906.P2520311635977410172

`A152907(A047422(n+1))`
-/

namespace A152906.P2520311635977410172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152907 (A047422 (n + 1)).toNat

end

end A152906.P2520311635977410172

namespace A152906

/-- `A152907(A047422(n+1))` -/
def P2520311635977410172.Spec : Prop :=
  ∀ n, P2520311635977410172.a n = A152906 n

end A152906

/-! ## A152906.P1785975856403428479

`A152907(A047424(n+1))`
-/

namespace A152906.P1785975856403428479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152907 (A047424 (n + 1)).toNat

end

end A152906.P1785975856403428479

namespace A152906

/-- `A152907(A047424(n+1))` -/
def P1785975856403428479.Spec : Prop :=
  ∀ n, P1785975856403428479.a n = A152906 n

end A152906

/-!
# A152907: Irregular triangle read by rows, numbers in A007318 repeated four times .

The programs for A152907, the canonical program `A152907.P2636118499686291148` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152907 has offset 0).

The definition of A152907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152907.P2636118499686291148

`A152905(floor(n/2))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A152907

/-- `A152905(floor(n/2))` -/
def P2636118499686291148.Spec : Prop :=
  ∀ n, P2636118499686291148.a n = A152907 n

theorem P2636118499686291148.correct : P2636118499686291148.Spec := by
  intro n
  simp only [A152907]

end A152907

/-! ## A152907.P15340649443502197768

`A007318(floor(n/4))`
-/

namespace A152907.P15340649443502197768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(n : ℚ) / 4⌋.toNat

end

end A152907.P15340649443502197768

namespace A152907

/-- `A007318(floor(n/4))` -/
def P15340649443502197768.Spec : Prop :=
  ∀ n, P15340649443502197768.a n = A152907 n

end A152907

/-! ## A152907.P1856186999703904264

`abs(A108086(floor(n/4)))`
-/

namespace A152907.P1856186999703904264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 ⌊(n : ℚ) / 4⌋.toNat|

end

end A152907.P1856186999703904264

namespace A152907

/-- `abs(A108086(floor(n/4)))` -/
def P1856186999703904264.Spec : Prop :=
  ∀ n, P1856186999703904264.a n = A152907 n

end A152907

/-! ## A152907.P5018802518365930475

`sqrt(A008459(floor(n/4)))`
-/

namespace A152907.P5018802518365930475
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 ⌊(n : ℚ) / 4⌋.toNat : ℝ)

end

end A152907.P5018802518365930475

namespace A152907

/-- `sqrt(A008459(floor(n/4)))` -/
def P5018802518365930475.Spec : Prop :=
  ∀ n, P5018802518365930475.a n = (A152907 n : ℝ)

end A152907

/-! ## A152907.P372121927130047902

`A028326(floor(n/4))/2`
-/

namespace A152907.P372121927130047902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 ⌊(n : ℚ) / 4⌋.toNat : ℚ) / 2

end

end A152907.P372121927130047902

namespace A152907

/-- `A028326(floor(n/4))/2` -/
def P372121927130047902.Spec : Prop :=
  ∀ n, P372121927130047902.a n = (A152907 n : ℚ)

end A152907

/-! ## A152907.P229563427218660543

`ceil(A124927(floor(n/4))/2)`
-/

namespace A152907.P229563427218660543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A124927 ⌊(n : ℚ) / 4⌋.toNat : ℚ) / 2⌉

end

end A152907.P229563427218660543

namespace A152907

/-- `ceil(A124927(floor(n/4))/2)` -/
def P229563427218660543.Spec : Prop :=
  ∀ n, P229563427218660543.a n = A152907 n

end A152907

/-! ## A152907.P654177659924413747

`ceil(A134059(∑[char[4*(n+1)]])/3)`
-/

namespace A152907.P654177659924413747
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134059 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3⌉

end

end A152907.P654177659924413747

namespace A152907

/-- `ceil(A134059(∑[char[4*(n+1)]])/3)` -/
def P654177659924413747.Spec : Prop :=
  ∀ n, P654177659924413747.a n = A152907 n

end A152907

/-! ## A152907.P15854128283789223690

`A152906(A057353(n))`
-/

namespace A152907.P15854128283789223690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152906 (A057353 n).toNat

end

end A152907.P15854128283789223690

namespace A152907

/-- `A152906(A057353(n))` -/
def P15854128283789223690.Spec : Prop :=
  ∀ n, P15854128283789223690.a n = A152907 n

end A152907

/-! ## A152907.P15165672861297792333

`A152906(A130766(n))`
-/

namespace A152907.P15165672861297792333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152906 (A130766 n).toNat

end

end A152907.P15165672861297792333

namespace A152907

/-- `A152906(A130766(n))` -/
def P15165672861297792333.Spec : Prop :=
  ∀ n, P15165672861297792333.a n = A152907 n

end A152907

/-! ## A152907.P2186506120419000851

`A152906(A187321(n))`
-/

namespace A152907.P2186506120419000851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152906 (A187321 n).toNat

end

end A152907.P2186506120419000851

namespace A152907

/-- `A152906(A187321(n))` -/
def P2186506120419000851.Spec : Prop :=
  ∀ n, P2186506120419000851.a n = A152907 n

end A152907

/-!
# A152908: Primes p=prime(k) such that p - nonprime(k) is prime and p + nonprime(k) is not prime, where prime(n) is the n-th prime and nonprime(n) is the n-th nonprime starting with nonprime(1) = 0.

The programs for A152908, there is no canonical definition to state claims against.
-/

/-! ## A152908.P11262121454706251059

`A209085(A054728(n))`
-/

namespace A152908.P11262121454706251059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209085 (A054728 n).toNat

end

end A152908.P11262121454706251059

/-! ## A152908.P7358974159767241161

`p?[A325131(A023173(n+1))]`
-/

namespace A152908.P7358974159767241161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325131 (A023173 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152908.P7358974159767241161

/-! ## A152908.P11815675821952308845

`p?[A281974(A281974(n+1))+2]`
-/

namespace A152908.P11815675821952308845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281974 (A281974 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152908.P11815675821952308845

/-!
# A152909: Largest k such that k! < 2^(2^n).

The programs for A152909, there is no canonical definition to state claims against.
-/

/-! ## A152909.P4560125136894851713

`A269225(2^n)-ceil(acot(n))`
-/

namespace A152909.P4560125136894851713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269225 (2 ^ n) - ⌈SequenceMachineLib.acot (n : ℝ)⌉

end

end A152909.P4560125136894851713

/-! ## A152909.P9516343073392918638

`A269225(A155559(n))-1`
-/

namespace A152909.P9516343073392918638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269225 (A155559 n).toNat - 1

end

end A152909.P9516343073392918638

/-! ## A152909.P9280323981263653160

`A269225(2^n)-A054977(n)`
-/

namespace A152909.P9280323981263653160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269225 (2 ^ n) - A054977 n

end

end A152909.P9280323981263653160

/-! ## A152909.P17413309606444484400

`A051889(A365253(n+1))`
-/

namespace A152909.P17413309606444484400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A365253 (n + 1)).toNat

end

end A152909.P17413309606444484400

/-! ## A152909.P3910730916686214174

`A276581(A000669(n+1))+A000194(n)`
-/

namespace A152909.P3910730916686214174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A000669 (n + 1)).toNat + A000194 n

end

end A152909.P3910730916686214174

/-!
# A152910: Difference between legs of primitive Pythagorean triangles sorted first on hypotenuse, then short leg.

The programs for A152910, there is no canonical definition to state claims against.
-/

/-! ## A152910.P17878982236421109368

`A081872(n+1)-A081859(A187829(n+1))`
-/

namespace A152910.P17878982236421109368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081872 (n + 1) - A081859 (A187829 (n + 1)).toNat

end

end A152910.P17878982236421109368

/-! ## A152910.P5299199411636652598

`A081872(n+1)-A081859(n+1)%A081876(n+1)`
-/

namespace A152910.P5299199411636652598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081872 (n + 1) - Int.tmod (A081859 (n + 1)) (A081876 (n + 1))

end

end A152910.P5299199411636652598

/-! ## A152910.P5221682504484605795

`A271509(5*(n+1))/2`
-/

namespace A152910.P5221682504484605795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271509 (5 * (n + 1)) : ℚ) / 2

end

end A152910.P5221682504484605795

/-! ## A152910.P10700476356833049492

`A120682(A297881(n)+A064700(n+1))`
-/

namespace A152910.P10700476356833049492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120682 (A297881 n + A064700 (n + 1)).toNat

end

end A152910.P10700476356833049492

/-! ## A152910.P1555085840283700475

`A120682(A100753(n+1)%A057184(n+1))`
-/

namespace A152910.P1555085840283700475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120682 (Int.tmod (A100753 (n + 1)) (A057184 (n + 1))).toNat

end

end A152910.P1555085840283700475

/-!
# A152911: Records in A152770.

The programs for A152911, the canonical program `A152911.P11080031176988882643` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152911 has offset 1).

The definition of A152911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152911.P11080031176988882643

`record[A000203(n+1)-(A000005(n+1)+n)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A152911

/-- `record[A000203(n+1)-(A000005(n+1)+n)]` -/
def P11080031176988882643.Spec : Prop :=
  ∀ n, P11080031176988882643.a n = A152911 (n + 1)

theorem P11080031176988882643.correct : P11080031176988882643.Spec := by
  intro n
  simp only [A152911, Nat.add_sub_cancel]

end A152911

/-! ## A152911.P12420641771167068304

`record[A065608(n+1)-n]`
-/

namespace A152911.P12420641771167068304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152911.P12420641771167068304

namespace A152911

/-- `record[A065608(n+1)-n]` -/
def P12420641771167068304.Spec : Prop :=
  ∀ n, P12420641771167068304.a n = A152911 (n + 1)

end A152911

/-! ## A152911.P4163550792151070822

`record[A162196(n+1)]`
-/

namespace A152911.P4163550792151070822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152911.P4163550792151070822

namespace A152911

/-- `record[A162196(n+1)]` -/
def P4163550792151070822.Spec : Prop :=
  ∀ n, P4163550792151070822.a n = A152911 (n + 1)

end A152911

/-! ## A152911.P16720152591813066853

`record[∑{d}[n+1, #-1]-n]`
-/

namespace A152911.P16720152591813066853
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((d : ℤ) - 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152911.P16720152591813066853

namespace A152911

/-- `record[∑{d}[n+1, #-1]-n]` -/
def P16720152591813066853.Spec : Prop :=
  ∀ n, P16720152591813066853.a n = A152911 (n + 1)

end A152911

/-! ## A152911.P1992073256091011444

`record[A152770(n+1)]`
-/

namespace A152911.P1992073256091011444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152911.P1992073256091011444

namespace A152911

/-- `record[A152770(n+1)]` -/
def P1992073256091011444.Spec : Prop :=
  ∀ n, P1992073256091011444.a n = A152911 (n + 1)

end A152911

/-! ## A152911.P942549548509006096

`record[Δ[A152967(n+1)]]`
-/

namespace A152911.P942549548509006096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152967 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152911.P942549548509006096

namespace A152911

/-- `record[Δ[A152967(n+1)]]` -/
def P942549548509006096.Spec : Prop :=
  ∀ n, P942549548509006096.a n = A152911 (n + 1)

end A152911

/-! ## A152911.P16866932290758689581

`record[A088580(n+1)-(∏{e}[n+1, #+1]+1+n)]`
-/

namespace A152911.P16866932290758689581
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) + 1 + n : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152911.P16866932290758689581

namespace A152911

/-- `record[A088580(n+1)-(∏{e}[n+1, #+1]+1+n)]` -/
def P16866932290758689581.Spec : Prop :=
  ∀ n, P16866932290758689581.a n = A152911 (n + 1)

end A152911

/-! ## A152911.P15223785947812389238

`record[A001065(n+1)-A032741(n+1)]`
-/

namespace A152911.P15223785947812389238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A032741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152911.P15223785947812389238

namespace A152911

/-- `record[A001065(n+1)-A032741(n+1)]` -/
def P15223785947812389238.Spec : Prop :=
  ∀ n, P15223785947812389238.a n = A152911 (n + 1)

end A152911

/-! ## A152911.P709339305277014205

`record[A088580(n+1)-A062249(n+1)]`
-/

namespace A152911.P709339305277014205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - A062249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152911.P709339305277014205

namespace A152911

/-- `record[A088580(n+1)-A062249(n+1)]` -/
def P709339305277014205.Spec : Prop :=
  ∀ n, P709339305277014205.a n = A152911 (n + 1)

end A152911

/-! ## A152911.P9633425742147221768

`record[A001065(n+1)+1-A000005(n+1)]`
-/

namespace A152911.P9633425742147221768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (1 - A000005 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152911.P9633425742147221768

namespace A152911

/-- `record[A001065(n+1)+1-A000005(n+1)]` -/
def P9633425742147221768.Spec : Prop :=
  ∀ n, P9633425742147221768.a n = A152911 (n + 1)

end A152911

/-!
# A152912: Primes p such that 2*p^2-1 is not prime.

The programs for A152912, the canonical program `A152912.P3210305954891432639` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152912 has offset 1).

The definition of A152912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152912.P11583532803470977182

`p?[A143834(n+1)]`
-/

namespace A152912.P11583532803470977182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152912.P11583532803470977182

namespace A152912

/-- `p?[A143834(n+1)]` -/
def P11583532803470977182.Spec : Prop :=
  ∀ n, P11583532803470977182.a n = A152912 (n + 1)

end A152912

/-! ## A152912.P15145754616562654158

`p?[comp[A066049(n+1)]]`
-/

namespace A152912.P15145754616562654158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A152912.P15145754616562654158

namespace A152912

/-- `p?[comp[A066049(n+1)]]` -/
def P15145754616562654158.Spec : Prop :=
  ∀ n, (P15145754616562654158.a n : ℤ) = A152912 (n + 1)

end A152912

/-! ## A152912.P3210305954891432639

`A000040(A220789(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A152912

/-- `A000040(A220789(n+1))` -/
def P3210305954891432639.Spec : Prop :=
  ∀ n, P3210305954891432639.a n = A152912 (n + 1)

theorem P3210305954891432639.correct : P3210305954891432639.Spec := by
  intro n
  simp only [A152912, Nat.add_sub_cancel]

end A152912

/-! ## A152912.P6756688219803418435

`record[A020639(A143834(n+2))]`
-/

namespace A152912.P6756688219803418435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A143834 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152912.P6756688219803418435

namespace A152912

/-- `record[A020639(A143834(n+2))]` -/
def P6756688219803418435.Spec : Prop :=
  ∀ n, P6756688219803418435.a n = A152912 (n + 1)

end A152912

/-! ## A152912.P2239522366208648053

`A008578(A220789(n+1)+1)`
-/

namespace A152912.P2239522366208648053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A220789 (n + 1) + 1).toNat

end

end A152912.P2239522366208648053

namespace A152912

/-- `A008578(A220789(n+1)+1)` -/
def P2239522366208648053.Spec : Prop :=
  ∀ n, P2239522366208648053.a n = A152912 (n + 1)

end A152912

/-! ## A152912.P15768023784687802666

`A175787(A220789(n+1)+1)`
-/

namespace A152912.P15768023784687802666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A220789 (n + 1) + 1).toNat

end

end A152912.P15768023784687802666

namespace A152912

/-- `A175787(A220789(n+1)+1)` -/
def P15768023784687802666.Spec : Prop :=
  ∀ n, P15768023784687802666.a n = A152912 (n + 1)

end A152912

/-! ## A152912.P3274124083668983640

`A182986(A220789(n+1)+1)`
-/

namespace A152912.P3274124083668983640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A220789 (n + 1) + 1).toNat

end

end A152912.P3274124083668983640

namespace A152912

/-- `A182986(A220789(n+1)+1)` -/
def P3274124083668983640.Spec : Prop :=
  ∀ n, P3274124083668983640.a n = A152912 (n + 1)

end A152912

/-! ## A152912.P18421038070567112123

`A046022(A220789(n+1)+2)`
-/

namespace A152912.P18421038070567112123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A220789 (n + 1) + 2).toNat

end

end A152912.P18421038070567112123

namespace A152912

/-- `A046022(A220789(n+1)+2)` -/
def P18421038070567112123.Spec : Prop :=
  ∀ n, P18421038070567112123.a n = A152912 (n + 1)

end A152912

/-! ## A152912.P9448441796946552052

`A065091(A220789(n+1)-1)`
-/

namespace A152912.P9448441796946552052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A220789 (n + 1) - 1).toNat

end

end A152912.P9448441796946552052

namespace A152912

/-- `A065091(A220789(n+1)-1)` -/
def P9448441796946552052.Spec : Prop :=
  ∀ n, P9448441796946552052.a n = A152912 (n + 1)

end A152912

/-! ## A152912.P9508050213736728654

`A158611(A220789(n+1)+2)`
-/

namespace A152912.P9508050213736728654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A220789 (n + 1) + 2).toNat

end

end A152912.P9508050213736728654

namespace A152912

/-- `A158611(A220789(n+1)+2)` -/
def P9508050213736728654.Spec : Prop :=
  ∀ n, P9508050213736728654.a n = A152912 (n + 1)

end A152912

/-! ## A152912.P12023526725558369836

`filter[A143834(n+1), A010051(#)]`
-/

namespace A152912.P12023526725558369836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A152912.P12023526725558369836

namespace A152912

/-- `filter[A143834(n+1), A010051(#)]` -/
def P12023526725558369836.Spec : Prop :=
  ∀ n, P12023526725558369836.a n = A152912 (n + 1)

end A152912

/-! ## A152912.P10677499125460754498

`∩[A000040(n+1), A143834(n+1)]`
-/

namespace A152912.P10677499125460754498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152912.P10677499125460754498

namespace A152912

/-- `∩[A000040(n+1), A143834(n+1)]` -/
def P10677499125460754498.Spec : Prop :=
  ∀ n, (P10677499125460754498.a n : ℤ) = A152912 (n + 1)

end A152912

/-! ## A152912.P7050080911612763257

`∩[A045344(n+1), A143834(n+1)]`
-/

namespace A152912.P7050080911612763257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152912.P7050080911612763257

namespace A152912

/-- `∩[A045344(n+1), A143834(n+1)]` -/
def P7050080911612763257.Spec : Prop :=
  ∀ n, (P7050080911612763257.a n : ℤ) = A152912 (n + 1)

end A152912

/-! ## A152912.P18133736610990027646

`∩[A051948(n+1), A143834(n+1)]`
-/

namespace A152912.P18133736610990027646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152912.P18133736610990027646

namespace A152912

/-- `∩[A051948(n+1), A143834(n+1)]` -/
def P18133736610990027646.Spec : Prop :=
  ∀ n, (P18133736610990027646.a n : ℤ) = A152912 (n + 1)

end A152912

/-! ## A152912.P8563996388756796555

`∩[A065091(n+1), A143834(n+1)]`
-/

namespace A152912.P8563996388756796555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152912.P8563996388756796555

namespace A152912

/-- `∩[A065091(n+1), A143834(n+1)]` -/
def P8563996388756796555.Spec : Prop :=
  ∀ n, (P8563996388756796555.a n : ℤ) = A152912 (n + 1)

end A152912

/-! ## A152912.P10797699398323445314

`∩[A108719(n+1), A143834(n+1)]`
-/

namespace A152912.P10797699398323445314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152912.P10797699398323445314

namespace A152912

/-- `∩[A108719(n+1), A143834(n+1)]` -/
def P10797699398323445314.Spec : Prop :=
  ∀ n, (P10797699398323445314.a n : ℤ) = A152912 (n + 1)

end A152912

/-! ## A152912.P349312583694066354

`∩[A116974(n+1), A143834(n+1)]`
-/

namespace A152912.P349312583694066354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152912.P349312583694066354

namespace A152912

/-- `∩[A116974(n+1), A143834(n+1)]` -/
def P349312583694066354.Spec : Prop :=
  ∀ n, (P349312583694066354.a n : ℤ) = A152912 (n + 1)

end A152912

/-! ## A152912.P6701837025366539999

`∩[A143834(n+1), A161428(n+1)]`
-/

namespace A152912.P6701837025366539999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152912.P6701837025366539999

namespace A152912

/-- `∩[A143834(n+1), A161428(n+1)]` -/
def P6701837025366539999.Spec : Prop :=
  ∀ n, (P6701837025366539999.a n : ℤ) = A152912 (n + 1)

end A152912

/-! ## A152912.P612565937522584486

`∩[A143834(n+1), A175787(n+1)]`
-/

namespace A152912.P612565937522584486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152912.P612565937522584486

namespace A152912

/-- `∩[A143834(n+1), A175787(n+1)]` -/
def P612565937522584486.Spec : Prop :=
  ∀ n, (P612565937522584486.a n : ℤ) = A152912 (n + 1)

end A152912

/-! ## A152912.P9056577242831690977

`∩[A143834(n+1), A182986(n+1)]`
-/

namespace A152912.P9056577242831690977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152912.P9056577242831690977

namespace A152912

/-- `∩[A143834(n+1), A182986(n+1)]` -/
def P9056577242831690977.Spec : Prop :=
  ∀ n, (P9056577242831690977.a n : ℤ) = A152912 (n + 1)

end A152912

/-!
# A152913: Primes of the form n^4 + (n+1)^4.

The programs for A152913, there is no canonical definition to state claims against.
-/

/-! ## A152913.P17082082843155286561

`∩[A078902(n+1), A165347(n+1)]`
-/

namespace A152913.P17082082843155286561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152913.P17082082843155286561

/-! ## A152913.P16083735640414780554

`record[A066487(n+2)+1+n]`
-/

namespace A152913.P16083735640414780554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066487 (n + 2) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152913.P16083735640414780554

/-! ## A152913.P1246221061196937997

`A008514(A155211(n+1))`
-/

namespace A152913.P1246221061196937997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008514 (A155211 (n + 1)).toNat

end

end A152913.P1246221061196937997

/-! ## A152913.P8609187112014677008

`∩[A078902(n+1), A008514(n)]`
-/

namespace A152913.P8609187112014677008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008514 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152913.P8609187112014677008

/-! ## A152913.P16082358405413886935

`∩[A165347(n+1), A008514(n)]`
-/

namespace A152913.P16082358405413886935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008514 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152913.P16082358405413886935

/-! ## A152913.P14779194611392411883

`A008514(eq[A002523(n)%A066487(n+1), A002523(n)])`
-/

namespace A152913.P14779194611392411883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002523 n) (A066487 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008514 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A152913.P14779194611392411883

/-! ## A152913.P5198401347246696948

`A008514(eq[A160747(n)%A066487(n+1), A160747(n)])`
-/

namespace A152913.P5198401347246696948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160747 n) (A066487 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008514 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A152913.P5198401347246696948

/-! ## A152913.P10388654518535165772

`A008514(eq[A173785(n)%A066487(n+1), A173785(n)])`
-/

namespace A152913.P10388654518535165772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173785 n) (A066487 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173785 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008514 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A152913.P10388654518535165772

/-! ## A152913.P5519136172871321372

`A008514(eq[A066455(n+1)%A066487(n+1), A066455(n+1)])`
-/

namespace A152913.P5519136172871321372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066455 (n + 1)) (A066487 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008514 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A152913.P5519136172871321372

/-! ## A152913.P14210131098330593986

`∩[A078901(n+1), A165347(n+1)]`
-/

namespace A152913.P14210131098330593986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152913.P14210131098330593986

/-! ## A152913.P10834462269546374006

`A212742(2*A155211(n+1))`
-/

namespace A152913.P10834462269546374006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212742 (2 * A155211 (n + 1)).toNat

end

end A152913.P10834462269546374006

/-! ## A152913.P4730427546022753847

`∩[A078902(n+1), A212740(n)]`
-/

namespace A152913.P4730427546022753847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212740 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152913.P4730427546022753847

/-! ## A152913.P3946296113600813684

`∩[A078902(n+1), A212742(n)]`
-/

namespace A152913.P3946296113600813684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152913.P3946296113600813684

/-! ## A152913.P9328751658266874445

`∩[A165347(n+1), A212740(n)]`
-/

namespace A152913.P9328751658266874445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212740 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152913.P9328751658266874445

/-! ## A152913.P7576918765161116872

`∩[A165347(n+1), A212742(n)]`
-/

namespace A152913.P7576918765161116872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152913.P7576918765161116872

/-! ## A152913.P11425513689255189321

`A212742(A155211(n+1)+A155211(n+1))`
-/

namespace A152913.P11425513689255189321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212742 (A155211 (n + 1) + A155211 (n + 1)).toNat

end

end A152913.P11425513689255189321

/-! ## A152913.P14028539613256105267

`A008514(eq[1, A256547(n+1)]+1)`
-/

namespace A152913.P14028539613256105267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008514 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A152913.P14028539613256105267

/-! ## A152913.P12212790456944077030

`∩[A002645(n+1), A008514(n)]`
-/

namespace A152913.P12212790456944077030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008514 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152913.P12212790456944077030

/-! ## A152913.P14742642042386913602

`∩[A002645(n+1), A165347(n+1)]`
-/

namespace A152913.P14742642042386913602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152913.P14742642042386913602

/-! ## A152913.P4919097766278317455

`∩[A264823(n+1), A008514(n)]`
-/

namespace A152913.P4919097766278317455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008514 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152913.P4919097766278317455

/-!
# A152914: Decimal expansion of log_5 (3).

The programs for A152914, there is no canonical definition to state claims against.
-/

/-! ## A152914.P12540294528538363826

`A154564(n+1)`
-/

namespace A152914.P12540294528538363826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154564 (n + 1 + 1)

end

end A152914.P12540294528538363826

/-!
# A152915: Exponacci (or exponential Fibonacci) numbers.

The programs for A152915, there is no canonical definition to state claims against.
-/

/-! ## A152915.P3040167548318868654

`n^round(ϕ^n/sqrt(5))`
-/

namespace A152915.P3040167548318868654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) : ℤ)

end

end A152915.P3040167548318868654

/-! ## A152915.P8940462456923109701

`floor(n^∑[a(n-1)+a(n-2)])` with `a(0)=0, a(1)=1, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A152915.P8940462456923109701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152915.P8940462456923109701

/-! ## A152915.P6443710676337607954

`abs((-n)^A000045(n))`
-/

namespace A152915.P6443710676337607954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(-(n : ℤ) : ℚ) ^ (A000045 n : ℤ)|

end

end A152915.P6443710676337607954

/-! ## A152915.P14862422616661244371

`floor(n^(A001611(n)-1))`
-/

namespace A152915.P14862422616661244371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) ^ (A001611 n - 1 : ℤ)⌋

end

end A152915.P14862422616661244371

/-! ## A152915.P4760449786845099979

`floor(n^(A157725(n)-2))`
-/

namespace A152915.P4760449786845099979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) ^ (A157725 n - 2 : ℤ)⌋

end

end A152915.P4760449786845099979

/-!
# A152916: Tetrahedral numbers k*(k+1)*(k+2)/6 such that exactly two of k, k+1, and k+2 are prime.

The programs for A152916, there is no canonical definition to state claims against.
-/

/-! ## A152916.P11630586252446579145

`C(A129297(n+3)+1, 3)`
-/

namespace A152916.P11630586252446579145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A129297 (n + 3) + 1).toNat 3

end

end A152916.P11630586252446579145

/-! ## A152916.P4575022983522044062

`A000292(A129297(n+3)-1)`
-/

namespace A152916.P4575022983522044062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A129297 (n + 3) - 1).toNat

end

end A152916.P4575022983522044062

/-! ## A152916.P9993051862257098063

`A000292(eq[2, A168141(n+1)])`
-/

namespace A152916.P9993051862257098063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A152916.P9993051862257098063

/-! ## A152916.P6029181666517573237

`record[C(A001414(A001414(n+1)+2), n)]`
-/

namespace A152916.P6029181666517573237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001414 (A001414 (n + 1) + 2).toNat).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152916.P6029181666517573237

/-! ## A152916.P4998121035922993655

`A000292(record[A006530(A002472(n+1))])`
-/

namespace A152916.P4998121035922993655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002472 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A152916.P4998121035922993655

/-!
# A152917: A000169 prefixed by an initial 0.

The programs for A152917, there is no canonical definition to state claims against.
-/

/-! ## A152917.P10462400566805617376

`n^abs(1-n)`
-/

namespace A152917.P10462400566805617376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (|1 - (n : ℤ)| : ℤ)

end

end A152917.P10462400566805617376

/-! ## A152917.P4300053475581449852

`n*n^floor(n-atan(n))`
-/

namespace A152917.P4300053475581449852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (n : ℚ) ^ (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ : ℤ)

end

end A152917.P4300053475581449852

/-! ## A152917.P14850160794055425031

`(sqrt(n)^gcd(1-n, n!))²`
-/

namespace A152917.P14850160794055425031
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (n : ℝ) ^ Int.gcd (1 - (n : ℤ)) (Nat.factorial n : ℤ)) ^ 2

end

end A152917.P14850160794055425031

/-! ## A152917.P668328268199589171

`floor(n^floor(n+1-atan(n)))`
-/

namespace A152917.P668328268199589171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) ^ (⌊(n + 1 : ℝ) - Real.arctan (n : ℝ)⌋ : ℤ)⌋

end

end A152917.P668328268199589171

/-! ## A152917.P9932877818417926398

`ceil(n^(n+1-ceil(atan(n))))`
-/

namespace A152917.P9932877818417926398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) ^ ((n + 1 : ℤ) - ⌈Real.arctan (n : ℝ)⌉ : ℤ)⌉

end

end A152917.P9932877818417926398

/-! ## A152917.P4304715402182169872

`n*n^((2*n)%(n+2))`
-/

namespace A152917.P4304715402182169872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ (2 * n % (n + 2))

end

end A152917.P4304715402182169872

/-! ## A152917.P17955817537001442458

`floor(gcd(n, (n+2)!)^(n-1))`
-/

namespace A152917.P17955817537001442458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd n (Nat.factorial (n + 2)) : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A152917.P17955817537001442458

/-! ## A152917.P3076107109475807353

`floor(n^(n+1-2%(n+1)))`
-/

namespace A152917.P3076107109475807353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) ^ ((n + 1 : ℤ) - ((2 % (n + 1) : ℕ) : ℤ) : ℤ)⌋

end

end A152917.P3076107109475807353

/-! ## A152917.P7511666415788861482

`floor((C(2, n+1)+n)^(n-1))`
-/

namespace A152917.P7511666415788861482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose 2 (n + 1) + n : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A152917.P7511666415788861482

/-! ## A152917.P1918090576941420365

`ceil(n^(C(2, n+1)+n-1))`
-/

namespace A152917.P1918090576941420365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) ^ ((Nat.choose 2 (n + 1) : ℤ) + ((n : ℤ) - 1) : ℤ)⌉

end

end A152917.P1918090576941420365

/-!
# A152919: a(1)=1, for n>1, a(n) = n^2/4 + n/2 for even n, a(n) = n^2/4 + n - 5/4 for odd n.

The programs for A152919, the canonical program `A152919.P2511929411854388023` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152919 has offset 1).

The definition of A152919 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152919.P2511929411854388023

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6, a(4)=10, a(5)=12`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A152919

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P2511929411854388023.Spec : Prop :=
  ∀ n, P2511929411854388023.a n = A152919 (n + 1)

theorem P2511929411854388023.correct : P2511929411854388023.Spec := by
  intro n
  simp only [A152919, Nat.add_sub_cancel]

end A152919

/-! ## A152919.P13156499889384295098

`or(1, a(n-2)+n)+1` with `a(0)=1, a(1)=2`
-/

namespace A152919.P13156499889384295098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.lor 1 (a (n - 2) + n) + 1

end

end A152919.P13156499889384295098

namespace A152919

/-- `or(1, a(n-2)+n)+1` -/
def P13156499889384295098.Spec : Prop :=
  ∀ n, (P13156499889384295098.a n : ℤ) = A152919 (n + 1)

end A152919

/-! ## A152919.P15537878411106279054

`∑[(3*n+1)%or(1, n)+1]`
-/

namespace A152919.P15537878411106279054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n + 1) % Nat.lor 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152919.P15537878411106279054

namespace A152919

/-- `∑[(3*n+1)%or(1, n)+1]` -/
def P15537878411106279054.Spec : Prop :=
  ∀ n, (P15537878411106279054.a n : ℤ) = A152919 (n + 1)

end A152919

/-! ## A152919.P7022343156507434371

`∑[n-(n-2)%a(n-1)]` with `a(0)=1`
-/

namespace A152919.P7022343156507434371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) - Int.tmod ((n : ℤ) - 2) (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152919.P7022343156507434371

namespace A152919

/-- `∑[n-(n-2)%a(n-1)]` -/
def P7022343156507434371.Spec : Prop :=
  ∀ n, P7022343156507434371.a n = A152919 (n + 1)

end A152919

/-! ## A152919.P14856554005972743386

`gcd(2, n)+a(n-2)+n` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A152919.P14856554005972743386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  Nat.gcd 2 n + (a (n - 2) + n)

end

end A152919.P14856554005972743386

namespace A152919

/-- `gcd(2, n)+a(n-2)+n` -/
def P14856554005972743386.Spec : Prop :=
  ∀ n, (P14856554005972743386.a n : ℤ) = A152919 (n + 1)

end A152919

/-! ## A152919.P10070482782209774389

`and(a(n-2)+n+2, -2)` with `a(0)=1, a(1)=2`
-/

namespace A152919.P10070482782209774389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.land (a (n - 2) + (n + 2 : ℤ)) (-2)

end

end A152919.P10070482782209774389

namespace A152919

/-- `and(a(n-2)+n+2, -2)` -/
def P10070482782209774389.Spec : Prop :=
  ∀ n, P10070482782209774389.a n = A152919 (n + 1)

end A152919

/-! ## A152919.P4497589248232864157

`∑[2*floor(n/a(n-1))]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A152919.P4497589248232864157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  2 * ⌊(n : ℚ) / (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152919.P4497589248232864157

namespace A152919

/-- `∑[2*floor(n/a(n-1))]` -/
def P4497589248232864157.Spec : Prop :=
  ∀ n, P4497589248232864157.a n = A152919 (n + 1)

end A152919

/-! ## A152919.P2523502619774582043

`∑[2*ceil((n-1)/a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A152919.P2523502619774582043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * ⌈((n : ℤ) - 1 : ℚ) / (f1 (n - 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152919.P2523502619774582043

namespace A152919

/-- `∑[2*ceil((n-1)/a(n-1))]` -/
def P2523502619774582043.Spec : Prop :=
  ∀ n, P2523502619774582043.a n = A152919 (n + 1)

end A152919

/-! ## A152919.P9909613605387723773

`∑[n-and(a(n-1)-1, n-2)]` with `a(0)=1`
-/

namespace A152919.P9909613605387723773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) - Int.land (f1 (n - 1) - 1) ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152919.P9909613605387723773

namespace A152919

/-- `∑[n-and(a(n-1)-1, n-2)]` -/
def P9909613605387723773.Spec : Prop :=
  ∀ n, P9909613605387723773.a n = A152919 (n + 1)

end A152919

/-! ## A152919.P4955030430051647750

`∑[n+1-lcm(n, a(n-1))/n]` with `a(0)=1`
-/

namespace A152919.P4955030430051647750
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1 : ℚ) - (Int.lcm (n : ℤ) (SequenceMachineLib.roundAway (f1 (n - 1))) : ℚ) / (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152919.P4955030430051647750

namespace A152919

/-- `∑[n+1-lcm(n, a(n-1))/n]` -/
def P4955030430051647750.Spec : Prop :=
  ∀ n, P4955030430051647750.a n = (A152919 (n + 1) : ℚ)

end A152919

/-! ## A152919.P4821020450598279052

`∑[floor(n+1-a(n-1)²/n)]` with `a(0)=1`
-/

namespace A152919.P4821020450598279052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊(n + 1 : ℚ) - (f1 (n - 1) ^ 2 : ℚ) / (n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152919.P4821020450598279052

namespace A152919

/-- `∑[floor(n+1-a(n-1)²/n)]` -/
def P4821020450598279052.Spec : Prop :=
  ∀ n, P4821020450598279052.a n = A152919 (n + 1)

end A152919

/-! ## A152919.P3824367775349181148

`floor(n*(n/2+2)-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A152919.P3824367775349181148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(n : ℚ) * ((n : ℚ) / 2 + 2) - (a (n - 1) : ℚ)⌋

end

end A152919.P3824367775349181148

namespace A152919

/-- `floor(n*(n/2+2)-a(n-1))` -/
def P3824367775349181148.Spec : Prop :=
  ∀ n, P3824367775349181148.a n = A152919 (n + 1)

end A152919

/-! ## A152919.P13171524095365974066

`∑[∑[2-a(n-1)]-a(n-1)]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A152919.P13171524095365974066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152919.P13171524095365974066

namespace A152919

/-- `∑[∑[2-a(n-1)]-a(n-1)]` -/
def P13171524095365974066.Spec : Prop :=
  ∀ n, P13171524095365974066.a n = A152919 (n + 1)

end A152919

/-! ## A152919.P11586222352325047625

`comp[2*n+1+n]+round(abs(1-n)/2)²`
-/

namespace A152919.P11586222352325047625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + SequenceMachineLib.roundAway ((|1 - (n : ℤ)| : ℚ) / 2) ^ 2

end

end A152919.P11586222352325047625

namespace A152919

/-- `comp[2*n+1+n]+round(abs(1-n)/2)²` -/
def P11586222352325047625.Spec : Prop :=
  ∀ n, P11586222352325047625.a n = A152919 (n + 1)

end A152919

/-! ## A152919.P3599673486711044842

`xor(A057427(n), A264754(n))`
-/

namespace A152919.P3599673486711044842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A264754 n)

end

end A152919.P3599673486711044842

namespace A152919

/-- `xor(A057427(n), A264754(n))` -/
def P3599673486711044842.Spec : Prop :=
  ∀ n, P3599673486711044842.a n = A152919 (n + 1)

end A152919

/-! ## A152919.P5130526569115988534

`∪[A060798(n+1), A217748(n+3)]`
-/

namespace A152919.P5130526569115988534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217748 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A152919.P5130526569115988534

namespace A152919

/-- `∪[A060798(n+1), A217748(n+3)]` -/
def P5130526569115988534.Spec : Prop :=
  ∀ n, (P5130526569115988534.a n : ℤ) = A152919 (n + 1)

end A152919

/-! ## A152919.P7310124157622824894

`∪[A035106(2*n+1)+n, A035106(2*(n+1))]`
-/

namespace A152919.P7310124157622824894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A152919.P7310124157622824894

namespace A152919

/-- `∪[A035106(2*n+1)+n, A035106(2*(n+1))]` -/
def P7310124157622824894.Spec : Prop :=
  ∀ n, (P7310124157622824894.a n : ℤ) = A152919 (n + 1)

end A152919

/-! ## A152919.P9045296338227192787

`A193422(A114112(n+2))`
-/

namespace A152919.P9045296338227192787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193422 (A114112 (n + 2)).toNat

end

end A152919.P9045296338227192787

namespace A152919

/-- `A193422(A114112(n+2))` -/
def P9045296338227192787.Spec : Prop :=
  ∀ n, P9045296338227192787.a n = A152919 (n + 1)

end A152919

/-! ## A152919.P8171444331330445655

`∑[A245092(A267046(n+1))/2]`
-/

namespace A152919.P8171444331330445655
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245092 (A267046 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152919.P8171444331330445655

namespace A152919

/-- `∑[A245092(A267046(n+1))/2]` -/
def P8171444331330445655.Spec : Prop :=
  ∀ n, P8171444331330445655.a n = (A152919 (n + 1) : ℚ)

end A152919

/-! ## A152919.P8452193194244151702

`and(A095121(n), A264754(n))`
-/

namespace A152919.P8452193194244151702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A095121 n) (A264754 n)

end

end A152919.P8452193194244151702

namespace A152919

/-- `and(A095121(n), A264754(n))` -/
def P8452193194244151702.Spec : Prop :=
  ∀ n, P8452193194244151702.a n = A152919 (n + 1)

end A152919

/-!
# A152920: Triangle read by rows: triangle A062111 reversed.

The programs for A152920, the canonical program `A152920.P8736754326884123531` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152920 has offset 0).

The definition of A152920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152920.P11424555368973139173

`A053218(n+1)-2^(n-C(∑[char[∑[n]]], 2))`
-/

namespace A152920.P11424555368973139173
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053218 (n + 1) : ℚ) - (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ)

end

end A152920.P11424555368973139173

namespace A152920

/-- `A053218(n+1)-2^(n-C(∑[char[∑[n]]], 2))` -/
def P11424555368973139173.Spec : Prop :=
  ∀ n, P11424555368973139173.a n = (A152920 n : ℚ)

end A152920

/-! ## A152920.P8736754326884123531

`A053218(n+1)-A059268(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A152920

/-- `A053218(n+1)-A059268(n)` -/
def P8736754326884123531.Spec : Prop :=
  ∀ n, P8736754326884123531.a n = A152920 n

theorem P8736754326884123531.correct : P8736754326884123531.Spec := by
  intro n
  simp only [A152920]

end A152920

/-! ## A152920.P7634774694399118182

`A059268(n)/2*A294317(n)`
-/

namespace A152920.P7634774694399118182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059268 n : ℚ) / 2 * (A294317 n : ℚ)

end

end A152920.P7634774694399118182

namespace A152920

/-- `A059268(n)/2*A294317(n)` -/
def P7634774694399118182.Spec : Prop :=
  ∀ n, P7634774694399118182.a n = (A152920 n : ℚ)

end A152920

/-! ## A152920.P13635692963167342543

`A118413(n+1)-A393901(n+1)`
-/

namespace A152920.P13635692963167342543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118413 (n + 1) - A393901 (n + 1)

end

end A152920.P13635692963167342543

namespace A152920

/-- `A118413(n+1)-A393901(n+1)` -/
def P13635692963167342543.Spec : Prop :=
  ∀ n, P13635692963167342543.a n = A152920 n

end A152920

/-! ## A152920.P4584363489964237242

`A053218(n+1)-2^A002262(n)`
-/

namespace A152920.P4584363489964237242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053218 (n + 1) : ℚ) - (2 : ℚ) ^ (A002262 n : ℤ)

end

end A152920.P4584363489964237242

namespace A152920

/-- `A053218(n+1)-2^A002262(n)` -/
def P4584363489964237242.Spec : Prop :=
  ∀ n, P4584363489964237242.a n = (A152920 n : ℚ)

end A152920

/-! ## A152920.P8204218093747999740

`A053218(n+1)-A001787(A002260(n+1))/A002260(n+1)`
-/

namespace A152920.P8204218093747999740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053218 (n + 1) : ℚ) - (A001787 (A002260 (n + 1)).toNat : ℚ) / (A002260 (n + 1) : ℚ)

end

end A152920.P8204218093747999740

namespace A152920

/-- `A053218(n+1)-A001787(A002260(n+1))/A002260(n+1)` -/
def P8204218093747999740.Spec : Prop :=
  ∀ n, P8204218093747999740.a n = (A152920 n : ℚ)

end A152920

/-! ## A152920.P5000445246282541973

`A062111(∑[2*n]%comp[∑[n]])`
-/

namespace A152920.P5000445246282541973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062111 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A152920.P5000445246282541973

namespace A152920

/-- `A062111(∑[2*n]%comp[∑[n]])` -/
def P5000445246282541973.Spec : Prop :=
  ∀ n, P5000445246282541973.a n = A152920 n

end A152920

/-! ## A152920.P4138470228883582224

`A062111(∑[char[∑[n]]]²-(n+1))`
-/

namespace A152920.P4138470228883582224
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062111 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A152920.P4138470228883582224

namespace A152920

/-- `A062111(∑[char[∑[n]]]²-(n+1))` -/
def P4138470228883582224.Spec : Prop :=
  ∀ n, P4138470228883582224.a n = A152920 n

end A152920

/-! ## A152920.P15648390252823072410

`and(-1, A062111(A061579(n)))`
-/

namespace A152920.P15648390252823072410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A062111 (A061579 n).toNat)

end

end A152920.P15648390252823072410

namespace A152920

/-- `and(-1, A062111(A061579(n)))` -/
def P15648390252823072410.Spec : Prop :=
  ∀ n, P15648390252823072410.a n = A152920 n

end A152920

/-! ## A152920.P7113904588397131932

`∑{d}[A062111(A061579(n)), A000010(#)]`
-/

namespace A152920.P7113904588397131932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062111 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A152920.P7113904588397131932

namespace A152920

/-- `∑{d}[A062111(A061579(n)), A000010(#)]` -/
def P7113904588397131932.Spec : Prop :=
  ∀ n, P7113904588397131932.a n = A152920 n

end A152920

/-!
# A152921: a(n) = 2^(2p-1)/2, where p is A000043(n).

The programs for A152921, there is no canonical definition to state claims against.
-/

/-! ## A152921.P13919840409024522694

`A139306(n+1)/2`
-/

namespace A152921.P13919840409024522694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139306 (n + 1) : ℚ) / 2

end

end A152921.P13919840409024522694

/-! ## A152921.P14073798056471598268

`A019279(n+1)²`
-/

namespace A152921.P14073798056471598268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019279 (n + 1) ^ 2

end

end A152921.P14073798056471598268

/-! ## A152921.P13202806187252940990

`2*A152922(n+1)`
-/

namespace A152921.P13202806187252940990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152922 (n + 1)

end

end A152921.P13202806187252940990

/-! ## A152921.P5805201566301834511

`4*A152923(n+1)`
-/

namespace A152921.P5805201566301834511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A152923 (n + 1)

end

end A152921.P5805201566301834511

/-! ## A152921.P7636228872735548278

`A330824(n+1)/4`
-/

namespace A152921.P7636228872735548278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330824 (n + 1) : ℚ) / 4

end

end A152921.P7636228872735548278

/-!
# A152922: a(n) = 2^(2*p-1)/4, where p is A000043(n).

The programs for A152922, there is no canonical definition to state claims against.
-/

/-! ## A152922.P3791389411975537950

`A152921(n+1)/2`
-/

namespace A152922.P3791389411975537950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152921 (n + 1) : ℚ) / 2

end

end A152922.P3791389411975537950

/-! ## A152922.P6226304320037022145

`A139306(n+1)/4`
-/

namespace A152922.P6226304320037022145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139306 (n + 1) : ℚ) / 4

end

end A152922.P6226304320037022145

/-! ## A152922.P4198256696064693679

`2*A152923(n+1)`
-/

namespace A152922.P4198256696064693679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152923 (n + 1)

end

end A152922.P4198256696064693679

/-! ## A152922.P10695042249136145262

`A330824(n+1)/8`
-/

namespace A152922.P10695042249136145262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330824 (n + 1) : ℚ) / 8

end

end A152922.P10695042249136145262

/-! ## A152922.P6219962631236528859

`A330818(n+1)/16`
-/

namespace A152922.P6219962631236528859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330818 (n + 1) : ℚ) / 16

end

end A152922.P6219962631236528859

/-!
# A152923: a(n) = 2^(2*p-1)/8, where p is A000043(n).

The programs for A152923, there is no canonical definition to state claims against.
-/

/-! ## A152923.P2390713726196673088

`A152922(n+1)/2`
-/

namespace A152923.P2390713726196673088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152922 (n + 1) : ℚ) / 2

end

end A152923.P2390713726196673088

/-! ## A152923.P17985805960003323435

`A152921(n+1)/4`
-/

namespace A152923.P17985805960003323435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152921 (n + 1) : ℚ) / 4

end

end A152923.P17985805960003323435

/-! ## A152923.P16464814104284791083

`A139306(n+1)/8`
-/

namespace A152923.P16464814104284791083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139306 (n + 1) : ℚ) / 8

end

end A152923.P16464814104284791083

/-! ## A152923.P12477392239448537278

`A134708(n+1)²`
-/

namespace A152923.P12477392239448537278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134708 (n + 1) ^ 2

end

end A152923.P12477392239448537278

/-! ## A152923.P11131843477493546260

`4^A153798(n+1)`
-/

namespace A152923.P11131843477493546260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A153798 (n + 1) : ℤ)

end

end A152923.P11131843477493546260

/-!
# A152924: Triangle read by rows: T(n,k) = Stirling2(n, k+1) + abs(Stirling1(n,k)), 0 <= k <= n.

The programs for A152924, there is no canonical definition to state claims against.
-/

/-! ## A152924.P11262445785299754218

`A132393(n)+A048993(n+1)`
-/

namespace A152924.P11262445785299754218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 n + A048993 (n + 1)

end

end A152924.P11262445785299754218

/-! ## A152924.P6117568581137531319

`A048993(n+1)+abs(A048994(n))`
-/

namespace A152924.P6117568581137531319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (n + 1) + |A048994 n|

end

end A152924.P6117568581137531319

/-! ## A152924.P1704762219014845254

`A132393(n)+A106800(A061579(n+1))`
-/

namespace A152924.P1704762219014845254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 n + A106800 (A061579 (n + 1)).toNat

end

end A152924.P1704762219014845254

/-! ## A152924.P41513270886143805

`A132393(n)+A106800(A038722(n+3))`
-/

namespace A152924.P41513270886143805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 n + A106800 (A038722 (n + 3)).toNat

end

end A152924.P41513270886143805

/-! ## A152924.P15446748939484229600

`A048993(n+1)+lcm(A020985(n), A048994(n))`
-/

namespace A152924.P15446748939484229600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (n + 1) + (Int.lcm (A020985 n) (A048994 n) : ℤ)

end

end A152924.P15446748939484229600

/-! ## A152924.P8237918432237461540

`A048993(n+1)+abs(A054654(n)-A154843(n))`
-/

namespace A152924.P8237918432237461540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (n + 1) + |A054654 n - A154843 n|

end

end A152924.P8237918432237461540

/-! ## A152924.P10456093184126129891

`A048993(n+1)+abs(A054654(A061579(n)))`
-/

namespace A152924.P10456093184126129891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (n + 1) + |A054654 (A061579 n).toNat|

end

end A152924.P10456093184126129891

/-! ## A152924.P9384663979713424626

`A048993(n+1)+A225479(n)/A233543(n)`
-/

namespace A152924.P9384663979713424626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048993 (n + 1) : ℚ) + (A225479 n : ℚ) / (A233543 n : ℚ)

end

end A152924.P9384663979713424626

/-! ## A152924.P13999725546553979032

`A048993(n+1)+A187558(n)/A130534(n)`
-/

namespace A152924.P13999725546553979032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048993 (n + 1) : ℚ) + (A187558 n : ℚ) / (A130534 n : ℚ)

end

end A152924.P13999725546553979032

/-!
# A152925: a(n) = smallest number m such that in 1,2,..,m written in base n, no two of the n digits occur the same number of times.

The programs for A152925, there is no canonical definition to state claims against.
-/

/-! ## A152925.P9612506562263730806

`A241987(∑[∑[comp[2*n+3]]])`
-/

namespace A152925.P9612506562263730806
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241987 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152925.P9612506562263730806

/-!
# A152927: Number of sets (in the Hausdorff metric geometry) at each location between two sets defining a polygonal configuration consisting of k 4-gonal polygonal components chained with string components of length 1 as k varies.

The programs for A152927, the canonical program `A152927.P3608449269664670531` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152927 has offset 0).

The definition of A152927 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152927.P3608449269664670531

`16*a(n-1)+a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A152927

/-- `16*a(n-1)+a(n-2)` -/
def P3608449269664670531.Spec : Prop :=
  ∀ n, (P3608449269664670531.a n : ℤ) = A152927 n

theorem P3608449269664670531.correct : P3608449269664670531.Spec := by
  intro n
  simp only [A152927]

end A152927

/-!
# A152928: Number of sets (in the Hausdorff metric geometry) at each location between two sets defining a polygonal configuration consisting of two m-gonal polygonal components chained with string components of length 1 as m varies.

The programs for A152928, the canonical program `A152928.P14754759326661192641` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152928 has offset 2).

The definition of A152928 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152928.P14754759326661192641

`A005248(n+2)²+A001906(n+3)²`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A152928

/-- `A005248(n+2)²+A001906(n+3)²` -/
def P14754759326661192641.Spec : Prop :=
  ∀ n, P14754759326661192641.a n = A152928 (n + 2)

theorem P14754759326661192641.correct : P14754759326661192641.Spec := by
  intro n
  simp only [A152928, Nat.add_sub_cancel]

end A152928

/-! ## A152928.P3544560154827241769

`A007598(2*(n+3))+A005248(n+2)²`
-/

namespace A152928.P3544560154827241769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (2 * (n + 3)) + A005248 (n + 2) ^ 2

end

end A152928.P3544560154827241769

namespace A152928

/-- `A007598(2*(n+3))+A005248(n+2)²` -/
def P3544560154827241769.Spec : Prop :=
  ∀ n, P3544560154827241769.a n = A152928 (n + 2)

end A152928

/-! ## A152928.P2226060571337524082

`A001519(2*(n+2))+A052995(n+3)²`
-/

namespace A152928.P2226060571337524082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (2 * (n + 2)) + A052995 (n + 3) ^ 2

end

end A152928.P2226060571337524082

namespace A152928

/-- `A001519(2*(n+2))+A052995(n+3)²` -/
def P2226060571337524082.Spec : Prop :=
  ∀ n, P2226060571337524082.a n = A152928 (n + 2)

end A152928

/-! ## A152928.P16068067360063653248

`A001519(2*(n+2))+A055819(n+3)²`
-/

namespace A152928.P16068067360063653248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (2 * (n + 2)) + A055819 (n + 3) ^ 2

end

end A152928.P16068067360063653248

namespace A152928

/-- `A001519(2*(n+2))+A055819(n+3)²` -/
def P16068067360063653248.Spec : Prop :=
  ∀ n, P16068067360063653248.a n = A152928 (n + 2)

end A152928

/-! ## A152928.P14853623871556133751

`A007598(2*(n+3))+A001254(2*(n+2))`
-/

namespace A152928.P14853623871556133751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (2 * (n + 3)) + A001254 (2 * (n + 2))

end

end A152928.P14853623871556133751

namespace A152928

/-- `A007598(2*(n+3))+A001254(2*(n+2))` -/
def P14853623871556133751.Spec : Prop :=
  ∀ n, P14853623871556133751.a n = A152928 (n + 2)

end A152928

/-! ## A152928.P439894560249366673

`A007598(2*(n+3))+A000204(2*(n+2))²`
-/

namespace A152928.P439894560249366673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (2 * (n + 3)) + A000204 (2 * (n + 2)) ^ 2

end

end A152928.P439894560249366673

namespace A152928

/-- `A007598(2*(n+3))+A000204(2*(n+2))²` -/
def P439894560249366673.Spec : Prop :=
  ∀ n, P439894560249366673.a n = A152928 (n + 2)

end A152928

/-! ## A152928.P7525475100871724903

`3*A001654(2*n+5)-A000071(4*n+6)`
-/

namespace A152928.P7525475100871724903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001654 (2 * n + 5) - A000071 (4 * n + 6)

end

end A152928.P7525475100871724903

namespace A152928

/-- `3*A001654(2*n+5)-A000071(4*n+6)` -/
def P7525475100871724903.Spec : Prop :=
  ∀ n, P7525475100871724903.a n = A152928 (n + 2)

end A152928

/-! ## A152928.P1073084490060148558

`A052952(2*(n+2))²+A169985(2*(n+2))²`
-/

namespace A152928.P1073084490060148558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 (2 * (n + 2)) ^ 2 + A169985 (2 * (n + 2)) ^ 2

end

end A152928.P1073084490060148558

namespace A152928

/-- `A052952(2*(n+2))²+A169985(2*(n+2))²` -/
def P1073084490060148558.Spec : Prop :=
  ∀ n, P1073084490060148558.a n = A152928 (n + 2)

end A152928

/-! ## A152928.P6149093548695337775

`A001254(2*(n+2))-(A001654(2*n+5)-A001654(2*(n+3)))`
-/

namespace A152928.P6149093548695337775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001254 (2 * (n + 2)) - (A001654 (2 * n + 5) - A001654 (2 * (n + 3)))

end

end A152928.P6149093548695337775

namespace A152928

/-- `A001254(2*(n+2))-(A001654(2*n+5)-A001654(2*(n+3)))` -/
def P6149093548695337775.Spec : Prop :=
  ∀ n, P6149093548695337775.a n = A152928 (n + 2)

end A152928

/-!
# A152929: Number of sets (in the Hausdorff metric geometry) at each location between two sets defining a polygonal configuration consisting of two 4-gonal polygonal components chained with string components of length l as l varies.

The programs for A152929, the canonical program `A152929.P3771818698095475859` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152929 has offset 1).

The definition of A152929 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152929.P3771818698095475859

`a(n-1)+a(n-2)` with `a(0)=113, a(1)=176`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A152929

/-- `a(n-1)+a(n-2)` -/
def P3771818698095475859.Spec : Prop :=
  ∀ n, (P3771818698095475859.a n : ℤ) = A152929 (n + 1)

theorem P3771818698095475859.correct : P3771818698095475859.Spec := by
  intro n
  simp only [A152929, Nat.add_sub_cancel]

end A152929

/-! ## A152929.P12180463890276483557

`(163*A000045(n+1)+63*A000032(n+1))/2`
-/

namespace A152929.P12180463890276483557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (163 * A000045 (n + 1) + 63 * A000032 (n + 1) : ℚ) / 2

end

end A152929.P12180463890276483557

namespace A152929

/-- `(163*A000045(n+1)+63*A000032(n+1))/2` -/
def P12180463890276483557.Spec : Prop :=
  ∀ n, P12180463890276483557.a n = (A152929 (n + 1) : ℚ)

end A152929

/-! ## A152929.P12033295655466919632

`A022363(n+5)-A258160(n+3)`
-/

namespace A152929.P12033295655466919632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022363 (n + 5) - A258160 (n + 3)

end

end A152929.P12033295655466919632

namespace A152929

/-- `A022363(n+5)-A258160(n+3)` -/
def P12033295655466919632.Spec : Prop :=
  ∀ n, P12033295655466919632.a n = A152929 (n + 1)

end A152929

/-! ## A152929.P7961514074960466876

`A022345(n+1)+A022086(n+9)`
-/

namespace A152929.P7961514074960466876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 (n + 1) + A022086 (n + 9)

end

end A152929.P7961514074960466876

namespace A152929

/-- `A022345(n+1)+A022086(n+9)` -/
def P7961514074960466876.Spec : Prop :=
  ∀ n, P7961514074960466876.a n = A152929 (n + 1)

end A152929

/-! ## A152929.P5006390966315890828

`A001060(n+8)-A022352(n+2)`
-/

namespace A152929.P5006390966315890828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001060 (n + 8) - A022352 (n + 2)

end

end A152929.P5006390966315890828

namespace A152929

/-- `A001060(n+8)-A022352(n+2)` -/
def P5006390966315890828.Spec : Prop :=
  ∀ n, P5006390966315890828.a n = A152929 (n + 1)

end A152929

/-! ## A152929.P7128756953409441485

`A000204(n+10)-A206608(n+2)`
-/

namespace A152929.P7128756953409441485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 10) - A206608 (n + 2)

end

end A152929.P7128756953409441485

namespace A152929

/-- `A000204(n+10)-A206608(n+2)` -/
def P7128756953409441485.Spec : Prop :=
  ∀ n, P7128756953409441485.a n = A152929 (n + 1)

end A152929

/-! ## A152929.P16538491724656313195

`4*A001060(n+5)-A206607(n+2)`
-/

namespace A152929.P16538491724656313195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001060 (n + 5) - A206607 (n + 2)

end

end A152929.P16538491724656313195

namespace A152929

/-- `4*A001060(n+5)-A206607(n+2)` -/
def P16538491724656313195.Spec : Prop :=
  ∀ n, P16538491724656313195.a n = A152929 (n + 1)

end A152929

/-! ## A152929.P8857523725936890955

`A022352(n+1)+A022345(n+2)+A022087(n+8)`
-/

namespace A152929.P8857523725936890955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022352 (n + 1) + (A022345 (n + 2) + A022087 (n + 8))

end

end A152929.P8857523725936890955

namespace A152929

/-- `A022352(n+1)+A022345(n+2)+A022087(n+8)` -/
def P8857523725936890955.Spec : Prop :=
  ∀ n, P8857523725936890955.a n = A152929 (n + 1)

end A152929

/-! ## A152929.P1836627756212293301

`A001060(n+8)-(A206607(n+2)+A001060(n+2))`
-/

namespace A152929.P1836627756212293301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001060 (n + 8) - (A206607 (n + 2) + A001060 (n + 2))

end

end A152929.P1836627756212293301

namespace A152929

/-- `A001060(n+8)-(A206607(n+2)+A001060(n+2))` -/
def P1836627756212293301.Spec : Prop :=
  ∀ n, P1836627756212293301.a n = A152929 (n + 1)

end A152929

/-! ## A152929.P5548049968058180152

`A022352(n+1)+A006355(n+11)-A280154(n+2)`
-/

namespace A152929.P5548049968058180152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022352 (n + 1) + (A006355 (n + 11) - A280154 (n + 2))

end

end A152929.P5548049968058180152

namespace A152929

/-- `A022352(n+1)+A006355(n+11)-A280154(n+2)` -/
def P5548049968058180152.Spec : Prop :=
  ∀ n, P5548049968058180152.a n = A152929 (n + 1)

end A152929

/-! ## A152929.P4367211550839362315

`A101156(n+6)+A280932(n+9)-A022121(n+1)`
-/

namespace A152929.P4367211550839362315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101156 (n + 6) + (A280932 (n + 9) - A022121 (n + 1))

end

end A152929.P4367211550839362315

namespace A152929

/-- `A101156(n+6)+A280932(n+9)-A022121(n+1)` -/
def P4367211550839362315.Spec : Prop :=
  ∀ n, P4367211550839362315.a n = A152929 (n + 1)

end A152929

/-! ## A152929.P12805561159443328102

`A006355(n+12)-(A022352(n+4)+A022345(n+2))`
-/

namespace A152929.P12805561159443328102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 12) - (A022352 (n + 4) + A022345 (n + 2))

end

end A152929.P12805561159443328102

namespace A152929

/-- `A006355(n+12)-(A022352(n+4)+A022345(n+2))` -/
def P12805561159443328102.Spec : Prop :=
  ∀ n, P12805561159443328102.a n = A152929 (n + 1)

end A152929

/-!
# A152930: Number of sets (in the Hausdorff metric geometry) at each location between two sets defining a polygonal configuration consisting of k 4-gonal polygonal components chained with string components of length 2 as k varies.

The programs for A152930, the canonical program `A152930.P6301162708875098909` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152930 has offset 1).

The definition of A152930 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152930.P6301162708875098909

`25*a(n-1)-a(n-2)` with `a(0)=7, a(1)=176`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A152930

/-- `25*a(n-1)-a(n-2)` -/
def P6301162708875098909.Spec : Prop :=
  ∀ n, P6301162708875098909.a n = A152930 (n + 1)

theorem P6301162708875098909.correct : P6301162708875098909.Spec := by
  intro n
  simp only [A152930, Nat.add_sub_cancel]

end A152930

/-!
# A152934: Number of sets (in the Hausdorff metric geometry) at each location between two sets defining a polygonal configuration consisting of two m-gonal polygonal components chained with string components of length 3 as m varies.

The programs for A152934, the canonical program `A152934.P17857663830287726825` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152934 has offset 2).

The definition of A152934 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152934.P17857663830287726825

`A069960(2*n+5)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A152934

/-- `A069960(2*n+5)` -/
def P17857663830287726825.Spec : Prop :=
  ∀ n, P17857663830287726825.a n = A152934 (n + 2)

theorem P17857663830287726825.correct : P17857663830287726825.Spec := by
  intro n
  simp only [A152934, Nat.add_sub_cancel]

end A152934

/-! ## A152934.P8412061484415540601

`record[A069960(Δ[A185869(n+1)])]`
-/

namespace A152934.P8412061484415540601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185869 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069960 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152934.P8412061484415540601

namespace A152934

/-- `record[A069960(Δ[A185869(n+1)])]` -/
def P8412061484415540601.Spec : Prop :=
  ∀ n, P8412061484415540601.a n = A152934 (n + 2)

end A152934

/-!
# A152935: Decimal expansion of log_6 (3).

The programs for A152935, there is no canonical definition to state claims against.
-/

/-! ## A152935.P11384132690068972524

`A154911(n+1)`
-/

namespace A152935.P11384132690068972524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154911 (n + 1 + 1)

end

end A152935.P11384132690068972524

/-! ## A152935.P3492517581428511277

`9-A152683(n)`
-/

namespace A152935.P3492517581428511277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A152683 n

end

end A152935.P3492517581428511277

/-! ## A152935.P15014891345500752821

`9-A154199(n+1)`
-/

namespace A152935.P15014891345500752821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A154199 (n + 1 + 1)

end

end A152935.P15014891345500752821

/-!
# A152937: A vector recursion designed around a factorial row sum : v(n)=if[odd,{1.n,n^2,...,n!-Sum[2^m,{m,0,n/2-1}],n!-Sum2^m,{m,0,n/2-1}],...n^2.n,1}],if[ even{1.n,n^2,...,n!-2Sum[2^m,{m,0,n/2-1}],...n^2.n,1}].

The programs for A152937, there is no canonical definition to state claims against.
-/

/-! ## A152937.P13338826601590413294

`A141471(A202549(n+1))`
-/

namespace A152937.P13338826601590413294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141471 (A202549 (n + 1)).toNat

end

end A152937.P13338826601590413294

/-! ## A152937.P6382266002862939699

`A141471(A268056(n+1))`
-/

namespace A152937.P6382266002862939699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141471 (A268056 (n + 1)).toNat

end

end A152937.P6382266002862939699

/-! ## A152937.P12703781772688999987

`A141471(A268079(n+1))`
-/

namespace A152937.P12703781772688999987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141471 (A268079 (n + 1)).toNat

end

end A152937.P12703781772688999987

/-! ## A152937.P17268601681649526439

`A202177(A146767(n)+3)`
-/

namespace A152937.P17268601681649526439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202177 (A146767 n + 3).toNat

end

end A152937.P17268601681649526439

/-! ## A152937.P17583046577889620433

`A097098(A059328(n)+9)`
-/

namespace A152937.P17583046577889620433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097098 (A059328 n + 9).toNat

end

end A152937.P17583046577889620433

/-!
# A152940: Odd squarefree numbers n such that the cyclotomic polynomial Phi(n,x) has height 2.

The programs for A152940, there is no canonical definition to state claims against.
-/

/-! ## A152940.P16650159440422900250

`A118678(comp[11-A161504(n+1)])`
-/

namespace A152940.P16650159440422900250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 - A161504 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118678 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A152940.P16650159440422900250

/-! ## A152940.P7946084032215164650

`A154430(comp[A008592(n)-A008456(n)])`
-/

namespace A152940.P7946084032215164650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A008456 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154430 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A152940.P7946084032215164650

/-! ## A152940.P12487295464794942679

`A154430(comp[A195861(n)-A338679(n)])`
-/

namespace A152940.P12487295464794942679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195861 n - A338679 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154430 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A152940.P12487295464794942679

/-! ## A152940.P14402213155447894421

`A154430(comp[A111525(n+1)-A173110(n)])`
-/

namespace A152940.P14402213155447894421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111525 (n + 1) - A173110 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154430 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A152940.P14402213155447894421

/-! ## A152940.P4563127111866432282

`A154430(comp[A138166(n+1)-A151159(n)])`
-/

namespace A152940.P4563127111866432282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138166 (n + 1) - A151159 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154430 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A152940.P4563127111866432282

/-!
# A152941: Odd squarefree numbers n such that the cyclotomic polynomial Phi(n,x) has height 3.

The programs for A152941, there is no canonical definition to state claims against.
-/

/-! ## A152941.P17613531669305976004

`A013591(A001222((n+1)!)+1)`
-/

namespace A152941.P17613531669305976004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013591 (A001222 (Nat.factorial (n + 1)) + 1).toNat

end

end A152941.P17613531669305976004

/-! ## A152941.P1999623973466672036

`A013591(A001222(∏[n+1])+1)`
-/

namespace A152941.P1999623973466672036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013591 (A001222 (∏ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A152941.P1999623973466672036

/-! ## A152941.P3956654633294478340

`A013591(∩[A153775(n+1), A087051(n)])`
-/

namespace A152941.P3956654633294478340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087051 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013591 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A152941.P3956654633294478340

/-!
# A152942: Odd squarefree numbers n such that the cyclotomic polynomial Phi(n,x) has height 4.

The programs for A152942, there is no canonical definition to state claims against.
-/

/-! ## A152942.P17634465974701675889

`A013592(record[Δ[A069464(n+1)]])`
-/

namespace A152942.P17634465974701675889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069464 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013592 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A152942.P17634465974701675889

/-!
# A152943: Odd squarefree numbers n such that the cyclotomic polynomial Phi(n,x) has height 5.

The programs for A152943, there is no canonical definition to state claims against.
-/

/-! ## A152943.P7403578321716992172

`A013593(∑[A245413(1-∏{p}[n+1, #]+n)])`
-/

namespace A152943.P7403578321716992172
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245413 (1 - ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013593 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152943.P7403578321716992172

/-!
# A152945: Decimal expansion of log_7(3).

The programs for A152945, there is no canonical definition to state claims against.
-/

/-! ## A152945.P18361256145130535557

`A155591(n+1)`
-/

namespace A152945.P18361256145130535557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155591 (n + 1 + 1)

end

end A152945.P18361256145130535557

/-!
# A152946: Magic deficiency of the complete graph K_n on n vertices.

The programs for A152946, there is no canonical definition to state claims against.
-/

/-! ## A152946.P10250741572327712092

`A152682(n+1)-∑[n+1]`
-/

namespace A152946.P10250741572327712092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152682 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A152946.P10250741572327712092

/-! ## A152946.P2679171589742298408

`A152682(n+1)-1-A000096(n)`
-/

namespace A152946.P2679171589742298408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152682 (n + 1) - 1 - A000096 n

end

end A152946.P2679171589742298408

/-! ## A152946.P2005105028475094634

`A152682(n+1)%A000217(n+1)`
-/

namespace A152946.P2005105028475094634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152682 (n + 1)) (A000217 (n + 1))

end

end A152946.P2005105028475094634

/-! ## A152946.P7854543946238084411

`abs(A152682(n+1)-A179865(n+2))`
-/

namespace A152946.P7854543946238084411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A152682 (n + 1) - A179865 (n + 2)|

end

end A152946.P7854543946238084411

/-! ## A152946.P8318225230932661002

`A152682(n+1)%A115364(A000079(n))`
-/

namespace A152946.P8318225230932661002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152682 (n + 1)) (A115364 (A000079 n).toNat)

end

end A152946.P8318225230932661002

/-!
# A152947: a(n) = 1 + (n-2)*(n-1)/2.

The programs for A152947, the canonical program `A152947.P16367813442806996368` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152947 has offset 1).

The definition of A152947 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152947.P16367813442806996368

`1+C(n, 2)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A152947

/-- `1+C(n, 2)` -/
def P16367813442806996368.Spec : Prop :=
  ∀ n, (P16367813442806996368.a n : ℤ) = A152947 (n + 1)

theorem P16367813442806996368.correct : P16367813442806996368.Spec := by
  intro n
  simp only [A152947, Nat.add_sub_cancel]

end A152947

/-! ## A152947.P11545396099702707123

`1+(n-1)*n/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152947.P11545396099702707123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + ((n : ℤ) - 1 : ℚ) * ((n : ℚ) / 2)

end

end A152947.P11545396099702707123

namespace A152947

/-- `1+(n-1)*n/2` -/
def P11545396099702707123.Spec : Prop :=
  ∀ n, P11545396099702707123.a n = (A152947 (n + 1) : ℚ)

end A152947

/-! ## A152947.P9758267748019787680

`abs(xor(C(n, 2), -1))`
-/

namespace A152947.P9758267748019787680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (Nat.choose n 2 : ℤ) (-1)|

end

end A152947.P9758267748019787680

namespace A152947

/-- `abs(xor(C(n, 2), -1))` -/
def P9758267748019787680.Spec : Prop :=
  ∀ n, P9758267748019787680.a n = A152947 (n + 1)

end A152947

/-! ## A152947.P15134382422357080450

`-xor(C(n, 2), -1)`
-/

namespace A152947.P15134382422357080450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (Nat.choose n 2 : ℤ) (-1)

end

end A152947.P15134382422357080450

namespace A152947

/-- `-xor(C(n, 2), -1)` -/
def P15134382422357080450.Spec : Prop :=
  ∀ n, P15134382422357080450.a n = A152947 (n + 1)

end A152947

/-! ## A152947.P10924067908395916223

`(or(2, n²)-n)/2`
-/

namespace A152947.P10924067908395916223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 2 (n ^ 2) : ℤ) - (n : ℤ) : ℚ) / 2

end

end A152947.P10924067908395916223

namespace A152947

/-- `(or(2, n²)-n)/2` -/
def P10924067908395916223.Spec : Prop :=
  ∀ n, P10924067908395916223.a n = (A152947 (n + 1) : ℚ)

end A152947

/-! ## A152947.P7477970727324201058

`(xor(2, n²)-n)/2`
-/

namespace A152947.P7477970727324201058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 2 (n ^ 2) : ℤ) - (n : ℤ) : ℚ) / 2

end

end A152947.P7477970727324201058

namespace A152947

/-- `(xor(2, n²)-n)/2` -/
def P7477970727324201058.Spec : Prop :=
  ∀ n, P7477970727324201058.a n = (A152947 (n + 1) : ℚ)

end A152947

/-! ## A152947.P15988138567697873724

`Δ[n-(1-C(n, 3))]`
-/

namespace A152947.P15988138567697873724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (1 - (Nat.choose n 3 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152947.P15988138567697873724

namespace A152947

/-- `Δ[n-(1-C(n, 3))]` -/
def P15988138567697873724.Spec : Prop :=
  ∀ n, P15988138567697873724.a n = A152947 (n + 1)

end A152947

/-! ## A152947.P8391248014361385399

`round(cos(1)+∑[n]-n)`
-/

namespace A152947.P8391248014361385399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - (n : ℝ))

end

end A152947.P8391248014361385399

namespace A152947

/-- `round(cos(1)+∑[n]-n)` -/
def P8391248014361385399.Spec : Prop :=
  ∀ n, P8391248014361385399.a n = A152947 (n + 1)

end A152947

/-! ## A152947.P10278924201210186262

`ceil(sin(1)+∑[n]-n)`
-/

namespace A152947.P10278924201210186262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - (n : ℝ)⌉

end

end A152947.P10278924201210186262

namespace A152947

/-- `ceil(sin(1)+∑[n]-n)` -/
def P10278924201210186262.Spec : Prop :=
  ∀ n, P10278924201210186262.a n = A152947 (n + 1)

end A152947

/-! ## A152947.P17471411803997882048

`floor(tan(1)+∑[n]-n)`
-/

namespace A152947.P17471411803997882048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - (n : ℝ)⌋

end

end A152947.P17471411803997882048

namespace A152947

/-- `floor(tan(1)+∑[n]-n)` -/
def P17471411803997882048.Spec : Prop :=
  ∀ n, P17471411803997882048.a n = A152947 (n + 1)

end A152947

/-! ## A152947.P13116107354064532932

`ceil(∑[n]-(n-cos(1)))`
-/

namespace A152947.P13116107354064532932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - ((n : ℝ) - Real.cos (1 : ℝ))⌉

end

end A152947.P13116107354064532932

namespace A152947

/-- `ceil(∑[n]-(n-cos(1)))` -/
def P13116107354064532932.Spec : Prop :=
  ∀ n, P13116107354064532932.a n = A152947 (n + 1)

end A152947

/-! ## A152947.P9274143489356538843

`abs(n-(1-a(n-1)))` with `a(0)=1`
-/

namespace A152947.P9274143489356538843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |(n : ℤ) - (1 - a (n - 1))|

end

end A152947.P9274143489356538843

namespace A152947

/-- `abs(n-(1-a(n-1)))` -/
def P9274143489356538843.Spec : Prop :=
  ∀ n, P9274143489356538843.a n = A152947 (n + 1)

end A152947

/-!
# A152948: a(n) = (n^2 - 3*n + 6)/2.

The programs for A152948, the canonical program `A152948.P6305161244529730027` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152948 has offset 1).

The definition of A152948 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152948.P6305161244529730027

`2+C(n, 2)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A152948

/-- `2+C(n, 2)` -/
def P6305161244529730027.Spec : Prop :=
  ∀ n, (P6305161244529730027.a n : ℤ) = A152948 (n + 1)

theorem P6305161244529730027.correct : P6305161244529730027.Spec := by
  intro n
  simp only [A152948, Nat.add_sub_cancel]

end A152948

/-! ## A152948.P17105321651128996542

`a(n-1)+n-1` with `a(0)=2`
-/

namespace A152948.P17105321651128996542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + ((n : ℤ) - 1)

end

end A152948.P17105321651128996542

namespace A152948

/-- `a(n-1)+n-1` -/
def P17105321651128996542.Spec : Prop :=
  ∀ n, P17105321651128996542.a n = A152948 (n + 1)

end A152948

/-! ## A152948.P12971205529857795897

`((n+1)²-3*(n+1)+6)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152948.P12971205529857795897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) - (3 * (n + 1) : ℤ) + 6 : ℚ) / 2

end

end A152948.P12971205529857795897

namespace A152948

/-- `((n+1)²-3*(n+1)+6)/2` -/
def P12971205529857795897.Spec : Prop :=
  ∀ n, P12971205529857795897.a n = (A152948 (n + 1) : ℚ)

end A152948

/-! ## A152948.P13641076781054311898

`abs(or(2, n²)-∑[n])`
-/

namespace A152948.P13641076781054311898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lor 2 (n ^ 2) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A152948.P13641076781054311898

namespace A152948

/-- `abs(or(2, n²)-∑[n])` -/
def P13641076781054311898.Spec : Prop :=
  ∀ n, P13641076781054311898.a n = A152948 (n + 1)

end A152948

/-! ## A152948.P14719115077228785365

`abs(xor(2, n²)-∑[n])`
-/

namespace A152948.P14719115077228785365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.xor 2 (n ^ 2) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A152948.P14719115077228785365

namespace A152948

/-- `abs(xor(2, n²)-∑[n])` -/
def P14719115077228785365.Spec : Prop :=
  ∀ n, P14719115077228785365.a n = A152948 (n + 1)

end A152948

/-! ## A152948.P14427768907552218191

`floor(∑[n]-tan(2)-n)`
-/

namespace A152948.P14427768907552218191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.tan (2 : ℝ) - (n : ℝ)⌋

end

end A152948.P14427768907552218191

namespace A152948

/-- `floor(∑[n]-tan(2)-n)` -/
def P14427768907552218191.Spec : Prop :=
  ∀ n, P14427768907552218191.a n = A152948 (n + 1)

end A152948

/-! ## A152948.P13036266754983017036

`ceil(∑[n]-(n-tan(1)))`
-/

namespace A152948.P13036266754983017036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - ((n : ℝ) - Real.tan (1 : ℝ))⌉

end

end A152948.P13036266754983017036

namespace A152948

/-- `ceil(∑[n]-(n-tan(1)))` -/
def P13036266754983017036.Spec : Prop :=
  ∀ n, P13036266754983017036.a n = A152948 (n + 1)

end A152948

/-! ## A152948.P17473166589644389389

`round(∑[n]-(n-tan(1)))`
-/

namespace A152948.P17473166589644389389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - ((n : ℝ) - Real.tan (1 : ℝ)))

end

end A152948.P17473166589644389389

namespace A152948

/-- `round(∑[n]-(n-tan(1)))` -/
def P17473166589644389389.Spec : Prop :=
  ∀ n, P17473166589644389389.a n = A152948 (n + 1)

end A152948

/-! ## A152948.P8260777862390409694

`ceil(∑[n]-(n-asin(1)))`
-/

namespace A152948.P8260777862390409694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - ((n : ℝ) - Real.arcsin (1 : ℝ))⌉

end

end A152948.P8260777862390409694

namespace A152948

/-- `ceil(∑[n]-(n-asin(1)))` -/
def P8260777862390409694.Spec : Prop :=
  ∀ n, P8260777862390409694.a n = A152948 (n + 1)

end A152948

/-! ## A152948.P5959555611429412590

`round(∑[n]-(n-asin(1)))`
-/

namespace A152948.P5959555611429412590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - ((n : ℝ) - Real.arcsin (1 : ℝ)))

end

end A152948.P5959555611429412590

namespace A152948

/-- `round(∑[n]-(n-asin(1)))` -/
def P5959555611429412590.Spec : Prop :=
  ∀ n, P5959555611429412590.a n = A152948 (n + 1)

end A152948

/-! ## A152948.P10765931553341824225

`ceil(∑[n]-(n-cosh(1)))`
-/

namespace A152948.P10765931553341824225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - ((n : ℝ) - Real.cosh (1 : ℝ))⌉

end

end A152948.P10765931553341824225

namespace A152948

/-- `ceil(∑[n]-(n-cosh(1)))` -/
def P10765931553341824225.Spec : Prop :=
  ∀ n, P10765931553341824225.a n = A152948 (n + 1)

end A152948

/-! ## A152948.P1665791350368467383

`ceil(∑[n]-(n-atan(2)))`
-/

namespace A152948.P1665791350368467383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - ((n : ℝ) - Real.arctan (2 : ℝ))⌉

end

end A152948.P1665791350368467383

namespace A152948

/-- `ceil(∑[n]-(n-atan(2)))` -/
def P1665791350368467383.Spec : Prop :=
  ∀ n, P1665791350368467383.a n = A152948 (n + 1)

end A152948

/-! ## A152948.P16152996122072400268

`round(∑[n]-(n-cosh(1)))`
-/

namespace A152948.P16152996122072400268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - ((n : ℝ) - Real.cosh (1 : ℝ)))

end

end A152948.P16152996122072400268

namespace A152948

/-- `round(∑[n]-(n-cosh(1)))` -/
def P16152996122072400268.Spec : Prop :=
  ∀ n, P16152996122072400268.a n = A152948 (n + 1)

end A152948

/-! ## A152948.P9178292641549978056

`ceil(∑[n]-(n-sinh(1)))`
-/

namespace A152948.P9178292641549978056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - ((n : ℝ) - Real.sinh (1 : ℝ))⌉

end

end A152948.P9178292641549978056

namespace A152948

/-- `ceil(∑[n]-(n-sinh(1)))` -/
def P9178292641549978056.Spec : Prop :=
  ∀ n, P9178292641549978056.a n = A152948 (n + 1)

end A152948

/-! ## A152948.P15790586009642491124

`∑[lcm(n-1, ceil(acot(n)))]`
-/

namespace A152948.P15790586009642491124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) ⌈SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152948.P15790586009642491124

namespace A152948

/-- `∑[lcm(n-1, ceil(acot(n)))]` -/
def P15790586009642491124.Spec : Prop :=
  ∀ n, (P15790586009642491124.a n : ℤ) = A152948 (n + 1)

end A152948

/-! ## A152948.P4607457889699463881

`n-(1-a(n-1))` with `a(0)=2`
-/

namespace A152948.P4607457889699463881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (n : ℤ) - (1 - a (n - 1))

end

end A152948.P4607457889699463881

namespace A152948

/-- `n-(1-a(n-1))` -/
def P4607457889699463881.Spec : Prop :=
  ∀ n, P4607457889699463881.a n = A152948 (n + 1)

end A152948

/-! ## A152948.P14609641718999982499

`xor(∑[1-n]-4, -1)`
-/

namespace A152948.P14609641718999982499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j - 4) (-1)

end

end A152948.P14609641718999982499

namespace A152948

/-- `xor(∑[1-n]-4, -1)` -/
def P14609641718999982499.Spec : Prop :=
  ∀ n, P14609641718999982499.a n = A152948 (n + 1)

end A152948

/-!
# A152949: a(n) = 3 + binomial(n-1,2).

The programs for A152949, the canonical program `A152949.P6392678402352572629` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152949 has offset 1).

The definition of A152949 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152949.P6392678402352572629

`3+C(n, 2)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A152949

/-- `3+C(n, 2)` -/
def P6392678402352572629.Spec : Prop :=
  ∀ n, (P6392678402352572629.a n : ℤ) = A152949 (n + 1)

theorem P6392678402352572629.correct : P6392678402352572629.Spec := by
  intro n
  simp only [A152949, Nat.add_sub_cancel]

end A152949

/-! ## A152949.P13955429221025972439

`a(n-1)+n-1` with `a(0)=3`
-/

namespace A152949.P13955429221025972439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + ((n : ℤ) - 1)

end

end A152949.P13955429221025972439

namespace A152949

/-- `a(n-1)+n-1` -/
def P13955429221025972439.Spec : Prop :=
  ∀ n, P13955429221025972439.a n = A152949 (n + 1)

end A152949

/-! ## A152949.P17411930780647114290

`((n+1)²-3*(n+1)+8)/2`
-/

namespace A152949.P17411930780647114290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) - (3 * (n + 1) : ℤ) + 8 : ℚ) / 2

end

end A152949.P17411930780647114290

namespace A152949

/-- `((n+1)²-3*(n+1)+8)/2` -/
def P17411930780647114290.Spec : Prop :=
  ∀ n, P17411930780647114290.a n = (A152949 (n + 1) : ℚ)

end A152949

/-! ## A152949.P18083530375910706514

`ceil(∑[n]-tan(2)-n)`
-/

namespace A152949.P18083530375910706514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.tan (2 : ℝ) - (n : ℝ)⌉

end

end A152949.P18083530375910706514

namespace A152949

/-- `ceil(∑[n]-tan(2)-n)` -/
def P18083530375910706514.Spec : Prop :=
  ∀ n, P18083530375910706514.a n = A152949 (n + 1)

end A152949

/-! ## A152949.P7397423616286370050

`floor(∑[n]-(n-cosh(2)))`
-/

namespace A152949.P7397423616286370050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - ((n : ℝ) - Real.cosh (2 : ℝ))⌋

end

end A152949.P7397423616286370050

namespace A152949

/-- `floor(∑[n]-(n-cosh(2)))` -/
def P7397423616286370050.Spec : Prop :=
  ∀ n, P7397423616286370050.a n = A152949 (n + 1)

end A152949

/-! ## A152949.P14432030719860867452

`floor(∑[n]-(n-sinh(2)))`
-/

namespace A152949.P14432030719860867452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - ((n : ℝ) - Real.sinh (2 : ℝ))⌋

end

end A152949.P14432030719860867452

namespace A152949

/-- `floor(∑[n]-(n-sinh(2)))` -/
def P14432030719860867452.Spec : Prop :=
  ∀ n, P14432030719860867452.a n = A152949 (n + 1)

end A152949

/-! ## A152949.P14148680535379480597

`n-(1-a(n-1))` with `a(0)=3`
-/

namespace A152949.P14148680535379480597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (n : ℤ) - (1 - a (n - 1))

end

end A152949.P14148680535379480597

namespace A152949

/-- `n-(1-a(n-1))` -/
def P14148680535379480597.Spec : Prop :=
  ∀ n, P14148680535379480597.a n = A152949 (n + 1)

end A152949

/-! ## A152949.P11694810221830162202

`(n+3)²%∑[n+6]`
-/

namespace A152949.P11694810221830162202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 2 % (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152949.P11694810221830162202

namespace A152949

/-- `(n+3)²%∑[n+6]` -/
def P11694810221830162202.Spec : Prop :=
  ∀ n, (P11694810221830162202.a n : ℤ) = A152949 (n + 1)

end A152949

/-! ## A152949.P18112043809309514711

`∑[n-(4*n-3)%4]`
-/

namespace A152949.P18112043809309514711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod ((4 * n : ℤ) - 3) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152949.P18112043809309514711

namespace A152949

/-- `∑[n-(4*n-3)%4]` -/
def P18112043809309514711.Spec : Prop :=
  ∀ n, P18112043809309514711.a n = A152949 (n + 1)

end A152949

/-!
# A152950: a(n) = 3 + n*(n-1)/2.

The programs for A152950, the canonical program `A152950.P1489661741398431625` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152950 has offset 1).

The definition of A152950 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3+(n+1)*n/2` (program `A152950.P15035288181139845472`, by `A152950.P15035288181139845472.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152950.P561744456514800470

`3+C(n+1, 2)`
-/

namespace A152950.P561744456514800470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + Nat.choose (n + 1) 2

end

end A152950.P561744456514800470

namespace A152950

/-- `3+C(n+1, 2)` -/
def P561744456514800470.Spec : Prop :=
  ∀ n, (P561744456514800470.a n : ℤ) = A152950 (n + 1)

end A152950

/-! ## A152950.P1489661741398431625

`a(n-1)+n` with `a(0)=3`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A152950

/-- `a(n-1)+n` -/
def P1489661741398431625.Spec : Prop :=
  ∀ n, (P1489661741398431625.a n : ℤ) = A152950 (n + 1)

theorem P1489661741398431625.correct : P1489661741398431625.Spec := by
  intro n
  simp only [A152950, Nat.add_sub_cancel]

end A152950

/-! ## A152950.P15035288181139845472

`3+(n+1)*n/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152950.P15035288181139845472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 + (n + 1 : ℚ) * ((n : ℚ) / 2)

end

end A152950.P15035288181139845472

namespace A152950

/-- `3+(n+1)*n/2` -/
def P15035288181139845472.Spec : Prop :=
  ∀ n, P15035288181139845472.a n = (A152950 (n + 1) : ℚ)

theorem P15035288181139845472.correct : P15035288181139845472.Spec := by
  intro n
  induction n with
  | zero => simp [A152950, A152950.P15035288181139845472.a, A152950.P1489661741398431625.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A152950, Nat.add_sub_cancel, A152950.P15035288181139845472.a, A152950.P1489661741398431625.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A152950

/-! ## A152950.P12866537616449434854

`A027691(n)/2`
-/

namespace A152950.P12866537616449434854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027691 n : ℚ) / 2

end

end A152950.P12866537616449434854

namespace A152950

/-- `A027691(n)/2` -/
def P12866537616449434854.Spec : Prop :=
  ∀ n, P12866537616449434854.a n = (A152950 (n + 1) : ℚ)

end A152950

/-! ## A152950.P14724782560635739302

`A152949(n+2)`
-/

namespace A152950.P14724782560635739302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152949 (n + 2)

end

end A152950.P14724782560635739302

namespace A152950

/-- `A152949(n+2)` -/
def P14724782560635739302.Spec : Prop :=
  ∀ n, P14724782560635739302.a n = A152950 (n + 1)

end A152950

/-! ## A152950.P12228242305674842792

`(lcm(n, n+1)+6)/2`
-/

namespace A152950.P12228242305674842792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (n + 1) + 6 : ℚ) / 2

end

end A152950.P12228242305674842792

namespace A152950

/-- `(lcm(n, n+1)+6)/2` -/
def P12228242305674842792.Spec : Prop :=
  ∀ n, P12228242305674842792.a n = (A152950 (n + 1) : ℚ)

end A152950

/-! ## A152950.P15751939485147785712

`∑[C(n, a(n-1))]` with `a(0)=3, a(1)=1`
-/

namespace A152950.P15751939485147785712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  Nat.choose n (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152950.P15751939485147785712

namespace A152950

/-- `∑[C(n, a(n-1))]` -/
def P15751939485147785712.Spec : Prop :=
  ∀ n, (P15751939485147785712.a n : ℤ) = A152950 (n + 1)

end A152950

/-! ## A152950.P4985809676191513510

`∑[n^(n-a(n-1))]` with `a(0)=3`
-/

namespace A152950.P4985809676191513510
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [3] fun n f1 =>
  (n : ℝ) ^ ((n : ℝ) - f1 (n - 1))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152950.P4985809676191513510

namespace A152950

/-- `∑[n^(n-a(n-1))]` -/
def P4985809676191513510.Spec : Prop :=
  ∀ n, P4985809676191513510.a n = (A152950 (n + 1) : ℝ)

end A152950

/-!
# A152951: Complementary von Staudt prime numbers.

The programs for A152951, there is no canonical definition to state claims against.
-/

/-! ## A152951.P10051768276992517822

`∩[A141302(n+1), A141818(n+1)]`
-/

namespace A152951.P10051768276992517822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152951.P10051768276992517822

/-! ## A152951.P14911596720214012595

`∩[A164333(A005117(n+1)), A017653(n+1)]`
-/

namespace A152951.P14911596720214012595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164333 (A005117 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152951.P14911596720214012595

/-!
# A152952: Von Staudt primes which are not safe primes (A005385).

The programs for A152952, there is no canonical definition to state claims against.
-/

/-! ## A152952.P17163314106820246980

`∩[A092307(n+1), A096787(n+1)]`
-/

namespace A152952.P17163314106820246980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152952.P17163314106820246980

/-! ## A152952.P15627220889866760026

`∩[A067467(n+1), A092307(n+1)]`
-/

namespace A152952.P15627220889866760026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152952.P15627220889866760026

/-! ## A152952.P13228964783422463679

`∩[A092307(n+1), A339466(n+1)]`
-/

namespace A152952.P13228964783422463679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152952.P13228964783422463679

/-! ## A152952.P1958131555766657770

`p?[A179464(A092307(n+1)-2)]`
-/

namespace A152952.P1958131555766657770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179464 (A092307 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152952.P1958131555766657770

/-! ## A152952.P15738584953778886868

`∩[A060254(n+1), A092307(n+1)]`
-/

namespace A152952.P15738584953778886868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152952.P15738584953778886868

/-!
# A152953: 

The programs for A152953, there is no canonical definition to state claims against.
-/

/-! ## A152953.P9563989561979204663

`A006516(A152961(n+1))`
-/

namespace A152953.P9563989561979204663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 (A152961 (n + 1)).toNat

end

end A152953.P9563989561979204663

/-! ## A152953.P3078655147759854208

`A000396(lt[A259691(n), n+1])`
-/

namespace A152953.P3078655147759854208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259691 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000396 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A152953.P3078655147759854208

/-! ## A152953.P10195004778358037044

`A000396(comp[A260042(n+1)]+1)`
-/

namespace A152953.P10195004778358037044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260042 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000396 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A152953.P10195004778358037044

/-! ## A152953.P6739877174059352130

`A000396(A288452(n+1)-(n+2))`
-/

namespace A152953.P6739877174059352130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000396 (A288452 (n + 1) - (n + 2 : ℤ)).toNat

end

end A152953.P6739877174059352130

/-! ## A152953.P4093557206461967536

`A000396(round(sqrt(A036639(n)+1))+n)`
-/

namespace A152953.P4093557206461967536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000396 (SequenceMachineLib.roundAway (Real.sqrt (A036639 n + 1 : ℝ)) + (n : ℤ)).toNat

end

end A152953.P4093557206461967536

/-!
# A152955: Odd squarefree numbers n such that the cyclotomic polynomial Phi(n,x) has height 1.

The programs for A152955, there is no canonical definition to state claims against.
-/

/-! ## A152955.P5772757035375083994

`eq[1, A264596(A286142(n+1))]+1`
-/

namespace A152955.P5772757035375083994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264596 (A286142 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A152955.P5772757035375083994

/-! ## A152955.P1200180384344373210

`filter[A320056(n+1), A008966(#)]`
-/

namespace A152955.P1200180384344373210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A152955.P1200180384344373210

/-! ## A152955.P3416273577665455493

`filter[A320056(n+1), A132350(#)]`
-/

namespace A152955.P3416273577665455493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A152955.P3416273577665455493

/-!
# A152956: Decimal expansion of log_8 (3).

The programs for A152956, there is no canonical definition to state claims against.
-/

/-! ## A152956.P2744635900742704011

`A155975(n+1)`
-/

namespace A152956.P2744635900742704011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155975 (n + 1 + 1)

end

end A152956.P2744635900742704011

/-!
# A152957: Numbers n such that LS(n) divides n, where LS is the "Look and Say" function (A045918).

The programs for A152957, there is no canonical definition to state claims against.
-/

/-! ## A152957.P2363924535705765225

`∩[A110744(n+1), A278440(n+1)]`
-/

namespace A152957.P2363924535705765225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152957.P2363924535705765225

/-! ## A152957.P10493569169233088567

`A278440(comp[A033879(2*(n+2))+5-n])`
-/

namespace A152957.P10493569169233088567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (2 * (n + 2)) + 5 - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278440 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A152957.P10493569169233088567

/-! ## A152957.P750023606340290512

`A278440(comp[A220533(2*n+3)-(6*n+2)])`
-/

namespace A152957.P750023606340290512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220533 (2 * n + 3) - (6 * n + 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278440 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A152957.P750023606340290512

/-!
# A152958: Alladi's third-order function phi_3(n).

The programs for A152958, the canonical program `A152958.P16411636956705150641` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152958 has offset 1).

The definition of A152958 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152958.P16411636956705150641

`A069290(n+1)*A390752(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A152958

/-- `A069290(n+1)*A390752(n+1)` -/
def P16411636956705150641.Spec : Prop :=
  ∀ n, P16411636956705150641.a n = A152958 (n + 1)

theorem P16411636956705150641.correct : P16411636956705150641.Spec := by
  intro n
  simp only [A152958, Nat.add_sub_cancel]

end A152958

/-! ## A152958.P2663510282737537499

`∑{d}[A000188(n+1), A000010(n+1)/#]`
-/

namespace A152958.P2663510282737537499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A000010 (n + 1) : ℚ) / (d : ℚ)

end

end A152958.P2663510282737537499

namespace A152958

/-- `∑{d}[A000188(n+1), A000010(n+1)/#]` -/
def P2663510282737537499.Spec : Prop :=
  ∀ n, P2663510282737537499.a n = (A152958 (n + 1) : ℚ)

end A152958

/-! ## A152958.P18053621256713349361

`A000010(n+1)/(n+1)*A340774(n+1)`
-/

namespace A152958.P18053621256713349361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (n + 1 : ℚ) * (A340774 (n + 1) : ℚ)

end

end A152958.P18053621256713349361

namespace A152958

/-- `A000010(n+1)/(n+1)*A340774(n+1)` -/
def P18053621256713349361.Spec : Prop :=
  ∀ n, P18053621256713349361.a n = (A152958 (n + 1) : ℚ)

end A152958

/-! ## A152958.P3999109203882182041

`A000010(A019554(n+1))*A069290(n+1)`
-/

namespace A152958.P3999109203882182041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A019554 (n + 1)).toNat * A069290 (n + 1)

end

end A152958.P3999109203882182041

namespace A152958

/-- `A000010(A019554(n+1))*A069290(n+1)` -/
def P3999109203882182041.Spec : Prop :=
  ∀ n, P3999109203882182041.a n = A152958 (n + 1)

end A152958

/-! ## A152958.P7056867141847871764

`A000010(n+1)/A000188(n+1)*A069290(n+1)`
-/

namespace A152958.P7056867141847871764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A000188 (n + 1) : ℚ) * (A069290 (n + 1) : ℚ)

end

end A152958.P7056867141847871764

namespace A152958

/-- `A000010(n+1)/A000188(n+1)*A069290(n+1)` -/
def P7056867141847871764.Spec : Prop :=
  ∀ n, P7056867141847871764.a n = (A152958 (n + 1) : ℚ)

end A152958

/-! ## A152958.P11440293757966812742

`A000203(A000188(n+1))*A000010(A019554(n+1))`
-/

namespace A152958.P11440293757966812742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000188 (n + 1)).toNat * A000010 (A019554 (n + 1)).toNat

end

end A152958.P11440293757966812742

namespace A152958

/-- `A000203(A000188(n+1))*A000010(A019554(n+1))` -/
def P11440293757966812742.Spec : Prop :=
  ∀ n, P11440293757966812742.a n = A152958 (n + 1)

end A152958

/-!
# A152959: Number of correlation classes for pairs of different words in an alphabet of size 4.

The programs for A152959, there is no canonical definition to state claims against.
-/

/-! ## A152959.P4110985365060728902

`A152139(2*(∑[char[1]+n]+1))`
-/

namespace A152959.P4110985365060728902
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152139 (2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A152959.P4110985365060728902

/-! ## A152959.P14872713913638079367

`record[A152139(A230606(2*n+1))]`
-/

namespace A152959.P14872713913638079367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152139 (A230606 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152959.P14872713913638079367

/-!
# A152961: Base-2 logarithm of A136007(n)+1.

The programs for A152961, there is no canonical definition to state claims against.
-/

/-! ## A152961.P18005903396865601574

`∩[A048737(n+1), A136003(n+1)]`
-/

namespace A152961.P18005903396865601574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152961.P18005903396865601574

/-! ## A152961.P2306565787545249754

`filter[A136003(n+1), A332219(#)]`
-/

namespace A152961.P2306565787545249754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A332219 (f1 j).toNat = 1) n)

end

end A152961.P2306565787545249754

/-! ## A152961.P5841268397704295541

`∩[A072226(n+1), A136003(n+1)]`
-/

namespace A152961.P5841268397704295541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152961.P5841268397704295541

/-! ## A152961.P12518929180914087792

`A000043(lt[A347899(n), 3^n])`
-/

namespace A152961.P12518929180914087792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347899 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A152961.P12518929180914087792

/-! ## A152961.P16695288412632231990

`∩[A136003(n+1), A161508(n+1)]`
-/

namespace A152961.P16695288412632231990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152961.P16695288412632231990

/-!
# A152965: Twice 12-gonal numbers: a(n) = 2*n*(5*n-4).

The programs for A152965, the canonical program `A152965.P17568340421541271962` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152965 has offset 0).

The definition of A152965 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(5*n-4)` (program `A152965.P17568340421541271962`, by `A152965.P17568340421541271962.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152965.P5511840856125374420

`10*n²-8*n`
-/

namespace A152965.P5511840856125374420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n ^ 2 : ℤ) - (8 * n : ℤ)

end

end A152965.P5511840856125374420

namespace A152965

/-- `10*n²-8*n` -/
def P5511840856125374420.Spec : Prop :=
  ∀ n, P5511840856125374420.a n = A152965 n

theorem P5511840856125374420.correct : P5511840856125374420.Spec := by
  intro n
  simp only [A152965, Nat.add_sub_cancel, A152965.P5511840856125374420.a, A152965.P17568340421541271962.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A152965

/-! ## A152965.P17568340421541271962

`2*n*(5*n-4)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A152965

/-- `2*n*(5*n-4)` -/
def P17568340421541271962.Spec : Prop :=
  ∀ n, P17568340421541271962.a n = A152965 n

theorem P17568340421541271962.correct : P17568340421541271962.Spec := by
  intro n
  simp only [A152965]

end A152965

/-! ## A152965.P10316960170707660910

`∑[a(n-1)+20]` with `a(0)=0, a(1)=2`
-/

namespace A152965.P10316960170707660910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152965.P10316960170707660910

namespace A152965

/-- `∑[a(n-1)+20]` -/
def P10316960170707660910.Spec : Prop :=
  ∀ n, (P10316960170707660910.a n : ℤ) = A152965 n

end A152965

/-! ## A152965.P573411822442514936

`A010023(n)%A082041(n)`
-/

namespace A152965.P573411822442514936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010023 n) (A082041 n)

end

end A152965.P573411822442514936

namespace A152965

/-- `A010023(n)%A082041(n)` -/
def P573411822442514936.Spec : Prop :=
  ∀ n, P573411822442514936.a n = A152965 n

end A152965

/-! ## A152965.P7292421889547681694

`A158537(n)%A014641(n)`
-/

namespace A152965.P7292421889547681694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158537 n) (A014641 n)

end

end A152965.P7292421889547681694

namespace A152965

/-- `A158537(n)%A014641(n)` -/
def P7292421889547681694.Spec : Prop :=
  ∀ n, P7292421889547681694.a n = A152965 n

end A152965

/-! ## A152965.P12707969584862679505

`A158549(n)%A016814(n)`
-/

namespace A152965.P12707969584862679505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158549 n) (A016814 n)

end

end A152965.P12707969584862679505

namespace A152965

/-- `A158549(n)%A016814(n)` -/
def P12707969584862679505.Spec : Prop :=
  ∀ n, P12707969584862679505.a n = A152965 n

end A152965

/-! ## A152965.P10303692019351533238

`A005903(n)%A272039(n)`
-/

namespace A152965.P10303692019351533238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005903 n) (A272039 n)

end

end A152965.P10303692019351533238

namespace A152965

/-- `A005903(n)%A272039(n)` -/
def P10303692019351533238.Spec : Prop :=
  ∀ n, P10303692019351533238.a n = A152965 n

end A152965

/-! ## A152965.P7996300802555917766

`A158558(n)%A381196(n)`
-/

namespace A152965.P7996300802555917766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158558 n) (A381196 n)

end

end A152965.P7996300802555917766

namespace A152965

/-- `A158558(n)%A381196(n)` -/
def P7996300802555917766.Spec : Prop :=
  ∀ n, P7996300802555917766.a n = A152965 n

end A152965

/-! ## A152965.P9549896714482022073

`A244633(n)%A068379(n+1)`
-/

namespace A152965.P9549896714482022073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244633 n) (A068379 (n + 1))

end

end A152965.P9549896714482022073

namespace A152965

/-- `A244633(n)%A068379(n+1)` -/
def P9549896714482022073.Spec : Prop :=
  ∀ n, P9549896714482022073.a n = A152965 n

end A152965

/-! ## A152965.P14807226425764066318

`A381424(n)%A195314(n+1)`
-/

namespace A152965.P14807226425764066318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381424 n) (A195314 (n + 1))

end

end A152965.P14807226425764066318

namespace A152965

/-- `A381424(n)%A195314(n+1)` -/
def P14807226425764066318.Spec : Prop :=
  ∀ n, P14807226425764066318.a n = A152965 n

end A152965

/-! ## A152965.P1679935475289018398

`A195015(A004273(n))`
-/

namespace A152965.P1679935475289018398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195015 (A004273 n).toNat

end

end A152965.P1679935475289018398

namespace A152965

/-- `A195015(A004273(n))` -/
def P1679935475289018398.Spec : Prop :=
  ∀ n, P1679935475289018398.a n = A152965 n

end A152965

/-! ## A152965.P5803305425374473745

`record[A195015(n)/A019427(n+3)]`
-/

namespace A152965.P5803305425374473745
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195015 n : ℚ) / (A019427 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152965.P5803305425374473745

namespace A152965

/-- `record[A195015(n)/A019427(n+3)]` -/
def P5803305425374473745.Spec : Prop :=
  ∀ n, P5803305425374473745.a n = (A152965 n : ℚ)

end A152965

/-! ## A152965.P9782897680262783028

`abs(A067998(3*n)+A067998(n))`
-/

namespace A152965.P9782897680262783028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A067998 (3 * n) + A067998 n|

end

end A152965.P9782897680262783028

namespace A152965

/-- `abs(A067998(3*n)+A067998(n))` -/
def P9782897680262783028.Spec : Prop :=
  ∀ n, P9782897680262783028.a n = A152965 n

end A152965

/-!
# A152966: Twice repdigit numbers.

The programs for A152966, the canonical program `A152966.P10266938102124728314` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152966 has offset 0).

The definition of A152966 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152966.P10266938102124728314

`2*A010785(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A152966

/-- `2*A010785(n)` -/
def P10266938102124728314.Spec : Prop :=
  ∀ n, P10266938102124728314.a n = A152966 n

theorem P10266938102124728314.correct : P10266938102124728314.Spec := by
  intro n
  simp only [A152966]

end A152966

/-! ## A152966.P10624240421926932989

`2*(∑[A027828(n)]-A027828(n))`
-/

namespace A152966.P10624240421926932989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A027828 n)

end

end A152966.P10624240421926932989

namespace A152966

/-- `2*(∑[A027828(n)]-A027828(n))` -/
def P10624240421926932989.Spec : Prop :=
  ∀ n, P10624240421926932989.a n = A152966 n

end A152966

/-! ## A152966.P15478714198941415678

`A010785(A005843(n)/2)+A010785(n)`
-/

namespace A152966.P15478714198941415678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A010785 n

end

end A152966.P15478714198941415678

namespace A152966

/-- `A010785(A005843(n)/2)+A010785(n)` -/
def P15478714198941415678.Spec : Prop :=
  ∀ n, P15478714198941415678.a n = A152966 n

end A152966

/-! ## A152966.P4862325990504053174

`A010785(A005843(n)-n)+A010785(n)`
-/

namespace A152966.P4862325990504053174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (A005843 n - (n : ℤ)).toNat + A010785 n

end

end A152966.P4862325990504053174

namespace A152966

/-- `A010785(A005843(n)-n)+A010785(n)` -/
def P4862325990504053174.Spec : Prop :=
  ∀ n, P4862325990504053174.a n = A152966 n

end A152966

/-! ## A152966.P3471509350387960674

`A010785(gcd(n, A001105(n)))+A010785(n)`
-/

namespace A152966.P3471509350387960674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (Int.gcd (n : ℤ) (A001105 n)) + A010785 n

end

end A152966.P3471509350387960674

namespace A152966

/-- `A010785(gcd(n, A001105(n)))+A010785(n)` -/
def P3471509350387960674.Spec : Prop :=
  ∀ n, P3471509350387960674.a n = A152966 n

end A152966

/-! ## A152966.P4001538966645872925

`A010785(A000027(n+1)-1)+A010785(n)`
-/

namespace A152966.P4001538966645872925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (A000027 (n + 1) - 1).toNat + A010785 n

end

end A152966.P4001538966645872925

namespace A152966

/-- `A010785(A000027(n+1)-1)+A010785(n)` -/
def P4001538966645872925.Spec : Prop :=
  ∀ n, P4001538966645872925.a n = A152966 n

end A152966

/-! ## A152966.P6725610188759331510

`A010785(n+1)+A010785(n)-A027828(n)`
-/

namespace A152966.P6725610188759331510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (n + 1) + (A010785 n - A027828 n)

end

end A152966.P6725610188759331510

namespace A152966

/-- `A010785(n+1)+A010785(n)-A027828(n)` -/
def P6725610188759331510.Spec : Prop :=
  ∀ n, P6725610188759331510.a n = A152966 n

end A152966

/-! ## A152966.P16092420969446717041

`A010785(n)+A010785(n%A180157(n+1))`
-/

namespace A152966.P16092420969446717041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n + A010785 (Int.tmod (n : ℤ) (A180157 (n + 1))).toNat

end

end A152966.P16092420969446717041

namespace A152966

/-- `A010785(n)+A010785(n%A180157(n+1))` -/
def P16092420969446717041.Spec : Prop :=
  ∀ n, P16092420969446717041.a n = A152966 n

end A152966

/-! ## A152966.P16902046117220006875

`A010785(n)+A010785(n)+char[A050278(n+1)]`
-/

namespace A152966.P16902046117220006875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050278 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n + (A010785 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A152966.P16902046117220006875

namespace A152966

/-- `A010785(n)+A010785(n)+char[A050278(n+1)]` -/
def P16902046117220006875.Spec : Prop :=
  ∀ n, P16902046117220006875.a n = A152966 n

end A152966

/-! ## A152966.P14933132677205215064

`A010785(n)+A064834(A064834(n))+A010785(n)`
-/

namespace A152966.P14933132677205215064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n + (A064834 (A064834 n).toNat + A010785 n)

end

end A152966.P14933132677205215064

namespace A152966

/-- `A010785(n)+A064834(A064834(n))+A010785(n)` -/
def P14933132677205215064.Spec : Prop :=
  ∀ n, P14933132677205215064.a n = A152966 n

end A152966

/-! ## A152966.P10286141335214458288

`A010785(n)+A010785(n)/A000009(A131364(n))`
-/

namespace A152966.P10286141335214458288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010785 n : ℚ) + (A010785 n : ℚ) / (A000009 (A131364 n).toNat : ℚ)

end

end A152966.P10286141335214458288

namespace A152966

/-- `A010785(n)+A010785(n)/A000009(A131364(n))` -/
def P10286141335214458288.Spec : Prop :=
  ∀ n, P10286141335214458288.a n = (A152966 n : ℚ)

end A152966

/-! ## A152966.P5243979628050103959

`A010785(n)+A010785(n)/A245195(A245195(n))`
-/

namespace A152966.P5243979628050103959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010785 n : ℚ) + (A010785 n : ℚ) / (A245195 (A245195 n).toNat : ℚ)

end

end A152966.P5243979628050103959

namespace A152966

/-- `A010785(n)+A010785(n)/A245195(A245195(n))` -/
def P5243979628050103959.Spec : Prop :=
  ∀ n, P5243979628050103959.a n = (A152966 n : ℚ)

end A152966

/-! ## A152966.P6622025617508181259

`A010785(n)+A178401(A178402(n+1))+A010785(n)`
-/

namespace A152966.P6622025617508181259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n + (A178401 (A178402 (n + 1)).toNat + A010785 n)

end

end A152966.P6622025617508181259

namespace A152966

/-- `A010785(n)+A178401(A178402(n+1))+A010785(n)` -/
def P6622025617508181259.Spec : Prop :=
  ∀ n, P6622025617508181259.a n = A152966 n

end A152966

/-! ## A152966.P4050192477819966886

`A010785(n)+A010785(n)/A046951(A000040(n+1))`
-/

namespace A152966.P4050192477819966886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010785 n : ℚ) + (A010785 n : ℚ) / (A046951 (A000040 (n + 1)).toNat : ℚ)

end

end A152966.P4050192477819966886

namespace A152966

/-- `A010785(n)+A010785(n)/A046951(A000040(n+1))` -/
def P4050192477819966886.Spec : Prop :=
  ∀ n, P4050192477819966886.a n = (A152966 n : ℚ)

end A152966

/-! ## A152966.P1365101732106227738

`2*∩[A336668(n+1), A064222(n)]`
-/

namespace A152966.P1365101732106227738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152966.P1365101732106227738

namespace A152966

/-- `2*∩[A336668(n+1), A064222(n)]` -/
def P1365101732106227738.Spec : Prop :=
  ∀ n, (P1365101732106227738.a n : ℤ) = A152966 n

end A152966

/-! ## A152966.P13905542842041269933

`Δ[2*A277209(log2(A011782(n)))]`
-/

namespace A152966.P13905542842041269933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277209 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152966.P13905542842041269933

namespace A152966

/-- `Δ[2*A277209(log2(A011782(n)))]` -/
def P13905542842041269933.Spec : Prop :=
  ∀ n, P13905542842041269933.a n = A152966 n

end A152966

/-!
# A152967: Partial sums of A152770.

The programs for A152967, the canonical program `A152967.P936738839759497687` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152967 has offset 1).

The definition of A152967 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152967.P936738839759497687

`∑[∑{d}[n+1, #-1]-n]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A152967

/-- `∑[∑{d}[n+1, #-1]-n]` -/
def P936738839759497687.Spec : Prop :=
  ∀ n, P936738839759497687.a n = A152967 (n + 1)

theorem P936738839759497687.correct : P936738839759497687.Spec := by
  intro n
  simp only [A152967, Nat.add_sub_cancel]

end A152967

/-! ## A152967.P9596502876956330332

`a(n-1)+∑{d}[n+1, #-1]-n` with `a(0)=0`
-/

namespace A152967.P9596502876956330332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - 1) - (n : ℤ))

end

end A152967.P9596502876956330332

namespace A152967

/-- `a(n-1)+∑{d}[n+1, #-1]-n` -/
def P9596502876956330332.Spec : Prop :=
  ∀ n, P9596502876956330332.a n = A152967 (n + 1)

end A152967

/-! ## A152967.P17430449220017010310

`∑[A152770(n+1)]`
-/

namespace A152967.P17430449220017010310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152967.P17430449220017010310

namespace A152967

/-- `∑[A152770(n+1)]` -/
def P17430449220017010310.Spec : Prop :=
  ∀ n, P17430449220017010310.a n = A152967 (n + 1)

end A152967

/-! ## A152967.P15584392357298637886

`∑[A065608(n+1)-n]`
-/

namespace A152967.P15584392357298637886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152967.P15584392357298637886

namespace A152967

/-- `∑[A065608(n+1)-n]` -/
def P15584392357298637886.Spec : Prop :=
  ∀ n, P15584392357298637886.a n = A152967 (n + 1)

end A152967

/-! ## A152967.P16290049015237925748

`A236632(n+1)-∑[n]`
-/

namespace A152967.P16290049015237925748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236632 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A152967.P16290049015237925748

namespace A152967

/-- `A236632(n+1)-∑[n]` -/
def P16290049015237925748.Spec : Prop :=
  ∀ n, P16290049015237925748.a n = A152967 (n + 1)

end A152967

/-! ## A152967.P1295135851365113611

`∑[n+1-A152864(n+1)]`
-/

namespace A152967.P1295135851365113611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A152864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152967.P1295135851365113611

namespace A152967

/-- `∑[n+1-A152864(n+1)]` -/
def P1295135851365113611.Spec : Prop :=
  ∀ n, P1295135851365113611.a n = A152967 (n + 1)

end A152967

/-! ## A152967.P2071887451513008584

`∑[A158901(n+1)-(n+1)]`
-/

namespace A152967.P2071887451513008584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158901 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152967.P2071887451513008584

namespace A152967

/-- `∑[A158901(n+1)-(n+1)]` -/
def P2071887451513008584.Spec : Prop :=
  ∀ n, P2071887451513008584.a n = A152967 (n + 1)

end A152967

/-! ## A152967.P1241838038300198037

`∑[A137319(n+1)]-(n+1)²`
-/

namespace A152967.P1241838038300198037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A152967.P1241838038300198037

namespace A152967

/-- `∑[A137319(n+1)]-(n+1)²` -/
def P1241838038300198037.Spec : Prop :=
  ∀ n, P1241838038300198037.a n = A152967 (n + 1)

end A152967

/-! ## A152967.P127379549117818342

`∑[A088580(n+1)-(∏{e}[n+1, #+1]+1+n)]`
-/

namespace A152967.P127379549117818342
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) + 1 + n : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152967.P127379549117818342

namespace A152967

/-- `∑[A088580(n+1)-(∏{e}[n+1, #+1]+1+n)]` -/
def P127379549117818342.Spec : Prop :=
  ∀ n, P127379549117818342.a n = A152967 (n + 1)

end A152967

/-! ## A152967.P17169053988602970987

`A024916(n+1)-A397992(n)`
-/

namespace A152967.P17169053988602970987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) - A397992 n

end

end A152967.P17169053988602970987

namespace A152967

/-- `A024916(n+1)-A397992(n)` -/
def P17169053988602970987.Spec : Prop :=
  ∀ n, P17169053988602970987.a n = A152967 (n + 1)

end A152967

/-! ## A152967.P10300074759390790201

`A153485(n+1)-A002541(n+1)`
-/

namespace A152967.P10300074759390790201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153485 (n + 1) - A002541 (n + 1)

end

end A152967.P10300074759390790201

namespace A152967

/-- `A153485(n+1)-A002541(n+1)` -/
def P10300074759390790201.Spec : Prop :=
  ∀ n, P10300074759390790201.a n = A152967 (n + 1)

end A152967

/-! ## A152967.P12530222640501410744

`A161664(n+1)-A004125(n+1)`
-/

namespace A152967.P12530222640501410744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161664 (n + 1) - A004125 (n + 1)

end

end A152967.P12530222640501410744

namespace A152967

/-- `A161664(n+1)-A004125(n+1)` -/
def P12530222640501410744.Spec : Prop :=
  ∀ n, P12530222640501410744.a n = A152967 (n + 1)

end A152967

/-! ## A152967.P4368062029188714044

`A140652(n+1)-A111490(n+1)`
-/

namespace A152967.P4368062029188714044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140652 (n + 1) - A111490 (n + 1)

end

end A152967.P4368062029188714044

namespace A152967

/-- `A140652(n+1)-A111490(n+1)` -/
def P4368062029188714044.Spec : Prop :=
  ∀ n, P4368062029188714044.a n = A152967 (n + 1)

end A152967

/-! ## A152967.P6851607144132424640

`A244048(n+1)-A098798(n+1)`
-/

namespace A152967.P6851607144132424640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244048 (n + 1) - A098798 (n + 1)

end

end A152967.P6851607144132424640

namespace A152967

/-- `A244048(n+1)-A098798(n+1)` -/
def P6851607144132424640.Spec : Prop :=
  ∀ n, P6851607144132424640.a n = A152967 (n + 1)

end A152967

/-! ## A152967.P5437022541923116456

`A330476(n+1)-A153485(n+1)`
-/

namespace A152967.P5437022541923116456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330476 (n + 1) - A153485 (n + 1)

end

end A152967.P5437022541923116456

namespace A152967

/-- `A330476(n+1)-A153485(n+1)` -/
def P5437022541923116456.Spec : Prop :=
  ∀ n, P5437022541923116456.a n = A152967 (n + 1)

end A152967

/-! ## A152967.P1889640244089536827

`A366969(n+1)-A161664(n+1)`
-/

namespace A152967.P1889640244089536827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366969 (n + 1) - A161664 (n + 1)

end

end A152967.P1889640244089536827

namespace A152967

/-- `A366969(n+1)-A161664(n+1)` -/
def P1889640244089536827.Spec : Prop :=
  ∀ n, P1889640244089536827.a n = A152967 (n + 1)

end A152967

/-! ## A152967.P6760327538785720467

`A236632(n+1)%A179865(n+1)`
-/

namespace A152967.P6760327538785720467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236632 (n + 1)) (A179865 (n + 1))

end

end A152967.P6760327538785720467

namespace A152967

/-- `A236632(n+1)%A179865(n+1)` -/
def P6760327538785720467.Spec : Prop :=
  ∀ n, P6760327538785720467.a n = A152967 (n + 1)

end A152967

/-! ## A152967.P13221008980211364867

`∑[A001065(n+1)-A032741(n+1)]`
-/

namespace A152967.P13221008980211364867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A032741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152967.P13221008980211364867

namespace A152967

/-- `∑[A001065(n+1)-A032741(n+1)]` -/
def P13221008980211364867.Spec : Prop :=
  ∀ n, P13221008980211364867.a n = A152967 (n + 1)

end A152967

/-! ## A152967.P12916709520810710408

`(A330476(n+1)-A002541(n+1))/2`
-/

namespace A152967.P12916709520810710408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330476 (n + 1) - A002541 (n + 1) : ℚ) / 2

end

end A152967.P12916709520810710408

namespace A152967

/-- `(A330476(n+1)-A002541(n+1))/2` -/
def P12916709520810710408.Spec : Prop :=
  ∀ n, P12916709520810710408.a n = (A152967 (n + 1) : ℚ)

end A152967

/-! ## A152967.P10998504921990460487

`∑[A001065(n+1)+1-A000005(n+1)]`
-/

namespace A152967.P10998504921990460487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (1 - A000005 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152967.P10998504921990460487

namespace A152967

/-- `∑[A001065(n+1)+1-A000005(n+1)]` -/
def P10998504921990460487.Spec : Prop :=
  ∀ n, P10998504921990460487.a n = A152967 (n + 1)

end A152967

/-!
# A152968: a(n) = A139251(n+1)/2.

The programs for A152968, there is no canonical definition to state claims against.
-/

/-! ## A152968.P16611949060708033674

`A139251(n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152968.P16611949060708033674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139251 (n + 2) : ℚ) / 2

end

end A152968.P16611949060708033674

/-! ## A152968.P12768521401614014070

`Δ[A152998(n)]`
-/

namespace A152968.P12768521401614014070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152968.P12768521401614014070

/-! ## A152968.P17113212926415299147

`A162777(n+1)+1`
-/

namespace A152968.P17113212926415299147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162777 (n + 1) + 1

end

end A152968.P17113212926415299147

/-! ## A152968.P8158872649583819457

`A187221(n+3)/4`
-/

namespace A152968.P8158872649583819457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187221 (n + 3) : ℚ) / 4

end

end A152968.P8158872649583819457

/-! ## A152968.P11410542946224923196

`Δ[Δ[A160424(n)/2]]`
-/

namespace A152968.P11410542946224923196
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160424 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152968.P11410542946224923196

/-! ## A152968.P16202729180472732725

`Δ[A139250(n+1)/2]`
-/

namespace A152968.P16202729180472732725
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139250 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152968.P16202729180472732725

/-! ## A152968.P13803135310911265485

`Δ[A160164(n+1)/4]`
-/

namespace A152968.P13803135310911265485
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160164 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152968.P13803135310911265485

/-! ## A152968.P3332991353990201768

`Δ[A187220(n+2)/4]`
-/

namespace A152968.P3332991353990201768
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187220 (n + 2) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152968.P3332991353990201768

/-! ## A152968.P2170627775541636056

`A151688(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A152968.P2170627775541636056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151688 n - 2 * a (n - 1)

end

end A152968.P2170627775541636056

/-! ## A152968.P16659011096788102008

`A151688(n)-A139251(n+1)`
-/

namespace A152968.P16659011096788102008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151688 n - A139251 (n + 1)

end

end A152968.P16659011096788102008

/-! ## A152968.P15762313681199408332

`A152998(n+1)-A152998(n)`
-/

namespace A152968.P15762313681199408332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152998 (n + 1) - A152998 n

end

end A152968.P15762313681199408332

/-! ## A152968.P7982179320255396422

`A152980(n+1)-A152978(n+1)`
-/

namespace A152968.P7982179320255396422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152980 (n + 1) - A152978 (n + 1)

end

end A152968.P7982179320255396422

/-! ## A152968.P6123074816714888423

`A139250(n)+A151688(n)-A139250(n+1)`
-/

namespace A152968.P6123074816714888423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n + (A151688 n - A139250 (n + 1))

end

end A152968.P6123074816714888423

/-! ## A152968.P13410462307678270728

`A152980(n)+A152980(n)-A139251(n+1)`
-/

namespace A152968.P13410462307678270728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152980 n + (A152980 n - A139251 (n + 1))

end

end A152968.P13410462307678270728

/-! ## A152968.P15071291999937323159

`A159793(n+1)-(A159793(n)+A139251(n+1))`
-/

namespace A152968.P15071291999937323159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159793 (n + 1) - (A159793 n + A139251 (n + 1))

end

end A152968.P15071291999937323159

/-! ## A152968.P5299779138156652561

`A152980(n+1)+A153000(n)-A153000(n+1)`
-/

namespace A152968.P5299779138156652561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152980 (n + 1) + (A153000 n - A153000 (n + 1))

end

end A152968.P5299779138156652561

/-! ## A152968.P1447422358138260446

`A160552(n+1)+A255045(n+2)-A255045(n+1)`
-/

namespace A152968.P1447422358138260446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (n + 1) + (A255045 (n + 2) - A255045 (n + 1))

end

end A152968.P1447422358138260446

/-! ## A152968.P6834254907992306167

`A147646(n+2)-(A159785(n+2)+A152978(n+1))`
-/

namespace A152968.P6834254907992306167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147646 (n + 2) - (A159785 (n + 2) + A152978 (n + 1))

end

end A152968.P6834254907992306167

/-! ## A152968.P71561815819720174

`A015906(A162777(n+1))`
-/

namespace A152968.P71561815819720174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (A162777 (n + 1)).toNat

end

end A152968.P71561815819720174

/-! ## A152968.P15375355110542655160

`A151549(n+1)+A160552(n)-A151549(n)`
-/

namespace A152968.P15375355110542655160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151549 (n + 1) + (A160552 n - A151549 n)

end

end A152968.P15375355110542655160

/-!
# A152969: Triangle read by rows: T(n,m)=floor[(m/n)*row(n)].

The programs for A152969, there is no canonical definition to state claims against.
-/

/-! ## A152969.P16572292024116949893

`A118523(A034801(n))`
-/

namespace A152969.P16572292024116949893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118523 (A034801 n).toNat

end

end A152969.P16572292024116949893

/-! ## A152969.P15910246989113472759

`A130399(A056940(n))`
-/

namespace A152969.P15910246989113472759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130399 (A056940 n).toNat

end

end A152969.P15910246989113472759

/-! ## A152969.P14217160288138560765

`A132075(A056941(n))`
-/

namespace A152969.P14217160288138560765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132075 (A056941 n).toNat

end

end A152969.P14217160288138560765

/-! ## A152969.P3560674081923348691

`A090915(A157221(n))`
-/

namespace A152969.P3560674081923348691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090915 (A157221 n).toNat

end

end A152969.P3560674081923348691

/-! ## A152969.P9967802620746239589

`A113221(A141690(n))`
-/

namespace A152969.P9967802620746239589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113221 (A141690 n).toNat

end

end A152969.P9967802620746239589

/-!
# A152971: A vector sequence with set row sum function: row(n)=(2*n)!/n! and linear build up and decline function: f(n,m)=Floor[(m/n)*row(n)].

The programs for A152971, there is no canonical definition to state claims against.
-/

/-! ## A152971.P7001427610835913841

`A053145(A157221(n))-1`
-/

namespace A152971.P7001427610835913841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053145 (A157221 n).toNat - 1

end

end A152971.P7001427610835913841

/-! ## A152971.P3184999638866138811

`A053145(A168287(n))-1`
-/

namespace A152971.P3184999638866138811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053145 (A168287 n).toNat - 1

end

end A152971.P3184999638866138811

/-! ## A152971.P12065758594470146025

`A053145(A174036(n))-1`
-/

namespace A152971.P12065758594470146025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053145 (A174036 n).toNat - 1

end

end A152971.P12065758594470146025

/-! ## A152971.P16733588423648326500

`A053145(A008292(n+1))-1`
-/

namespace A152971.P16733588423648326500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053145 (A008292 (n + 1)).toNat - 1

end

end A152971.P16733588423648326500

/-! ## A152971.P222295660469962960

`A057944(A022177(n))%A184137(n+1)`
-/

namespace A152971.P222295660469962960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057944 (A022177 n).toNat) (A184137 (n + 1))

end

end A152971.P222295660469962960

/-!
# A152972: A vector sequence with set row sum function: row(n)=-Product[3*k - 1, {k, 0, n}] and linear build up and decline function: f(n,m)=Floor[(m/n)*row(n)].

The programs for A152972, there is no canonical definition to state claims against.
-/

/-! ## A152972.P12342061001134490369

`A121466(A056940(n))`
-/

namespace A152972.P12342061001134490369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121466 (A056940 n).toNat

end

end A152972.P12342061001134490369

/-! ## A152972.P4659592819471879786

`A054428(A176200(n))`
-/

namespace A152972.P4659592819471879786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054428 (A176200 n).toNat

end

end A152972.P4659592819471879786

/-! ## A152972.P7296131083340648279

`A122138(A157638(n))`
-/

namespace A152972.P7296131083340648279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122138 (A157638 n).toNat

end

end A152972.P7296131083340648279

/-! ## A152972.P15850530866129512536

`A375497(A347975(n))`
-/

namespace A152972.P15850530866129512536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375497 (A347975 n).toNat

end

end A152972.P15850530866129512536

/-! ## A152972.P8225670878209882229

`A330754(A222281(n+1))`
-/

namespace A152972.P8225670878209882229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330754 (A222281 (n + 1)).toNat

end

end A152972.P8225670878209882229

/-!
# A152973: Records in A152968.

The programs for A152973, there is no canonical definition to state claims against.
-/

/-! ## A152973.P5815132222552339952

`record[Δ[A152998(n)]]`
-/

namespace A152973.P5815132222552339952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152998 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152973.P5815132222552339952

/-! ## A152973.P13379442709735599801

`record[A162777(n)+1]`
-/

namespace A152973.P13379442709735599801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162777 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152973.P13379442709735599801

/-! ## A152973.P9972373698689350838

`A152768(n+2)/2`
-/

namespace A152973.P9972373698689350838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152768 (n + 2) : ℚ) / 2

end

end A152973.P9972373698689350838

/-! ## A152973.P8527031584417676079

`A014682(A152768(n+2))`
-/

namespace A152973.P8527031584417676079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A152768 (n + 2)).toNat

end

end A152973.P8527031584417676079

/-! ## A152973.P1215389186679271200

`record[A152968(n+1)]`
-/

namespace A152973.P1215389186679271200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152973.P1215389186679271200

/-!
# A152975: Numerators of the redundant Stern-Brocot structure; denominators=A152976.

The programs for A152975, there is no canonical definition to state claims against.
-/

/-! ## A152975.P14553697613386247797

`or(A001222(A281678(n+1)), A281666(n+1))`
-/

namespace A152975.P14553697613386247797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A281678 (n + 1)).toNat) (A281666 (n + 1))

end

end A152975.P14553697613386247797

/-!
# A152976: Denominators of the redundant Stern-Brocot structure; numerators=A152975.

The programs for A152976, there is no canonical definition to state claims against.
-/

/-! ## A152976.P11072492209379690322

`A060117(n*A001597(3*(n+1)))`
-/

namespace A152976.P11072492209379690322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060117 ((n : ℤ) * A001597 (3 * (n + 1))).toNat

end

end A152976.P11072492209379690322

/-!
# A152977: Square array A(n,k), n>=0, k>=0, read by antidiagonals: A(n,k) is the number of partitions of 2^n into powers of 2 less than or equal to 2^k.

The programs for A152977, there is no canonical definition to state claims against.
-/

/-! ## A152977.P15990968581572221771

`A260999(2*A334548(n))`
-/

namespace A152977.P15990968581572221771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (2 * A334548 n).toNat

end

end A152977.P15990968581572221771

/-! ## A152977.P4205999250918247156

`A060021(2*A320750(n+1))`
-/

namespace A152977.P4205999250918247156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060021 (2 * A320750 (n + 1)).toNat

end

end A152977.P4205999250918247156

/-! ## A152977.P10136436376189813602

`A325678(A334548(n)+A276921(n))`
-/

namespace A152977.P10136436376189813602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A334548 n + A276921 n).toNat

end

end A152977.P10136436376189813602

/-! ## A152977.P14380179313030962523

`A008619(A103298(A320750(n+1)²))`
-/

namespace A152977.P14380179313030962523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A103298 (A320750 (n + 1) ^ 2).toNat).toNat

end

end A152977.P14380179313030962523

/-! ## A152977.P1694022988558691563

`A260999(A334548(n)+A334548(n)-1)`
-/

namespace A152977.P1694022988558691563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (A334548 n + (A334548 n - 1)).toNat

end

end A152977.P1694022988558691563

/-!
# A152978: a(n) = A139251(n+2)/4 = A152968(n+1)/2.

The programs for A152978, there is no canonical definition to state claims against.
-/

/-! ## A152978.P14658088258234149503

`A139251(n+3)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152978.P14658088258234149503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139251 (n + 3) : ℚ) / 4

end

end A152978.P14658088258234149503

/-! ## A152978.P11731552828730335751

`A152968(n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152978.P11731552828730335751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152968 (n + 2) : ℚ) / 2

end

end A152978.P11731552828730335751

/-! ## A152978.P2568743541219049692

`Δ[A153000(n)]`
-/

namespace A152978.P2568743541219049692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152978.P2568743541219049692

/-! ## A152978.P13373634574117234053

`Δ[A152998(n+1)/2]`
-/

namespace A152978.P13373634574117234053
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152998 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152978.P13373634574117234053

/-! ## A152978.P2662415986836530794

`Δ[A139250(n+2)/4]`
-/

namespace A152978.P2662415986836530794
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139250 (n + 2) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152978.P2662415986836530794

/-! ## A152978.P13088741892576647692

`(A162777(n+2)+1)/2`
-/

namespace A152978.P13088741892576647692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162777 (n + 2) + 1 : ℚ) / 2

end

end A152978.P13088741892576647692

/-! ## A152978.P9939277199164119848

`A153000(n+1)-A153000(n)`
-/

namespace A152978.P9939277199164119848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153000 (n + 1) - A153000 n

end

end A152978.P9939277199164119848

/-! ## A152978.P4608965285628496727

`Δ[A153006(n+1)-A152998(n)]`
-/

namespace A152978.P4608965285628496727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 (n + 1) - A152998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152978.P4608965285628496727

/-! ## A152978.P11021053707794625016

`A152980(n+1)-A152968(n+1)`
-/

namespace A152978.P11021053707794625016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152980 (n + 1) - A152968 (n + 1)

end

end A152978.P11021053707794625016

/-! ## A152978.P180867866809686114

`A152980(n+1)-(A162777(n+1)+1)`
-/

namespace A152978.P180867866809686114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152980 (n + 1) - (A162777 (n + 1) + 1)

end

end A152978.P180867866809686114

/-! ## A152978.P9265843755119842081

`A139251(n+1)+A151550(n+1)-A151555(n)`
-/

namespace A152978.P9265843755119842081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (n + 1) + (A151550 (n + 1) - A151555 n)

end

end A152978.P9265843755119842081

/-! ## A152978.P12322836577820668606

`A139251(n+1)+A152980(n+1)-A151688(n)`
-/

namespace A152978.P12322836577820668606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (n + 1) + (A152980 (n + 1) - A151688 n)

end

end A152978.P12322836577820668606

/-! ## A152978.P9312004044936546363

`A151550(n+1)+A151550(n)-A152968(n+1)`
-/

namespace A152978.P9312004044936546363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151550 (n + 1) + (A151550 n - A152968 (n + 1))

end

end A152978.P9312004044936546363

/-! ## A152978.P1461246704174063238

`A152980(n+1)+A152998(n)-A152998(n+1)`
-/

namespace A152978.P1461246704174063238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152980 (n + 1) + (A152998 n - A152998 (n + 1))

end

end A152978.P1461246704174063238

/-! ## A152978.P13144414972968679752

`A001281(A152968(n+2))`
-/

namespace A152978.P13144414972968679752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A152968 (n + 2)).toNat

end

end A152978.P13144414972968679752

/-! ## A152978.P11671208191709172747

`A000463(A162777(n+2))`
-/

namespace A152978.P11671208191709172747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A162777 (n + 2)).toNat

end

end A152978.P11671208191709172747

/-! ## A152978.P2797208442384828087

`A001281(Δ[A152998(n+1)])`
-/

namespace A152978.P2797208442384828087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (n + 1) - f1 n).toNat

end

end A152978.P2797208442384828087

/-! ## A152978.P3684355989590330488

`A004525(Δ[A152998(n+1)])`
-/

namespace A152978.P3684355989590330488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A152978.P3684355989590330488

/-! ## A152978.P17675975476654173653

`A004526(Δ[A152998(n+1)])`
-/

namespace A152978.P17675975476654173653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A152978.P17675975476654173653

/-! ## A152978.P1221387396154422645

`A025480(Δ[A152998(n+1)])`
-/

namespace A152978.P1221387396154422645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f1 (n + 1) - f1 n).toNat

end

end A152978.P1221387396154422645

/-!
# A152979: Records in A152978.

The programs for A152979, there is no canonical definition to state claims against.
-/

/-! ## A152979.P9455139609166933701

`record[A152980(n)]`
-/

namespace A152979.P9455139609166933701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152979.P9455139609166933701

/-! ## A152979.P8117992079744645375

`record[Δ[A153006(n)]]`
-/

namespace A152979.P8117992079744645375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152979.P8117992079744645375

/-! ## A152979.P7632394606809539793

`A152973(n+2)/2`
-/

namespace A152979.P7632394606809539793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152973 (n + 2) : ℚ) / 2

end

end A152979.P7632394606809539793

/-! ## A152979.P15533801087880555095

`A152768(n+3)/4`
-/

namespace A152979.P15533801087880555095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152768 (n + 3) : ℚ) / 4

end

end A152979.P15533801087880555095

/-! ## A152979.P17527941335563046496

`record[A159785(n+1)/3]`
-/

namespace A152979.P17527941335563046496
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159785 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152979.P17527941335563046496

/-! ## A152979.P15789093379171060029

`record[A147646(n+1)/4]`
-/

namespace A152979.P15789093379171060029
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147646 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152979.P15789093379171060029

/-! ## A152979.P3843743437201296152

`record[A139251(n+3)/4]`
-/

namespace A152979.P3843743437201296152
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139251 (n + 3) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152979.P3843743437201296152

/-! ## A152979.P2505248726650327181

`A014682(A152973(n+2))`
-/

namespace A152979.P2505248726650327181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A152973 (n + 2)).toNat

end

end A152979.P2505248726650327181

/-! ## A152979.P8837647725570166052

`record[A153006(n+1)-A153006(n)]`
-/

namespace A152979.P8837647725570166052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 (n + 1) - A153006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152979.P8837647725570166052

/-! ## A152979.P2507937088801286345

`record[A152978(n+1)]`
-/

namespace A152979.P2507937088801286345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152979.P2507937088801286345

/-!
# A152980: First differences of toothpick corner sequence A153006.

The programs for A152980, there is no canonical definition to state claims against.
-/

/-! ## A152980.P16893754136055531051

`Δ[A153006(n)]`
-/

namespace A152980.P16893754136055531051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152980.P16893754136055531051

/-! ## A152980.P4620552539385596032

`A153006(n+1)-A153006(n)`
-/

namespace A152980.P4620552539385596032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 (n + 1) - A153006 n

end

end A152980.P4620552539385596032

/-! ## A152980.P3303745988228684706

`(A151555(n)+A151550(n))/2`
-/

namespace A152980.P3303745988228684706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151555 n + A151550 n : ℚ) / 2

end

end A152980.P3303745988228684706

/-! ## A152980.P12013897606424778551

`(A151548(n+1)+A151548(n))/4`
-/

namespace A152980.P12013897606424778551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151548 (n + 1) + A151548 n : ℚ) / 4

end

end A152980.P12013897606424778551

/-! ## A152980.P523155097443767830

`Δ[A160164(n)+A139250(n+1)]/4`
-/

namespace A152980.P523155097443767830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160164 n + A139250 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 4

end

end A152980.P523155097443767830

/-! ## A152980.P18034618942853055073

`Δ[(A152998(n)+A139250(n))/2]`
-/

namespace A152980.P18034618942853055073
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152998 n + A139250 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152980.P18034618942853055073

/-! ## A152980.P7567861518397740030

`A151688(n)/2`
-/

namespace A152980.P7567861518397740030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151688 n : ℚ) / 2

end

end A152980.P7567861518397740030

/-! ## A152980.P13129805359780588179

`Δ[A159795(n)/4]`
-/

namespace A152980.P13129805359780588179
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159795 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152980.P13129805359780588179

/-! ## A152980.P6662744870122534990

`(A162777(A206332(n+1))+1)/2`
-/

namespace A152980.P6662744870122534990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162777 (A206332 (n + 1)).toNat + 1 : ℚ) / 2

end

end A152980.P6662744870122534990

/-! ## A152980.P10852114313365671100

`Δ[A159793(n)/2]`
-/

namespace A152980.P10852114313365671100
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159793 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152980.P10852114313365671100

/-! ## A152980.P11409761167815810138

`Δ[A159794(n)/3]`
-/

namespace A152980.P11409761167815810138
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159794 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152980.P11409761167815810138

/-! ## A152980.P9554357819261961631

`Δ[A194811(n)/4]`
-/

namespace A152980.P9554357819261961631
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194811 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152980.P9554357819261961631

/-! ## A152980.P15074041387962807608

`A159785(n+1)/3`
-/

namespace A152980.P15074041387962807608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159785 (n + 1) : ℚ) / 3

end

end A152980.P15074041387962807608

/-! ## A152980.P463950628661289142

`A147646(n+1)/4`
-/

namespace A152980.P463950628661289142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147646 (n + 1) : ℚ) / 4

end

end A152980.P463950628661289142

/-! ## A152980.P4937107255556966041

`Δ[∑[n]-A153007(n)]`
-/

namespace A152980.P4937107255556966041
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A153007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152980.P4937107255556966041

/-! ## A152980.P14401261079458460396

`Δ[A160166(n)+A001318(n)]`
-/

namespace A152980.P14401261079458460396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160166 n + A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152980.P14401261079458460396

/-! ## A152980.P16064852506151404899

`A159785(n+1)-A151688(n)`
-/

namespace A152980.P16064852506151404899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159785 (n + 1) - A151688 n

end

end A152980.P16064852506151404899

/-! ## A152980.P17220584718827995642

`A147646(n+1)-A159785(n+1)`
-/

namespace A152980.P17220584718827995642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147646 (n + 1) - A159785 (n + 1)

end

end A152980.P17220584718827995642

/-! ## A152980.P10148753273203017850

`A147646(n+1)+A159794(n)-A159794(n+1)`
-/

namespace A152980.P10148753273203017850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147646 (n + 1) + (A159794 n - A159794 (n + 1))

end

end A152980.P10148753273203017850

/-! ## A152980.P3032045067199760611

`A159785(n+1)-(A152968(n+1)+A139251(n+1))`
-/

namespace A152980.P3032045067199760611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159785 (n + 1) - (A152968 (n + 1) + A139251 (n + 1))

end

end A152980.P3032045067199760611

/-!
# A152981: Sum of divisors of Motzkin number A001006(n).

The programs for A152981, the canonical program `A152981.P15175618338517607582` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152981 has offset 0).

The definition of A152981 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152981.P15175618338517607582

`A000203(A001006(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A152981

/-- `A000203(A001006(n))` -/
def P15175618338517607582.Spec : Prop :=
  ∀ n, P15175618338517607582.a n = A152981 n

theorem P15175618338517607582.correct : P15175618338517607582.Spec := by
  intro n
  simp only [A152981]

end A152981

/-! ## A152981.P9257727023991190195

`A152982(n)+A001006(n)`
-/

namespace A152981.P9257727023991190195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152982 n + A001006 n

end

end A152981.P9257727023991190195

namespace A152981

/-- `A152982(n)+A001006(n)` -/
def P9257727023991190195.Spec : Prop :=
  ∀ n, P9257727023991190195.a n = A152981 n

end A152981

/-! ## A152981.P5864921581209340083

`A152982(n)+Δ[A097332(n)]`
-/

namespace A152981.P5864921581209340083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152982 n + (f1 (n + 1) - f1 n)

end

end A152981.P5864921581209340083

namespace A152981

/-- `A152982(n)+Δ[A097332(n)]` -/
def P5864921581209340083.Spec : Prop :=
  ∀ n, P5864921581209340083.a n = A152981 n

end A152981

/-! ## A152981.P16198693634927280961

`A152982(n)+∑[A002026(abs(1-n))]`
-/

namespace A152981.P16198693634927280961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152982 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152981.P16198693634927280961

namespace A152981

/-- `A152982(n)+∑[A002026(abs(1-n))]` -/
def P16198693634927280961.Spec : Prop :=
  ∀ n, P16198693634927280961.a n = A152981 n

end A152981

/-! ## A152981.P6691849212430336045

`A152982(n)+A005043(n+1)+A005043(n)`
-/

namespace A152981.P6691849212430336045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152982 n + (A005043 (n + 1) + A005043 n)

end

end A152981.P6691849212430336045

namespace A152981

/-- `A152982(n)+A005043(n+1)+A005043(n)` -/
def P6691849212430336045.Spec : Prop :=
  ∀ n, P6691849212430336045.a n = A152981 n

end A152981

/-! ## A152981.P17027002658732395468

`A152982(n)+A064645(A000217(n))`
-/

namespace A152981.P17027002658732395468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152982 n + A064645 (A000217 n).toNat

end

end A152981.P17027002658732395468

namespace A152981

/-- `A152982(n)+A064645(A000217(n))` -/
def P17027002658732395468.Spec : Prop :=
  ∀ n, P17027002658732395468.a n = A152981 n

end A152981

/-! ## A152981.P14628125068398229134

`A152982(n)+A026300(A000096(n))`
-/

namespace A152981.P14628125068398229134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152982 n + A026300 (A000096 n).toNat

end

end A152981.P14628125068398229134

namespace A152981

/-- `A152982(n)+A026300(A000096(n))` -/
def P14628125068398229134.Spec : Prop :=
  ∀ n, P14628125068398229134.a n = A152981 n

end A152981

/-! ## A152981.P2843079983669940683

`A247364(A253145(n))+A152982(n)`
-/

namespace A152981.P2843079983669940683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247364 (A253145 n).toNat + A152982 n

end

end A152981.P2843079983669940683

namespace A152981

/-- `A247364(A253145(n))+A152982(n)` -/
def P2843079983669940683.Spec : Prop :=
  ∀ n, P2843079983669940683.a n = A152981 n

end A152981

/-! ## A152981.P17275253658522692003

`A152982(n)+root(A133053(n), 2)`
-/

namespace A152981.P17275253658522692003
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A152982 n : ℝ) + (A133053 n : ℝ) ^ (1 / (2 : ℝ))

end

end A152981.P17275253658522692003

namespace A152981

/-- `A152982(n)+root(A133053(n), 2)` -/
def P17275253658522692003.Spec : Prop :=
  ∀ n, P17275253658522692003.a n = (A152981 n : ℝ)

end A152981

/-! ## A152981.P14816029820130412227

`A258709(A179865(n+1))+A152982(n)`
-/

namespace A152981.P14816029820130412227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 (A179865 (n + 1)).toNat + A152982 n

end

end A152981.P14816029820130412227

namespace A152981

/-- `A258709(A179865(n+1))+A152982(n)` -/
def P14816029820130412227.Spec : Prop :=
  ∀ n, P14816029820130412227.a n = A152981 n

end A152981

/-!
# A152982: Sum of proper divisors of Motzkin number A001006(n).

The programs for A152982, the canonical program `A152982.P6897704514964440160` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152982 has offset 0).

The definition of A152982 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152982.P6897704514964440160

`A001065(A001006(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A152982

/-- `A001065(A001006(n))` -/
def P6897704514964440160.Spec : Prop :=
  ∀ n, P6897704514964440160.a n = A152982 n

theorem P6897704514964440160.correct : P6897704514964440160.Spec := by
  intro n
  simp only [A152982]

end A152982

/-! ## A152982.P911406566418063957

`A152981(n)-A001006(n)`
-/

namespace A152982.P911406566418063957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152981 n - A001006 n

end

end A152982.P911406566418063957

namespace A152982

/-- `A152981(n)-A001006(n)` -/
def P911406566418063957.Spec : Prop :=
  ∀ n, P911406566418063957.a n = A152982 n

end A152982

/-! ## A152982.P11847113350800618030

`A152981(n)-Δ[A097332(n)]`
-/

namespace A152982.P11847113350800618030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152981 n - (f1 (n + 1) - f1 n)

end

end A152982.P11847113350800618030

namespace A152982

/-- `A152981(n)-Δ[A097332(n)]` -/
def P11847113350800618030.Spec : Prop :=
  ∀ n, P11847113350800618030.a n = A152982 n

end A152982

/-! ## A152982.P8933820455102824155

`A152983(n)+A154349(n)-1`
-/

namespace A152982.P8933820455102824155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152983 n + (A154349 n - 1)

end

end A152982.P8933820455102824155

namespace A152982

/-- `A152983(n)+A154349(n)-1` -/
def P8933820455102824155.Spec : Prop :=
  ∀ n, P8933820455102824155.a n = A152982 n

end A152982

/-! ## A152982.P2372530717058753492

`A152981(n)-∑[A002026(abs(1-n))]`
-/

namespace A152982.P2372530717058753492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152981 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152982.P2372530717058753492

namespace A152982

/-- `A152981(n)-∑[A002026(abs(1-n))]` -/
def P2372530717058753492.Spec : Prop :=
  ∀ n, P2372530717058753492.a n = A152982 n

end A152982

/-! ## A152982.P5556416697080617289

`A152981(n)-(A005043(n+1)+A005043(n))`
-/

namespace A152982.P5556416697080617289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152981 n - (A005043 (n + 1) + A005043 n)

end

end A152982.P5556416697080617289

namespace A152982

/-- `A152981(n)-(A005043(n+1)+A005043(n))` -/
def P5556416697080617289.Spec : Prop :=
  ∀ n, P5556416697080617289.a n = A152982 n

end A152982

/-! ## A152982.P10859907065516009616

`A152981(n)-A064645(A000217(n))`
-/

namespace A152982.P10859907065516009616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152981 n - A064645 (A000217 n).toNat

end

end A152982.P10859907065516009616

namespace A152982

/-- `A152981(n)-A064645(A000217(n))` -/
def P10859907065516009616.Spec : Prop :=
  ∀ n, P10859907065516009616.a n = A152982 n

end A152982

/-! ## A152982.P2652279896250363478

`A152981(n)-A026300(A000096(n))`
-/

namespace A152982.P2652279896250363478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152981 n - A026300 (A000096 n).toNat

end

end A152982.P2652279896250363478

namespace A152982

/-- `A152981(n)-A026300(A000096(n))` -/
def P2652279896250363478.Spec : Prop :=
  ∀ n, P2652279896250363478.a n = A152982 n

end A152982

/-! ## A152982.P9325192165251024553

`A152981(n)-root(A133053(n), 2)`
-/

namespace A152982.P9325192165251024553
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A152981 n : ℝ) - (A133053 n : ℝ) ^ (1 / (2 : ℝ))

end

end A152982.P9325192165251024553

namespace A152982

/-- `A152981(n)-root(A133053(n), 2)` -/
def P9325192165251024553.Spec : Prop :=
  ∀ n, P9325192165251024553.a n = (A152982 n : ℝ)

end A152982

/-! ## A152982.P10900616341333907083

`A152981(n)-A151341(n)/A039599(∑[n])`
-/

namespace A152982.P10900616341333907083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152981 n : ℚ) - (A151341 n : ℚ) / (A039599 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A152982.P10900616341333907083

namespace A152982

/-- `A152981(n)-A151341(n)/A039599(∑[n])` -/
def P10900616341333907083.Spec : Prop :=
  ∀ n, P10900616341333907083.a n = (A152982 n : ℚ)

end A152982

/-!
# A152983: Number of divisors of Motzkin number A001006(n).

The programs for A152983, the canonical program `A152983.P16244814053645438890` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152983 has offset 0).

The definition of A152983 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A152983.P16244814053645438890

`A000005(A001006(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A152983

/-- `A000005(A001006(n))` -/
def P16244814053645438890.Spec : Prop :=
  ∀ n, P16244814053645438890.a n = A152983 n

theorem P16244814053645438890.correct : P16244814053645438890.Spec := by
  intro n
  simp only [A152983]

end A152983

/-! ## A152983.P1779456905091650031

`A152982(n)+1-A154349(n)`
-/

namespace A152983.P1779456905091650031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152982 n + (1 - A154349 n)

end

end A152983.P1779456905091650031

namespace A152983

/-- `A152982(n)+1-A154349(n)` -/
def P1779456905091650031.Spec : Prop :=
  ∀ n, P1779456905091650031.a n = A152983 n

end A152983

/-! ## A152983.P9383924549681708116

`∏{e}[A001006(n)%A269658(n), #+1]`
-/

namespace A152983.P9383924549681708116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001006 n) (A269658 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A152983.P9383924549681708116

namespace A152983

/-- `∏{e}[A001006(n)%A269658(n), #+1]` -/
def P9383924549681708116.Spec : Prop :=
  ∀ n, (P9383924549681708116.a n : ℤ) = A152983 n

end A152983

/-! ## A152983.P6936252950728344475

`∏{e}[Δ[A097332(n)], #+1]`
-/

namespace A152983.P6936252950728344475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A152983.P6936252950728344475

namespace A152983

/-- `∏{e}[Δ[A097332(n)], #+1]` -/
def P6936252950728344475.Spec : Prop :=
  ∀ n, (P6936252950728344475.a n : ℤ) = A152983 n

end A152983

/-! ## A152983.P6146334860643814943

`∏{e}[A166587(n+1), #+1]`
-/

namespace A152983.P6146334860643814943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166587 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A152983.P6146334860643814943

namespace A152983

/-- `∏{e}[A166587(n+1), #+1]` -/
def P6146334860643814943.Spec : Prop :=
  ∀ n, (P6146334860643814943.a n : ℤ) = A152983 n

end A152983

/-!
# A152984: Absolute values of A152864.

The programs for A152984, the canonical program `A152984.P1224505352498316332` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152984 has offset 1).

The definition of A152984 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152864, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A152984.P1224505352498316332

`abs(A152864(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A152984

/-- `abs(A152864(n+1))` -/
def P1224505352498316332.Spec : Prop :=
  ∀ n, P1224505352498316332.a n = A152984 (n + 1)

theorem P1224505352498316332.correct : P1224505352498316332.Spec := by
  intro n
  simp only [A152984, Nat.add_sub_cancel]

end A152984

/-! ## A152984.P10625067498965308392

`abs(∑{d}[n+1, 1-#]+Δ[n²])`
-/

namespace A152984.P10625067498965308392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), (1 - (d : ℤ)) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))|

end

end A152984.P10625067498965308392

namespace A152984

/-- `abs(∑{d}[n+1, 1-#]+Δ[n²])` -/
def P10625067498965308392.Spec : Prop :=
  ∀ n, P10625067498965308392.a n = A152984 (n + 1)

end A152984

/-! ## A152984.P1329705574796863511

`abs(comp[2*n]-∑{d}[n+1, #-1])`
-/

namespace A152984.P1329705574796863511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - ∑ d ∈ Nat.divisors (f2 n), ((d : ℤ) - 1)|

end

end A152984.P1329705574796863511

namespace A152984

/-- `abs(comp[2*n]-∑{d}[n+1, #-1])` -/
def P1329705574796863511.Spec : Prop :=
  ∀ n, P1329705574796863511.a n = A152984 (n + 1)

end A152984

/-! ## A152984.P1904045845462283636

`abs(2*n+∑{d}[n+1, 1-#]+1)`
-/

namespace A152984.P1904045845462283636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) + (∑ d ∈ Nat.divisors (f1 n), (1 - (d : ℤ)) + 1)|

end

end A152984.P1904045845462283636

namespace A152984

/-- `abs(2*n+∑{d}[n+1, 1-#]+1)` -/
def P1904045845462283636.Spec : Prop :=
  ∀ n, P1904045845462283636.a n = A152984 (n + 1)

end A152984

/-! ## A152984.P1965549052541910604

`abs(∑{d}[n+1, 1-#]+1+n+n)`
-/

namespace A152984.P1965549052541910604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), (1 - (d : ℤ)) + 1 + (n : ℤ) + (n : ℤ)|

end

end A152984.P1965549052541910604

namespace A152984

/-- `abs(∑{d}[n+1, 1-#]+1+n+n)` -/
def P1965549052541910604.Spec : Prop :=
  ∀ n, P1965549052541910604.a n = A152984 (n + 1)

end A152984

/-! ## A152984.P17182446805565924035

`root((∑{d}[n+1, 1-#]+Δ[n²])², 2)`
-/

namespace A152984.P17182446805565924035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), (1 - (d : ℤ)) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))) ^ 2 : ℤ) : ℝ) ^ (1 / (2 : ℝ))

end

end A152984.P17182446805565924035

namespace A152984

/-- `root((∑{d}[n+1, 1-#]+Δ[n²])², 2)` -/
def P17182446805565924035.Spec : Prop :=
  ∀ n, P17182446805565924035.a n = (A152984 (n + 1) : ℝ)

end A152984

/-! ## A152984.P10386641159147709557

`gcd(∑{d}[n+1, 1-#]+Δ[n²], C(2, n+2))`
-/

namespace A152984.P10386641159147709557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ d ∈ Nat.divisors (f1 n), (1 - (d : ℤ)) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))) (Nat.choose 2 (n + 2) : ℤ)

end

end A152984.P10386641159147709557

namespace A152984

/-- `gcd(∑{d}[n+1, 1-#]+Δ[n²], C(2, n+2))` -/
def P10386641159147709557.Spec : Prop :=
  ∀ n, (P10386641159147709557.a n : ℤ) = A152984 (n + 1)

end A152984

/-! ## A152984.P9113538584653798951

`lcm(∑{d}[n+1, 1-#]+Δ[n²], C(2, n+2)!)`
-/

namespace A152984.P9113538584653798951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ d ∈ Nat.divisors (f1 n), (1 - (d : ℤ)) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))) (Nat.factorial (Nat.choose 2 (n + 2)) : ℤ)

end

end A152984.P9113538584653798951

namespace A152984

/-- `lcm(∑{d}[n+1, 1-#]+Δ[n²], C(2, n+2)!)` -/
def P9113538584653798951.Spec : Prop :=
  ∀ n, (P9113538584653798951.a n : ℤ) = A152984 (n + 1)

end A152984

/-! ## A152984.P5015217360085542583

`∑{d}[∑{d}[n+1, 1-#]+Δ[n²], A000010(#)]`
-/

namespace A152984.P5015217360085542583
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (1 - (d : ℤ)) + ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A152984.P5015217360085542583

namespace A152984

/-- `∑{d}[∑{d}[n+1, 1-#]+Δ[n²], A000010(#)]` -/
def P5015217360085542583.Spec : Prop :=
  ∀ n, P5015217360085542583.a n = A152984 (n + 1)

end A152984

/-! ## A152984.P11890321021237230126

`lcm(n+1-(∑{d}[n+1, #-1]-n), A008683(∏{p}[n+1, #]))`
-/

namespace A152984.P11890321021237230126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 1 : ℤ) - (∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - 1) - (n : ℤ))) (A008683 (∏ p ∈ Nat.primeFactors (f2 n), p))

end

end A152984.P11890321021237230126

namespace A152984

/-- `lcm(n+1-(∑{d}[n+1, #-1]-n), A008683(∏{p}[n+1, #]))` -/
def P11890321021237230126.Spec : Prop :=
  ∀ n, (P11890321021237230126.a n : ℤ) = A152984 (n + 1)

end A152984

/-!
# A152985: Sum of proper divisors minus the number of proper divisors of the square A000290(n).

The programs for A152985, the canonical program `A152985.P2219434118744264934` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152985 has offset 1).

The definition of A152985 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152770, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A152985.P2219434118744264934

`A152770(A000290(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A152985

/-- `A152770(A000290(n+1))` -/
def P2219434118744264934.Spec : Prop :=
  ∀ n, P2219434118744264934.a n = A152985 (n + 1)

theorem P2219434118744264934.correct : P2219434118744264934.Spec := by
  intro n
  simp only [A152985, Nat.add_sub_cancel]

end A152985

/-! ## A152985.P4090610972205696402

`A065608((n+1)²)-n*(n+2)`
-/

namespace A152985.P4090610972205696402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 ((n + 1) ^ 2) - (n * (n + 2) : ℤ)

end

end A152985.P4090610972205696402

namespace A152985

/-- `A065608((n+1)²)-n*(n+2)` -/
def P4090610972205696402.Spec : Prop :=
  ∀ n, P4090610972205696402.a n = A152985 (n + 1)

end A152985

/-! ## A152985.P7302203459237997115

`A065608(∑[n+1+n])-(n+1)²+1`
-/

namespace A152985.P7302203459237997115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (∑ j ∈ Finset.range (n + 1), f1 j) - ((n + 1) ^ 2 : ℤ) + 1

end

end A152985.P7302203459237997115

namespace A152985

/-- `A065608(∑[n+1+n])-(n+1)²+1` -/
def P7302203459237997115.Spec : Prop :=
  ∀ n, P7302203459237997115.a n = A152985 (n + 1)

end A152985

/-! ## A152985.P4954860001927645333

`A258837(n+1)+A065608((n+1)²)`
-/

namespace A152985.P4954860001927645333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258837 (n + 1) + A065608 ((n + 1) ^ 2)

end

end A152985.P4954860001927645333

namespace A152985

/-- `A258837(n+1)+A065608((n+1)²)` -/
def P4954860001927645333.Spec : Prop :=
  ∀ n, P4954860001927645333.a n = A152985 (n + 1)

end A152985

/-! ## A152985.P13111626734670923842

`A304042(A304042(n))+A065608((n+1)²)-(n+1)²`
-/

namespace A152985.P13111626734670923842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 (A304042 n).toNat + (A065608 ((n + 1) ^ 2) - ((n + 1) ^ 2 : ℤ))

end

end A152985.P13111626734670923842

namespace A152985

/-- `A304042(A304042(n))+A065608((n+1)²)-(n+1)²` -/
def P13111626734670923842.Spec : Prop :=
  ∀ n, P13111626734670923842.a n = A152985 (n + 1)

end A152985

/-! ## A152985.P13635422461287665904

`A162196(A078435(n+1))`
-/

namespace A152985.P13635422461287665904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162196 (A078435 (n + 1)).toNat

end

end A152985.P13635422461287665904

namespace A152985

/-- `A162196(A078435(n+1))` -/
def P13635422461287665904.Spec : Prop :=
  ∀ n, P13635422461287665904.a n = A152985 (n + 1)

end A152985

/-! ## A152985.P2410690645702048981

`A152770((n+1)²)`
-/

namespace A152985.P2410690645702048981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 ((n + 1) ^ 2)

end

end A152985.P2410690645702048981

namespace A152985

/-- `A152770((n+1)²)` -/
def P2410690645702048981.Spec : Prop :=
  ∀ n, P2410690645702048981.a n = A152985 (n + 1)

end A152985

/-! ## A152985.P8636277030735270321

`∑{d}[(n+1)², A016035(#)]`
-/

namespace A152985.P8636277030735270321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A016035 d

end

end A152985.P8636277030735270321

namespace A152985

/-- `∑{d}[(n+1)², A016035(#)]` -/
def P8636277030735270321.Spec : Prop :=
  ∀ n, P8636277030735270321.a n = A152985 (n + 1)

end A152985

/-! ## A152985.P1991794618542276993

`(n+1)²-A152864((n+1)²)`
-/

namespace A152985.P1991794618542276993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A152864 ((n + 1) ^ 2)

end

end A152985.P1991794618542276993

namespace A152985

/-- `(n+1)²-A152864((n+1)²)` -/
def P1991794618542276993.Spec : Prop :=
  ∀ n, P1991794618542276993.a n = A152985 (n + 1)

end A152985

/-! ## A152985.P5761188571554237084

`A158901((n+1)²)-(n+1)²`
-/

namespace A152985.P5761188571554237084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158901 ((n + 1) ^ 2) - ((n + 1) ^ 2 : ℤ)

end

end A152985.P5761188571554237084

namespace A152985

/-- `A158901((n+1)²)-(n+1)²` -/
def P5761188571554237084.Spec : Prop :=
  ∀ n, P5761188571554237084.a n = A152985 (n + 1)

end A152985

/-! ## A152985.P5394496686003486294

`A001065((n+1)²)-A032741((n+1)²)`
-/

namespace A152985.P5394496686003486294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 ((n + 1) ^ 2) - A032741 ((n + 1) ^ 2)

end

end A152985.P5394496686003486294

namespace A152985

/-- `A001065((n+1)²)-A032741((n+1)²)` -/
def P5394496686003486294.Spec : Prop :=
  ∀ n, P5394496686003486294.a n = A152985 (n + 1)

end A152985

/-! ## A152985.P13576889630687319744

`A001065((n+1)²)+1-A000005((n+1)²)`
-/

namespace A152985.P13576889630687319744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 ((n + 1) ^ 2) + (1 - A000005 ((n + 1) ^ 2))

end

end A152985.P13576889630687319744

namespace A152985

/-- `A001065((n+1)²)+1-A000005((n+1)²)` -/
def P13576889630687319744.Spec : Prop :=
  ∀ n, P13576889630687319744.a n = A152985 (n + 1)

end A152985

/-!
# A152986: Sum of proper divisors minus the number of proper divisors of pentagonal number A000326(n).

The programs for A152986, the canonical program `A152986.P4892744179053441096` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152986 has offset 1).

The definition of A152986 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152770, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A152986.P4892744179053441096

`A152770(A000326(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A152986

/-- `A152770(A000326(n+1))` -/
def P4892744179053441096.Spec : Prop :=
  ∀ n, P4892744179053441096.a n = A152986 (n + 1)

theorem P4892744179053441096.correct : P4892744179053441096.Spec := by
  intro n
  simp only [A152986, Nat.add_sub_cancel]

end A152986

/-! ## A152986.P1369937399826156565

`A152770(∑[3*n+1])`
-/

namespace A152986.P1369937399826156565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152986.P1369937399826156565

namespace A152986

/-- `A152770(∑[3*n+1])` -/
def P1369937399826156565.Spec : Prop :=
  ∀ n, P1369937399826156565.a n = A152986 (n + 1)

end A152986

/-! ## A152986.P8142837625726219709

`∑{d}[∑[a(n-1)+3], A016035(#)]` with `a(0)=1`
-/

namespace A152986.P8142837625726219709
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A016035 d

end

end A152986.P8142837625726219709

namespace A152986

/-- `∑{d}[∑[a(n-1)+3], A016035(#)]` -/
def P8142837625726219709.Spec : Prop :=
  ∀ n, P8142837625726219709.a n = A152986 (n + 1)

end A152986

/-! ## A152986.P10202380316313273361

`∑{d}[∑[A016777(n)], A016035(#)]`
-/

namespace A152986.P10202380316313273361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A016035 d

end

end A152986.P10202380316313273361

namespace A152986

/-- `∑{d}[∑[A016777(n)], A016035(#)]` -/
def P10202380316313273361.Spec : Prop :=
  ∀ n, P10202380316313273361.a n = A152986 (n + 1)

end A152986

/-! ## A152986.P13203910845645811655

`∑{d}[Δ[A002411(n)], A016035(#)]`
-/

namespace A152986.P13203910845645811655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A016035 d

end

end A152986.P13203910845645811655

namespace A152986

/-- `∑{d}[Δ[A002411(n)], A016035(#)]` -/
def P13203910845645811655.Spec : Prop :=
  ∀ n, P13203910845645811655.a n = A152986 (n + 1)

end A152986

/-! ## A152986.P11577005214062551505

`∑{d}[A000326(n+1), A016035(#)]`
-/

namespace A152986.P11577005214062551505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A016035 d

end

end A152986.P11577005214062551505

namespace A152986

/-- `∑{d}[A000326(n+1), A016035(#)]` -/
def P11577005214062551505.Spec : Prop :=
  ∀ n, P11577005214062551505.a n = A152986 (n + 1)

end A152986

/-! ## A152986.P774302616731655120

`∑{d}[A001318(2*n+1), A016035(#)]`
-/

namespace A152986.P774302616731655120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A016035 d

end

end A152986.P774302616731655120

namespace A152986

/-- `∑{d}[A001318(2*n+1), A016035(#)]` -/
def P774302616731655120.Spec : Prop :=
  ∀ n, P774302616731655120.a n = A152986 (n + 1)

end A152986

/-! ## A152986.P3994255710262697131

`∑{d}[A008649(A008591(n)), A016035(#)]`
-/

namespace A152986.P3994255710262697131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008649 (A008591 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A016035 d

end

end A152986.P3994255710262697131

namespace A152986

/-- `∑{d}[A008649(A008591(n)), A016035(#)]` -/
def P3994255710262697131.Spec : Prop :=
  ∀ n, P3994255710262697131.a n = A152986 (n + 1)

end A152986

/-!
# A152987: Sum of proper divisors minus the number of proper divisors of the number of partitions of n, A000041(n).

The programs for A152987, there is no canonical definition to state claims against.
-/

/-! ## A152987.P16094662326178925075

`A152770(A000041(n+1))`
-/

namespace A152987.P16094662326178925075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (A000041 (n + 1)).toNat

end

end A152987.P16094662326178925075

/-! ## A152987.P18198553565894947663

`A139055(n+1)-A032741(A278241(n+1))`
-/

namespace A152987.P18198553565894947663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139055 (n + 1) - A032741 (A278241 (n + 1)).toNat

end

end A152987.P18198553565894947663

/-! ## A152987.P8065170740360252839

`A139055(n+1)+1-A000005(Δ[A000070(n)])`
-/

namespace A152987.P8065170740360252839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139055 (n + 1) + 1 - A000005 (f1 (n + 1) - f1 n).toNat

end

end A152987.P8065170740360252839

/-! ## A152987.P13826724721932321324

`A152770(Δ[A000070(n)])`
-/

namespace A152987.P13826724721932321324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (f1 (n + 1) - f1 n).toNat

end

end A152987.P13826724721932321324

/-! ## A152987.P16649220875397790567

`A152770(record[A035363(n)])`
-/

namespace A152987.P16649220875397790567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A152987.P16649220875397790567

/-!
# A152988: Sum of proper divisors minus the number of proper divisors of Catalan number A000108(n).

The programs for A152988, the canonical program `A152988.P2080984935002552249` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152988 has offset 0).

The definition of A152988 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152770, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A152988.P2080984935002552249

`A152770(A000108(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A152988

/-- `A152770(A000108(n))` -/
def P2080984935002552249.Spec : Prop :=
  ∀ n, P2080984935002552249.a n = A152988 n

theorem P2080984935002552249.correct : P2080984935002552249.Spec := by
  intro n
  simp only [A152988]

end A152988

/-! ## A152988.P18409268426004742723

`A152762(n)-A153788(n)`
-/

namespace A152988.P18409268426004742723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152762 n - A153788 n

end

end A152988.P18409268426004742723

namespace A152988

/-- `A152762(n)-A153788(n)` -/
def P18409268426004742723.Spec : Prop :=
  ∀ n, P18409268426004742723.a n = A152988 n

end A152988

/-! ## A152988.P16501093529201340129

`A152762(n)+1-A152763(n)`
-/

namespace A152988.P16501093529201340129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152762 n + (1 - A152763 n)

end

end A152988.P16501093529201340129

namespace A152988

/-- `A152762(n)+1-A152763(n)` -/
def P16501093529201340129.Spec : Prop :=
  ∀ n, P16501093529201340129.a n = A152988 n

end A152988

/-! ## A152988.P11432361475578955168

`1-(A152763(A028310(n))-A152762(n))`
-/

namespace A152988.P11432361475578955168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A152763 (A028310 n).toNat - A152762 n)

end

end A152988.P11432361475578955168

namespace A152988

/-- `1-(A152763(A028310(n))-A152762(n))` -/
def P11432361475578955168.Spec : Prop :=
  ∀ n, P11432361475578955168.a n = A152988 n

end A152988

/-! ## A152988.P1678695167094005859

`char[A006368(n)]-(A152763(n)-A152762(n))`
-/

namespace A152988.P1678695167094005859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - (A152763 n - A152762 n)

end

end A152988.P1678695167094005859

namespace A152988

/-- `char[A006368(n)]-(A152763(n)-A152762(n))` -/
def P1678695167094005859.Spec : Prop :=
  ∀ n, P1678695167094005859.a n = A152988 n

end A152988

/-! ## A152988.P2339698785126634300

`A000034(A005843(n))-(A152763(n)-A152762(n))`
-/

namespace A152988.P2339698785126634300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A005843 n).toNat - (A152763 n - A152762 n)

end

end A152988.P2339698785126634300

namespace A152988

/-- `A000034(A005843(n))-(A152763(n)-A152762(n))` -/
def P2339698785126634300.Spec : Prop :=
  ∀ n, P2339698785126634300.a n = A152988 n

end A152988

/-! ## A152988.P13789626020519680694

`A000034(A017317(n))-(A152763(n)-A152762(n))`
-/

namespace A152988.P13789626020519680694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A017317 n).toNat - (A152763 n - A152762 n)

end

end A152988.P13789626020519680694

namespace A152988

/-- `A000034(A017317(n))-(A152763(n)-A152762(n))` -/
def P13789626020519680694.Spec : Prop :=
  ∀ n, P13789626020519680694.a n = A152988 n

end A152988

/-!
# A152989: Sum of proper divisors minus the number of proper divisors of triangular number A000217(n).

The programs for A152989, the canonical program `A152989.P9271480761926204214` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152989 has offset 1).

The definition of A152989 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152770, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A152989.P9271480761926204214

`A152770(A000217(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A152989

/-- `A152770(A000217(n+1))` -/
def P9271480761926204214.Spec : Prop :=
  ∀ n, P9271480761926204214.a n = A152989 (n + 1)

theorem P9271480761926204214.correct : P9271480761926204214.Spec := by
  intro n
  simp only [A152989, Nat.add_sub_cancel]

end A152989

/-! ## A152989.P16736183536850569853

`∑{d}[∑[n+1], #-1]-(∑[n]+n)`
-/

namespace A152989.P16736183536850569853
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - 1) - ((∑ j ∈ Finset.range (n + 1), f3 j + n : ℕ) : ℤ)

end

end A152989.P16736183536850569853

namespace A152989

/-- `∑{d}[∑[n+1], #-1]-(∑[n]+n)` -/
def P16736183536850569853.Spec : Prop :=
  ∀ n, P16736183536850569853.a n = A152989 (n + 1)

end A152989

/-! ## A152989.P14224859617092677946

`A065608(∑[n+1])-(∑[n]+n)`
-/

namespace A152989.P14224859617092677946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (∑ j ∈ Finset.range (n + 1), f1 j) - ((∑ j ∈ Finset.range (n + 1), f2 j + n : ℕ) : ℤ)

end

end A152989.P14224859617092677946

namespace A152989

/-- `A065608(∑[n+1])-(∑[n]+n)` -/
def P14224859617092677946.Spec : Prop :=
  ∀ n, P14224859617092677946.a n = A152989 (n + 1)

end A152989

/-! ## A152989.P4901325450333379102

`A152770(∑[n+1])`
-/

namespace A152989.P4901325450333379102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152989.P4901325450333379102

namespace A152989

/-- `A152770(∑[n+1])` -/
def P4901325450333379102.Spec : Prop :=
  ∀ n, P4901325450333379102.a n = A152989 (n + 1)

end A152989

/-! ## A152989.P12932622552555700061

`∑{d}[∑[n+1], A016035(#)]`
-/

namespace A152989.P12932622552555700061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A016035 d

end

end A152989.P12932622552555700061

namespace A152989

/-- `∑{d}[∑[n+1], A016035(#)]` -/
def P12932622552555700061.Spec : Prop :=
  ∀ n, P12932622552555700061.a n = A152989 (n + 1)

end A152989

/-! ## A152989.P14568100153240290200

`∑[n+1]-A152864(∑[n+1])`
-/

namespace A152989.P14568100153240290200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A152864 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A152989.P14568100153240290200

namespace A152989

/-- `∑[n+1]-A152864(∑[n+1])` -/
def P14568100153240290200.Spec : Prop :=
  ∀ n, P14568100153240290200.a n = A152989 (n + 1)

end A152989

/-! ## A152989.P2284769844844665779

`A001065(∑[n+1])-A032741(∑[n+1])`
-/

namespace A152989.P2284769844844665779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (∑ j ∈ Finset.range (n + 1), f1 j) - A032741 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A152989.P2284769844844665779

namespace A152989

/-- `A001065(∑[n+1])-A032741(∑[n+1])` -/
def P2284769844844665779.Spec : Prop :=
  ∀ n, P2284769844844665779.a n = A152989 (n + 1)

end A152989

/-!
# A152990: Sum of proper divisors minus the number of proper divisors of Fibonacci number A000045(n).

The programs for A152990, the canonical program `A152990.P2911207475530451392` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152990 has offset 1).

The definition of A152990 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152770, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A152990.P2911207475530451392

`A152770(A000045(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A152990

/-- `A152770(A000045(n+1))` -/
def P2911207475530451392.Spec : Prop :=
  ∀ n, P2911207475530451392.a n = A152990 (n + 1)

theorem P2911207475530451392.correct : P2911207475530451392.Spec := by
  intro n
  simp only [A152990, Nat.add_sub_cancel]

end A152990

/-! ## A152990.P334681943224954049

`A074283(n+1)-A152774(n+1)`
-/

namespace A152990.P334681943224954049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074283 (n + 1) - A152774 (n + 1)

end

end A152990.P334681943224954049

namespace A152990

/-- `A074283(n+1)-A152774(n+1)` -/
def P334681943224954049.Spec : Prop :=
  ∀ n, P334681943224954049.a n = A152990 (n + 1)

end A152990

/-! ## A152990.P3166522787777616715

`A074283(n+1)+1-A063375(n+1)`
-/

namespace A152990.P3166522787777616715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074283 (n + 1) + (1 - A063375 (n + 1))

end

end A152990.P3166522787777616715

namespace A152990

/-- `A074283(n+1)+1-A063375(n+1)` -/
def P3166522787777616715.Spec : Prop :=
  ∀ n, P3166522787777616715.a n = A152990 (n + 1)

end A152990

/-! ## A152990.P10664488638083999341

`A074283(n+1)+A057428(n)*A152774(n+1)`
-/

namespace A152990.P10664488638083999341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074283 (n + 1) + A057428 n * A152774 (n + 1)

end

end A152990.P10664488638083999341

namespace A152990

/-- `A074283(n+1)+A057428(n)*A152774(n+1)` -/
def P10664488638083999341.Spec : Prop :=
  ∀ n, P10664488638083999341.a n = A152990 (n + 1)

end A152990

/-! ## A152990.P15951778962728823158

`A063477(n+1)-(A063375(n+1)+A000071(n+1))`
-/

namespace A152990.P15951778962728823158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063477 (n + 1) - (A063375 (n + 1) + A000071 (n + 1))

end

end A152990.P15951778962728823158

namespace A152990

/-- `A063477(n+1)-(A063375(n+1)+A000071(n+1))` -/
def P15951778962728823158.Spec : Prop :=
  ∀ n, P15951778962728823158.a n = A152990 (n + 1)

end A152990

/-! ## A152990.P12940195762359125989

`A063477(n+1)-(A152774(n+1)+A000045(n+1))`
-/

namespace A152990.P12940195762359125989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063477 (n + 1) - (A152774 (n + 1) + A000045 (n + 1))

end

end A152990.P12940195762359125989

namespace A152990

/-- `A063477(n+1)-(A152774(n+1)+A000045(n+1))` -/
def P12940195762359125989.Spec : Prop :=
  ∀ n, P12940195762359125989.a n = A152990 (n + 1)

end A152990

/-! ## A152990.P14244869077544992245

`A074283(n+1)-(∑{d}[n+1, A120256(#)]-1)`
-/

namespace A152990.P14244869077544992245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074283 (n + 1) - (∑ d ∈ Nat.divisors (f1 n), A120256 d - 1)

end

end A152990.P14244869077544992245

namespace A152990

/-- `A074283(n+1)-(∑{d}[n+1, A120256(#)]-1)` -/
def P14244869077544992245.Spec : Prop :=
  ∀ n, P14244869077544992245.a n = A152990 (n + 1)

end A152990

/-! ## A152990.P1074101438191345835

`A074283(n+1)+A024000(A063375(n+1))`
-/

namespace A152990.P1074101438191345835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074283 (n + 1) + A024000 (A063375 (n + 1)).toNat

end

end A152990.P1074101438191345835

namespace A152990

/-- `A074283(n+1)+A024000(A063375(n+1))` -/
def P1074101438191345835.Spec : Prop :=
  ∀ n, P1074101438191345835.a n = A152990 (n + 1)

end A152990

/-!
# A152991: a(n) = sigma(n) - pi(n).

The programs for A152991, the canonical program `A152991.P8398734330687553206` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152991 has offset 1).

The definition of A152991 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152991.P12395659400140085848

`∑{d}[n+1, #]-A000720(n+1)`
-/

namespace A152991.P12395659400140085848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A000720 (n + 1)

end

end A152991.P12395659400140085848

namespace A152991

/-- `∑{d}[n+1, #]-A000720(n+1)` -/
def P12395659400140085848.Spec : Prop :=
  ∀ n, P12395659400140085848.a n = A152991 (n + 1)

end A152991

/-! ## A152991.P8135618973309626973

`∑{d}[n+1, #]-∑[char[A006093(n+1)]]`
-/

namespace A152991.P8135618973309626973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A152991.P8135618973309626973

namespace A152991

/-- `∑{d}[n+1, #]-∑[char[A006093(n+1)]]` -/
def P8135618973309626973.Spec : Prop :=
  ∀ n, P8135618973309626973.a n = A152991 (n + 1)

end A152991

/-! ## A152991.P7105409051148159310

`∑{d}[n+1, #]-∑[char[A006530(n+3)-1]]`
-/

namespace A152991.P7105409051148159310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A152991.P7105409051148159310

namespace A152991

/-- `∑{d}[n+1, #]-∑[char[A006530(n+3)-1]]` -/
def P7105409051148159310.Spec : Prop :=
  ∀ n, P7105409051148159310.a n = A152991 (n + 1)

end A152991

/-! ## A152991.P8398734330687553206

`A000203(n+1)-∑[round(∑{p}[n+1, (#/(n+1))²])]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A152991

/-- `A000203(n+1)-∑[round(∑{p}[n+1, (#/(n+1))²])]` -/
def P8398734330687553206.Spec : Prop :=
  ∀ n, P8398734330687553206.a n = A152991 (n + 1)

theorem P8398734330687553206.correct : P8398734330687553206.Spec := by
  intro n
  simp only [A152991, Nat.add_sub_cancel]

end A152991

/-! ## A152991.P8041625157513256778

`A152992(n+1)+Δ[A006218(n)]`
-/

namespace A152991.P8041625157513256778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152992 (n + 1) + (f1 (n + 1) - f1 n)

end

end A152991.P8041625157513256778

namespace A152991

/-- `A152992(n+1)+Δ[A006218(n)]` -/
def P8041625157513256778.Spec : Prop :=
  ∀ n, P8041625157513256778.a n = A152991 (n + 1)

end A152991

/-! ## A152991.P1474595709579021451

`A152992(n+1)+Δ[A054519(n)]`
-/

namespace A152991.P1474595709579021451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152992 (n + 1) + (f1 (n + 1) - f1 n)

end

end A152991.P1474595709579021451

namespace A152991

/-- `A152992(n+1)+Δ[A054519(n)]` -/
def P1474595709579021451.Spec : Prop :=
  ∀ n, P1474595709579021451.a n = A152991 (n + 1)

end A152991

/-! ## A152991.P795563431237478401

`Δ[A160664(n)]-A000720(n+1)`
-/

namespace A152991.P795563431237478401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000720 (n + 1)

end

end A152991.P795563431237478401

namespace A152991

/-- `Δ[A160664(n)]-A000720(n+1)` -/
def P795563431237478401.Spec : Prop :=
  ∀ n, P795563431237478401.a n = A152991 (n + 1)

end A152991

/-! ## A152991.P11770716407928951151

`A062298(n+1)+A001065(n+1)`
-/

namespace A152991.P11770716407928951151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) + A001065 (n + 1)

end

end A152991.P11770716407928951151

namespace A152991

/-- `A062298(n+1)+A001065(n+1)` -/
def P11770716407928951151.Spec : Prop :=
  ∀ n, P11770716407928951151.a n = A152991 (n + 1)

end A152991

/-! ## A152991.P15249308102113817375

`A064677(n+1)+A001223(n+1)`
-/

namespace A152991.P15249308102113817375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064677 (n + 1) + A001223 (n + 1)

end

end A152991.P15249308102113817375

namespace A152991

/-- `A064677(n+1)+A001223(n+1)` -/
def P15249308102113817375.Spec : Prop :=
  ∀ n, P15249308102113817375.a n = A152991 (n + 1)

end A152991

/-! ## A152991.P13939871983244710246

`A051612(n+1)+A037228(n+1)`
-/

namespace A152991.P13939871983244710246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1) + A037228 (n + 1)

end

end A152991.P13939871983244710246

namespace A152991

/-- `A051612(n+1)+A037228(n+1)` -/
def P13939871983244710246.Spec : Prop :=
  ∀ n, P13939871983244710246.a n = A152991 (n + 1)

end A152991

/-! ## A152991.P13331530581693478170

`A152992(n+1)+A000005(n+1)`
-/

namespace A152991.P13331530581693478170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152992 (n + 1) + A000005 (n + 1)

end

end A152991.P13331530581693478170

namespace A152991

/-- `A152992(n+1)+A000005(n+1)` -/
def P13331530581693478170.Spec : Prop :=
  ∀ n, P13331530581693478170.a n = A152991 (n + 1)

end A152991

/-! ## A152991.P96755729766492902

`A000203(n+1)-A000720(n+1)`
-/

namespace A152991.P96755729766492902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000720 (n + 1)

end

end A152991.P96755729766492902

namespace A152991

/-- `A000203(n+1)-A000720(n+1)` -/
def P96755729766492902.Spec : Prop :=
  ∀ n, P96755729766492902.a n = A152991 (n + 1)

end A152991

/-! ## A152991.P14150805198347586799

`A007503(n+1)-A082514(n+1)`
-/

namespace A152991.P14150805198347586799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - A082514 (n + 1)

end

end A152991.P14150805198347586799

namespace A152991

/-- `A007503(n+1)-A082514(n+1)` -/
def P14150805198347586799.Spec : Prop :=
  ∀ n, P14150805198347586799.a n = A152991 (n + 1)

end A152991

/-! ## A152991.P7076362114174435788

`A088580(n+1)-A036234(n+1)`
-/

namespace A152991.P7076362114174435788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - A036234 (n + 1)

end

end A152991.P7076362114174435788

namespace A152991

/-- `A088580(n+1)-A036234(n+1)` -/
def P7076362114174435788.Spec : Prop :=
  ∀ n, P7076362114174435788.a n = A152991 (n + 1)

end A152991

/-! ## A152991.P15998814451995957873

`A065387(n+1)-A082515(n+1)`
-/

namespace A152991.P15998814451995957873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065387 (n + 1) - A082515 (n + 1)

end

end A152991.P15998814451995957873

namespace A152991

/-- `A065387(n+1)-A082515(n+1)` -/
def P15998814451995957873.Spec : Prop :=
  ∀ n, P15998814451995957873.a n = A152991 (n + 1)

end A152991

/-! ## A152991.P11455200771041057877

`A065608(n+1)-A082513(n+1)`
-/

namespace A152991.P11455200771041057877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (n + 1) - A082513 (n + 1)

end

end A152991.P11455200771041057877

namespace A152991

/-- `A065608(n+1)-A082513(n+1)` -/
def P11455200771041057877.Spec : Prop :=
  ∀ n, P11455200771041057877.a n = A152991 (n + 1)

end A152991

/-! ## A152991.P17597734927553673294

`A256885(n+1)-A024816(n+1)`
-/

namespace A152991.P17597734927553673294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256885 (n + 1) - A024816 (n + 1)

end

end A152991.P17597734927553673294

namespace A152991

/-- `A256885(n+1)-A024816(n+1)` -/
def P17597734927553673294.Spec : Prop :=
  ∀ n, P17597734927553673294.a n = A152991 (n + 1)

end A152991

/-! ## A152991.P17927292723558265943

`A380449(n+1)-A351519(n+1)`
-/

namespace A152991.P17927292723558265943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380449 (n + 1) - A351519 (n + 1)

end

end A152991.P17927292723558265943

namespace A152991

/-- `A380449(n+1)-A351519(n+1)` -/
def P17927292723558265943.Spec : Prop :=
  ∀ n, P17927292723558265943.a n = A152991 (n + 1)

end A152991

/-! ## A152991.P5527316506857489035

`abs(Δ[A330725(n)])-A000720(n+1)`
-/

namespace A152991.P5527316506857489035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - A000720 (n + 1)

end

end A152991.P5527316506857489035

namespace A152991

/-- `abs(Δ[A330725(n)])-A000720(n+1)` -/
def P5527316506857489035.Spec : Prop :=
  ∀ n, P5527316506857489035.a n = A152991 (n + 1)

end A152991

/-! ## A152991.P10946644604277172018

`abs(A143348(n+1))-A000720(n+1)`
-/

namespace A152991.P10946644604277172018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143348 (n + 1)| - A000720 (n + 1)

end

end A152991.P10946644604277172018

namespace A152991

/-- `abs(A143348(n+1))-A000720(n+1)` -/
def P10946644604277172018.Spec : Prop :=
  ∀ n, P10946644604277172018.a n = A152991 (n + 1)

end A152991

/-!
# A152992: a(n) = sigma(n) - d(n) - pi(n).

The programs for A152992, the canonical program `A152992.P10206136984884417694` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152992 has offset 1).

The definition of A152992 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A065608, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A152992.P10206136984884417694

`A065608(n+1)-A000720(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A152992

/-- `A065608(n+1)-A000720(n+1)` -/
def P10206136984884417694.Spec : Prop :=
  ∀ n, P10206136984884417694.a n = A152992 (n + 1)

theorem P10206136984884417694.correct : P10206136984884417694.Spec := by
  intro n
  simp only [A152992, Nat.add_sub_cancel]

end A152992

/-! ## A152992.P629495367188916253

`A152991(n+1)-A000005(n+1)`
-/

namespace A152992.P629495367188916253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152991 (n + 1) - A000005 (n + 1)

end

end A152992.P629495367188916253

namespace A152992

/-- `A152991(n+1)-A000005(n+1)` -/
def P629495367188916253.Spec : Prop :=
  ∀ n, P629495367188916253.a n = A152992 (n + 1)

end A152992

/-! ## A152992.P911869540986099168

`A000203(n+1)-A000005(n+1)-A000720(n+1)`
-/

namespace A152992.P911869540986099168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000005 (n + 1) - A000720 (n + 1)

end

end A152992.P911869540986099168

namespace A152992

/-- `A000203(n+1)-A000005(n+1)-A000720(n+1)` -/
def P911869540986099168.Spec : Prop :=
  ∀ n, P911869540986099168.a n = A152992 (n + 1)

end A152992

/-! ## A152992.P5109317471903038969

`A046520(n+1)+A037228(n+1)`
-/

namespace A152992.P5109317471903038969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046520 (n + 1) + A037228 (n + 1)

end

end A152992.P5109317471903038969

namespace A152992

/-- `A046520(n+1)+A037228(n+1)` -/
def P5109317471903038969.Spec : Prop :=
  ∀ n, P5109317471903038969.a n = A152992 (n + 1)

end A152992

/-! ## A152992.P5791340385771756634

`A152770(n+1)+A065855(n+1)`
-/

namespace A152992.P5791340385771756634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (n + 1) + A065855 (n + 1)

end

end A152992.P5791340385771756634

namespace A152992

/-- `A152770(n+1)+A065855(n+1)` -/
def P5791340385771756634.Spec : Prop :=
  ∀ n, P5791340385771756634.a n = A152992 (n + 1)

end A152992

/-! ## A152992.P5243340183910161127

`A161911(n+1)+A064677(n+1)`
-/

namespace A152992.P5243340183910161127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161911 (n + 1) + A064677 (n + 1)

end

end A152992.P5243340183910161127

namespace A152992

/-- `A161911(n+1)+A064677(n+1)` -/
def P5243340183910161127.Spec : Prop :=
  ∀ n, P5243340183910161127.a n = A152992 (n + 1)

end A152992

/-! ## A152992.P15771492944063673449

`A000203(n+1)-A082514(n+1)`
-/

namespace A152992.P15771492944063673449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A082514 (n + 1)

end

end A152992.P15771492944063673449

namespace A152992

/-- `A000203(n+1)-A082514(n+1)` -/
def P15771492944063673449.Spec : Prop :=
  ∀ n, P15771492944063673449.a n = A152992 (n + 1)

end A152992

/-! ## A152992.P13864615130480834793

`A158901(n+1)-A036234(n+1)`
-/

namespace A152992.P13864615130480834793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158901 (n + 1) - A036234 (n + 1)

end

end A152992.P13864615130480834793

namespace A152992

/-- `A158901(n+1)-A036234(n+1)` -/
def P13864615130480834793.Spec : Prop :=
  ∀ n, P13864615130480834793.a n = A152992 (n + 1)

end A152992

/-! ## A152992.P216627555294364351

`A255385(n+1)-A082515(n+1)`
-/

namespace A152992.P216627555294364351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255385 (n + 1) - A082515 (n + 1)

end

end A152992.P216627555294364351

namespace A152992

/-- `A255385(n+1)-A082515(n+1)` -/
def P216627555294364351.Spec : Prop :=
  ∀ n, P216627555294364351.a n = A152992 (n + 1)

end A152992

/-! ## A152992.P1430493065076882953

`A256885(n+1)-A344622(n+1)`
-/

namespace A152992.P1430493065076882953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256885 (n + 1) - A344622 (n + 1)

end

end A152992.P1430493065076882953

namespace A152992

/-- `A256885(n+1)-A344622(n+1)` -/
def P1430493065076882953.Spec : Prop :=
  ∀ n, P1430493065076882953.a n = A152992 (n + 1)

end A152992

/-! ## A152992.P139890497070905159

`A001065(n+1)+A152993(n+1)-1`
-/

namespace A152992.P139890497070905159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A152993 (n + 1) - 1)

end

end A152992.P139890497070905159

namespace A152992

/-- `A001065(n+1)+A152993(n+1)-1` -/
def P139890497070905159.Spec : Prop :=
  ∀ n, P139890497070905159.a n = A152992 (n + 1)

end A152992

/-! ## A152992.P7513125247978862844

`A152770(n+1)-A000720(n+1)+n`
-/

namespace A152992.P7513125247978862844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (n + 1) - A000720 (n + 1) + (n : ℤ)

end

end A152992.P7513125247978862844

namespace A152992

/-- `A152770(n+1)-A000720(n+1)+n` -/
def P7513125247978862844.Spec : Prop :=
  ∀ n, P7513125247978862844.a n = A152992 (n + 1)

end A152992

/-! ## A152992.P13113264346970760027

`A001223(n+1)+A064677(n+1)-A000005(n+1)`
-/

namespace A152992.P13113264346970760027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + (A064677 (n + 1) - A000005 (n + 1))

end

end A152992.P13113264346970760027

namespace A152992

/-- `A001223(n+1)+A064677(n+1)-A000005(n+1)` -/
def P13113264346970760027.Spec : Prop :=
  ∀ n, P13113264346970760027.a n = A152992 (n + 1)

end A152992

/-! ## A152992.P5755045323963068515

`A065608(n+1)+A152991(n+1)-A000203(n+1)`
-/

namespace A152992.P5755045323963068515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (n + 1) + (A152991 (n + 1) - A000203 (n + 1))

end

end A152992.P5755045323963068515

namespace A152992

/-- `A065608(n+1)+A152991(n+1)-A000203(n+1)` -/
def P5755045323963068515.Spec : Prop :=
  ∀ n, P5755045323963068515.a n = A152992 (n + 1)

end A152992

/-! ## A152992.P11153458013868635972

`A000720(A067161(n+1))-(A000720(n+1)+A000005(n+1))`
-/

namespace A152992.P11153458013868635972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A067161 (n + 1)).toNat - (A000720 (n + 1) + A000005 (n + 1))

end

end A152992.P11153458013868635972

namespace A152992

/-- `A000720(A067161(n+1))-(A000720(n+1)+A000005(n+1))` -/
def P11153458013868635972.Spec : Prop :=
  ∀ n, P11153458013868635972.a n = A152992 (n + 1)

end A152992

/-!
# A152993: a(n) = n - d(n) - pi(n) + 1.

The programs for A152993, the canonical program `A152993.P12919101211208490526` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152993 has offset 1).

The definition of A152993 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152993.P976205283698499441

`2-A082514(n+1)+n`
-/

namespace A152993.P976205283698499441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A082514 (n + 1) + (n : ℤ)

end

end A152993.P976205283698499441

namespace A152993

/-- `2-A082514(n+1)+n` -/
def P976205283698499441.Spec : Prop :=
  ∀ n, P976205283698499441.a n = A152993 (n + 1)

end A152993

/-! ## A152993.P2243263045631802135

`A045763(n+1)+A037228(n+1)`
-/

namespace A152993.P2243263045631802135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (n + 1) + A037228 (n + 1)

end

end A152993.P2243263045631802135

namespace A152993

/-- `A045763(n+1)+A037228(n+1)` -/
def P2243263045631802135.Spec : Prop :=
  ∀ n, P2243263045631802135.a n = A152993 (n + 1)

end A152993

/-! ## A152993.P12919101211208490526

`A226982(n+1)+A003165(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A152993

/-- `A226982(n+1)+A003165(n+1)` -/
def P12919101211208490526.Spec : Prop :=
  ∀ n, P12919101211208490526.a n = A152993 (n + 1)

theorem P12919101211208490526.correct : P12919101211208490526.Spec := by
  intro n
  simp only [A152993, Nat.add_sub_cancel]

end A152993

/-! ## A152993.P8015919463291290129

`A378216(n+1)+A065855(n+1)`
-/

namespace A152993.P8015919463291290129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378216 (n + 1) + A065855 (n + 1)

end

end A152993.P8015919463291290129

namespace A152993

/-- `A378216(n+1)+A065855(n+1)` -/
def P8015919463291290129.Spec : Prop :=
  ∀ n, P8015919463291290129.a n = A152993 (n + 1)

end A152993

/-! ## A152993.P15186294424093834276

`A062968(n+1)-A000720(n+1)`
-/

namespace A152993.P15186294424093834276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062968 (n + 1) - A000720 (n + 1)

end

end A152993.P15186294424093834276

namespace A152993

/-- `A062968(n+1)-A000720(n+1)` -/
def P15186294424093834276.Spec : Prop :=
  ∀ n, P15186294424093834276.a n = A152993 (n + 1)

end A152993

/-! ## A152993.P11304795573799023878

`A059292(n+1)-A036234(n+1)`
-/

namespace A152993.P11304795573799023878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059292 (n + 1) - A036234 (n + 1)

end

end A152993.P11304795573799023878

namespace A152993

/-- `A059292(n+1)-A036234(n+1)` -/
def P11304795573799023878.Spec : Prop :=
  ∀ n, P11304795573799023878.a n = A152993 (n + 1)

end A152993

/-! ## A152993.P15963110835461723248

`A062298(n+1)+1-Δ[A006218(n)]`
-/

namespace A152993.P15963110835461723248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) + (1 - (f1 (n + 1) - f1 n))

end

end A152993.P15963110835461723248

namespace A152993

/-- `A062298(n+1)+1-Δ[A006218(n)]` -/
def P15963110835461723248.Spec : Prop :=
  ∀ n, P15963110835461723248.a n = A152993 (n + 1)

end A152993

/-! ## A152993.P6675008629848842342

`A049820(n+1)+1-A000720(n+1)`
-/

namespace A152993.P6675008629848842342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) + (1 - A000720 (n + 1))

end

end A152993.P6675008629848842342

namespace A152993

/-- `A049820(n+1)+1-A000720(n+1)` -/
def P6675008629848842342.Spec : Prop :=
  ∀ n, P6675008629848842342.a n = A152993 (n + 1)

end A152993

/-! ## A152993.P11960457637147678447

`A062298(n+1)+1-A000005(n+1)`
-/

namespace A152993.P11960457637147678447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) + (1 - A000005 (n + 1))

end

end A152993.P11960457637147678447

namespace A152993

/-- `A062298(n+1)+1-A000005(n+1)` -/
def P11960457637147678447.Spec : Prop :=
  ∀ n, P11960457637147678447.a n = A152993 (n + 1)

end A152993

/-! ## A152993.P8840109720099747492

`A152992(n+1)+1-A001065(n+1)`
-/

namespace A152993.P8840109720099747492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152992 (n + 1) + (1 - A001065 (n + 1))

end

end A152993.P8840109720099747492

namespace A152993

/-- `A152992(n+1)+1-A001065(n+1)` -/
def P8840109720099747492.Spec : Prop :=
  ∀ n, P8840109720099747492.a n = A152993 (n + 1)

end A152993

/-! ## A152993.P13539088941948711260

`A279436(n+1)+1-A001221(n+1)`
-/

namespace A152993.P13539088941948711260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279436 (n + 1) + (1 - A001221 (n + 1))

end

end A152993.P13539088941948711260

namespace A152993

/-- `A279436(n+1)+1-A001221(n+1)` -/
def P13539088941948711260.Spec : Prop :=
  ∀ n, P13539088941948711260.a n = A152993 (n + 1)

end A152993

/-! ## A152993.P967630589624699772

`A065855(n+1)+2-A000005(n+1)`
-/

namespace A152993.P967630589624699772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (n + 1) + (2 - A000005 (n + 1))

end

end A152993.P967630589624699772

namespace A152993

/-- `A065855(n+1)+2-A000005(n+1)` -/
def P967630589624699772.Spec : Prop :=
  ∀ n, P967630589624699772.a n = A152993 (n + 1)

end A152993

/-! ## A152993.P12437750726225205278

`A049820(n+1)+A062298(n+1)-n`
-/

namespace A152993.P12437750726225205278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) + (A062298 (n + 1) - (n : ℤ))

end

end A152993.P12437750726225205278

namespace A152993

/-- `A049820(n+1)+A062298(n+1)-n` -/
def P12437750726225205278.Spec : Prop :=
  ∀ n, P12437750726225205278.a n = A152993 (n + 1)

end A152993

/-! ## A152993.P6046616295747145995

`A279436(n+1)+A378993(n+1)-n`
-/

namespace A152993.P6046616295747145995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279436 (n + 1) + (A378993 (n + 1) - (n : ℤ))

end

end A152993.P6046616295747145995

namespace A152993

/-- `A279436(n+1)+A378993(n+1)-n` -/
def P6046616295747145995.Spec : Prop :=
  ∀ n, P6046616295747145995.a n = A152993 (n + 1)

end A152993

/-! ## A152993.P9919107289897633018

`∑[A005171(n+1)]+1-A000005(n+1)`
-/

namespace A152993.P9919107289897633018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A000005 (n + 1))

end

end A152993.P9919107289897633018

namespace A152993

/-- `∑[A005171(n+1)]+1-A000005(n+1)` -/
def P9919107289897633018.Spec : Prop :=
  ∀ n, P9919107289897633018.a n = A152993 (n + 1)

end A152993

/-! ## A152993.P16914470436492914429

`2-(A000720(n+1)+A000005(n+1))+n`
-/

namespace A152993.P16914470436492914429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A000720 (n + 1) + A000005 (n + 1)) + (n : ℤ)

end

end A152993.P16914470436492914429

namespace A152993

/-- `2-(A000720(n+1)+A000005(n+1))+n` -/
def P16914470436492914429.Spec : Prop :=
  ∀ n, P16914470436492914429.a n = A152993 (n + 1)

end A152993

/-! ## A152993.P13096861145453170235

`2-(∑[char[A000040(n+1)-1]]+A000005(n+1))+n`
-/

namespace A152993.P13096861145453170235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A000005 (n + 1)) + (n : ℤ)

end

end A152993.P13096861145453170235

namespace A152993

/-- `2-(∑[char[A000040(n+1)-1]]+A000005(n+1))+n` -/
def P13096861145453170235.Spec : Prop :=
  ∀ n, P13096861145453170235.a n = A152993 (n + 1)

end A152993

/-! ## A152993.P3982099772921028687

`A000010(n+1)+A045763(n+1)-A000720(n+1)`
-/

namespace A152993.P3982099772921028687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A045763 (n + 1) - A000720 (n + 1))

end

end A152993.P3982099772921028687

namespace A152993

/-- `A000010(n+1)+A045763(n+1)-A000720(n+1)` -/
def P3982099772921028687.Spec : Prop :=
  ∀ n, P3982099772921028687.a n = A152993 (n + 1)

end A152993

/-! ## A152993.P2918749200858668210

`A045763(n+1)+A063070(n+1)-A082513(n+1)`
-/

namespace A152993.P2918749200858668210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (n + 1) + (A063070 (n + 1) - A082513 (n + 1))

end

end A152993.P2918749200858668210

namespace A152993

/-- `A045763(n+1)+A063070(n+1)-A082513(n+1)` -/
def P2918749200858668210.Spec : Prop :=
  ∀ n, P2918749200858668210.a n = A152993 (n + 1)

end A152993

/-!
# A152994: Nine times hexagonal numbers: a(n) = 9*n*(2*n-1).

The programs for A152994, the canonical program `A152994.P10793662552879861964` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152994 has offset 0).

The definition of A152994 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*n*(2*n-1)` (program `A152994.P10793662552879861964`, by `A152994.P10793662552879861964.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152994.P13057604580208107580

`18*n²-9*n`
-/

namespace A152994.P13057604580208107580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (18 * n ^ 2 : ℤ) - (9 * n : ℤ)

end

end A152994.P13057604580208107580

namespace A152994

/-- `18*n²-9*n` -/
def P13057604580208107580.Spec : Prop :=
  ∀ n, P13057604580208107580.a n = A152994 n

theorem P13057604580208107580.correct : P13057604580208107580.Spec := by
  intro n
  simp only [A152994, Nat.add_sub_cancel, A152994.P13057604580208107580.a, A152994.P10793662552879861964.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A152994

/-! ## A152994.P10793662552879861964

`9*n*(2*n-1)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A152994

/-- `9*n*(2*n-1)` -/
def P10793662552879861964.Spec : Prop :=
  ∀ n, P10793662552879861964.a n = A152994 n

theorem P10793662552879861964.correct : P10793662552879861964.Spec := by
  intro n
  simp only [A152994]

end A152994

/-! ## A152994.P16307438163400664423

`∑[a(n-1)+36]` with `a(0)=0, a(1)=9`
-/

namespace A152994.P16307438163400664423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 9] fun n f1 =>
  f1 (n - 1) + 36

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152994.P16307438163400664423

namespace A152994

/-- `∑[a(n-1)+36]` -/
def P16307438163400664423.Spec : Prop :=
  ∀ n, (P16307438163400664423.a n : ℤ) = A152994 n

end A152994

/-! ## A152994.P8737445470295617814

`A060787(n+2)/2`
-/

namespace A152994.P8737445470295617814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060787 (n + 2) : ℚ) / 2

end

end A152994.P8737445470295617814

namespace A152994

/-- `A060787(n+2)/2` -/
def P8737445470295617814.Spec : Prop :=
  ∀ n, P8737445470295617814.a n = (A152994 n : ℚ)

end A152994

/-!
# A152995: Twice 11-gonal numbers: a(n) = n*(9*n-7).

The programs for A152995, the canonical program `A152995.P15675158223399843988` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152995 has offset 0).

The definition of A152995 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(9*n-7)` (program `A152995.P15675158223399843988`, by `A152995.P15675158223399843988.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152995.P3372446362594596996

`(9*n-7)*n`
-/

namespace A152995.P3372446362594596996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((9 * n : ℤ) - 7) * (n : ℤ)

end

end A152995.P3372446362594596996

namespace A152995

/-- `(9*n-7)*n` -/
def P3372446362594596996.Spec : Prop :=
  ∀ n, P3372446362594596996.a n = A152995 n

theorem P3372446362594596996.correct : P3372446362594596996.Spec := by
  intro n
  simp only [A152995, Nat.add_sub_cancel, A152995.P3372446362594596996.a, A152995.P15675158223399843988.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A152995

/-! ## A152995.P15675158223399843988

`n*(9*n-7)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A152995

/-- `n*(9*n-7)` -/
def P15675158223399843988.Spec : Prop :=
  ∀ n, P15675158223399843988.a n = A152995 n

theorem P15675158223399843988.correct : P15675158223399843988.Spec := by
  intro n
  simp only [A152995]

end A152995

/-! ## A152995.P12344384280648310857

`∑[a(n-1)+18]` with `a(0)=0, a(1)=2`
-/

namespace A152995.P12344384280648310857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152995.P12344384280648310857

namespace A152995

/-- `∑[a(n-1)+18]` -/
def P12344384280648310857.Spec : Prop :=
  ∀ n, (P12344384280648310857.a n : ℤ) = A152995 n

end A152995

/-! ## A152995.P10514499978263888018

`16-∑[a(n-1)-18]` with `a(0)=16`
-/

namespace A152995.P10514499978263888018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [16] fun n f1 =>
  f1 (n - 1) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152995.P10514499978263888018

namespace A152995

/-- `16-∑[a(n-1)-18]` -/
def P10514499978263888018.Spec : Prop :=
  ∀ n, P10514499978263888018.a n = A152995 n

end A152995

/-! ## A152995.P34222441445541220

`∑[n]+17*C(n, 2)+n`
-/

namespace A152995.P34222441445541220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (17 * Nat.choose n 2 + n)

end

end A152995.P34222441445541220

namespace A152995

/-- `∑[n]+17*C(n, 2)+n` -/
def P34222441445541220.Spec : Prop :=
  ∀ n, (P34222441445541220.a n : ℤ) = A152995 n

end A152995

/-! ## A152995.P12503004774698307836

`4*(9*C(n, 2)+n)/2`
-/

namespace A152995.P12503004774698307836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * (9 * Nat.choose n 2 + n) : ℚ) / 2

end

end A152995.P12503004774698307836

namespace A152995

/-- `4*(9*C(n, 2)+n)/2` -/
def P12503004774698307836.Spec : Prop :=
  ∀ n, P12503004774698307836.a n = (A152995 n : ℚ)

end A152995

/-! ## A152995.P9646867709080172785

`((n-1)²-lcm(n, n+1))²-(n+1)`
-/

namespace A152995.P9646867709080172785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) ^ 2 - (Nat.lcm n (n + 1) : ℤ)) ^ 2 - (n + 1 : ℤ)

end

end A152995.P9646867709080172785

namespace A152995

/-- `((n-1)²-lcm(n, n+1))²-(n+1)` -/
def P9646867709080172785.Spec : Prop :=
  ∀ n, P9646867709080172785.a n = A152995 n

end A152995

/-! ## A152995.P370237617046108627

`A051872(n)+n`
-/

namespace A152995.P370237617046108627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051872 n + (n : ℤ)

end

end A152995.P370237617046108627

namespace A152995

/-- `A051872(n)+n` -/
def P370237617046108627.Spec : Prop :=
  ∀ n, P370237617046108627.a n = A152995 n

end A152995

/-! ## A152995.P18301356722973459693

`A152751(n)-n`
-/

namespace A152995.P18301356722973459693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152751 n - (n : ℤ)

end

end A152995.P18301356722973459693

namespace A152995

/-- `A152751(n)-n` -/
def P18301356722973459693.Spec : Prop :=
  ∀ n, P18301356722973459693.a n = A152995 n

end A152995

/-! ## A152995.P10538784478590226020

`∑[A298035(n)-1]`
-/

namespace A152995.P10538784478590226020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298035 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152995.P10538784478590226020

namespace A152995

/-- `∑[A298035(n)-1]` -/
def P10538784478590226020.Spec : Prop :=
  ∀ n, P10538784478590226020.a n = A152995 n

end A152995

/-! ## A152995.P1473936702296787361

`A051870(n)+n²`
-/

namespace A152995.P1473936702296787361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051870 n + (n ^ 2 : ℤ)

end

end A152995.P1473936702296787361

namespace A152995

/-- `A051870(n)+n²` -/
def P1473936702296787361.Spec : Prop :=
  ∀ n, P1473936702296787361.a n = A152995 n

end A152995

/-! ## A152995.P5698323972257688245

`A051871(n)+∑[n]`
-/

namespace A152995.P5698323972257688245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051871 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A152995.P5698323972257688245

namespace A152995

/-- `A051871(n)+∑[n]` -/
def P5698323972257688245.Spec : Prop :=
  ∀ n, P5698323972257688245.a n = A152995 n

end A152995

/-! ## A152995.P17369409658836536974

`A154254(n)-2+n`
-/

namespace A152995.P17369409658836536974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154254 n - 2 + (n : ℤ)

end

end A152995.P17369409658836536974

namespace A152995

/-- `A154254(n)-2+n` -/
def P17369409658836536974.Spec : Prop :=
  ∀ n, P17369409658836536974.a n = A152995 n

end A152995

/-! ## A152995.P13658832514690556947

`3*A000567(n)-n`
-/

namespace A152995.P13658832514690556947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000567 n - (n : ℤ)

end

end A152995.P13658832514690556947

namespace A152995

/-- `3*A000567(n)-n` -/
def P13658832514690556947.Spec : Prop :=
  ∀ n, P13658832514690556947.a n = A152995 n

end A152995

/-! ## A152995.P10119341817512225353

`A153796(n)/2-n`
-/

namespace A152995.P10119341817512225353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153796 n : ℚ) / 2 - (n : ℚ)

end

end A152995.P10119341817512225353

namespace A152995

/-- `A153796(n)/2-n` -/
def P10119341817512225353.Spec : Prop :=
  ∀ n, P10119341817512225353.a n = (A152995 n : ℚ)

end A152995

/-! ## A152995.P13149397842212895395

`A064201(n)/3-n`
-/

namespace A152995.P13149397842212895395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064201 n : ℚ) / 3 - (n : ℚ)

end

end A152995.P13149397842212895395

namespace A152995

/-- `A064201(n)/3-n` -/
def P13149397842212895395.Spec : Prop :=
  ∀ n, P13149397842212895395.a n = (A152995 n : ℚ)

end A152995

/-! ## A152995.P524610097563616037

`A152743(n)-4*n`
-/

namespace A152995.P524610097563616037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152743 n - (4 * n : ℤ)

end

end A152995.P524610097563616037

namespace A152995

/-- `A152743(n)-4*n` -/
def P524610097563616037.Spec : Prop :=
  ∀ n, P524610097563616037.a n = A152995 n

end A152995

/-! ## A152995.P8411443091563975689

`A013656(n)-5*n`
-/

namespace A152995.P8411443091563975689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013656 n - (5 * n : ℤ)

end

end A152995.P8411443091563975689

namespace A152995

/-- `A013656(n)-5*n` -/
def P8411443091563975689.Spec : Prop :=
  ∀ n, P8411443091563975689.a n = A152995 n

end A152995

/-! ## A152995.P13363550843730223868

`A158186(n)-(n²+1)`
-/

namespace A152995.P13363550843730223868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158186 n - (n ^ 2 + 1 : ℤ)

end

end A152995.P13363550843730223868

namespace A152995

/-- `A158186(n)-(n²+1)` -/
def P13363550843730223868.Spec : Prop :=
  ∀ n, P13363550843730223868.a n = A152995 n

end A152995

/-!
# A152996: 9 times pentagonal numbers: 9*n*(3*n-1)/2.

The programs for A152996, the canonical program `A152996.P7906038724210804391` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152996 has offset 0).

The definition of A152996 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*n*(3*n-1)/2` (program `A152996.P18327034051056157752`, by `A152996.P18327034051056157752.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152996.P18327034051056157752

`9*n*(3*n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152996.P18327034051056157752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 * ((n : ℚ) * (((3 * n : ℤ) - 1 : ℚ) / 2))

end

end A152996.P18327034051056157752

namespace A152996

/-- `9*n*(3*n-1)/2` -/
def P18327034051056157752.Spec : Prop :=
  ∀ n, P18327034051056157752.a n = (A152996 n : ℚ)

theorem P18327034051056157752.correct : P18327034051056157752.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A152996, Nat.add_sub_cancel, A152996.P18327034051056157752.a, A152996.P7906038724210804391.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A152996, Nat.add_sub_cancel, A152996.P18327034051056157752.a, A152996.P7906038724210804391.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A152996

/-! ## A152996.P7906038724210804391

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=9, a(2)=45`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A152996

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P7906038724210804391.Spec : Prop :=
  ∀ n, P7906038724210804391.a n = A152996 n

theorem P7906038724210804391.correct : P7906038724210804391.Spec := by
  intro n
  simp only [A152996]

end A152996

/-! ## A152996.P7328925281195947547

`∑[a(n-1)+27]` with `a(0)=0, a(1)=9`
-/

namespace A152996.P7328925281195947547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 9] fun n f1 =>
  f1 (n - 1) + 27

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152996.P7328925281195947547

namespace A152996

/-- `∑[a(n-1)+27]` -/
def P7328925281195947547.Spec : Prop :=
  ∀ n, (P7328925281195947547.a n : ℤ) = A152996 n

end A152996

/-! ## A152996.P8053977305519172405

`A195023(n)-∑[n]`
-/

namespace A152996.P8053977305519172405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195023 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A152996.P8053977305519172405

namespace A152996

/-- `A195023(n)-∑[n]` -/
def P8053977305519172405.Spec : Prop :=
  ∀ n, P8053977305519172405.a n = A152996 n

end A152996

/-! ## A152996.P2520610983971844133

`A268351(n)-3*n`
-/

namespace A152996.P2520610983971844133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268351 n - (3 * n : ℤ)

end

end A152996.P2520610983971844133

namespace A152996

/-- `A268351(n)-3*n` -/
def P2520610983971844133.Spec : Prop :=
  ∀ n, P2520610983971844133.a n = A152996 n

end A152996

/-! ## A152996.P5955111866850988551

`A022284(n)-4*n`
-/

namespace A152996.P5955111866850988551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022284 n - (4 * n : ℤ)

end

end A152996.P5955111866850988551

namespace A152996

/-- `A022284(n)-4*n` -/
def P5955111866850988551.Spec : Prop :=
  ∀ n, P5955111866850988551.a n = A152996 n

end A152996

/-! ## A152996.P4004505084292075515

`A022285(n)-5*n`
-/

namespace A152996.P4004505084292075515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022285 n - (5 * n : ℤ)

end

end A152996.P4004505084292075515

namespace A152996

/-- `A022285(n)-5*n` -/
def P4004505084292075515.Spec : Prop :=
  ∀ n, P4004505084292075515.a n = A152996 n

end A152996

/-! ## A152996.P18214937572208282803

`A185019(n)-(∑[n]+n)`
-/

namespace A152996.P18214937572208282803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185019 n - ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ)

end

end A152996.P18214937572208282803

namespace A152996

/-- `A185019(n)-(∑[n]+n)` -/
def P18214937572208282803.Spec : Prop :=
  ∀ n, P18214937572208282803.a n = A152996 n

end A152996

/-! ## A152996.P3806744330397102670

`3*(A054552(n)+∑[n]+n)-3`
-/

namespace A152996.P3806744330397102670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A054552 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n : ℤ)) - 3

end

end A152996.P3806744330397102670

namespace A152996

/-- `3*(A054552(n)+∑[n]+n)-3` -/
def P3806744330397102670.Spec : Prop :=
  ∀ n, P3806744330397102670.a n = A152996 n

end A152996

/-! ## A152996.P3926976206421961734

`A014642(n)+A000326(n)`
-/

namespace A152996.P3926976206421961734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014642 n + A000326 n

end

end A152996.P3926976206421961734

namespace A152996

/-- `A014642(n)+A000326(n)` -/
def P3926976206421961734.Spec : Prop :=
  ∀ n, P3926976206421961734.a n = A152996 n

end A152996

/-! ## A152996.P3957348206957856241

`A051624(n)+A022274(n)`
-/

namespace A152996.P3957348206957856241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051624 n + A022274 n

end

end A152996.P3957348206957856241

namespace A152996

/-- `A051624(n)+A022274(n)` -/
def P3957348206957856241.Spec : Prop :=
  ∀ n, P3957348206957856241.a n = A152996 n

end A152996

/-! ## A152996.P12259157907981436674

`A051866(n)+A022273(n)`
-/

namespace A152996.P12259157907981436674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051866 n + A022273 n

end

end A152996.P12259157907981436674

namespace A152996

/-- `A051866(n)+A022273(n)` -/
def P12259157907981436674.Spec : Prop :=
  ∀ n, P12259157907981436674.a n = A152996 n

end A152996

/-! ## A152996.P2508686275163211723

`A062708(n)+A013656(n)`
-/

namespace A152996.P2508686275163211723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062708 n + A013656 n

end

end A152996.P2508686275163211723

namespace A152996

/-- `A062708(n)+A013656(n)` -/
def P2508686275163211723.Spec : Prop :=
  ∀ n, P2508686275163211723.a n = A152996 n

end A152996

/-! ## A152996.P14389074125929606229

`A051869(n)+A033580(n)`
-/

namespace A152996.P14389074125929606229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051869 n + A033580 n

end

end A152996.P14389074125929606229

namespace A152996

/-- `A051869(n)+A033580(n)` -/
def P14389074125929606229.Spec : Prop :=
  ∀ n, P14389074125929606229.a n = A152996 n

end A152996

/-! ## A152996.P8364330244872880556

`A051873(n)+A033996(n)`
-/

namespace A152996.P8364330244872880556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051873 n + A033996 n

end

end A152996.P8364330244872880556

namespace A152996

/-- `A051873(n)+A033996(n)` -/
def P8364330244872880556.Spec : Prop :=
  ∀ n, P8364330244872880556.a n = A152996 n

end A152996

/-! ## A152996.P14959050529872190576

`A080857(n)+A014209(n)`
-/

namespace A152996.P14959050529872190576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080857 n + A014209 n

end

end A152996.P14959050529872190576

namespace A152996

/-- `A080857(n)+A014209(n)` -/
def P14959050529872190576.Spec : Prop :=
  ∀ n, P14959050529872190576.a n = A152996 n

end A152996

/-! ## A152996.P15063249719294297915

`A085250(n)+A022268(n)`
-/

namespace A152996.P15063249719294297915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085250 n + A022268 n

end

end A152996.P15063249719294297915

namespace A152996

/-- `A085250(n)+A022268(n)` -/
def P15063249719294297915.Spec : Prop :=
  ∀ n, P15063249719294297915.a n = A152996 n

end A152996

/-! ## A152996.P12034520851531280134

`A062728(n)+A051872(n)`
-/

namespace A152996.P12034520851531280134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062728 n + A051872 n

end

end A152996.P12034520851531280134

namespace A152996

/-- `A062728(n)+A051872(n)` -/
def P12034520851531280134.Spec : Prop :=
  ∀ n, P12034520851531280134.a n = A152996 n

end A152996

/-! ## A152996.P5368472427485967761

`A092277(n)+A051867(n)`
-/

namespace A152996.P5368472427485967761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092277 n + A051867 n

end

end A152996.P5368472427485967761

namespace A152996

/-- `A092277(n)+A051867(n)` -/
def P5368472427485967761.Spec : Prop :=
  ∀ n, P5368472427485967761.a n = A152996 n

end A152996

/-! ## A152996.P9112848656533034786

`A139267(n)+A022272(n)`
-/

namespace A152996.P9112848656533034786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139267 n + A022272 n

end

end A152996.P9112848656533034786

namespace A152996

/-- `A139267(n)+A022272(n)` -/
def P9112848656533034786.Spec : Prop :=
  ∀ n, P9112848656533034786.a n = A152996 n

end A152996

/-!
# A152997: Twice 13-gonal numbers: a(n) = n*(11*n - 9).

The programs for A152997, the canonical program `A152997.P11215865166906993200` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152997 has offset 0).

The definition of A152997 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(11*n-9)` (program `A152997.P11215865166906993200`, by `A152997.P11215865166906993200.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152997.P44625039171264698

`(11*n-9)*n`
-/

namespace A152997.P44625039171264698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((11 * n : ℤ) - 9) * (n : ℤ)

end

end A152997.P44625039171264698

namespace A152997

/-- `(11*n-9)*n` -/
def P44625039171264698.Spec : Prop :=
  ∀ n, P44625039171264698.a n = A152997 n

theorem P44625039171264698.correct : P44625039171264698.Spec := by
  intro n
  simp only [A152997, Nat.add_sub_cancel, A152997.P44625039171264698.a, A152997.P11215865166906993200.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A152997

/-! ## A152997.P11215865166906993200

`n*(11*n-9)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A152997

/-- `n*(11*n-9)` -/
def P11215865166906993200.Spec : Prop :=
  ∀ n, P11215865166906993200.a n = A152997 n

theorem P11215865166906993200.correct : P11215865166906993200.Spec := by
  intro n
  simp only [A152997]

end A152997

/-! ## A152997.P5400961539686197085

`∑[a(n-1)+22]` with `a(0)=0, a(1)=2`
-/

namespace A152997.P5400961539686197085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + 22

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152997.P5400961539686197085

namespace A152997

/-- `∑[a(n-1)+22]` -/
def P5400961539686197085.Spec : Prop :=
  ∀ n, (P5400961539686197085.a n : ℤ) = A152997 n

end A152997

/-! ## A152997.P7085678098762525238

`A051876(n)+n`
-/

namespace A152997.P7085678098762525238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051876 n + (n : ℤ)

end

end A152997.P7085678098762525238

namespace A152997

/-- `A051876(n)+n` -/
def P7085678098762525238.Spec : Prop :=
  ∀ n, P7085678098762525238.a n = A152997 n

end A152997

/-! ## A152997.P17957562789825762509

`A051874(n)+n²`
-/

namespace A152997.P17957562789825762509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051874 n + (n ^ 2 : ℤ)

end

end A152997.P17957562789825762509

namespace A152997

/-- `A051874(n)+n²` -/
def P17957562789825762509.Spec : Prop :=
  ∀ n, P17957562789825762509.a n = A152997 n

end A152997

/-! ## A152997.P3478190180808990417

`A152767(n)-n²`
-/

namespace A152997.P3478190180808990417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152767 n - (n ^ 2 : ℤ)

end

end A152997.P3478190180808990417

namespace A152997

/-- `A152767(n)-n²` -/
def P3478190180808990417.Spec : Prop :=
  ∀ n, P3478190180808990417.a n = A152997 n

end A152997

/-! ## A152997.P4220133027937050413

`A051875(n)+∑[n]`
-/

namespace A152997.P4220133027937050413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051875 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A152997.P4220133027937050413

namespace A152997

/-- `A051875(n)+∑[n]` -/
def P4220133027937050413.Spec : Prop :=
  ∀ n, P4220133027937050413.a n = A152997 n

end A152997

/-! ## A152997.P13629319535087426419

`A033578(n)-(n+1)²`
-/

namespace A152997.P13629319535087426419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033578 n - ((n + 1) ^ 2 : ℤ)

end

end A152997.P13629319535087426419

namespace A152997

/-- `A033578(n)-(n+1)²` -/
def P13629319535087426419.Spec : Prop :=
  ∀ n, P13629319535087426419.a n = A152997 n

end A152997

/-! ## A152997.P12038172355465880248

`A051873(n)+A000326(n)`
-/

namespace A152997.P12038172355465880248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051873 n + A000326 n

end

end A152997.P12038172355465880248

namespace A152997

/-- `A051873(n)+A000326(n)` -/
def P12038172355465880248.Spec : Prop :=
  ∀ n, P12038172355465880248.a n = A152997 n

end A152997

/-! ## A152997.P3473552032694047809

`A051872(n)+A000384(n)`
-/

namespace A152997.P3473552032694047809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051872 n + A000384 n

end

end A152997.P3473552032694047809

namespace A152997

/-- `A051872(n)+A000384(n)` -/
def P3473552032694047809.Spec : Prop :=
  ∀ n, P3473552032694047809.a n = A152997 n

end A152997

/-! ## A152997.P4011946962793934301

`A051870(n)+A000567(n)`
-/

namespace A152997.P4011946962793934301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051870 n + A000567 n

end

end A152997.P4011946962793934301

namespace A152997

/-- `A051870(n)+A000567(n)` -/
def P4011946962793934301.Spec : Prop :=
  ∀ n, P4011946962793934301.a n = A152997 n

end A152997

/-! ## A152997.P12899345467509423078

`A051871(n)+A000566(n)`
-/

namespace A152997.P12899345467509423078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051871 n + A000566 n

end

end A152997.P12899345467509423078

namespace A152997

/-- `A051871(n)+A000566(n)` -/
def P12899345467509423078.Spec : Prop :=
  ∀ n, P12899345467509423078.a n = A152997 n

end A152997

/-! ## A152997.P17051455823780108182

`A051868(n)+A001107(n)`
-/

namespace A152997.P17051455823780108182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051868 n + A001107 n

end

end A152997.P17051455823780108182

namespace A152997

/-- `A051868(n)+A001107(n)` -/
def P17051455823780108182.Spec : Prop :=
  ∀ n, P17051455823780108182.a n = A152997 n

end A152997

/-! ## A152997.P1119055075544034835

`A051869(n)+A001106(n)`
-/

namespace A152997.P1119055075544034835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051869 n + A001106 n

end

end A152997.P1119055075544034835

namespace A152997

/-- `A051869(n)+A001106(n)` -/
def P1119055075544034835.Spec : Prop :=
  ∀ n, P1119055075544034835.a n = A152997 n

end A152997

/-! ## A152997.P11882169595188745431

`A051866(n)+A051624(n)`
-/

namespace A152997.P11882169595188745431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051866 n + A051624 n

end

end A152997.P11882169595188745431

namespace A152997

/-- `A051866(n)+A051624(n)` -/
def P11882169595188745431.Spec : Prop :=
  ∀ n, P11882169595188745431.a n = A152997 n

end A152997

/-! ## A152997.P5554323331735471170

`A051867(n)+A051682(n)`
-/

namespace A152997.P5554323331735471170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051867 n + A051682 n

end

end A152997.P5554323331735471170

namespace A152997

/-- `A051867(n)+A051682(n)` -/
def P5554323331735471170.Spec : Prop :=
  ∀ n, P5554323331735471170.a n = A152997 n

end A152997

/-! ## A152997.P8395477284566232544

`A152751(n)+A014107(n)`
-/

namespace A152997.P8395477284566232544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152751 n + A014107 n

end

end A152997.P8395477284566232544

namespace A152997

/-- `A152751(n)+A014107(n)` -/
def P8395477284566232544.Spec : Prop :=
  ∀ n, P8395477284566232544.a n = A152997 n

end A152997

/-! ## A152997.P10027420801612959003

`A226491(n)+A161680(n)`
-/

namespace A152997.P10027420801612959003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226491 n + A161680 n

end

end A152997.P10027420801612959003

namespace A152997

/-- `A226491(n)+A161680(n)` -/
def P10027420801612959003.Spec : Prop :=
  ∀ n, P10027420801612959003.a n = A152997 n

end A152997

/-! ## A152997.P14267027216990388978

`A033584(n)-A008591(n)`
-/

namespace A152997.P14267027216990388978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033584 n - A008591 n

end

end A152997.P14267027216990388978

namespace A152997

/-- `A033584(n)-A008591(n)` -/
def P14267027216990388978.Spec : Prop :=
  ∀ n, P14267027216990388978.a n = A152997 n

end A152997

/-! ## A152997.P17751167622740412036

`A014642(n)-A028557(n)`
-/

namespace A152997.P17751167622740412036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014642 n - A028557 n

end

end A152997.P17751167622740412036

namespace A152997

/-- `A014642(n)-A028557(n)` -/
def P17751167622740412036.Spec : Prop :=
  ∀ n, P17751167622740412036.a n = A152997 n

end A152997

/-!
# A152998: Toothpick sequence on the semi-infinite square grid.

The programs for A152998, there is no canonical definition to state claims against.
-/

/-! ## A152998.P10041826291009494750

`(A139250(n+1)-1)/2`
-/

namespace A152998.P10041826291009494750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139250 (n + 1) - 1 : ℚ) / 2

end

end A152998.P10041826291009494750

/-! ## A152998.P3019902539956566264

`(A187220(n+2)-3)/4`
-/

namespace A152998.P3019902539956566264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187220 (n + 2) - 3 : ℚ) / 4

end

end A152998.P3019902539956566264

/-! ## A152998.P2086212561683851720

`∑[A162777(n)]+n`
-/

namespace A152998.P2086212561683851720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A152998.P2086212561683851720

/-! ## A152998.P10485128481574411655

`floor(Δ[A160424(n)/2])`
-/

namespace A152998.P10485128481574411655
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160424 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A152998.P10485128481574411655

/-! ## A152998.P5793869519134964558

`floor(A139250(n+1)/2)`
-/

namespace A152998.P5793869519134964558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139250 (n + 1) : ℚ) / 2⌋

end

end A152998.P5793869519134964558

/-! ## A152998.P2877404925819300130

`∑[floor(A139251(n+1)/2)]`
-/

namespace A152998.P2877404925819300130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139251 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152998.P2877404925819300130

/-! ## A152998.P17590194010658355422

`2*A153006(n)-A139250(n)`
-/

namespace A152998.P17590194010658355422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153006 n - A139250 n

end

end A152998.P17590194010658355422

/-! ## A152998.P14571063368337006177

`A159793(n)-A139250(n)`
-/

namespace A152998.P14571063368337006177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159793 n - A139250 n

end

end A152998.P14571063368337006177

/-! ## A152998.P6204264942041052101

`A159794(n)-(A153006(n)+A139250(n))`
-/

namespace A152998.P6204264942041052101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159794 n - (A153006 n + A139250 n)

end

end A152998.P6204264942041052101

/-! ## A152998.P9152293251955730950

`floor(A266530(2*n+3)/2)`
-/

namespace A152998.P9152293251955730950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A266530 (2 * n + 3) : ℚ) / 2⌋

end

end A152998.P9152293251955730950

/-! ## A152998.P442907912684751008

`A151549(n)+A255747(n)-A160552(n)`
-/

namespace A152998.P442907912684751008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151549 n + (A255747 n - A160552 n)

end

end A152998.P442907912684751008

/-! ## A152998.P5849618713770929141

`∑[A025480(Δ[A139250(n)])]`
-/

namespace A152998.P5849618713770929141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152998.P5849618713770929141

/-! ## A152998.P9846401421722645189

`∑[A004526(A139251(n+1))]`
-/

namespace A152998.P9846401421722645189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A139251 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152998.P9846401421722645189

/-! ## A152998.P2057181407156251094

`∑[A004524(A139251(n+1)+1)]`
-/

namespace A152998.P2057181407156251094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A139251 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152998.P2057181407156251094

/-! ## A152998.P12534369970652569356

`∑[A002265(2*A139251(n+1))]`
-/

namespace A152998.P12534369970652569356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A139251 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152998.P12534369970652569356

/-! ## A152998.P865533812939226901

`and(A000918(n+1), A139250(n+1))/2`
-/

namespace A152998.P865533812939226901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A000918 (n + 1)) (A139250 (n + 1)) : ℚ) / 2

end

end A152998.P865533812939226901

/-! ## A152998.P1730600295603728369

`A175126(A139250(n+1)-1)`
-/

namespace A152998.P1730600295603728369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A139250 (n + 1) - 1).toNat

end

end A152998.P1730600295603728369

/-! ## A152998.P17594416198658862103

`A004524(A139250(n+1))`
-/

namespace A152998.P17594416198658862103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A139250 (n + 1)).toNat

end

end A152998.P17594416198658862103

/-! ## A152998.P8492949111680379111

`A004524(∑[A139251(n+1)])`
-/

namespace A152998.P8492949111680379111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152998.P8492949111680379111

/-! ## A152998.P831024022301356479

`A002265(A160164(n+1))`
-/

namespace A152998.P831024022301356479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A160164 (n + 1)).toNat

end

end A152998.P831024022301356479

/-!
# A152999: Primes in toothpick sequence A152998.

The programs for A152999, there is no canonical definition to state claims against.
-/

/-! ## A152999.P3689077291308381015

`p?[A152998(n)]`
-/

namespace A152999.P3689077291308381015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152999.P3689077291308381015

/-! ## A152999.P404155380455080532

`p?[floor(A139250(n)/2)]`
-/

namespace A152999.P404155380455080532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139250 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152999.P404155380455080532

/-! ## A152999.P14713942318497518144

`p?[floor(A160164(n)/4)]`
-/

namespace A152999.P14713942318497518144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160164 n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152999.P14713942318497518144

/-! ## A152999.P445384462007628503

`p?[floor(A187220(n)/4)]`
-/

namespace A152999.P445384462007628503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A187220 n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152999.P445384462007628503

/-! ## A152999.P9854533572761140227

`p?[∑[A152968(n+1)]]`
-/

namespace A152999.P9854533572761140227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152968 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152999.P9854533572761140227

/-! ## A152999.P18053459649760241512

`p?[2*A153000(n)+1]`
-/

namespace A152999.P18053459649760241512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153000 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152999.P18053459649760241512

/-! ## A152999.P12460137864013168928

`record[A006530(A152998(n+2))]`
-/

namespace A152999.P12460137864013168928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A152998 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152999.P12460137864013168928

