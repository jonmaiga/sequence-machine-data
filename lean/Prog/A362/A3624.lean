import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A362401: Numbers in the range of A162296, where A162296(n) is the sum of divisors of n that have a square factor larger than 1.

The programs for A362401, the canonical program `A362401.P178863343201490079` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362401 has offset 1).

The definition of A362401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 641 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362401.P6189036158252498916

`lt[0, char[A162296(n+1)]]`
-/

namespace A362401.P6189036158252498916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A362401.P6189036158252498916

namespace A362401

/-- `lt[0, char[A162296(n+1)]]` -/
def P6189036158252498916.Spec : Prop :=
  ∀ n, (P6189036158252498916.a n : ℤ) = A362401 (n + 1)

end A362401

/-! ## A362401.P16492602286061983591

`eq[1, char[A162296(n+2)]]`
-/

namespace A362401.P16492602286061983591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A362401.P16492602286061983591

namespace A362401

/-- `eq[1, char[A162296(n+2)]]` -/
def P16492602286061983591.Spec : Prop :=
  ∀ n, (P16492602286061983591.a n : ℤ) = A362401 (n + 1)

end A362401

/-! ## A362401.P178863343201490079

`lt[0, char[∑{d}[n+1, #]-∏{p}[n+1, #+1]]]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A362401

/-- `lt[0, char[∑{d}[n+1, #]-∏{p}[n+1, #+1]]]` -/
def P178863343201490079.Spec : Prop :=
  ∀ n, (P178863343201490079.a n : ℤ) = A362401 (n + 1)

theorem P178863343201490079.correct : P178863343201490079.Spec := by
  intro n
  simp only [A362401, Nat.add_sub_cancel]

end A362401

/-! ## A362401.P2678007234316003213

`eq[1, char[∑{d}[n+1, #]-∏{p}[n+1, #+1]]]`
-/

namespace A362401.P2678007234316003213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f4 n), d : ℕ) : ℤ) - ((∏ p ∈ Nat.primeFactors (f5 n), (p + 1) : ℕ) : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A362401.P2678007234316003213

namespace A362401

/-- `eq[1, char[∑{d}[n+1, #]-∏{p}[n+1, #+1]]]` -/
def P2678007234316003213.Spec : Prop :=
  ∀ n, (P2678007234316003213.a n : ℤ) = A362401 (n + 1)

end A362401

/-! ## A362401.P6296576005705780672

`record[n*char[∑{d}[n+1, #]-∏{p}[n+1, #+1]]]`
-/

namespace A362401.P6296576005705780672
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ) - ((∏ p ∈ Nat.primeFactors (f4 n), (p + 1) : ℕ) : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362401.P6296576005705780672

namespace A362401

/-- `record[n*char[∑{d}[n+1, #]-∏{p}[n+1, #+1]]]` -/
def P6296576005705780672.Spec : Prop :=
  ∀ n, (P6296576005705780672.a n : ℤ) = A362401 (n + 1)

end A362401

/-!
# A362402: Positive numbers m such that a record number of numbers k have m as the sum of divisors of k that have a square factor (A162296).

The programs for A362402, there is no canonical definition to state claims against.
-/

/-! ## A362402.P2533525240725864635

`A000005(A105947(n))*A325098(n)`
-/

namespace A362402.P2533525240725864635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A105947 n).toNat * A325098 n

end

end A362402.P2533525240725864635

/-!
# A362404: Numbers k such that k and k+1 are both in A362401.

The programs for A362404, the canonical program `A362404.P3194940381080596052` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362404 has offset 1).

The definition of A362404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362404.P3194940381080596052

`∩[A362401(n+1)-1, A362401(n+1)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A362404

/-- `∩[A362401(n+1)-1, A362401(n+1)]` -/
def P3194940381080596052.Spec : Prop :=
  ∀ n, (P3194940381080596052.a n : ℤ) = A362404 (n + 1)

theorem P3194940381080596052.correct : P3194940381080596052.Spec := by
  intro n
  simp only [A362404, Nat.add_sub_cancel]

end A362404

/-! ## A362404.P6311613562654526479

`∩[A362401(n+1), A023443(A362401(n+1))]`
-/

namespace A362404.P6311613562654526479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A362401 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362404.P6311613562654526479

namespace A362404

/-- `∩[A362401(n+1), A023443(A362401(n+1))]` -/
def P6311613562654526479.Spec : Prop :=
  ∀ n, (P6311613562654526479.a n : ℤ) = A362404 (n + 1)

end A362404

/-!
# A362406: Denominators of the expansion of the series reversion of sin(x) + x, odd powers only.

The programs for A362406, there is no canonical definition to state claims against.
-/

/-! ## A362406.P14994691504972258503

`2*A306254(n)/4^(n+1)`
-/

namespace A362406.P14994691504972258503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A306254 n : ℚ) / (4 ^ (n + 1) : ℚ)

end

end A362406.P14994691504972258503

/-! ## A362406.P7817338540853924537

`A306254(n)/(2*A000302(n))`
-/

namespace A362406.P7817338540853924537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306254 n : ℚ) / (2 * A000302 n : ℚ)

end

end A362406.P7817338540853924537

/-!
# A362407: Numerators of the expansion of the series reversion of sin(x) + x, odd powers only.

The programs for A362407, there is no canonical definition to state claims against.
-/

/-! ## A362407.P8726079433158355406

`abs(A302977(n))`
-/

namespace A362407.P8726079433158355406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A302977 n|

end

end A362407.P8726079433158355406

/-! ## A362407.P13942400996554580988

`A049084(3*(n+1))-A302977(n)`
-/

namespace A362407.P13942400996554580988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (3 * (n + 1)) - A302977 n

end

end A362407.P13942400996554580988

/-! ## A362407.P4019887946709049256

`lcm(A262940(2*(n+2)), A302977(n))`
-/

namespace A362407.P4019887946709049256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A262940 (2 * (n + 2))) (A302977 n)

end

end A362407.P4019887946709049256

/-! ## A362407.P17755284023763796964

`A008683(A006530(n+1))*A302977(n)`
-/

namespace A362407.P17755284023763796964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006530 (n + 1)).toNat * A302977 n

end

end A362407.P17755284023763796964

/-! ## A362407.P3941702804233588277

`A000122(A000032(n+3))-A302977(n)`
-/

namespace A362407.P3941702804233588277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A000032 (n + 3)).toNat - A302977 n

end

end A362407.P3941702804233588277

/-!
# A362408: a(n) = [x^n] (F(x)/F(-x))^n where F(x) = (1 + x)*(1 + x^3).

The programs for A362408, there is no canonical definition to state claims against.
-/

/-! ## A362408.P8998051956307938181

`A003602(or(A002426(n), A005809(n)))`
-/

namespace A362408.P8998051956307938181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (Int.lor (A002426 n) (A005809 n)).toNat

end

end A362408.P8998051956307938181

/-! ## A362408.P13130993087811164221

`A008619(or(A001333(n), A005809(n)))`
-/

namespace A362408.P13130993087811164221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.lor (A001333 n) (A005809 n)).toNat

end

end A362408.P13130993087811164221

/-!
# A362412: The number of prime factors of the square root of the largest square dividing n, counted with multiplicity.

The programs for A362412, the canonical program `A362412.P10869923801910997708` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362412 has offset 1).

The definition of A362412 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A162642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A362412.P15097374153143065792

`A001222(A000188(n+1))`
-/

namespace A362412.P15097374153143065792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000188 (n + 1)).toNat

end

end A362412.P15097374153143065792

namespace A362412

/-- `A001222(A000188(n+1))` -/
def P15097374153143065792.Spec : Prop :=
  ∀ n, P15097374153143065792.a n = A362412 (n + 1)

end A362412

/-! ## A362412.P12326011212069242587

`A001222(A008833(n+1))/2`
-/

namespace A362412.P12326011212069242587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A008833 (n + 1)).toNat : ℚ) / 2

end

end A362412.P12326011212069242587

namespace A362412

/-- `A001222(A008833(n+1))/2` -/
def P12326011212069242587.Spec : Prop :=
  ∀ n, P12326011212069242587.a n = (A362412 (n + 1) : ℚ)

end A362412

/-! ## A362412.P10869923801910997708

`(A001222(n+1)-A162642(n+1))/2`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A362412

/-- `(A001222(n+1)-A162642(n+1))/2` -/
def P10869923801910997708.Spec : Prop :=
  ∀ n, P10869923801910997708.a n = (A362412 (n + 1) : ℚ)

end A362412

/-! ## A362412.P2616581909838475468

`∑{e}[n+1, floor(#/2)]`
-/

namespace A362412.P2616581909838475468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌊(Nat.factorization (f1 n) p : ℚ) / 2⌋

end

end A362412.P2616581909838475468

namespace A362412

/-- `∑{e}[n+1, floor(#/2)]` -/
def P2616581909838475468.Spec : Prop :=
  ∀ n, P2616581909838475468.a n = A362412 (n + 1)

end A362412

/-! ## A362412.P7800316417430233705

`∑{p}[n+1, val(n+1, #²)]`
-/

namespace A362412.P7800316417430233705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) (p ^ 2)

end

end A362412.P7800316417430233705

namespace A362412

/-- `∑{p}[n+1, val(n+1, #²)]` -/
def P7800316417430233705.Spec : Prop :=
  ∀ n, (P7800316417430233705.a n : ℤ) = A362412 (n + 1)

end A362412

/-! ## A362412.P10903158259197338998

`A347395(A008833(n+1))`
-/

namespace A362412.P10903158259197338998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347395 (A008833 (n + 1)).toNat

end

end A362412.P10903158259197338998

namespace A362412

/-- `A347395(A008833(n+1))` -/
def P10903158259197338998.Spec : Prop :=
  ∀ n, P10903158259197338998.a n = A362412 (n + 1)

end A362412

/-! ## A362412.P12548590439190352748

`A001222(sqrt(A008833(n+1)))`
-/

namespace A362412.P12548590439190352748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (A008833 (n + 1) : ℝ))).toNat

end

end A362412.P12548590439190352748

namespace A362412

/-- `A001222(sqrt(A008833(n+1)))` -/
def P12548590439190352748.Spec : Prop :=
  ∀ n, P12548590439190352748.a n = A362412 (n + 1)

end A362412

/-! ## A362412.P17042193289011504112

`A001222(A057918(n+1)+1)`
-/

namespace A362412.P17042193289011504112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A057918 (n + 1) + 1).toNat

end

end A362412.P17042193289011504112

namespace A362412

/-- `A001222(A057918(n+1)+1)` -/
def P17042193289011504112.Spec : Prop :=
  ∀ n, P17042193289011504112.a n = A362412 (n + 1)

end A362412

/-! ## A362412.P10661204781707134271

`A001221(A294897(n+1))`
-/

namespace A362412.P10661204781707134271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A294897 (n + 1)).toNat

end

end A362412.P10661204781707134271

namespace A362412

/-- `A001221(A294897(n+1))` -/
def P10661204781707134271.Spec : Prop :=
  ∀ n, P10661204781707134271.a n = A362412 (n + 1)

end A362412

/-! ## A362412.P3817211012300794722

`floor(A344417(n+1)/2)`
-/

namespace A362412.P3817211012300794722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A344417 (n + 1) : ℚ) / 2⌋

end

end A362412.P3817211012300794722

namespace A362412

/-- `floor(A344417(n+1)/2)` -/
def P3817211012300794722.Spec : Prop :=
  ∀ n, P3817211012300794722.a n = A362412 (n + 1)

end A362412

/-!
# A362413: The second moment of an n X n symmetric random +-1 matrix.

The programs for A362413, there is no canonical definition to state claims against.
-/

/-! ## A362413.P6717314474219662480

`A298120(A300042(n))`
-/

namespace A362413.P6717314474219662480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298120 (A300042 n).toNat

end

end A362413.P6717314474219662480

/-! ## A362413.P17312313505179349474

`A340854(A087949(n+1))`
-/

namespace A362413.P17312313505179349474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340854 (A087949 (n + 1)).toNat

end

end A362413.P17312313505179349474

/-!
# A362414: a(n) = gcd(n, phi(n)^2) / gcd(n, phi(n)).

The programs for A362414, the canonical program `A362414.P9769977352830913817` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362414 has offset 1).

The definition of A362414 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009195, A127473, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A362414.P9769977352830913817

`gcd(n+1, A127473(n+1))/A009195(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A362414

/-- `gcd(n+1, A127473(n+1))/A009195(n+1)` -/
def P9769977352830913817.Spec : Prop :=
  ∀ n, P9769977352830913817.a n = (A362414 (n + 1) : ℚ)

end A362414

/-! ## A362414.P18344170872613445105

`gcd(n+1, A000010(n+1)²)/gcd(n+1, A000010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A362414.P18344170872613445105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A000010 (n + 1) ^ 2) : ℚ) / (Int.gcd (n + 1 : ℤ) (A000010 (n + 1)) : ℚ)

end

end A362414.P18344170872613445105

namespace A362414

/-- `gcd(n+1, A000010(n+1)²)/gcd(n+1, A000010(n+1))` -/
def P18344170872613445105.Spec : Prop :=
  ∀ n, P18344170872613445105.a n = (A362414 (n + 1) : ℚ)

end A362414

/-! ## A362414.P4486932704696848405

`gcd((n+1)/∏{p}[n+1, #], A109395(n+1))`
-/

namespace A362414.P4486932704696848405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A109395 (n + 1))

end

end A362414.P4486932704696848405

namespace A362414

/-- `gcd((n+1)/∏{p}[n+1, #], A109395(n+1))` -/
def P4486932704696848405.Spec : Prop :=
  ∀ n, (P4486932704696848405.a n : ℤ) = A362414 (n + 1)

end A362414

/-! ## A362414.P17432995991953251492

`gcd(Δ[A002088(n)], A109395(n+1))`
-/

namespace A362414.P17432995991953251492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A109395 (n + 1))

end

end A362414.P17432995991953251492

namespace A362414

/-- `gcd(Δ[A002088(n)], A109395(n+1))` -/
def P17432995991953251492.Spec : Prop :=
  ∀ n, (P17432995991953251492.a n : ℤ) = A362414 (n + 1)

end A362414

/-! ## A362414.P10274049777607333883

`gcd(A000190(n+1), A331176(n+1))`
-/

namespace A362414.P10274049777607333883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000190 (n + 1)) (A331176 (n + 1))

end

end A362414.P10274049777607333883

namespace A362414

/-- `gcd(A000190(n+1), A331176(n+1))` -/
def P10274049777607333883.Spec : Prop :=
  ∀ n, (P10274049777607333883.a n : ℤ) = A362414 (n + 1)

end A362414

/-! ## A362414.P16997087346573131793

`gcd(n-A219428(n+1), A294650(∏{p}[n+1, #]))`
-/

namespace A362414.P16997087346573131793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - A219428 (n + 1)) (A294650 (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A362414.P16997087346573131793

namespace A362414

/-- `gcd(n-A219428(n+1), A294650(∏{p}[n+1, #]))` -/
def P16997087346573131793.Spec : Prop :=
  ∀ n, (P16997087346573131793.a n : ℤ) = A362414 (n + 1)

end A362414

/-! ## A362414.P9315129966141466501

`A003557(n+1)/A003557(A009195(n+1))`
-/

namespace A362414.P9315129966141466501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) : ℚ) / (A003557 (A009195 (n + 1)).toNat : ℚ)

end

end A362414.P9315129966141466501

namespace A362414

/-- `A003557(n+1)/A003557(A009195(n+1))` -/
def P9315129966141466501.Spec : Prop :=
  ∀ n, P9315129966141466501.a n = (A362414 (n + 1) : ℚ)

end A362414

/-! ## A362414.P16209694146253416450

`A000188((n+1)/A009195(A009195(n+1)))`
-/

namespace A362414.P16209694146253416450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A009195 (A009195 (n + 1)).toNat : ℚ))).toNat

end

end A362414.P16209694146253416450

namespace A362414

/-- `A000188((n+1)/A009195(A009195(n+1)))` -/
def P16209694146253416450.Spec : Prop :=
  ∀ n, P16209694146253416450.a n = A362414 (n + 1)

end A362414

/-! ## A362414.P9943467754697954811

`A080400(n+1)/A080400(A007947(n+1))`
-/

namespace A362414.P9943467754697954811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080400 (n + 1) : ℚ) / (A080400 (A007947 (n + 1)).toNat : ℚ)

end

end A362414.P9943467754697954811

namespace A362414

/-- `A080400(n+1)/A080400(A007947(n+1))` -/
def P9943467754697954811.Spec : Prop :=
  ∀ n, P9943467754697954811.a n = (A362414 (n + 1) : ℚ)

end A362414

/-! ## A362414.P3081788008580317967

`gcd(n-A219428(n+1), A294650(A007947(n+1)))`
-/

namespace A362414.P3081788008580317967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - A219428 (n + 1)) (A294650 (A007947 (n + 1)).toNat)

end

end A362414.P3081788008580317967

namespace A362414

/-- `gcd(n-A219428(n+1), A294650(A007947(n+1)))` -/
def P3081788008580317967.Spec : Prop :=
  ∀ n, (P3081788008580317967.a n : ℤ) = A362414 (n + 1)

end A362414

/-! ## A362414.P4823848548085815811

`A007947(A000010(n+1))/A007947(A003958(n+1))`
-/

namespace A362414.P4823848548085815811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (A000010 (n + 1)).toNat : ℚ) / (A007947 (A003958 (n + 1)).toNat : ℚ)

end

end A362414.P4823848548085815811

namespace A362414

/-- `A007947(A000010(n+1))/A007947(A003958(n+1))` -/
def P4823848548085815811.Spec : Prop :=
  ∀ n, P4823848548085815811.a n = (A362414 (n + 1) : ℚ)

end A362414

/-! ## A362414.P16585255373219163593

`A007947(A009195(n+1))/A009195(A007947(n+1))`
-/

namespace A362414.P16585255373219163593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (A009195 (n + 1)).toNat : ℚ) / (A009195 (A007947 (n + 1)).toNat : ℚ)

end

end A362414.P16585255373219163593

namespace A362414

/-- `A007947(A009195(n+1))/A009195(A007947(n+1))` -/
def P16585255373219163593.Spec : Prop :=
  ∀ n, P16585255373219163593.a n = (A362414 (n + 1) : ℚ)

end A362414

/-! ## A362414.P1366507821003533935

`A007947(A327979(n+1))/A327979(A007947(n+1))`
-/

namespace A362414.P1366507821003533935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (A327979 (n + 1)).toNat : ℚ) / (A327979 (A007947 (n + 1)).toNat : ℚ)

end

end A362414.P1366507821003533935

namespace A362414

/-- `A007947(A327979(n+1))/A327979(A007947(n+1))` -/
def P1366507821003533935.Spec : Prop :=
  ∀ n, P1366507821003533935.a n = (A362414 (n + 1) : ℚ)

end A362414

/-! ## A362414.P11705165282914070783

`gcd(A000010(n+1), A109395(2*(n+1)))`
-/

namespace A362414.P11705165282914070783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A109395 (2 * (n + 1)))

end

end A362414.P11705165282914070783

namespace A362414

/-- `gcd(A000010(n+1), A109395(2*(n+1)))` -/
def P11705165282914070783.Spec : Prop :=
  ∀ n, (P11705165282914070783.a n : ℤ) = A362414 (n + 1)

end A362414

/-!
# A362415: The n-th run occurs a(n) times, where each run is chosen to be shortest, then lexicographically earliest.

The programs for A362415, there is no canonical definition to state claims against.
-/

/-! ## A362415.P11631189127949111811

`A049705(A156759(3*n+2)-A051890(n))`
-/

namespace A362415.P11631189127949111811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (A156759 (3 * n + 2) - A051890 n).toNat

end

end A362415.P11631189127949111811

/-! ## A362415.P14217424263631650179

`A175077(A131565(3*n+2)-n)`
-/

namespace A362415.P14217424263631650179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175077 (A131565 (3 * n + 2) - (n : ℤ)).toNat

end

end A362415.P14217424263631650179

/-! ## A362415.P17017879559437924251

`A040001(C(A112906(n+4), A335545(n)))`
-/

namespace A362415.P17017879559437924251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (Nat.choose (A112906 (n + 4)).toNat (A335545 n).toNat)

end

end A362415.P17017879559437924251

/-! ## A362415.P190669505515127064

`A003842(A385781(n+1)+A186275(n+1))`
-/

namespace A362415.P190669505515127064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 (A385781 (n + 1) + A186275 (n + 1)).toNat

end

end A362415.P190669505515127064

/-! ## A362415.P15510209447868896674

`A000002(A327421(n+1)+A257258(n+1))`
-/

namespace A362415.P15510209447868896674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A327421 (n + 1) + A257258 (n + 1)).toNat

end

end A362415.P15510209447868896674

/-!
# A362416: Winning numbers of game where you can either add one or divide by a prime.

The programs for A362416, there is no canonical definition to state claims against.
-/

/-! ## A362416.P4590709537748615456

`A123666(n+1)+A079998(A266232(n))`
-/

namespace A362416.P4590709537748615456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123666 (n + 1) + A079998 (A266232 n).toNat

end

end A362416.P4590709537748615456

/-! ## A362416.P12542394019781135157

`or(A123666(n+1), A265718(A001906(n)))`
-/

namespace A362416.P12542394019781135157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A123666 (n + 1)) (A265718 (A001906 n).toNat)

end

end A362416.P12542394019781135157

/-! ## A362416.P8431118109040942743

`A159689(A033835(n+1))+A123666(n+1)`
-/

namespace A362416.P8431118109040942743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159689 (A033835 (n + 1)).toNat + A123666 (n + 1)

end

end A362416.P8431118109040942743

/-! ## A362416.P6101770725711262743

`A285006(A295253(n+1))+A123666(n+1)`
-/

namespace A362416.P6101770725711262743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285006 (A295253 (n + 1)).toNat + A123666 (n + 1)

end

end A362416.P6101770725711262743

/-! ## A362416.P1810315414048794588

`A285006(A297607(n+1))+A123666(n+1)`
-/

namespace A362416.P1810315414048794588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285006 (A297607 (n + 1)).toNat + A123666 (n + 1)

end

end A362416.P1810315414048794588

/-!
# A362419: Partial sum of the first n even semiprimes.

The programs for A362419, the canonical program `A362419.P12067227853908555658` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362419 has offset 1).

The definition of A362419 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362419.P12067227853908555658

`2*A007504(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A362419

/-- `2*A007504(n+1)` -/
def P12067227853908555658.Spec : Prop :=
  ∀ n, P12067227853908555658.a n = A362419 (n + 1)

theorem P12067227853908555658.correct : P12067227853908555658.Spec := by
  intro n
  simp only [A362419, Nat.add_sub_cancel]

end A362419

/-! ## A362419.P17218181001755490996

`2*∑[p?[ceil(2/acot(n))]]`
-/

namespace A362419.P17218181001755490996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362419.P17218181001755490996

namespace A362419

/-- `2*∑[p?[ceil(2/acot(n))]]` -/
def P17218181001755490996.Spec : Prop :=
  ∀ n, P17218181001755490996.a n = A362419 (n + 1)

end A362419

/-! ## A362419.P576775312764464841

`∑[4*p?[round(8*n/7)]]/2`
-/

namespace A362419.P576775312764464841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A362419.P576775312764464841

namespace A362419

/-- `∑[4*p?[round(8*n/7)]]/2` -/
def P576775312764464841.Spec : Prop :=
  ∀ n, P576775312764464841.a n = (A362419 (n + 1) : ℚ)

end A362419

/-! ## A362419.P16131742036332329543

`2*(∑[p?[2*n+1]]+1-p?[2*n+1])+2`
-/

namespace A362419.P16131742036332329543
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ)) + 2

end

end A362419.P16131742036332329543

namespace A362419

/-- `2*(∑[p?[2*n+1]]+1-p?[2*n+1])+2` -/
def P16131742036332329543.Spec : Prop :=
  ∀ n, P16131742036332329543.a n = A362419 (n + 1)

end A362419

/-! ## A362419.P637535236729390655

`∑[A100484(n+1)]`
-/

namespace A362419.P637535236729390655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362419.P637535236729390655

namespace A362419

/-- `∑[A100484(n+1)]` -/
def P637535236729390655.Spec : Prop :=
  ∀ n, P637535236729390655.a n = A362419 (n + 1)

end A362419

/-! ## A362419.P8241556102195727155

`∑[sqrt(A069262(n+1))]`
-/

namespace A362419.P8241556102195727155
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A069262 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362419.P8241556102195727155

namespace A362419

/-- `∑[sqrt(A069262(n+1))]` -/
def P8241556102195727155.Spec : Prop :=
  ∀ n, P8241556102195727155.a n = (A362419 (n + 1) : ℝ)

end A362419

/-! ## A362419.P16165342003338554039

`∑[2*Δ[A007504(n)]]`
-/

namespace A362419.P16165342003338554039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362419.P16165342003338554039

namespace A362419

/-- `∑[2*Δ[A007504(n)]]` -/
def P16165342003338554039.Spec : Prop :=
  ∀ n, P16165342003338554039.a n = A362419 (n + 1)

end A362419

/-! ## A362419.P15013205808658669255

`∑[2*p?[A259153(n)]]`
-/

namespace A362419.P15013205808658669255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362419.P15013205808658669255

namespace A362419

/-- `∑[2*p?[A259153(n)]]` -/
def P15013205808658669255.Spec : Prop :=
  ∀ n, P15013205808658669255.a n = A362419 (n + 1)

end A362419

/-! ## A362419.P2084351195627899258

`∑[A037168(n+1)+2]`
-/

namespace A362419.P2084351195627899258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037168 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362419.P2084351195627899258

namespace A362419

/-- `∑[A037168(n+1)+2]` -/
def P2084351195627899258.Spec : Prop :=
  ∀ n, P2084351195627899258.a n = A362419 (n + 1)

end A362419

/-! ## A362419.P11449529974976340346

`∑[A072055(n+1)-1]`
-/

namespace A362419.P11449529974976340346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362419.P11449529974976340346

namespace A362419

/-- `∑[A072055(n+1)-1]` -/
def P11449529974976340346.Spec : Prop :=
  ∀ n, P11449529974976340346.a n = A362419 (n + 1)

end A362419

/-! ## A362419.P6439096712110769788

`∑[A089241(n+1)-2]`
-/

namespace A362419.P6439096712110769788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089241 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362419.P6439096712110769788

namespace A362419

/-- `∑[A089241(n+1)-2]` -/
def P6439096712110769788.Spec : Prop :=
  ∀ n, P6439096712110769788.a n = A362419 (n + 1)

end A362419

/-! ## A362419.P4875162448471963187

`∑[A131426(n+1)+3]`
-/

namespace A362419.P4875162448471963187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131426 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362419.P4875162448471963187

namespace A362419

/-- `∑[A131426(n+1)+3]` -/
def P4875162448471963187.Spec : Prop :=
  ∀ n, P4875162448471963187.a n = A362419 (n + 1)

end A362419

/-! ## A362419.P8250926789982846498

`∑[2*A000040(n+1)]`
-/

namespace A362419.P8250926789982846498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362419.P8250926789982846498

namespace A362419

/-- `∑[2*A000040(n+1)]` -/
def P8250926789982846498.Spec : Prop :=
  ∀ n, P8250926789982846498.a n = A362419 (n + 1)

end A362419

/-! ## A362419.P8608583947428689647

`∑[A129069(n+1)-3]`
-/

namespace A362419.P8608583947428689647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129069 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362419.P8608583947428689647

namespace A362419

/-- `∑[A129069(n+1)-3]` -/
def P8608583947428689647.Spec : Prop :=
  ∀ n, P8608583947428689647.a n = A362419 (n + 1)

end A362419

/-! ## A362419.P5842666802772772415

`∑[A140777(n+1)+4]`
-/

namespace A362419.P5842666802772772415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140777 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362419.P5842666802772772415

namespace A362419

/-- `∑[A140777(n+1)+4]` -/
def P5842666802772772415.Spec : Prop :=
  ∀ n, P5842666802772772415.a n = A362419 (n + 1)

end A362419

/-! ## A362419.P18183336746825402219

`∑[A001749(n+1)/2]`
-/

namespace A362419.P18183336746825402219
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362419.P18183336746825402219

namespace A362419

/-- `∑[A001749(n+1)/2]` -/
def P18183336746825402219.Spec : Prop :=
  ∀ n, P18183336746825402219.a n = (A362419 (n + 1) : ℚ)

end A362419

/-! ## A362419.P6127436305947581940

`∑[A138636(n+1)/3]`
-/

namespace A362419.P6127436305947581940
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138636 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362419.P6127436305947581940

namespace A362419

/-- `∑[A138636(n+1)/3]` -/
def P6127436305947581940.Spec : Prop :=
  ∀ n, P6127436305947581940.a n = (A362419 (n + 1) : ℚ)

end A362419

/-! ## A362419.P17680584820527261648

`2*(A101301(n+1)+n+1)`
-/

namespace A362419.P17680584820527261648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A101301 (n + 1) + (n + 1 : ℤ))

end

end A362419.P17680584820527261648

namespace A362419

/-- `2*(A101301(n+1)+n+1)` -/
def P17680584820527261648.Spec : Prop :=
  ∀ n, P17680584820527261648.a n = A362419 (n + 1)

theorem P17680584820527261648.correct : P17680584820527261648.Spec := by
  intro n
  simp only [A362419, Nat.add_sub_cancel, A362419.P17680584820527261648.a, A362419.P12067227853908555658.a, A007504, A007504.P14310834286015847203.a, A101301, A101301.P12618163721935666644.a, A014284, A014284.P18183547548072881472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A362419

/-! ## A362419.P884732257112818669

`2/(n+1)*A167214(n+1)`
-/

namespace A362419.P884732257112818669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A167214 (n + 1) : ℚ)

end

end A362419.P884732257112818669

namespace A362419

/-- `2/(n+1)*A167214(n+1)` -/
def P884732257112818669.Spec : Prop :=
  ∀ n, P884732257112818669.a n = (A362419 (n + 1) : ℚ)

end A362419

/-! ## A362419.P12433630615917210209

`A061802(n)+A000040(n+1)`
-/

namespace A362419.P12433630615917210209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n + A000040 (n + 1)

end

end A362419.P12433630615917210209

namespace A362419

/-- `A061802(n)+A000040(n+1)` -/
def P12433630615917210209.Spec : Prop :=
  ∀ n, P12433630615917210209.a n = A362419 (n + 1)

end A362419

/-!
# A362420: Partial sum of the first n odd semiprimes.

The programs for A362420, the canonical program `A362420.P2379391739297689340` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362420 has offset 1).

The definition of A362420 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362420.P2379391739297689340

`∑[A046315(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A362420

/-- `∑[A046315(n+1)]` -/
def P2379391739297689340.Spec : Prop :=
  ∀ n, P2379391739297689340.a n = A362420 (n + 1)

theorem P2379391739297689340.correct : P2379391739297689340.Spec := by
  intro n
  simp only [A362420, Nat.add_sub_cancel]

end A362420

/-! ## A362420.P278505812811534560

`∑[sqrt(A075730(n+1))]`
-/

namespace A362420.P278505812811534560
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A075730 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362420.P278505812811534560

namespace A362420

/-- `∑[sqrt(A075730(n+1))]` -/
def P278505812811534560.Spec : Prop :=
  ∀ n, P278505812811534560.a n = (A362420 (n + 1) : ℝ)

end A362420

/-! ## A362420.P11898599748837056006

`∑[A176406(n+1)+2]`
-/

namespace A362420.P11898599748837056006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176406 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362420.P11898599748837056006

namespace A362420

/-- `∑[A176406(n+1)+2]` -/
def P11898599748837056006.Spec : Prop :=
  ∀ n, P11898599748837056006.a n = A362420 (n + 1)

theorem P11898599748837056006.correct : P11898599748837056006.Spec := by
  intro n
  simp only [A362420, Nat.add_sub_cancel, A362420.P11898599748837056006.f1, A362420.P11898599748837056006.a, A362420.P2379391739297689340.f1, A362420.P2379391739297689340.a, A046315, A046315.P4459434404324554998.a, A176406, A176406.P4368198873740272747.a, A001358, A001358.P632087320844056370.a, A289182, A289182.P4409354960599188013.f1, A289182.P4409354960599188013.f2, A289182.P4409354960599188013.a, A088707, A088707.P7291141647877559993.a, A106138, A106138.P1314688240599968597.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A362420

/-! ## A362420.P18425616916809066951

`∑[eq[1, A353480(n+1)]+1]`
-/

namespace A362420.P18425616916809066951
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353480 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362420.P18425616916809066951

namespace A362420

/-- `∑[eq[1, A353480(n+1)]+1]` -/
def P18425616916809066951.Spec : Prop :=
  ∀ n, (P18425616916809066951.a n : ℤ) = A362420 (n + 1)

end A362420

/-! ## A362420.P13749861226994923262

`∑[A384940(2*n+1)]`
-/

namespace A362420.P13749861226994923262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384940 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362420.P13749861226994923262

namespace A362420

/-- `∑[A384940(2*n+1)]` -/
def P13749861226994923262.Spec : Prop :=
  ∀ n, P13749861226994923262.a n = A362420 (n + 1)

end A362420

/-! ## A362420.P2072993705720432137

`∑[record[A176570(n+3)]]`
-/

namespace A362420.P2072993705720432137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176570 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362420.P2072993705720432137

namespace A362420

/-- `∑[record[A176570(n+3)]]` -/
def P2072993705720432137.Spec : Prop :=
  ∀ n, P2072993705720432137.a n = A362420 (n + 1)

end A362420

/-!
# A362421: Number of nonisomorphic vector spaces consisting of n elements.

The programs for A362421, the canonical program `A362421.P15476662405559426444` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362421 has offset 2).

The definition of A362421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362421.P11213758142372947059

`A130209(A238952(n+2))`
-/

namespace A362421.P11213758142372947059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130209 (A238952 (n + 2)).toNat

end

end A362421.P11213758142372947059

namespace A362421

/-- `A130209(A238952(n+2))` -/
def P11213758142372947059.Spec : Prop :=
  ∀ n, P11213758142372947059.a n = A362421 (n + 2)

end A362421

/-! ## A362421.P17767455560804801687

`∑{d}[A100995(n+2), A088601(#)]`
-/

namespace A362421.P17767455560804801687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A088601 d

end

end A362421.P17767455560804801687

namespace A362421

/-- `∑{d}[A100995(n+2), A088601(#)]` -/
def P17767455560804801687.Spec : Prop :=
  ∀ n, P17767455560804801687.a n = A362421 (n + 2)

end A362421

/-! ## A362421.P8824110151618638068

`∑{d}[A100995(n+2), A298444(#)]`
-/

namespace A362421.P8824110151618638068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A298444 d

end

end A362421.P8824110151618638068

namespace A362421

/-- `∑{d}[A100995(n+2), A298444(#)]` -/
def P8824110151618638068.Spec : Prop :=
  ∀ n, P8824110151618638068.a n = A362421 (n + 2)

end A362421

/-! ## A362421.P5074077845460096254

`∑{d}[A100995(n+2), A330098(#)]`
-/

namespace A362421.P5074077845460096254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A330098 d

end

end A362421.P5074077845460096254

namespace A362421

/-- `∑{d}[A100995(n+2), A330098(#)]` -/
def P5074077845460096254.Spec : Prop :=
  ∀ n, P5074077845460096254.a n = A362421 (n + 2)

end A362421

/-! ## A362421.P15476662405559426444

`A049419(n+2)*A069513(n+2)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A362421

/-- `A049419(n+2)*A069513(n+2)` -/
def P15476662405559426444.Spec : Prop :=
  ∀ n, P15476662405559426444.a n = A362421 (n + 2)

theorem P15476662405559426444.correct : P15476662405559426444.Spec := by
  intro n
  simp only [A362421, Nat.add_sub_cancel]

end A362421

/-! ## A362421.P1781402123200742141

`A193347(A140651(n+2))`
-/

namespace A362421.P1781402123200742141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193347 (A140651 (n + 2)).toNat

end

end A362421.P1781402123200742141

namespace A362421

/-- `A193347(A140651(n+2))` -/
def P1781402123200742141.Spec : Prop :=
  ∀ n, P1781402123200742141.a n = A362421 (n + 2)

end A362421

/-! ## A362421.P14592156485102873631

`A010055(n+2)*A323302(n+2)`
-/

namespace A362421.P14592156485102873631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 2) * A323302 (n + 2)

end

end A362421.P14592156485102873631

namespace A362421

/-- `A010055(n+2)*A323302(n+2)` -/
def P14592156485102873631.Spec : Prop :=
  ∀ n, P14592156485102873631.a n = A362421 (n + 2)

end A362421

/-! ## A362421.P17678822405511551995

`and(A132231(A228564(n)), A323302(n+2))`
-/

namespace A362421.P17678822405511551995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A132231 (A228564 n).toNat) (A323302 (n + 2))

end

end A362421.P17678822405511551995

namespace A362421

/-- `and(A132231(A228564(n)), A323302(n+2))` -/
def P17678822405511551995.Spec : Prop :=
  ∀ n, P17678822405511551995.a n = A362421 (n + 2)

end A362421

/-! ## A362421.P17049473057608947100

`and(A318386(A277822(n+2)), A323302(n+2))`
-/

namespace A362421.P17049473057608947100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A318386 (A277822 (n + 2)).toNat) (A323302 (n + 2))

end

end A362421.P17049473057608947100

namespace A362421

/-- `and(A318386(A277822(n+2)), A323302(n+2))` -/
def P17049473057608947100.Spec : Prop :=
  ∀ n, P17049473057608947100.a n = A362421 (n + 2)

end A362421

/-! ## A362421.P8066542609281131898

`A323302(A205006(n+2))`
-/

namespace A362421.P8066542609281131898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323302 (A205006 (n + 2)).toNat

end

end A362421.P8066542609281131898

namespace A362421

/-- `A323302(A205006(n+2))` -/
def P8066542609281131898.Spec : Prop :=
  ∀ n, P8066542609281131898.a n = A362421 (n + 2)

end A362421

/-!
# A362422: Number of partitions of n into 2 perfect powers (A001597).

The programs for A362422, there is no canonical definition to state claims against.
-/

/-! ## A362422.P10988070599993257074

`round(sqrt(A362426(n)))`
-/

namespace A362422.P10988070599993257074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A362426 n : ℝ))

end

end A362422.P10988070599993257074

/-! ## A362422.P17138008097907361574

`A000194(A362426(n))`
-/

namespace A362422.P17138008097907361574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A362426 n).toNat

end

end A362422.P17138008097907361574

/-! ## A362422.P4831156309091260734

`A004526(A362426(n)+1)`
-/

namespace A362422.P4831156309091260734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A362426 n + 1).toNat

end

end A362422.P4831156309091260734

/-! ## A362422.P3671439503799509318

`A116085(A362426(n)+1)`
-/

namespace A362422.P3671439503799509318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116085 (A362426 n + 1).toNat

end

end A362422.P3671439503799509318

/-! ## A362422.P14367362593222926230

`A131555(A362426(n)+1)`
-/

namespace A362422.P14367362593222926230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131555 (A362426 n + 1).toNat

end

end A362422.P14367362593222926230

/-! ## A362422.P12105738707107795550

`A345165(A362426(n)+1)`
-/

namespace A362422.P12105738707107795550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345165 (A362426 n + 1).toNat

end

end A362422.P12105738707107795550

/-! ## A362422.P4316836694475557757

`A067661(A362426(n)+2)`
-/

namespace A362422.P4316836694475557757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 (A362426 n + 2).toNat

end

end A362422.P4316836694475557757

/-! ## A362422.P3356956142069513101

`A235168(2*A362426(n))`
-/

namespace A362422.P3356956142069513101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235168 (2 * A362426 n).toNat

end

end A362422.P3356956142069513101

/-! ## A362422.P15902295324909095044

`A362426(n)-A362424(n)`
-/

namespace A362422.P15902295324909095044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362426 n - A362424 n

end

end A362422.P15902295324909095044

/-! ## A362422.P12842511319127167316

`A102347(A362426(n)+1)-1`
-/

namespace A362422.P12842511319127167316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102347 (A362426 n + 1).toNat - 1

end

end A362422.P12842511319127167316

/-!
# A362423: Number of partitions of n into 3 perfect powers (A001597).

The programs for A362423, there is no canonical definition to state claims against.
-/

/-! ## A362423.P5468218473311131651

`A333382(A006694(n+4)+A000009(n))`
-/

namespace A362423.P5468218473311131651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A006694 (n + 4) + A000009 n).toNat

end

end A362423.P5468218473311131651

/-! ## A362423.P8413113867163499178

`A083919(A276625(n+1)+A001638(n))`
-/

namespace A362423.P8413113867163499178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083919 (A276625 (n + 1) + A001638 n).toNat

end

end A362423.P8413113867163499178

/-! ## A362423.P16093588825224326431

`A156072(n)%A001221(A329868(n+3))`
-/

namespace A362423.P16093588825224326431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156072 n) (A001221 (A329868 (n + 3)).toNat)

end

end A362423.P16093588825224326431

/-!
# A362424: Number of partitions of n into 2 distinct perfect powers (A001597).

The programs for A362424, there is no canonical definition to state claims against.
-/

/-! ## A362424.P10674660011297076717

`floor(A362426(n)/2)`
-/

namespace A362424.P10674660011297076717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A362426 n : ℚ) / 2⌋

end

end A362424.P10674660011297076717

/-! ## A362424.P1431026433082468015

`A004526(A362426(n))`
-/

namespace A362424.P1431026433082468015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A362426 n).toNat

end

end A362424.P1431026433082468015

/-! ## A362424.P7585389023110978952

`A362412(2^A362426(n))`
-/

namespace A362424.P7585389023110978952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362412 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A362426 n : ℤ))).toNat

end

end A362424.P7585389023110978952

/-! ## A362424.P3751397996588659081

`A185102(A362426(n)!)`
-/

namespace A362424.P3751397996588659081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185102 (Nat.factorial (A362426 n).toNat)

end

end A362424.P3751397996588659081

/-! ## A362424.P17409131808231919133

`A131555(A331923(n))`
-/

namespace A362424.P17409131808231919133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131555 (A331923 n).toNat

end

end A362424.P17409131808231919133

/-! ## A362424.P2885033211907839939

`A362426(n)-A362422(n)`
-/

namespace A362424.P2885033211907839939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362426 n - A362422 n

end

end A362424.P2885033211907839939

/-! ## A362424.P11409609589975608348

`A332662(or(A362422(n), A362426(n)))`
-/

namespace A362424.P11409609589975608348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332662 (Int.lor (A362422 n) (A362426 n)).toNat

end

end A362424.P11409609589975608348

/-! ## A362424.P10056434419274663528

`A362422((A362426(n)+A362422(n))²)`
-/

namespace A362424.P10056434419274663528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362422 ((A362426 n + A362422 n) ^ 2).toNat

end

end A362424.P10056434419274663528

/-!
# A362426: Number of compositions (ordered partitions) of n into 2 perfect powers (A001597).

The programs for A362426, there is no canonical definition to state claims against.
-/

/-! ## A362426.P2337106609347198281

`A362424(n)+A362422(n)`
-/

namespace A362426.P2337106609347198281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362424 n + A362422 n

end

end A362426.P2337106609347198281

/-! ## A362426.P12350877504954219296

`A362422(n)+A131555(A331923(n))`
-/

namespace A362426.P12350877504954219296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362422 n + A131555 (A331923 n).toNat

end

end A362426.P12350877504954219296

/-! ## A362426.P13984253371799873706

`A124766(A216348(n+5)*A362422(n))`
-/

namespace A362426.P13984253371799873706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A216348 (n + 5) * A362422 n).toNat

end

end A362426.P13984253371799873706

/-! ## A362426.P11287019847798201541

`A000034(A362399(n+5))*A362422(n)`
-/

namespace A362426.P11287019847798201541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A362399 (n + 5)).toNat * A362422 n

end

end A362426.P11287019847798201541

/-! ## A362426.P14761167319963099031

`and(A000120(n), A236300(A329899(n+1)))`
-/

namespace A362426.P14761167319963099031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000120 n) (A236300 (A329899 (n + 1)).toNat)

end

end A362426.P14761167319963099031

/-!
# A362430: E.g.f. satisfies A(x) = exp(x - x^3 * A(x)).

The programs for A362430, there is no canonical definition to state claims against.
-/

/-! ## A362430.P8076569374304931667

`1-A325228(A141199(n))`
-/

namespace A362430.P8076569374304931667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A325228 (A141199 n).toNat

end

end A362430.P8076569374304931667

/-! ## A362430.P15492961057320564703

`2-A196395(A000988(n))`
-/

namespace A362430.P15492961057320564703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A196395 (A000988 n).toNat

end

end A362430.P15492961057320564703

/-!
# A362431: E.g.f. satisfies A(x) = exp(x - x^4 * A(x)).

The programs for A362431, there is no canonical definition to state claims against.
-/

/-! ## A362431.P8038169101667533647

`2-A098180((n-3)*(n-2)*(n-1)*n*2^(n-4))`
-/

namespace A362431.P8038169101667533647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A098180 (SequenceMachineLib.roundAway (((n : ℤ) - 3 : ℚ) * (((n : ℤ) - 2 : ℚ) * (((n : ℤ) - 1 : ℚ) * ((n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 4 : ℤ)))))).toNat

end

end A362431.P8038169101667533647

/-! ## A362431.P7082629487014943383

`2-A028310((n-3)*(n-2)*(n-1)*n*2^(n-4)+1)`
-/

namespace A362431.P7082629487014943383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A028310 (SequenceMachineLib.roundAway (((n : ℤ) - 3 : ℚ) * (((n : ℤ) - 2 : ℚ) * (((n : ℤ) - 1 : ℚ) * ((n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 4 : ℤ)))) + 1)).toNat

end

end A362431.P7082629487014943383

/-! ## A362431.P9947855826396379806

`2-abs((-1)^n*A004442((n-3)*(n-2)*(n-1)*n*2^(n-4)))`
-/

namespace A362431.P9947855826396379806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - |(-1) ^ n * A004442 (SequenceMachineLib.roundAway (((n : ℤ) - 3 : ℚ) * (((n : ℤ) - 2 : ℚ) * (((n : ℤ) - 1 : ℚ) * ((n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 4 : ℤ)))))).toNat|

end

end A362431.P9947855826396379806

/-! ## A362431.P1381511319747289241

`2-abs((-1)^n*A109613((n-3)*(n-2)*(n-1)*n*2^(n-4)))`
-/

namespace A362431.P1381511319747289241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - |(-1) ^ n * A109613 (SequenceMachineLib.roundAway (((n : ℤ) - 3 : ℚ) * (((n : ℤ) - 2 : ℚ) * (((n : ℤ) - 1 : ℚ) * ((n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 4 : ℤ)))))).toNat|

end

end A362431.P1381511319747289241

/-!
# A362434: Numbers that can be written as A000045(i) + j^2 for i,j>=0 in 4 ways.

The programs for A362434, there is no canonical definition to state claims against.
-/

/-! ## A362434.P17550279461028343108

`A060645(n+1)²+1`
-/

namespace A362434.P17550279461028343108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060645 (n + 1) ^ 2 + 1

end

end A362434.P17550279461028343108

/-! ## A362434.P18046287653568044405

`A085348(2*n+1)²+1`
-/

namespace A362434.P18046287653568044405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085348 (2 * n + 1) ^ 2 + 1

end

end A362434.P18046287653568044405

/-! ## A362434.P10199154960086289584

`1+A000045(6*(n+1))²/4`
-/

namespace A362434.P10199154960086289584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (A000045 (6 * (n + 1)) ^ 2 : ℚ) / 4

end

end A362434.P10199154960086289584

/-! ## A362434.P4466797486786133946

`A007805(n+1)*A007805(n)`
-/

namespace A362434.P4466797486786133946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007805 (n + 1) * A007805 n

end

end A362434.P4466797486786133946

/-!
# A362435: a(1) = 18; thereafter a(n) = a(n-1) + abs(difference between first two digits of a(n-1)).

The programs for A362435, the canonical program `A362435.P5154572988993059103` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362435 has offset 1).

The definition of A362435 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)` (program `A362435.P5154572988993059103`, by `A362435.P5154572988993059103.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A362435.P5154572988993059103

`a(n-1)` with `a(0)=18, a(1)=25, a(2)=28, a(3)=34, a(4)=35, a(5)=37, a(6)=41, a(7)=44`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A362435

/-- `a(n-1)` -/
def P5154572988993059103.Spec : Prop :=
  ∀ n, (P5154572988993059103.a n : ℤ) = A362435 (n + 1)

theorem P5154572988993059103.correct : P5154572988993059103.Spec := by
  intro n
  simp only [A362435, Nat.add_sub_cancel]

end A362435

/-!
# A362436: Write out the sequence of squares, 1, 4, 9, 16, ..., then starting with the 16, successively delete the digits of the triangular numbers 1, 3, 6, 10, ...

The programs for A362436, there is no canonical definition to state claims against.
-/

/-! ## A362436.P773582146072088987

`(n+1)²%A075846(A339768(3*n+1))`
-/

namespace A362436.P773582146072088987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) ^ 2 : ℤ) (A075846 (A339768 (3 * n + 1)).toNat)

end

end A362436.P773582146072088987

/-! ## A362436.P2868379567059933017

`A357556(n+1)%A121030(A165781(n))`
-/

namespace A362436.P2868379567059933017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357556 (n + 1)) (A121030 (A165781 n).toNat)

end

end A362436.P2868379567059933017

/-! ## A362436.P6257647725290105358

`A000194(A050468(n+1))%A260592(n+1)`
-/

namespace A362436.P6257647725290105358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000194 (A050468 (n + 1)).toNat) (A260592 (n + 1))

end

end A362436.P6257647725290105358

/-! ## A362436.P3092198454463866150

`A352618(n+1)%A106600(A008292(2*n+1))`
-/

namespace A362436.P3092198454463866150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352618 (n + 1)) (A106600 (A008292 (2 * n + 1)).toNat)

end

end A362436.P3092198454463866150

/-!
# A362438: a(n) = n^2 + 2^(n-1).

The programs for A362438, the canonical program `A362438.P13652944094738789012` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362438 has offset 1).

The definition of A362438 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)²+2^n` (program `A362438.P13652944094738789012`, by `A362438.P13652944094738789012.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A362438.P13652944094738789012

`(n+1)²+2^n`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A362438

/-- `(n+1)²+2^n` -/
def P13652944094738789012.Spec : Prop :=
  ∀ n, (P13652944094738789012.a n : ℤ) = A362438 (n + 1)

theorem P13652944094738789012.correct : P13652944094738789012.Spec := by
  intro n
  simp only [A362438, Nat.add_sub_cancel]

end A362438

/-! ## A362438.P1129281474584183654

`∑[∑[2*(a(n-1)-1)]]` with `a(0)=2, a(1)=2, a(2)=3`
-/

namespace A362438.P1129281474584183654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 3] fun n f2 =>
  2 * (f2 (n - 1) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362438.P1129281474584183654

namespace A362438

/-- `∑[∑[2*(a(n-1)-1)]]` -/
def P1129281474584183654.Spec : Prop :=
  ∀ n, P1129281474584183654.a n = A362438 (n + 1)

end A362438

/-! ## A362438.P5385469466820112747

`∑[ceil(2^(n-1))+xor(1, 2*n)]`
-/

namespace A362438.P5385469466820112747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ + (Nat.xor 1 (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362438.P5385469466820112747

namespace A362438

/-- `∑[ceil(2^(n-1))+xor(1, 2*n)]` -/
def P5385469466820112747.Spec : Prop :=
  ∀ n, P5385469466820112747.a n = A362438 (n + 1)

end A362438

/-! ## A362438.P15598518712317968509

`floor(∑[a(n-1)+2]+2^n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A362438.P15598518712317968509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 ^ n

end

end A362438.P15598518712317968509

namespace A362438

/-- `floor(∑[a(n-1)+2]+2^n)` -/
def P15598518712317968509.Spec : Prop :=
  ∀ n, (P15598518712317968509.a n : ℤ) = A362438 (n + 1)

end A362438

/-! ## A362438.P9615580132098901825

`∑[2^floor(∑[n*acot(n)])+2*n+1]`
-/

namespace A362438.P9615580132098901825
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * SequenceMachineLib.acot (n : ℝ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊∑ j ∈ Finset.range (n + 1), f2 j⌋ : ℤ) + (2 * n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362438.P9615580132098901825

namespace A362438

/-- `∑[2^floor(∑[n*acot(n)])+2*n+1]` -/
def P9615580132098901825.Spec : Prop :=
  ∀ n, P9615580132098901825.a n = (A362438 (n + 1) : ℚ)

end A362438

/-! ## A362438.P14878549754347896587

`∑[2^round(n-atan(atan(n)))+n+1+n]`
-/

namespace A362438.P14878549754347896587
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (SequenceMachineLib.roundAway ((n : ℝ) - Real.arctan (Real.arctan (n : ℝ))) : ℤ) + (n + 1 : ℚ) + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362438.P14878549754347896587

namespace A362438

/-- `∑[2^round(n-atan(atan(n)))+n+1+n]` -/
def P14878549754347896587.Spec : Prop :=
  ∀ n, P14878549754347896587.a n = (A362438 (n + 1) : ℚ)

end A362438

/-! ## A362438.P13445608878613870516

`∑[∑[a(n-1)+a(n-1)-2]]` with `a(0)=2, a(1)=2, a(2)=3`
-/

namespace A362438.P13445608878613870516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 3] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362438.P13445608878613870516

namespace A362438

/-- `∑[∑[a(n-1)+a(n-1)-2]]` -/
def P13445608878613870516.Spec : Prop :=
  ∀ n, P13445608878613870516.a n = A362438 (n + 1)

end A362438

/-! ## A362438.P12055225607004663447

`∑[∑[a(n-1)-(2-a(n-1))]]` with `a(0)=2, a(1)=2, a(2)=3`
-/

namespace A362438.P12055225607004663447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 3] fun n f2 =>
  f2 (n - 1) - (2 - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362438.P12055225607004663447

namespace A362438

/-- `∑[∑[a(n-1)-(2-a(n-1))]]` -/
def P12055225607004663447.Spec : Prop :=
  ∀ n, P12055225607004663447.a n = A362438 (n + 1)

end A362438

/-! ## A362438.P13172788351058739981

`floor(2*a(n-1)+n*(2-n)+1)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A362438.P13172788351058739981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) + ((n : ℤ) * (2 - (n : ℤ)) + 1)

end

end A362438.P13172788351058739981

namespace A362438

/-- `floor(2*a(n-1)+n*(2-n)+1)` -/
def P13172788351058739981.Spec : Prop :=
  ∀ n, P13172788351058739981.a n = A362438 (n + 1)

theorem P13172788351058739981.correct : P13172788351058739981.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A362438, Nat.add_sub_cancel, A362438.P13172788351058739981.a, A362438.P13652944094738789012.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A362438, Nat.add_sub_cancel, A362438.P13172788351058739981.a, A362438.P13652944094738789012.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A362438

/-! ## A362438.P15736836705723358165

`∑[2^((n-1)%(n+1))+n+1+n]`
-/

namespace A362438.P15736836705723358165
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ) + (n + 1 : ℚ) + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362438.P15736836705723358165

namespace A362438

/-- `∑[2^((n-1)%(n+1))+n+1+n]` -/
def P15736836705723358165.Spec : Prop :=
  ∀ n, P15736836705723358165.a n = (A362438 (n + 1) : ℚ)

end A362438

/-! ## A362438.P8507823224981561741

`floor(a(n-1)-(n*(n-2)-1-a(n-1)))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A362438.P8507823224981561741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - ((n : ℤ) * ((n : ℤ) - 2) - 1 - a (n - 1))

end

end A362438.P8507823224981561741

namespace A362438

/-- `floor(a(n-1)-(n*(n-2)-1-a(n-1)))` -/
def P8507823224981561741.Spec : Prop :=
  ∀ n, P8507823224981561741.a n = A362438 (n + 1)

theorem P8507823224981561741.correct : P8507823224981561741.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A362438, Nat.add_sub_cancel, A362438.P8507823224981561741.a, A362438.P13652944094738789012.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A362438, Nat.add_sub_cancel, A362438.P8507823224981561741.a, A362438.P13652944094738789012.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A362438

/-! ## A362438.P1229784155078202422

`∑[A052968(n)+n]`
-/

namespace A362438.P1229784155078202422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052968 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362438.P1229784155078202422

namespace A362438

/-- `∑[A052968(n)+n]` -/
def P1229784155078202422.Spec : Prop :=
  ∀ n, P1229784155078202422.a n = A362438 (n + 1)

end A362438

/-! ## A362438.P1313719718299203872

`∑[A288382(n+2)+n]`
-/

namespace A362438.P1313719718299203872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288382 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362438.P1313719718299203872

namespace A362438

/-- `∑[A288382(n+2)+n]` -/
def P1313719718299203872.Spec : Prop :=
  ∀ n, P1313719718299203872.a n = A362438 (n + 1)

end A362438

/-! ## A362438.P487186850420623049

`∑[A011782(n)+Δ[n²]]`
-/

namespace A362438.P487186850420623049
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362438.P487186850420623049

namespace A362438

/-- `∑[A011782(n)+Δ[n²]]` -/
def P487186850420623049.Spec : Prop :=
  ∀ n, P487186850420623049.a n = A362438 (n + 1)

end A362438

/-! ## A362438.P16771280319375295460

`abs(Δ[A000330(n)]+2^n)`
-/

namespace A362438.P16771280319375295460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + (2 ^ n : ℤ)|

end

end A362438.P16771280319375295460

namespace A362438

/-- `abs(Δ[A000330(n)]+2^n)` -/
def P16771280319375295460.Spec : Prop :=
  ∀ n, P16771280319375295460.a n = A362438 (n + 1)

end A362438

/-! ## A362438.P17171460494464983386

`∑[A288133(n+1)+n+1]`
-/

namespace A362438.P17171460494464983386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288133 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362438.P17171460494464983386

namespace A362438

/-- `∑[A288133(n+1)+n+1]` -/
def P17171460494464983386.Spec : Prop :=
  ∀ n, P17171460494464983386.a n = A362438 (n + 1)

end A362438

/-! ## A362438.P18170901686999793553

`∑[A158780(Δ[n²])+Δ[n²]]`
-/

namespace A362438.P18170901686999793553
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat + ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362438.P18170901686999793553

namespace A362438

/-- `∑[A158780(Δ[n²])+Δ[n²]]` -/
def P18170901686999793553.Spec : Prop :=
  ∀ n, P18170901686999793553.a n = A362438 (n + 1)

end A362438

/-! ## A362438.P17746416932466880530

`∑[A004277(n)+∑[ceil(2^(n-2))]]`
-/

namespace A362438.P17746416932466880530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362438.P17746416932466880530

namespace A362438

/-- `∑[A004277(n)+∑[ceil(2^(n-2))]]` -/
def P17746416932466880530.Spec : Prop :=
  ∀ n, P17746416932466880530.a n = A362438 (n + 1)

end A362438

/-! ## A362438.P13114662818118569352

`∑[ceil(2^(n-1))-A024000(2*(n+1))]`
-/

namespace A362438.P13114662818118569352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A024000 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362438.P13114662818118569352

namespace A362438

/-- `∑[ceil(2^(n-1))-A024000(2*(n+1))]` -/
def P13114662818118569352.Spec : Prop :=
  ∀ n, P13114662818118569352.a n = A362438 (n + 1)

end A362438

/-!
# A362450: Array of numbers read by upward antidiagonals: leading row lists tau(i), i >= 1 (cf. A000005); the following rows give absolute values of differences of previous row.

The programs for A362450, there is no canonical definition to state claims against.
-/

/-! ## A362450.P2032500937864053277

`A285599(A100157(n+1))+A227186(n)`
-/

namespace A362450.P2032500937864053277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285599 (A100157 (n + 1)).toNat + A227186 n

end

end A362450.P2032500937864053277

/-! ## A362450.P12006535690691275348

`C(A323023(n+1), A318362(A133935(2*n)))`
-/

namespace A362450.P12006535690691275348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A323023 (n + 1)).toNat (A318362 (A133935 (2 * n)).toNat).toNat

end

end A362450.P12006535690691275348

/-! ## A362450.P5645298977957512641

`A305831(n+1)+A049347(A237043(n+1))`
-/

namespace A362450.P5645298977957512641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305831 (n + 1) + A049347 (A237043 (n + 1)).toNat

end

end A362450.P5645298977957512641

/-! ## A362450.P6997529651863229440

`A196564(gcd(A007088(n+4), A301823(n+1)))`
-/

namespace A362450.P6997529651863229440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (Int.gcd (A007088 (n + 4)) (A301823 (n + 1)))

end

end A362450.P6997529651863229440

/-! ## A362450.P5728005572945197486

`and(A000961(3*(n+1)), A039995(A002587(n+2)))`
-/

namespace A362450.P5728005572945197486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000961 (3 * (n + 1))) (A039995 (A002587 (n + 2)).toNat)

end

end A362450.P5728005572945197486

/-!
# A362451: Gilbreath transform of {sigma(i), i >= 1} (cf. A000203).

The programs for A362451, there is no canonical definition to state claims against.
-/

/-! ## A362451.P8776696641105392370

`A362464(∑[n]+1)`
-/

namespace A362451.P8776696641105392370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362464 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A362451.P8776696641105392370

/-! ## A362451.P8505341589439651838

`and(A049113(A043570(n+1)), A112568(n+1))`
-/

namespace A362451.P8505341589439651838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049113 (A043570 (n + 1)).toNat) (A112568 (n + 1))

end

end A362451.P8505341589439651838

/-! ## A362451.P16462141611630433361

`and(Δ[A104819(3*n+1)], A329359(n+1))`
-/

namespace A362451.P16462141611630433361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104819 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A329359 (n + 1))

end

end A362451.P16462141611630433361

/-! ## A362451.P16897507082953522560

`A349082(A224223(n)-A010815(n))`
-/

namespace A362451.P16897507082953522560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349082 (A224223 n - A010815 n).toNat

end

end A362451.P16897507082953522560

/-! ## A362451.P18274915719435795401

`A266477(A325415(n)+A317256(3*n))`
-/

namespace A362451.P18274915719435795401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266477 (A325415 n + A317256 (3 * n)).toNat

end

end A362451.P18274915719435795401

/-!
# A362452: Gilbreath transform of {sigma(i)-i, i >= 1} (see sum of aliquot parts, A001065).

The programs for A362452, there is no canonical definition to state claims against.
-/

/-! ## A362452.P8112476198488898702

`A240865(A362451(n+1)+A019590(n+1))`
-/

namespace A362452.P8112476198488898702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240865 (A362451 (n + 1) + A019590 (n + 1)).toNat

end

end A362452.P8112476198488898702

/-! ## A362452.P10572470079267449841

`A000035(A362451(n+1)+A270133(n))`
-/

namespace A362452.P10572470079267449841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A362451 (n + 1) + A270133 n).toNat

end

end A362452.P10572470079267449841

/-! ## A362452.P6375093724219053363

`A064108(A362451(n+1))%A218123(n+1)`
-/

namespace A362452.P6375093724219053363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064108 (A362451 (n + 1)).toNat) (A218123 (n + 1))

end

end A362452.P6375093724219053363

/-! ## A362452.P12378713039111982012

`(A131046(n+1)-char[1])%A036453(A057335(n))`
-/

namespace A362452.P12378713039111982012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131046 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) (A036453 (A057335 n).toNat)

end

end A362452.P12378713039111982012

/-! ## A362452.P3237417359877125016

`A351593(and(A133956(n+1), A362451(n+1)))`
-/

namespace A362452.P3237417359877125016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351593 (Int.land (A133956 (n + 1)) (A362451 (n + 1))).toNat

end

end A362452.P3237417359877125016

/-!
# A362453: Indices of 0's in A361897.

The programs for A362453, there is no canonical definition to state claims against.
-/

/-! ## A362453.P6714818692761069635

`comp[A362454(n+1)-1]+1`
-/

namespace A362453.P6714818692761069635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362454 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A362453.P6714818692761069635

/-! ## A362453.P7852926211414481952

`eq[0, A361897(n+1)]+1`
-/

namespace A362453.P7852926211414481952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361897 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A362453.P7852926211414481952

/-! ## A362453.P2192205217724612738

`lt[A361897(A028310(n)), 1]`
-/

namespace A362453.P2192205217724612738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361897 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A362453.P2192205217724612738

/-! ## A362453.P11945884588560588374

`A000027(lt[char[A362454(n+1)-1], 1]+1)`
-/

namespace A362453.P11945884588560588374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362454 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1)

end

end A362453.P11945884588560588374

/-! ## A362453.P14134206691859859785

`eq[char[A362454(n+1)], A049084(3*(n+1))]`
-/

namespace A362453.P14134206691859859785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362454 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A362453.P14134206691859859785

/-! ## A362453.P15564159893407575328

`eq[2, gcd(2, A101509(n))]+1`
-/

namespace A362453.P15564159893407575328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A101509 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A362453.P15564159893407575328

/-!
# A362454: Indices of 1's in A361897.

The programs for A362454, there is no canonical definition to state claims against.
-/

/-! ## A362454.P6099514027605510984

`comp[A362453(n+1)-1]+1`
-/

namespace A362454.P6099514027605510984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362453 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A362454.P6099514027605510984

/-! ## A362454.P13930094805534610578

`eq[1, A361897(n+1)]+1`
-/

namespace A362454.P13930094805534610578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361897 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A362454.P13930094805534610578

/-! ## A362454.P3299250037372794008

`record[A000027(n+1)*A361897(n+1)]`
-/

namespace A362454.P3299250037372794008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A361897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362454.P3299250037372794008

/-! ## A362454.P13819008181762706211

`eq[A158388(n), A361897(A028310(n))]`
-/

namespace A362454.P13819008181762706211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361897 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A362454.P13819008181762706211

/-! ## A362454.P11961160602599687097

`eq[1, gcd(2, A101509(n))]+1`
-/

namespace A362454.P11961160602599687097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A101509 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A362454.P11961160602599687097

/-! ## A362454.P3041987370180968292

`record[A003056(2*n+1)*A361897(A003056(2*n+1))]`
-/

namespace A362454.P3041987370180968292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * n + 1) * A361897 (A003056 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362454.P3041987370180968292

/-!
# A362455: Squarefree positive integers d such that the dimension of the space of cuspidal harmonic automorphic forms for SL(2, O_{-d}) is zero, where O_{-d} is the ring of integers in Q(sqrt(-d)).

The programs for A362455, there is no canonical definition to state claims against.
-/

/-! ## A362455.P11619201281009801742

`lt[A289990(A003602(n+1)), A066717(n)]`
-/

namespace A362455.P11619201281009801742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289990 (A003602 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066717 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A362455.P11619201281009801742

/-! ## A362455.P9430582814932861659

`lt[A036044(n), A000005(A351175(n+1))]`
-/

namespace A362455.P9430582814932861659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A351175 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A362455.P9430582814932861659

/-! ## A362455.P17226080640938506097

`lt[A049311(A184242(n+1)), A206915(n)]`
-/

namespace A362455.P17226080640938506097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049311 (A184242 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206915 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A362455.P17226080640938506097

/-! ## A362455.P14650796640963525457

`lt[A000593(n+1), A049085(A078370(n+2))]`
-/

namespace A362455.P14650796640963525457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049085 (A078370 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A362455.P14650796640963525457

/-! ## A362455.P1881102799388980312

`lt[A073937(n), Δ[A007088(n)]]`
-/

namespace A362455.P1881102799388980312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073937 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A362455.P1881102799388980312

/-!
# A362456: Records in A362451.

The programs for A362456, there is no canonical definition to state claims against.
-/

/-! ## A362456.P3357050439735552162

`record[A362451(2*(n+2))]`
-/

namespace A362456.P3357050439735552162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362451 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362456.P3357050439735552162

/-! ## A362456.P15162633005572193512

`A362451(A362457(n+1))`
-/

namespace A362456.P15162633005572193512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362451 (A362457 (n + 1)).toNat

end

end A362456.P15162633005572193512

/-!
# A362457: Indices of records in A362451.

The programs for A362457, there is no canonical definition to state claims against.
-/

/-! ## A362457.P9918938202838265525

`A000010(A375948(n)+A341915(n))`
-/

namespace A362457.P9918938202838265525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A375948 n + A341915 n).toNat

end

end A362457.P9918938202838265525

/-! ## A362457.P17418669701383740970

`A000984(n)*A278060(A095817(n))`
-/

namespace A362457.P17418669701383740970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A278060 (A095817 n).toNat

end

end A362457.P17418669701383740970

/-!
# A362458: Records in A362452.

The programs for A362458, there is no canonical definition to state claims against.
-/

/-! ## A362458.P8336582941033408493

`A362452(A362459(n+1))`
-/

namespace A362458.P8336582941033408493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362452 (A362459 (n + 1)).toNat

end

end A362458.P8336582941033408493

/-! ## A362458.P10270043626273212564

`record[A362452(A023172(n+1))]`
-/

namespace A362458.P10270043626273212564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362452 (A023172 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362458.P10270043626273212564

/-!
# A362460: a(n) = A054978(n)/2 if that number is 0 or 1, otherwise -1.

The programs for A362460, there is no canonical definition to state claims against.
-/

/-! ## A362460.P11390057057537671903

`A054978(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A362460.P11390057057537671903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054978 (n + 1) : ℚ) / 2

end

end A362460.P11390057057537671903

/-! ## A362460.P11255236595504470362

`char[A362462(n+1)-1]`
-/

namespace A362460.P11255236595504470362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362462 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A362460.P11255236595504470362

/-! ## A362460.P17176974998158316459

`C(A054978(A000027(n+1)), 2)`
-/

namespace A362460.P17176974998158316459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A054978 (A000027 (n + 1)).toNat).toNat 2

end

end A362460.P17176974998158316459

/-! ## A362460.P11244288340929926219

`1-A219485(A054978(n+1)^Δ[A007494(n)])`
-/

namespace A362460.P11244288340929926219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A219485 (SequenceMachineLib.roundAway ((A054978 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A362460.P11244288340929926219

/-! ## A362460.P8648695033444190328

`A000045(A054978(n+1)+A048146(p?[n%3+n]))`
-/

namespace A362460.P8648695033444190328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A054978 (n + 1) + A048146 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A362460.P8648695033444190328

/-! ## A362460.P6208555676376104864

`A010060(A023689(n+2)*A054978(n+1))`
-/

namespace A362460.P6208555676376104864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A023689 (n + 2) * A054978 (n + 1)).toNat

end

end A362460.P6208555676376104864

/-! ## A362460.P47031231476545285

`C(A054978(n+1), A152235(A014692(n+1)+n))`
-/

namespace A362460.P47031231476545285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A054978 (n + 1)).toNat (A152235 (A014692 (n + 1) + (n : ℤ)).toNat).toNat

end

end A362460.P47031231476545285

/-! ## A362460.P18237772282012829414

`A011655(A031368(n+1)*A054978(n+1))`
-/

namespace A362460.P18237772282012829414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A031368 (n + 1) * A054978 (n + 1)).toNat

end

end A362460.P18237772282012829414

/-! ## A362460.P6535582771386204508

`A254967(∑[n+1])/2`
-/

namespace A362460.P6535582771386204508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254967 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A362460.P6535582771386204508

/-! ## A362460.P6943205512334851526

`A000045(A254967(∑[n+1]))`
-/

namespace A362460.P6943205512334851526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A254967 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A362460.P6943205512334851526

/-!
# A362461: Indices of 0's in A362460.

The programs for A362461, there is no canonical definition to state claims against.
-/

/-! ## A362461.P11730490325203191237

`lt[A362460(n+1), 1]+1`
-/

namespace A362461.P11730490325203191237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362460 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A362461.P11730490325203191237

/-! ## A362461.P12149771445965451139

`eq[0, A054978(n)]`
-/

namespace A362461.P12149771445965451139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054978 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A362461.P12149771445965451139

/-! ## A362461.P17378675355255371546

`eq[0, A362460(A028310(n))]`
-/

namespace A362461.P17378675355255371546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362460 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A362461.P17378675355255371546

/-! ## A362461.P12174359150798207777

`lt[A054978(n), A054978(n+3)!]`
-/

namespace A362461.P12174359150798207777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054978 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A054978 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A362461.P12174359150798207777

/-! ## A362461.P5800432860866726598

`lt[A054978(n), A145649(A000959(n+1))]`
-/

namespace A362461.P5800432860866726598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054978 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (A000959 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A362461.P5800432860866726598

/-! ## A362461.P7953450743147431166

`lt[A054978(n), A008833(A031215(n+1))]`
-/

namespace A362461.P7953450743147431166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054978 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A031215 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A362461.P7953450743147431166

/-! ## A362461.P5860753401375877854

`lt[A054978(n), A145649(A137164(n+1))]`
-/

namespace A362461.P5860753401375877854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054978 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (A137164 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A362461.P5860753401375877854

/-! ## A362461.P6494994575625041796

`lt[A054978(n), A145649(A031158(n+1))]`
-/

namespace A362461.P6494994575625041796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054978 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (A031158 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A362461.P6494994575625041796

/-! ## A362461.P14073939814708004594

`lt[A054978(n), A145649(A031891(n+1))]`
-/

namespace A362461.P14073939814708004594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054978 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (A031891 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A362461.P14073939814708004594

/-! ## A362461.P5014216128459357476

`lt[A254967(∑[n]), 1]`
-/

namespace A362461.P5014216128459357476
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254967 (∑ j ∈ Finset.range (n + 1), f2 j)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A362461.P5014216128459357476

/-!
# A362462: Indices of 1's in A362460.

The programs for A362462, there is no canonical definition to state claims against.
-/

/-! ## A362462.P10355129717172321111

`lt[0, A362460(n+1)]+1`
-/

namespace A362462.P10355129717172321111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362460 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A362462.P10355129717172321111

/-! ## A362462.P2297348960204179240

`lt[1, A054978(n)]`
-/

namespace A362462.P2297348960204179240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054978 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A362462.P2297348960204179240

/-! ## A362462.P2089509010642575377

`eq[2, A054978(n+1)]+1`
-/

namespace A362462.P2089509010642575377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054978 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A362462.P2089509010642575377

/-! ## A362462.P7498643567674555026

`eq[A054977(n)+1, A054978(n)]`
-/

namespace A362462.P7498643567674555026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054978 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A362462.P7498643567674555026

/-! ## A362462.P1283745524448207880

`eq[A033478(A008594(n)), A054978(n)]`
-/

namespace A362462.P1283745524448207880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033478 (A008594 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054978 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A362462.P1283745524448207880

/-! ## A362462.P16469709032463029001

`lt[1, A254967(∑[n])]`
-/

namespace A362462.P16469709032463029001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254967 (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A362462.P16469709032463029001

/-! ## A362462.P14574316853917971358

`eq[A054978(n), A178815(n+1)]`
-/

namespace A362462.P14574316853917971358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054978 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178815 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A362462.P14574316853917971358

/-!
# A362463: Array of numbers read by upward antidiagonals: leading row lists the primes as they were in the 19th century (A008578); the following rows give absolute values of differences of previous row.

The programs for A362463, there is no canonical definition to state claims against.
-/

/-! ## A362463.P17891681478983332729

`and(A086581(n), A326975(A334584(n+4)))`
-/

namespace A362463.P17891681478983332729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086581 n) (A326975 (A334584 (n + 4)).toNat)

end

end A362463.P17891681478983332729

/-! ## A362463.P7667713426672374967

`A269246(A227133(n+1))+A127701(n+1)`
-/

namespace A362463.P7667713426672374967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269246 (A227133 (n + 1)).toNat + A127701 (n + 1)

end

end A362463.P7667713426672374967

/-! ## A362463.P13644213813978420830

`A359550(A111160(n))+A111146(n)`
-/

namespace A362463.P13644213813978420830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (A111160 n).toNat + A111146 n

end

end A362463.P13644213813978420830

/-! ## A362463.P3156519347330551062

`A081517(n+1)-A267868(A222924(n+1))`
-/

namespace A362463.P3156519347330551062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081517 (n + 1) - A267868 (A222924 (n + 1)).toNat

end

end A362463.P3156519347330551062

/-! ## A362463.P8778249886161690396

`A208343(n+1)^A208343(A325012(n+1))`
-/

namespace A362463.P8778249886161690396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208343 (n + 1) : ℚ) ^ (A208343 (A325012 (n + 1)).toNat : ℤ)

end

end A362463.P8778249886161690396

/-!
# A362465: a(n) is the least number of 2 or more consecutive signed primes whose sum equals n.

The programs for A362465, there is no canonical definition to state claims against.
-/

/-! ## A362465.P16688984964226556231

`A078572(A000712(n))+A050320(3*n+1)`
-/

namespace A362465.P16688984964226556231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078572 (A000712 n).toNat + A050320 (3 * n + 1)

end

end A362465.P16688984964226556231

/-! ## A362465.P14328363482374255930

`A167968(n+1)+A165018(A155186(2*(n+1)))`
-/

namespace A362465.P14328363482374255930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167968 (n + 1) + A165018 (A155186 (2 * (n + 1))).toNat

end

end A362465.P14328363482374255930

/-! ## A362465.P15940822377899084609

`A274459(A335880(n+1)+A183564(2*n+11))`
-/

namespace A362465.P15940822377899084609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274459 (A335880 (n + 1) + A183564 (2 * n + 11)).toNat

end

end A362465.P15940822377899084609

/-! ## A362465.P13713666228499196213

`A203568(A273905(n+2))+A010693(n)`
-/

namespace A362465.P13713666228499196213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203568 (A273905 (n + 2)).toNat + A010693 n

end

end A362465.P13713666228499196213

/-! ## A362465.P6277830766759030974

`A345932(A345923(3*n+5))+A345926(3*n+1)`
-/

namespace A362465.P6277830766759030974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345932 (A345923 (3 * n + 5)).toNat + A345926 (3 * n + 1)

end

end A362465.P6277830766759030974

/-!
# A362467: E.g.f. satisfies log(A(x)) = exp(x / A(x)^2) - 1.

The programs for A362467, there is no canonical definition to state claims against.
-/

/-! ## A362467.P6562228640637793526

`A335977(A051682(n))`
-/

namespace A362467.P6562228640637793526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335977 (A051682 n).toNat

end

end A362467.P6562228640637793526

/-!
# A362468: Number of distinct n-digit suffixes generated by iteratively multiplying an integer by 4, where the initial integer is 1.

The programs for A362468, the canonical program `A362468.P16655826542739860869` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362468 has offset 1).

The definition of A362468 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362468.P16655826542739860869

`6*a(n-1)-4*a(n-2)-6*a(n-3)+5*a(n-4)` with `a(0)=3, a(1)=11, a(2)=52, a(3)=252`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A362468

/-- `6*a(n-1)-4*a(n-2)-6*a(n-3)+5*a(n-4)` -/
def P16655826542739860869.Spec : Prop :=
  ∀ n, P16655826542739860869.a n = A362468 (n + 1)

theorem P16655826542739860869.correct : P16655826542739860869.Spec := by
  intro n
  simp only [A362468, Nat.add_sub_cancel]

end A362468

/-! ## A362468.P16436580971740743507

`∑[log2(gcd(2, n))]+2*5^n`
-/

namespace A362468.P16436580971740743507
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * 5 ^ n : ℝ)

end

end A362468.P16436580971740743507

namespace A362468

/-- `∑[log2(gcd(2, n))]+2*5^n` -/
def P16436580971740743507.Spec : Prop :=
  ∀ n, P16436580971740743507.a n = (A362468 (n + 1) : ℝ)

end A362468

/-! ## A362468.P14915054138845986801

`ceil((n+1)/2)+2*5^n`
-/

namespace A362468.P14915054138845986801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 2⌉ + (2 * 5 ^ n : ℤ)

end

end A362468.P14915054138845986801

namespace A362468

/-- `ceil((n+1)/2)+2*5^n` -/
def P14915054138845986801.Spec : Prop :=
  ∀ n, P14915054138845986801.a n = A362468 (n + 1)

end A362468

/-! ## A362468.P242320399228162540

`ceil(A308807(n+1)/2)`
-/

namespace A362468.P242320399228162540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A308807 (n + 1) : ℚ) / 2⌉

end

end A362468.P242320399228162540

namespace A362468

/-- `ceil(A308807(n+1)/2)` -/
def P242320399228162540.Spec : Prop :=
  ∀ n, P242320399228162540.a n = A362468 (n + 1)

end A362468

/-! ## A362468.P434701315814345011

`ceil((Δ[A000351(n)]+n+1)/2)`
-/

namespace A362468.P434701315814345011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n + (n + 1 : ℤ) : ℚ) / 2⌉

end

end A362468.P434701315814345011

namespace A362468

/-- `ceil((Δ[A000351(n)]+n+1)/2)` -/
def P434701315814345011.Spec : Prop :=
  ∀ n, P434701315814345011.a n = A362468 (n + 1)

end A362468

/-! ## A362468.P8306924008874597753

`ceil((Δ[A245478(3*n+1)]+n+1)/2)`
-/

namespace A362468.P8306924008874597753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245478 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n + (n + 1 : ℤ) : ℚ) / 2⌉

end

end A362468.P8306924008874597753

namespace A362468

/-- `ceil((Δ[A245478(3*n+1)]+n+1)/2)` -/
def P8306924008874597753.Spec : Prop :=
  ∀ n, P8306924008874597753.a n = A362468 (n + 1)

end A362468

/-!
# A362470: Number of divisors d of n such that phi(d) | n.

The programs for A362470, there is no canonical definition to state claims against.
-/

/-! ## A362470.P7583503675821143541

`A000005(gcd(A000010(3*(n+1)), A112565(n)))`
-/

namespace A362470.P7583503675821143541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A000010 (3 * (n + 1))) (A112565 n))

end

end A362470.P7583503675821143541

/-! ## A362470.P11941078156864332371

`gcd(A008611(A249699(n)), A072078(n+1))`
-/

namespace A362470.P11941078156864332371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008611 (A249699 n).toNat) (A072078 (n + 1))

end

end A362470.P11941078156864332371

/-! ## A362470.P3196141009059311078

`∑{d}[A327832(n+1), A043288(A001190(#))]`
-/

namespace A362470.P3196141009059311078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A043288 (A001190 d).toNat

end

end A362470.P3196141009059311078

/-! ## A362470.P392100781326313585

`∑{d}[A327832(n+1), A043288(A236463(#))]`
-/

namespace A362470.P392100781326313585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A043288 (A236463 d).toNat

end

end A362470.P392100781326313585

/-! ## A362470.P16201459442909090572

`gcd(A000005(n+1), A092098(A092098(n+1)))`
-/

namespace A362470.P16201459442909090572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 1)) (A092098 (A092098 (n + 1)).toNat)

end

end A362470.P16201459442909090572

/-!
# A362471: a(n) is the smallest number of 1's used in expressing n as a calculation containing only decimal repunits and operators +, -, * and /.

The programs for A362471, there is no canonical definition to state claims against.
-/

/-! ## A362471.P3460836632040720927

`A362626(n+1)%A341673(n+1)²`
-/

namespace A362471.P3460836632040720927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362626 (n + 1)) (A341673 (n + 1) ^ 2)

end

end A362471.P3460836632040720927

/-! ## A362471.P16778928455962547397

`A362626(C(A350723(n+1), 7)+n+1)`
-/

namespace A362471.P16778928455962547397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362626 (Nat.choose (A350723 (n + 1)).toNat 7 + (n + 1))

end

end A362471.P16778928455962547397

/-! ## A362471.P8748187076019673844

`A362626(n+1)+A000007(A051890(n))`
-/

namespace A362471.P8748187076019673844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362626 (n + 1) + A000007 (A051890 n).toNat

end

end A362471.P8748187076019673844

/-! ## A362471.P11910421073775517018

`A362626(n+1)%A085104(A008000(n))`
-/

namespace A362471.P11910421073775517018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362626 (n + 1)) (A085104 (A008000 n).toNat)

end

end A362471.P11910421073775517018

/-! ## A362471.P10546622727416189185

`A362626(n+1)+A010815(A272409(n+2))`
-/

namespace A362471.P10546622727416189185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362626 (n + 1) + A010815 (A272409 (n + 2)).toNat

end

end A362471.P10546622727416189185

/-! ## A362471.P8632048668759501389

`A362626(n+1)+A343023(A033428(n+2))`
-/

namespace A362471.P8632048668759501389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362626 (n + 1) + A343023 (A033428 (n + 2)).toNat

end

end A362471.P8632048668759501389

/-! ## A362471.P15000414422700756496

`A362626(n+1)+A000122(A112796(n+3))`
-/

namespace A362471.P15000414422700756496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362626 (n + 1) + A000122 (A112796 (n + 3)).toNat

end

end A362471.P15000414422700756496

/-! ## A362471.P5128894687367447405

`A030597(A349983(n+1))*A362626(n+1)`
-/

namespace A362471.P5128894687367447405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030597 (A349983 (n + 1)).toNat * A362626 (n + 1)

end

end A362471.P5128894687367447405

/-! ## A362471.P4147020274593395558

`A362626(n+1)+A000007(∑[4*n]+1)`
-/

namespace A362471.P4147020274593395558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362626 (n + 1) + A000007 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A362471.P4147020274593395558

/-! ## A362471.P3471714341027248868

`A362626(n+1)+A260728(A005893(n))`
-/

namespace A362471.P3471714341027248868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362626 (n + 1) + A260728 (A005893 n).toNat

end

end A362471.P3471714341027248868

/-!
# A362472: E.g.f. satisfies A(x) = exp(x + x^3 * A(x)^3).

The programs for A362472, there is no canonical definition to state claims against.
-/

/-! ## A362472.P6795298404446152999

`A362490(eq[6, A025581(n)])`
-/

namespace A362472.P6795298404446152999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362490 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A362472.P6795298404446152999

/-! ## A362472.P7324917459322130275

`A362490(A055999(n+4)-1)`
-/

namespace A362472.P7324917459322130275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362490 (A055999 (n + 4) - 1).toNat

end

end A362472.P7324917459322130275

/-! ## A362472.P10789429398175543548

`A362490(eq[7, A004736(n+1)])`
-/

namespace A362472.P10789429398175543548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362490 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A362472.P10789429398175543548

/-! ## A362472.P8417244514779976929

`A362490(eq[7, A200370(n+2)])`
-/

namespace A362472.P8417244514779976929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362490 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A362472.P8417244514779976929

/-!
# A362473: E.g.f. satisfies A(x) = exp(x + x^4 * A(x)^4).

The programs for A362473, there is no canonical definition to state claims against.
-/

/-! ## A362473.P10664807006469655482

`A000027(2-A362482(n))`
-/

namespace A362473.P10664807006469655482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 - A362482 n).toNat

end

end A362473.P10664807006469655482

/-! ## A362473.P17416711795171778299

`2-A362482(A109919(n+1))`
-/

namespace A362473.P17416711795171778299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A362482 (A109919 (n + 1)).toNat

end

end A362473.P17416711795171778299

/-!
# A362474: E.g.f. satisfies A(x) = exp(x + x^2/2 * A(x)^2).

The programs for A362474, there is no canonical definition to state claims against.
-/

/-! ## A362474.P1028646427137283957

`A362483(∑[n+2]-1)`
-/

namespace A362474.P1028646427137283957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362483 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A362474.P1028646427137283957

/-! ## A362474.P13421506096476965159

`A153091(A127617(n))`
-/

namespace A362474.P13421506096476965159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153091 (A127617 n).toNat

end

end A362474.P13421506096476965159

/-!
# A362475: E.g.f. satisfies A(x) = exp(x + 3*x^2/2 * A(x)^2).

The programs for A362475, there is no canonical definition to state claims against.
-/

/-! ## A362475.P11513945238115401992

`A362483(A055999(n+1)+2)`
-/

namespace A362475.P11513945238115401992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362483 (A055999 (n + 1) + 2).toNat

end

end A362475.P11513945238115401992

/-! ## A362475.P5623077775253541734

`A362483(A000217(n+4)-4)`
-/

namespace A362475.P5623077775253541734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362483 (A000217 (n + 4) - 4).toNat

end

end A362475.P5623077775253541734

/-! ## A362475.P10783220874671742333

`A362483(eq[A084938(n+3), A103673(3*(n+1))])`
-/

namespace A362475.P10783220874671742333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103673 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362483 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A362475.P10783220874671742333

/-! ## A362475.P3291347070389144817

`A362483(eq[3, A122283(n)])`
-/

namespace A362475.P3291347070389144817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362483 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A362475.P3291347070389144817

/-!
# A362477: E.g.f. satisfies A(x) = exp(x + x^3/6 * A(x)^3).

The programs for A362477, there is no canonical definition to state claims against.
-/

/-! ## A362477.P13678387205585545203

`A362490(∑[n+2]-1)`
-/

namespace A362477.P13678387205585545203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362490 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A362477.P13678387205585545203

/-! ## A362477.P8497757158277998972

`A094080(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A362477.P8497757158277998972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  A094080 (a (n - 1)).toNat

end

end A362477.P8497757158277998972

/-!
# A362478: E.g.f. satisfies A(x) = exp(x + x^3/3 * A(x)^3).

The programs for A362478, there is no canonical definition to state claims against.
-/

/-! ## A362478.P742099802092204023

`A362490(∑[n+3])`
-/

namespace A362478.P742099802092204023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362490 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362478.P742099802092204023

/-! ## A362478.P9290838205892190923

`xor(1, A362490(A055998(n+1))-1)`
-/

namespace A362478.P9290838205892190923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A362490 (A055998 (n + 1)).toNat - 1)

end

end A362478.P9290838205892190923

/-! ## A362478.P7785278704112735881

`A057427(n+1)*A362490(A055998(n+1))`
-/

namespace A362478.P7785278704112735881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A362490 (A055998 (n + 1)).toNat

end

end A362478.P7785278704112735881

/-! ## A362478.P16595678785304603170

`A362490(A055998(n+1))+A184334(3*(n+1))`
-/

namespace A362478.P16595678785304603170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362490 (A055998 (n + 1)).toNat + A184334 (3 * (n + 1))

end

end A362478.P16595678785304603170

/-! ## A362478.P17083898908399118955

`A261143(2*(n+2))*A362490(A055998(n+1))`
-/

namespace A362478.P17083898908399118955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 (2 * (n + 2)) * A362490 (A055998 (n + 1)).toNat

end

end A362478.P17083898908399118955

/-!
# A362479: E.g.f. satisfies A(x) = exp(x + x^3/2 * A(x)^3).

The programs for A362479, there is no canonical definition to state claims against.
-/

/-! ## A362479.P8851549548942299977

`A362490(∑[n+4]+2)`
-/

namespace A362479.P8851549548942299977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362490 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A362479.P8851549548942299977

/-! ## A362479.P14995417708298274677

`A011655((∑[n+1]+1)/2*n!)+n!*∑[n]+1-(∑[n+1]+1)/2*n!`
-/

namespace A362479.P14995417708298274677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011655 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / 2 * (Nat.factorial n : ℚ))).toNat : ℚ) + (((Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f2 j) + 1 : ℕ) : ℚ) - ((∑ j ∈ Finset.range (n + 1), f3 j + 1 : ℕ) : ℚ) / 2 * (Nat.factorial n : ℚ))

end

end A362479.P14995417708298274677

/-!
# A362481: E.g.f. satisfies A(x) = exp(x - x^3 * A(x)^3).

The programs for A362481, there is no canonical definition to state claims against.
-/

/-! ## A362481.P1966400062745448090

`A022958(A362472(n))`
-/

namespace A362481.P1966400062745448090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (A362472 n).toNat

end

end A362481.P1966400062745448090

/-! ## A362481.P9801990516698600566

`A024000(A362472(n)-1)`
-/

namespace A362481.P9801990516698600566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A362472 n - 1).toNat

end

end A362481.P9801990516698600566

/-!
# A362482: E.g.f. satisfies A(x) = exp(x - x^4 * A(x)^4).

The programs for A362482, there is no canonical definition to state claims against.
-/

/-! ## A362482.P17396165646964335885

`2-A000027(A362473(n))`
-/

namespace A362482.P17396165646964335885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000027 (A362473 n).toNat

end

end A362482.P17396165646964335885

/-! ## A362482.P6498421887517716723

`A020639(A074606(n))-A362473(n)`
-/

namespace A362482.P6498421887517716723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A074606 n).toNat - A362473 n

end

end A362482.P6498421887517716723

/-! ## A362482.P3092351112736857360

`A080425(A118395(n))-A362473(n)`
-/

namespace A362482.P3092351112736857360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A118395 n).toNat - A362473 n

end

end A362482.P3092351112736857360

/-!
# A362485: Number of numbers k such that iphi(k) = n, where iphi is the infinitary totient function A091732.

The programs for A362485, there is no canonical definition to state claims against.
-/

/-! ## A362485.P3822033268352788695

`A268242(xor(A000793(n), A126869(n+2)))`
-/

namespace A362485.P3822033268352788695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268242 (Int.xor (A000793 n) (A126869 (n + 2))).toNat

end

end A362485.P3822033268352788695

/-! ## A362485.P7545841431928001106

`A008441(A079026(n+1)+A047749(n+1))`
-/

namespace A362485.P7545841431928001106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 (A079026 (n + 1) + A047749 (n + 1)).toNat

end

end A362485.P7545841431928001106

/-! ## A362485.P61873337597393318

`val(A016754(A337720(n)), 3)`
-/

namespace A362485.P61873337597393318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A016754 (A337720 n).toNat).toNat 3

end

end A362485.P61873337597393318

/-! ## A362485.P17338463307724536457

`and(6, A097883(A279961(n)))`
-/

namespace A362485.P17338463307724536457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 6 (A097883 (A279961 n).toNat)

end

end A362485.P17338463307724536457

/-! ## A362485.P17703579988727406548

`A035170(or(7, A097164(n)))`
-/

namespace A362485.P17703579988727406548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035170 (Int.lor 7 (A097164 n)).toNat

end

end A362485.P17703579988727406548

/-!
# A362486: Infinitary nontotient numbers: values not in the range of the infinitary totient function iphi (A091732).

The programs for A362486, there is no canonical definition to state claims against.
-/

/-! ## A362486.P13413697129830895808

`eq[0, A362485(n+1)]+1`
-/

namespace A362486.P13413697129830895808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362485 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A362486.P13413697129830895808

/-! ## A362486.P2788367193189137940

`lt[A362666(n+1), 1]+1`
-/

namespace A362486.P2788367193189137940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362666 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A362486.P2788367193189137940

/-! ## A362486.P14632053532360294009

`eq[0, A362485(A028310(n))]`
-/

namespace A362486.P14632053532360294009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362485 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A362486.P14632053532360294009

/-! ## A362486.P14320590531912429661

`lt[A362485(n+1)%A001358(n+1), 1]+1`
-/

namespace A362486.P14320590531912429661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362485 (n + 1)) (A001358 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A362486.P14320590531912429661

/-! ## A362486.P2603274945981196849

`eq[char[A091732(n+1)], A019590(n+2)]`
-/

namespace A362486.P2603274945981196849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A362486.P2603274945981196849

/-!
# A362487: Infinitary highly totient numbers: numbers k that have more solutions x to the equation iphi(x) = k than any smaller k, where iphi is the infinitary totient function A091732.

The programs for A362487, there is no canonical definition to state claims against.
-/

/-! ## A362487.P2697163681900080736

`A362489(A362488(n+1)/2)`
-/

namespace A362487.P2697163681900080736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362489 (SequenceMachineLib.roundAway ((A362488 (n + 1) : ℚ) / 2)).toNat

end

end A362487.P2697163681900080736

/-! ## A362487.P4906413476519499870

`record[A005875(record[A050464(n+1)])]`
-/

namespace A362487.P4906413476519499870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050464 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362487.P4906413476519499870

/-! ## A362487.P12115489928953196047

`A010096(A046831(n+1))*A340637(n+1)`
-/

namespace A362487.P12115489928953196047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010096 (A046831 (n + 1)).toNat * A340637 (n + 1)

end

end A362487.P12115489928953196047

/-! ## A362487.P7461155147431481193

`A014452(A056182(n))`
-/

namespace A362487.P7461155147431481193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014452 (A056182 n).toNat

end

end A362487.P7461155147431481193

/-!
# A362488: Record values in A362487.

The programs for A362488, there is no canonical definition to state claims against.
-/

/-! ## A362488.P10998802897795423160

`A362485(A362487(n+1))`
-/

namespace A362488.P10998802897795423160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362485 (A362487 (n + 1)).toNat

end

end A362488.P10998802897795423160

/-! ## A362488.P17258325058012236075

`record[A362485(n+1)]`
-/

namespace A362488.P17258325058012236075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362488.P17258325058012236075

/-! ## A362488.P11903577723659731742

`record[A344772(A362667(n+1))]`
-/

namespace A362488.P11903577723659731742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344772 (A362667 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362488.P11903577723659731742

/-! ## A362488.P2225746520853124028

`record[A344772(record[A362666(2*(n+2))])]`
-/

namespace A362488.P2225746520853124028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362666 (2 * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344772 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362488.P2225746520853124028

/-! ## A362488.P18121627334336415363

`∑[2*A057515(A000105(n))]`
-/

namespace A362488.P18121627334336415363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057515 (A000105 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362488.P18121627334336415363

/-!
# A362491: E.g.f. satisfies A(x) = exp(x + x^4/4 * A(x)^4).

The programs for A362491, there is no canonical definition to state claims against.
-/

/-! ## A362491.P11383393995852825604

`A000265(2-A362494(n))`
-/

namespace A362491.P11383393995852825604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 - A362494 n).toNat

end

end A362491.P11383393995852825604

/-! ## A362491.P11212305567031754489

`A006530(2-A362494(n))`
-/

namespace A362491.P11212305567031754489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 - A362494 n).toNat

end

end A362491.P11212305567031754489

/-! ## A362491.P1131095487056992889

`A007913(2-A362494(n))`
-/

namespace A362491.P1131095487056992889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 - A362494 n).toNat

end

end A362491.P1131095487056992889

/-! ## A362491.P13274209221530671896

`A007947(2-A362494(n))`
-/

namespace A362491.P13274209221530671896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (2 - A362494 n).toNat

end

end A362491.P13274209221530671896

/-!
# A362492: E.g.f. satisfies A(x) = exp(x - x^2/2 * A(x)^2).

The programs for A362492, there is no canonical definition to state claims against.
-/

/-! ## A362492.P14038119091366588624

`A269783(A000040(n+1)*A190761(n+1))`
-/

namespace A362492.P14038119091366588624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269783 (A000040 (n + 1) * A190761 (n + 1)).toNat

end

end A362492.P14038119091366588624

/-! ## A362492.P12504023284968161231

`A269783(A069680(n+1)*A190761(n+1))`
-/

namespace A362492.P12504023284968161231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269783 (A069680 (n + 1) * A190761 (n + 1)).toNat

end

end A362492.P12504023284968161231

/-!
# A362493: E.g.f. satisfies A(x) = exp(x - x^3/3 * A(x)^3).

The programs for A362493, there is no canonical definition to state claims against.
-/

/-! ## A362493.P6160636731371791840

`1-A199331(A052813(n))`
-/

namespace A362493.P6160636731371791840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A199331 (A052813 n).toNat

end

end A362493.P6160636731371791840

/-! ## A362493.P10346206333071539757

`1-A002264(A362472(n))`
-/

namespace A362493.P10346206333071539757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A002264 (A362472 n).toNat

end

end A362493.P10346206333071539757

/-!
# A362494: E.g.f. satisfies A(x) = exp(x - x^4/4 * A(x)^4).

The programs for A362494, there is no canonical definition to state claims against.
-/

/-! ## A362494.P6336982202317090921

`2-A000265(A362491(n))`
-/

namespace A362494.P6336982202317090921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000265 (A362491 n).toNat

end

end A362494.P6336982202317090921

/-! ## A362494.P1640717801766518368

`A307478(3*(n+1))%3-A362491(n)`
-/

namespace A362494.P1640717801766518368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307478 (3 * (n + 1))) 3 - A362491 n

end

end A362494.P1640717801766518368

/-!
# A362495: Total number of blocks containing at least one odd element and at least one even element in all partitions of [n].

The programs for A362495, there is no canonical definition to state claims against.
-/

/-! ## A362495.P9115430188874602231

`Δ[A000110(n)]-A363434(n)`
-/

namespace A362495.P9115430188874602231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A363434 n

end

end A362495.P9115430188874602231

/-! ## A362495.P12163245068908248384

`A065716(A149806(n+1))`
-/

namespace A362495.P12163245068908248384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065716 (A149806 (n + 1)).toNat

end

end A362495.P12163245068908248384

/-! ## A362495.P10484811235965253742

`A000111(n+1)-A000120(A330471(n))`
-/

namespace A362495.P10484811235965253742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (n + 1) - A000120 (A330471 n).toNat

end

end A362495.P10484811235965253742

/-!
# A362496: Square array A(n, k), n, k >= 0, read by upwards antidiagonals; if Newton's method applied to the complex function f(z) = z^3 - 1 and starting from n + k*i reaches or converges to exp(2*r*i*Pi/3) for some r in 0..2, then A(n, k) = r, otherwise A(n, k) = -1 (where i denotes the imaginary unit).

The programs for A362496, there is no canonical definition to state claims against.
-/

/-! ## A362496.P12251878160841717191

`(A385706(n+1)-A124749(n))%2`
-/

namespace A362496.P12251878160841717191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A385706 (n + 1) - A124749 n) 2

end

end A362496.P12251878160841717191

/-! ## A362496.P7647003954652129436

`A010815(A187586(n+1)*A251072(n))`
-/

namespace A362496.P7647003954652129436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A187586 (n + 1) * A251072 n).toNat

end

end A362496.P7647003954652129436

/-! ## A362496.P1607019123155386796

`A010815(A187857(n+1)*A319991(n+1))`
-/

namespace A362496.P1607019123155386796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A187857 (n + 1) * A319991 (n + 1)).toNat

end

end A362496.P1607019123155386796

/-! ## A362496.P9192158802493848731

`A013595(A000010(n+3)*A212209(n+1))`
-/

namespace A362496.P9192158802493848731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013595 (A000010 (n + 3) * A212209 (n + 1)).toNat

end

end A362496.P9192158802493848731

/-! ## A362496.P2281746703212960944

`A010815(A187586(n+1))^A087701(n+1)`
-/

namespace A362496.P2281746703212960944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010815 (A187586 (n + 1)).toNat : ℚ) ^ (A087701 (n + 1) : ℤ)

end

end A362496.P2281746703212960944

/-!
# A362497: Number of vertex cuts in the n X n king graph.

The programs for A362497, there is no canonical definition to state claims against.
-/

/-! ## A362497.P9391474593629378220

`2^(n+1)²-1-A286139(n+1)`
-/

namespace A362497.P9391474593629378220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) ^ 2 : ℤ) - 1 - A286139 (n + 1)

end

end A362497.P9391474593629378220

/-! ## A362497.P11703099011998460193

`xor(A000225(A000290(n+1)), A286139(n+1))`
-/

namespace A362497.P11703099011998460193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 (A000290 (n + 1)).toNat) (A286139 (n + 1))

end

end A362497.P11703099011998460193

/-!
# A362499: a(n) is the least positive integer that has exactly n anagrams that are semiprimes, or -1 if there is no such integer.

The programs for A362499, there is no canonical definition to state claims against.
-/

/-! ## A362499.P10252031225486466862

`A099802(A046947(n)+A000217(n))`
-/

namespace A362499.P10252031225486466862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (A046947 n + A000217 n).toNat

end

end A362499.P10252031225486466862

