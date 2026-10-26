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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A324301: a(n) = [x^(n^2)] Sum_{m>=0} x^m * (x^(m+1) + i)^m / (1 + i*x^(m+1))^(m+1), for n >= 0.

The programs for A324301, there is no canonical definition to state claims against.
-/

/-! ## A324301.P6422696192294508073

`A324300(n²)`
-/

namespace A324301.P6422696192294508073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324300 (n ^ 2)

end

end A324301.P6422696192294508073

/-! ## A324301.P5800537088076979938

`A323695(n²)`
-/

namespace A324301.P5800537088076979938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323695 (n ^ 2)

end

end A324301.P5800537088076979938

/-! ## A324301.P11126175054027540530

`abs(A324300(A000290(n)))`
-/

namespace A324301.P11126175054027540530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A324300 (A000290 n).toNat|

end

end A324301.P11126175054027540530

/-! ## A324301.P12093710406928986649

`abs(A323695(∑[A004273(n)]))`
-/

namespace A324301.P12093710406928986649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A323695 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A324301.P12093710406928986649

/-! ## A324301.P1511407189373705289

`abs(A324300(∑[A004273(n)]))`
-/

namespace A324301.P1511407189373705289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A324300 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A324301.P1511407189373705289

/-! ## A324301.P12211200878483137192

`A057979(n)*A324300(A000290(n))`
-/

namespace A324301.P12211200878483137192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n * A324300 (A000290 n).toNat

end

end A324301.P12211200878483137192

/-! ## A324301.P1594115967544486597

`A324300(4*n+1)+A324300(A008217(4*n))`
-/

namespace A324301.P1594115967544486597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324300 (4 * n + 1) + A324300 (A008217 (4 * n)).toNat

end

end A324301.P1594115967544486597

/-! ## A324301.P11167217223170465870

`A143554(A089233(n+1))*A323695(A000290(n))`
-/

namespace A324301.P11167217223170465870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143554 (A089233 (n + 1)).toNat * A323695 (A000290 n).toNat

end

end A324301.P11167217223170465870

/-!
# A324302: a(n) = [x^(n*(n+1))] Sum_{m>=0} x^m * (x^(m+1) + i)^m / (1 + i*x^(m+1))^(m+1), for n >= 0.

The programs for A324302, there is no canonical definition to state claims against.
-/

/-! ## A324302.P7818811187404629399

`A324300(n*(n+1))`
-/

namespace A324302.P7818811187404629399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324300 (n * (n + 1))

end

end A324302.P7818811187404629399

/-! ## A324302.P13717744334662022487

`or(A000007(n), A324300(n²+n))`
-/

namespace A324302.P13717744334662022487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A324300 (n ^ 2 + n))

end

end A324302.P13717744334662022487

/-! ## A324302.P6616424831308382094

`A324300(A002378(n))^ceil(sin(n)²)`
-/

namespace A324302.P6616424831308382094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324300 (A002378 n).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A324302.P6616424831308382094

/-! ## A324302.P13037751420292363061

`A324300(n²+n)%Δ[A126479(n)]`
-/

namespace A324302.P13037751420292363061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126479 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324300 (n ^ 2 + n)) (f1 (n + 1) - f1 n)

end

end A324302.P13037751420292363061

/-! ## A324302.P13011903461967748210

`and(A008683(A295609(n)), A324300(n²+n))`
-/

namespace A324302.P13011903461967748210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008683 (A295609 n).toNat) (A324300 (n ^ 2 + n))

end

end A324302.P13011903461967748210

/-!
# A324303: a(n) = [x^(n*(n+2))] Sum_{m>=0} x^m * (x^(m+1) + i)^m / (1 + i*x^(m+1))^(m+1), for n >= 0.

The programs for A324303, there is no canonical definition to state claims against.
-/

/-! ## A324303.P1487997660212193707

`A324300(n*(n+2))`
-/

namespace A324303.P1487997660212193707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324300 (n * (n + 2))

end

end A324303.P1487997660212193707

/-! ## A324303.P7747047519404747318

`abs(A324300(A005563(n)))`
-/

namespace A324303.P7747047519404747318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A324300 (A005563 n).toNat|

end

end A324303.P7747047519404747318

/-! ## A324303.P18030370764856160404

`A324300(A005563(n))%A163472(n)`
-/

namespace A324303.P18030370764856160404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324300 (A005563 n).toNat) (A163472 n)

end

end A324303.P18030370764856160404

/-! ## A324303.P17490731539811670320

`or(A010051(n+1), A324300(A005563(n)))`
-/

namespace A324303.P17490731539811670320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (n + 1)) (A324300 (A005563 n).toNat)

end

end A324303.P17490731539811670320

/-! ## A324303.P9904680063465609668

`or(A324290(n+1), A324300(A005563(n)))`
-/

namespace A324303.P9904680063465609668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A324290 (n + 1)) (A324300 (A005563 n).toNat)

end

end A324303.P9904680063465609668

/-! ## A324303.P10223735889166246566

`A324300(A005563(n))+A000007(A026670(n))`
-/

namespace A324303.P10223735889166246566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324300 (A005563 n).toNat + A000007 (A026670 n).toNat

end

end A324303.P10223735889166246566

/-! ## A324303.P6921768433231202320

`A324300(A005563(n))/A324284(A002313(n+1))`
-/

namespace A324303.P6921768433231202320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324300 (A005563 n).toNat : ℚ) / (A324284 (A002313 (n + 1)).toNat : ℚ)

end

end A324303.P6921768433231202320

/-!
# A324304: a(n) = [y^(n-1)] Product_{k=0..n-2} (n + k*y + n*y^2) for n > 1 with a(1) = 1.

The programs for A324304, there is no canonical definition to state claims against.
-/

/-! ## A324304.P1693134226996525258

`A324305(∑[2*n]+1)`
-/

namespace A324304.P1693134226996525258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324305 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A324304.P1693134226996525258

/-!
# A324311: Expansion of the unique formal power series R(t) with constant term 0 satisfying t = Sum_{n>=0} (1/(n+1))*binomial(2n,n)^2/*R(t)^(n+1).

The programs for A324311, there is no canonical definition to state claims against.
-/

/-! ## A324311.P2542243448726359401

`A391984(A000290(2*n+1))-A222058(n)`
-/

namespace A324311.P2542243448726359401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391984 (A000290 (2 * n + 1)).toNat - A222058 n

end

end A324311.P2542243448726359401

/-!
# A324312: Expansion of the generating function of rooted planar Eulerian orientations, counted by edges.

The programs for A324312, there is no canonical definition to state claims against.
-/

/-! ## A324312.P7114563775496528915

`A277493(n+1)/2`
-/

namespace A324312.P7114563775496528915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277493 (n + 1) : ℚ) / 2

end

end A324312.P7114563775496528915

/-! ## A324312.P12781330613202236146

`Δ[∑[A277493(n)]/2]`
-/

namespace A324312.P12781330613202236146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277493 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A324312.P12781330613202236146

/-! ## A324312.P13553419646887080199

`floor(A277493(Δ[n²]-n)/2)`
-/

namespace A324312.P13553419646887080199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A277493 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2⌋

end

end A324312.P13553419646887080199

/-! ## A324312.P2496535690214506901

`record[ratio[A277493(A193592(n))]]`
-/

namespace A324312.P2496535690214506901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277493 (A193592 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324312.P2496535690214506901

/-! ## A324312.P1381770620663817152

`-(A324311(n+3)/4)`
-/

namespace A324312.P1381770620663817152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A324311 (n + 3) : ℚ) / 4)

end

end A324312.P1381770620663817152

/-!
# A324313: Expansion of the unique formal power series R(t) with constant term 0 satisfying t = Sum_{n>=0} (1/(n+1))*binomial(2n,n)*binomial(3n,n)/*R(t)^(n+1).

The programs for A324313, there is no canonical definition to state claims against.
-/

/-! ## A324313.P16418919673368341408

`A123391(n+4)-A057363(A015951(n+1)+A007661(3*n))`
-/

namespace A324313.P16418919673368341408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123391 (n + 4) - A057363 (A015951 (n + 1) + A007661 (3 * n)).toNat

end

end A324313.P16418919673368341408

/-!
# A324314: Expansion of the generating function of quartic rooted planar Eulerian orientations, counted by vertices.

The programs for A324314, there is no canonical definition to state claims against.
-/

/-! ## A324314.P2032543592334536118

`abs(A324313(n+3)/3)`
-/

namespace A324314.P2032543592334536118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A324313 (n + 3) : ℚ) / 3|

end

end A324314.P2032543592334536118

/-! ## A324314.P15534160778684737934

`A324313(n+3)/A261004(A235044(n))`
-/

namespace A324314.P15534160778684737934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324313 (n + 3) : ℚ) / (A261004 (A235044 n).toNat : ℚ)

end

end A324314.P15534160778684737934

/-!
# A324315: Squarefree integers m > 1 such that if prime p divides m, then the sum of the base p digits of m is at least p.

The programs for A324315, the canonical program `A324315.P9811049742416120777` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324315 has offset 1).

The definition of A324315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 688 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324315.P9811049742416120777

`∩[A295102(n+1), A324457(n+1)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A324315

/-- `∩[A295102(n+1), A324457(n+1)]` -/
def P9811049742416120777.Spec : Prop :=
  ∀ n, (P9811049742416120777.a n : ℤ) = A324315 (n + 1)

theorem P9811049742416120777.correct : P9811049742416120777.Spec := by
  intro n
  simp only [A324315, Nat.add_sub_cancel]

end A324315

/-! ## A324315.P11657746881377424945

`∩[A164596(n+1), A324457(n+1)]`
-/

namespace A324315.P11657746881377424945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324315.P11657746881377424945

namespace A324315

/-- `∩[A164596(n+1), A324457(n+1)]` -/
def P11657746881377424945.Spec : Prop :=
  ∀ n, (P11657746881377424945.a n : ℤ) = A324315 (n + 1)

end A324315

/-! ## A324315.P11360779576570359024

`∩[A324457(n+1), A350352(n+1)]`
-/

namespace A324315.P11360779576570359024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324315.P11360779576570359024

namespace A324315

/-- `∩[A324457(n+1), A350352(n+1)]` -/
def P11360779576570359024.Spec : Prop :=
  ∀ n, (P11360779576570359024.a n : ℤ) = A324315 (n + 1)

end A324315

/-!
# A324316: Primary Carmichael numbers.

The programs for A324316, there is no canonical definition to state claims against.
-/

/-! ## A324316.P11434441317389025223

`∩[A001567(n+1), A324458(n+1)]`
-/

namespace A324316.P11434441317389025223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324316.P11434441317389025223

/-! ## A324316.P13837654584676094331

`∩[A002997(n+1), A324458(n+1)]`
-/

namespace A324316.P13837654584676094331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324316.P13837654584676094331

/-! ## A324316.P17319251199540128787

`∩[A005936(n+1), A324458(n+1)]`
-/

namespace A324316.P17319251199540128787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324316.P17319251199540128787

/-! ## A324316.P14010575388004346221

`∩[A052155(n+1), A324458(n+1)]`
-/

namespace A324316.P14010575388004346221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324316.P14010575388004346221

/-! ## A324316.P7716829282008998988

`∩[A083732(n+1), A324458(n+1)]`
-/

namespace A324316.P7716829282008998988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324316.P7716829282008998988

/-! ## A324316.P6100271900939875438

`∩[A083734(n+1), A324458(n+1)]`
-/

namespace A324316.P6100271900939875438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324316.P6100271900939875438

/-! ## A324316.P15035560585051445948

`∩[A083737(n+1), A324458(n+1)]`
-/

namespace A324316.P15035560585051445948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324316.P15035560585051445948

/-! ## A324316.P12155601557167583139

`∩[A231569(n+1), A324458(n+1)]`
-/

namespace A324316.P12155601557167583139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324316.P12155601557167583139

/-! ## A324316.P1049193874342974909

`∩[A318555(n+1), A324458(n+1)]`
-/

namespace A324316.P1049193874342974909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324316.P1049193874342974909

/-! ## A324316.P3363923425296651362

`∩[A081703(n+1)*A141710(n+1), A324458(n+1)]`
-/

namespace A324316.P3363923425296651362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081703 (n + 1) * A141710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324316.P3363923425296651362

/-! ## A324316.P13193551895308602161

`∩[A080747(n+1), A324458(n+1)]`
-/

namespace A324316.P13193551895308602161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324316.P13193551895308602161

/-! ## A324316.P10409648422060561852

`∩[A066488(n+1), A324458(n+1)]`
-/

namespace A324316.P10409648422060561852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324316.P10409648422060561852

/-! ## A324316.P4344759543362351623

`∩[A122782(n+1), A324458(n+1)]`
-/

namespace A324316.P4344759543362351623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324316.P4344759543362351623

/-! ## A324316.P12482372126731700574

`∩[A005937(n+1), A324458(n+1)]`
-/

namespace A324316.P12482372126731700574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324316.P12482372126731700574

/-! ## A324316.P5225898405973122290

`∩[A020136(n+1), A324458(n+1)]`
-/

namespace A324316.P5225898405973122290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324316.P5225898405973122290

/-!
# A324319: Terms of A324315 (squarefree integers m > 1 such that if prime p divides m, then the sum of the base p digits of m is at least p) that are also hexagonal numbers (A000384) with index equal to their largest prime factor.

The programs for A324319, there is no canonical definition to state claims against.
-/

/-! ## A324319.P14138366617346412787

`∩[A117961(n+1), A324315(n+1)]`
-/

namespace A324319.P14138366617346412787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324319.P14138366617346412787

/-! ## A324319.P6214972770710797168

`∩[A000384(A000040(n+1)), A324315(n+1)]`
-/

namespace A324319.P6214972770710797168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324319.P6214972770710797168

/-!
# A324321: Numbers k such that Rd(k) == k (mod Ld(k)), where Rd(k) = A067079 and Ld(k) = A067080.

The programs for A324321, there is no canonical definition to state claims against.
-/

/-! ## A324321.P5602143568517214733

`eq[3, A185319(A347323(n))]`
-/

namespace A324321.P5602143568517214733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185319 (A347323 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324321.P5602143568517214733

/-! ## A324321.P4371934354516384147

`A111167(2*n)/A036453(A324586(n+1)+1)+1`
-/

namespace A324321.P4371934354516384147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111167 (2 * n) : ℚ) / (A036453 (A324586 (n + 1) + 1).toNat : ℚ) + 1

end

end A324321.P4371934354516384147

/-! ## A324321.P8738023840610932457

`A111167(2*n)/A036453(A029544(2*(n+1))+1)+1`
-/

namespace A324321.P8738023840610932457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111167 (2 * n) : ℚ) / (A036453 (A029544 (2 * (n + 1)) + 1).toNat : ℚ) + 1

end

end A324321.P8738023840610932457

/-! ## A324321.P6032589857550495517

`A095459(n)+A004601(A095509(n))`
-/

namespace A324321.P6032589857550495517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095459 n + A004601 (A095509 n).toNat

end

end A324321.P6032589857550495517

/-!
# A324322: Numbers k such that Ld(k) == k (mod Rd(k)), where Ld(k) = A067080 and Rd(k) = A067079.

The programs for A324322, there is no canonical definition to state claims against.
-/

/-! ## A324322.P744154544440370760

`A083158(A351870(n+1))+10`
-/

namespace A324322.P744154544440370760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (A351870 (n + 1)).toNat + 10

end

end A324322.P744154544440370760

/-! ## A324322.P6889243429513646417

`eq[A033420(A275717(n+5)), A083311(n+1)]`
-/

namespace A324322.P6889243429513646417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033420 (A275717 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083311 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A324322.P6889243429513646417

/-! ## A324322.P9873326996559067729

`A338992((1-n)²+9)+n`
-/

namespace A324322.P9873326996559067729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338992 ((1 - (n : ℤ)) ^ 2 + 9).toNat + (n : ℤ)

end

end A324322.P9873326996559067729

/-! ## A324322.P14850403769409960515

`A045386(C(n², 64)+2)+n+1`
-/

namespace A324322.P14850403769409960515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (Nat.choose (n ^ 2) 64 + 2) + (n + 1 : ℤ)

end

end A324322.P14850403769409960515

/-! ## A324322.P3635408759354299899

`A022465(A059504(n+2))`
-/

namespace A324322.P3635408759354299899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022465 (A059504 (n + 2)).toNat

end

end A324322.P3635408759354299899

/-!
# A324323: Regular triangle read by rows where T(n,k) is the number of topologically connected set partitions of {1,...,n} with k blocks, 0 <= k <= n.

The programs for A324323, there is no canonical definition to state claims against.
-/

/-! ## A324323.P6322247024160454430

`A234025(A306550(n)^A000001(n))`
-/

namespace A324323.P6322247024160454430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234025 (SequenceMachineLib.roundAway ((A306550 n : ℚ) ^ (A000001 n : ℤ))).toNat

end

end A324323.P6322247024160454430

/-! ## A324323.P10726794612450653220

`A000283(A187081(n)²)`
-/

namespace A324323.P10726794612450653220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000283 (A187081 n ^ 2).toNat

end

end A324323.P10726794612450653220

/-! ## A324323.P6991046941137591163

`A374995(A306550(n)²)`
-/

namespace A324323.P6991046941137591163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374995 (A306550 n ^ 2).toNat

end

end A324323.P6991046941137591163

/-! ## A324323.P11387011073490537381

`A222173(2*A306550(n))`
-/

namespace A324323.P11387011073490537381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222173 (2 * A306550 n).toNat

end

end A324323.P11387011073490537381

/-! ## A324323.P5838357201330890340

`A374995(A306550(n)^2)`
-/

namespace A324323.P5838357201330890340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374995 (A306550 n ^ 2).toNat

end

end A324323.P5838357201330890340

/-!
# A324324: MM-numbers of crossing set partitions.

The programs for A324324, there is no canonical definition to state claims against.
-/

/-! ## A324324.P16901742756497507822

`A324170(A265227(n+1)+A102423(n)²)`
-/

namespace A324324.P16901742756497507822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324170 (A265227 (n + 1) + A102423 n ^ 2).toNat

end

end A324324.P16901742756497507822

/-! ## A324324.P12408548671036122090

`A324170((A265227(n+1)+1)*A102423(n))`
-/

namespace A324324.P12408548671036122090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324170 ((A265227 (n + 1) + 1) * A102423 n).toNat

end

end A324324.P12408548671036122090

/-!
# A324325: Number of non-crossing multiset partitions of a multiset whose multiplicities are the prime indices of n.

The programs for A324325, there is no canonical definition to state claims against.
-/

/-! ## A324325.P11316332789965943539

`A318284(n+1)-A324326(n+1)`
-/

namespace A324325.P11316332789965943539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (n + 1) - A324326 (n + 1)

end

end A324325.P11316332789965943539

/-! ## A324325.P12844676507032861159

`A001055(A181821(n+1))-A324326(n+1)`
-/

namespace A324325.P12844676507032861159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A181821 (n + 1)).toNat - A324326 (n + 1)

end

end A324325.P12844676507032861159

/-! ## A324325.P7371699626831766

`∑{d}[A181821(n+1), A050370(#)]-A324326(n+1)`
-/

namespace A324325.P7371699626831766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A050370 d - A324326 (n + 1)

end

end A324325.P7371699626831766

/-! ## A324325.P3269206867277305443

`A056926(3*n+2)+A028422(A181821(n+1))-A324326(n+1)`
-/

namespace A324325.P3269206867277305443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (3 * n + 2) + A028422 (A181821 (n + 1)).toNat - A324326 (n + 1)

end

end A324325.P3269206867277305443

/-! ## A324325.P882549150508329905

`A001055(A304660(n+1))-A324326(n+1)`
-/

namespace A324325.P882549150508329905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A304660 (n + 1)).toNat - A324326 (n + 1)

end

end A324325.P882549150508329905

/-!
# A324326: Number of crossing multiset partitions of a multiset whose multiplicities are the prime indices of n.

The programs for A324326, there is no canonical definition to state claims against.
-/

/-! ## A324326.P8237265325234275318

`A318284(n+1)-A324325(n+1)`
-/

namespace A324326.P8237265325234275318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (n + 1) - A324325 (n + 1)

end

end A324326.P8237265325234275318

/-! ## A324326.P10752906852359816101

`A318284(C(n+1, n))%A324325(n+1)`
-/

namespace A324326.P10752906852359816101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318284 (Nat.choose (n + 1) n)) (A324325 (n + 1))

end

end A324326.P10752906852359816101

/-! ## A324326.P4602289441308371297

`A318284(char[1]+1+n)%A324325(n+1)`
-/

namespace A324326.P4602289441308371297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318284 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)) (A324325 (n + 1))

end

end A324326.P4602289441308371297

/-! ## A324326.P14313909615223062253

`(A318284(n+1)+A000007(n))%A324325(n+1)`
-/

namespace A324326.P14313909615223062253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318284 (n + 1) + A000007 n) (A324325 (n + 1))

end

end A324326.P14313909615223062253

/-! ## A324326.P18303416018870011717

`(A318284(n+1)%A324325(n+1))%A000040(n+1)`
-/

namespace A324326.P18303416018870011717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A318284 (n + 1)) (A324325 (n + 1))) (A000040 (n + 1))

end

end A324326.P18303416018870011717

/-!
# A324327: Number of topologically connected chord graphs covering {1,...,n}.

The programs for A324327, there is no canonical definition to state claims against.
-/

/-! ## A324327.P13511354105413108333

`A046118(a(n-1))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=11`
-/

namespace A324327.P13511354105413108333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0, 1, 11] fun n a =>
  A046118 (a (n - 1)).toNat

end

end A324327.P13511354105413108333

/-! ## A324327.P9082541272961190835

`A000040(5*a(n-1))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=1`
-/

namespace A324327.P9082541272961190835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0, 1] fun n a =>
  A000040 (5 * a (n - 1)).toNat

end

end A324327.P9082541272961190835

/-! ## A324327.P9338152898288546240

`A000040(lcm(5, a(n-1)))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=1`
-/

namespace A324327.P9338152898288546240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0, 1] fun n a =>
  A000040 (Int.lcm 5 (a (n - 1)))

end

end A324327.P9338152898288546240

/-!
# A324328: Number of topologically connected chord graphs on a subset of {1,...,n}.

The programs for A324328, there is no canonical definition to state claims against.
-/

/-! ## A324328.P7304099867907386026

`A039880(A164145(n)+1)`
-/

namespace A324328.P7304099867907386026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039880 (A164145 n + 1).toNat

end

end A324328.P7304099867907386026

/-! ## A324328.P16002218691783212586

`A004001(A214915(n)+n)`
-/

namespace A324328.P16002218691783212586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A214915 n + (n : ℤ)).toNat

end

end A324328.P16002218691783212586

/-! ## A324328.P7799238157441078516

`A179500(n)-A177257(n)`
-/

namespace A324328.P7799238157441078516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179500 n - A177257 n

end

end A324328.P7799238157441078516

/-!
# A324331: a(n) = (n-1)^2 - phi(n)*sigma(n), where phi is A000010 and sigma is A000203.

The programs for A324331, the canonical program `A324331.P7732218609313798886` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324331 has offset 1).

The definition of A324331 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324331.P423417323191474803

`A069249(n+1)-2*(n+1)+1`
-/

namespace A324331.P423417323191474803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069249 (n + 1) - (2 * (n + 1) : ℤ) + 1

end

end A324331.P423417323191474803

namespace A324331

/-- `A069249(n+1)-2*(n+1)+1` -/
def P423417323191474803.Spec : Prop :=
  ∀ n, P423417323191474803.a n = A324331 (n + 1)

theorem P423417323191474803.correct : P423417323191474803.Spec := by
  intro n
  simp only [A324331, Nat.add_sub_cancel, A324331.P423417323191474803.a, A324331.P7732218609313798886.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A069249, A069249.P7873536691773802356.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A324331

/-! ## A324331.P7732218609313798886

`n²-A000010(n+1)*A000203(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A324331

/-- `n²-A000010(n+1)*A000203(n+1)` -/
def P7732218609313798886.Spec : Prop :=
  ∀ n, P7732218609313798886.a n = A324331 (n + 1)

theorem P7732218609313798886.correct : P7732218609313798886.Spec := by
  intro n
  simp only [A324331, Nat.add_sub_cancel]

end A324331

/-! ## A324331.P11043090109035918350

`n²-A062354(n+1)`
-/

namespace A324331.P11043090109035918350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A062354 (n + 1)

end

end A324331.P11043090109035918350

namespace A324331

/-- `n²-A062354(n+1)` -/
def P11043090109035918350.Spec : Prop :=
  ∀ n, P11043090109035918350.a n = A324331 (n + 1)

theorem P11043090109035918350.correct : P11043090109035918350.Spec := by
  intro n
  simp only [A324331, Nat.add_sub_cancel, A324331.P11043090109035918350.a, A324331.P7732218609313798886.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A062354, A062354.P12090896162141185075.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A324331

/-! ## A324331.P176680532726837166

`A069249(n+1)-Δ[n²]`
-/

namespace A324331.P176680532726837166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069249 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A324331.P176680532726837166

namespace A324331

/-- `A069249(n+1)-Δ[n²]` -/
def P176680532726837166.Spec : Prop :=
  ∀ n, P176680532726837166.a n = A324331 (n + 1)

theorem P176680532726837166.correct : P176680532726837166.Spec := by
  intro n
  simp only [A324331, Nat.add_sub_cancel, A324331.P176680532726837166.f1, A324331.P176680532726837166.a, A324331.P7732218609313798886.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A069249, A069249.P7873536691773802356.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A324331

/-! ## A324331.P16330148541254331027

`n²-Δ[A005728(n)]*∑{d}[n+1, #]`
-/

namespace A324331.P16330148541254331027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (f1 (n + 1) - f1 n) * ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A324331.P16330148541254331027

namespace A324331

/-- `n²-Δ[A005728(n)]*∑{d}[n+1, #]` -/
def P16330148541254331027.Spec : Prop :=
  ∀ n, P16330148541254331027.a n = A324331 (n + 1)

end A324331

/-! ## A324331.P1143741298739722697

`n²-∑{d}[n+1, (n+1)/#*A008683(#)]*∑{d}[n+1, #]`
-/

namespace A324331.P1143741298739722697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) - (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ)) * ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ)

end

end A324331.P1143741298739722697

namespace A324331

/-- `n²-∑{d}[n+1, (n+1)/#*A008683(#)]*∑{d}[n+1, #]` -/
def P1143741298739722697.Spec : Prop :=
  ∀ n, P1143741298739722697.a n = (A324331 (n + 1) : ℚ)

end A324331

/-! ## A324331.P2124301113466487250

`n²-A000203(n+1)*Δ[A002088(n)]`
-/

namespace A324331.P2124301113466487250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A000203 (n + 1) * (f1 (n + 1) - f1 n)

end

end A324331.P2124301113466487250

namespace A324331

/-- `n²-A000203(n+1)*Δ[A002088(n)]` -/
def P2124301113466487250.Spec : Prop :=
  ∀ n, P2124301113466487250.a n = A324331 (n + 1)

end A324331

/-! ## A324331.P15039823290590411194

`n²-(A007517(n+1)+A002618(n+1))`
-/

namespace A324331.P15039823290590411194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (A007517 (n + 1) + A002618 (n + 1))

end

end A324331.P15039823290590411194

namespace A324331

/-- `n²-(A007517(n+1)+A002618(n+1))` -/
def P15039823290590411194.Spec : Prop :=
  ∀ n, P15039823290590411194.a n = A324331 (n + 1)

theorem P15039823290590411194.correct : P15039823290590411194.Spec := by
  intro n
  simp only [A324331, Nat.add_sub_cancel, A324331.P15039823290590411194.a, A324331.P7732218609313798886.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A002618, A002618.P8397693677428532773.a, A007517, A007517.P15231311022357601297.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A324331

/-! ## A324331.P5920328003305699782

`A001157(n+1)+n²-A072779(n+1)`
-/

namespace A324331.P5920328003305699782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) + ((n ^ 2 : ℤ) - A072779 (n + 1))

end

end A324331.P5920328003305699782

namespace A324331

/-- `A001157(n+1)+n²-A072779(n+1)` -/
def P5920328003305699782.Spec : Prop :=
  ∀ n, P5920328003305699782.a n = A324331 (n + 1)

theorem P5920328003305699782.correct : P5920328003305699782.Spec := by
  intro n
  simp only [A324331, Nat.add_sub_cancel, A324331.P5920328003305699782.a, A324331.P7732218609313798886.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P6892814788348726787.a, A072779, A072779.P6312362607993792786.a, A003557, A003557.P6364735403900941810.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A037213, A037213.P7544062464691828526.a, A000196, A000196.P15434771586934192083.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A324331

/-! ## A324331.P9340736190122260645

`n²-∑{d}[n+1, A000010(#*(n+1))]`
-/

namespace A324331.P9340736190122260645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ d ∈ Nat.divisors (f1 n), A000010 (d * (n + 1))

end

end A324331.P9340736190122260645

namespace A324331

/-- `n²-∑{d}[n+1, A000010(#*(n+1))]` -/
def P9340736190122260645.Spec : Prop :=
  ∀ n, P9340736190122260645.a n = A324331 (n + 1)

end A324331

/-! ## A324331.P10081799972182522621

`n²-A152958((n+1)²)`
-/

namespace A324331.P10081799972182522621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A152958 ((n + 1) ^ 2)

end

end A324331.P10081799972182522621

namespace A324331

/-- `n²-A152958((n+1)²)` -/
def P10081799972182522621.Spec : Prop :=
  ∀ n, P10081799972182522621.a n = A324331 (n + 1)

end A324331

/-!
# A324333: Numbers d such that A324331(x) = d^2 only when x is a squarefree semiprime (A006881).

The programs for A324333, there is no canonical definition to state claims against.
-/

/-! ## A324333.P15603940926065080365

`comp[A324334(n+1)-1]+1`
-/

namespace A324333.P15603940926065080365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324334 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A324333.P15603940926065080365

/-! ## A324333.P5105681684245173907

`eq[char[A324334(n+1)], A151933(n)]`
-/

namespace A324333.P5105681684245173907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324334 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A324333.P5105681684245173907

/-!
# A324334: Numbers d such that A324331(x)=d^2 not only for squarefree semiprimes x (A006881) but also for x in A324333.

The programs for A324334, there is no canonical definition to state claims against.
-/

/-! ## A324334.P16438058793893071747

`eq[char[A324333(n+1)], A151909(n)]`
-/

namespace A324334.P16438058793893071747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324333 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A324334.P16438058793893071747

/-! ## A324334.P8505849973369847190

`eq[char[A324333(n+1)], A151933(n)]`
-/

namespace A324334.P8505849973369847190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324333 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A324334.P8505849973369847190

/-!
# A324335: a(n) = A323363(A005940(1+n)), where A005940 is the Doudna sequence and A323363 is the Dirichlet inverse of Dedekind's psi.

The programs for A324335, the canonical program `A324335.P16903976636275804973` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324335 has offset 0).

The definition of A324335 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A323363, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324335.P16903976636275804973

`A323363(A005940(1+n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A324335

/-- `A323363(A005940(1+n))` -/
def P16903976636275804973.Spec : Prop :=
  ∀ n, P16903976636275804973.a n = A324335 n

theorem P16903976636275804973.correct : P16903976636275804973.Spec := by
  intro n
  simp only [A324335]

end A324335

/-! ## A324335.P3122363892578480483

`A323363(A292602(4*n+3))`
-/

namespace A324335.P3122363892578480483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323363 (A292602 (4 * n + 3)).toNat

end

end A324335.P3122363892578480483

namespace A324335

/-- `A323363(A292602(4*n+3))` -/
def P3122363892578480483.Spec : Prop :=
  ∀ n, P3122363892578480483.a n = A324335 n

end A324335

/-! ## A324335.P64017241659029694

`A323363(A324394(n)*A324395(n))`
-/

namespace A324335.P64017241659029694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323363 (A324394 n * A324395 n).toNat

end

end A324335.P64017241659029694

namespace A324335

/-- `A323363(A324394(n)*A324395(n))` -/
def P64017241659029694.Spec : Prop :=
  ∀ n, P64017241659029694.a n = A324335 n

end A324335

/-! ## A324335.P13751893976553661799

`A323363(A337375(n)*A337376(n))`
-/

namespace A324335.P13751893976553661799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323363 (A337375 n * A337376 n).toNat

end

end A324335.P13751893976553661799

namespace A324335

/-- `A323363(A337375(n)*A337376(n))` -/
def P13751893976553661799.Spec : Prop :=
  ∀ n, P13751893976553661799.a n = A324335 n

end A324335

/-! ## A324335.P15917883001524720691

`A323363((A324055(n)+A324054(n))/2)`
-/

namespace A324335.P15917883001524720691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323363 (SequenceMachineLib.roundAway ((A324055 n + A324054 n : ℚ) / 2)).toNat

end

end A324335.P15917883001524720691

namespace A324335

/-- `A323363((A324055(n)+A324054(n))/2)` -/
def P15917883001524720691.Spec : Prop :=
  ∀ n, P15917883001524720691.a n = A324335 n

end A324335

/-! ## A324335.P2370987840098372026

`A323363(A340362(n+1)+A324106(n+1))`
-/

namespace A324335.P2370987840098372026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323363 (A340362 (n + 1) + A324106 (n + 1)).toNat

end

end A324335.P2370987840098372026

namespace A324335

/-- `A323363(A340362(n+1)+A324106(n+1))` -/
def P2370987840098372026.Spec : Prop :=
  ∀ n, P2370987840098372026.a n = A324335 n

end A324335

/-!
# A324336: a(n) = A323893(A005940(1+n)).

The programs for A324336, there is no canonical definition to state claims against.
-/

/-! ## A324336.P10568889187227102136

`A323893(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324336.P10568889187227102136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323893 (A005940 (1 + n)).toNat

end

end A324336.P10568889187227102136

/-! ## A324336.P12269295796714788663

`A323893(A292602(4*n+3))`
-/

namespace A324336.P12269295796714788663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323893 (A292602 (4 * n + 3)).toNat

end

end A324336.P12269295796714788663

/-! ## A324336.P2459426792850607027

`A323893(A364499(n+1)+1+n)`
-/

namespace A324336.P2459426792850607027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323893 (A364499 (n + 1) + 1 + (n : ℤ)).toNat

end

end A324336.P2459426792850607027

/-! ## A324336.P9970193112252761127

`A323893(A324394(n)*A324395(n))`
-/

namespace A324336.P9970193112252761127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323893 (A324394 n * A324395 n).toNat

end

end A324336.P9970193112252761127

/-! ## A324336.P15221395064019376632

`A323893(A337375(n)*A337376(n))`
-/

namespace A324336.P15221395064019376632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323893 (A337375 n * A337376 n).toNat

end

end A324336.P15221395064019376632

/-! ## A324336.P8442194546942289802

`A323894(A005940(n+1))-A244154(n)`
-/

namespace A324336.P8442194546942289802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323894 (A005940 (n + 1)).toNat - A244154 n

end

end A324336.P8442194546942289802

/-! ## A324336.P9914396894751594262

`A323893((A324055(n)+A324054(n))/2)`
-/

namespace A324336.P9914396894751594262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323893 (SequenceMachineLib.roundAway ((A324055 n + A324054 n : ℚ) / 2)).toNat

end

end A324336.P9914396894751594262

/-! ## A324336.P331136011563870059

`A323893(A340362(n+1)+A324106(n+1))`
-/

namespace A324336.P331136011563870059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323893 (A340362 (n + 1) + A324106 (n + 1)).toNat

end

end A324336.P331136011563870059

/-! ## A324336.P2860660644217382748

`A323893(A324641(n+1)-A324640(n+1))`
-/

namespace A324336.P2860660644217382748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323893 (A324641 (n + 1) - A324640 (n + 1)).toNat

end

end A324336.P2860660644217382748

/-! ## A324336.P3576892146233200750

`A323893(A340364(n+1)*A340365(n+1))`
-/

namespace A324336.P3576892146233200750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323893 (A340364 (n + 1) * A340365 (n + 1)).toNat

end

end A324336.P3576892146233200750

/-! ## A324336.P3429599950392732576

`A349344(A005940(Δ[n²]))`
-/

namespace A324336.P3429599950392732576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349344 (A005940 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A324336.P3429599950392732576

/-! ## A324336.P152043166100715328

`A349346(A005940(2*n+1))`
-/

namespace A324336.P152043166100715328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349346 (A005940 (2 * n + 1)).toNat

end

end A324336.P152043166100715328

/-!
# A324337: a(n) = A002487(A006068(n)).

The programs for A324337, the canonical program `A324337.P2577203300185584379` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324337 has offset 0).

The definition of A324337 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324337.P2577203300185584379

`A002487(A006068(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A324337

/-- `A002487(A006068(n))` -/
def P2577203300185584379.Spec : Prop :=
  ∀ n, P2577203300185584379.a n = A324337 n

theorem P2577203300185584379.correct : P2577203300185584379.Spec := by
  intro n
  simp only [A324337]

end A324337

/-! ## A324337.P16985436958521111884

`A071585(n)-A324338(n)`
-/

namespace A324337.P16985436958521111884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 n - A324338 n

end

end A324337.P16985436958521111884

namespace A324337

/-- `A071585(n)-A324338(n)` -/
def P16985436958521111884.Spec : Prop :=
  ∀ n, P16985436958521111884.a n = A324337 n

end A324337

/-! ## A324337.P11499518733715322791

`A324338(A063946(n))%(n+1)`
-/

namespace A324337.P11499518733715322791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324338 (A063946 n).toNat) (n + 1 : ℤ)

end

end A324337.P11499518733715322791

namespace A324337

/-- `A324338(A063946(n))%(n+1)` -/
def P11499518733715322791.Spec : Prop :=
  ∀ n, P11499518733715322791.a n = A324337 n

end A324337

/-! ## A324337.P8736810757452360837

`A324338(A063946(n))+n-A028310(n)`
-/

namespace A324337.P8736810757452360837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324338 (A063946 n).toNat + ((n : ℤ) - A028310 n)

end

end A324337.P8736810757452360837

namespace A324337

/-- `A324338(A063946(n))+n-A028310(n)` -/
def P8736810757452360837.Spec : Prop :=
  ∀ n, P8736810757452360837.a n = A324337 n

end A324337

/-! ## A324337.P1541873463289277884

`A002487(A268716(n)/2)`
-/

namespace A324337.P1541873463289277884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.roundAway ((A268716 n : ℚ) / 2)).toNat

end

end A324337.P1541873463289277884

namespace A324337

/-- `A002487(A268716(n)/2)` -/
def P1541873463289277884.Spec : Prop :=
  ∀ n, P1541873463289277884.a n = A324337 n

end A324337

/-! ## A324337.P16136419546965285105

`A002487(A066194(n+1)-1)`
-/

namespace A324337.P16136419546965285105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A066194 (n + 1) - 1).toNat

end

end A324337.P16136419546965285105

namespace A324337

/-- `A002487(A066194(n+1)-1)` -/
def P16136419546965285105.Spec : Prop :=
  ∀ n, P16136419546965285105.a n = A324337 n

end A324337

/-! ## A324337.P9440989238211036700

`A002487(A233279(A063946(n)))`
-/

namespace A324337.P9440989238211036700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A233279 (A063946 n).toNat).toNat

end

end A324337.P9440989238211036700

namespace A324337

/-- `A002487(A233279(A063946(n)))` -/
def P9440989238211036700.Spec : Prop :=
  ∀ n, P9440989238211036700.a n = A324337 n

end A324337

/-! ## A324337.P8668988055927875530

`A324338(A001969(n+1))-A324338(n)`
-/

namespace A324337.P8668988055927875530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324338 (A001969 (n + 1)).toNat - A324338 n

end

end A324337.P8668988055927875530

namespace A324337

/-- `A324338(A001969(n+1))-A324338(n)` -/
def P8668988055927875530.Spec : Prop :=
  ∀ n, P8668988055927875530.a n = A324337 n

end A324337

/-! ## A324337.P10849451909844039781

`A324338(lt[n, A324378(n)])-A324338(n)`
-/

namespace A324337.P10849451909844039781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - A324338 n

end

end A324337.P10849451909844039781

namespace A324337

/-- `A324338(lt[n, A324378(n)])-A324338(n)` -/
def P10849451909844039781.Spec : Prop :=
  ∀ n, P10849451909844039781.a n = A324337 n

end A324337

/-! ## A324337.P16699331546320467162

`2*A071585(n)-A071585(A000069(n+1))`
-/

namespace A324337.P16699331546320467162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071585 n - A071585 (A000069 (n + 1)).toNat

end

end A324337.P16699331546320467162

namespace A324337

/-- `2*A071585(n)-A071585(A000069(n+1))` -/
def P16699331546320467162.Spec : Prop :=
  ∀ n, P16699331546320467162.a n = A324337 n

end A324337

/-! ## A324337.P14254144937962376955

`A093875(2*n+1)-A324338(n)`
-/

namespace A324337.P14254144937962376955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093875 (2 * n + 1) - A324338 n

end

end A324337.P14254144937962376955

namespace A324337

/-- `A093875(2*n+1)-A324338(n)` -/
def P14254144937962376955.Spec : Prop :=
  ∀ n, P14254144937962376955.a n = A324337 n

end A324337

/-! ## A324337.P4181237862833366526

`A071585(A001969(n+1))-A071585(n)`
-/

namespace A324337.P4181237862833366526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A001969 (n + 1)).toNat - A071585 n

end

end A324337.P4181237862833366526

namespace A324337

/-- `A071585(A001969(n+1))-A071585(n)` -/
def P4181237862833366526.Spec : Prop :=
  ∀ n, P4181237862833366526.a n = A324337 n

end A324337

/-! ## A324337.P8041940309984692214

`A174980(A038558(n))`
-/

namespace A324337.P8041940309984692214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174980 (A038558 n).toNat

end

end A324337.P8041940309984692214

namespace A324337

/-- `A174980(A038558(n))` -/
def P8041940309984692214.Spec : Prop :=
  ∀ n, P8041940309984692214.a n = A324337 n

end A324337

/-! ## A324337.P11730577166985800291

`A002487(A268716(n))`
-/

namespace A324337.P11730577166985800291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A268716 n).toNat

end

end A324337.P11730577166985800291

namespace A324337

/-- `A002487(A268716(n))` -/
def P11730577166985800291.Spec : Prop :=
  ∀ n, P11730577166985800291.a n = A324337 n

end A324337

/-! ## A324337.P16959006496751302973

`A002487(A122198(2*n+1)-1)`
-/

namespace A324337.P16959006496751302973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A122198 (2 * n + 1) - 1).toNat

end

end A324337.P16959006496751302973

namespace A324337

/-- `A002487(A122198(2*n+1)-1)` -/
def P16959006496751302973.Spec : Prop :=
  ∀ n, P16959006496751302973.a n = A324337 n

end A324337

/-! ## A324337.P887614099170688497

`A295515(A066194(2*(n+1))-1)`
-/

namespace A324337.P887614099170688497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (A066194 (2 * (n + 1)) - 1).toNat

end

end A324337.P887614099170688497

namespace A324337

/-- `A295515(A066194(2*(n+1))-1)` -/
def P887614099170688497.Spec : Prop :=
  ∀ n, P887614099170688497.a n = A324337 n

end A324337

/-! ## A324337.P14077950244786099491

`A002487(A092569(A154435(A092569(n))))`
-/

namespace A324337.P14077950244786099491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A092569 (A154435 (A092569 n).toNat).toNat).toNat

end

end A324337.P14077950244786099491

namespace A324337

/-- `A002487(A092569(A154435(A092569(n))))` -/
def P14077950244786099491.Spec : Prop :=
  ∀ n, P14077950244786099491.a n = A324337 n

end A324337

/-! ## A324337.P1981620871805309561

`A000196((A324338(2*n+1)-A324338(2*n))²)`
-/

namespace A324337.P1981620871805309561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((A324338 (2 * n + 1) - A324338 (2 * n)) ^ 2).toNat

end

end A324337.P1981620871805309561

namespace A324337

/-- `A000196((A324338(2*n+1)-A324338(2*n))²)` -/
def P1981620871805309561.Spec : Prop :=
  ∀ n, P1981620871805309561.a n = A324337 n

end A324337

/-! ## A324337.P7114299053439868634

`A002487(A105670(2*(n+1))-1)`
-/

namespace A324337.P7114299053439868634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A105670 (2 * (n + 1)) - 1).toNat

end

end A324337.P7114299053439868634

namespace A324337

/-- `A002487(A105670(2*(n+1))-1)` -/
def P7114299053439868634.Spec : Prop :=
  ∀ n, P7114299053439868634.a n = A324337 n

end A324337

/-!
# A324338: a(n) = A002487(1+A006068(n)).

The programs for A324338, the canonical program `A324338.P10012383172274989098` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324338 has offset 0).

The definition of A324338 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324338.P10012383172274989098

`A002487(1+A006068(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A324338

/-- `A002487(1+A006068(n))` -/
def P10012383172274989098.Spec : Prop :=
  ∀ n, P10012383172274989098.a n = A324338 n

theorem P10012383172274989098.correct : P10012383172274989098.Spec := by
  intro n
  simp only [A324338]

end A324338

/-! ## A324338.P2347789047563987640

`A071585(n)-A324337(n)`
-/

namespace A324338.P2347789047563987640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 n - A324337 n

end

end A324338.P2347789047563987640

namespace A324338

/-- `A071585(n)-A324337(n)` -/
def P2347789047563987640.Spec : Prop :=
  ∀ n, P2347789047563987640.a n = A324338 n

end A324338

/-! ## A324338.P10808087936970176665

`A324337(A000069(n+1))-A324337(n)`
-/

namespace A324338.P10808087936970176665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (A000069 (n + 1)).toNat - A324337 n

end

end A324338.P10808087936970176665

namespace A324338

/-- `A324337(A000069(n+1))-A324337(n)` -/
def P10808087936970176665.Spec : Prop :=
  ∀ n, P10808087936970176665.a n = A324338 n

end A324338

/-! ## A324338.P3306935655501232035

`A002487(A066194(n+1))`
-/

namespace A324338.P3306935655501232035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A066194 (n + 1)).toNat

end

end A324338.P3306935655501232035

namespace A324338

/-- `A002487(A066194(n+1))` -/
def P3306935655501232035.Spec : Prop :=
  ∀ n, P3306935655501232035.a n = A324338 n

end A324338

/-! ## A324338.P932703482205183255

`A324337(A268717(n+1))`
-/

namespace A324338.P932703482205183255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (A268717 (n + 1)).toNat

end

end A324338.P932703482205183255

namespace A324338

/-- `A324337(A268717(n+1))` -/
def P932703482205183255.Spec : Prop :=
  ∀ n, P932703482205183255.a n = A324338 n

end A324338

/-! ## A324338.P11587538145240274909

`A002487(A268716(n)/2+1)`
-/

namespace A324338.P11587538145240274909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.roundAway ((A268716 n : ℚ) / 2 + 1)).toNat

end

end A324338.P11587538145240274909

namespace A324338

/-- `A002487(A268716(n)/2+1)` -/
def P11587538145240274909.Spec : Prop :=
  ∀ n, P11587538145240274909.a n = A324338 n

end A324338

/-! ## A324338.P13602079417540944659

`A324337(A063946(A000069(n+1)))`
-/

namespace A324338.P13602079417540944659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (A063946 (A000069 (n + 1)).toNat).toNat

end

end A324338.P13602079417540944659

namespace A324338

/-- `A324337(A063946(A000069(n+1)))` -/
def P13602079417540944659.Spec : Prop :=
  ∀ n, P13602079417540944659.a n = A324338 n

end A324338

/-! ## A324338.P6322117329635926446

`A071585(n)-A002487(A006068(n))`
-/

namespace A324338.P6322117329635926446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 n - A002487 (A006068 n).toNat

end

end A324338.P6322117329635926446

namespace A324338

/-- `A071585(n)-A002487(A006068(n))` -/
def P6322117329635926446.Spec : Prop :=
  ∀ n, P6322117329635926446.a n = A324338 n

end A324338

/-! ## A324338.P9986403117095733479

`A324337(lt[A324335(n), 0])-A324337(n)`
-/

namespace A324338.P9986403117095733479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324335 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) - A324337 n

end

end A324338.P9986403117095733479

namespace A324338

/-- `A324337(lt[A324335(n), 0])-A324337(n)` -/
def P9986403117095733479.Spec : Prop :=
  ∀ n, P9986403117095733479.a n = A324338 n

end A324338

/-! ## A324338.P524551747984664203

`A093873(A000069(n+1))`
-/

namespace A324338.P524551747984664203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093873 (A000069 (n + 1)).toNat

end

end A324338.P524551747984664203

namespace A324338

/-- `A093873(A000069(n+1))` -/
def P524551747984664203.Spec : Prop :=
  ∀ n, P524551747984664203.a n = A324338 n

end A324338

/-! ## A324338.P8680759946814677692

`A093873(A128309(n+1)/2)`
-/

namespace A324338.P8680759946814677692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093873 (SequenceMachineLib.roundAway ((A128309 (n + 1) : ℚ) / 2)).toNat

end

end A324338.P8680759946814677692

namespace A324338

/-- `A093873(A128309(n+1)/2)` -/
def P8680759946814677692.Spec : Prop :=
  ∀ n, P8680759946814677692.a n = A324338 n

end A324338

/-! ## A324338.P15444687729260625178

`A071585(A000069(n+1))-A071585(n)`
-/

namespace A324338.P15444687729260625178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A000069 (n + 1)).toNat - A071585 n

end

end A324338.P15444687729260625178

namespace A324338

/-- `A071585(A000069(n+1))-A071585(n)` -/
def P15444687729260625178.Spec : Prop :=
  ∀ n, P15444687729260625178.a n = A324338 n

end A324338

/-! ## A324338.P14738235144086188830

`2*A071585(n)-A071585(A001969(n+1))`
-/

namespace A324338.P14738235144086188830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071585 n - A071585 (A001969 (n + 1)).toNat

end

end A324338.P14738235144086188830

namespace A324338

/-- `2*A071585(n)-A071585(A001969(n+1))` -/
def P14738235144086188830.Spec : Prop :=
  ∀ n, P14738235144086188830.a n = A324338 n

end A324338

/-! ## A324338.P5975090430117595836

`A002487(A268716(n)+2)`
-/

namespace A324338.P5975090430117595836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A268716 n + 2).toNat

end

end A324338.P5975090430117595836

namespace A324338

/-- `A002487(A268716(n)+2)` -/
def P5975090430117595836.Spec : Prop :=
  ∀ n, P5975090430117595836.a n = A324338 n

end A324338

/-! ## A324338.P7661857076252811735

`A127971(A268716(n)+1)-1`
-/

namespace A324338.P7661857076252811735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127971 (A268716 n + 1).toNat - 1

end

end A324338.P7661857076252811735

namespace A324338

/-- `A127971(A268716(n)+1)-1` -/
def P7661857076252811735.Spec : Prop :=
  ∀ n, P7661857076252811735.a n = A324338 n

end A324338

/-! ## A324338.P7802680924186914206

`A295515(2*A066194(n+1))`
-/

namespace A324338.P7802680924186914206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (2 * A066194 (n + 1)).toNat

end

end A324338.P7802680924186914206

namespace A324338

/-- `A295515(2*A066194(n+1))` -/
def P7802680924186914206.Spec : Prop :=
  ∀ n, P7802680924186914206.a n = A324338 n

end A324338

/-! ## A324338.P13915224021312128195

`A002487(A122198(2*n+1)+1)`
-/

namespace A324338.P13915224021312128195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A122198 (2 * n + 1) + 1).toNat

end

end A324338.P13915224021312128195

namespace A324338

/-- `A002487(A122198(2*n+1)+1)` -/
def P13915224021312128195.Spec : Prop :=
  ∀ n, P13915224021312128195.a n = A324338 n

end A324338

/-! ## A324338.P15374489820723939018

`A002487(A054429(A122198(2*n+1)))`
-/

namespace A324338.P15374489820723939018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A054429 (A122198 (2 * n + 1)).toNat).toNat

end

end A324338.P15374489820723939018

namespace A324338

/-- `A002487(A054429(A122198(2*n+1)))` -/
def P15374489820723939018.Spec : Prop :=
  ∀ n, P15374489820723939018.a n = A324338 n

end A324338

/-! ## A324338.P7787275932909947296

`A295515(A066194(n+1)+A066194(n+1)+1)`
-/

namespace A324338.P7787275932909947296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (A066194 (n + 1) + (A066194 (n + 1) + 1)).toNat

end

end A324338.P7787275932909947296

namespace A324338

/-- `A295515(A066194(n+1)+A066194(n+1)+1)` -/
def P7787275932909947296.Spec : Prop :=
  ∀ n, P7787275932909947296.a n = A324338 n

end A324338

/-! ## A324338.P4262496343559057561

`A093873(A128309(n+1))`
-/

namespace A324338.P4262496343559057561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093873 (A128309 (n + 1)).toNat

end

end A324338.P4262496343559057561

namespace A324338

/-- `A093873(A128309(n+1))` -/
def P4262496343559057561.Spec : Prop :=
  ∀ n, P4262496343559057561.a n = A324338 n

end A324338

/-!
# A324339: a(n) = A246707(A005940(1+n)), where A005940 is the Doudna sequence, and A246707 is the expansion of phi(-q) * phi(-q^2) * phi(-q^3) * phi(-q^6) in powers of q.

The programs for A324339, there is no canonical definition to state claims against.
-/

/-! ## A324339.P18399351362632812292

`A246707(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324339.P18399351362632812292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246707 (A005940 (1 + n)).toNat

end

end A324339.P18399351362632812292

/-! ## A324339.P98377991507536643

`A246707(A292602(4*n+3))`
-/

namespace A324339.P98377991507536643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246707 (A292602 (4 * n + 3)).toNat

end

end A324339.P98377991507536643

/-! ## A324339.P11401568968192101701

`A246707(A364499(n+1)+1+n)`
-/

namespace A324339.P11401568968192101701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246707 (A364499 (n + 1) + 1 + (n : ℤ)).toNat

end

end A324339.P11401568968192101701

/-! ## A324339.P15483049873661878353

`A246707(A324394(n)*A324395(n))`
-/

namespace A324339.P15483049873661878353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246707 (A324394 n * A324395 n).toNat

end

end A324339.P15483049873661878353

/-! ## A324339.P5868320122844440658

`A246707(2*A290077(n)-A324052(n))`
-/

namespace A324339.P5868320122844440658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246707 (2 * A290077 n - A324052 n).toNat

end

end A324339.P5868320122844440658

/-! ## A324339.P9739051885628732780

`A246707((A324055(n)+A324054(n))/2)`
-/

namespace A324339.P9739051885628732780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246707 (SequenceMachineLib.roundAway ((A324055 n + A324054 n : ℚ) / 2)).toNat

end

end A324339.P9739051885628732780

/-! ## A324339.P10961867825231253059

`A246707(A340362(n+1)+A324106(n+1))`
-/

namespace A324339.P10961867825231253059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246707 (A340362 (n + 1) + A324106 (n + 1)).toNat

end

end A324339.P10961867825231253059

/-! ## A324339.P17304683007904336868

`A246707(A324641(n+1)-A324640(n+1))`
-/

namespace A324339.P17304683007904336868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246707 (A324641 (n + 1) - A324640 (n + 1)).toNat

end

end A324339.P17304683007904336868

/-! ## A324339.P1183987985432454112

`A246707(A340364(n+1)*A340365(n+1))`
-/

namespace A324339.P1183987985432454112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246707 (A340364 (n + 1) * A340365 (n + 1)).toNat

end

end A324339.P1183987985432454112

/-! ## A324339.P15856849418698989538

`A246707(A337375(2*n)*A337377(2*n))`
-/

namespace A324339.P15856849418698989538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246707 (A337375 (2 * n) * A337377 (2 * n)).toNat

end

end A324339.P15856849418698989538

/-! ## A324339.P1327765158877129678

`A246707(A290077(n)+A290077(n)-A324052(n))`
-/

namespace A324339.P1327765158877129678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246707 (A290077 n + (A290077 n - A324052 n)).toNat

end

end A324339.P1327765158877129678

/-! ## A324339.P479463856756194836

`A246707(A290077(n)-(A324052(n)-A290077(n)))`
-/

namespace A324339.P479463856756194836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246707 (A290077 n - (A324052 n - A290077 n)).toNat

end

end A324339.P479463856756194836

/-!
# A324340: a(n) = A046692(A005940(1+n)), where A005940 is the Doudna sequence and A046692 is the Dirichlet inverse of sigma function.

The programs for A324340, the canonical program `A324340.P2325313193965035330` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324340 has offset 0).

The definition of A324340 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A046692, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324340.P2325313193965035330

`A046692(A005940(1+n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A324340

/-- `A046692(A005940(1+n))` -/
def P2325313193965035330.Spec : Prop :=
  ∀ n, P2325313193965035330.a n = A324340 n

theorem P2325313193965035330.correct : P2325313193965035330.Spec := by
  intro n
  simp only [A324340]

end A324340

/-! ## A324340.P275977256846316439

`A323403(A005940(n+1))-A324054(n)`
-/

namespace A324340.P275977256846316439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323403 (A005940 (n + 1)).toNat - A324054 n

end

end A324340.P275977256846316439

namespace A324340

/-- `A323403(A005940(n+1))-A324054(n)` -/
def P275977256846316439.Spec : Prop :=
  ∀ n, P275977256846316439.a n = A324340 n

end A324340

/-! ## A324340.P8502001418201295093

`A323403(A292602(4*n+3))-A324054(n)`
-/

namespace A324340.P8502001418201295093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323403 (A292602 (4 * n + 3)).toNat - A324054 n

end

end A324340.P8502001418201295093

namespace A324340

/-- `A323403(A292602(4*n+3))-A324054(n)` -/
def P8502001418201295093.Spec : Prop :=
  ∀ n, P8502001418201295093.a n = A324340 n

end A324340

/-! ## A324340.P12477979744596793434

`A323403(A324394(n)*A324395(n))-A324054(n)`
-/

namespace A324340.P12477979744596793434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323403 (A324394 n * A324395 n).toNat - A324054 n

end

end A324340.P12477979744596793434

namespace A324340

/-- `A323403(A324394(n)*A324395(n))-A324054(n)` -/
def P12477979744596793434.Spec : Prop :=
  ∀ n, P12477979744596793434.a n = A324340 n

end A324340

/-! ## A324340.P13397282392884816687

`A323403(A340362(n+1)+A324106(n+1))-A324054(n)`
-/

namespace A324340.P13397282392884816687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323403 (A340362 (n + 1) + A324106 (n + 1)).toNat - A324054 n

end

end A324340.P13397282392884816687

namespace A324340

/-- `A323403(A340362(n+1)+A324106(n+1))-A324054(n)` -/
def P13397282392884816687.Spec : Prop :=
  ∀ n, P13397282392884816687.a n = A324340 n

end A324340

/-! ## A324340.P16459339114359550012

`A323403(A340364(n+1)*A340365(n+1))-A324054(n)`
-/

namespace A324340.P16459339114359550012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323403 (A340364 (n + 1) * A340365 (n + 1)).toNat - A324054 n

end

end A324340.P16459339114359550012

namespace A324340

/-- `A323403(A340364(n+1)*A340365(n+1))-A324054(n)` -/
def P16459339114359550012.Spec : Prop :=
  ∀ n, P16459339114359550012.a n = A324340 n

end A324340

/-! ## A324340.P905387536775396066

`A046692(A292602(4*n+3))`
-/

namespace A324340.P905387536775396066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046692 (A292602 (4 * n + 3)).toNat

end

end A324340.P905387536775396066

namespace A324340

/-- `A046692(A292602(4*n+3))` -/
def P905387536775396066.Spec : Prop :=
  ∀ n, P905387536775396066.a n = A324340 n

end A324340

/-! ## A324340.P9627800690492264143

`A046692(A324394(n)*A324395(n))`
-/

namespace A324340.P9627800690492264143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046692 (A324394 n * A324395 n).toNat

end

end A324340.P9627800690492264143

namespace A324340

/-- `A046692(A324394(n)*A324395(n))` -/
def P9627800690492264143.Spec : Prop :=
  ∀ n, P9627800690492264143.a n = A324340 n

end A324340

/-! ## A324340.P8281985370840432059

`A046692(A340362(n+1)+A324106(n+1))`
-/

namespace A324340.P8281985370840432059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046692 (A340362 (n + 1) + A324106 (n + 1)).toNat

end

end A324340.P8281985370840432059

namespace A324340

/-- `A046692(A340362(n+1)+A324106(n+1))` -/
def P8281985370840432059.Spec : Prop :=
  ∀ n, P8281985370840432059.a n = A324340 n

end A324340

/-! ## A324340.P14801730610014042237

`A046692(A324641(n+1)-A324640(n+1))`
-/

namespace A324340.P14801730610014042237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046692 (A324641 (n + 1) - A324640 (n + 1)).toNat

end

end A324340.P14801730610014042237

namespace A324340

/-- `A046692(A324641(n+1)-A324640(n+1))` -/
def P14801730610014042237.Spec : Prop :=
  ∀ n, P14801730610014042237.a n = A324340 n

end A324340

/-! ## A324340.P15195047331180365160

`A046692(A340364(n+1)*A340365(n+1))`
-/

namespace A324340.P15195047331180365160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046692 (A340364 (n + 1) * A340365 (n + 1)).toNat

end

end A324340.P15195047331180365160

namespace A324340

/-- `A046692(A340364(n+1)*A340365(n+1))` -/
def P15195047331180365160.Spec : Prop :=
  ∀ n, P15195047331180365160.a n = A324340 n

end A324340

/-!
# A324341: If 2n = 2^e1 + ... + 2^ek [e1 .. ek distinct], then a(n) is the number of nonzero digits when A002110(e1) * ... * A002110(ek) is written in primorial base.

The programs for A324341, the canonical program `A324341.P8006998703167476779` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324341 has offset 0).

The definition of A324341 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324341.P8006998703167476779

`A342461(A048678(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A324341

/-- `A342461(A048678(n))` -/
def P8006998703167476779.Spec : Prop :=
  ∀ n, P8006998703167476779.a n = A324341 n

theorem P8006998703167476779.correct : P8006998703167476779.Spec := by
  intro n
  simp only [A324341]

end A324341

/-! ## A324341.P3310101682472706013

`A329040(A019565(n))`
-/

namespace A324341.P3310101682472706013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329040 (A019565 n).toNat

end

end A324341.P3310101682472706013

namespace A324341

/-- `A329040(A019565(n))` -/
def P3310101682472706013.Spec : Prop :=
  ∀ n, P3310101682472706013.a n = A324341 n

end A324341

/-! ## A324341.P16199844673765767526

`A329040(sqrt(A334110(n)))`
-/

namespace A324341.P16199844673765767526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329040 (SequenceMachineLib.roundAway (Real.sqrt (A334110 n : ℝ))).toNat

end

end A324341.P16199844673765767526

namespace A324341

/-- `A329040(sqrt(A334110(n)))` -/
def P16199844673765767526.Spec : Prop :=
  ∀ n, P16199844673765767526.a n = A324341 n

end A324341

/-! ## A324341.P10138966628768918638

`A329040(A339809(n)+1)`
-/

namespace A324341.P10138966628768918638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329040 (A339809 n + 1).toNat

end

end A324341.P10138966628768918638

namespace A324341

/-- `A329040(A339809(n)+1)` -/
def P10138966628768918638.Spec : Prop :=
  ∀ n, P10138966628768918638.a n = A324341 n

end A324341

/-! ## A324341.P564069172664820130

`A365460(A057335(n))`
-/

namespace A324341.P564069172664820130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365460 (A057335 n).toNat

end

end A324341.P564069172664820130

namespace A324341

/-- `A365460(A057335(n))` -/
def P564069172664820130.Spec : Prop :=
  ∀ n, P564069172664820130.a n = A324341 n

end A324341

/-!
# A324342: If 2n = 2^e1 + ... + 2^ek [e1 .. ek distinct], then a(n) is the minimal number of primorials (A002110) that add to A002110(e1) * ... * A002110(ek).

The programs for A324342, the canonical program `A324342.P6094006242371351555` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324342 has offset 0).

The definition of A324342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324342.P14882089187559964640

`A276150(A283477(n))`
-/

namespace A324342.P14882089187559964640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (A283477 n).toNat

end

end A324342.P14882089187559964640

namespace A324342

/-- `A276150(A283477(n))` -/
def P14882089187559964640.Spec : Prop :=
  ∀ n, P14882089187559964640.a n = A324342 n

end A324342

/-! ## A324342.P6094006242371351555

`A342462(A048678(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A324342

/-- `A342462(A048678(n))` -/
def P6094006242371351555.Spec : Prop :=
  ∀ n, P6094006242371351555.a n = A324342 n

theorem P6094006242371351555.correct : P6094006242371351555.Spec := by
  intro n
  simp only [A324342]

end A324342

/-! ## A324342.P7789602705682178953

`A342462(A088698(n)/3)`
-/

namespace A324342.P7789602705682178953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342462 (SequenceMachineLib.roundAway ((A088698 n : ℚ) / 3)).toNat

end

end A324342.P7789602705682178953

namespace A324342

/-- `A342462(A088698(n)/3)` -/
def P7789602705682178953.Spec : Prop :=
  ∀ n, P7789602705682178953.a n = A324342 n

end A324342

/-! ## A324342.P10473736022123768886

`A029931(n)-A329622(A019565(n))`
-/

namespace A324342.P10473736022123768886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n - A329622 (A019565 n).toNat

end

end A324342.P10473736022123768886

namespace A324342

/-- `A029931(n)-A329622(A019565(n))` -/
def P10473736022123768886.Spec : Prop :=
  ∀ n, P10473736022123768886.a n = A324342 n

end A324342

/-! ## A324342.P5820364662126837568

`log2(A029930(n))-A329622(A019565(n))`
-/

namespace A324342.P5820364662126837568
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A029930 n : ℝ) - (A329622 (A019565 n).toNat : ℝ)

end

end A324342.P5820364662126837568

namespace A324342

/-- `log2(A029930(n))-A329622(A019565(n))` -/
def P5820364662126837568.Spec : Prop :=
  ∀ n, P5820364662126837568.a n = (A324342 n : ℝ)

end A324342

/-! ## A324342.P436177484259747197

`∑{digits}[A063013(n), #]-A329622(A019565(n))`
-/

namespace A324342.P436177484259747197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063013 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - A329622 (A019565 n).toNat

end

end A324342.P436177484259747197

namespace A324342

/-- `∑{digits}[A063013(n), #]-A329622(A019565(n))` -/
def P436177484259747197.Spec : Prop :=
  ∀ n, P436177484259747197.a n = A324342 n

end A324342

/-! ## A324342.P15067829766755297998

`A280700(n)+A283981(n)-A329622(A019565(n))`
-/

namespace A324342.P15067829766755297998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280700 n + (A283981 n - A329622 (A019565 n).toNat)

end

end A324342.P15067829766755297998

namespace A324342

/-- `A280700(n)+A283981(n)-A329622(A019565(n))` -/
def P15067829766755297998.Spec : Prop :=
  ∀ n, P15067829766755297998.a n = A324342 n

end A324342

/-! ## A324342.P10452958366574395171

`A365461(A057335(n))`
-/

namespace A324342.P10452958366574395171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365461 (A057335 n).toNat

end

end A324342.P10452958366574395171

namespace A324342

/-- `A365461(A057335(n))` -/
def P10452958366574395171.Spec : Prop :=
  ∀ n, P10452958366574395171.a n = A324342 n

end A324342

/-! ## A324342.P12827492948008669756

`A324888(A019565(n))`
-/

namespace A324342.P12827492948008669756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324888 (A019565 n).toNat

end

end A324342.P12827492948008669756

namespace A324342

/-- `A324888(A019565(n))` -/
def P12827492948008669756.Spec : Prop :=
  ∀ n, P12827492948008669756.a n = A324342 n

end A324342

/-! ## A324342.P18150138523594128881

`A324888(sqrt(A334110(n)))`
-/

namespace A324342.P18150138523594128881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324888 (SequenceMachineLib.roundAway (Real.sqrt (A334110 n : ℝ))).toNat

end

end A324342.P18150138523594128881

namespace A324342

/-- `A324888(sqrt(A334110(n)))` -/
def P18150138523594128881.Spec : Prop :=
  ∀ n, P18150138523594128881.a n = A324342 n

end A324342

/-!
# A324343: Lexicographically earliest positive sequence such that a(i) = a(j) => A278222(i) = A278222(j) and A324342(i) = A324342(j), for all i, j >= 0.

The programs for A324343, there is no canonical definition to state claims against.
-/

/-! ## A324343.P13160926120244888000

`A323234(A187829(n+1)-A157928(n))`
-/

namespace A324343.P13160926120244888000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323234 (A187829 (n + 1) - A157928 n).toNat

end

end A324343.P13160926120244888000

/-! ## A324343.P17222124044147844870

`A329896(lt[A329926(n+1), A329874(2*n+3)])`
-/

namespace A324343.P17222124044147844870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329874 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329896 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A324343.P17222124044147844870

/-! ## A324343.P17929117132274587909

`A329896(lt[A329906(n+3), A329874(2*n+3)])`
-/

namespace A324343.P17929117132274587909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329906 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329874 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329896 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A324343.P17929117132274587909

/-! ## A324343.P1895771896608055895

`A329896(lt[A329923(2*(n+1)), A329874(2*n+3)])`
-/

namespace A324343.P1895771896608055895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329923 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329874 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329896 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A324343.P1895771896608055895

/-!
# A324346: Lexicographically earliest positive sequence such that a(i) = a(j) => A005811(i) = A005811(j) and A324055(i) = A324055(j), for all i, j >= 0.

The programs for A324346, there is no canonical definition to state claims against.
-/

/-! ## A324346.P8390050849283013296

`A324347(n)%∑[A176781(n)]`
-/

namespace A324346.P8390050849283013296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176781 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324347 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A324346.P8390050849283013296

/-! ## A324346.P18051210819007760921

`A324347(n)^(A243836(n)+1)`
-/

namespace A324346.P18051210819007760921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324347 n : ℚ) ^ (A243836 n + 1 : ℤ)

end

end A324346.P18051210819007760921

/-! ## A324346.P12217592376658344125

`A324347(n)*A344607(C(n, 64))`
-/

namespace A324346.P12217592376658344125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324347 n * A344607 (Nat.choose n 64)

end

end A324346.P12217592376658344125

/-! ## A324346.P17064916013156263519

`A324347(n)/A000670(C(n, 64))`
-/

namespace A324346.P17064916013156263519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324347 n : ℚ) / (A000670 (Nat.choose n 64) : ℚ)

end

end A324346.P17064916013156263519

/-! ## A324346.P57406048131451548

`A324347(n)/A057863(C(n, 64))`
-/

namespace A324346.P57406048131451548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324347 n : ℚ) / (A057863 (Nat.choose n 64) : ℚ)

end

end A324346.P57406048131451548

/-! ## A324346.P14802631925986750034

`A324347(n)/A113370(C(n, 64))`
-/

namespace A324346.P14802631925986750034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324347 n : ℚ) / (A113370 (Nat.choose n 64) : ℚ)

end

end A324346.P14802631925986750034

/-! ## A324346.P5423793424628218550

`A324347(n)^A000041(C(n, 64))`
-/

namespace A324346.P5423793424628218550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324347 n : ℚ) ^ (A000041 (Nat.choose n 64) : ℤ)

end

end A324346.P5423793424628218550

/-! ## A324346.P2872411165703539770

`A000108(C(n, 64)²)*A324347(n)`
-/

namespace A324346.P2872411165703539770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose n 64 ^ 2) * A324347 n

end

end A324346.P2872411165703539770

/-! ## A324346.P16447331439231287644

`A324347(A000108(C(n, 64))+n-1)`
-/

namespace A324346.P16447331439231287644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324347 (A000108 (Nat.choose n 64) + ((n : ℤ) - 1)).toNat

end

end A324346.P16447331439231287644

/-! ## A324346.P14977283579059798247

`A324347(n)/A324347(A243836(n)²)`
-/

namespace A324346.P14977283579059798247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324347 n : ℚ) / (A324347 (A243836 n ^ 2).toNat : ℚ)

end

end A324346.P14977283579059798247

/-!
# A324348: a(n) = A294898(A005940(1+n)), where A294898(k) = A005187(k) - A000203(k).

The programs for A324348, the canonical program `A324348.P8335576142218511792` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324348 has offset 0).

The definition of A324348 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324348.P8335576142218511792

`A294898(A005940(1+n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A324348

/-- `A294898(A005940(1+n))` -/
def P8335576142218511792.Spec : Prop :=
  ∀ n, P8335576142218511792.a n = A324348 n

theorem P8335576142218511792.correct : P8335576142218511792.Spec := by
  intro n
  simp only [A324348]

end A324348

/-! ## A324348.P16940693209053522554

`A324055(n)-A000120(A005940(1+n))`
-/

namespace A324348.P16940693209053522554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324055 n - A000120 (A005940 (1 + n)).toNat

end

end A324348.P16940693209053522554

namespace A324348

/-- `A324055(n)-A000120(A005940(1+n))` -/
def P16940693209053522554.Spec : Prop :=
  ∀ n, P16940693209053522554.a n = A324348 n

end A324348

/-! ## A324348.P15368353699279864869

`A324055(n)-A295894(n)`
-/

namespace A324348.P15368353699279864869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324055 n - A295894 n

end

end A324348.P15368353699279864869

namespace A324348

/-- `A324055(n)-A295894(n)` -/
def P15368353699279864869.Spec : Prop :=
  ∀ n, P15368353699279864869.a n = A324348 n

end A324348

/-! ## A324348.P16720747847501968849

`A324546(A252753(n))-A295894(n)`
-/

namespace A324348.P16720747847501968849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324546 (A252753 n).toNat - A295894 n

end

end A324348.P16720747847501968849

namespace A324348

/-- `A324546(A252753(n))-A295894(n)` -/
def P16720747847501968849.Spec : Prop :=
  ∀ n, P16720747847501968849.a n = A324348 n

end A324348

/-! ## A324348.P7506446727533613207

`A005187(A005940(n+1))-A324054(n)`
-/

namespace A324348.P7506446727533613207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A005940 (n + 1)).toNat - A324054 n

end

end A324348.P7506446727533613207

namespace A324348

/-- `A005187(A005940(n+1))-A324054(n)` -/
def P7506446727533613207.Spec : Prop :=
  ∀ n, P7506446727533613207.a n = A324348 n

end A324348

/-! ## A324348.P5660156943887087158

`A324055(n)-A322867(A253563(n))`
-/

namespace A324348.P5660156943887087158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324055 n - A322867 (A253563 n).toNat

end

end A324348.P5660156943887087158

namespace A324348

/-- `A324055(n)-A322867(A253563(n))` -/
def P5660156943887087158.Spec : Prop :=
  ∀ n, P5660156943887087158.a n = A324348 n

end A324348

/-! ## A324348.P17123293914427275325

`A324055(n)-A001222(A278222(A005940(n+1)))`
-/

namespace A324348.P17123293914427275325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324055 n - A001222 (A278222 (A005940 (n + 1)).toNat).toNat

end

end A324348.P17123293914427275325

namespace A324348

/-- `A324055(n)-A001222(A278222(A005940(n+1)))` -/
def P17123293914427275325.Spec : Prop :=
  ∀ n, P17123293914427275325.a n = A324348 n

end A324348

/-! ## A324348.P7928278120888523840

`∑{d}[A005940(n+1), A297114(#)]`
-/

namespace A324348.P7928278120888523840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297114 d

end

end A324348.P7928278120888523840

namespace A324348

/-- `∑{d}[A005940(n+1), A297114(#)]` -/
def P7928278120888523840.Spec : Prop :=
  ∀ n, P7928278120888523840.a n = A324348 n

end A324348

/-! ## A324348.P1219529399044970214

`A323167(A253563(n))`
-/

namespace A324348.P1219529399044970214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323167 (A253563 n).toNat

end

end A324348.P1219529399044970214

namespace A324348

/-- `A323167(A253563(n))` -/
def P1219529399044970214.Spec : Prop :=
  ∀ n, P1219529399044970214.a n = A324348 n

end A324348

/-!
# A324349: a(n) = A324122(A005940(1+n)), where A005940 is the Doudna sequence and A324122(n) = sigma(n) - gcd(n*d(n), sigma(n)).

The programs for A324349, the canonical program `A324349.P1026548390885821762` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324349 has offset 0).

The definition of A324349 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324349.P10398365879146063322

`A324054(n)-A324058(n)`
-/

namespace A324349.P10398365879146063322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324054 n - A324058 n

end

end A324349.P10398365879146063322

namespace A324349

/-- `A324054(n)-A324058(n)` -/
def P10398365879146063322.Spec : Prop :=
  ∀ n, P10398365879146063322.a n = A324349 n

end A324349

/-! ## A324349.P1026548390885821762

`A324122(A005940(1+n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A324349

/-- `A324122(A005940(1+n))` -/
def P1026548390885821762.Spec : Prop :=
  ∀ n, P1026548390885821762.a n = A324349 n

theorem P1026548390885821762.correct : P1026548390885821762.Spec := by
  intro n
  simp only [A324349]

end A324349

/-! ## A324349.P11314512488397862660

`A324054(n)-gcd(A324054(n), A324057(n))`
-/

namespace A324349.P11314512488397862660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324054 n - (Int.gcd (A324054 n) (A324057 n) : ℤ)

end

end A324349.P11314512488397862660

namespace A324349

/-- `A324054(n)-gcd(A324054(n), A324057(n))` -/
def P11314512488397862660.Spec : Prop :=
  ∀ n, P11314512488397862660.a n = A324349 n

end A324349

/-! ## A324349.P3018855433996979616

`A038712(n+1)*A324056(n)-A324058(n)`
-/

namespace A324349.P3018855433996979616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n + 1) * A324056 n - A324058 n

end

end A324349.P3018855433996979616

namespace A324349

/-- `A038712(n+1)*A324056(n)-A324058(n)` -/
def P3018855433996979616.Spec : Prop :=
  ∀ n, P3018855433996979616.a n = A324349 n

end A324349

/-! ## A324349.P14825893548177904532

`A324545(A252753(n))-A324058(n)`
-/

namespace A324349.P14825893548177904532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324545 (A252753 n).toNat - A324058 n

end

end A324349.P14825893548177904532

namespace A324349

/-- `A324545(A252753(n))-A324058(n)` -/
def P14825893548177904532.Spec : Prop :=
  ∀ n, P14825893548177904532.a n = A324349 n

end A324349

/-! ## A324349.P15784828083891250416

`A000203(A005940(n+1))-A324058(n)`
-/

namespace A324349.P15784828083891250416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A005940 (n + 1)).toNat - A324058 n

end

end A324349.P15784828083891250416

namespace A324349

/-- `A000203(A005940(n+1))-A324058(n)` -/
def P15784828083891250416.Spec : Prop :=
  ∀ n, P15784828083891250416.a n = A324349 n

end A324349

/-! ## A324349.P14798261228080318958

`A324122(A324394(n)*A324395(n))`
-/

namespace A324349.P14798261228080318958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324122 (A324394 n * A324395 n).toNat

end

end A324349.P14798261228080318958

namespace A324349

/-- `A324122(A324394(n)*A324395(n))` -/
def P14798261228080318958.Spec : Prop :=
  ∀ n, P14798261228080318958.a n = A324349 n

end A324349

/-! ## A324349.P13897697621358057594

`A324054(n)-A324121(A005940(n+1))`
-/

namespace A324349.P13897697621358057594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324054 n - A324121 (A005940 (n + 1)).toNat

end

end A324349.P13897697621358057594

namespace A324349

/-- `A324054(n)-A324121(A005940(n+1))` -/
def P13897697621358057594.Spec : Prop :=
  ∀ n, P13897697621358057594.a n = A324349 n

end A324349

/-!
# A324350: Square array read by antidiagonals: A(x,y) = gcd(A276086(x),A276086(y)), for x, y >= 0.

The programs for A324350, there is no canonical definition to state claims against.
-/

/-! ## A324350.P402921888503177643

`gcd(A276086(col(n)), A276086(row(n)-col(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324350.P402921888503177643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276086 (SequenceMachineLib.triCol n)) (A276086 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n))

end

end A324350.P402921888503177643

/-! ## A324350.P10568057052341056483

`gcd(A276086(row(n)-col(n)), A276086(col(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324350.P10568057052341056483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276086 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)) (A276086 (SequenceMachineLib.triCol n))

end

end A324350.P10568057052341056483

/-! ## A324350.P4102922807992707216

`A276086(A324351(n))`
-/

namespace A324350.P4102922807992707216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A324351 n).toNat

end

end A324350.P4102922807992707216

/-! ## A324350.P16579438187718314025

`A276076(A324351(n))%p?[A003415(n)]`
-/

namespace A324350.P16579438187718314025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276076 (A324351 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A324350.P16579438187718314025

/-! ## A324350.P14365707254547343694

`A017377(11*n)%2*A276076(A324351(n))`
-/

namespace A324350.P14365707254547343694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017377 (11 * n)) 2 * A276076 (A324351 n).toNat

end

end A324350.P14365707254547343694

/-! ## A324350.P174022487939994861

`A072410(p?[A001057(n)])*A276076(A324351(n))`
-/

namespace A324350.P174022487939994861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072410 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat * A276076 (A324351 n).toNat

end

end A324350.P174022487939994861

/-! ## A324350.P10981710639747063215

`A072410(A000040(n+2))*A276076(A324351(n))`
-/

namespace A324350.P10981710639747063215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072410 (A000040 (n + 2)).toNat * A276076 (A324351 n).toNat

end

end A324350.P10981710639747063215

/-! ## A324350.P11028330190056747106

`A080513(A001095(A324351(n))²)`
-/

namespace A324350.P11028330190056747106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A001095 (A324351 n).toNat ^ 2).toNat

end

end A324350.P11028330190056747106

/-!
# A324351: Square array read by antidiagonals: A(x,y) is the result from writing x and y in primorial base (A049345) and starting from their least significant ends, always choosing a minimal digit from each digit position, and converting back to decimal.

The programs for A324351, there is no canonical definition to state claims against.
-/

/-! ## A324351.P13774853700420342644

`A276085(gcd(A276086(col(n)), A276086(row(n)-col(n))))`
-/

namespace A324351.P13774853700420342644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (Int.gcd (A276086 (SequenceMachineLib.triCol n)) (A276086 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)))

end

end A324351.P13774853700420342644

/-! ## A324351.P1673813677219976192

`A276085(A324350(n))`
-/

namespace A324351.P1673813677219976192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A324350 n).toNat

end

end A324351.P1673813677219976192

/-! ## A324351.P17398501094080795929

`A346697(A324350(n)²)`
-/

namespace A324351.P17398501094080795929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346697 (A324350 n ^ 2).toNat

end

end A324351.P17398501094080795929

/-! ## A324351.P11460358534693609487

`A346697(A324350(n)^A043529(n))`
-/

namespace A324351.P11460358534693609487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346697 (SequenceMachineLib.roundAway ((A324350 n : ℚ) ^ (A043529 n : ℤ))).toNat

end

end A324351.P11460358534693609487

/-! ## A324351.P18077890870930721302

`A008611(A324350(n))%A099880(n)`
-/

namespace A324351.P18077890870930721302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008611 (A324350 n).toNat) (A099880 n)

end

end A324351.P18077890870930721302

/-!
# A324352: Total number of occurrences of 2 in the (signed) displacement sets of all permutations of [n+2] divided by 2!.

The programs for A324352, there is no canonical definition to state claims against.
-/

/-! ## A324352.P10896224273152954479

`A324362(∑[n+3])`
-/

namespace A324352.P10896224273152954479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A324352.P10896224273152954479

/-! ## A324352.P17892048039837339012

`record[A324362(A060577(n)-n)]`
-/

namespace A324352.P17892048039837339012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (A060577 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324352.P17892048039837339012

/-! ## A324352.P13695291393483638227

`A001710(n+2)-A000153(n+1)`
-/

namespace A324352.P13695291393483638227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001710 (n + 2) - A000153 (n + 1)

end

end A324352.P13695291393483638227

/-! ## A324352.P2909299778029760364

`record[A324362(A027379(A008624(n)))]`
-/

namespace A324352.P2909299778029760364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (A027379 (A008624 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324352.P2909299778029760364

/-! ## A324352.P3606113643456559400

`A000142(n)*A000217(n+1)-A000153(n+1)`
-/

namespace A324352.P3606113643456559400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000217 (n + 1) - A000153 (n + 1)

end

end A324352.P3606113643456559400

/-! ## A324352.P14408984057472157911

`A000142(n+2)/2-A000153(n+1)`
-/

namespace A324352.P14408984057472157911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 2) : ℚ) / 2 - (A000153 (n + 1) : ℚ)

end

end A324352.P14408984057472157911

/-!
# A324353: Total number of occurrences of 3 in the (signed) displacement sets of all permutations of [n+3] divided by 3!.

The programs for A324353, there is no canonical definition to state claims against.
-/

/-! ## A324353.P12097491888585965321

`A324362(∑[n+3]+n+3)`
-/

namespace A324353.P12097491888585965321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A324353.P12097491888585965321

/-! ## A324353.P6718747051157065590

`A324352(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A324353.P6718747051157065590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A324352 n + (n : ℤ) * a (n - 1)

end

end A324353.P6718747051157065590

/-! ## A324353.P454424130004007047

`record[A324362(A060577(n))]`
-/

namespace A324353.P454424130004007047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (A060577 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324353.P454424130004007047

/-! ## A324353.P9397742520539552755

`record[A324362(abs(A046691(n)))]`
-/

namespace A324353.P9397742520539552755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324353.P9397742520539552755

/-! ## A324353.P13304582218582325181

`record[A324362(A027379(n)-1)]`
-/

namespace A324353.P13304582218582325181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (A027379 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324353.P13304582218582325181

/-! ## A324353.P7765948715759685362

`record[and(A103452(n+4), A324362(n))]`
-/

namespace A324353.P7765948715759685362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103452 (n + 4)) (A324362 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324353.P7765948715759685362

/-! ## A324353.P12040044211110788744

`A001715(n+3)-A000261(n+2)`
-/

namespace A324353.P12040044211110788744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001715 (n + 3) - A000261 (n + 2)

end

end A324353.P12040044211110788744

/-!
# A324354: Total number of occurrences of 4 in the (signed) displacement sets of all permutations of [n+4] divided by 4!.

The programs for A324354, there is no canonical definition to state claims against.
-/

/-! ## A324354.P15723243963273976352

`A324353(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A324354.P15723243963273976352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A324353 n + (n : ℤ) * a (n - 1)

end

end A324354.P15723243963273976352

/-! ## A324354.P4606498360358549552

`record[A324362(A052905(n))]`
-/

namespace A324354.P4606498360358549552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324354.P4606498360358549552

/-! ## A324354.P12568776680609245165

`A324362(A052905(n+2))`
-/

namespace A324354.P12568776680609245165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (A052905 (n + 2)).toNat

end

end A324354.P12568776680609245165

/-! ## A324354.P15521576053462384457

`A324362(eq[4, A025581(n)])`
-/

namespace A324354.P15521576053462384457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324354.P15521576053462384457

/-! ## A324354.P1565373919452652669

`A324362(eq[5, A193739(n)])`
-/

namespace A324354.P1565373919452652669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324354.P1565373919452652669

/-! ## A324354.P2489176262461050681

`A324362(eq[9, A099375(n)])`
-/

namespace A324354.P2489176262461050681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324354.P2489176262461050681

/-! ## A324354.P18201429328857897124

`record[A324362(A060577(n)-1)]`
-/

namespace A324354.P18201429328857897124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (A060577 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324354.P18201429328857897124

/-! ## A324354.P17973152668530249759

`A324362(eq[5, A004736(n+1)])`
-/

namespace A324354.P17973152668530249759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324354.P17973152668530249759

/-! ## A324354.P10307771727702238120

`record[A324362(abs(A046691(n))-1)]`
-/

namespace A324354.P10307771727702238120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (|A046691 n| - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324354.P10307771727702238120

/-! ## A324354.P884917840714820382

`record[A324362(A046691(n+1)-1)]`
-/

namespace A324354.P884917840714820382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (A046691 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324354.P884917840714820382

/-!
# A324355: Total number of occurrences of 5 in the (signed) displacement sets of all permutations of [n+5] divided by 5!.

The programs for A324355, there is no canonical definition to state claims against.
-/

/-! ## A324355.P16929984776711520252

`A324354(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A324355.P16929984776711520252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A324354 n + (n : ℤ) * a (n - 1)

end

end A324355.P16929984776711520252

/-! ## A324355.P9145285100084680187

`A324362(A055999(n+3))`
-/

namespace A324355.P9145285100084680187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (A055999 (n + 3)).toNat

end

end A324355.P9145285100084680187

/-! ## A324355.P13093967604932043525

`A324362(eq[5, A025581(n)])`
-/

namespace A324355.P13093967604932043525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324355.P13093967604932043525

/-! ## A324355.P6407109793804964524

`A324362(eq[6, A193739(n)])`
-/

namespace A324355.P6407109793804964524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324355.P6407109793804964524

/-! ## A324355.P17117310276659802993

`A324362(eq[11, A099375(n)])`
-/

namespace A324355.P17117310276659802993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324355.P17117310276659802993

/-! ## A324355.P12820521430068237251

`A324362(eq[32, A130321(n)])`
-/

namespace A324355.P12820521430068237251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324355.P12820521430068237251

/-! ## A324355.P5985868453783179625

`A324362(Δ[A023551(n+1)])`
-/

namespace A324355.P5985868453783179625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (f1 (n + 1) - f1 n).toNat

end

end A324355.P5985868453783179625

/-! ## A324355.P15625430449399072722

`A324362(Δ[A026054(n+3)])`
-/

namespace A324355.P15625430449399072722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (f1 (n + 1) - f1 n).toNat

end

end A324355.P15625430449399072722

/-! ## A324355.P8315733435874849908

`A324362(eq[6, A004736(n+1)])`
-/

namespace A324355.P8315733435874849908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324355.P8315733435874849908

/-!
# A324356: Total number of occurrences of 6 in the (signed) displacement sets of all permutations of [n+6] divided by 6!.

The programs for A324356, there is no canonical definition to state claims against.
-/

/-! ## A324356.P11490979827285744624

`A324355(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A324356.P11490979827285744624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A324355 n + (n : ℤ) * a (n - 1)

end

end A324356.P11490979827285744624

/-! ## A324356.P8008721576667496561

`A324362(eq[6, A025581(n)])`
-/

namespace A324356.P8008721576667496561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324356.P8008721576667496561

/-! ## A324356.P8651992678854367234

`A324362(eq[13, A099375(n)])`
-/

namespace A324356.P8651992678854367234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324356.P8651992678854367234

/-! ## A324356.P16090022676426768699

`A324362(eq[64, A130321(n)])`
-/

namespace A324356.P16090022676426768699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324356.P16090022676426768699

/-! ## A324356.P473018801047494878

`A324362(eq[7, A004736(n+1)])`
-/

namespace A324356.P473018801047494878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324356.P473018801047494878

/-! ## A324356.P1541638836677710048

`A001730(n+6)-A176732(n)`
-/

namespace A324356.P1541638836677710048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001730 (n + 6) - A176732 n

end

end A324356.P1541638836677710048

/-! ## A324356.P8081811261186881441

`A324362(Δ[A023551(n+2)]-1)`
-/

namespace A324356.P8081811261186881441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (f1 (n + 1) - f1 n - 1).toNat

end

end A324356.P8081811261186881441

/-! ## A324356.P1668606411193050112

`A324362(Δ[A026054(n+4)]-1)`
-/

namespace A324356.P1668606411193050112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (f1 (n + 1) - f1 n - 1).toNat

end

end A324356.P1668606411193050112

/-!
# A324357: Total number of occurrences of 7 in the (signed) displacement sets of all permutations of [n+7] divided by 7!.

The programs for A324357, there is no canonical definition to state claims against.
-/

/-! ## A324357.P17233054029318630522

`A324356(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A324357.P17233054029318630522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A324356 n + (n : ℤ) * a (n - 1)

end

end A324357.P17233054029318630522

/-! ## A324357.P10163122506331628087

`A324362(eq[7, A025581(n)])`
-/

namespace A324357.P10163122506331628087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324357.P10163122506331628087

/-! ## A324357.P17516017014462135347

`A324362(eq[8, A195663(n)])`
-/

namespace A324357.P17516017014462135347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324357.P17516017014462135347

/-! ## A324357.P2483701087528925275

`A324362(eq[15, A099375(n)])`
-/

namespace A324357.P2483701087528925275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324357.P2483701087528925275

/-! ## A324357.P4735731489629263087

`A324362(eq[8, A004736(n+1)])`
-/

namespace A324357.P4735731489629263087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324357.P4735731489629263087

/-!
# A324358: Total number of occurrences of 8 in the (signed) displacement sets of all permutations of [n+8] divided by 8!.

The programs for A324358, there is no canonical definition to state claims against.
-/

/-! ## A324358.P61557890852574216

`A324357(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A324358.P61557890852574216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A324357 n + (n : ℤ) * a (n - 1)

end

end A324358.P61557890852574216

/-! ## A324358.P6136896018408486842

`A049389(n)-A176734(n)`
-/

namespace A324358.P6136896018408486842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049389 n - A176734 n

end

end A324358.P6136896018408486842

/-! ## A324358.P5245666230998087931

`A324362(eq[8, A025581(n)])`
-/

namespace A324358.P5245666230998087931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324358.P5245666230998087931

/-! ## A324358.P11057382706999785324

`A324362(eq[17, A099375(n)])`
-/

namespace A324358.P11057382706999785324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324358.P11057382706999785324

/-! ## A324358.P12304463759748321742

`A324362(eq[9, A004736(n+1)])`
-/

namespace A324358.P12304463759748321742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324358.P12304463759748321742

/-! ## A324358.P4339126033971903374

`∏[n+8]/8-A060475(eq[8, A025581(n)])`
-/

namespace A324358.P4339126033971903374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 8 - (A060475 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n) : ℚ)

end

end A324358.P4339126033971903374

/-! ## A324358.P1084810106079919937

`∏[n+8]/8-A060475(eq[9, A004736(n+1)])`
-/

namespace A324358.P1084810106079919937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 8 - (A060475 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n) : ℚ)

end

end A324358.P1084810106079919937

/-!
# A324359: Total number of occurrences of 9 in the (signed) displacement sets of all permutations of [n+9] divided by 9!.

The programs for A324359, there is no canonical definition to state claims against.
-/

/-! ## A324359.P17089485497829644647

`A324358(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A324359.P17089485497829644647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A324358 n + (n : ℤ) * a (n - 1)

end

end A324359.P17089485497829644647

/-! ## A324359.P442147765404534747

`A324362(eq[9, A025581(n)])`
-/

namespace A324359.P442147765404534747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324359.P442147765404534747

/-! ## A324359.P8351692139574999892

`A324362(eq[10, A193739(n)])`
-/

namespace A324359.P8351692139574999892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324359.P8351692139574999892

/-! ## A324359.P4246257302881131596

`A324362(eq[10, A195663(n)])`
-/

namespace A324359.P4246257302881131596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324359.P4246257302881131596

/-! ## A324359.P18261452096691500836

`A324362(eq[19, A099375(n)])`
-/

namespace A324359.P18261452096691500836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324359.P18261452096691500836

/-! ## A324359.P2487440712820240685

`A324362(eq[10, A004736(n+1)])`
-/

namespace A324359.P2487440712820240685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324359.P2487440712820240685

/-!
# A324360: Total number of occurrences of 10 in the (signed) displacement sets of all permutations of [n+10] divided by 10!.

The programs for A324360, there is no canonical definition to state claims against.
-/

/-! ## A324360.P11294932479948279806

`A324359(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A324360.P11294932479948279806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A324359 n + (n : ℤ) * a (n - 1)

end

end A324360.P11294932479948279806

/-! ## A324360.P13793940232575797637

`A051431(n)-A176736(n)`
-/

namespace A324360.P13793940232575797637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051431 n - A176736 n

end

end A324360.P13793940232575797637

/-! ## A324360.P12173022928728529425

`A324362(eq[10, A025581(n)])`
-/

namespace A324360.P12173022928728529425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324360.P12173022928728529425

/-! ## A324360.P17790310547078216818

`A324362(eq[10, A195664(n)])`
-/

namespace A324360.P17790310547078216818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324360.P17790310547078216818

/-! ## A324360.P3739723817438480181

`A324362(eq[11, A193739(n)])`
-/

namespace A324360.P3739723817438480181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324360.P3739723817438480181

/-! ## A324360.P4747349589529908933

`A324362(eq[21, A099375(n)])`
-/

namespace A324360.P4747349589529908933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324360.P4747349589529908933

/-! ## A324360.P10587942121128565655

`A324362(eq[11, A004736(n+1)])`
-/

namespace A324360.P10587942121128565655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324360.P10587942121128565655

/-!
# A324361: Total number of occurrences of n in the (signed) displacement sets of all permutations of [2n] divided by n!.

The programs for A324361, there is no canonical definition to state claims against.
-/

/-! ## A324361.P4052950571757678970

`(8*n-12)*a(n-1)-((4*n)²-64*n+59)*a(n-2)-(4*n-10)*a(n-3)` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A324361.P4052950571757678970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n a =>
  ((8 * n : ℤ) - 12) * a (n - 1) - (((4 * n) ^ 2 : ℤ) - (64 * n : ℤ) + 59) * a (n - 2) - ((4 * n : ℤ) - 10) * a (n - 3)

end

end A324361.P4052950571757678970

/-! ## A324361.P15452614105550299676

`A324362(∑[4*n])`
-/

namespace A324361.P15452614105550299676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A324361.P15452614105550299676

/-! ## A324361.P6906338092339955650

`record[A324362(A286145(n))]`
-/

namespace A324361.P6906338092339955650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (A286145 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324361.P6906338092339955650

/-! ## A324361.P15883162101295179054

`record[A324362(n*A003982(n))]`
-/

namespace A324361.P15883162101295179054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 ((n : ℤ) * A003982 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324361.P15883162101295179054

/-! ## A324361.P4904071248870039307

`record[A324362(gcd(n, A061579(n)))]`
-/

namespace A324361.P4904071248870039307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (Int.gcd (n : ℤ) (A061579 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324361.P4904071248870039307

/-!
# A324362: Total number of occurrences of k in the (signed) displacement sets of all permutations of [n+k] divided by k!; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A324362, there is no canonical definition to state claims against.
-/

/-! ## A324362.P12529507913233875023

`A008279(n)-A060475(n)`
-/

namespace A324362.P12529507913233875023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n - A060475 n

end

end A324362.P12529507913233875023

/-! ## A324362.P6457921804293446679

`A008279(n)-A086764(A061579(n))`
-/

namespace A324362.P6457921804293446679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n - A086764 (A061579 n).toNat

end

end A324362.P6457921804293446679

/-! ## A324362.P9452645376233587691

`A245334(n)/A004736(n+1)-A060475(n)`
-/

namespace A324362.P9452645376233587691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245334 n : ℚ) / (A004736 (n + 1) : ℚ) - (A060475 n : ℚ)

end

end A324362.P9452645376233587691

/-! ## A324362.P3099839545351637784

`A094587(A061579(n))-A060475(n)`
-/

namespace A324362.P3099839545351637784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A061579 n).toNat - A060475 n

end

end A324362.P3099839545351637784

/-! ## A324362.P3523451739194172782

`A155162(n)-(A094587(n)+A060475(n))`
-/

namespace A324362.P3523451739194172782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155162 n - (A094587 n + A060475 n)

end

end A324362.P3523451739194172782

/-! ## A324362.P1871122260062676179

`A068424(n+1)/A002024(n+1)-A060475(n)`
-/

namespace A324362.P1871122260062676179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068424 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ) - (A060475 n : ℚ)

end

end A324362.P1871122260062676179

/-! ## A324362.P11624068792814066405

`gcd(A217629(n), A218017(n))-A060475(n)`
-/

namespace A324362.P11624068792814066405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A217629 n) (A218017 n) : ℤ) - A060475 n

end

end A324362.P11624068792814066405

/-! ## A324362.P14894294889821513213

`A021010(n)/A130595(n)-A060475(n)`
-/

namespace A324362.P14894294889821513213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021010 n : ℚ) / (A130595 n : ℚ) - (A060475 n : ℚ)

end

end A324362.P14894294889821513213

/-! ## A324362.P11281307333681346098

`A113025(n)/A046899(n)-A060475(n)`
-/

namespace A324362.P11281307333681346098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113025 n : ℚ) / (A046899 n : ℚ) - (A060475 n : ℚ)

end

end A324362.P11281307333681346098

/-!
# A324365: Number of permutations p of [n] having no index i with |p(i)-i| = 3.

The programs for A324365, there is no canonical definition to state claims against.
-/

/-! ## A324365.P14927455705330941626

`n!-A324366(n)`
-/

namespace A324365.P14927455705330941626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A324366 n

end

end A324365.P14927455705330941626

/-! ## A324365.P17545158513773377058

`A000142(n)-A324366(n)`
-/

namespace A324365.P17545158513773377058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A324366 n

end

end A324365.P17545158513773377058

/-! ## A324365.P1264507137548034184

`Δ[A003422(n)]-A324366(n)`
-/

namespace A324365.P1264507137548034184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A324366 n

end

end A324365.P1264507137548034184

/-! ## A324365.P11054794783149554489

`∏[A028310(n)]-A324366(n)`
-/

namespace A324365.P11054794783149554489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A324366 n

end

end A324365.P11054794783149554489

/-! ## A324365.P11075949401726298778

`A028421(A000217(n))-A324366(n)`
-/

namespace A324365.P11075949401726298778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028421 (A000217 n).toNat - A324366 n

end

end A324365.P11075949401726298778

/-!
# A324366: Number of permutations p of [n] having at least one index i with |p(i)-i| = 3.

The programs for A324366, there is no canonical definition to state claims against.
-/

/-! ## A324366.P1174485318764302646

`n!-A324365(n)`
-/

namespace A324366.P1174485318764302646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A324365 n

end

end A324366.P1174485318764302646

/-! ## A324366.P8919012971978636902

`A000142(n)-A324365(n)`
-/

namespace A324366.P8919012971978636902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A324365 n

end

end A324366.P8919012971978636902

/-! ## A324366.P18299886747667726659

`A028421(A000217(n))-A324365(n)`
-/

namespace A324366.P18299886747667726659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028421 (A000217 n).toNat - A324365 n

end

end A324366.P18299886747667726659

/-! ## A324366.P13932040908420057548

`A068106(A000096(n))-A324365(n)`
-/

namespace A324366.P13932040908420057548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A000096 n).toNat - A324365 n

end

end A324366.P13932040908420057548

/-!
# A324368: Number of partitions of n that contain {1,2} minus number of partitions of n that contain neither 1 nor 2.

The programs for A324368, there is no canonical definition to state claims against.
-/

/-! ## A324368.P5076352312444237849

`∑[A085811(n+2)-A008483(n)]`
-/

namespace A324368.P5076352312444237849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 2) - A008483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324368.P5076352312444237849

/-! ## A324368.P2061041940017644994

`∑[A085811(n+1)]-A002865(n)`
-/

namespace A324368.P2061041940017644994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002865 n

end

end A324368.P2061041940017644994

/-! ## A324368.P1925304619445389144

`∑[A085811(n+1)]-A085811(n+3)`
-/

namespace A324368.P1925304619445389144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A085811 (n + 3)

end

end A324368.P1925304619445389144

/-! ## A324368.P6214891688302595774

`A229816(n)-2*A002865(n)`
-/

namespace A324368.P6214891688302595774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229816 n - 2 * A002865 n

end

end A324368.P6214891688302595774

/-! ## A324368.P3195650523720257946

`∑[A085811(n+2)]-A027336(n)`
-/

namespace A324368.P3195650523720257946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A027336 n

end

end A324368.P3195650523720257946

/-! ## A324368.P7012449767735210078

`A000041(n)-(A027336(n)+A002865(n))`
-/

namespace A324368.P7012449767735210078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A027336 n + A002865 n)

end

end A324368.P7012449767735210078

/-! ## A324368.P10408746432485108372

`A000041(n+1)-A320689(n+1)`
-/

namespace A324368.P10408746432485108372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A320689 (n + 1)

end

end A324368.P10408746432485108372

/-! ## A324368.P5501187522277235519

`A000065(n+1)+1-A320689(n+1)`
-/

namespace A324368.P5501187522277235519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n + 1) + (1 - A320689 (n + 1))

end

end A324368.P5501187522277235519

/-! ## A324368.P6610183200699987750

`A000041(n+1)-(A027336(n+1)+A027336(n))`
-/

namespace A324368.P6610183200699987750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A027336 (n + 1) + A027336 n)

end

end A324368.P6610183200699987750

/-! ## A324368.P17039957148431937363

`A084376(n)-(A027336(n)+A000041(n))`
-/

namespace A324368.P17039957148431937363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084376 n - (A027336 n + A000041 n)

end

end A324368.P17039957148431937363

/-! ## A324368.P16047260943214769383

`∑[A027337(n)]-A139582(n)`
-/

namespace A324368.P16047260943214769383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A139582 n

end

end A324368.P16047260943214769383

/-! ## A324368.P16207790689830067268

`∑[A085811(n+1)]-A212551(∑[n])`
-/

namespace A324368.P16207790689830067268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A212551 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A324368.P16207790689830067268

/-!
# A324369: Product of all primes p dividing n such that the sum of the base p digits of n is at least p, or 1 if no such prime.

The programs for A324369, the canonical program `A324369.P4863802651050115915` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324369 has offset 1).

The definition of A324369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324369.P11276380014096039828

`gcd(n+1, A195441(n))`
-/

namespace A324369.P11276380014096039828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A195441 n)

end

end A324369.P11276380014096039828

namespace A324369

/-- `gcd(n+1, A195441(n))` -/
def P11276380014096039828.Spec : Prop :=
  ∀ n, (P11276380014096039828.a n : ℤ) = A324369 (n + 1)

end A324369

/-! ## A324369.P6453698309405493101

`A007947(n+1)/A324371(n+1)`
-/

namespace A324369.P6453698309405493101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A324371 (n + 1) : ℚ)

end

end A324369.P6453698309405493101

namespace A324369

/-- `A007947(n+1)/A324371(n+1)` -/
def P6453698309405493101.Spec : Prop :=
  ∀ n, P6453698309405493101.a n = (A324369 (n + 1) : ℚ)

end A324369

/-! ## A324369.P7676878573191810696

`A007947(n+1)/A144845(n)*A195441(n)`
-/

namespace A324369.P7676878573191810696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A144845 n : ℚ) * (A195441 n : ℚ)

end

end A324369.P7676878573191810696

namespace A324369

/-- `A007947(n+1)/A144845(n)*A195441(n)` -/
def P7676878573191810696.Spec : Prop :=
  ∀ n, P7676878573191810696.a n = (A324369 (n + 1) : ℚ)

end A324369

/-! ## A324369.P14015809250428651319

`A007947(n+1)/A007947(A144845(n)/A195441(n))`
-/

namespace A324369.P14015809250428651319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A007947 (SequenceMachineLib.roundAway ((A144845 n : ℚ) / (A195441 n : ℚ))).toNat : ℚ)

end

end A324369.P14015809250428651319

namespace A324369

/-- `A007947(n+1)/A007947(A144845(n)/A195441(n))` -/
def P14015809250428651319.Spec : Prop :=
  ∀ n, P14015809250428651319.a n = (A324369 (n + 1) : ℚ)

end A324369

/-! ## A324369.P4863802651050115915

`gcd(A007947(n+1), A363596(n))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A324369

/-- `gcd(A007947(n+1), A363596(n))` -/
def P4863802651050115915.Spec : Prop :=
  ∀ n, (P4863802651050115915.a n : ℤ) = A324369 (n + 1)

theorem P4863802651050115915.correct : P4863802651050115915.Spec := by
  intro n
  simp only [A324369, Nat.add_sub_cancel]

end A324369

/-! ## A324369.P9428383566834549750

`A195441(n)/A318256(n)`
-/

namespace A324369.P9428383566834549750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195441 n : ℚ) / (A318256 n : ℚ)

end

end A324369.P9428383566834549750

namespace A324369

/-- `A195441(n)/A318256(n)` -/
def P9428383566834549750.Spec : Prop :=
  ∀ n, P9428383566834549750.a n = (A324369 (n + 1) : ℚ)

end A324369

/-! ## A324369.P13943665206286363678

`A144845(n)/(A318256(n)*A324371(n+1))`
-/

namespace A324369.P13943665206286363678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 n : ℚ) / (A318256 n * A324371 (n + 1) : ℚ)

end

end A324369.P13943665206286363678

namespace A324369

/-- `A144845(n)/(A318256(n)*A324371(n+1))` -/
def P13943665206286363678.Spec : Prop :=
  ∀ n, P13943665206286363678.a n = (A324369 (n + 1) : ℚ)

end A324369

/-! ## A324369.P13557106338000747088

`A341109(n)/A341107(n)`
-/

namespace A324369.P13557106338000747088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341109 n : ℚ) / (A341107 n : ℚ)

end

end A324369.P13557106338000747088

namespace A324369

/-- `A341109(n)/A341107(n)` -/
def P13557106338000747088.Spec : Prop :=
  ∀ n, P13557106338000747088.a n = (A324369 (n + 1) : ℚ)

end A324369

/-! ## A324369.P15717799739468149798

`A195441(n)/A341108(n)*A341109(n)`
-/

namespace A324369.P15717799739468149798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195441 n : ℚ) / (A341108 n : ℚ) * (A341109 n : ℚ)

end

end A324369.P15717799739468149798

namespace A324369

/-- `A195441(n)/A341108(n)*A341109(n)` -/
def P15717799739468149798.Spec : Prop :=
  ∀ n, P15717799739468149798.a n = (A324369 (n + 1) : ℚ)

end A324369

/-! ## A324369.P14352999852857781242

`A341108(n)/(A318256(n)*A341107(n))`
-/

namespace A324369.P14352999852857781242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341108 n : ℚ) / (A318256 n * A341107 n : ℚ)

end

end A324369.P14352999852857781242

namespace A324369

/-- `A341108(n)/(A318256(n)*A341107(n))` -/
def P14352999852857781242.Spec : Prop :=
  ∀ n, P14352999852857781242.a n = (A324369 (n + 1) : ℚ)

end A324369

/-!
# A324370: 

The programs for A324370, there is no canonical definition to state claims against.
-/

/-! ## A324370.P6401525856234320954

`A144845(n)/∏{p}[n+1, #]`
-/

namespace A324370.P6401525856234320954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)

end

end A324370.P6401525856234320954

/-! ## A324370.P15054518918529327661

`A144845(n)/A007947(n+1)`
-/

namespace A324370.P15054518918529327661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 n : ℚ) / (A007947 (n + 1) : ℚ)

end

end A324370.P15054518918529327661

/-! ## A324370.P2295715753861747229

`A195441(n)/A324369(n+1)`
-/

namespace A324370.P2295715753861747229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195441 n : ℚ) / (A324369 (n + 1) : ℚ)

end

end A324370.P2295715753861747229

/-! ## A324370.P9293231262184254407

`abs(A144845(n)/A062953(n+1))`
-/

namespace A324370.P9293231262184254407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A144845 n : ℚ) / (A062953 (n + 1) : ℚ)|

end

end A324370.P9293231262184254407

/-! ## A324370.P12102738823766347813

`A144845(n)/sqrt(A078615(n+1))`
-/

namespace A324370.P12102738823766347813
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A144845 n : ℝ) / Real.sqrt (A078615 (n + 1) : ℝ)

end

end A324370.P12102738823766347813

/-! ## A324370.P6026424634284262066

`A144845(n)/(A075423(n+1)+1)`
-/

namespace A324370.P6026424634284262066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 n : ℚ) / (A075423 (n + 1) + 1 : ℚ)

end

end A324370.P6026424634284262066

/-! ## A324370.P822566919751413841

`A144845(n)/(A076618(n+1)-1)`
-/

namespace A324370.P822566919751413841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 n : ℚ) / (A076618 (n + 1) - 1 : ℚ)

end

end A324370.P822566919751413841

/-! ## A324370.P18234531905479319185

`A144845(n)/∏{d}[n+1, A089026(#)]`
-/

namespace A324370.P18234531905479319185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 n : ℚ) / ((∏ d ∈ Nat.divisors (f1 n), A089026 d : ℤ) : ℚ)

end

end A324370.P18234531905479319185

/-! ## A324370.P12704422223709714911

`A144845(n)/(1-A066503(n+1)+n)`
-/

namespace A324370.P12704422223709714911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 n : ℚ) / (1 - A066503 (n + 1) + (n : ℤ) : ℚ)

end

end A324370.P12704422223709714911

/-! ## A324370.P7647130964899418562

`A144845(n)/(A073353(n+1)-(n+1))`
-/

namespace A324370.P7647130964899418562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 n : ℚ) / (A073353 (n + 1) - (n + 1 : ℤ) : ℚ)

end

end A324370.P7647130964899418562

/-! ## A324370.P2609652159962103507

`A144845(n)/A355038(n+1)%(n+2)`
-/

namespace A324370.P2609652159962103507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 n : ℚ) / (Int.tmod (A355038 (n + 1)) (n + 2 : ℤ) : ℚ)

end

end A324370.P2609652159962103507

/-! ## A324370.P1227441493236269228

`A144845(n)/A019554(2^∑{p}[n+1, log2(#)])`
-/

namespace A324370.P1227441493236269228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 n : ℚ) / (A019554 (SequenceMachineLib.roundAway ((2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (p : ℝ)))).toNat : ℚ)

end

end A324370.P1227441493236269228

/-! ## A324370.P8236971157972679386

`A144845(n)/A019554(abs(∏{p}[2*n-(n-1), -#]))`
-/

namespace A324370.P8236971157972679386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 n : ℚ) / (A019554 |∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-(p : ℤ))|.toNat : ℚ)

end

end A324370.P8236971157972679386

/-! ## A324370.P6226281636972440161

`A144845(n)/A007948(sqrt(∏{p}[2*n-(n-1), #²]))`
-/

namespace A324370.P6226281636972440161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 n : ℚ) / (A007948 (SequenceMachineLib.roundAway (Real.sqrt ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2 : ℕ) : ℝ))).toNat : ℚ)

end

end A324370.P6226281636972440161

/-! ## A324370.P16049575448016147882

`A144845(n)/A019554(A007948(n+1))`
-/

namespace A324370.P16049575448016147882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 n : ℚ) / (A019554 (A007948 (n + 1)).toNat : ℚ)

end

end A324370.P16049575448016147882

/-! ## A324370.P6119325676270288881

`A144845(n)/A015052(A015052(n+1))`
-/

namespace A324370.P6119325676270288881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 n : ℚ) / (A015052 (A015052 (n + 1)).toNat : ℚ)

end

end A324370.P6119325676270288881

/-! ## A324370.P18334952319739150154

`A144845(n)/A015053(A015053(n+1))`
-/

namespace A324370.P18334952319739150154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 n : ℚ) / (A015053 (A015053 (n + 1)).toNat : ℚ)

end

end A324370.P18334952319739150154

/-! ## A324370.P624115934169484351

`A144845(n)/A019554(A066990(n+1))`
-/

namespace A324370.P624115934169484351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 n : ℚ) / (A019554 (A066990 (n + 1)).toNat : ℚ)

end

end A324370.P624115934169484351

/-! ## A324370.P617278165932316708

`A144845(n)/A053166(A053166(n+1))`
-/

namespace A324370.P617278165932316708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 n : ℚ) / (A053166 (A053166 (n + 1)).toNat : ℚ)

end

end A324370.P617278165932316708

/-! ## A324370.P13606039532471130579

`A027642(n)/A007947(n+1)*A286515(n)`
-/

namespace A324370.P13606039532471130579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 n : ℚ) / (A007947 (n + 1) : ℚ) * (A286515 n : ℚ)

end

end A324370.P13606039532471130579

/-!
# A324371: Product of all primes p dividing n such that the sum of the base p digits of n is less than p, or 1 if no such prime.

The programs for A324371, the canonical program `A324371.P793059533806673534` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324371 has offset 1).

The definition of A324371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324371.P8134670476829217554

`A144845(n)/A195441(n)`
-/

namespace A324371.P8134670476829217554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 n : ℚ) / (A195441 n : ℚ)

end

end A324371.P8134670476829217554

namespace A324371

/-- `A144845(n)/A195441(n)` -/
def P8134670476829217554.Spec : Prop :=
  ∀ n, P8134670476829217554.a n = (A324371 (n + 1) : ℚ)

end A324371

/-! ## A324371.P793059533806673534

`A007947(n+1)/A324369(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A324371

/-- `A007947(n+1)/A324369(n+1)` -/
def P793059533806673534.Spec : Prop :=
  ∀ n, P793059533806673534.a n = (A324371 (n + 1) : ℚ)

end A324371

/-! ## A324371.P10974750885874815606

`(n+1)/A064538(n)*A144845(n)`
-/

namespace A324371.P10974750885874815606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A064538 n : ℚ) * (A144845 n : ℚ)

end

end A324371.P10974750885874815606

namespace A324371

/-- `(n+1)/A064538(n)*A144845(n)` -/
def P10974750885874815606.Spec : Prop :=
  ∀ n, P10974750885874815606.a n = (A324371 (n + 1) : ℚ)

end A324371

/-! ## A324371.P14487053085890014166

`A144845(n)/gcd(A144845(n), A338025(n+1))`
-/

namespace A324371.P14487053085890014166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 n : ℚ) / (Int.gcd (A144845 n) (A338025 (n + 1)) : ℚ)

end

end A324371.P14487053085890014166

namespace A324371

/-- `A144845(n)/gcd(A144845(n), A338025(n+1))` -/
def P14487053085890014166.Spec : Prop :=
  ∀ n, P14487053085890014166.a n = (A324371 (n + 1) : ℚ)

end A324371

/-! ## A324371.P2130641339090901971

`(A064987(n+1)/(n+1)-(n+1)-A326143(n+1))/A324369(n+1)`
-/

namespace A324371.P2130641339090901971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ) - (n + 1 : ℚ) - (A326143 (n + 1) : ℚ)) / (A324369 (n + 1) : ℚ)

end

end A324371.P2130641339090901971

namespace A324371

/-- `(A064987(n+1)/(n+1)-(n+1)-A326143(n+1))/A324369(n+1)` -/
def P2130641339090901971.Spec : Prop :=
  ∀ n, P2130641339090901971.a n = (A324371 (n + 1) : ℚ)

end A324371

/-! ## A324371.P1000704320664716813

`(A325977(n+1)+A325974(n+1)-A326143(n+1))/A324369(n+1)`
-/

namespace A324371.P1000704320664716813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325977 (n + 1) + A325974 (n + 1) - A326143 (n + 1) : ℚ) / (A324369 (n + 1) : ℚ)

end

end A324371.P1000704320664716813

namespace A324371

/-- `(A325977(n+1)+A325974(n+1)-A326143(n+1))/A324369(n+1)` -/
def P1000704320664716813.Spec : Prop :=
  ∀ n, P1000704320664716813.a n = (A324371 (n + 1) : ℚ)

end A324371

/-! ## A324371.P8744516895251453165

`(A326126(n+1)-A326128(n+1)-A326143(n+1))/A324369(n+1)`
-/

namespace A324371.P8744516895251453165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326126 (n + 1) - A326128 (n + 1) - A326143 (n + 1) : ℚ) / (A324369 (n + 1) : ℚ)

end

end A324371.P8744516895251453165

namespace A324371

/-- `(A326126(n+1)-A326128(n+1)-A326143(n+1))/A324369(n+1)` -/
def P8744516895251453165.Spec : Prop :=
  ∀ n, P8744516895251453165.a n = (A324371 (n + 1) : ℚ)

end A324371

/-! ## A324371.P14728479197939796777

`A144845(n)/gcd(A144845(n), A363596(n))`
-/

namespace A324371.P14728479197939796777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 n : ℚ) / (Int.gcd (A144845 n) (A363596 n) : ℚ)

end

end A324371.P14728479197939796777

namespace A324371

/-- `A144845(n)/gcd(A144845(n), A363596(n))` -/
def P14728479197939796777.Spec : Prop :=
  ∀ n, P14728479197939796777.a n = (A324371 (n + 1) : ℚ)

end A324371

/-! ## A324371.P7630136042483408774

`A027642(n)/A195441(n)*A286515(n)`
-/

namespace A324371.P7630136042483408774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 n : ℚ) / (A195441 n : ℚ) * (A286515 n : ℚ)

end

end A324371.P7630136042483408774

namespace A324371

/-- `A027642(n)/A195441(n)*A286515(n)` -/
def P7630136042483408774.Spec : Prop :=
  ∀ n, P7630136042483408774.a n = (A324371 (n + 1) : ℚ)

end A324371

/-! ## A324371.P17643482174777173848

`A007947(n+1)/A195441(n)*A318256(n)`
-/

namespace A324371.P17643482174777173848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A195441 n : ℚ) * (A318256 n : ℚ)

end

end A324371.P17643482174777173848

namespace A324371

/-- `A007947(n+1)/A195441(n)*A318256(n)` -/
def P17643482174777173848.Spec : Prop :=
  ∀ n, P17643482174777173848.a n = (A324371 (n + 1) : ℚ)

end A324371

/-! ## A324371.P16435407018615923965

`A144845(n)/(A318256(n)*A324369(n+1))`
-/

namespace A324371.P16435407018615923965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 n : ℚ) / (A318256 n * A324369 (n + 1) : ℚ)

end

end A324371.P16435407018615923965

namespace A324371

/-- `A144845(n)/(A318256(n)*A324369(n+1))` -/
def P16435407018615923965.Spec : Prop :=
  ∀ n, P16435407018615923965.a n = (A324371 (n + 1) : ℚ)

end A324371

/-! ## A324371.P4173634003695431943

`A007947(n+1)/A007947(A195441(n)/A318256(n))`
-/

namespace A324371.P4173634003695431943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A007947 (SequenceMachineLib.roundAway ((A195441 n : ℚ) / (A318256 n : ℚ))).toNat : ℚ)

end

end A324371.P4173634003695431943

namespace A324371

/-- `A007947(n+1)/A007947(A195441(n)/A318256(n))` -/
def P4173634003695431943.Spec : Prop :=
  ∀ n, P4173634003695431943.a n = (A324371 (n + 1) : ℚ)

end A324371

/-! ## A324371.P14275454244166645293

`A007913(∏{p}[n+1, #]*A324369(n+1))`
-/

namespace A324371.P14275454244166645293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A324369 (n + 1)).toNat

end

end A324371.P14275454244166645293

namespace A324371

/-- `A007913(∏{p}[n+1, #]*A324369(n+1))` -/
def P14275454244166645293.Spec : Prop :=
  ∀ n, P14275454244166645293.a n = A324371 (n + 1)

end A324371

/-! ## A324371.P2600344926855853310

`gcd(n+1, A034386(n+1))/A324369(n+1)`
-/

namespace A324371.P2600344926855853310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A034386 (n + 1)) : ℚ) / (A324369 (n + 1) : ℚ)

end

end A324371.P2600344926855853310

namespace A324371

/-- `gcd(n+1, A034386(n+1))/A324369(n+1)` -/
def P2600344926855853310.Spec : Prop :=
  ∀ n, P2600344926855853310.a n = (A324371 (n + 1) : ℚ)

end A324371

/-! ## A324371.P2964261636995937325

`A055231(A007947(n+1)*A324369(n+1))`
-/

namespace A324371.P2964261636995937325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A007947 (n + 1) * A324369 (n + 1)).toNat

end

end A324371.P2964261636995937325

namespace A324371

/-- `A055231(A007947(n+1)*A324369(n+1))` -/
def P2964261636995937325.Spec : Prop :=
  ∀ n, P2964261636995937325.a n = A324371 (n + 1)

end A324371

/-! ## A324371.P1091993963658895598

`lcm(A195441(n), A225481(n))/A195441(n)`
-/

namespace A324371.P1091993963658895598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A195441 n) (A225481 n) : ℚ) / (A195441 n : ℚ)

end

end A324371.P1091993963658895598

namespace A324371

/-- `lcm(A195441(n), A225481(n))/A195441(n)` -/
def P1091993963658895598.Spec : Prop :=
  ∀ n, P1091993963658895598.a n = (A324371 (n + 1) : ℚ)

end A324371

/-!
# A324373: Number of permutations p of [n] whose absolute displacements |p(i)-i| are Fibonacci numbers.

The programs for A324373, there is no canonical definition to state claims against.
-/

/-! ## A324373.P10711799561470644734

`A117004(A267099(n!))`
-/

namespace A324373.P10711799561470644734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117004 (A267099 (Nat.factorial n)).toNat

end

end A324373.P10711799561470644734

/-! ## A324373.P16549570836219211002

`A122651(A054363(n))-A010815(2*(n+2))`
-/

namespace A324373.P16549570836219211002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122651 (A054363 n).toNat - A010815 (2 * (n + 2))

end

end A324373.P16549570836219211002

/-!
# A324374: Number of permutations p of [n] whose absolute displacements |p(i)-i| are triangular numbers.

The programs for A324374, there is no canonical definition to state claims against.
-/

/-! ## A324374.P18376618315533467073

`A325395(a(n-1-and(n, n-1))+a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A324374.P18376618315533467073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A325395 (a ((n : ℤ) - 1 - Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + a (n - 1)).toNat

end

end A324374.P18376618315533467073

/-! ## A324374.P62558701626750150

`A002487(A326728(n)+A272687(n))`
-/

namespace A324374.P62558701626750150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A326728 n + A272687 n).toNat

end

end A324374.P62558701626750150

/-! ## A324374.P15901943799137835391

`A107436(or(A037123(n), A172387(n)))`
-/

namespace A324374.P15901943799137835391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107436 (Int.lor (A037123 n) (A172387 n)).toNat

end

end A324374.P15901943799137835391

/-! ## A324374.P7037074102828259113

`A107436(or(A122391(n), A172387(n)))`
-/

namespace A324374.P7037074102828259113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107436 (Int.lor (A122391 n) (A172387 n)).toNat

end

end A324374.P7037074102828259113

/-!
# A324375: Number of permutations p of [n] whose absolute displacements |p(i)-i| are square numbers.

The programs for A324375, there is no canonical definition to state claims against.
-/

/-! ## A324375.P15169516636452024570

`A324965(A130404(floor(2^(n-1))+2))`
-/

namespace A324375.P15169516636452024570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324965 (A130404 (⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 2).toNat).toNat

end

end A324375.P15169516636452024570

/-! ## A324375.P11418652363207147603

`A055529(n)+A054404(A124499(n))`
-/

namespace A324375.P11418652363207147603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055529 n + A054404 (A124499 n).toNat

end

end A324375.P11418652363207147603

/-! ## A324375.P12451983131103246164

`A324965(A179190(n)+A001045(n))`
-/

namespace A324375.P12451983131103246164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324965 (A179190 n + A001045 n).toNat

end

end A324375.P12451983131103246164

/-! ## A324375.P11647982284578053134

`A324965(A179190(n)+A005246(n))`
-/

namespace A324375.P11647982284578053134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324965 (A179190 n + A005246 n).toNat

end

end A324375.P11647982284578053134

/-! ## A324375.P7536496563838216645

`A026834(A294959(n)+A294950(n))`
-/

namespace A324375.P7536496563838216645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026834 (A294959 n + A294950 n).toNat

end

end A324375.P7536496563838216645

/-!
# A324377: a(0) = 0; for n > 0, a(n) = A000265(A005187(n)).

The programs for A324377, the canonical program `A324377.P15215388195248965144` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324377 has offset 0).

The definition of A324377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324377.P15215388195248965144

`gcd(A005187(n), A191871(A005187(n)))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A324377

/-- `gcd(A005187(n), A191871(A005187(n)))` -/
def P15215388195248965144.Spec : Prop :=
  ∀ n, (P15215388195248965144.a n : ℤ) = A324377 n

theorem P15215388195248965144.correct : P15215388195248965144.Spec := by
  intro n
  simp only [A324377]

end A324377

/-! ## A324377.P13424035113914589218

`A030101(A030101(A005187(n)))`
-/

namespace A324377.P13424035113914589218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A030101 (A005187 n).toNat).toNat

end

end A324377.P13424035113914589218

namespace A324377

/-- `A030101(A030101(A005187(n)))` -/
def P13424035113914589218.Spec : Prop :=
  ∀ n, P13424035113914589218.a n = A324377 n

end A324377

/-! ## A324377.P10725528129334939477

`A030101(A030101(A011371(2*n)))`
-/

namespace A324377.P10725528129334939477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A030101 (A011371 (2 * n)).toNat).toNat

end

end A324377.P10725528129334939477

namespace A324377

/-- `A030101(A030101(A011371(2*n)))` -/
def P10725528129334939477.Spec : Prop :=
  ∀ n, P10725528129334939477.a n = A324377 n

end A324377

/-! ## A324377.P14459068751658582279

`A030101(A030101(A011371(n)+n))`
-/

namespace A324377.P14459068751658582279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A030101 (A011371 n + (n : ℤ)).toNat).toNat

end

end A324377.P14459068751658582279

namespace A324377

/-- `A030101(A030101(A011371(n)+n))` -/
def P14459068751658582279.Spec : Prop :=
  ∀ n, P14459068751658582279.a n = A324377 n

end A324377

/-! ## A324377.P6948235945463801987

`A030101(A030101(2*n-A000120(n)))`
-/

namespace A324377.P6948235945463801987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A030101 ((2 * n : ℤ) - A000120 n).toNat).toNat

end

end A324377.P6948235945463801987

namespace A324377

/-- `A030101(A030101(2*n-A000120(n)))` -/
def P6948235945463801987.Spec : Prop :=
  ∀ n, P6948235945463801987.a n = A324377 n

end A324377

/-! ## A324377.P16915927020677393714

`lcm(A005187(n), A011782(n))/A011782(n)`
-/

namespace A324377.P16915927020677393714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A005187 n) (A011782 n) : ℚ) / (A011782 n : ℚ)

end

end A324377.P16915927020677393714

namespace A324377

/-- `lcm(A005187(n), A011782(n))/A011782(n)` -/
def P16915927020677393714.Spec : Prop :=
  ∀ n, P16915927020677393714.a n = (A324377 n : ℚ)

end A324377

/-! ## A324377.P16088921182393527388

`A163575(A028310(A011371(2*n))*A062383(n))`
-/

namespace A324377.P16088921182393527388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163575 (A028310 (A011371 (2 * n)).toNat * A062383 n).toNat

end

end A324377.P16088921182393527388

namespace A324377

/-- `A163575(A028310(A011371(2*n))*A062383(n))` -/
def P16088921182393527388.Spec : Prop :=
  ∀ n, P16088921182393527388.a n = A324377 n

end A324377

/-!
# A324378: a(n) = A000265(1+A005187(n)).

The programs for A324378, the canonical program `A324378.P5229486026381007195` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324378 has offset 0).

The definition of A324378 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324378.P5229486026381007195

`A000265(1+A005187(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A324378

/-- `A000265(1+A005187(n))` -/
def P5229486026381007195.Spec : Prop :=
  ∀ n, P5229486026381007195.a n = A324378 n

theorem P5229486026381007195.correct : P5229486026381007195.Spec := by
  intro n
  simp only [A324378]

end A324378

/-! ## A324378.P6215425512664661940

`A000265(A101925(n))`
-/

namespace A324378.P6215425512664661940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A101925 n).toNat

end

end A324378.P6215425512664661940

namespace A324378

/-- `A000265(A101925(n))` -/
def P6215425512664661940.Spec : Prop :=
  ∀ n, P6215425512664661940.a n = A324378 n

theorem P6215425512664661940.correct : P6215425512664661940.Spec := by
  intro n
  simp only [A324378, Nat.add_sub_cancel, A324378.P6215425512664661940.a, A324378.P5229486026381007195.a, A000265, A000265.P2772582252347773295.a, A005187, A005187.P3874015513960485494.a, A101925, A101925.P9724492527127448858.a, A003602, A003602.P7612175048291952394.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324378

/-! ## A324378.P6606022200412827113

`A000265(A178207(n)+1)`
-/

namespace A324378.P6606022200412827113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A178207 n + 1).toNat

end

end A324378.P6606022200412827113

namespace A324378

/-- `A000265(A178207(n)+1)` -/
def P6606022200412827113.Spec : Prop :=
  ∀ n, P6606022200412827113.a n = A324378 n

end A324378

/-! ## A324378.P5176329331975455034

`A000265(A011371(n)+1+n)`
-/

namespace A324378.P5176329331975455034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A011371 n + 1 + (n : ℤ)).toNat

end

end A324378.P5176329331975455034

namespace A324378

/-- `A000265(A011371(n)+1+n)` -/
def P5176329331975455034.Spec : Prop :=
  ∀ n, P5176329331975455034.a n = A324378 n

end A324378

/-! ## A324378.P1712106459633372339

`A000265(A004134(n)+1-n)`
-/

namespace A324378.P1712106459633372339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A004134 n + (1 - (n : ℤ))).toNat

end

end A324378.P1712106459633372339

namespace A324378

/-- `A000265(A004134(n)+1-n)` -/
def P1712106459633372339.Spec : Prop :=
  ∀ n, P1712106459633372339.a n = A324378 n

theorem P1712106459633372339.correct : P1712106459633372339.Spec := by
  intro n
  simp only [A324378, Nat.add_sub_cancel, A324378.P1712106459633372339.a, A324378.P5229486026381007195.a, A000265, A000265.P2772582252347773295.a, A004134, A004134.P15858984416175637375.a, A005187, A005187.P3874015513960485494.a, A003602, A003602.P7612175048291952394.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324378

/-! ## A324378.P4704873723049806859

`A000265(1-(n-A004134(n)))`
-/

namespace A324378.P4704873723049806859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (1 - ((n : ℤ) - A004134 n)).toNat

end

end A324378.P4704873723049806859

namespace A324378

/-- `A000265(1-(n-A004134(n)))` -/
def P4704873723049806859.Spec : Prop :=
  ∀ n, P4704873723049806859.a n = A324378 n

theorem P4704873723049806859.correct : P4704873723049806859.Spec := by
  intro n
  simp only [A324378, Nat.add_sub_cancel, A324378.P4704873723049806859.a, A324378.P5229486026381007195.a, A000265, A000265.P2772582252347773295.a, A004134, A004134.P15858984416175637375.a, A005187, A005187.P3874015513960485494.a, A003602, A003602.P7612175048291952394.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324378

/-! ## A324378.P15780768471602822609

`A000265(Δ[n²]-A000120(n))`
-/

namespace A324378.P15780768471602822609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - A000120 n).toNat

end

end A324378.P15780768471602822609

namespace A324378

/-- `A000265(Δ[n²]-A000120(n))` -/
def P15780768471602822609.Spec : Prop :=
  ∀ n, P15780768471602822609.a n = A324378 n

theorem P15780768471602822609.correct : P15780768471602822609.Spec := by
  intro n
  simp only [A324378, Nat.add_sub_cancel, A324378.P15780768471602822609.f1, A324378.P15780768471602822609.a, A324378.P5229486026381007195.a, A000120, A000120.P2816527436160941581.a, A000265, A000265.P2772582252347773295.a, A005187, A005187.P3874015513960485494.a, A003602, A003602.P7612175048291952394.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324378

/-! ## A324378.P2450277476943251339

`A000265(A288933(n+1)-(n+1))`
-/

namespace A324378.P2450277476943251339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A288933 (n + 1) - (n + 1 : ℤ)).toNat

end

end A324378.P2450277476943251339

namespace A324378

/-- `A000265(A288933(n+1)-(n+1))` -/
def P2450277476943251339.Spec : Prop :=
  ∀ n, P2450277476943251339.a n = A324378 n

end A324378

/-! ## A324378.P11779396509536629951

`A000265(n-A000120(n)+n+1)`
-/

namespace A324378.P11779396509536629951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ((n : ℤ) - A000120 n + (n + 1 : ℤ)).toNat

end

end A324378.P11779396509536629951

namespace A324378

/-- `A000265(n-A000120(n)+n+1)` -/
def P11779396509536629951.Spec : Prop :=
  ∀ n, P11779396509536629951.a n = A324378 n

theorem P11779396509536629951.correct : P11779396509536629951.Spec := by
  intro n
  simp only [A324378, Nat.add_sub_cancel, A324378.P11779396509536629951.a, A324378.P5229486026381007195.a, A000120, A000120.P2816527436160941581.a, A000265, A000265.P2772582252347773295.a, A005187, A005187.P3874015513960485494.a, A003602, A003602.P7612175048291952394.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324378

/-! ## A324378.P226213858088952640

`A000265(A086343(n+1)-(2*n+1))`
-/

namespace A324378.P226213858088952640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A086343 (n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A324378.P226213858088952640

namespace A324378

/-- `A000265(A086343(n+1)-(2*n+1))` -/
def P226213858088952640.Spec : Prop :=
  ∀ n, P226213858088952640.a n = A324378 n

theorem P226213858088952640.correct : P226213858088952640.Spec := by
  intro n
  simp only [A324378, Nat.add_sub_cancel, A324378.P226213858088952640.a, A324378.P5229486026381007195.a, A000265, A000265.P2772582252347773295.a, A005187, A005187.P3874015513960485494.a, A086343, A086343.P8284013822573750690.a, A000120, A000120.P2816527436160941581.a, A003602, A003602.P7612175048291952394.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324378

/-! ## A324378.P14628567784069290199

`A000265(A005843(n)+1-A000120(n))`
-/

namespace A324378.P14628567784069290199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A005843 n + (1 - A000120 n)).toNat

end

end A324378.P14628567784069290199

namespace A324378

/-- `A000265(A005843(n)+1-A000120(n))` -/
def P14628567784069290199.Spec : Prop :=
  ∀ n, P14628567784069290199.a n = A324378 n

theorem P14628567784069290199.correct : P14628567784069290199.Spec := by
  intro n
  simp only [A324378, Nat.add_sub_cancel, A324378.P14628567784069290199.a, A324378.P5229486026381007195.a, A000120, A000120.P2816527436160941581.a, A000265, A000265.P2772582252347773295.a, A005187, A005187.P3874015513960485494.a, A005843, A005843.P3167286115683555970.a, A003602, A003602.P7612175048291952394.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324378

/-! ## A324378.P16463623940699097447

`A000265(1-(A000120(n)-A005843(n)))`
-/

namespace A324378.P16463623940699097447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (1 - (A000120 n - A005843 n)).toNat

end

end A324378.P16463623940699097447

namespace A324378

/-- `A000265(1-(A000120(n)-A005843(n)))` -/
def P16463623940699097447.Spec : Prop :=
  ∀ n, P16463623940699097447.a n = A324378 n

theorem P16463623940699097447.correct : P16463623940699097447.Spec := by
  intro n
  simp only [A324378, Nat.add_sub_cancel, A324378.P16463623940699097447.a, A324378.P5229486026381007195.a, A000120, A000120.P2816527436160941581.a, A000265, A000265.P2772582252347773295.a, A005187, A005187.P3874015513960485494.a, A005843, A005843.P3167286115683555970.a, A003602, A003602.P7612175048291952394.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324378

/-! ## A324378.P1203980592151457415

`A000265(2*n+1-(A160385(n)+A160383(n)))`
-/

namespace A324378.P1203980592151457415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ((2 * n + 1 : ℤ) - (A160385 n + A160383 n)).toNat

end

end A324378.P1203980592151457415

namespace A324378

/-- `A000265(2*n+1-(A160385(n)+A160383(n)))` -/
def P1203980592151457415.Spec : Prop :=
  ∀ n, P1203980592151457415.a n = A324378 n

end A324378

/-! ## A324378.P8252535620344138344

`A166466(2*n-(n-(∑[val(n+1, 2)]-val(n+1, 2)))+1)/3`
-/

namespace A324378.P8252535620344138344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166466 ((2 * n : ℤ) - ((n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ))) + 1).toNat : ℚ) / 3

end

end A324378.P8252535620344138344

namespace A324378

/-- `A166466(2*n-(n-(∑[val(n+1, 2)]-val(n+1, 2)))+1)/3` -/
def P8252535620344138344.Spec : Prop :=
  ∀ n, P8252535620344138344.a n = (A324378 n : ℚ)

end A324378

/-! ## A324378.P16966887740476963672

`A166466(A005187(n)+1)/3`
-/

namespace A324378.P16966887740476963672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166466 (A005187 n + 1).toNat : ℚ) / 3

end

end A324378.P16966887740476963672

namespace A324378

/-- `A166466(A005187(n)+1)/3` -/
def P16966887740476963672.Spec : Prop :=
  ∀ n, P16966887740476963672.a n = (A324378 n : ℚ)

end A324378

/-! ## A324378.P14277787385478499573

`A153733(A011371(n)+n)+1`
-/

namespace A324378.P14277787385478499573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 (A011371 n + (n : ℤ)).toNat + 1

end

end A324378.P14277787385478499573

namespace A324378

/-- `A153733(A011371(n)+n)+1` -/
def P14277787385478499573.Spec : Prop :=
  ∀ n, P14277787385478499573.a n = A324378 n

end A324378

/-! ## A324378.P14905858283307622463

`A166466(∑[val(A004277(n), 2)]+1)/3`
-/

namespace A324378.P14905858283307622463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004277 n).toNat 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166466 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 3

end

end A324378.P14905858283307622463

namespace A324378

/-- `A166466(∑[val(A004277(n), 2)]+1)/3` -/
def P14905858283307622463.Spec : Prop :=
  ∀ n, P14905858283307622463.a n = (A324378 n : ℚ)

end A324378

/-! ## A324378.P9075539917046280013

`A166466(∑[val(A255177(n), 2)]+1)/3`
-/

namespace A324378.P9075539917046280013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A255177 n).toNat 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166466 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 3

end

end A324378.P9075539917046280013

namespace A324378

/-- `A166466(∑[val(A255177(n), 2)]+1)/3` -/
def P9075539917046280013.Spec : Prop :=
  ∀ n, P9075539917046280013.a n = (A324378 n : ℚ)

end A324378

/-! ## A324378.P5915831041596056457

`A000265(∑[A136480(2*n)])`
-/

namespace A324378.P5915831041596056457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A324378.P5915831041596056457

namespace A324378

/-- `A000265(∑[A136480(2*n)])` -/
def P5915831041596056457.Spec : Prop :=
  ∀ n, P5915831041596056457.a n = A324378 n

end A324378

/-! ## A324378.P15942563143169606700

`A000265(A227361(2*n+1)+1)`
-/

namespace A324378.P15942563143169606700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A227361 (2 * n + 1) + 1).toNat

end

end A324378.P15942563143169606700

namespace A324378

/-- `A000265(A227361(2*n+1)+1)` -/
def P15942563143169606700.Spec : Prop :=
  ∀ n, P15942563143169606700.a n = A324378 n

end A324378

/-!
# A324379: a(n) = A007814(A005187(n)).

The programs for A324379, the canonical program `A324379.P10721248754641140736` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324379 has offset 1).

The definition of A324379 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007814(A005187(n+1))` (program `A324379.P10721248754641140736`, by `A324379.P10721248754641140736.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A324379.P10721248754641140736

`A007814(A005187(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A324379

/-- `A007814(A005187(n+1))` -/
def P10721248754641140736.Spec : Prop :=
  ∀ n, P10721248754641140736.a n = A324379 (n + 1)

theorem P10721248754641140736.correct : P10721248754641140736.Spec := by
  intro n
  simp only [A324379, Nat.add_sub_cancel]

end A324379

/-! ## A324379.P14247832057560903900

`val(∑[val(n+1, 2)+1], 2)`
-/

namespace A324379.P14247832057560903900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A324379.P14247832057560903900

namespace A324379

/-- `val(∑[val(n+1, 2)+1], 2)` -/
def P14247832057560903900.Spec : Prop :=
  ∀ n, (P14247832057560903900.a n : ℤ) = A324379 (n + 1)

end A324379

/-! ## A324379.P18286859127465381462

`val(∑[val(1-Δ[-n²], 2)], 2)`
-/

namespace A324379.P18286859127465381462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (1 - (f2 (n + 1) - f2 n)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A324379.P18286859127465381462

namespace A324379

/-- `val(∑[val(1-Δ[-n²], 2)], 2)` -/
def P18286859127465381462.Spec : Prop :=
  ∀ n, (P18286859127465381462.a n : ℤ) = A324379 (n + 1)

end A324379

/-! ## A324379.P11274550861996917212

`val(record[val(n, 2)-a(n-1)], 2)` with `a(0)=1, a(1)=0`
-/

namespace A324379.P11274550861996917212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (SequenceMachineLib.valuation n 2 : ℤ) - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A324379.P11274550861996917212

namespace A324379

/-- `val(record[val(n, 2)-a(n-1)], 2)` -/
def P11274550861996917212.Spec : Prop :=
  ∀ n, (P11274550861996917212.a n : ℤ) = A324379 (n + 1)

end A324379

/-! ## A324379.P5107579326208239079

`val(A283208(n)+1, 2)`
-/

namespace A324379.P5107579326208239079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A283208 n + 1).toNat 2

end

end A324379.P5107579326208239079

namespace A324379

/-- `val(A283208(n)+1, 2)` -/
def P5107579326208239079.Spec : Prop :=
  ∀ n, (P5107579326208239079.a n : ℤ) = A324379 (n + 1)

end A324379

/-! ## A324379.P487202904281258345

`val(∑[A001511(n+1)], 2)`
-/

namespace A324379.P487202904281258345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A324379.P487202904281258345

namespace A324379

/-- `val(∑[A001511(n+1)], 2)` -/
def P487202904281258345.Spec : Prop :=
  ∀ n, (P487202904281258345.a n : ℤ) = A324379 (n + 1)

end A324379

/-! ## A324379.P12795480170787381721

`val(∑[A007814(n+1)+1], 2)`
-/

namespace A324379.P12795480170787381721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A324379.P12795480170787381721

namespace A324379

/-- `val(∑[A007814(n+1)+1], 2)` -/
def P12795480170787381721.Spec : Prop :=
  ∀ n, (P12795480170787381721.a n : ℤ) = A324379 (n + 1)

end A324379

/-! ## A324379.P16063337217730105345

`A001222(A005187(n+1)/A000265(A005187(n+1)))`
-/

namespace A324379.P16063337217730105345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A005187 (n + 1) : ℚ) / (A000265 (A005187 (n + 1)).toNat : ℚ))).toNat

end

end A324379.P16063337217730105345

namespace A324379

/-- `A001222(A005187(n+1)/A000265(A005187(n+1)))` -/
def P16063337217730105345.Spec : Prop :=
  ∀ n, P16063337217730105345.a n = A324379 (n + 1)

end A324379

/-! ## A324379.P15294393859939677319

`A277808(A003188(A005187(A006068(A003188(n+1)))))`
-/

namespace A324379.P15294393859939677319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277808 (A003188 (A005187 (A006068 (A003188 (n + 1)).toNat).toNat).toNat).toNat

end

end A324379.P15294393859939677319

namespace A324379

/-- `A277808(A003188(A005187(A006068(A003188(n+1)))))` -/
def P15294393859939677319.Spec : Prop :=
  ∀ n, P15294393859939677319.a n = A324379 (n + 1)

end A324379

/-! ## A324379.P14941683617011721511

`A007814(∑[A001511(n+1)])`
-/

namespace A324379.P14941683617011721511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A324379.P14941683617011721511

namespace A324379

/-- `A007814(∑[A001511(n+1)])` -/
def P14941683617011721511.Spec : Prop :=
  ∀ n, P14941683617011721511.a n = A324379 (n + 1)

end A324379

/-! ## A324379.P14407184955287980523

`A007814(A101925(n+1)-1)`
-/

namespace A324379.P14407184955287980523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A101925 (n + 1) - 1).toNat

end

end A324379.P14407184955287980523

namespace A324379

/-- `A007814(A101925(n+1)-1)` -/
def P14407184955287980523.Spec : Prop :=
  ∀ n, P14407184955287980523.a n = A324379 (n + 1)

theorem P14407184955287980523.correct : P14407184955287980523.Spec := by
  intro n
  simp only [A324379, Nat.add_sub_cancel, A324379.P14407184955287980523.a, A324379.P10721248754641140736.a, A005187, A005187.P3874015513960485494.a, A007814, A007814.P13537437864234730737.a, A101925, A101925.P9724492527127448858.a, A001511, A001511.P17146462531039486101.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324379

/-! ## A324379.P13496271302639498584

`A001511(A283208(n)+1)-1`
-/

namespace A324379.P13496271302639498584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A283208 n + 1).toNat - 1

end

end A324379.P13496271302639498584

namespace A324379

/-- `A001511(A283208(n)+1)-1` -/
def P13496271302639498584.Spec : Prop :=
  ∀ n, P13496271302639498584.a n = A324379 (n + 1)

theorem P13496271302639498584.correct : P13496271302639498584.Spec := by
  intro n
  simp only [A324379, Nat.add_sub_cancel, A324379.P13496271302639498584.a, A324379.P10721248754641140736.a, A001511, A001511.P17146462531039486101.a, A005187, A005187.P3874015513960485494.a, A007814, A007814.P13537437864234730737.a, A283208, A283208.P4144003533356594521.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324379

/-! ## A324379.P16836736006241188572

`A007814(∑[A007814(n+1)+1])`
-/

namespace A324379.P16836736006241188572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A324379.P16836736006241188572

namespace A324379

/-- `A007814(∑[A007814(n+1)+1])` -/
def P16836736006241188572.Spec : Prop :=
  ∀ n, P16836736006241188572.a n = A324379 (n + 1)

end A324379

/-! ## A324379.P16987844472628617195

`A001511(∑[A001511(n+1)])-1`
-/

namespace A324379.P16987844472628617195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A324379.P16987844472628617195

namespace A324379

/-- `A001511(∑[A001511(n+1)])-1` -/
def P16987844472628617195.Spec : Prop :=
  ∀ n, P16987844472628617195.a n = A324379 (n + 1)

end A324379

/-! ## A324379.P15764128656392416520

`A007814(A011371(n+1)+n+1)`
-/

namespace A324379.P15764128656392416520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A011371 (n + 1) + (n + 1 : ℤ)).toNat

end

end A324379.P15764128656392416520

namespace A324379

/-- `A007814(A011371(n+1)+n+1)` -/
def P15764128656392416520.Spec : Prop :=
  ∀ n, P15764128656392416520.a n = A324379 (n + 1)

end A324379

/-! ## A324379.P7514858488955477294

`A007814(A004134(n+1)-(n+1))`
-/

namespace A324379.P7514858488955477294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A004134 (n + 1) - (n + 1 : ℤ)).toNat

end

end A324379.P7514858488955477294

namespace A324379

/-- `A007814(A004134(n+1)-(n+1))` -/
def P7514858488955477294.Spec : Prop :=
  ∀ n, P7514858488955477294.a n = A324379 (n + 1)

theorem P7514858488955477294.correct : P7514858488955477294.Spec := by
  intro n
  simp only [A324379, Nat.add_sub_cancel, A324379.P7514858488955477294.a, A324379.P10721248754641140736.a, A004134, A004134.P15858984416175637375.a, A005187, A005187.P3874015513960485494.a, A007814, A007814.P13537437864234730737.a, A001511, A001511.P17146462531039486101.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324379

/-! ## A324379.P8630900520648728889

`A007814(2*n+1-A048881(n))`
-/

namespace A324379.P8630900520648728889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 ((2 * n + 1 : ℤ) - A048881 n).toNat

end

end A324379.P8630900520648728889

namespace A324379

/-- `A007814(2*n+1-A048881(n))` -/
def P8630900520648728889.Spec : Prop :=
  ∀ n, P8630900520648728889.a n = A324379 (n + 1)

theorem P8630900520648728889.correct : P8630900520648728889.Spec := by
  intro n
  simp only [A324379, Nat.add_sub_cancel, A324379.P8630900520648728889.a, A324379.P10721248754641140736.a, A005187, A005187.P3874015513960485494.a, A007814, A007814.P13537437864234730737.a, A048881, A048881.P16567064232951496228.a, A000120, A000120.P2816527436160941581.a, A001511, A001511.P17146462531039486101.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324379

/-! ## A324379.P17992172900547969393

`A007814(∑[A000120(A038712(n+1))])`
-/

namespace A324379.P17992172900547969393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A038712 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A324379.P17992172900547969393

namespace A324379

/-- `A007814(∑[A000120(A038712(n+1))])` -/
def P17992172900547969393.Spec : Prop :=
  ∀ n, P17992172900547969393.a n = A324379 (n + 1)

end A324379

/-! ## A324379.P13495788558374565415

`A007814(∑[A038374(A038712(n+1))])`
-/

namespace A324379.P13495788558374565415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (A038712 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A324379.P13495788558374565415

namespace A324379

/-- `A007814(∑[A038374(A038712(n+1))])` -/
def P13495788558374565415.Spec : Prop :=
  ∀ n, P13495788558374565415.a n = A324379 (n + 1)

end A324379

/-! ## A324379.P12698529266402038429

`A007814(A011371(2*(n+1)))`
-/

namespace A324379.P12698529266402038429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A011371 (2 * (n + 1))).toNat

end

end A324379.P12698529266402038429

namespace A324379

/-- `A007814(A011371(2*(n+1)))` -/
def P12698529266402038429.Spec : Prop :=
  ∀ n, P12698529266402038429.a n = A324379 (n + 1)

end A324379

/-!
# A324380: Lexicographically earliest positive sequence such that a(i) = a(j) => A069010(i) = A069010(j) and A324386(i) = A324386(j), for all i, j >= 0.

The programs for A324380, there is no canonical definition to state claims against.
-/

/-! ## A324380.P3918479986018980900

`A043283(A135880(2*(n+1)))*A322591(n+1)`
-/

namespace A324380.P3918479986018980900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (A135880 (2 * (n + 1))).toNat * A322591 (n + 1)

end

end A324380.P3918479986018980900

/-! ## A324380.P6620844969420272101

`A083888(A196012(n+1))*A322591(n+1)`
-/

namespace A324380.P6620844969420272101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083888 (A196012 (n + 1)).toNat * A322591 (n + 1)

end

end A324380.P6620844969420272101

/-! ## A324380.P10500959568674137007

`A143811(A157286(n+1))*A322591(n+1)`
-/

namespace A324380.P10500959568674137007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143811 (A157286 (n + 1)).toNat * A322591 (n + 1)

end

end A324380.P10500959568674137007

/-! ## A324380.P12465408205351455805

`A043279(A334496(n+1))*A322591(n+1)`
-/

namespace A324380.P12465408205351455805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043279 (A334496 (n + 1)).toNat * A322591 (n + 1)

end

end A324380.P12465408205351455805

/-! ## A324380.P16521630351287509986

`A052409(A030436(n+4))*A322591(n+1)`
-/

namespace A324380.P16521630351287509986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A030436 (n + 4)).toNat * A322591 (n + 1)

end

end A324380.P16521630351287509986

/-!
# A324381: Number of nonzero digits when the n-th highly composite number is written in primorial base: a(n) = A267263(A002182(n)).

The programs for A324381, there is no canonical definition to state claims against.
-/

/-! ## A324381.P17882138310806484758

`A329040(A329902(n+1))`
-/

namespace A324381.P17882138310806484758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329040 (A329902 (n + 1)).toNat

end

end A324381.P17882138310806484758

/-! ## A324381.P1349148654221100864

`A365460(A353562(n+1))`
-/

namespace A324381.P1349148654221100864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365460 (A353562 (n + 1)).toNat

end

end A324381.P1349148654221100864

/-! ## A324381.P11769186309071076792

`∑{p}[A346091(A329902(n+1)), A001221(#)]`
-/

namespace A324381.P11769186309071076792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346091 (A329902 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p

end

end A324381.P11769186309071076792

/-! ## A324381.P3453729877239535840

`∑{p}[A346091(A329902(n+1)), A276088(#)]`
-/

namespace A324381.P3453729877239535840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346091 (A329902 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A276088 p

end

end A324381.P3453729877239535840

/-! ## A324381.P13088823439389669204

`∑{p}[A346091(A329902(n+1)), A344592(#)]`
-/

namespace A324381.P13088823439389669204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346091 (A329902 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A344592 p

end

end A324381.P13088823439389669204

/-!
# A324382: Minimal number of primorials that add to the n-th highly composite number: a(n) = A276150(A002182(n)).

The programs for A324382, there is no canonical definition to state claims against.
-/

/-! ## A324382.P18025112305391814291

`A276150(A002182(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324382.P18025112305391814291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (A002182 (n + 1)).toNat

end

end A324382.P18025112305391814291

/-! ## A324382.P2636081093576222308

`A112778(n+1)-A329622(A329902(n+1))`
-/

namespace A324382.P2636081093576222308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112778 (n + 1) - A329622 (A329902 (n + 1)).toNat

end

end A324382.P2636081093576222308

/-! ## A324382.P6083369313369792571

`A324888(A329902(n+1))`
-/

namespace A324382.P6083369313369792571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324888 (A329902 (n + 1)).toNat

end

end A324382.P6083369313369792571

/-! ## A324382.P13840440481957840325

`A365461(A353562(n+1))`
-/

namespace A324382.P13840440481957840325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365461 (A353562 (n + 1)).toNat

end

end A324382.P13840440481957840325

/-! ## A324382.P3508651414696062189

`A324387(A306802(n+1))`
-/

namespace A324382.P3508651414696062189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324387 (A306802 (n + 1)).toNat

end

end A324382.P3508651414696062189

/-! ## A324382.P3555762181686675117

`A036041(A306802(n+1))-A329622(A329902(n+1))`
-/

namespace A324382.P3555762181686675117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036041 (A306802 (n + 1)).toNat - A329622 (A329902 (n + 1)).toNat

end

end A324382.P3555762181686675117

/-! ## A324382.P17091922970588935473

`A122376(A002183(n+1))-A329622(A329902(n+1))`
-/

namespace A324382.P17091922970588935473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122376 (A002183 (n + 1)).toNat - A329622 (A329902 (n + 1)).toNat

end

end A324382.P17091922970588935473

/-!
# A324383: a(n) is the minimal number of primorials that add to A322827(n).

The programs for A324383, the canonical program `A324383.P15879416955097442241` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324383 has offset 0).

The definition of A324383 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, A322827, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324383.P14073421369894564006

`A324386(A003188(n))`
-/

namespace A324383.P14073421369894564006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324386 (A003188 n).toNat

end

end A324383.P14073421369894564006

namespace A324383

/-- `A324386(A003188(n))` -/
def P14073421369894564006.Spec : Prop :=
  ∀ n, P14073421369894564006.a n = A324383 n

end A324383

/-! ## A324383.P15879416955097442241

`A276150(A322827(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A324383

/-- `A276150(A322827(n))` -/
def P15879416955097442241.Spec : Prop :=
  ∀ n, P15879416955097442241.a n = A324383 n

theorem P15879416955097442241.correct : P15879416955097442241.Spec := by
  intro n
  simp only [A324383]

end A324383

/-! ## A324383.P11653621474205027766

`A324386(A286548(n)+n)`
-/

namespace A324383.P11653621474205027766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324386 (A286548 n + (n : ℤ)).toNat

end

end A324383.P11653621474205027766

namespace A324383

/-- `A324386(A286548(n)+n)` -/
def P11653621474205027766.Spec : Prop :=
  ∀ n, P11653621474205027766.a n = A324383 n

end A324383

/-! ## A324383.P7261760535299221475

`A324386(xor(n, A004526(n)))`
-/

namespace A324383.P7261760535299221475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324386 (Int.xor (n : ℤ) (A004526 n)).toNat

end

end A324383.P7261760535299221475

namespace A324383

/-- `A324386(xor(n, A004526(n)))` -/
def P7261760535299221475.Spec : Prop :=
  ∀ n, P7261760535299221475.a n = A324383 n

end A324383

/-! ## A324383.P429517240935948845

`A324386(xor(n, A123108(n)))`
-/

namespace A324383.P429517240935948845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324386 (Int.xor (n : ℤ) (A123108 n)).toNat

end

end A324383.P429517240935948845

namespace A324383

/-- `A324386(xor(n, A123108(n)))` -/
def P429517240935948845.Spec : Prop :=
  ∀ n, P429517240935948845.a n = A324383 n

end A324383

/-! ## A324383.P5270583089327068279

`A324386(A292272(n)+A229762(n))`
-/

namespace A324383.P5270583089327068279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324386 (A292272 n + A229762 n).toNat

end

end A324383.P5270583089327068279

namespace A324383

/-- `A324386(A292272(n)+A229762(n))` -/
def P5270583089327068279.Spec : Prop :=
  ∀ n, P5270583089327068279.a n = A324383 n

end A324383

/-! ## A324383.P15532306240871840317

`A365461(A243353(n))`
-/

namespace A324383.P15532306240871840317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365461 (A243353 n).toNat

end

end A324383.P15532306240871840317

namespace A324383

/-- `A365461(A243353(n))` -/
def P15532306240871840317.Spec : Prop :=
  ∀ n, P15532306240871840317.a n = A324383 n

end A324383

/-!
# A324384: a(n) = gcd(n, A276154(n)), where A276154 is the primorial base left shift.

The programs for A324384, there is no canonical definition to state claims against.
-/

/-! ## A324384.P12039504395168077652

`gcd(n, A276154(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324384.P12039504395168077652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A276154 n)

end

end A324384.P12039504395168077652

/-! ## A324384.P14817589686200731037

`gcd(A038608(n), A277021(2*A277022(n)))`
-/

namespace A324384.P14817589686200731037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038608 n) (A277021 (2 * A277022 n).toNat)

end

end A324384.P14817589686200731037

/-! ## A324384.P1441607814299482334

`gcd(A118759(A328770(n+1)), A118759(n))`
-/

namespace A324384.P1441607814299482334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A118759 (A328770 (n + 1)).toNat) (A118759 n)

end

end A324384.P1441607814299482334

/-! ## A324384.P12011606989467748208

`gcd(A192002(A003623(n+1)), A328770(n+1))`
-/

namespace A324384.P12011606989467748208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A192002 (A003623 (n + 1)).toNat) (A328770 (n + 1))

end

end A324384.P12011606989467748208

/-! ## A324384.P15927082631325019668

`gcd(A328770(n+1)+C(n, A109839(2*n+1)), n²)`
-/

namespace A324384.P15927082631325019668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A328770 (n + 1) + (Nat.choose n (A109839 (2 * n + 1)).toNat : ℤ)) (n ^ 2 : ℤ)

end

end A324384.P15927082631325019668

/-!
# A324385: Distance from the n-th highly composite number, A002182(n), from the largest prime <= A002182(n).

The programs for A324385, there is no canonical definition to state claims against.
-/

/-! ## A324385.P15945378300746534019

`A339385(n+2)-A141345(n+2)%A129912(n+1)`
-/

namespace A324385.P15945378300746534019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339385 (n + 2) - Int.tmod (A141345 (n + 2)) (A129912 (n + 1))

end

end A324385.P15945378300746534019

/-! ## A324385.P15915465790792426219

`A175851(A002182(n+2))-1`
-/

namespace A324385.P15915465790792426219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (A002182 (n + 2)).toNat - 1

end

end A324385.P15915465790792426219

/-!
# A324386: a(n) = A324383(A006068(n)).

The programs for A324386, the canonical program `A324386.P5132127353883200254` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324386 has offset 0).

The definition of A324386 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, A324383, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324386.P5132127353883200254

`A324383(A006068(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A324386

/-- `A324383(A006068(n))` -/
def P5132127353883200254.Spec : Prop :=
  ∀ n, P5132127353883200254.a n = A324386 n

theorem P5132127353883200254.correct : P5132127353883200254.Spec := by
  intro n
  simp only [A324386]

end A324386

/-! ## A324386.P9773410929926534344

`A324383(A292600(2*n))`
-/

namespace A324386.P9773410929926534344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324383 (A292600 (2 * n)).toNat

end

end A324386.P9773410929926534344

namespace A324386

/-- `A324383(A292600(2*n))` -/
def P9773410929926534344.Spec : Prop :=
  ∀ n, P9773410929926534344.a n = A324386 n

end A324386

/-! ## A324386.P14825886462771449877

`A324383(A268716(n)/2)`
-/

namespace A324386.P14825886462771449877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324383 (SequenceMachineLib.roundAway ((A268716 n : ℚ) / 2)).toNat

end

end A324386.P14825886462771449877

namespace A324386

/-- `A324383(A268716(n)/2)` -/
def P14825886462771449877.Spec : Prop :=
  ∀ n, P14825886462771449877.a n = A324386 n

end A324386

/-! ## A324386.P13712443607546314254

`A324383(A066194(n+1)-1)`
-/

namespace A324386.P13712443607546314254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324383 (A066194 (n + 1) - 1).toNat

end

end A324386.P13712443607546314254

namespace A324386

/-- `A324383(A066194(n+1)-1)` -/
def P13712443607546314254.Spec : Prop :=
  ∀ n, P13712443607546314254.a n = A324386 n

end A324386

/-! ## A324386.P1784349054337175590

`A324383(xor(A001969(n+1), A268716(n)))`
-/

namespace A324386.P1784349054337175590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324383 (Int.xor (A001969 (n + 1)) (A268716 n)).toNat

end

end A324386.P1784349054337175590

namespace A324386

/-- `A324383(xor(A001969(n+1), A268716(n)))` -/
def P1784349054337175590.Spec : Prop :=
  ∀ n, P1784349054337175590.a n = A324386 n

end A324386

/-! ## A324386.P17826510358678325039

`A365461(A005940(n+1))`
-/

namespace A324386.P17826510358678325039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365461 (A005940 (n + 1)).toNat

end

end A324386.P17826510358678325039

namespace A324386

/-- `A365461(A005940(n+1))` -/
def P17826510358678325039.Spec : Prop :=
  ∀ n, P17826510358678325039.a n = A324386 n

end A324386

/-! ## A324386.P8939490158832752761

`A324888(A253563(n))`
-/

namespace A324386.P8939490158832752761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324888 (A253563 n).toNat

end

end A324386.P8939490158832752761

namespace A324386

/-- `A324888(A253563(n))` -/
def P8939490158832752761.Spec : Prop :=
  ∀ n, P8939490158832752761.a n = A324386 n

end A324386

/-!
# A324387: Minimal number of primorials (A002110) that add to the n-th number that is a product of primorials: a(n) = A276150(A025487(n)).

The programs for A324387, there is no canonical definition to state claims against.
-/

/-! ## A324387.P10542574538487486968

`A276150(A025487(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324387.P10542574538487486968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (A025487 (n + 1)).toNat

end

end A324387.P10542574538487486968

/-! ## A324387.P17577230388621953490

`A365461(A181820(n+1))`
-/

namespace A324387.P17577230388621953490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365461 (A181820 (n + 1)).toNat

end

end A324387.P17577230388621953490

/-! ## A324387.P16959862916892627383

`A036041(n+1)-A329622(A181815(n+1))`
-/

namespace A324387.P16959862916892627383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036041 (n + 1) - A329622 (A181815 (n + 1)).toNat

end

end A324387.P16959862916892627383

/-! ## A324387.P7069731748945657542

`A001222(A025487(n+1))-A329622(A181815(n+1))`
-/

namespace A324387.P7069731748945657542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A025487 (n + 1)).toNat - A329622 (A181815 (n + 1)).toNat

end

end A324387.P7069731748945657542

/-! ## A324387.P3376962262713686803

`A324888(A181815(n+1))`
-/

namespace A324387.P3376962262713686803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324888 (A181815 (n + 1)).toNat

end

end A324387.P3376962262713686803

/-! ## A324387.P9994276059259794890

`A276150(record[A329899(n+1)])`
-/

namespace A324387.P9994276059259794890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A324387.P9994276059259794890

/-! ## A324387.P3256464736012820813

`A276150(record[A051466(n+2)])`
-/

namespace A324387.P3256464736012820813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A324387.P3256464736012820813

/-! ## A324387.P6974847704198225926

`A276150(A324577(n+1)/A324576(n+1))`
-/

namespace A324387.P6974847704198225926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (SequenceMachineLib.roundAway ((A324577 (n + 1) : ℚ) / (A324576 (n + 1) : ℚ))).toNat

end

end A324387.P6974847704198225926

/-! ## A324387.P6547131680275396361

`A276150(record[A046523(n+1)])`
-/

namespace A324387.P6547131680275396361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A324387.P6547131680275396361

/-!
# A324388: If n is a prime power (in A000961), then a(n) = n, otherwise a(n) is the greatest proper unitary divisor of n.

The programs for A324388, there is no canonical definition to state claims against.
-/

/-! ## A324388.P7219799194868828042

`gcd(n+1, A306264(n+1)+n)`
-/

namespace A324388.P7219799194868828042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A306264 (n + 1) + (n : ℤ))

end

end A324388.P7219799194868828042

/-! ## A324388.P10335650802159029419

`A052125(n+1)*A100994(n+1)`
-/

namespace A324388.P10335650802159029419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052125 (n + 1) * A100994 (n + 1)

end

end A324388.P10335650802159029419

/-! ## A324388.P2442997337204768116

`(n+1)/A034684(A284600(n+1))`
-/

namespace A324388.P2442997337204768116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A034684 (A284600 (n + 1)).toNat : ℚ)

end

end A324388.P2442997337204768116

/-! ## A324388.P8196515498828844973

`lcm(A034699(n+1), A052125(n+1))`
-/

namespace A324388.P8196515498828844973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034699 (n + 1)) (A052125 (n + 1))

end

end A324388.P8196515498828844973

/-! ## A324388.P7965075369543775577

`(n+1)/A034684(n+1)*A100994(n+1)`
-/

namespace A324388.P7965075369543775577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A034684 (n + 1) : ℚ) * (A100994 (n + 1) : ℚ)

end

end A324388.P7965075369543775577

/-! ## A324388.P5982806850137719310

`(n+1)/A034684((n+1)/A034699(n+1))`
-/

namespace A324388.P5982806850137719310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A034684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A034699 (n + 1) : ℚ))).toNat : ℚ)

end

end A324388.P5982806850137719310

/-! ## A324388.P11605647308192190718

`A052125(n+1)+n*A001222(A014963(n+1))`
-/

namespace A324388.P11605647308192190718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052125 (n + 1) + (n : ℤ) * A001222 (A014963 (n + 1)).toNat

end

end A324388.P11605647308192190718

/-! ## A324388.P792602678079192958

`(n+1)/A052128(A304233(n+1))`
-/

namespace A324388.P792602678079192958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A052128 (A304233 (n + 1)).toNat : ℚ)

end

end A324388.P792602678079192958

/-!
# A324389: Lexicographically earliest sequence such that a(i) = a(j) => f(i) = f(j), where f(n) = [A009194(n), A318458(n)] for all other numbers, except f(1) = -1.

The programs for A324389, there is no canonical definition to state claims against.
-/

/-! ## A324389.P2049206317446690181

`A326202(n+1)-A007599(A052409(n+1))%A104429(n)`
-/

namespace A324389.P2049206317446690181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326202 (n + 1) - Int.tmod (A007599 (A052409 (n + 1)).toNat) (A104429 n)

end

end A324389.P2049206317446690181

/-! ## A324389.P9074185157022363466

`A322589(n+1)-A011648(A104842(n+1))`
-/

namespace A324389.P9074185157022363466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322589 (n + 1) - A011648 (A104842 (n + 1)).toNat

end

end A324389.P9074185157022363466

/-! ## A324389.P5547651057694390193

`A382423(A007088(n+2))+A322589(n+1)`
-/

namespace A324389.P5547651057694390193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382423 (A007088 (n + 2)).toNat + A322589 (n + 1)

end

end A324389.P5547651057694390193

/-! ## A324389.P16284308900706956174

`A183017(A124859(n+1))*A322589(n+1)`
-/

namespace A324389.P16284308900706956174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183017 (A124859 (n + 1)).toNat * A322589 (n + 1)

end

end A324389.P16284308900706956174

/-! ## A324389.P3196800892276252264

`A323235(n+1)-A113428(A128361(n+2))`
-/

namespace A324389.P3196800892276252264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323235 (n + 1) - A113428 (A128361 (n + 2)).toNat

end

end A324389.P3196800892276252264

/-!
# A324391: Fully multiplicative with a(p^e) = A070939(p)^e, where A070939(p) gives the length of the binary representation of p.

The programs for A324391, the canonical program `A324391.P7291233321166429413` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324391 has offset 1).

The definition of A324391 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324391.P2105313716289916646

`∏{d}[n+1, ceil(log2(A014963(#)+1))]`
-/

namespace A324391.P2105313716289916646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), ⌈Real.logb 2 (A014963 d + 1 : ℝ)⌉

end

end A324391.P2105313716289916646

namespace A324391

/-- `∏{d}[n+1, ceil(log2(A014963(#)+1))]` -/
def P2105313716289916646.Spec : Prop :=
  ∀ n, P2105313716289916646.a n = A324391 (n + 1)

end A324391

/-! ## A324391.P7291233321166429413

`∏{d}[n+1, A070939(A014963(#))]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A324391

/-- `∏{d}[n+1, A070939(A014963(#))]` -/
def P7291233321166429413.Spec : Prop :=
  ∀ n, P7291233321166429413.a n = A324391 (n + 1)

theorem P7291233321166429413.correct : P7291233321166429413.Spec := by
  intro n
  simp only [A324391, Nat.add_sub_cancel]

end A324391

/-! ## A324391.P631235352291795422

`∏{d}[A064988(n+1), A070939(A289508(#))]`
-/

namespace A324391.P631235352291795422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A070939 (A289508 d).toNat

end

end A324391.P631235352291795422

namespace A324391

/-- `∏{d}[A064988(n+1), A070939(A289508(#))]` -/
def P631235352291795422.Spec : Prop :=
  ∀ n, P631235352291795422.a n = A324391 (n + 1)

end A324391

/-! ## A324391.P17172709618786568121

`∏{e}[A181821(n+1), A035100(#)]`
-/

namespace A324391.P17172709618786568121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A035100 (Nat.factorization (f1 n).natAbs p)

end

end A324391.P17172709618786568121

namespace A324391

/-- `∏{e}[A181821(n+1), A035100(#)]` -/
def P17172709618786568121.Spec : Prop :=
  ∀ n, P17172709618786568121.a n = A324391 (n + 1)

end A324391

/-! ## A324391.P3275030651210767229

`∏{e}[A181821(n+1), A070939(A030291(#))]`
-/

namespace A324391.P3275030651210767229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A070939 (A030291 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A324391.P3275030651210767229

namespace A324391

/-- `∏{e}[A181821(n+1), A070939(A030291(#))]` -/
def P3275030651210767229.Spec : Prop :=
  ∀ n, P3275030651210767229.a n = A324391 (n + 1)

end A324391

/-!
# A324392: a(n) is the number of divisors d of n such that A000120(d) divides n, where A000120(d) gives the binary weight of d.

The programs for A324392, the canonical program `A324392.P14143944522759803113` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324392 has offset 1).

The definition of A324392 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324392.P1548167878533551222

`A000005(n+1)-A324393(n+1)`
-/

namespace A324392.P1548167878533551222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A324393 (n + 1)

end

end A324392.P1548167878533551222

namespace A324392

/-- `A000005(n+1)-A324393(n+1)` -/
def P1548167878533551222.Spec : Prop :=
  ∀ n, P1548167878533551222.a n = A324392 (n + 1)

theorem P1548167878533551222.correct : P1548167878533551222.Spec := by
  intro n
  simp only [A324392, Nat.add_sub_cancel, A324392.P1548167878533551222.a, A324392.P14143944522759803113.f1, A324392.P14143944522759803113.a, A000005, A000005.P16091521709108585461.a, A000079, A000079.P10855139691139572931.a, A000120, A000120.P2816527436160941581.a, A324393, A324393.P8276205973310324083.a, A005187, A005187.P3874015513960485494.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324392

/-! ## A324392.P16776049934553905631

`Δ[A006218(n)]-A324393(n+1)`
-/

namespace A324392.P16776049934553905631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A324393 (n + 1)

end

end A324392.P16776049934553905631

namespace A324392

/-- `Δ[A006218(n)]-A324393(n+1)` -/
def P16776049934553905631.Spec : Prop :=
  ∀ n, P16776049934553905631.a n = A324392 (n + 1)

end A324392

/-! ## A324392.P4483239621148071849

`Δ[A054519(n)]-A324393(n+1)`
-/

namespace A324392.P4483239621148071849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A324393 (n + 1)

end

end A324392.P4483239621148071849

namespace A324392

/-- `Δ[A054519(n)]-A324393(n+1)` -/
def P4483239621148071849.Spec : Prop :=
  ∀ n, P4483239621148071849.a n = A324392 (n + 1)

end A324392

/-! ## A324392.P8108292602878037803

`A028310(∏{e}[n+1, #+1]-A324393(n+1))`
-/

namespace A324392.P8108292602878037803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A324393 (n + 1)).toNat

end

end A324392.P8108292602878037803

namespace A324392

/-- `A028310(∏{e}[n+1, #+1]-A324393(n+1))` -/
def P8108292602878037803.Spec : Prop :=
  ∀ n, P8108292602878037803.a n = A324392 (n + 1)

end A324392

/-! ## A324392.P14143944522759803113

`∑{d}[n+1, A000079((n+1)%A000120(#))%2]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A324392

/-- `∑{d}[n+1, A000079((n+1)%A000120(#))%2]` -/
def P14143944522759803113.Spec : Prop :=
  ∀ n, P14143944522759803113.a n = A324392 (n + 1)

theorem P14143944522759803113.correct : P14143944522759803113.Spec := by
  intro n
  simp only [A324392, Nat.add_sub_cancel]

end A324392

/-! ## A324392.P9878642656279516176

`A028310(∑{d}[n+1, gcd(n, #)]-A324393(n+1))`
-/

namespace A324392.P9878642656279516176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℤ) - A324393 (n + 1)).toNat

end

end A324392.P9878642656279516176

namespace A324392

/-- `A028310(∑{d}[n+1, gcd(n, #)]-A324393(n+1))` -/
def P9878642656279516176.Spec : Prop :=
  ∀ n, P9878642656279516176.a n = A324392 (n + 1)

end A324392

/-! ## A324392.P11490440381730322882

`A087990(n+1)+A087991(n+1)-A324393(n+1)`
-/

namespace A324392.P11490440381730322882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087990 (n + 1) + (A087991 (n + 1) - A324393 (n + 1))

end

end A324392.P11490440381730322882

namespace A324392

/-- `A087990(n+1)+A087991(n+1)-A324393(n+1)` -/
def P11490440381730322882.Spec : Prop :=
  ∀ n, P11490440381730322882.a n = A324392 (n + 1)

end A324392

/-! ## A324392.P6585471906813812603

`A195150(n+1)+A195155(n+1)-A324393(n+1)`
-/

namespace A324392.P6585471906813812603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195150 (n + 1) + (A195155 (n + 1) - A324393 (n + 1))

end

end A324392.P6585471906813812603

namespace A324392

/-- `A195150(n+1)+A195155(n+1)-A324393(n+1)` -/
def P6585471906813812603.Spec : Prop :=
  ∀ n, P6585471906813812603.a n = A324392 (n + 1)

theorem P6585471906813812603.correct : P6585471906813812603.Spec := by
  intro n
  simp only [A324392, Nat.add_sub_cancel, A324392.P6585471906813812603.a, A324392.P14143944522759803113.f1, A324392.P14143944522759803113.a, A000079, A000079.P10855139691139572931.a, A000120, A000120.P2816527436160941581.a, A195150, A195150.P8159304006399446490.a, A195155, A195155.P6480177575131545009.a, A324393, A324393.P8276205973310324083.a, A000005, A000005.P16091521709108585461.a, A005187, A005187.P3874015513960485494.a, A129308, A129308.P2055734380787893719.a, A137921, A137921.P4123784932500151371.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A059841, A059841.P7264174615531153985.a, A088722, A088722.P5735559043475420597.f1, A088722.P5735559043475420597.a, A007862, A007862.P13725744150973773245.f1, A007862.P13725744150973773245.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324392

/-! ## A324392.P1979184056121689017

`A294893(n+1)+A294894(n+1)-A324393(n+1)`
-/

namespace A324392.P1979184056121689017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294893 (n + 1) + (A294894 (n + 1) - A324393 (n + 1))

end

end A324392.P1979184056121689017

namespace A324392

/-- `A294893(n+1)+A294894(n+1)-A324393(n+1)` -/
def P1979184056121689017.Spec : Prop :=
  ∀ n, P1979184056121689017.a n = A324392 (n + 1)

end A324392

/-! ## A324392.P17149235597641758445

`A324826(n+1)+A324827(n+1)-A324393(n+1)`
-/

namespace A324392.P17149235597641758445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324826 (n + 1) + (A324827 (n + 1) - A324393 (n + 1))

end

end A324392.P17149235597641758445

namespace A324392

/-- `A324826(n+1)+A324827(n+1)-A324393(n+1)` -/
def P17149235597641758445.Spec : Prop :=
  ∀ n, P17149235597641758445.a n = A324392 (n + 1)

end A324392

/-! ## A324392.P5780466188565168239

`A336041(n+1)+A349658(n+1)-A324393(n+1)`
-/

namespace A324392.P5780466188565168239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336041 (n + 1) + (A349658 (n + 1) - A324393 (n + 1))

end

end A324392.P5780466188565168239

namespace A324392

/-- `A336041(n+1)+A349658(n+1)-A324393(n+1)` -/
def P5780466188565168239.Spec : Prop :=
  ∀ n, P5780466188565168239.a n = A324392 (n + 1)

theorem P5780466188565168239.correct : P5780466188565168239.Spec := by
  intro n
  simp only [A324392, Nat.add_sub_cancel, A324392.P5780466188565168239.a, A324392.P14143944522759803113.f1, A324392.P14143944522759803113.a, A000079, A000079.P10855139691139572931.a, A000120, A000120.P2816527436160941581.a, A324393, A324393.P8276205973310324083.a, A336041, A336041.P14047434541589637692.f1, A336041.P14047434541589637692.a, A349658, A349658.P4827521432200241691.a, A000005, A000005.P16091521709108585461.a, A005187, A005187.P3874015513960485494.a, A336040, A336040.P10759286012738272429.a, A009230, A009230.P1819466597498337279.f1, A009230.P1819466597498337279.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A324392

/-! ## A324392.P2520541753000845293

`A353351(n+1)+A353352(n+1)-A324393(n+1)`
-/

namespace A324392.P2520541753000845293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353351 (n + 1) + (A353352 (n + 1) - A324393 (n + 1))

end

end A324392.P2520541753000845293

namespace A324392

/-- `A353351(n+1)+A353352(n+1)-A324393(n+1)` -/
def P2520541753000845293.Spec : Prop :=
  ∀ n, P2520541753000845293.a n = A324392 (n + 1)

theorem P2520541753000845293.correct : P2520541753000845293.Spec := by
  intro n
  simp only [A324392, Nat.add_sub_cancel, A324392.P2520541753000845293.a, A324392.P14143944522759803113.f1, A324392.P14143944522759803113.a, A000079, A000079.P10855139691139572931.a, A000120, A000120.P2816527436160941581.a, A324393, A324393.P8276205973310324083.a, A353351, A353351.P1500515307686791628.a, A353352, A353352.P1673129124953599033.f1, A353352.P1673129124953599033.a, A000005, A000005.P16091521709108585461.a, A005187, A005187.P3874015513960485494.a, A353350, A353350.P17688933372676458567.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A079978, A079978.P10382542118278163374.a, A297108, A297108.P15990807296291497671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324392

/-! ## A324392.P884089418295399163

`A353361(n+1)+A353362(n+1)-A324393(n+1)`
-/

namespace A324392.P884089418295399163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353361 (n + 1) + (A353362 (n + 1) - A324393 (n + 1))

end

end A324392.P884089418295399163

namespace A324392

/-- `A353361(n+1)+A353362(n+1)-A324393(n+1)` -/
def P884089418295399163.Spec : Prop :=
  ∀ n, P884089418295399163.a n = A324392 (n + 1)

theorem P884089418295399163.correct : P884089418295399163.Spec := by
  intro n
  simp only [A324392, Nat.add_sub_cancel, A324392.P884089418295399163.a, A324392.P14143944522759803113.f1, A324392.P14143944522759803113.a, A000079, A000079.P10855139691139572931.a, A000120, A000120.P2816527436160941581.a, A324393, A324393.P8276205973310324083.a, A353361, A353361.P1809669952894249071.f1, A353361.P1809669952894249071.a, A353362, A353362.P16534089322779185243.a, A000005, A000005.P16091521709108585461.a, A005187, A005187.P3874015513960485494.a, A332814, A332814.P5107622216486189293.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A102283, A102283.P18218274576938374007.a, A156552, A156552.P4268073137713085227.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324392

/-! ## A324392.P17266213003769235877

`∑{d}[n+1, A057427(#)]-A324393(n+1)`
-/

namespace A324392.P17266213003769235877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 d - A324393 (n + 1)

end

end A324392.P17266213003769235877

namespace A324392

/-- `∑{d}[n+1, A057427(#)]-A324393(n+1)` -/
def P17266213003769235877.Spec : Prop :=
  ∀ n, P17266213003769235877.a n = A324392 (n + 1)

end A324392

/-! ## A324392.P837710167924435689

`A080226(A297002(n+1))-A324393(n+1)`
-/

namespace A324392.P837710167924435689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080226 (A297002 (n + 1)).toNat - A324393 (n + 1)

end

end A324392.P837710167924435689

namespace A324392

/-- `A080226(A297002(n+1))-A324393(n+1)` -/
def P837710167924435689.Spec : Prop :=
  ∀ n, P837710167924435689.a n = A324392 (n + 1)

end A324392

/-! ## A324392.P12876835101498883396

`A046951((n+1)²)-A324393(n+1)`
-/

namespace A324392.P12876835101498883396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 ((n + 1) ^ 2) - A324393 (n + 1)

end

end A324392.P12876835101498883396

namespace A324392

/-- `A046951((n+1)²)-A324393(n+1)` -/
def P12876835101498883396.Spec : Prop :=
  ∀ n, P12876835101498883396.a n = A324392 (n + 1)

end A324392

/-!
# A324393: a(n) is the number of such divisors d of n that A000120(d) does not divide n, where A000120(d) gives the binary weight of d.

The programs for A324393, the canonical program `A324393.P8276205973310324083` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324393 has offset 1).

The definition of A324393 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324392, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324393.P8276205973310324083

`A000005(n+1)-A324392(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A324393

/-- `A000005(n+1)-A324392(n+1)` -/
def P8276205973310324083.Spec : Prop :=
  ∀ n, P8276205973310324083.a n = A324393 (n + 1)

theorem P8276205973310324083.correct : P8276205973310324083.Spec := by
  intro n
  simp only [A324393, Nat.add_sub_cancel]

end A324393

/-! ## A324393.P3216619102332806871

`Δ[A006218(n)]-A324392(n+1)`
-/

namespace A324393.P3216619102332806871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A324392 (n + 1)

end

end A324393.P3216619102332806871

namespace A324393

/-- `Δ[A006218(n)]-A324392(n+1)` -/
def P3216619102332806871.Spec : Prop :=
  ∀ n, P3216619102332806871.a n = A324393 (n + 1)

end A324393

/-! ## A324393.P3693743480062830892

`Δ[A054519(n)]-A324392(n+1)`
-/

namespace A324393.P3693743480062830892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A324392 (n + 1)

end

end A324393.P3693743480062830892

namespace A324393

/-- `Δ[A054519(n)]-A324392(n+1)` -/
def P3693743480062830892.Spec : Prop :=
  ∀ n, P3693743480062830892.a n = A324393 (n + 1)

end A324393

/-! ## A324393.P8901170404166545755

`∑{d}[n+1, A057427((n+1)%A000120(#))]`
-/

namespace A324393.P8901170404166545755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 (Int.tmod (n + 1 : ℤ) (A000120 d)).toNat

end

end A324393.P8901170404166545755

namespace A324393

/-- `∑{d}[n+1, A057427((n+1)%A000120(#))]` -/
def P8901170404166545755.Spec : Prop :=
  ∀ n, P8901170404166545755.a n = A324393 (n + 1)

end A324393

/-! ## A324393.P5987818820754987938

`A028310(∏{e}[n+1, #+1])-A324392(n+1)`
-/

namespace A324393.P5987818820754987938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) - A324392 (n + 1)

end

end A324393.P5987818820754987938

namespace A324393

/-- `A028310(∏{e}[n+1, #+1])-A324392(n+1)` -/
def P5987818820754987938.Spec : Prop :=
  ∀ n, P5987818820754987938.a n = A324393 (n + 1)

end A324393

/-! ## A324393.P15190486949699838078

`A324392(A140635(n+1))-A324392(n+1)`
-/

namespace A324393.P15190486949699838078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324392 (A140635 (n + 1)).toNat - A324392 (n + 1)

end

end A324393.P15190486949699838078

namespace A324393

/-- `A324392(A140635(n+1))-A324392(n+1)` -/
def P15190486949699838078.Spec : Prop :=
  ∀ n, P15190486949699838078.a n = A324393 (n + 1)

end A324393

/-! ## A324393.P8779963503865769293

`A195150(n+1)+A195155(n+1)-A324392(n+1)`
-/

namespace A324393.P8779963503865769293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195150 (n + 1) + (A195155 (n + 1) - A324392 (n + 1))

end

end A324393.P8779963503865769293

namespace A324393

/-- `A195150(n+1)+A195155(n+1)-A324392(n+1)` -/
def P8779963503865769293.Spec : Prop :=
  ∀ n, P8779963503865769293.a n = A324393 (n + 1)

theorem P8779963503865769293.correct : P8779963503865769293.Spec := by
  intro n
  simp only [A324393, Nat.add_sub_cancel, A324393.P8779963503865769293.a, A324393.P8276205973310324083.a, A000005, A000005.P16091521709108585461.a, A195150, A195150.P8159304006399446490.a, A195155, A195155.P6480177575131545009.a, A324392, A324392.P14143944522759803113.f1, A324392.P14143944522759803113.a, A000079, A000079.P10855139691139572931.a, A000120, A000120.P2816527436160941581.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A129308, A129308.P2055734380787893719.a, A137921, A137921.P4123784932500151371.a, A005187, A005187.P3874015513960485494.a, A059841, A059841.P7264174615531153985.a, A088722, A088722.P5735559043475420597.f1, A088722.P5735559043475420597.a, A007862, A007862.P13725744150973773245.f1, A007862.P13725744150973773245.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324393

/-! ## A324393.P4619097646468925707

`A294893(n+1)+A294894(n+1)-A324392(n+1)`
-/

namespace A324393.P4619097646468925707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294893 (n + 1) + (A294894 (n + 1) - A324392 (n + 1))

end

end A324393.P4619097646468925707

namespace A324393

/-- `A294893(n+1)+A294894(n+1)-A324392(n+1)` -/
def P4619097646468925707.Spec : Prop :=
  ∀ n, P4619097646468925707.a n = A324393 (n + 1)

end A324393

/-! ## A324393.P17611436573876900106

`A324826(n+1)+A324827(n+1)-A324392(n+1)`
-/

namespace A324393.P17611436573876900106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324826 (n + 1) + (A324827 (n + 1) - A324392 (n + 1))

end

end A324393.P17611436573876900106

namespace A324393

/-- `A324826(n+1)+A324827(n+1)-A324392(n+1)` -/
def P17611436573876900106.Spec : Prop :=
  ∀ n, P17611436573876900106.a n = A324393 (n + 1)

end A324393

/-! ## A324393.P76828898081584797

`A336041(n+1)+A349658(n+1)-A324392(n+1)`
-/

namespace A324393.P76828898081584797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336041 (n + 1) + (A349658 (n + 1) - A324392 (n + 1))

end

end A324393.P76828898081584797

namespace A324393

/-- `A336041(n+1)+A349658(n+1)-A324392(n+1)` -/
def P76828898081584797.Spec : Prop :=
  ∀ n, P76828898081584797.a n = A324393 (n + 1)

theorem P76828898081584797.correct : P76828898081584797.Spec := by
  intro n
  simp only [A324393, Nat.add_sub_cancel, A324393.P76828898081584797.a, A324393.P8276205973310324083.a, A000005, A000005.P16091521709108585461.a, A324392, A324392.P14143944522759803113.f1, A324392.P14143944522759803113.a, A336041, A336041.P14047434541589637692.f1, A336041.P14047434541589637692.a, A349658, A349658.P4827521432200241691.a, A000079, A000079.P10855139691139572931.a, A000120, A000120.P2816527436160941581.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A336040, A336040.P10759286012738272429.a, A005187, A005187.P3874015513960485494.a, A009230, A009230.P1819466597498337279.f1, A009230.P1819466597498337279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A324393

/-! ## A324393.P5208293443414407041

`A353351(n+1)+A353352(n+1)-A324392(n+1)`
-/

namespace A324393.P5208293443414407041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353351 (n + 1) + (A353352 (n + 1) - A324392 (n + 1))

end

end A324393.P5208293443414407041

namespace A324393

/-- `A353351(n+1)+A353352(n+1)-A324392(n+1)` -/
def P5208293443414407041.Spec : Prop :=
  ∀ n, P5208293443414407041.a n = A324393 (n + 1)

theorem P5208293443414407041.correct : P5208293443414407041.Spec := by
  intro n
  simp only [A324393, Nat.add_sub_cancel, A324393.P5208293443414407041.a, A324393.P8276205973310324083.a, A000005, A000005.P16091521709108585461.a, A324392, A324392.P14143944522759803113.f1, A324392.P14143944522759803113.a, A353351, A353351.P1500515307686791628.a, A353352, A353352.P1673129124953599033.f1, A353352.P1673129124953599033.a, A000079, A000079.P10855139691139572931.a, A000120, A000120.P2816527436160941581.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A353350, A353350.P17688933372676458567.a, A005187, A005187.P3874015513960485494.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A079978, A079978.P10382542118278163374.a, A297108, A297108.P15990807296291497671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324393

/-! ## A324393.P6521279847342008266

`A353361(n+1)+A353362(n+1)-A324392(n+1)`
-/

namespace A324393.P6521279847342008266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353361 (n + 1) + (A353362 (n + 1) - A324392 (n + 1))

end

end A324393.P6521279847342008266

namespace A324393

/-- `A353361(n+1)+A353362(n+1)-A324392(n+1)` -/
def P6521279847342008266.Spec : Prop :=
  ∀ n, P6521279847342008266.a n = A324393 (n + 1)

theorem P6521279847342008266.correct : P6521279847342008266.Spec := by
  intro n
  simp only [A324393, Nat.add_sub_cancel, A324393.P6521279847342008266.a, A324393.P8276205973310324083.a, A000005, A000005.P16091521709108585461.a, A324392, A324392.P14143944522759803113.f1, A324392.P14143944522759803113.a, A353361, A353361.P1809669952894249071.f1, A353361.P1809669952894249071.a, A353362, A353362.P16534089322779185243.a, A000079, A000079.P10855139691139572931.a, A000120, A000120.P2816527436160941581.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A332814, A332814.P5107622216486189293.a, A005187, A005187.P3874015513960485494.a, A102283, A102283.P18218274576938374007.a, A156552, A156552.P4268073137713085227.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324393

/-! ## A324393.P5869967959896416407

`A353375(n+1)+A353376(n+1)-A324392(n+1)`
-/

namespace A324393.P5869967959896416407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353375 (n + 1) + (A353376 (n + 1) - A324392 (n + 1))

end

end A324393.P5869967959896416407

namespace A324393

/-- `A353375(n+1)+A353376(n+1)-A324392(n+1)` -/
def P5869967959896416407.Spec : Prop :=
  ∀ n, P5869967959896416407.a n = A324393 (n + 1)

theorem P5869967959896416407.correct : P5869967959896416407.Spec := by
  intro n
  simp only [A324393, Nat.add_sub_cancel, A324393.P5869967959896416407.a, A324393.P8276205973310324083.a, A000005, A000005.P16091521709108585461.a, A324392, A324392.P14143944522759803113.f1, A324392.P14143944522759803113.a, A353375, A353375.P197900174002010438.a, A353376, A353376.P17395599227026768174.f1, A353376.P17395599227026768174.a, A000079, A000079.P10855139691139572931.a, A000120, A000120.P2816527436160941581.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A353374, A353374.P4573974283751582701.a, A005187, A005187.P3874015513960485494.a, A035263, A035263.P6825362395192920526.a, A065043, A065043.P15027714353296076488.a, A000035, A000035.P2023072528413494694.a, A001511, A001511.P17146462531039486101.a, A007421, A007421.P6096517627125049268.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324393

/-! ## A324393.P6388861251620033548

`∑{d}[n+1, A057427(#)]-A324392(n+1)`
-/

namespace A324393.P6388861251620033548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 d - A324392 (n + 1)

end

end A324393.P6388861251620033548

namespace A324393

/-- `∑{d}[n+1, A057427(#)]-A324392(n+1)` -/
def P6388861251620033548.Spec : Prop :=
  ∀ n, P6388861251620033548.a n = A324393 (n + 1)

end A324393

/-!
# A324394: a(n) = A009194(A005940(1+n)), where A005940 is the Doudna sequence and A009194(n) = gcd(n,sigma(n)).

The programs for A324394, the canonical program `A324394.P3962559819764264547` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324394 has offset 0).

The definition of A324394 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324394.P4239971121727696650

`gcd(A005940(1+n), A324054(n))`
-/

namespace A324394.P4239971121727696650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005940 (1 + n)) (A324054 n)

end

end A324394.P4239971121727696650

namespace A324394

/-- `gcd(A005940(1+n), A324054(n))` -/
def P4239971121727696650.Spec : Prop :=
  ∀ n, (P4239971121727696650.a n : ℤ) = A324394 n

end A324394

/-! ## A324394.P3962559819764264547

`A009194(A005940(1+n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A324394

/-- `A009194(A005940(1+n))` -/
def P3962559819764264547.Spec : Prop :=
  ∀ n, P3962559819764264547.a n = A324394 n

theorem P3962559819764264547.correct : P3962559819764264547.Spec := by
  intro n
  simp only [A324394]

end A324394

/-! ## A324394.P818286205156693611

`A005940(n+1)/A324395(n)`
-/

namespace A324394.P818286205156693611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 (n + 1) : ℚ) / (A324395 n : ℚ)

end

end A324394.P818286205156693611

namespace A324394

/-- `A005940(n+1)/A324395(n)` -/
def P818286205156693611.Spec : Prop :=
  ∀ n, P818286205156693611.a n = (A324394 n : ℚ)

end A324394

/-! ## A324394.P5445838822843497985

`gcd(A324055(n)+A005940(n+1), A324055(n))`
-/

namespace A324394.P5445838822843497985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A324055 n + A005940 (n + 1)) (A324055 n)

end

end A324394.P5445838822843497985

namespace A324394

/-- `gcd(A324055(n)+A005940(n+1), A324055(n))` -/
def P5445838822843497985.Spec : Prop :=
  ∀ n, (P5445838822843497985.a n : ℤ) = A324394 n

end A324394

/-! ## A324394.P1385821555236281618

`gcd(A324058(n)+A005940(n+1), A324058(n))`
-/

namespace A324394.P1385821555236281618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A324058 n + A005940 (n + 1)) (A324058 n)

end

end A324394.P1385821555236281618

namespace A324394

/-- `gcd(A324058(n)+A005940(n+1), A324058(n))` -/
def P1385821555236281618.Spec : Prop :=
  ∀ n, (P1385821555236281618.a n : ℤ) = A324394 n

end A324394

/-! ## A324394.P5331918547574273886

`(A340362(n+1)+A324106(n+1))/A324395(n)`
-/

namespace A324394.P5331918547574273886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340362 (n + 1) + A324106 (n + 1) : ℚ) / (A324395 n : ℚ)

end

end A324394.P5331918547574273886

namespace A324394

/-- `(A340362(n+1)+A324106(n+1))/A324395(n)` -/
def P5331918547574273886.Spec : Prop :=
  ∀ n, P5331918547574273886.a n = (A324394 n : ℚ)

end A324394

/-! ## A324394.P5240667965202569208

`(A324641(n+1)-A324640(n+1))/A324395(n)`
-/

namespace A324394.P5240667965202569208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324641 (n + 1) - A324640 (n + 1) : ℚ) / (A324395 n : ℚ)

end

end A324394.P5240667965202569208

namespace A324394

/-- `(A324641(n+1)-A324640(n+1))/A324395(n)` -/
def P5240667965202569208.Spec : Prop :=
  ∀ n, P5240667965202569208.a n = (A324394 n : ℚ)

end A324394

/-! ## A324394.P6797351589778785106

`A340364(n+1)*A340365(n+1)/A324395(n)`
-/

namespace A324394.P6797351589778785106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340364 (n + 1) * A340365 (n + 1) : ℚ) / (A324395 n : ℚ)

end

end A324394.P6797351589778785106

namespace A324394

/-- `A340364(n+1)*A340365(n+1)/A324395(n)` -/
def P6797351589778785106.Spec : Prop :=
  ∀ n, P6797351589778785106.a n = (A324394 n : ℚ)

end A324394

/-! ## A324394.P16147944650694996723

`A324544(A252753(n))`
-/

namespace A324394.P16147944650694996723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324544 (A252753 n).toNat

end

end A324394.P16147944650694996723

namespace A324394

/-- `A324544(A252753(n))` -/
def P16147944650694996723.Spec : Prop :=
  ∀ n, P16147944650694996723.a n = A324394 n

end A324394

/-! ## A324394.P15616792930768004425

`A009194(A253563(A156552(A253563(n))))`
-/

namespace A324394.P15616792930768004425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (A253563 (A156552 (A253563 n).toNat).toNat).toNat

end

end A324394.P15616792930768004425

namespace A324394

/-- `A009194(A253563(A156552(A253563(n))))` -/
def P15616792930768004425.Spec : Prop :=
  ∀ n, P15616792930768004425.a n = A324394 n

end A324394

/-!
# A324395: a(n) = A017666(A005940(1+n)), where A005940 is the Doudna sequence and A017666(n) = n/gcd(n,sigma(n)).

The programs for A324395, the canonical program `A324395.P8926581835577107561` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324395 has offset 0).

The definition of A324395 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A017666, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324395.P8867011585870610349

`A005940(1+n)/A324394(n)`
-/

namespace A324395.P8867011585870610349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 (1 + n) : ℚ) / (A324394 n : ℚ)

end

end A324395.P8867011585870610349

namespace A324395

/-- `A005940(1+n)/A324394(n)` -/
def P8867011585870610349.Spec : Prop :=
  ∀ n, P8867011585870610349.a n = (A324395 n : ℚ)

end A324395

/-! ## A324395.P8926581835577107561

`A017666(A005940(1+n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A324395

/-- `A017666(A005940(1+n))` -/
def P8926581835577107561.Spec : Prop :=
  ∀ n, P8926581835577107561.a n = A324395 n

theorem P8926581835577107561.correct : P8926581835577107561.Spec := by
  intro n
  simp only [A324395]

end A324395

/-! ## A324395.P5223252198232192843

`lcm(A005940(n+1), A324054(n))/A324054(n)`
-/

namespace A324395.P5223252198232192843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A005940 (n + 1)) (A324054 n) : ℚ) / (A324054 n : ℚ)

end

end A324395.P5223252198232192843

namespace A324395

/-- `lcm(A005940(n+1), A324054(n))/A324054(n)` -/
def P5223252198232192843.Spec : Prop :=
  ∀ n, P5223252198232192843.a n = (A324395 n : ℚ)

end A324395

/-! ## A324395.P16380436079310191013

`abs((A324055(n)+A324054(n))/2)/A324394(n)`
-/

namespace A324395.P16380436079310191013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A324055 n + A324054 n : ℚ) / 2| / (A324394 n : ℚ)

end

end A324395.P16380436079310191013

namespace A324395

/-- `abs((A324055(n)+A324054(n))/2)/A324394(n)` -/
def P16380436079310191013.Spec : Prop :=
  ∀ n, P16380436079310191013.a n = (A324395 n : ℚ)

end A324395

/-! ## A324395.P11896144768569340455

`(A340362(n+1)+A340364(n+1)*A340366(n+1))/A324394(n)`
-/

namespace A324395.P11896144768569340455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340362 (n + 1) + A340364 (n + 1) * A340366 (n + 1) : ℚ) / (A324394 n : ℚ)

end

end A324395.P11896144768569340455

namespace A324395

/-- `(A340362(n+1)+A340364(n+1)*A340366(n+1))/A324394(n)` -/
def P11896144768569340455.Spec : Prop :=
  ∀ n, P11896144768569340455.a n = (A324395 n : ℚ)

end A324395

/-! ## A324395.P8219883604152305660

`A243353(A006068(n))/A324394(n)`
-/

namespace A324395.P8219883604152305660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243353 (A006068 n).toNat : ℚ) / (A324394 n : ℚ)

end

end A324395.P8219883604152305660

namespace A324395

/-- `A243353(A006068(n))/A324394(n)` -/
def P8219883604152305660.Spec : Prop :=
  ∀ n, P8219883604152305660.a n = (A324395 n : ℚ)

end A324395

/-! ## A324395.P8622335719692943650

`A337375(n)/A324394(n)*A337376(n)`
-/

namespace A324395.P8622335719692943650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337375 n : ℚ) / (A324394 n : ℚ) * (A337376 n : ℚ)

end

end A324395.P8622335719692943650

namespace A324395

/-- `A337375(n)/A324394(n)*A337376(n)` -/
def P8622335719692943650.Spec : Prop :=
  ∀ n, P8622335719692943650.a n = (A324395 n : ℚ)

end A324395

/-! ## A324395.P454947405711961368

`A279338(A279344(n))/A324394(n)`
-/

namespace A324395.P454947405711961368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279338 (A279344 n).toNat : ℚ) / (A324394 n : ℚ)

end

end A324395.P454947405711961368

namespace A324395

/-- `A279338(A279344(n))/A324394(n)` -/
def P454947405711961368.Spec : Prop :=
  ∀ n, P454947405711961368.a n = (A324395 n : ℚ)

end A324395

/-! ## A324395.P10734299546182870239

`A163511(A092569(2*n)/2)/A324394(n)`
-/

namespace A324395.P10734299546182870239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163511 (SequenceMachineLib.roundAway ((A092569 (2 * n) : ℚ) / 2)).toNat : ℚ) / (A324394 n : ℚ)

end

end A324395.P10734299546182870239

namespace A324395

/-- `A163511(A092569(2*n)/2)/A324394(n)` -/
def P10734299546182870239.Spec : Prop :=
  ∀ n, P10734299546182870239.a n = (A324395 n : ℚ)

end A324395

/-! ## A324395.P7460631029266334005

`A292602(4*n+3)/A324394(n)`
-/

namespace A324395.P7460631029266334005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292602 (4 * n + 3) : ℚ) / (A324394 n : ℚ)

end

end A324395.P7460631029266334005

namespace A324395

/-- `A292602(4*n+3)/A324394(n)` -/
def P7460631029266334005.Spec : Prop :=
  ∀ n, P7460631029266334005.a n = (A324395 n : ℚ)

end A324395

/-! ## A324395.P2018952297894023766

`A250246(A252753(n))/A324394(n)`
-/

namespace A324395.P2018952297894023766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250246 (A252753 n).toNat : ℚ) / (A324394 n : ℚ)

end

end A324395.P2018952297894023766

namespace A324395

/-- `A250246(A252753(n))/A324394(n)` -/
def P2018952297894023766.Spec : Prop :=
  ∀ n, P2018952297894023766.a n = (A324395 n : ℚ)

end A324395

/-! ## A324395.P2883288081184914534

`A302026(A269387(n))/A324394(n)`
-/

namespace A324395.P2883288081184914534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302026 (A269387 n).toNat : ℚ) / (A324394 n : ℚ)

end

end A324395.P2883288081184914534

namespace A324395

/-- `A302026(A269387(n))/A324394(n)` -/
def P2883288081184914534.Spec : Prop :=
  ∀ n, P2883288081184914534.a n = (A324395 n : ℚ)

end A324395

/-!
# A324396: a(1) = 0; for n > 1, a(n) = A009194(A156552(n)).

The programs for A324396, there is no canonical definition to state claims against.
-/

/-! ## A324396.P12763899160306529500

`gcd(A156552(n+1), A323243(n+1))`
-/

namespace A324396.P12763899160306529500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A156552 (n + 1)) (A323243 (n + 1))

end

end A324396.P12763899160306529500

/-! ## A324396.P6447536170117084184

`gcd(A323244(n+1), A324865(n+1))`
-/

namespace A324396.P6447536170117084184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A323244 (n + 1)) (A324865 (n + 1))

end

end A324396.P6447536170117084184

/-! ## A324396.P2820494081927274129

`gcd(A005941(n+1)-1, A323243(A000027(n+1)))`
-/

namespace A324396.P2820494081927274129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005941 (n + 1) - 1) (A323243 (A000027 (n + 1)).toNat)

end

end A324396.P2820494081927274129

/-! ## A324396.P8904543794141755387

`gcd((A322993(2*(n+1))-1)/2, A324865(A000027(n+1)))`
-/

namespace A324396.P8904543794141755387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A322993 (2 * (n + 1)) - 1 : ℚ) / 2)) (A324865 (A000027 (n + 1)).toNat)

end

end A324396.P8904543794141755387

/-! ## A324396.P10321685526080331886

`gcd(A292382(n+1)+A292380(n+1), -A323244(n+1))`
-/

namespace A324396.P10321685526080331886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A292382 (n + 1) + A292380 (n + 1)) (-A323244 (n + 1))

end

end A324396.P10321685526080331886

/-!
# A324397: a(1) = 0; for n > 1, a(n) = A297114(A156552(n)).

The programs for A324397, there is no canonical definition to state claims against.
-/

/-! ## A324397.P14596345278024542333

`A297114(A156552(abs(1-n)+2))`
-/

namespace A324397.P14596345278024542333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297114 (A156552 (|1 - (n : ℤ)| + 2).toNat).toNat

end

end A324397.P14596345278024542333

/-! ## A324397.P9710171737862662854

`A297114(floor(A156552(n+1)+acot(n)))`
-/

namespace A324397.P9710171737862662854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297114 ⌊(A156552 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A324397.P9710171737862662854

/-! ## A324397.P12454624581176282931

`A297114(A156552(n+1)^ceil(sin(n)²))`
-/

namespace A324397.P12454624581176282931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297114 (SequenceMachineLib.roundAway ((A156552 (n + 1) : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ))).toNat

end

end A324397.P12454624581176282931

/-! ## A324397.P12478057230438283147

`A297114(A005941(n+1)+or(1, -n)%2)`
-/

namespace A324397.P12478057230438283147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297114 (A005941 (n + 1) + Int.tmod (Int.lor 1 (-(n : ℤ))) 2).toNat

end

end A324397.P12478057230438283147

/-! ## A324397.P5386191195483716337

`A297114(floor(A156552(n+1)-n/(n+1))+1)`
-/

namespace A324397.P5386191195483716337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297114 (⌊(A156552 (n + 1) : ℚ) - (n : ℚ) / (n + 1 : ℚ)⌋ + 1).toNat

end

end A324397.P5386191195483716337

/-! ## A324397.P6435343958330249596

`A297114(A156552(n+1)+A000007(n))`
-/

namespace A324397.P6435343958330249596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297114 (A156552 (n + 1) + A000007 n).toNat

end

end A324397.P6435343958330249596

/-! ## A324397.P17835305283031467741

`A297114(A156552(n+1)+A000038(n))`
-/

namespace A324397.P17835305283031467741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297114 (A156552 (n + 1) + A000038 n).toNat

end

end A324397.P17835305283031467741

/-! ## A324397.P9274945895239451796

`A297114(A005941(n+1)-A158388(n))`
-/

namespace A324397.P9274945895239451796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297114 (A005941 (n + 1) - A158388 n).toNat

end

end A324397.P9274945895239451796

/-! ## A324397.P5409126511380615955

`A297114(A005941(n+1)-A178334(n))`
-/

namespace A324397.P5409126511380615955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297114 (A005941 (n + 1) - A178334 n).toNat

end

end A324397.P5409126511380615955

/-!
# A324398: a(1) = 0; for n > 1, a(n) = A318458(A156552(n)).

The programs for A324398, there is no canonical definition to state claims against.
-/

/-! ## A324398.P6849169493608567472

`and(A156552(n+1), A324865(n+1))`
-/

namespace A324398.P6849169493608567472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A156552 (n + 1)) (A324865 (n + 1))

end

end A324398.P6849169493608567472

/-! ## A324398.P5872492372419443167

`and(A323905(n+1)+A048675(n+1), A324865(n+1))`
-/

namespace A324398.P5872492372419443167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A323905 (n + 1) + A048675 (n + 1)) (A324865 (n + 1))

end

end A324398.P5872492372419443167

/-! ## A324398.P4400937686168306817

`and(A324865(n+1)+A323244(n+1), A324865(n+1))`
-/

namespace A324398.P4400937686168306817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A324865 (n + 1) + A323244 (n + 1)) (A324865 (n + 1))

end

end A324398.P4400937686168306817

/-! ## A324398.P14643579071244727852

`and(A156552(n+1)-A323244(n+1), A156552(n+1))`
-/

namespace A324398.P14643579071244727852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A156552 (n + 1) - A323244 (n + 1)) (A156552 (n + 1))

end

end A324398.P14643579071244727852

/-! ## A324398.P3024959997945030647

`A323243(n+1)-A324866(n+1)`
-/

namespace A324398.P3024959997945030647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (n + 1) - A324866 (n + 1)

end

end A324398.P3024959997945030647

/-! ## A324398.P15157818953324988803

`A324866(n+1)-A324867(n+1)`
-/

namespace A324398.P15157818953324988803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324866 (n + 1) - A324867 (n + 1)

end

end A324398.P15157818953324988803

/-! ## A324398.P15885054328639263540

`A156552(n+1)+A324865(n+1)-A324866(n+1)`
-/

namespace A324398.P15885054328639263540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1) + (A324865 (n + 1) - A324866 (n + 1))

end

end A324398.P15885054328639263540

/-! ## A324398.P1361921930134755432

`and(A323243(n+1)-A156552(n+1), A156552(n+1))`
-/

namespace A324398.P1361921930134755432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A323243 (n + 1) - A156552 (n + 1)) (A156552 (n + 1))

end

end A324398.P1361921930134755432

/-! ## A324398.P4499673587599079379

`and(A323243(n+1)-A324865(n+1), A324865(n+1))`
-/

namespace A324398.P4499673587599079379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A323243 (n + 1) - A324865 (n + 1)) (A324865 (n + 1))

end

end A324398.P4499673587599079379

/-! ## A324398.P12615739767537137541

`or(A324865(n+1), A324867(n+1))-A324867(n+1)`
-/

namespace A324398.P12615739767537137541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A324865 (n + 1)) (A324867 (n + 1)) - A324867 (n + 1)

end

end A324398.P12615739767537137541

/-! ## A324398.P3234717061130532450

`and(A292382(n+1)+A292380(n+1), A324865(n+1))`
-/

namespace A324398.P3234717061130532450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A292382 (n + 1) + A292380 (n + 1)) (A324865 (n + 1))

end

end A324398.P3234717061130532450

/-! ## A324398.P18309039172149397685

`and(A252754(A250245(n+1)), A324865(n+1))`
-/

namespace A324398.P18309039172149397685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A252754 (A250245 (n + 1)).toNat) (A324865 (n + 1))

end

end A324398.P18309039172149397685

/-! ## A324398.P1596462547240259777

`and(A269388(A302025(n+1)), A324865(n+1))`
-/

namespace A324398.P1596462547240259777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A269388 (A302025 (n + 1)).toNat) (A324865 (n + 1))

end

end A324398.P1596462547240259777

/-!
# A324399: Lexicographically earliest sequence such that a(i) = a(j) => f(i) = f(j) for all i, j >= 1, where f(n) = A000265(n) for all other numbers, except that f(n) = 0 if n is an odd prime, and f(1) = -1 and f(2) = -2.

The programs for A324399, there is no canonical definition to state claims against.
-/

/-! ## A324399.P7194975684963031044

`A322816(n+1)-A324413(A061142(n+1))`
-/

namespace A324399.P7194975684963031044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322816 (n + 1) - A324413 (A061142 (n + 1)).toNat

end

end A324399.P7194975684963031044

/-! ## A324399.P8379200792701195963

`A322816(n+1)-A324413(A324391(n+1))`
-/

namespace A324399.P8379200792701195963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322816 (n + 1) - A324413 (A324391 (n + 1)).toNat

end

end A324399.P8379200792701195963

