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
import Seq.B001.C010
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
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
# A000001: Number of groups of order n.

The programs for A000001, there is no canonical definition to state claims against.
-/

/-! ## A000001.P5623513615664559672

`sqrt(A297420(n))`
-/

namespace A000001.P5623513615664559672
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A297420 n : ℝ)

end

end A000001.P5623513615664559672

/-! ## A000001.P15382202950009699804

`A297420(n)^2^A008683(A109833(n+2))`
-/

namespace A000001.P15382202950009699804
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A297420 n : ℝ) ^ ((2 : ℚ) ^ (A008683 (A109833 (n + 2)).toNat : ℤ) : ℝ)

end

end A000001.P15382202950009699804

/-! ## A000001.P7969177811756740164

`A297420(n)^(A002828(A016754(n))/2)`
-/

namespace A000001.P7969177811756740164
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A297420 n : ℝ) ^ ((A002828 (A016754 n).toNat : ℚ) / 2 : ℝ)

end

end A000001.P7969177811756740164

/-! ## A000001.P4302164886520450734

`A214526(A297420(n)+1)`
-/

namespace A000001.P4302164886520450734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A297420 n + 1).toNat

end

end A000001.P4302164886520450734

/-! ## A000001.P982600303772996963

`A088226(A297420(n)+2)`
-/

namespace A000001.P982600303772996963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A297420 n + 2).toNat

end

end A000001.P982600303772996963

/-! ## A000001.P11557122843589087186

`A002262(2*A297420(n))`
-/

namespace A000001.P11557122843589087186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * A297420 n).toNat

end

end A000001.P11557122843589087186

/-! ## A000001.P8152591584898663699

`A003984(2*A297420(n))`
-/

namespace A000001.P8152591584898663699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (2 * A297420 n).toNat

end

end A000001.P8152591584898663699

/-! ## A000001.P1242427271359677197

`A087061(2*A297420(n))`
-/

namespace A000001.P1242427271359677197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087061 (2 * A297420 n).toNat

end

end A000001.P1242427271359677197

/-! ## A000001.P17903998865864150183

`A000196(A297420(n)+char[1])`
-/

namespace A000001.P17903998865864150183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A297420 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A000001.P17903998865864150183

/-!
# A000002: Kolakoski sequence: a(n) is length of n-th run; a(1) = 1; sequence consists just of 1's and 2's.

The programs for A000002, the canonical program `A000002.P13330532946811820297` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000002 has offset 1).

The definition of A000002 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000002.P13330532946811820297

`(3+(-1)^A156253(n+1))/2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000002

/-- `(3+(-1)^A156253(n+1))/2` -/
def P13330532946811820297.Spec : Prop :=
  ∀ n, P13330532946811820297.a n = (A000002 (n + 1) : ℚ)

end A000002

/-! ## A000002.P6925382509500993760

`gcd(2, A160051(n))`
-/

namespace A000002.P6925382509500993760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A160051 n)

end

end A000002.P6925382509500993760

namespace A000002

/-- `gcd(2, A160051(n))` -/
def P6925382509500993760.Spec : Prop :=
  ∀ n, (P6925382509500993760.a n : ℤ) = A000002 (n + 1)

end A000002

/-! ## A000002.P1637468435168988065

`3-A049705(n+1)`
-/

namespace A000002.P1637468435168988065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A049705 (n + 1)

end

end A000002.P1637468435168988065

namespace A000002

/-- `3-A049705(n+1)` -/
def P1637468435168988065.Spec : Prop :=
  ∀ n, P1637468435168988065.a n = A000002 (n + 1)

end A000002

/-! ## A000002.P1790729419604595404

`a(log2(A006928(n)))` with `a(0)=1, a(1)=2`
-/

namespace A000002.P1790729419604595404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (SequenceMachineLib.roundAway (Real.logb 2 (A006928 n : ℝ))).toNat

end

end A000002.P1790729419604595404

namespace A000002

/-- `a(log2(A006928(n)))` -/
def P1790729419604595404.Spec : Prop :=
  ∀ n, (P1790729419604595404.a n : ℤ) = A000002 (n + 1)

end A000002

/-! ## A000002.P591752646904190734

`a(log2(A078880(n)))` with `a(0)=1, a(1)=2`
-/

namespace A000002.P591752646904190734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (SequenceMachineLib.roundAway (Real.logb 2 (A078880 n : ℝ))).toNat

end

end A000002.P591752646904190734

namespace A000002

/-- `a(log2(A078880(n)))` -/
def P591752646904190734.Spec : Prop :=
  ∀ n, (P591752646904190734.a n : ℤ) = A000002 (n + 1)

end A000002

/-! ## A000002.P12225684319403100049

`a(2-A049710(n))` with `a(0)=1, a(1)=2`
-/

namespace A000002.P12225684319403100049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (2 - A049710 n).toNat

end

end A000002.P12225684319403100049

namespace A000002

/-- `a(2-A049710(n))` -/
def P12225684319403100049.Spec : Prop :=
  ∀ n, (P12225684319403100049.a n : ℤ) = A000002 (n + 1)

end A000002

/-! ## A000002.P6639671332563701835

`a(2-A088569(n))` with `a(0)=1, a(1)=2`
-/

namespace A000002.P6639671332563701835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (2 - A088569 n).toNat

end

end A000002.P6639671332563701835

namespace A000002

/-- `a(2-A088569(n))` -/
def P6639671332563701835.Spec : Prop :=
  ∀ n, (P6639671332563701835.a n : ℤ) = A000002 (n + 1)

end A000002

/-! ## A000002.P4206067924924652024

`A054354(n)+a(n-1)` with `a(0)=1`
-/

namespace A000002.P4206067924924652024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054354 n + a (n - 1)

end

end A000002.P4206067924924652024

namespace A000002

/-- `A054354(n)+a(n-1)` -/
def P4206067924924652024.Spec : Prop :=
  ∀ n, P4206067924924652024.a n = A000002 (n + 1)

end A000002

/-! ## A000002.P16066528546866290505

`A333229(n)-a(n-1)` with `a(0)=1`
-/

namespace A000002.P16066528546866290505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A333229 n - a (n - 1)

end

end A000002.P16066528546866290505

namespace A000002

/-- `A333229(n)-a(n-1)` -/
def P16066528546866290505.Spec : Prop :=
  ∀ n, P16066528546866290505.a n = A000002 (n + 1)

end A000002

/-! ## A000002.P4854812746081673325

`char[A013948(n+1)-1]+1`
-/

namespace A000002.P4854812746081673325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A000002.P4854812746081673325

namespace A000002

/-- `char[A013948(n+1)-1]+1` -/
def P4854812746081673325.Spec : Prop :=
  ∀ n, (P4854812746081673325.a n : ℤ) = A000002 (n + 1)

end A000002

/-! ## A000002.P8020087531920281197

`2-char[A013947(n+1)-1]`
-/

namespace A000002.P8020087531920281197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A000002.P8020087531920281197

namespace A000002

/-- `2-char[A013947(n+1)-1]` -/
def P8020087531920281197.Spec : Prop :=
  ∀ n, P8020087531920281197.a n = A000002 (n + 1)

end A000002

/-! ## A000002.P5282831479183652676

`A040001(A079726(n+1))`
-/

namespace A000002.P5282831479183652676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A079726 (n + 1)).toNat

end

end A000002.P5282831479183652676

namespace A000002

/-- `A040001(A079726(n+1))` -/
def P5282831479183652676.Spec : Prop :=
  ∀ n, P5282831479183652676.a n = A000002 (n + 1)

end A000002

/-! ## A000002.P9192410010349496063

`A040001(A156253(n+1))`
-/

namespace A000002.P9192410010349496063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A156253 (n + 1)).toNat

end

end A000002.P9192410010349496063

namespace A000002

/-- `A040001(A156253(n+1))` -/
def P9192410010349496063.Spec : Prop :=
  ∀ n, P9192410010349496063.a n = A000002 (n + 1)

end A000002

/-! ## A000002.P9970693785260096536

`Δ[A074286(A028310(n))]+1`
-/

namespace A000002.P9970693785260096536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A000002.P9970693785260096536

namespace A000002

/-- `Δ[A074286(A028310(n))]+1` -/
def P9970693785260096536.Spec : Prop :=
  ∀ n, P9970693785260096536.a n = A000002 (n + 1)

end A000002

/-! ## A000002.P10566854131207841934

`A000034(A156253(n+1)+1)`
-/

namespace A000002.P10566854131207841934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A156253 (n + 1) + 1).toNat

end

end A000002.P10566854131207841934

namespace A000002

/-- `A000034(A156253(n+1)+1)` -/
def P10566854131207841934.Spec : Prop :=
  ∀ n, P10566854131207841934.a n = A000002 (n + 1)

end A000002

/-! ## A000002.P15330590281618281191

`A000034(A074290(n+1)+n)`
-/

namespace A000002.P15330590281618281191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A074290 (n + 1) + (n : ℤ)).toNat

end

end A000002.P15330590281618281191

namespace A000002

/-- `A000034(A074290(n+1)+n)` -/
def P15330590281618281191.Spec : Prop :=
  ∀ n, P15330590281618281191.a n = A000002 (n + 1)

end A000002

/-! ## A000002.P612031957022545097

`A088570(n+1)/A000034(n)`
-/

namespace A000002.P612031957022545097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088570 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A000002.P612031957022545097

namespace A000002

/-- `A088570(n+1)/A000034(n)` -/
def P612031957022545097.Spec : Prop :=
  ∀ n, P612031957022545097.a n = (A000002 (n + 1) : ℚ)

end A000002

/-! ## A000002.P10507866039067880256

`A000035(A156253(n+1)+1)+1`
-/

namespace A000002.P10507866039067880256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A156253 (n + 1) + 1).toNat + 1

end

end A000002.P10507866039067880256

namespace A000002

/-- `A000035(A156253(n+1)+1)+1` -/
def P10507866039067880256.Spec : Prop :=
  ∀ n, P10507866039067880256.a n = A000002 (n + 1)

end A000002

/-!
# A000003: Number of classes of primitive positive definite binary quadratic forms of discriminant D = -4n; or equivalently the class number of the quadratic order of discriminant D = -4n.

The programs for A000003, there is no canonical definition to state claims against.
-/

/-! ## A000003.P213012898933933234

`A084540(n+1)/A040003(n)`
-/

namespace A000003.P213012898933933234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084540 (n + 1) : ℚ) / (A040003 n : ℚ)

end

end A000003.P213012898933933234

/-! ## A000003.P9203823893965634644

`A014600(Δ[n²])`
-/

namespace A000003.P9203823893965634644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014600 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A000003.P9203823893965634644

/-! ## A000003.P11309270067935786294

`or(char[1], A014600(A005408(n)))`
-/

namespace A000003.P11309270067935786294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A014600 (A005408 n).toNat)

end

end A000003.P11309270067935786294

/-! ## A000003.P2888652323868030613

`A028310(A014600(2*n+1))`
-/

namespace A000003.P2888652323868030613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A014600 (2 * n + 1)).toNat

end

end A000003.P2888652323868030613

/-! ## A000003.P8803873481618897602

`∑{d}[A014600(2*n+1), A000010(#)]`
-/

namespace A000003.P8803873481618897602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014600 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A000003.P8803873481618897602

/-! ## A000003.P6051031193238484374

`char[A014682(n)]*A014600(2*n+1)`
-/

namespace A000003.P6051031193238484374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A014600 (2 * n + 1)

end

end A000003.P6051031193238484374

/-! ## A000003.P8191782467521690428

`A014600(2*n+1)%(A008619(n)+1)`
-/

namespace A000003.P8191782467521690428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014600 (2 * n + 1)) (A008619 n + 1)

end

end A000003.P8191782467521690428

/-! ## A000003.P3404540537029888003

`A014600(A005408(n))%A027689(n)`
-/

namespace A000003.P3404540537029888003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014600 (A005408 n).toNat) (A027689 n)

end

end A000003.P3404540537029888003

/-! ## A000003.P16578413358319481317

`A137735(A014600(2*n+1)²)`
-/

namespace A000003.P16578413358319481317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A014600 (2 * n + 1) ^ 2).toNat

end

end A000003.P16578413358319481317

/-! ## A000003.P272373352221182867

`A179527((n+1)²)+A014600(n+1+n)`
-/

namespace A000003.P272373352221182867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179527 ((n + 1) ^ 2) + A014600 (n + 1 + n)

end

end A000003.P272373352221182867

/-!
# A000004: The zero sequence.

The programs for A000004, the canonical program `A000004.P17554574302593844215` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000004 has offset 0).

The definition of A000004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000004.P17554574302593844215

`0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000004

/-- `0` -/
def P17554574302593844215.Spec : Prop :=
  ∀ n, (P17554574302593844215.a n : ℤ) = A000004 n

theorem P17554574302593844215.correct : P17554574302593844215.Spec := by
  intro n
  simp only [A000004]

end A000004

/-!
# A000005: d(n) (also called tau(n) or sigma_0(n)), the number of divisors of n.

The programs for A000005, the canonical program `A000005.P16091521709108585461` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000005 has offset 1).

The definition of A000005 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A000005.anchor (n : ℕ) (hn : 1 ≤ n) : A000005 n = (ArithmeticFunction.sigma 0 n : ℤ)` in `Proof.A000.A000005`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000005.P16091521709108585461

`A032741(n+1)+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000005

/-- `A032741(n+1)+1` -/
def P16091521709108585461.Spec : Prop :=
  ∀ n, P16091521709108585461.a n = A000005 (n + 1)

theorem P16091521709108585461.correct : P16091521709108585461.Spec := by
  intro n
  simp only [A000005, Nat.add_sub_cancel]

end A000005

/-! ## A000005.P16334615653116394357

`A062011(n+1)/2`
-/

namespace A000005.P16334615653116394357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062011 (n + 1) : ℚ) / 2

end

end A000005.P16334615653116394357

namespace A000005

/-- `A062011(n+1)/2` -/
def P16334615653116394357.Spec : Prop :=
  ∀ n, P16334615653116394357.a n = (A000005 (n + 1) : ℚ)

theorem P16334615653116394357.correct : P16334615653116394357.Spec := by
  intro n
  simp only [A000005, Nat.add_sub_cancel, A000005.P16334615653116394357.a, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A062011, A062011.P17525320077853469406.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000005

/-! ## A000005.P4788578435360628342

`A038040(n+1)/(n+1)`
-/

namespace A000005.P4788578435360628342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A000005.P4788578435360628342

namespace A000005

/-- `A038040(n+1)/(n+1)` -/
def P4788578435360628342.Spec : Prop :=
  ∀ n, P4788578435360628342.a n = (A000005 (n + 1) : ℚ)

end A000005

/-! ## A000005.P13595555738481593650

`A006218(n+1)-A006218(n)`
-/

namespace A000005.P13595555738481593650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) - A006218 n

end

end A000005.P13595555738481593650

namespace A000005

/-- `A006218(n+1)-A006218(n)` -/
def P13595555738481593650.Spec : Prop :=
  ∀ n, P13595555738481593650.a n = A000005 (n + 1)

end A000005

/-! ## A000005.P3155878517365240073

`A054519(n+1)-A054519(n)`
-/

namespace A000005.P3155878517365240073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (n + 1) - A054519 n

end

end A000005.P3155878517365240073

namespace A000005

/-- `A054519(n+1)-A054519(n)` -/
def P3155878517365240073.Spec : Prop :=
  ∀ n, P3155878517365240073.a n = A000005 (n + 1)

end A000005

/-! ## A000005.P4939238254323491243

`A048691(n+1)-A055205(n+1)`
-/

namespace A000005.P4939238254323491243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 1) - A055205 (n + 1)

end

end A000005.P4939238254323491243

namespace A000005

/-- `A048691(n+1)-A055205(n+1)` -/
def P4939238254323491243.Spec : Prop :=
  ∀ n, P4939238254323491243.a n = A000005 (n + 1)

theorem P4939238254323491243.correct : P4939238254323491243.Spec := by
  intro n
  simp only [A000005, Nat.add_sub_cancel, A000005.P4939238254323491243.a, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A048691, A048691.P12736965295069668205.a, A055205, A055205.P13391514614413086589.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000005

/-! ## A000005.P3673566271433420661

`A001227(n+1)*A001511(n+1)`
-/

namespace A000005.P3673566271433420661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A001511 (n + 1)

end

end A000005.P3673566271433420661

namespace A000005

/-- `A001227(n+1)*A001511(n+1)` -/
def P3673566271433420661.Spec : Prop :=
  ∀ n, P3673566271433420661.a n = A000005 (n + 1)

end A000005

/-! ## A000005.P11388194675912793704

`A001227(n+1)*(A007814(n+1)+1)`
-/

namespace A000005.P11388194675912793704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * (A007814 (n + 1) + 1)

end

end A000005.P11388194675912793704

namespace A000005

/-- `A001227(n+1)*(A007814(n+1)+1)` -/
def P11388194675912793704.Spec : Prop :=
  ∀ n, P11388194675912793704.a n = A000005 (n + 1)

end A000005

/-! ## A000005.P10241525019091540665

`2*A038548(n+1)-A010052(n+1)`
-/

namespace A000005.P10241525019091540665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038548 (n + 1) - A010052 (n + 1)

end

end A000005.P10241525019091540665

namespace A000005

/-- `2*A038548(n+1)-A010052(n+1)` -/
def P10241525019091540665.Spec : Prop :=
  ∀ n, P10241525019091540665.a n = A000005 (n + 1)

end A000005

/-! ## A000005.P13800572128531678145

`A083888(n+1)+A083889(n+1)+A083890(n+1)+A083891(n+1)+A083892(n+1)+A083893(n+1)+A083894(n+1)+A083895(n+1)+A083896(n+1)`
-/

namespace A000005.P13800572128531678145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083888 (n + 1) + A083889 (n + 1) + A083890 (n + 1) + A083891 (n + 1) + A083892 (n + 1) + A083893 (n + 1) + A083894 (n + 1) + A083895 (n + 1) + A083896 (n + 1)

end

end A000005.P13800572128531678145

namespace A000005

/-- `A083888(n+1)+A083889(n+1)+A083890(n+1)+A083891(n+1)+A083892(n+1)+A083893(n+1)+A083894(n+1)+A083895(n+1)+A083896(n+1)` -/
def P13800572128531678145.Spec : Prop :=
  ∀ n, P13800572128531678145.a n = A000005 (n + 1)

end A000005

/-! ## A000005.P13852071436564898427

`A083910(n+1)+A083911(n+1)+A083912(n+1)+A083913(n+1)+A083914(n+1)+A083915(n+1)+A083916(n+1)+A083917(n+1)+A083918(n+1)+A083919(n+1)`
-/

namespace A000005.P13852071436564898427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083910 (n + 1) + A083911 (n + 1) + A083912 (n + 1) + A083913 (n + 1) + A083914 (n + 1) + A083915 (n + 1) + A083916 (n + 1) + A083917 (n + 1) + A083918 (n + 1) + A083919 (n + 1)

end

end A000005.P13852071436564898427

namespace A000005

/-- `A083910(n+1)+A083911(n+1)+A083912(n+1)+A083913(n+1)+A083914(n+1)+A083915(n+1)+A083916(n+1)+A083917(n+1)+A083918(n+1)+A083919(n+1)` -/
def P13852071436564898427.Spec : Prop :=
  ∀ n, P13852071436564898427.a n = A000005 (n + 1)

theorem P13852071436564898427.correct : P13852071436564898427.Spec := by
  intro n
  simp only [A000005, Nat.add_sub_cancel, A000005.P13852071436564898427.a, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A083910, A083910.P1777275044733097431.f1, A083910.P1777275044733097431.a, A083911, A083911.P7693470357739100101.a, A083912, A083912.P10595039226711258511.f1, A083912.P10595039226711258511.a, A083913, A083913.P9028729068411083889.a, A083914, A083914.P15521831857978958629.a, A083915, A083915.P1694659271945774476.f1, A083915.P1694659271945774476.a, A083916, A083916.P17944496947031591987.f1, A083916.P17944496947031591987.a, A083917, A083917.P4566676204785968317.f1, A083917.P4566676204785968317.a, A083918, A083918.P6152787378875264210.f1, A083918.P6152787378875264210.a, A083919, A083919.P9599260367588607406.f1, A083919.P9599260367588607406.a, A000265, A000265.P2772582252347773295.a, A001876, A001876.P1528332183595955459.f1, A001876.P1528332183595955459.a, A001877, A001877.P11806035189121010381.f1, A001877.P11806035189121010381.a, A218446, A218446.P16595335050583582027.f1, A218446.P16595335050583582027.a, A218447, A218447.P6360476239130993311.f2, A218447.P6360476239130993311.f1, A218447.P6360476239130993311.a, A001878, A001878.P13516976986806296717.f1, A001878.P13516976986806296717.a, A003602, A003602.P7612175048291952394.a, A047412, A047412.P4762915060399373107.a, A079998, A079998.P5984370107414098605.a, A110963, A110963.P3344771894533151408.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000005

/-! ## A000005.P1344830994512303433

`A034296(n+1)-A237665(n+1)`
-/

namespace A000005.P1344830994512303433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034296 (n + 1) - A237665 (n + 1)

end

end A000005.P1344830994512303433

namespace A000005

/-- `A034296(n+1)-A237665(n+1)` -/
def P1344830994512303433.Spec : Prop :=
  ∀ n, P1344830994512303433.a n = A000005 (n + 1)

end A000005

/-! ## A000005.P5900640544250921361

`∏{e}[n+1, #+1]`
-/

namespace A000005.P5900640544250921361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A000005.P5900640544250921361

namespace A000005

/-- `∏{e}[n+1, #+1]` -/
def P5900640544250921361.Spec : Prop :=
  ∀ n, (P5900640544250921361.a n : ℤ) = A000005 (n + 1)

theorem P5900640544250921361.correct : P5900640544250921361.Spec := by
  intro n
  simp only [A000005, Nat.add_sub_cancel, A000005.P5900640544250921361.f1, A000005.P5900640544250921361.a, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000005

/-! ## A000005.P10683297114617393430

`∑{d}[n+1, gcd(n, #)]`
-/

namespace A000005.P10683297114617393430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d

end

end A000005.P10683297114617393430

namespace A000005

/-- `∑{d}[n+1, gcd(n, #)]` -/
def P10683297114617393430.Spec : Prop :=
  ∀ n, (P10683297114617393430.a n : ℤ) = A000005 (n + 1)

end A000005

/-! ## A000005.P9553571132459062342

`∑{d}[n+1, ceil(acot(#))]`
-/

namespace A000005.P9553571132459062342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉

end

end A000005.P9553571132459062342

namespace A000005

/-- `∑{d}[n+1, ceil(acot(#))]` -/
def P9553571132459062342.Spec : Prop :=
  ∀ n, P9553571132459062342.a n = A000005 (n + 1)

end A000005

/-! ## A000005.P9657087817414496823

`∑{d}[n+1, ceil(1/#)]`
-/

namespace A000005.P9657087817414496823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉

end

end A000005.P9657087817414496823

namespace A000005

/-- `∑{d}[n+1, ceil(1/#)]` -/
def P9657087817414496823.Spec : Prop :=
  ∀ n, P9657087817414496823.a n = A000005 (n + 1)

end A000005

/-! ## A000005.P7106235474836862671

`ceil(∑{d}[n+1, tanh(sqrt(#))])`
-/

namespace A000005.P7106235474836862671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ d ∈ Nat.divisors (f1 n), Real.tanh (Real.sqrt (d : ℝ))⌉

end

end A000005.P7106235474836862671

namespace A000005

/-- `ceil(∑{d}[n+1, tanh(sqrt(#))])` -/
def P7106235474836862671.Spec : Prop :=
  ∀ n, P7106235474836862671.a n = A000005 (n + 1)

end A000005

/-! ## A000005.P14471146869915503104

`ceil(∑{d}[n+1, sin(atan(#))])`
-/

namespace A000005.P14471146869915503104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ d ∈ Nat.divisors (f1 n), Real.sin (Real.arctan (d : ℝ))⌉

end

end A000005.P14471146869915503104

namespace A000005

/-- `ceil(∑{d}[n+1, sin(atan(#))])` -/
def P14471146869915503104.Spec : Prop :=
  ∀ n, P14471146869915503104.a n = A000005 (n + 1)

end A000005

/-! ## A000005.P3526104863085426413

`ceil(∑{d}[n+1, atan(atan(#))])`
-/

namespace A000005.P3526104863085426413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ d ∈ Nat.divisors (f1 n), Real.arctan (Real.arctan (d : ℝ))⌉

end

end A000005.P3526104863085426413

namespace A000005

/-- `ceil(∑{d}[n+1, atan(atan(#))])` -/
def P3526104863085426413.Spec : Prop :=
  ∀ n, P3526104863085426413.a n = A000005 (n + 1)

end A000005

/-! ## A000005.P10542590125220118547

`floor(∑{d}[n+1, cosh(acot(#))])`
-/

namespace A000005.P10542590125220118547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n), Real.cosh (SequenceMachineLib.acot (d : ℝ))⌋

end

end A000005.P10542590125220118547

namespace A000005

/-- `floor(∑{d}[n+1, cosh(acot(#))])` -/
def P10542590125220118547.Spec : Prop :=
  ∀ n, P10542590125220118547.a n = A000005 (n + 1)

end A000005

/-!
# A000006: Integer part of square root of n-th prime.

The programs for A000006, the canonical program `A000006.P2817507747577515147` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000006 has offset 1).

The definition of A000006 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000006.P2817507747577515147

`A000196(A000040(n+1))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000006

/-- `A000196(A000040(n+1))` -/
def P2817507747577515147.Spec : Prop :=
  ∀ n, P2817507747577515147.a n = A000006 (n + 1)

theorem P2817507747577515147.correct : P2817507747577515147.Spec := by
  intro n
  simp only [A000006, Nat.add_sub_cancel]

end A000006

/-! ## A000006.P15458568231628030509

`n-A103416(n)`
-/

namespace A000006.P15458568231628030509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A103416 n

end

end A000006.P15458568231628030509

namespace A000006

/-- `n-A103416(n)` -/
def P15458568231628030509.Spec : Prop :=
  ∀ n, P15458568231628030509.a n = A000006 (n + 1)

end A000006

/-! ## A000006.P7452535560226158439

`∑[char[A038107(n)]]`
-/

namespace A000006.P7452535560226158439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000006.P7452535560226158439

namespace A000006

/-- `∑[char[A038107(n)]]` -/
def P7452535560226158439.Spec : Prop :=
  ∀ n, (P7452535560226158439.a n : ℤ) = A000006 (n + 1)

end A000006

/-! ## A000006.P14474721385198629147

`sqrt(A065730(n+1))`
-/

namespace A000006.P14474721385198629147
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065730 (n + 1) : ℝ)

end

end A000006.P14474721385198629147

namespace A000006

/-- `sqrt(A065730(n+1))` -/
def P14474721385198629147.Spec : Prop :=
  ∀ n, P14474721385198629147.a n = (A000006 (n + 1) : ℝ)

end A000006

/-! ## A000006.P10083529323420586247

`∑[A139140(n)%2]`
-/

namespace A000006.P10083529323420586247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139140 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000006.P10083529323420586247

namespace A000006

/-- `∑[A139140(n)%2]` -/
def P10083529323420586247.Spec : Prop :=
  ∀ n, P10083529323420586247.a n = A000006 (n + 1)

end A000006

/-! ## A000006.P12346110033446494400

`floor(sqrt(Δ[A007504(n)]))`
-/

namespace A000006.P12346110033446494400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (n + 1) - f1 n)

end

end A000006.P12346110033446494400

namespace A000006

/-- `floor(sqrt(Δ[A007504(n)]))` -/
def P12346110033446494400.Spec : Prop :=
  ∀ n, P12346110033446494400.a n = A000006 (n + 1)

end A000006

/-! ## A000006.P11960958650100453999

`floor(sqrt(p?[A259153(n)]))`
-/

namespace A000006.P11960958650100453999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A000006.P11960958650100453999

namespace A000006

/-- `floor(sqrt(p?[A259153(n)]))` -/
def P11960958650100453999.Spec : Prop :=
  ∀ n, P11960958650100453999.a n = A000006 (n + 1)

end A000006

/-! ## A000006.P5583304922174059462

`∑[char[∑[A014085(n)]]]`
-/

namespace A000006.P5583304922174059462
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000006.P5583304922174059462

namespace A000006

/-- `∑[char[∑[A014085(n)]]]` -/
def P5583304922174059462.Spec : Prop :=
  ∀ n, (P5583304922174059462.a n : ℤ) = A000006 (n + 1)

end A000006

/-! ## A000006.P5410174156670100815

`A104103(n+1)-1`
-/

namespace A000006.P5410174156670100815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104103 (n + 1) - 1

end

end A000006.P5410174156670100815

namespace A000006

/-- `A104103(n+1)-1` -/
def P5410174156670100815.Spec : Prop :=
  ∀ n, P5410174156670100815.a n = A000006 (n + 1)

theorem P5410174156670100815.correct : P5410174156670100815.Spec := by
  intro n
  simp only [A000006, Nat.add_sub_cancel, A000006.P5410174156670100815.a, A000006.P2817507747577515147.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000196, A000196.P15434771586934192083.a, A104103, A104103.P17142170085833821437.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000006

/-! ## A000006.P11381921345354810898

`A096494(n+1)/2`
-/

namespace A000006.P11381921345354810898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096494 (n + 1) : ℚ) / 2

end

end A000006.P11381921345354810898

namespace A000006

/-- `A096494(n+1)/2` -/
def P11381921345354810898.Spec : Prop :=
  ∀ n, P11381921345354810898.a n = (A000006 (n + 1) : ℚ)

theorem P11381921345354810898.correct : P11381921345354810898.Spec := by
  intro n
  simp only [A000006, Nat.add_sub_cancel, A000006.P11381921345354810898.a, A000006.P2817507747577515147.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000196, A000196.P15434771586934192083.a, A096494, A096494.P552534159965664402.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000006

/-! ## A000006.P4498729246417801701

`floor(sqrt(A006005(n+1)))`
-/

namespace A000006.P4498729246417801701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A006005 (n + 1))

end

end A000006.P4498729246417801701

namespace A000006

/-- `floor(sqrt(A006005(n+1)))` -/
def P4498729246417801701.Spec : Prop :=
  ∀ n, P4498729246417801701.a n = A000006 (n + 1)

end A000006

/-! ## A000006.P14524478607010195284

`floor(sqrt(A006093(n+1)))`
-/

namespace A000006.P14524478607010195284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A006093 (n + 1))

end

end A000006.P14524478607010195284

namespace A000006

/-- `floor(sqrt(A006093(n+1)))` -/
def P14524478607010195284.Spec : Prop :=
  ∀ n, P14524478607010195284.a n = A000006 (n + 1)

end A000006

/-! ## A000006.P11083946962684193504

`floor(sqrt(A014193(n+1)))`
-/

namespace A000006.P11083946962684193504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A014193 (n + 1))

end

end A000006.P11083946962684193504

namespace A000006

/-- `floor(sqrt(A014193(n+1)))` -/
def P11083946962684193504.Spec : Prop :=
  ∀ n, P11083946962684193504.a n = A000006 (n + 1)

end A000006

/-! ## A000006.P14274558534515427896

`floor(sqrt(A014686(n+1)))`
-/

namespace A000006.P14274558534515427896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A014686 (n + 1))

end

end A000006.P14274558534515427896

namespace A000006

/-- `floor(sqrt(A014686(n+1)))` -/
def P14274558534515427896.Spec : Prop :=
  ∀ n, P14274558534515427896.a n = A000006 (n + 1)

end A000006

/-! ## A000006.P11882401605484052063

`floor(sqrt(A039915(n+1)))`
-/

namespace A000006.P11882401605484052063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A039915 (n + 1))

end

end A000006.P11882401605484052063

namespace A000006

/-- `floor(sqrt(A039915(n+1)))` -/
def P11882401605484052063.Spec : Prop :=
  ∀ n, P11882401605484052063.a n = A000006 (n + 1)

end A000006

/-! ## A000006.P3205270053494315600

`floor(sqrt(A082542(n+1)))`
-/

namespace A000006.P3205270053494315600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A082542 (n + 1))

end

end A000006.P3205270053494315600

namespace A000006

/-- `floor(sqrt(A082542(n+1)))` -/
def P3205270053494315600.Spec : Prop :=
  ∀ n, P3205270053494315600.a n = A000006 (n + 1)

end A000006

/-! ## A000006.P9853785331938336733

`floor(sqrt(A088190(n+1)))`
-/

namespace A000006.P9853785331938336733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A088190 (n + 1))

end

end A000006.P9853785331938336733

namespace A000006

/-- `floor(sqrt(A088190(n+1)))` -/
def P9853785331938336733.Spec : Prop :=
  ∀ n, P9853785331938336733.a n = A000006 (n + 1)

end A000006

/-! ## A000006.P6523771530205632875

`floor(sqrt(A156037(n+1)))`
-/

namespace A000006.P6523771530205632875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A156037 (n + 1))

end

end A000006.P6523771530205632875

namespace A000006

/-- `floor(sqrt(A156037(n+1)))` -/
def P6523771530205632875.Spec : Prop :=
  ∀ n, P6523771530205632875.a n = A000006 (n + 1)

end A000006

/-! ## A000006.P13155596175778269292

`sqrt(A145445(n+1))-1`
-/

namespace A000006.P13155596175778269292
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A145445 (n + 1) : ℝ) - 1

end

end A000006.P13155596175778269292

namespace A000006

/-- `sqrt(A145445(n+1))-1` -/
def P13155596175778269292.Spec : Prop :=
  ∀ n, P13155596175778269292.a n = (A000006 (n + 1) : ℝ)

end A000006

/-! ## A000006.P3145266739336098627

`floor(sqrt(sqrt(A001248(n+1))))`
-/

namespace A000006.P3145266739336098627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A001248 (n + 1) : ℝ))⌋

end

end A000006.P3145266739336098627

namespace A000006

/-- `floor(sqrt(sqrt(A001248(n+1))))` -/
def P3145266739336098627.Spec : Prop :=
  ∀ n, P3145266739336098627.a n = A000006 (n + 1)

end A000006

/-!
# A000007: The characteristic function of {0}: a(n) = 0^n.

The programs for A000007, the canonical program `A000007.P6599383543502402472` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000007 has offset 0).

The definition of A000007 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `0^n` (program `A000007.P6599383543502402472`, by `A000007.P6599383543502402472.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000007.P6599383543502402472

`0^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000007

/-- `0^n` -/
def P6599383543502402472.Spec : Prop :=
  ∀ n, (P6599383543502402472.a n : ℤ) = A000007 n

theorem P6599383543502402472.correct : P6599383543502402472.Spec := by
  intro n
  simp only [A000007]

end A000007

/-!
# A000008: Number of ways of making change for n cents using coins of 1, 2, 5, 10 cents.

The programs for A000008, the canonical program `A000008.P17199756327354335459` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000008 has offset 0).

The definition of A000008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000008.P17199756327354335459

`∑[floor((floor(n/5)/2+1)²)-a(n-1)]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000008

/-- `∑[floor((floor(n/5)/2+1)²)-a(n-1)]` -/
def P17199756327354335459.Spec : Prop :=
  ∀ n, P17199756327354335459.a n = A000008 n

theorem P17199756327354335459.correct : P17199756327354335459.Spec := by
  intro n
  simp only [A000008]

end A000008

/-! ## A000008.P11048314557359560093

`∑[A025810(n)]`
-/

namespace A000008.P11048314557359560093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000008.P11048314557359560093

namespace A000008

/-- `∑[A025810(n)]` -/
def P11048314557359560093.Spec : Prop :=
  ∀ n, P11048314557359560093.a n = A000008 n

end A000008

/-! ## A000008.P1174103308825375712

`∑[C(A008616(n)+1, 2)]`
-/

namespace A000008.P1174103308825375712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008616 n + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000008.P1174103308825375712

namespace A000008

/-- `∑[C(A008616(n)+1, 2)]` -/
def P1174103308825375712.Spec : Prop :=
  ∀ n, (P1174103308825375712.a n : ℤ) = A000008 n

end A000008

/-! ## A000008.P17416382876855510873

`A187243(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A000008.P17416382876855510873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A187243 n + a (n - 2)

end

end A000008.P17416382876855510873

namespace A000008

/-- `A187243(n)+a(n-2)` -/
def P17416382876855510873.Spec : Prop :=
  ∀ n, P17416382876855510873.a n = A000008 n

end A000008

/-! ## A000008.P9991742460452815715

`∑[A000217(Δ[round(((n+3)/2)²/5)])]`
-/

namespace A000008.P9991742460452815715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 3 : ℚ) / 2) ^ 2 / 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000008.P9991742460452815715

namespace A000008

/-- `∑[A000217(Δ[round(((n+3)/2)²/5)])]` -/
def P9991742460452815715.Spec : Prop :=
  ∀ n, P9991742460452815715.a n = A000008 n

end A000008

/-! ## A000008.P1313528113690254195

`∑[A001971(2*A008616(n)+1)]`
-/

namespace A000008.P1313528113690254195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (2 * A008616 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000008.P1313528113690254195

namespace A000008

/-- `∑[A001971(2*A008616(n)+1)]` -/
def P1313528113690254195.Spec : Prop :=
  ∀ n, P1313528113690254195.a n = A000008 n

end A000008

/-! ## A000008.P9368043467167751066

`A000064(n+1)-(A025810(n+1)+A000064(n))`
-/

namespace A000008.P9368043467167751066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000064 (n + 1) - (A025810 (n + 1) + A000064 n)

end

end A000008.P9368043467167751066

namespace A000008

/-- `A000064(n+1)-(A025810(n+1)+A000064(n))` -/
def P9368043467167751066.Spec : Prop :=
  ∀ n, P9368043467167751066.a n = A000008 n

end A000008

/-! ## A000008.P10427732813343574405

`Δ[record[A001343(n+1)]]`
-/

namespace A000008.P10427732813343574405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001343 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000008.P10427732813343574405

namespace A000008

/-- `Δ[record[A001343(n+1)]]` -/
def P10427732813343574405.Spec : Prop :=
  ∀ n, P10427732813343574405.a n = A000008 n

end A000008

/-! ## A000008.P10963637185743667315

`record[A001343(n)]-record[A001343(n+1)]`
-/

namespace A000008.P10963637185743667315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001343 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A000008.P10963637185743667315

namespace A000008

/-- `record[A001343(n)]-record[A001343(n+1)]` -/
def P10963637185743667315.Spec : Prop :=
  ∀ n, P10963637185743667315.a n = A000008 n

end A000008

/-!
# A000009: Expansion of Product_{m >= 1} (1 + x^m); number of partitions of n into distinct parts; number of partitions of n into odd parts.

The programs for A000009, there is no canonical definition to state claims against.
-/

/-! ## A000009.P15300493617200239493

`A000041(n)-A047967(n)`
-/

namespace A000009.P15300493617200239493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A047967 n

end

end A000009.P15300493617200239493

/-! ## A000009.P10666606827217990845

`A067661(n)+A067659(n)`
-/

namespace A000009.P10666606827217990845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 n + A067659 n

end

end A000009.P10666606827217990845

/-! ## A000009.P10833900349296908808

`abs(A081360(n))`
-/

namespace A000009.P10833900349296908808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n|

end

end A000009.P10833900349296908808

/-! ## A000009.P5779128412080370822

`∑[A087897(n)]`
-/

namespace A000009.P5779128412080370822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000009.P5779128412080370822

/-! ## A000009.P3663631495658913184

`A111133(n)+1`
-/

namespace A000009.P3663631495658913184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + 1

end

end A000009.P3663631495658913184

/-! ## A000009.P15409284203784195698

`ceil(A087135(n)/2)`
-/

namespace A000009.P15409284203784195698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A087135 n : ℚ) / 2⌉

end

end A000009.P15409284203784195698

/-! ## A000009.P75033260298078143

`ceil(A333147(n)/2)`
-/

namespace A000009.P75033260298078143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A333147 n : ℚ) / 2⌉

end

end A000009.P75033260298078143

/-! ## A000009.P8187013219197376034

`A057428(n)+A052839(n)`
-/

namespace A000009.P8187013219197376034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A052839 n

end

end A000009.P8187013219197376034

/-! ## A000009.P2387806428640299421

`A096765(n)+A025147(n)`
-/

namespace A000009.P2387806428640299421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 n + A025147 n

end

end A000009.P2387806428640299421

/-! ## A000009.P81539544746841312

`A238708(n)+A003114(n)`
-/

namespace A000009.P81539544746841312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238708 n + A003114 n

end

end A000009.P81539544746841312

/-! ## A000009.P3391969792293527735

`A282892(n)+A035363(n)`
-/

namespace A000009.P3391969792293527735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282892 n + A035363 n

end

end A000009.P3391969792293527735

/-! ## A000009.P10755579210172696314

`A331848(n)+A000700(n)`
-/

namespace A000009.P10755579210172696314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331848 n + A000700 n

end

end A000009.P10755579210172696314

/-! ## A000009.P320151391282056625

`A239242(n)+A239240(n)`
-/

namespace A000009.P320151391282056625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239242 n + A239240 n

end

end A000009.P320151391282056625

/-! ## A000009.P11175391648715006917

`A239243(n)+A239239(n)`
-/

namespace A000009.P11175391648715006917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239243 n + A239239 n

end

end A000009.P11175391648715006917

/-! ## A000009.P14006421531446310797

`A317239(n)+A316996(n)`
-/

namespace A000009.P14006421531446310797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317239 n + A316996 n

end

end A000009.P14006421531446310797

/-! ## A000009.P570150826021137015

`A052839(n)-A057427(n)`
-/

namespace A000009.P570150826021137015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - A057427 n

end

end A000009.P570150826021137015

/-! ## A000009.P12369960151092660555

`A167932(n)-A032741(n)`
-/

namespace A000009.P12369960151092660555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167932 n - A032741 n

end

end A000009.P12369960151092660555

/-! ## A000009.P2867497322503157007

`A033999(n)*A081360(n)`
-/

namespace A000009.P2867497322503157007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A081360 n

end

end A000009.P2867497322503157007

/-! ## A000009.P5421159836861430560

`gcd(A000038(n), A081360(n))`
-/

namespace A000009.P5421159836861430560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A081360 n)

end

end A000009.P5421159836861430560

/-! ## A000009.P3721929736411709124

`lcm(A020985(n), A081360(n))`
-/

namespace A000009.P3721929736411709124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A081360 n)

end

end A000009.P3721929736411709124

/-!
# A000010: Euler totient function phi(n): count numbers <= n and prime to n.

The programs for A000010, the canonical program `A000010.P4673923239450215316` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000010 has offset 1).

The definition of A000010 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A000010.P9912137244617891823

`n+1-A051953(n+1)`
-/

namespace A000010.P9912137244617891823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A051953 (n + 1)

end

end A000010.P9912137244617891823

namespace A000010

/-- `n+1-A051953(n+1)` -/
def P9912137244617891823.Spec : Prop :=
  ∀ n, P9912137244617891823.a n = A000010 (n + 1)

end A000010

/-! ## A000010.P4673923239450215316

`A173557(n+1)*A003557(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A000010

/-- `A173557(n+1)*A003557(n+1)` -/
def P4673923239450215316.Spec : Prop :=
  ∀ n, P4673923239450215316.a n = A000010 (n + 1)

theorem P4673923239450215316.correct : P4673923239450215316.Spec := by
  intro n
  simp only [A000010, Nat.add_sub_cancel]

end A000010

/-! ## A000010.P3717315196577760138

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A000010.P3717315196577760138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A000010.P3717315196577760138

namespace A000010

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]` -/
def P3717315196577760138.Spec : Prop :=
  ∀ n, P3717315196577760138.a n = (A000010 (n + 1) : ℚ)

end A000010

/-! ## A000010.P8802264138440616737

`Δ[A002088(n)]`
-/

namespace A000010.P8802264138440616737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000010.P8802264138440616737

namespace A000010

/-- `Δ[A002088(n)]` -/
def P8802264138440616737.Spec : Prop :=
  ∀ n, P8802264138440616737.a n = A000010 (n + 1)

end A000010

/-! ## A000010.P6564139438910059573

`Δ[A005728(n)]`
-/

namespace A000010.P6564139438910059573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000010.P6564139438910059573

namespace A000010

/-- `Δ[A005728(n)]` -/
def P6564139438910059573.Spec : Prop :=
  ∀ n, P6564139438910059573.a n = A000010 (n + 1)

end A000010

/-! ## A000010.P4541348895179359249

`A349137(Δ[n²])`
-/

namespace A000010.P4541348895179359249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A000010.P4541348895179359249

namespace A000010

/-- `A349137(Δ[n²])` -/
def P4541348895179359249.Spec : Prop :=
  ∀ n, P4541348895179359249.a n = A000010 (n + 1)

end A000010

/-! ## A000010.P9375932341200696421

`sqrt(A127473(n+1))`
-/

namespace A000010.P9375932341200696421
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ)

end

end A000010.P9375932341200696421

namespace A000010

/-- `sqrt(A127473(n+1))` -/
def P9375932341200696421.Spec : Prop :=
  ∀ n, P9375932341200696421.a n = (A000010 (n + 1) : ℝ)

end A000010

/-! ## A000010.P17343856875081236412

`Δ[A100449(n)/4]`
-/

namespace A000010.P17343856875081236412
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100449 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000010.P17343856875081236412

namespace A000010

/-- `Δ[A100449(n)/4]` -/
def P17343856875081236412.Spec : Prop :=
  ∀ n, P17343856875081236412.a n = (A000010 (n + 1) : ℚ)

end A000010

/-! ## A000010.P6859587442334875062

`A109606(n+1)+1`
-/

namespace A000010.P6859587442334875062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + 1

end

end A000010.P6859587442334875062

namespace A000010

/-- `A109606(n+1)+1` -/
def P6859587442334875062.Spec : Prop :=
  ∀ n, P6859587442334875062.a n = A000010 (n + 1)

theorem P6859587442334875062.correct : P6859587442334875062.Spec := by
  intro n
  simp only [A000010, Nat.add_sub_cancel, A000010.P6859587442334875062.a, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A109606, A109606.P2415810041766612210.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000010

/-! ## A000010.P7747400693533229829

`A039649(n+1)-1`
-/

namespace A000010.P7747400693533229829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - 1

end

end A000010.P7747400693533229829

namespace A000010

/-- `A039649(n+1)-1` -/
def P7747400693533229829.Spec : Prop :=
  ∀ n, P7747400693533229829.a n = A000010 (n + 1)

theorem P7747400693533229829.correct : P7747400693533229829.Spec := by
  intro n
  simp only [A000010, Nat.add_sub_cancel, A000010.P7747400693533229829.a, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A039649, A039649.P16717312505280968063.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000010

/-! ## A000010.P3223273359405595209

`A200905(n+1)/3`
-/

namespace A000010.P3223273359405595209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200905 (n + 1) : ℚ) / 3

end

end A000010.P3223273359405595209

namespace A000010

/-- `A200905(n+1)/3` -/
def P3223273359405595209.Spec : Prop :=
  ∀ n, P3223273359405595209.a n = (A000010 (n + 1) : ℚ)

theorem P3223273359405595209.correct : P3223273359405595209.Spec := by
  intro n
  simp only [A000010, Nat.add_sub_cancel, A000010.P3223273359405595209.a, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A200905, A200905.P4388094907414912323.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A121048, A121048.P10222907602682812102.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000010

/-! ## A000010.P7739703430922692131

`n-A219428(n+1)`
-/

namespace A000010.P7739703430922692131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A219428 (n + 1)

end

end A000010.P7739703430922692131

namespace A000010

/-- `n-A219428(n+1)` -/
def P7739703430922692131.Spec : Prop :=
  ∀ n, P7739703430922692131.a n = A000010 (n + 1)

end A000010

/-! ## A000010.P4132899130581372579

`sqrt(sqrt(A361148(n+1)))`
-/

namespace A000010.P4132899130581372579
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A361148 (n + 1) : ℝ))

end

end A000010.P4132899130581372579

namespace A000010

/-- `sqrt(sqrt(A361148(n+1)))` -/
def P4132899130581372579.Spec : Prop :=
  ∀ n, P4132899130581372579.a n = (A000010 (n + 1) : ℝ)

end A000010

/-! ## A000010.P5383672094848677245

`floor(sqrt(A393976(n+1)))`
-/

namespace A000010.P5383672094848677245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A393976 (n + 1))

end

end A000010.P5383672094848677245

namespace A000010

/-- `floor(sqrt(A393976(n+1)))` -/
def P5383672094848677245.Spec : Prop :=
  ∀ n, P5383672094848677245.a n = A000010 (n + 1)

end A000010

/-! ## A000010.P5890547785154653610

`∑{d}[n+1, A007431(#)]`
-/

namespace A000010.P5890547785154653610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d

end

end A000010.P5890547785154653610

namespace A000010

/-- `∑{d}[n+1, A007431(#)]` -/
def P5890547785154653610.Spec : Prop :=
  ∀ n, P5890547785154653610.a n = A000010 (n + 1)

end A000010

/-! ## A000010.P3294475984766024582

`A319998(2*(n+1))/2`
-/

namespace A000010.P3294475984766024582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319998 (2 * (n + 1)) : ℚ) / 2

end

end A000010.P3294475984766024582

namespace A000010

/-- `A319998(2*(n+1))/2` -/
def P3294475984766024582.Spec : Prop :=
  ∀ n, P3294475984766024582.a n = (A000010 (n + 1) : ℚ)

end A000010

/-! ## A000010.P18216396239301219643

`A121048(n+1)-(n+1)`
-/

namespace A000010.P18216396239301219643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121048 (n + 1) - (n + 1 : ℤ)

end

end A000010.P18216396239301219643

namespace A000010

/-- `A121048(n+1)-(n+1)` -/
def P18216396239301219643.Spec : Prop :=
  ∀ n, P18216396239301219643.a n = A000010 (n + 1)

theorem P18216396239301219643.correct : P18216396239301219643.Spec := by
  intro n
  simp only [A000010, Nat.add_sub_cancel, A000010.P18216396239301219643.a, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A121048, A121048.P10222907602682812102.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000010

/-! ## A000010.P14062314106708085913

`A002618(n+1)/(n+1)`
-/

namespace A000010.P14062314106708085913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A000010.P14062314106708085913

namespace A000010

/-- `A002618(n+1)/(n+1)` -/
def P14062314106708085913.Spec : Prop :=
  ∀ n, P14062314106708085913.a n = (A000010 (n + 1) : ℚ)

end A000010

/-! ## A000010.P8040046502342230247

`A053191(n+1)%(n+2)`
-/

namespace A000010.P8040046502342230247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053191 (n + 1)) (n + 2 : ℤ)

end

end A000010.P8040046502342230247

namespace A000010

/-- `A053191(n+1)%(n+2)` -/
def P8040046502342230247.Spec : Prop :=
  ∀ n, P8040046502342230247.a n = A000010 (n + 1)

end A000010

/-! ## A000010.P17299440719305396220

`2*(n+1)-A053158(n+1)`
-/

namespace A000010.P17299440719305396220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A053158 (n + 1)

end

end A000010.P17299440719305396220

namespace A000010

/-- `2*(n+1)-A053158(n+1)` -/
def P17299440719305396220.Spec : Prop :=
  ∀ n, P17299440719305396220.a n = A000010 (n + 1)

end A000010

/-!
# A000011: Number of n-bead necklaces (turning over is allowed) where complements are equivalent.

The programs for A000011, the canonical program `A000011.P276434732339544012` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000011 has offset 0).

The definition of A000011 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000013, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A000011.P276434732339544012

`(A000013(n)+2^floor(n/2))/2`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A000011

/-- `(A000013(n)+2^floor(n/2))/2` -/
def P276434732339544012.Spec : Prop :=
  ∀ n, P276434732339544012.a n = (A000011 n : ℚ)

end A000011

/-! ## A000011.P13412437977219078441

`∑{d}[n, A056366(#)]+1`
-/

namespace A000011.P13412437977219078441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056366 d + 1

end

end A000011.P13412437977219078441

namespace A000011

/-- `∑{d}[n, A056366(#)]+1` -/
def P13412437977219078441.Spec : Prop :=
  ∀ n, P13412437977219078441.a n = A000011 n

end A000011

/-! ## A000011.P7669306669769653872

`∑{d}[n+1, A054183(#-1)]`
-/

namespace A000011.P7669306669769653872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054183 (d - 1)

end

end A000011.P7669306669769653872

namespace A000011

/-- `∑{d}[n+1, A054183(#-1)]` -/
def P7669306669769653872.Spec : Prop :=
  ∀ n, P7669306669769653872.a n = A000011 n

end A000011

/-! ## A000011.P11828021087097154701

`A059053(n)+A016116(n)`
-/

namespace A000011.P11828021087097154701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059053 n + A016116 n

end

end A000011.P11828021087097154701

namespace A000011

/-- `A059053(n)+A016116(n)` -/
def P11828021087097154701.Spec : Prop :=
  ∀ n, P11828021087097154701.a n = A000011 n

end A000011

/-! ## A000011.P11306899022105409453

`A158780(n+2)+A059053(n)`
-/

namespace A000011.P11306899022105409453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (n + 2) + A059053 n

end

end A000011.P11306899022105409453

namespace A000011

/-- `A158780(n+2)+A059053(n)` -/
def P11306899022105409453.Spec : Prop :=
  ∀ n, P11306899022105409453.a n = A000011 n

end A000011

/-! ## A000011.P14221435700180475992

`A056357(n)+a(A175087(n))` with `a(0)=1, a(1)=1`
-/

namespace A000011.P14221435700180475992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A056357 n + a (A175087 n).toNat

end

end A000011.P14221435700180475992

namespace A000011

/-- `A056357(n)+a(A175087(n))` -/
def P14221435700180475992.Spec : Prop :=
  ∀ n, P14221435700180475992.a n = A000011 n

end A000011

/-! ## A000011.P11995508593076097812

`A056357(A027379(n)-(∑[n]+n))+1`
-/

namespace A000011.P11995508593076097812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056357 (A027379 n - ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ)).toNat + 1

end

end A000011.P11995508593076097812

namespace A000011

/-- `A056357(A027379(n)-(∑[n]+n))+1` -/
def P11995508593076097812.Spec : Prop :=
  ∀ n, P11995508593076097812.a n = A000011 n

end A000011

/-! ## A000011.P8911237938097499769

`∑{d}[n+1, A008683(#)*A054181((n+1)/#-1)]`
-/

namespace A000011.P8911237938097499769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A054181 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A000011.P8911237938097499769

namespace A000011

/-- `∑{d}[n+1, A008683(#)*A054181((n+1)/#-1)]` -/
def P8911237938097499769.Spec : Prop :=
  ∀ n, P8911237938097499769.a n = A000011 n

end A000011

/-! ## A000011.P4311038107910940566

`A000013(n)-A059053(n)`
-/

namespace A000011.P4311038107910940566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 n - A059053 n

end

end A000011.P4311038107910940566

namespace A000011

/-- `A000013(n)-A059053(n)` -/
def P4311038107910940566.Spec : Prop :=
  ∀ n, P4311038107910940566.a n = A000011 n

end A000011

/-! ## A000011.P16781546537646092332

`(A016116(n)+A000013(n))/2`
-/

namespace A000011.P16781546537646092332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016116 n + A000013 n : ℚ) / 2

end

end A000011.P16781546537646092332

namespace A000011

/-- `(A016116(n)+A000013(n))/2` -/
def P16781546537646092332.Spec : Prop :=
  ∀ n, P16781546537646092332.a n = (A000011 n : ℚ)

end A000011

/-!
# A000012: The simplest sequence of positive numbers: the all 1's sequence.

The programs for A000012, the canonical program `A000012.P10919717932153266061` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000012 has offset 0).

The definition of A000012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000012.P10919717932153266061

`1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000012

/-- `1` -/
def P10919717932153266061.Spec : Prop :=
  ∀ n, (P10919717932153266061.a n : ℤ) = A000012 n

theorem P10919717932153266061.correct : P10919717932153266061.Spec := by
  intro n
  simp only [A000012]

end A000012

/-!
# A000013: Definition (1): Number of n-bead binary necklaces with beads of 2 colors where the colors may be swapped but turning over is not allowed.

The programs for A000013, the canonical program `A000013.P13330308426199228881` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000013 has offset 0).

The definition of A000013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000013.P13330308426199228881

`∑{d}[n, A056303(#)]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A000013

/-- `∑{d}[n, A056303(#)]+1` -/
def P13330308426199228881.Spec : Prop :=
  ∀ n, P13330308426199228881.a n = A000013 n

theorem P13330308426199228881.correct : P13330308426199228881.Spec := by
  intro n
  simp only [A000013]

end A000013

/-! ## A000013.P3594499600093537717

`∑{d}[n+1, A054170(#-1)]`
-/

namespace A000013.P3594499600093537717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054170 (d - 1)

end

end A000013.P3594499600093537717

namespace A000013

/-- `∑{d}[n+1, A054170(#-1)]` -/
def P3594499600093537717.Spec : Prop :=
  ∀ n, P3594499600093537717.a n = A000013 n

end A000013

/-! ## A000013.P14092155533158097895

`A059053(n)+A000011(n)`
-/

namespace A000013.P14092155533158097895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059053 n + A000011 n

end

end A000013.P14092155533158097895

namespace A000013

/-- `A059053(n)+A000011(n)` -/
def P14092155533158097895.Spec : Prop :=
  ∀ n, P14092155533158097895.a n = A000013 n

end A000013

/-! ## A000013.P2531150117817678515

`A045677(n)+A045674(n)`
-/

namespace A000013.P2531150117817678515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045677 n + A045674 n

end

end A000013.P2531150117817678515

namespace A000013

/-- `A045677(n)+A045674(n)` -/
def P2531150117817678515.Spec : Prop :=
  ∀ n, P2531150117817678515.a n = A000013 n

theorem P2531150117817678515.correct : P2531150117817678515.Spec := by
  intro n
  simp only [A000013, Nat.add_sub_cancel, A000013.P2531150117817678515.a, A000013.P13330308426199228881.f1, A000013.P13330308426199228881.a, A045674, A045674.P8510068775620534225.f1, A045674.P8510068775620534225.a, A045677, A045677.P7167331430785454104.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A008683, A008683.P18254306604665478110.a, A028310, A028310.P18130301328277559831.a, A045683, A045683.P14787099194818843150.a, A056295, A056295.P9438402425658344231.a, A000016, A000016.P4834367987804555054.a, A000048, A000048.P16452762028424782785.a, A008965, A008965.P16924218572130557635.a, A045686, A045686.P11325912773679884789.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A000007, A000007.P6599383543502402472.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A056476, A056476.P12632563156965169968.a, A085357, A085357.P3258697467278337073.a, A096010, A096010.P4903496547079153273.a, A106400, A106400.P11201390576172776043.a, A233583, A233583.P15026547221992958741.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000013

/-! ## A000013.P16296259444009410979

`A115118(n)+A000048(n)`
-/

namespace A000013.P16296259444009410979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115118 n + A000048 n

end

end A000013.P16296259444009410979

namespace A000013

/-- `A115118(n)+A000048(n)` -/
def P16296259444009410979.Spec : Prop :=
  ∀ n, P16296259444009410979.a n = A000013 n

theorem P16296259444009410979.correct : P16296259444009410979.Spec := by
  intro n
  simp only [A000013, Nat.add_sub_cancel, A000013.P16296259444009410979.a, A000013.P13330308426199228881.f1, A000013.P13330308426199228881.a, A000048, A000048.P16452762028424782785.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A115118, A115118.P6546194884082821130.a, A008683, A008683.P18254306604665478110.a, A056295, A056295.P9438402425658344231.a, A233583, A233583.P15026547221992958741.a, A000016, A000016.P4834367987804555054.a, A008965, A008965.P16924218572130557635.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A000007, A000007.P6599383543502402472.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A085357, A085357.P3258697467278337073.a, A096010, A096010.P4903496547079153273.a, A106400, A106400.P11201390576172776043.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000013

/-! ## A000013.P2152430780350269037

`∑{d}[A028310(n), A000048(#)]`
-/

namespace A000013.P2152430780350269037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000048 d

end

end A000013.P2152430780350269037

namespace A000013

/-- `∑{d}[A028310(n), A000048(#)]` -/
def P2152430780350269037.Spec : Prop :=
  ∀ n, P2152430780350269037.a n = A000013 n

end A000013

/-! ## A000013.P9232486748195856471

`A016116(n)+2*A059053(n)`
-/

namespace A000013.P9232486748195856471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n + 2 * A059053 n

end

end A000013.P9232486748195856471

namespace A000013

/-- `A016116(n)+2*A059053(n)` -/
def P9232486748195856471.Spec : Prop :=
  ∀ n, P9232486748195856471.a n = A000013 n

end A000013

/-! ## A000013.P8279182098756758332

`2*A000011(n)-A016116(n)`
-/

namespace A000013.P8279182098756758332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000011 n - A016116 n

end

end A000013.P8279182098756758332

namespace A000013

/-- `2*A000011(n)-A016116(n)` -/
def P8279182098756758332.Spec : Prop :=
  ∀ n, P8279182098756758332.a n = A000013 n

end A000013

/-! ## A000013.P16447972840637316773

`∑{d}[n-A004277(n), A000048(#)]`
-/

namespace A000013.P16447972840637316773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000048 d

end

end A000013.P16447972840637316773

namespace A000013

/-- `∑{d}[n-A004277(n), A000048(#)]` -/
def P16447972840637316773.Spec : Prop :=
  ∀ n, P16447972840637316773.a n = A000013 n

end A000013

/-! ## A000013.P16033613498450717594

`∑{d}[n+1, A008683(#)*A054168((n+1)/#-1)]`
-/

namespace A000013.P16033613498450717594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A054168 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A000013.P16033613498450717594

namespace A000013

/-- `∑{d}[n+1, A008683(#)*A054168((n+1)/#-1)]` -/
def P16033613498450717594.Spec : Prop :=
  ∀ n, P16033613498450717594.a n = A000013 n

end A000013

/-! ## A000013.P15744109578632920533

`A045677(n)+A128014(n)-A045676(n)`
-/

namespace A000013.P15744109578632920533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045677 n + (A128014 n - A045676 n)

end

end A000013.P15744109578632920533

namespace A000013

/-- `A045677(n)+A128014(n)-A045676(n)` -/
def P15744109578632920533.Spec : Prop :=
  ∀ n, P15744109578632920533.a n = A000013 n

theorem P15744109578632920533.correct : P15744109578632920533.Spec := by
  intro n
  simp only [A000013, Nat.add_sub_cancel, A000013.P15744109578632920533.a, A000013.P13330308426199228881.f1, A000013.P13330308426199228881.a, A045676, A045676.P8900542742695811205.a, A045677, A045677.P7167331430785454104.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A128014, A128014.P14973855882904292349.a, A000984, A000984.P7946844122574426130.a, A008683, A008683.P18254306604665478110.a, A045674, A045674.P8510068775620534225.f1, A045674.P8510068775620534225.a, A056295, A056295.P9438402425658344231.a, A000016, A000016.P4834367987804555054.a, A008965, A008965.P16924218572130557635.a, A028310, A028310.P18130301328277559831.a, A045683, A045683.P14787099194818843150.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A000007, A000007.P6599383543502402472.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A000048, A000048.P16452762028424782785.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A045686, A045686.P11325912773679884789.a, A085357, A085357.P3258697467278337073.a, A096010, A096010.P4903496547079153273.a, A106400, A106400.P11201390576172776043.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000013

/-! ## A000013.P625056767944929376

`A216957(n+1)-A011782(n)`
-/

namespace A000013.P625056767944929376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216957 (n + 1) - A011782 n

end

end A000013.P625056767944929376

namespace A000013

/-- `A216957(n+1)-A011782(n)` -/
def P625056767944929376.Spec : Prop :=
  ∀ n, P625056767944929376.a n = A000013 n

end A000013

/-! ## A000013.P15833949364951067347

`A011782(n)+A045677(n)-A045678(n)`
-/

namespace A000013.P15833949364951067347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (A045677 n - A045678 n)

end

end A000013.P15833949364951067347

namespace A000013

/-- `A011782(n)+A045677(n)-A045678(n)` -/
def P15833949364951067347.Spec : Prop :=
  ∀ n, P15833949364951067347.a n = A000013 n

theorem P15833949364951067347.correct : P15833949364951067347.Spec := by
  intro n
  simp only [A000013, Nat.add_sub_cancel, A000013.P15833949364951067347.a, A000013.P13330308426199228881.f1, A000013.P13330308426199228881.a, A011782, A011782.P7461078519819856082.a, A045677, A045677.P7167331430785454104.a, A045678, A045678.P6661484353096964123.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A008683, A008683.P18254306604665478110.a, A045674, A045674.P8510068775620534225.f1, A045674.P8510068775620534225.a, A056295, A056295.P9438402425658344231.a, A000016, A000016.P4834367987804555054.a, A008965, A008965.P16924218572130557635.a, A028310, A028310.P18130301328277559831.a, A045683, A045683.P14787099194818843150.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A000007, A000007.P6599383543502402472.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A000048, A000048.P16452762028424782785.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A045686, A045686.P11325912773679884789.a, A085357, A085357.P3258697467278337073.a, A096010, A096010.P4903496547079153273.a, A106400, A106400.P11201390576172776043.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000013

/-! ## A000013.P13828792446082541447

`A045629(n)-A386388(n)`
-/

namespace A000013.P13828792446082541447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045629 n - A386388 n

end

end A000013.P13828792446082541447

namespace A000013

/-- `A045629(n)-A386388(n)` -/
def P13828792446082541447.Spec : Prop :=
  ∀ n, P13828792446082541447.a n = A000013 n

end A000013

/-! ## A000013.P8744979122120373369

`A003239(n)-2*A386388(n)`
-/

namespace A000013.P8744979122120373369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003239 n - 2 * A386388 n

end

end A000013.P8744979122120373369

namespace A000013

/-- `A003239(n)-2*A386388(n)` -/
def P8744979122120373369.Spec : Prop :=
  ∀ n, P8744979122120373369.a n = A000013 n

end A000013

/-!
# A000014: Number of series-reduced trees with n nodes.

The programs for A000014, there is no canonical definition to state claims against.
-/

/-! ## A000014.P4276540076123439510

`Δ[A173383(log2(A011782(n)))]`
-/

namespace A000014.P4276540076123439510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173383 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000014.P4276540076123439510

/-! ## A000014.P6039077572307788409

`Δ[A173383(A289207(n+1))]`
-/

namespace A000014.P6039077572307788409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173383 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000014.P6039077572307788409

/-! ## A000014.P2982047167349465790

`Δ[A173383(A004273(n)-n)]`
-/

namespace A000014.P2982047167349465790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173383 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000014.P2982047167349465790

/-! ## A000014.P9173861395504221778

`Δ[A173383(n-A057427(n))]`
-/

namespace A000014.P9173861395504221778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173383 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000014.P9173861395504221778

/-! ## A000014.P13958159263811416831

`Δ[A173383(A289207(2*n)/2)]`
-/

namespace A000014.P13958159263811416831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173383 (SequenceMachineLib.roundAway ((A289207 (2 * n) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000014.P13958159263811416831

/-! ## A000014.P17135031121654552607

`Δ[A173383(A004526(A004273(n)))]`
-/

namespace A000014.P17135031121654552607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173383 (A004526 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000014.P17135031121654552607

/-! ## A000014.P11754524082380426111

`Δ[A173383(A004526(A004275(n)))]`
-/

namespace A000014.P11754524082380426111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173383 (A004526 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000014.P11754524082380426111

/-! ## A000014.P9740898795662717110

`A173383(n)-A173383(log2(A011782(n)))`
-/

namespace A000014.P9740898795662717110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173383 n - A173383 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A000014.P9740898795662717110

/-! ## A000014.P10442856491524082785

`A173383(n)-A173383(A289207(n+1))`
-/

namespace A000014.P10442856491524082785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173383 n - A173383 (A289207 (n + 1)).toNat

end

end A000014.P10442856491524082785

/-! ## A000014.P12317971461198933583

`A173383(n)-A173383(A004273(n)-n)`
-/

namespace A000014.P12317971461198933583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173383 n - A173383 (A004273 n - (n : ℤ)).toNat

end

end A000014.P12317971461198933583

/-! ## A000014.P18094833823075102910

`A173383(n)-A173383(n-A057427(n))`
-/

namespace A000014.P18094833823075102910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173383 n - A173383 ((n : ℤ) - A057427 n).toNat

end

end A000014.P18094833823075102910

/-! ## A000014.P14281322415603452095

`Δ[A173383(A049581(A161680(n)))]`
-/

namespace A000014.P14281322415603452095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173383 (A049581 (A161680 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000014.P14281322415603452095

/-!
# A000015: Smallest prime power >= n.

The programs for A000015, the canonical program `A000015.P2530082583010810879` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000015 has offset 1).

The definition of A000015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000015.P93866527466681780

`A188666(2*n+1)`
-/

namespace A000015.P93866527466681780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188666 (2 * n + 1)

end

end A000015.P93866527466681780

namespace A000015

/-- `A188666(2*n+1)` -/
def P93866527466681780.Spec : Prop :=
  ∀ n, P93866527466681780.a n = A000015 (n + 1)

end A000015

/-! ## A000015.P12459871753370261503

`A378370(n+1)+1+n`
-/

namespace A000015.P12459871753370261503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378370 (n + 1) + 1 + (n : ℤ)

end

end A000015.P12459871753370261503

namespace A000015

/-- `A378370(n+1)+1+n` -/
def P12459871753370261503.Spec : Prop :=
  ∀ n, P12459871753370261503.a n = A000015 (n + 1)

theorem P12459871753370261503.correct : P12459871753370261503.Spec := by
  intro n
  simp only [A000015, Nat.add_sub_cancel, A000015.P12459871753370261503.a, A000015.P2530082583010810879.a, A031218, A031218.P11079871404618641815.a, A097106, A097106.P14132093488680178125.a, A378370, A378370.P12947003761999164007.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A010055, A010055.P13747394931985969733.f1, A010055.P13747394931985969733.a, A025528, A025528.P16007803137134117632.f1, A025528.P16007803137134117632.a, A057820, A057820.P915405789854175386.a, A065515, A065515.P15129427044826637405.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000015

/-! ## A000015.P13740728430750842919

`A377780(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A000015.P13740728430750842919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A377780 n + a (n - 1)

end

end A000015.P13740728430750842919

namespace A000015

/-- `A377780(n)+a(n-1)` -/
def P13740728430750842919.Spec : Prop :=
  ∀ n, P13740728430750842919.a n = A000015 (n + 1)

end A000015

/-! ## A000015.P3005376117512501760

`A000961(∑[A345064(∏{p}[n, #])])`
-/

namespace A000015.P3005376117512501760
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345064 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000015.P3005376117512501760

namespace A000015

/-- `A000961(∑[A345064(∏{p}[n, #])])` -/
def P3005376117512501760.Spec : Prop :=
  ∀ n, P3005376117512501760.a n = A000015 (n + 1)

end A000015

/-! ## A000015.P2530082583010810879

`A097106(n+1)+A031218(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A000015

/-- `A097106(n+1)+A031218(n+1)` -/
def P2530082583010810879.Spec : Prop :=
  ∀ n, P2530082583010810879.a n = A000015 (n + 1)

theorem P2530082583010810879.correct : P2530082583010810879.Spec := by
  intro n
  simp only [A000015, Nat.add_sub_cancel]

end A000015

/-! ## A000015.P16484030101300623591

`A000961(∑[char[A000961(n+1)]]+1)`
-/

namespace A000015.P16484030101300623591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A000015.P16484030101300623591

namespace A000015

/-- `A000961(∑[char[A000961(n+1)]]+1)` -/
def P16484030101300623591.Spec : Prop :=
  ∀ n, P16484030101300623591.a n = A000015 (n + 1)

end A000015

/-! ## A000015.P3746674264050432290

`A000961(comp[A000961(n+1)+n]-n+1)`
-/

namespace A000015.P3746674264050432290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1).toNat

end

end A000015.P3746674264050432290

namespace A000015

/-- `A000961(comp[A000961(n+1)+n]-n+1)` -/
def P3746674264050432290.Spec : Prop :=
  ∀ n, P3746674264050432290.a n = A000015 (n + 1)

end A000015

/-! ## A000015.P8301887748917263258

`A120635(A031218(n+1))-A377780(n+1)`
-/

namespace A000015.P8301887748917263258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120635 (A031218 (n + 1)).toNat - A377780 (n + 1)

end

end A000015.P8301887748917263258

namespace A000015

/-- `A120635(A031218(n+1))-A377780(n+1)` -/
def P8301887748917263258.Spec : Prop :=
  ∀ n, P8301887748917263258.a n = A000015 (n + 1)

end A000015

/-! ## A000015.P7357699329734642878

`A080695(A188666(n+1+n))`
-/

namespace A000015.P7357699329734642878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080695 (A188666 (n + 1 + n)).toNat

end

end A000015.P7357699329734642878

namespace A000015

/-- `A080695(A188666(n+1+n))` -/
def P7357699329734642878.Spec : Prop :=
  ∀ n, P7357699329734642878.a n = A000015 (n + 1)

end A000015

/-!
# A000016: a(n) is the number of distinct (infinite) output sequences from binary n-stage shift register which feeds back the complement of the last stage.

The programs for A000016, the canonical program `A000016.P4834367987804555054` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000016 has offset 0).

The definition of A000016 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000016.P14245296906920505707

`abs(1-A096010(round(sqrt(n²+1))))`
-/

namespace A000016.P14245296906920505707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A096010 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat|

end

end A000016.P14245296906920505707

namespace A000016

/-- `abs(1-A096010(round(sqrt(n²+1))))` -/
def P14245296906920505707.Spec : Prop :=
  ∀ n, P14245296906920505707.a n = A000016 n

end A000016

/-! ## A000016.P3738127489607360000

`(A096010(n)-1)*a(1-char[1])` with `a(0)=1`
-/

namespace A000016.P3738127489607360000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A096010 n - 1) * a (1 - (if ∃ j, f1 j = n then 1 else 0))

end

end A000016.P3738127489607360000

namespace A000016

/-- `(A096010(n)-1)*a(1-char[1])` -/
def P3738127489607360000.Spec : Prop :=
  ∀ n, P3738127489607360000.a n = A000016 n

end A000016

/-! ## A000016.P4834367987804555054

`A096010(A000007(n)+n)-1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A000016

/-- `A096010(A000007(n)+n)-1` -/
def P4834367987804555054.Spec : Prop :=
  ∀ n, P4834367987804555054.a n = A000016 n

theorem P4834367987804555054.correct : P4834367987804555054.Spec := by
  intro n
  simp only [A000016]

end A000016

/-! ## A000016.P8352378672096423492

`∑{d}[n-A004277(n), A051841(#)]`
-/

namespace A000016.P8352378672096423492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A051841 d

end

end A000016.P8352378672096423492

namespace A000016

/-- `∑{d}[n-A004277(n), A051841(#)]` -/
def P8352378672096423492.Spec : Prop :=
  ∀ n, P8352378672096423492.a n = A000016 n

end A000016

/-! ## A000016.P3639402114982730668

`A096010(A057428(n)+1+n)-1`
-/

namespace A000016.P3639402114982730668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096010 (A057428 n + 1 + (n : ℤ)).toNat - 1

end

end A000016.P3639402114982730668

namespace A000016

/-- `A096010(A057428(n)+1+n)-1` -/
def P3639402114982730668.Spec : Prop :=
  ∀ n, P3639402114982730668.a n = A000016 n

theorem P3639402114982730668.correct : P3639402114982730668.Spec := by
  intro n
  simp only [A000016, Nat.add_sub_cancel, A000016.P3639402114982730668.a, A000016.P4834367987804555054.a, A000007, A000007.P6599383543502402472.a, A057428, A057428.P2999489532230392221.a, A096010, A096010.P4903496547079153273.a, A057427, A057427.P3058147525557661423.a, A063776, A063776.P939957080839248717.f1, A063776.P939957080839248717.a, A059841, A059841.P2666504972441551157.a, A064355, A064355.P15803301992756024606.a, A011946, A011946.P13849652241662667985.f1, A011946.P13849652241662667985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000016

/-! ## A000016.P8910818279596793018

`A063776(abs(1-n)+1)/2`
-/

namespace A000016.P8910818279596793018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063776 (|1 - (n : ℤ)| + 1).toNat : ℚ) / 2

end

end A000016.P8910818279596793018

namespace A000016

/-- `A063776(abs(1-n)+1)/2` -/
def P8910818279596793018.Spec : Prop :=
  ∀ n, P8910818279596793018.a n = (A000016 n : ℚ)

end A000016

/-! ## A000016.P248375543094807225

`A052823(n)+2-A000013(n)`
-/

namespace A000016.P248375543094807225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052823 n + (2 - A000013 n)

end

end A000016.P248375543094807225

namespace A000016

/-- `A052823(n)+2-A000013(n)` -/
def P248375543094807225.Spec : Prop :=
  ∀ n, P248375543094807225.a n = A000016 n

end A000016

/-! ## A000016.P11195986772821909364

`A000031(A000007(n)+n)-A000013(n)`
-/

namespace A000016.P11195986772821909364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (A000007 n + (n : ℤ)).toNat - A000013 n

end

end A000016.P11195986772821909364

namespace A000016

/-- `A000031(A000007(n)+n)-A000013(n)` -/
def P11195986772821909364.Spec : Prop :=
  ∀ n, P11195986772821909364.a n = A000016 n

end A000016

/-! ## A000016.P17794160820076326935

`A000007(n)-(A000013(n)-A000031(n))`
-/

namespace A000016.P17794160820076326935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - (A000013 n - A000031 n)

end

end A000016.P17794160820076326935

namespace A000016

/-- `A000007(n)-(A000013(n)-A000031(n))` -/
def P17794160820076326935.Spec : Prop :=
  ∀ n, P17794160820076326935.a n = A000016 n

end A000016

/-! ## A000016.P8500875009608658723

`A011782(n)-A327477(n)`
-/

namespace A000016.P8500875009608658723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A327477 n

end

end A000016.P8500875009608658723

namespace A000016

/-- `A011782(n)-A327477(n)` -/
def P8500875009608658723.Spec : Prop :=
  ∀ n, P8500875009608658723.a n = A000016 n

end A000016

/-! ## A000016.P3126198541148242575

`A053633(C(n, 2))`
-/

namespace A000016.P3126198541148242575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (Nat.choose n 2)

end

end A000016.P3126198541148242575

namespace A000016

/-- `A053633(C(n, 2))` -/
def P3126198541148242575.Spec : Prop :=
  ∀ n, P3126198541148242575.a n = A000016 n

end A000016

/-! ## A000016.P11833503725764270005

`A053633(∑[n]-n)`
-/

namespace A000016.P11833503725764270005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A000016.P11833503725764270005

namespace A000016

/-- `A053633(∑[n]-n)` -/
def P11833503725764270005.Spec : Prop :=
  ∀ n, P11833503725764270005.a n = A000016 n

end A000016

/-!
# A000018: Number of positive integers <= 2^n of form x^2 + 16*y^2.

The programs for A000018, there is no canonical definition to state claims against.
-/

/-! ## A000018.P2668481992948410300

`A003056(A112520(n)+A089848(n))`
-/

namespace A000018.P2668481992948410300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A112520 n + A089848 n).toNat

end

end A000018.P2668481992948410300

/-! ## A000018.P12474278857393418153

`A275281(n)+A003056(A111160(n))`
-/

namespace A000018.P12474278857393418153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275281 n + A003056 (A111160 n).toNat

end

end A000018.P12474278857393418153

/-! ## A000018.P14737734670751617333

`Δ[A073188(A073192(n))+A073174(n)]`
-/

namespace A000018.P14737734670751617333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A073192 n).toNat + A073174 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000018.P14737734670751617333

/-! ## A000018.P2831633149836999637

`A033810(A000108(n))-A054521(n+1)`
-/

namespace A000018.P2831633149836999637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033810 (A000108 n).toNat - A054521 (n + 1)

end

end A000018.P2831633149836999637

/-! ## A000018.P1872385014587114400

`A055175(A363465(n+2))`
-/

namespace A000018.P1872385014587114400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055175 (A363465 (n + 2)).toNat

end

end A000018.P1872385014587114400

/-!
# A000019: Number of primitive permutation groups of degree n.

The programs for A000019, there is no canonical definition to state claims against.
-/

/-! ## A000019.P9751047956963805769

`Δ[A173397(a(C(n, n+1))+n)]` with `a(0)=0`
-/

namespace A000019.P9751047956963805769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A173397 (f1 (Nat.choose n (n + 1)) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000019.P9751047956963805769

/-! ## A000019.P13643734735711479177

`abs(Δ[A173397(C(2, 2*n+1)+n)])`
-/

namespace A000019.P13643734735711479177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173397 (Nat.choose 2 (2 * n + 1) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A000019.P13643734735711479177

/-! ## A000019.P17197759233589667571

`Δ[A173397((2*a(n-1))%2+n)]` with `a(0)=0`
-/

namespace A000019.P17197759233589667571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A173397 (Int.tmod (2 * f1 (n - 1)) 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000019.P17197759233589667571

/-! ## A000019.P5513153943291952133

`Δ[A173397(C(2, n+2)+n)]+C(2, n+2)`
-/

namespace A000019.P5513153943291952133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173397 (Nat.choose 2 (n + 2) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.choose 2 (n + 2) : ℤ)

end

end A000019.P5513153943291952133

/-! ## A000019.P8604549774827696840

`abs(Δ[A173397(A000038(n)+n)])`
-/

namespace A000019.P8604549774827696840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173397 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A000019.P8604549774827696840

/-! ## A000019.P8967742329052740319

`Δ[A173397(A000038(a(n-1)+n)+n)]` with `a(0)=0`
-/

namespace A000019.P8967742329052740319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A173397 (A000038 (f1 (n - 1) + (n : ℤ)).toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000019.P8967742329052740319

/-!
# A000020: Number of primitive polynomials of degree n over GF(2) (version 2).

The programs for A000020, the canonical program `A000020.P13856012455953723901` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000020 has offset 1).

The definition of A000020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000020.P13856012455953723901

`A011260(n+1)+C(2, n+2)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A000020

/-- `A011260(n+1)+C(2, n+2)` -/
def P13856012455953723901.Spec : Prop :=
  ∀ n, P13856012455953723901.a n = A000020 (n + 1)

theorem P13856012455953723901.correct : P13856012455953723901.Spec := by
  intro n
  simp only [A000020, Nat.add_sub_cancel]

end A000020

/-! ## A000020.P8024308849565814696

`A011260(A054977(n)²+n)`
-/

namespace A000020.P8024308849565814696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (A054977 n ^ 2 + (n : ℤ)).toNat

end

end A000020.P8024308849565814696

namespace A000020

/-- `A011260(A054977(n)²+n)` -/
def P8024308849565814696.Spec : Prop :=
  ∀ n, P8024308849565814696.a n = A000020 (n + 1)

end A000020

/-! ## A000020.P15589762865971696971

`A011260(A063041(2*(n+1)))`
-/

namespace A000020.P15589762865971696971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (A063041 (2 * (n + 1))).toNat

end

end A000020.P15589762865971696971

namespace A000020

/-- `A011260(A063041(2*(n+1)))` -/
def P15589762865971696971.Spec : Prop :=
  ∀ n, P15589762865971696971.a n = A000020 (n + 1)

end A000020

/-! ## A000020.P11397251653183583023

`A011260(n+1)+A000007(n)`
-/

namespace A000020.P11397251653183583023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (n + 1) + A000007 n

end

end A000020.P11397251653183583023

namespace A000020

/-- `A011260(n+1)+A000007(n)` -/
def P11397251653183583023.Spec : Prop :=
  ∀ n, P11397251653183583023.a n = A000020 (n + 1)

end A000020

/-! ## A000020.P6498217029303855107

`A011260(n+1)*A054977(n)`
-/

namespace A000020.P6498217029303855107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (n + 1) * A054977 n

end

end A000020.P6498217029303855107

namespace A000020

/-- `A011260(n+1)*A054977(n)` -/
def P6498217029303855107.Spec : Prop :=
  ∀ n, P6498217029303855107.a n = A000020 (n + 1)

end A000020

/-! ## A000020.P9751409401113556306

`lcm(A006340(n), A011260(n+1))`
-/

namespace A000020.P9751409401113556306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006340 n) (A011260 (n + 1))

end

end A000020.P9751409401113556306

namespace A000020

/-- `lcm(A006340(n), A011260(n+1))` -/
def P9751409401113556306.Spec : Prop :=
  ∀ n, (P9751409401113556306.a n : ℤ) = A000020 (n + 1)

end A000020

/-! ## A000020.P3467501545363974964

`A011260(n+1)+A028310(n)-n`
-/

namespace A000020.P3467501545363974964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (n + 1) + (A028310 n - (n : ℤ))

end

end A000020.P3467501545363974964

namespace A000020

/-- `A011260(n+1)+A028310(n)-n` -/
def P3467501545363974964.Spec : Prop :=
  ∀ n, P3467501545363974964.a n = A000020 (n + 1)

end A000020

/-! ## A000020.P17736902930387499972

`A011260(n+1)+2-A036453(n+1)`
-/

namespace A000020.P17736902930387499972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (n + 1) + (2 - A036453 (n + 1))

end

end A000020.P17736902930387499972

namespace A000020

/-- `A011260(n+1)+2-A036453(n+1)` -/
def P17736902930387499972.Spec : Prop :=
  ∀ n, P17736902930387499972.a n = A000020 (n + 1)

end A000020

/-! ## A000020.P914987862630829634

`A011260(n+1)+val(A000040(n+1), 2)`
-/

namespace A000020.P914987862630829634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (n + 1) + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A000020.P914987862630829634

namespace A000020

/-- `A011260(n+1)+val(A000040(n+1), 2)` -/
def P914987862630829634.Spec : Prop :=
  ∀ n, P914987862630829634.a n = A000020 (n + 1)

end A000020

/-! ## A000020.P14644836488657552498

`A011260(n+1)+val(A014580(n+1), 2)`
-/

namespace A000020.P14644836488657552498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (n + 1) + (SequenceMachineLib.valuation (A014580 (n + 1)).toNat 2 : ℤ)

end

end A000020.P14644836488657552498

namespace A000020

/-- `A011260(n+1)+val(A014580(n+1), 2)` -/
def P14644836488657552498.Spec : Prop :=
  ∀ n, P14644836488657552498.a n = A000020 (n + 1)

end A000020

/-! ## A000020.P17110860585830929257

`ceil(2/A000580(n+7))*A011260(n+1)`
-/

namespace A000020.P17110860585830929257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (A000580 (n + 7) : ℚ)⌉ * A011260 (n + 1)

end

end A000020.P17110860585830929257

namespace A000020

/-- `ceil(2/A000580(n+7))*A011260(n+1)` -/
def P17110860585830929257.Spec : Prop :=
  ∀ n, P17110860585830929257.a n = A000020 (n + 1)

end A000020

/-! ## A000020.P13572615201453579294

`A011260(n+1)+A000035(A008458(n))`
-/

namespace A000020.P13572615201453579294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (n + 1) + A000035 (A008458 n).toNat

end

end A000020.P13572615201453579294

namespace A000020

/-- `A011260(n+1)+A000035(A008458(n))` -/
def P13572615201453579294.Spec : Prop :=
  ∀ n, P13572615201453579294.a n = A000020 (n + 1)

end A000020

/-! ## A000020.P5305406090501893314

`A230403(A014580(n+1))+A011260(n+1)`
-/

namespace A000020.P5305406090501893314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230403 (A014580 (n + 1)).toNat + A011260 (n + 1)

end

end A000020.P5305406090501893314

namespace A000020

/-- `A230403(A014580(n+1))+A011260(n+1)` -/
def P5305406090501893314.Spec : Prop :=
  ∀ n, P5305406090501893314.a n = A000020 (n + 1)

end A000020

/-! ## A000020.P2999925372444593353

`A011260(n+1)+2-A020639(A004277(n))`
-/

namespace A000020.P2999925372444593353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (n + 1) + (2 - A020639 (A004277 n).toNat)

end

end A000020.P2999925372444593353

namespace A000020

/-- `A011260(n+1)+2-A020639(A004277(n))` -/
def P2999925372444593353.Spec : Prop :=
  ∀ n, P2999925372444593353.a n = A000020 (n + 1)

end A000020

/-! ## A000020.P5059677536505621042

`A011260(n+1)+2-A020639(A315854(n))`
-/

namespace A000020.P5059677536505621042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (n + 1) + (2 - A020639 (A315854 n).toNat)

end

end A000020.P5059677536505621042

namespace A000020

/-- `A011260(n+1)+2-A020639(A315854(n))` -/
def P5059677536505621042.Spec : Prop :=
  ∀ n, P5059677536505621042.a n = A000020 (n + 1)

end A000020

/-! ## A000020.P16307612403124713682

`A011260((A004277(n)+2)/A036453(n+1))`
-/

namespace A000020.P16307612403124713682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (SequenceMachineLib.roundAway ((A004277 n + 2 : ℚ) / (A036453 (n + 1) : ℚ))).toNat

end

end A000020.P16307612403124713682

namespace A000020

/-- `A011260((A004277(n)+2)/A036453(n+1))` -/
def P16307612403124713682.Spec : Prop :=
  ∀ n, P16307612403124713682.a n = A000020 (n + 1)

end A000020

/-! ## A000020.P5852162755737907377

`A001037(n+1)+A011260(n+1)-A059966(n+1)`
-/

namespace A000020.P5852162755737907377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1) + (A011260 (n + 1) - A059966 (n + 1))

end

end A000020.P5852162755737907377

namespace A000020

/-- `A001037(n+1)+A011260(n+1)-A059966(n+1)` -/
def P5852162755737907377.Spec : Prop :=
  ∀ n, P5852162755737907377.a n = A000020 (n + 1)

end A000020

/-!
# A000021: Number of positive integers <= 2^n of form x^2 + 12 y^2.

The programs for A000021, there is no canonical definition to state claims against.
-/

/-! ## A000021.P5495807158604637732

`A000196(xor(A007716(n), A191394(n)))`
-/

namespace A000021.P5495807158604637732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.xor (A007716 n) (A191394 n)).toNat

end

end A000021.P5495807158604637732

/-! ## A000021.P18113810229165212172

`A137735(xor(A007716(n), A321408(n)))`
-/

namespace A000021.P18113810229165212172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (Int.xor (A007716 n) (A321408 n)).toNat

end

end A000021.P18113810229165212172

/-! ## A000021.P6389951932425319585

`A059966(n+1)-A086014(A005558(n))`
-/

namespace A000021.P6389951932425319585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (n + 1) - A086014 (A005558 n).toNat

end

end A000021.P6389951932425319585

/-! ## A000021.P9373061421518531296

`A213709(n)-Δ[A316717(A188567(n+1))]`
-/

namespace A000021.P9373061421518531296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316717 (A188567 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213709 n - (f1 (n + 1) - f1 n)

end

end A000021.P9373061421518531296

/-! ## A000021.P5544977594706903675

`A213709(n)-Δ[A316717(A206994(n+1))]`
-/

namespace A000021.P5544977594706903675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316717 (A206994 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213709 n - (f1 (n + 1) - f1 n)

end

end A000021.P5544977594706903675

/-!
# A000022: Number of centered hydrocarbons with n atoms.

The programs for A000022, there is no canonical definition to state claims against.
-/

/-! ## A000022.P10449888963589508561

`(A000602(n)-A000200(n))*(1-floor(acot(n)))`
-/

namespace A000022.P10449888963589508561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000602 n - A000200 n) * (1 - ⌊SequenceMachineLib.acot (n : ℝ)⌋)

end

end A000022.P10449888963589508561

/-! ## A000022.P5457350484053775708

`A000602(n)-(A000200(n)+A000007(n))`
-/

namespace A000022.P5457350484053775708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000602 n - (A000200 n + A000007 n)

end

end A000022.P5457350484053775708

/-! ## A000022.P17201171223891234460

`(A000602(n)-A000200(n))%A000351(n)`
-/

namespace A000022.P17201171223891234460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000602 n - A000200 n) (A000351 n)

end

end A000022.P17201171223891234460

/-! ## A000022.P7869001228337815310

`A000602(n)%A140354(n)-A000200(n)`
-/

namespace A000022.P7869001228337815310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000602 n) (A140354 n) - A000200 n

end

end A000022.P7869001228337815310

/-! ## A000022.P10583003241719458574

`lcm(A000200(n)-A000602(n), A134824(n))`
-/

namespace A000022.P10583003241719458574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000200 n - A000602 n) (A134824 n)

end

end A000022.P10583003241719458574

/-! ## A000022.P6759346326375646197

`A000602(n)-(A000200(n)+A008683(A008574(n)))`
-/

namespace A000022.P6759346326375646197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000602 n - (A000200 n + A008683 (A008574 n).toNat)

end

end A000022.P6759346326375646197

/-! ## A000022.P4826647956197693616

`(A000602(n)-A000200(n))*A279060(A279060(n))`
-/

namespace A000022.P4826647956197693616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000602 n - A000200 n) * A279060 (A279060 n).toNat

end

end A000022.P4826647956197693616

/-!
# A000023: Expansion of e.g.f. exp(-2*x)/(1-x).

The programs for A000023, the canonical program `A000023.P3084959231579950448` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000023 has offset 0).

The definition of A000023 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000023.P3084959231579950448

`(n-2)*a(n-1)+2*(n-1)*a(n-2)` with `a(0)=1, a(1)=-1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000023

/-- `(n-2)*a(n-1)+2*(n-1)*a(n-2)` -/
def P3084959231579950448.Spec : Prop :=
  ∀ n, P3084959231579950448.a n = A000023 n

theorem P3084959231579950448.correct : P3084959231579950448.Spec := by
  intro n
  simp only [A000023]

end A000023

/-! ## A000023.P12280876016897396503

`(-2)^n+n*a(n-1)` with `a(0)=1`
-/

namespace A000023.P12280876016897396503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-2) ^ n + (n : ℤ) * a (n - 1)

end

end A000023.P12280876016897396503

namespace A000023

/-- `(-2)^n+n*a(n-1)` -/
def P12280876016897396503.Spec : Prop :=
  ∀ n, P12280876016897396503.a n = A000023 n

end A000023

/-! ## A000023.P16288072460762918488

`(-2)^n+a(n-1)/n^(-1)` with `a(0)=1`
-/

namespace A000023.P16288072460762918488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((-2) ^ n : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A000023.P16288072460762918488

namespace A000023

/-- `(-2)^n+a(n-1)/n^(-1)` -/
def P16288072460762918488.Spec : Prop :=
  ∀ n, P16288072460762918488.a n = (A000023 n : ℚ)

end A000023

/-! ## A000023.P2988323508919868123

`A335111(n)+(-2)^n`
-/

namespace A000023.P2988323508919868123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335111 n + (-2) ^ n

end

end A000023.P2988323508919868123

namespace A000023

/-- `A335111(n)+(-2)^n` -/
def P2988323508919868123.Spec : Prop :=
  ∀ n, P2988323508919868123.a n = A000023 n

theorem P2988323508919868123.correct : P2988323508919868123.Spec := by
  intro n
  simp only [A000023, Nat.add_sub_cancel, A000023.P2988323508919868123.a, A000023.P3084959231579950448.a, A335111, A335111.P10838613545657729623.a, A122803, A122803.P220057073400853330.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000023

/-! ## A000023.P12060037074775024965

`A062282(n)-A063083(n)`
-/

namespace A000023.P12060037074775024965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062282 n - A063083 n

end

end A000023.P12060037074775024965

namespace A000023

/-- `A062282(n)-A063083(n)` -/
def P12060037074775024965.Spec : Prop :=
  ∀ n, P12060037074775024965.a n = A000023 n

end A000023

/-! ## A000023.P3794929107793201046

`A134833(n+1)+2*A134833(n)`
-/

namespace A000023.P3794929107793201046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134833 (n + 1) + 2 * A134833 n

end

end A000023.P3794929107793201046

namespace A000023

/-- `A134833(n+1)+2*A134833(n)` -/
def P3794929107793201046.Spec : Prop :=
  ∀ n, P3794929107793201046.a n = A000023 n

end A000023

/-! ## A000023.P3042408890248794493

`A346397(n+1)+2*A346397(n)`
-/

namespace A000023.P3042408890248794493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346397 (n + 1) + 2 * A346397 n

end

end A000023.P3042408890248794493

namespace A000023

/-- `A346397(n+1)+2*A346397(n)` -/
def P3042408890248794493.Spec : Prop :=
  ∀ n, P3042408890248794493.a n = A000023 n

end A000023

/-! ## A000023.P7720079248882924263

`A335111(n+1)/(n+1)`
-/

namespace A000023.P7720079248882924263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335111 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A000023.P7720079248882924263

namespace A000023

/-- `A335111(n+1)/(n+1)` -/
def P7720079248882924263.Spec : Prop :=
  ∀ n, P7720079248882924263.a n = (A000023 n : ℚ)

end A000023

/-! ## A000023.P14493232395436063246

`A063083(n+1)-A037256(n)`
-/

namespace A000023.P14493232395436063246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063083 (n + 1) - A037256 n

end

end A000023.P14493232395436063246

namespace A000023

/-- `A063083(n+1)-A037256(n)` -/
def P14493232395436063246.Spec : Prop :=
  ∀ n, P14493232395436063246.a n = A000023 n

end A000023

/-! ## A000023.P3713853914652890479

`A088127(n)-A062282(n+1)`
-/

namespace A000023.P3713853914652890479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088127 n - A062282 (n + 1)

end

end A000023.P3713853914652890479

namespace A000023

/-- `A088127(n)-A062282(n+1)` -/
def P3713853914652890479.Spec : Prop :=
  ∀ n, P3713853914652890479.a n = A000023 n

end A000023

/-!
# A000024: Number of positive integers <= 2^n of form x^2 + 10 y^2.

The programs for A000024, there is no canonical definition to state claims against.
-/

/-! ## A000024.P10510185906781188618

`A055086(A078160(n+1))-A317243(n+2)`
-/

namespace A000024.P10510185906781188618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A078160 (n + 1)).toNat - A317243 (n + 2)

end

end A000024.P10510185906781188618

/-! ## A000024.P17094977906793205411

`A020992(n)+A008683(A179610(n))`
-/

namespace A000024.P17094977906793205411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020992 n + A008683 (A179610 n).toNat

end

end A000024.P17094977906793205411

/-! ## A000024.P366756239931855890

`A333638(A054227(n)-A333382(n))`
-/

namespace A000024.P366756239931855890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333638 (A054227 n - A333382 n).toNat

end

end A000024.P366756239931855890

/-! ## A000024.P17201792432306476646

`A262689(C(A164508(n), A262689(n)))`
-/

namespace A000024.P17201792432306476646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (Nat.choose (A164508 n).toNat (A262689 n).toNat)

end

end A000024.P17201792432306476646

/-! ## A000024.P13569880921185082188

`xor(A088911(A001611(2*(n+2))), A320328(n))`
-/

namespace A000024.P13569880921185082188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088911 (A001611 (2 * (n + 2))).toNat) (A320328 n)

end

end A000024.P13569880921185082188

/-!
# A000025: Coefficients of the 3rd-order mock theta function f(q).

The programs for A000025, there is no canonical definition to state claims against.
-/

/-! ## A000025.P17620676829697903936

`A340601(n)-A340692(n)`
-/

namespace A000025.P17620676829697903936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340601 n - A340692 n

end

end A000025.P17620676829697903936

/-! ## A000025.P9042234408250834808

`A340601(n)-2*A101707(n)`
-/

namespace A000025.P9042234408250834808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340601 n - 2 * A101707 n

end

end A000025.P9042234408250834808

/-! ## A000025.P7520531171995100328

`2*A340601(n)-A000041(n)`
-/

namespace A000025.P7520531171995100328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A340601 n - A000041 n

end

end A000025.P7520531171995100328

/-! ## A000025.P17616309577011889327

`A000041(n)-4*A101707(n)`
-/

namespace A000025.P17616309577011889327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - 4 * A101707 n

end

end A000025.P17616309577011889327

/-! ## A000025.P11627827455537165010

`2*A340601(n)-∑[A002865(n)]`
-/

namespace A000025.P11627827455537165010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A340601 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000025.P11627827455537165010

/-! ## A000025.P14328672956808134242

`∑[A002865(n)]-4*A101707(n)`
-/

namespace A000025.P14328672956808134242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4 * A101707 n

end

end A000025.P14328672956808134242

/-! ## A000025.P18150143548148310115

`A340601(A028310(n))-(A000041(n)-A340601(n))`
-/

namespace A000025.P18150143548148310115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340601 (A028310 n).toNat - (A000041 n - A340601 n)

end

end A000025.P18150143548148310115

/-! ## A000025.P3999304698458795377

`2*A340601(n)-A139582(n)/2`
-/

namespace A000025.P3999304698458795377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A340601 n : ℚ) - (A139582 n : ℚ) / 2

end

end A000025.P3999304698458795377

/-! ## A000025.P15294191051423488897

`A033999(n)*A260460(n)`
-/

namespace A000025.P15294191051423488897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A260460 n

end

end A000025.P15294191051423488897

/-! ## A000025.P8044048732983185207

`(A004442(n)-n)*A260460(n)`
-/

namespace A000025.P8044048732983185207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A260460 n

end

end A000025.P8044048732983185207

/-! ## A000025.P17573299369794808732

`A000041(n)-2*A340692(n)`
-/

namespace A000025.P17573299369794808732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - 2 * A340692 n

end

end A000025.P17573299369794808732

/-!
# A000026: Mosaic numbers or multiplicative projection of n: if n = Product (p_j^k_j) then a(n) = Product (p_j * k_j).

The programs for A000026, the canonical program `A000026.P14646158085172730513` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000026 has offset 1).

The definition of A000026 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A000026.P14646158085172730513

`A005361(n+1)*A007947(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000026

/-- `A005361(n+1)*A007947(n+1)` -/
def P14646158085172730513.Spec : Prop :=
  ∀ n, P14646158085172730513.a n = A000026 (n + 1)

theorem P14646158085172730513.correct : P14646158085172730513.Spec := by
  intro n
  simp only [A000026, Nat.add_sub_cancel]

end A000026

/-! ## A000026.P6860595673306943347

`∏{p}[n+1, #*val(n+1, #)]`
-/

namespace A000026.P6860595673306943347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p

end

end A000026.P6860595673306943347

namespace A000026

/-- `∏{p}[n+1, #*val(n+1, #)]` -/
def P6860595673306943347.Spec : Prop :=
  ∀ n, (P6860595673306943347.a n : ℤ) = A000026 (n + 1)

end A000026

/-! ## A000026.P7794617032498506605

`∏{p}[n+1, #]*∏{e}[n+1, #]`
-/

namespace A000026.P7794617032498506605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), p) * (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A000026.P7794617032498506605

namespace A000026

/-- `∏{p}[n+1, #]*∏{e}[n+1, #]` -/
def P7794617032498506605.Spec : Prop :=
  ∀ n, (P7794617032498506605.a n : ℤ) = A000026 (n + 1)

theorem P7794617032498506605.correct : P7794617032498506605.Spec := by
  intro n
  simp only [A000026, Nat.add_sub_cancel, A000026.P7794617032498506605.f1, A000026.P7794617032498506605.f2, A000026.P7794617032498506605.a, A000026.P14646158085172730513.a, A005361, A005361.P4811270261471152635.f1, A005361.P4811270261471152635.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000026

/-! ## A000026.P9472160171331764222

`A361265(n+1)/(n+1)`
-/

namespace A000026.P9472160171331764222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361265 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A000026.P9472160171331764222

namespace A000026

/-- `A361265(n+1)/(n+1)` -/
def P9472160171331764222.Spec : Prop :=
  ∀ n, P9472160171331764222.a n = (A000026 (n + 1) : ℚ)

end A000026

/-! ## A000026.P14531209209146049645

`A000005((n+1)/∏{p}[n+1, #])*∏{p}[n+1, #]`
-/

namespace A000026.P14531209209146049645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat * ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ)

end

end A000026.P14531209209146049645

namespace A000026

/-- `A000005((n+1)/∏{p}[n+1, #])*∏{p}[n+1, #]` -/
def P14531209209146049645.Spec : Prop :=
  ∀ n, P14531209209146049645.a n = A000026 (n + 1)

end A000026

/-! ## A000026.P16758447855385888479

`A369008(n+1)*A381588(n+1)`
-/

namespace A000026.P16758447855385888479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369008 (n + 1) * A381588 (n + 1)

end

end A000026.P16758447855385888479

namespace A000026

/-- `A369008(n+1)*A381588(n+1)` -/
def P16758447855385888479.Spec : Prop :=
  ∀ n, P16758447855385888479.a n = A000026 (n + 1)

end A000026

/-! ## A000026.P5317241949026595568

`A381613(n+1)*A381614(n+1)`
-/

namespace A000026.P5317241949026595568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381613 (n + 1) * A381614 (n + 1)

end

end A000026.P5317241949026595568

namespace A000026

/-- `A381613(n+1)*A381614(n+1)` -/
def P5317241949026595568.Spec : Prop :=
  ∀ n, P5317241949026595568.a n = A000026 (n + 1)

end A000026

/-! ## A000026.P13661214737823073485

`A361268(n+1)/A064549(n+1)`
-/

namespace A000026.P13661214737823073485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361268 (n + 1) : ℚ) / (A064549 (n + 1) : ℚ)

end

end A000026.P13661214737823073485

namespace A000026

/-- `A361268(n+1)/A064549(n+1)` -/
def P13661214737823073485.Spec : Prop :=
  ∀ n, P13661214737823073485.a n = (A000026 (n + 1) : ℚ)

end A000026

/-! ## A000026.P4794349921081744056

`(A183094(n+1)+1)*A007947(n+1)`
-/

namespace A000026.P4794349921081744056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A183094 (n + 1) + 1) * A007947 (n + 1)

end

end A000026.P4794349921081744056

namespace A000026

/-- `(A183094(n+1)+1)*A007947(n+1)` -/
def P4794349921081744056.Spec : Prop :=
  ∀ n, P4794349921081744056.a n = A000026 (n + 1)

theorem P4794349921081744056.correct : P4794349921081744056.Spec := by
  intro n
  simp only [A000026, Nat.add_sub_cancel, A000026.P4794349921081744056.a, A000026.P14646158085172730513.a, A005361, A005361.P4811270261471152635.f1, A005361.P4811270261471152635.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A183094, A183094.P2300528291682876645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000026

/-! ## A000026.P4975327177907318507

`A000005(A003557(n+1))*A007947(n+1)`
-/

namespace A000026.P4975327177907318507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003557 (n + 1)).toNat * A007947 (n + 1)

end

end A000026.P4975327177907318507

namespace A000026

/-- `A000005(A003557(n+1))*A007947(n+1)` -/
def P4975327177907318507.Spec : Prop :=
  ∀ n, P4975327177907318507.a n = A000026 (n + 1)

end A000026

/-! ## A000026.P6347659252772389836

`A005361(n+1)*A015052(A015052(n+1))`
-/

namespace A000026.P6347659252772389836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A015052 (A015052 (n + 1)).toNat

end

end A000026.P6347659252772389836

namespace A000026

/-- `A005361(n+1)*A015052(A015052(n+1))` -/
def P6347659252772389836.Spec : Prop :=
  ∀ n, P6347659252772389836.a n = A000026 (n + 1)

end A000026

/-! ## A000026.P2589398240478477267

`A005361(n+1)*A015053(A015053(n+1))`
-/

namespace A000026.P2589398240478477267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A015053 (A015053 (n + 1)).toNat

end

end A000026.P2589398240478477267

namespace A000026

/-- `A005361(n+1)*A015053(A015053(n+1))` -/
def P2589398240478477267.Spec : Prop :=
  ∀ n, P2589398240478477267.a n = A000026 (n + 1)

end A000026

/-! ## A000026.P8006425798548858218

`A003963(A181819(n+1))*A007947(n+1)`
-/

namespace A000026.P8006425798548858218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A181819 (n + 1)).toNat * A007947 (n + 1)

end

end A000026.P8006425798548858218

namespace A000026

/-- `A003963(A181819(n+1))*A007947(n+1)` -/
def P8006425798548858218.Spec : Prop :=
  ∀ n, P8006425798548858218.a n = A000026 (n + 1)

end A000026

/-! ## A000026.P2076827431966928913

`A000005(A336551(n+1)+1)*A007947(n+1)`
-/

namespace A000026.P2076827431966928913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A336551 (n + 1) + 1).toNat * A007947 (n + 1)

end

end A000026.P2076827431966928913

namespace A000026

/-- `A000005(A336551(n+1)+1)*A007947(n+1)` -/
def P2076827431966928913.Spec : Prop :=
  ∀ n, P2076827431966928913.a n = A000026 (n + 1)

end A000026

/-! ## A000026.P7350138021186987117

`A000005(A003557(n+1))*∏{d}[n+1, A089026(#)]`
-/

namespace A000026.P7350138021186987117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003557 (n + 1)).toNat * (∏ d ∈ Nat.divisors (f1 n), A089026 d)

end

end A000026.P7350138021186987117

namespace A000026

/-- `A000005(A003557(n+1))*∏{d}[n+1, A089026(#)]` -/
def P7350138021186987117.Spec : Prop :=
  ∀ n, P7350138021186987117.a n = A000026 (n + 1)

end A000026

/-! ## A000026.P15978463399178355023

`(A039696(n+1)-A007947(n+1))*A007947(n+1)`
-/

namespace A000026.P15978463399178355023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039696 (n + 1) - A007947 (n + 1)) * A007947 (n + 1)

end

end A000026.P15978463399178355023

namespace A000026

/-- `(A039696(n+1)-A007947(n+1))*A007947(n+1)` -/
def P15978463399178355023.Spec : Prop :=
  ∀ n, P15978463399178355023.a n = A000026 (n + 1)

theorem P15978463399178355023.correct : P15978463399178355023.Spec := by
  intro n
  simp only [A000026, Nat.add_sub_cancel, A000026.P15978463399178355023.a, A000026.P14646158085172730513.a, A005361, A005361.P4811270261471152635.f1, A005361.P4811270261471152635.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A039696, A039696.P2737647612043200767.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000026

/-! ## A000026.P8786579833010812491

`(A000005(n+1)-A183093(n+1))*A007947(n+1)`
-/

namespace A000026.P8786579833010812491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) - A183093 (n + 1)) * A007947 (n + 1)

end

end A000026.P8786579833010812491

namespace A000026

/-- `(A000005(n+1)-A183093(n+1))*A007947(n+1)` -/
def P8786579833010812491.Spec : Prop :=
  ∀ n, P8786579833010812491.a n = A000026 (n + 1)

theorem P8786579833010812491.correct : P8786579833010812491.Spec := by
  intro n
  simp only [A000026, Nat.add_sub_cancel, A000026.P8786579833010812491.a, A000026.P14646158085172730513.a, A000005, A000005.P16091521709108585461.a, A005361, A005361.P4811270261471152635.f1, A005361.P4811270261471152635.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A183093, A183093.P17608197149960352927.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000026

/-! ## A000026.P8701976135500991685

`A007947(n+1)/A003557(n+1)*A203639(n+1)`
-/

namespace A000026.P8701976135500991685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ) * (A203639 (n + 1) : ℚ)

end

end A000026.P8701976135500991685

namespace A000026

/-- `A007947(n+1)/A003557(n+1)*A203639(n+1)` -/
def P8701976135500991685.Spec : Prop :=
  ∀ n, P8701976135500991685.a n = (A000026 (n + 1) : ℚ)

end A000026

/-! ## A000026.P17636555695725568787

`A007947(n+1)/A048250(n+1)*A304411(n+1)`
-/

namespace A000026.P17636555695725568787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A048250 (n + 1) : ℚ) * (A304411 (n + 1) : ℚ)

end

end A000026.P17636555695725568787

namespace A000026

/-- `A007947(n+1)/A048250(n+1)*A304411(n+1)` -/
def P17636555695725568787.Spec : Prop :=
  ∀ n, P17636555695725568787.a n = (A000026 (n + 1) : ℚ)

end A000026

/-! ## A000026.P13249228021579355993

`A005361(n+1)*A057723(n+1)/A335341(n+1)`
-/

namespace A000026.P13249228021579355993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005361 (n + 1) * A057723 (n + 1) : ℚ) / (A335341 (n + 1) : ℚ)

end

end A000026.P13249228021579355993

namespace A000026

/-- `A005361(n+1)*A057723(n+1)/A335341(n+1)` -/
def P13249228021579355993.Spec : Prop :=
  ∀ n, P13249228021579355993.a n = (A000026 (n + 1) : ℚ)

end A000026

/-!
# A000027: The positive integers. Also called the natural numbers, the whole numbers or the counting numbers, but these terms are ambiguous.

The programs for A000027, the canonical program `A000027.P10331202704469894836` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000027 has offset 1).

The definition of A000027 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000027.P10331202704469894836

`n+1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000027

/-- `n+1` -/
def P10331202704469894836.Spec : Prop :=
  ∀ n, (P10331202704469894836.a n : ℤ) = A000027 (n + 1)

theorem P10331202704469894836.correct : P10331202704469894836.Spec := by
  intro n
  simp only [A000027, Nat.add_sub_cancel]

end A000027

/-!
# A000028: Let k = p_1^e_1 p_2^e_2 p_3^e_3 ... be the prime factorization of n. Sequence gives k such that the sum of the numbers of 1's in the binary expansions of e_1, e_2, e_3, ... is odd.

The programs for A000028, the canonical program `A000028.P8857618948248108747` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000028 has offset 1).

The definition of A000028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000028.P8857618948248108747

`lt[A064179(n+1), 0]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A000028

/-- `lt[A064179(n+1), 0]+1` -/
def P8857618948248108747.Spec : Prop :=
  ∀ n, (P8857618948248108747.a n : ℤ) = A000028 (n + 1)

theorem P8857618948248108747.correct : P8857618948248108747.Spec := by
  intro n
  simp only [A000028, Nat.add_sub_cancel]

end A000028

/-! ## A000028.P7663033106957227161

`lt[A359464(n+1), 1]+1`
-/

namespace A000028.P7663033106957227161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359464 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A000028.P7663033106957227161

namespace A000028

/-- `lt[A359464(n+1), 1]+1` -/
def P7663033106957227161.Spec : Prop :=
  ∀ n, (P7663033106957227161.a n : ℤ) = A000028 (n + 1)

end A000028

/-! ## A000028.P6998262680539472224

`eq[1, A046645(n+2)%2]+2`
-/

namespace A000028.P6998262680539472224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046645 (n + 2)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A000028.P6998262680539472224

namespace A000028

/-- `eq[1, A046645(n+2)%2]+2` -/
def P6998262680539472224.Spec : Prop :=
  ∀ n, (P6998262680539472224.a n : ℤ) = A000028 (n + 1)

end A000028

/-! ## A000028.P2605732697290326505

`eq[1, and(1, A046645(n+1))]+1`
-/

namespace A000028.P2605732697290326505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A046645 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A000028.P2605732697290326505

namespace A000028

/-- `eq[1, and(1, A046645(n+1))]+1` -/
def P2605732697290326505.Spec : Prop :=
  ∀ n, (P2605732697290326505.a n : ℤ) = A000028 (n + 1)

end A000028

/-! ## A000028.P1844428824236702559

`∪[A030059(n+1), A066427(n+1)]`
-/

namespace A000028.P1844428824236702559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000028.P1844428824236702559

namespace A000028

/-- `∪[A030059(n+1), A066427(n+1)]` -/
def P1844428824236702559.Spec : Prop :=
  ∀ n, (P1844428824236702559.a n : ℤ) = A000028 (n + 1)

end A000028

/-! ## A000028.P16365240173774954661

`∪[A066427(n+1), A374467(n+1)]`
-/

namespace A000028.P16365240173774954661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000028.P16365240173774954661

namespace A000028

/-- `∪[A066427(n+1), A374467(n+1)]` -/
def P16365240173774954661.Spec : Prop :=
  ∀ n, (P16365240173774954661.a n : ℤ) = A000028 (n + 1)

end A000028

/-! ## A000028.P14557421330881101242

`∪[A374467(n+1), A378489(n+1)]`
-/

namespace A000028.P14557421330881101242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378489 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000028.P14557421330881101242

namespace A000028

/-- `∪[A374467(n+1), A378489(n+1)]` -/
def P14557421330881101242.Spec : Prop :=
  ∀ n, (P14557421330881101242.a n : ℤ) = A000028 (n + 1)

end A000028

/-! ## A000028.P3214592049198140698

`comp[A000379(n+1)-1]+1`
-/

namespace A000028.P3214592049198140698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000379 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A000028.P3214592049198140698

namespace A000028

/-- `comp[A000379(n+1)-1]+1` -/
def P3214592049198140698.Spec : Prop :=
  ∀ n, (P3214592049198140698.a n : ℤ) = A000028 (n + 1)

end A000028

/-! ## A000028.P2332521491210770529

`lt[A035363(A268386(n+1)), 1]+1`
-/

namespace A000028.P2332521491210770529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A268386 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A000028.P2332521491210770529

namespace A000028

/-- `lt[A035363(A268386(n+1)), 1]+1` -/
def P2332521491210770529.Spec : Prop :=
  ∀ n, (P2332521491210770529.a n : ℤ) = A000028 (n + 1)

end A000028

/-! ## A000028.P16032151897992012804

`eq[2, A046644(n+2)%3]+2`
-/

namespace A000028.P16032151897992012804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046644 (n + 2)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A000028.P16032151897992012804

namespace A000028

/-- `eq[2, A046644(n+2)%3]+2` -/
def P16032151897992012804.Spec : Prop :=
  ∀ n, (P16032151897992012804.a n : ℤ) = A000028 (n + 1)

end A000028

/-! ## A000028.P12811048041521832280

`eq[1, gcd(2, A302029(n+1))]+1`
-/

namespace A000028.P12811048041521832280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A302029 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A000028.P12811048041521832280

namespace A000028

/-- `eq[1, gcd(2, A302029(n+1))]+1` -/
def P12811048041521832280.Spec : Prop :=
  ∀ n, (P12811048041521832280.a n : ℤ) = A000028 (n + 1)

end A000028

/-! ## A000028.P1851502811888051062

`lt[A004016(A046644(n+1)), 1]+1`
-/

namespace A000028.P1851502811888051062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (A046644 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A000028.P1851502811888051062

namespace A000028

/-- `lt[A004016(A046644(n+1)), 1]+1` -/
def P1851502811888051062.Spec : Prop :=
  ∀ n, (P1851502811888051062.a n : ℤ) = A000028 (n + 1)

end A000028

/-! ## A000028.P147837070734737518

`∪[A066427(n+1), A374595(n+1)]`
-/

namespace A000028.P147837070734737518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000028.P147837070734737518

namespace A000028

/-- `∪[A066427(n+1), A374595(n+1)]` -/
def P147837070734737518.Spec : Prop :=
  ∀ n, (P147837070734737518.a n : ℤ) = A000028 (n + 1)

end A000028

/-!
# A000029: Number of necklaces with n beads of 2 colors, allowing turning over (these are also called bracelets).

The programs for A000029, the canonical program `A000029.P13945956715463538310` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000029 has offset 0).

The definition of A000029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000029.P10137807930085321541

`∑{d}[n+1, A054156(#-1)]`
-/

namespace A000029.P10137807930085321541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054156 (d - 1)

end

end A000029.P10137807930085321541

namespace A000029

/-- `∑{d}[n+1, A054156(#-1)]` -/
def P10137807930085321541.Spec : Prop :=
  ∀ n, P10137807930085321541.a n = A000029 n

end A000029

/-! ## A000029.P17500443443575272182

`A115119(n)+A001371(n)`
-/

namespace A000029.P17500443443575272182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115119 n + A001371 n

end

end A000029.P17500443443575272182

namespace A000029

/-- `A115119(n)+A001371(n)` -/
def P17500443443575272182.Spec : Prop :=
  ∀ n, P17500443443575272182.a n = A000029 n

end A000029

/-! ## A000029.P13945956715463538310

`A059076(n)+A029744(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A000029

/-- `A059076(n)+A029744(n+1)` -/
def P13945956715463538310.Spec : Prop :=
  ∀ n, P13945956715463538310.a n = A000029 n

theorem P13945956715463538310.correct : P13945956715463538310.Spec := by
  intro n
  simp only [A000029]

end A000029

/-! ## A000029.P11562641704393971418

`∑{d}[n+1, A008683(#)*A054155((n+1)/#-1)]`
-/

namespace A000029.P11562641704393971418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A054155 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A000029.P11562641704393971418

namespace A000029

/-- `∑{d}[n+1, A008683(#)*A054155((n+1)/#-1)]` -/
def P11562641704393971418.Spec : Prop :=
  ∀ n, P11562641704393971418.a n = A000029 n

end A000029

/-! ## A000029.P16571742849335917579

`A091696(n)+A007318(a(A106594(n+1)))` with `a(0)=1`
-/

namespace A000029.P16571742849335917579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A091696 n + A007318 (a (A106594 (n + 1)).toNat).toNat

end

end A000029.P16571742849335917579

namespace A000029

/-- `A091696(n)+A007318(a(A106594(n+1)))` -/
def P16571742849335917579.Spec : Prop :=
  ∀ n, P16571742849335917579.a n = A000029 n

end A000029

/-! ## A000029.P8695946880716305804

`A234538(a(A106594(n+1)))+A091696(n)` with `a(0)=1`
-/

namespace A000029.P8695946880716305804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A234538 (a (A106594 (n + 1)).toNat).toNat + A091696 n

end

end A000029.P8695946880716305804

namespace A000029

/-- `A234538(a(A106594(n+1)))+A091696(n)` -/
def P8695946880716305804.Spec : Prop :=
  ∀ n, P8695946880716305804.a n = A000029 n

end A000029

/-! ## A000029.P4645432395190030633

`A000031(n)-A059076(n)`
-/

namespace A000029.P4645432395190030633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 n - A059076 n

end

end A000029.P4645432395190030633

namespace A000029

/-- `A000031(n)-A059076(n)` -/
def P4645432395190030633.Spec : Prop :=
  ∀ n, P4645432395190030633.a n = A000029 n

end A000029

/-! ## A000029.P2610809945152491194

`(A029744(n+1)+A000031(n))/2`
-/

namespace A000029.P2610809945152491194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029744 (n + 1) + A000031 n : ℚ) / 2

end

end A000029.P2610809945152491194

namespace A000029

/-- `(A029744(n+1)+A000031(n))/2` -/
def P2610809945152491194.Spec : Prop :=
  ∀ n, P2610809945152491194.a n = (A000029 n : ℚ)

end A000029

/-! ## A000029.P14232222898599925973

`A001037(n)+A066656(n)-A059076(n)`
-/

namespace A000029.P14232222898599925973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 n + (A066656 n - A059076 n)

end

end A000029.P14232222898599925973

namespace A000029

/-- `A001037(n)+A066656(n)-A059076(n)` -/
def P14232222898599925973.Spec : Prop :=
  ∀ n, P14232222898599925973.a n = A000029 n

end A000029

/-! ## A000029.P9859526524123025309

`A262232(n)+A266977(n)-A059076(n)`
-/

namespace A000029.P9859526524123025309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262232 n + (A266977 n - A059076 n)

end

end A000029.P9859526524123025309

namespace A000029

/-- `A262232(n)+A266977(n)-A059076(n)` -/
def P9859526524123025309.Spec : Prop :=
  ∀ n, P9859526524123025309.a n = A000029 n

end A000029

/-! ## A000029.P176456410672945589

`A020639(A007782(n))+A052823(n)-A059076(n)`
-/

namespace A000029.P176456410672945589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007782 n).toNat + (A052823 n - A059076 n)

end

end A000029.P176456410672945589

namespace A000029

/-- `A020639(A007782(n))+A052823(n)-A059076(n)` -/
def P176456410672945589.Spec : Prop :=
  ∀ n, P176456410672945589.a n = A000029 n

end A000029

/-! ## A000029.P5819080595032267458

`A052310(∑[n])`
-/

namespace A000029.P5819080595032267458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052310 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000029.P5819080595032267458

namespace A000029

/-- `A052310(∑[n])` -/
def P5819080595032267458.Spec : Prop :=
  ∀ n, P5819080595032267458.a n = A000029 n

end A000029

/-! ## A000029.P16421346067961682210

`A052823(n)+A020639(A136028(n))-A059076(n)`
-/

namespace A000029.P16421346067961682210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052823 n + (A020639 (A136028 n).toNat - A059076 n)

end

end A000029.P16421346067961682210

namespace A000029

/-- `A052823(n)+A020639(A136028(n))-A059076(n)` -/
def P16421346067961682210.Spec : Prop :=
  ∀ n, P16421346067961682210.a n = A000029 n

end A000029

/-!
# A000030: Initial digit of n.

The programs for A000030, the canonical program `A000030.P4990867543733972260` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000030 has offset 0).

The definition of A000030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000030.P4990867543733972260

`a(floor(n/10))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=6, a(7)=7, a(8)=8, a(9)=9`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000030

/-- `a(floor(n/10))` -/
def P4990867543733972260.Spec : Prop :=
  ∀ n, (P4990867543733972260.a n : ℤ) = A000030 n

theorem P4990867543733972260.correct : P4990867543733972260.Spec := by
  intro n
  simp only [A000030]

end A000030

/-! ## A000030.P174167135040359248

`val(A061509(n), 2)`
-/

namespace A000030.P174167135040359248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A061509 n).toNat 2

end

end A000030.P174167135040359248

namespace A000030

/-- `val(A061509(n), 2)` -/
def P174167135040359248.Spec : Prop :=
  ∀ n, (P174167135040359248.a n : ℤ) = A000030 n

end A000030

/-! ## A000030.P11599013277806173145

`A004086(n)%10`
-/

namespace A000030.P11599013277806173145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 n) 10

end

end A000030.P11599013277806173145

namespace A000030

/-- `A004086(n)%10` -/
def P11599013277806173145.Spec : Prop :=
  ∀ n, P11599013277806173145.a n = A000030 n

end A000030

/-! ## A000030.P4953196147082184529

`A032762(n)%10`
-/

namespace A000030.P4953196147082184529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032762 n) 10

end

end A000030.P4953196147082184529

namespace A000030

/-- `A032762(n)%10` -/
def P4953196147082184529.Spec : Prop :=
  ∀ n, P4953196147082184529.a n = A000030 n

end A000030

/-! ## A000030.P12587112085111015628

`A056142(n)%10`
-/

namespace A000030.P12587112085111015628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056142 n) 10

end

end A000030.P12587112085111015628

namespace A000030

/-- `A056142(n)%10` -/
def P12587112085111015628.Spec : Prop :=
  ∀ n, P12587112085111015628.a n = A000030 n

end A000030

/-! ## A000030.P8251863557644727349

`A082216(n)%10`
-/

namespace A000030.P8251863557644727349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082216 n) 10

end

end A000030.P8251863557644727349

namespace A000030

/-- `A082216(n)%10` -/
def P8251863557644727349.Spec : Prop :=
  ∀ n, P8251863557644727349.a n = A000030 n

end A000030

/-! ## A000030.P2842385659257547645

`A262037(n)%10`
-/

namespace A000030.P2842385659257547645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262037 n) 10

end

end A000030.P2842385659257547645

namespace A000030

/-- `A262037(n)%10` -/
def P2842385659257547645.Spec : Prop :=
  ∀ n, P2842385659257547645.a n = A000030 n

end A000030

/-! ## A000030.P1140909599482239752

`A182324(n)-n`
-/

namespace A000030.P1140909599482239752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182324 n - (n : ℤ)

end

end A000030.P1140909599482239752

namespace A000030

/-- `A182324(n)-n` -/
def P1140909599482239752.Spec : Prop :=
  ∀ n, P1140909599482239752.a n = A000030 n

theorem P1140909599482239752.correct : P1140909599482239752.Spec := by
  intro n
  simp only [A000030, Nat.add_sub_cancel, A000030.P1140909599482239752.a, A000030.P4990867543733972260.a, A182324, A182324.P68523715600839783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000030

/-! ## A000030.P10958610775258908046

`dr(n-A217657(n))`
-/

namespace A000030.P10958610775258908046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((n : ℤ) - A217657 n)

end

end A000030.P10958610775258908046

namespace A000030

/-- `dr(n-A217657(n))` -/
def P10958610775258908046.Spec : Prop :=
  ∀ n, (P10958610775258908046.a n : ℤ) = A000030 n

end A000030

/-! ## A000030.P16444991125360126828

`A010879(A004086(n))`
-/

namespace A000030.P16444991125360126828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A004086 n).toNat

end

end A000030.P16444991125360126828

namespace A000030

/-- `A010879(A004086(n))` -/
def P16444991125360126828.Spec : Prop :=
  ∀ n, P16444991125360126828.a n = A000030 n

end A000030

/-! ## A000030.P9214236663803166182

`A010879(A032762(n))`
-/

namespace A000030.P9214236663803166182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A032762 n).toNat

end

end A000030.P9214236663803166182

namespace A000030

/-- `A010879(A032762(n))` -/
def P9214236663803166182.Spec : Prop :=
  ∀ n, P9214236663803166182.a n = A000030 n

end A000030

/-! ## A000030.P12912084020267887680

`A007376(A229186(n))`
-/

namespace A000030.P12912084020267887680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A229186 n).toNat

end

end A000030.P12912084020267887680

namespace A000030

/-- `A007376(A229186(n))` -/
def P12912084020267887680.Spec : Prop :=
  ∀ n, P12912084020267887680.a n = A000030 n

end A000030

/-! ## A000030.P10334789965586805492

`A054055(A355221(n))`
-/

namespace A000030.P10334789965586805492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A355221 n).toNat

end

end A000030.P10334789965586805492

namespace A000030

/-- `A054055(A355221(n))` -/
def P10334789965586805492.Spec : Prop :=
  ∀ n, P10334789965586805492.a n = A000030 n

end A000030

/-! ## A000030.P15685299414203316818

`A054054(A355222(n))`
-/

namespace A000030.P15685299414203316818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (A355222 n).toNat

end

end A000030.P15685299414203316818

namespace A000030

/-- `A054054(A355222(n))` -/
def P15685299414203316818.Spec : Prop :=
  ∀ n, P15685299414203316818.a n = A000030 n

end A000030

/-! ## A000030.P12852753423264327646

`A001622(A088577(n)-1)`
-/

namespace A000030.P12852753423264327646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A088577 n - 1).toNat + 1)

end

end A000030.P12852753423264327646

namespace A000030

/-- `A001622(A088577(n)-1)` -/
def P12852753423264327646.Spec : Prop :=
  ∀ n, P12852753423264327646.a n = A000030 n

end A000030

/-! ## A000030.P13654917356564801968

`A007376(A086044(n)-1)`
-/

namespace A000030.P13654917356564801968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A086044 n - 1).toNat

end

end A000030.P13654917356564801968

namespace A000030

/-- `A007376(A086044(n)-1)` -/
def P13654917356564801968.Spec : Prop :=
  ∀ n, P13654917356564801968.a n = A000030 n

end A000030

/-! ## A000030.P8731946954402658324

`A007376(A086045(n)-1)`
-/

namespace A000030.P8731946954402658324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A086045 n - 1).toNat

end

end A000030.P8731946954402658324

namespace A000030

/-- `A007376(A086045(n)-1)` -/
def P8731946954402658324.Spec : Prop :=
  ∀ n, P8731946954402658324.a n = A000030 n

end A000030

/-! ## A000030.P2493141552902267765

`A010879(n-A056965(n))`
-/

namespace A000030.P2493141552902267765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 ((n : ℤ) - A056965 n).toNat

end

end A000030.P2493141552902267765

namespace A000030

/-- `A010879(n-A056965(n))` -/
def P2493141552902267765.Spec : Prop :=
  ∀ n, P2493141552902267765.a n = A000030 n

end A000030

/-! ## A000030.P8721514535970251259

`A088133(n)-A010879(n)`
-/

namespace A000030.P8721514535970251259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088133 n - A010879 n

end

end A000030.P8721514535970251259

namespace A000030

/-- `A088133(n)-A010879(n)` -/
def P8721514535970251259.Spec : Prop :=
  ∀ n, P8721514535970251259.a n = A000030 n

theorem P8721514535970251259.correct : P8721514535970251259.Spec := by
  intro n
  simp only [A000030, Nat.add_sub_cancel, A000030.P8721514535970251259.a, A000030.P4990867543733972260.a, A010879, A010879.P10561743211919002802.a, A088133, A088133.P7364122066664671483.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000030

/-! ## A000030.P7716669691865395591

`A004086(n-A217657(n))`
-/

namespace A000030.P7716669691865395591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 ((n : ℤ) - A217657 n).toNat

end

end A000030.P7716669691865395591

namespace A000030

/-- `A004086(n-A217657(n))` -/
def P7716669691865395591.Spec : Prop :=
  ∀ n, P7716669691865395591.a n = A000030 n

end A000030

/-!
# A000031: Number of n-bead necklaces with 2 colors when turning over is not allowed; also number of output sequences from a simple n-stage cycling shift register; also number of binary irreducible polynomials whose degree divides n.

The programs for A000031, the canonical program `A000031.P16543801865445953573` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000031 has offset 0).

The definition of A000031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000031.P16543801865445953573

`∑{d}[n, A059966(#)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A000031

/-- `∑{d}[n, A059966(#)]+1` -/
def P16543801865445953573.Spec : Prop :=
  ∀ n, P16543801865445953573.a n = A000031 n

theorem P16543801865445953573.correct : P16543801865445953573.Spec := by
  intro n
  simp only [A000031]

end A000031

/-! ## A000031.P7484673952022295336

`∑{d}[n+1, A054079(#-1)]`
-/

namespace A000031.P7484673952022295336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054079 (d - 1)

end

end A000031.P7484673952022295336

namespace A000031

/-- `∑{d}[n+1, A054079(#-1)]` -/
def P7484673952022295336.Spec : Prop :=
  ∀ n, P7484673952022295336.a n = A000031 n

end A000031

/-! ## A000031.P1509714587037536792

`A008965(abs(1-n)%a(n-1)+1)+1` with `a(0)=1`
-/

namespace A000031.P1509714587037536792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008965 (Int.tmod |1 - (n : ℤ)| (a (n - 1)) + 1).toNat + 1

end

end A000031.P1509714587037536792

namespace A000031

/-- `A008965(abs(1-n)%a(n-1)+1)+1` -/
def P1509714587037536792.Spec : Prop :=
  ∀ n, P1509714587037536792.a n = A000031 n

end A000031

/-! ## A000031.P11050817373586959938

`A059076(n)+A000029(n)`
-/

namespace A000031.P11050817373586959938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059076 n + A000029 n

end

end A000031.P11050817373586959938

namespace A000031

/-- `A059076(n)+A000029(n)` -/
def P11050817373586959938.Spec : Prop :=
  ∀ n, P11050817373586959938.a n = A000031 n

end A000031

/-! ## A000031.P152178758685633927

`A066656(n)+A001037(n)`
-/

namespace A000031.P152178758685633927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066656 n + A001037 n

end

end A000031.P152178758685633927

namespace A000031

/-- `A066656(n)+A001037(n)` -/
def P152178758685633927.Spec : Prop :=
  ∀ n, P152178758685633927.a n = A000031 n

theorem P152178758685633927.correct : P152178758685633927.Spec := by
  intro n
  simp only [A000031, Nat.add_sub_cancel, A000031.P152178758685633927.a, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A001037, A001037.P3072020637183991904.a, A059966, A059966.P5188141675617584754.a, A066656, A066656.P10645985252166079910.a, A045664, A045664.P10163269847227854319.a, A253909, A253909.P4396033400827970723.a, A000007, A000007.P6599383543502402472.a, A027375, A027375.P1624201345270917595.f1, A027375.P1624201345270917595.a, A296302, A296302.P8637239320253714587.f1, A296302.P8637239320253714587.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000031

/-! ## A000031.P1080909994570130957

`A266977(n)+A262232(n)`
-/

namespace A000031.P1080909994570130957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266977 n + A262232 n

end

end A000031.P1080909994570130957

namespace A000031

/-- `A266977(n)+A262232(n)` -/
def P1080909994570130957.Spec : Prop :=
  ∀ n, P1080909994570130957.a n = A000031 n

end A000031

/-! ## A000031.P18134776462750783483

`A052823(n)+A036453(n+1)`
-/

namespace A000031.P18134776462750783483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052823 n + A036453 (n + 1)

end

end A000031.P18134776462750783483

namespace A000031

/-- `A052823(n)+A036453(n+1)` -/
def P18134776462750783483.Spec : Prop :=
  ∀ n, P18134776462750783483.a n = A000031 n

end A000031

/-! ## A000031.P14995309977878783350

`A052823(n)+A062157(n)²+1`
-/

namespace A000031.P14995309977878783350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052823 n + (A062157 n ^ 2 + 1)

end

end A000031.P14995309977878783350

namespace A000031

/-- `A052823(n)+A062157(n)²+1` -/
def P14995309977878783350.Spec : Prop :=
  ∀ n, P14995309977878783350.a n = A000031 n

end A000031

/-! ## A000031.P11757799628119472321

`A029744(n+1)+2*A059076(n)`
-/

namespace A000031.P11757799628119472321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 1) + 2 * A059076 n

end

end A000031.P11757799628119472321

namespace A000031

/-- `A029744(n+1)+2*A059076(n)` -/
def P11757799628119472321.Spec : Prop :=
  ∀ n, P11757799628119472321.a n = A000031 n

end A000031

/-! ## A000031.P8044482421004021273

`2*A000029(n)-A029744(n+1)`
-/

namespace A000031.P8044482421004021273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000029 n - A029744 (n + 1)

end

end A000031.P8044482421004021273

namespace A000031

/-- `2*A000029(n)-A029744(n+1)` -/
def P8044482421004021273.Spec : Prop :=
  ∀ n, P8044482421004021273.a n = A000031 n

end A000031

/-! ## A000031.P1604150775689732366

`∑{d}[n+1, A008683(#)*A054058((n+1)/#-1)]`
-/

namespace A000031.P1604150775689732366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A054058 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A000031.P1604150775689732366

namespace A000031

/-- `∑{d}[n+1, A008683(#)*A054058((n+1)/#-1)]` -/
def P1604150775689732366.Spec : Prop :=
  ∀ n, P1604150775689732366.a n = A000031 n

end A000031

/-! ## A000031.P2364260768239845218

`A052823(n)+A020639(A004277(n))`
-/

namespace A000031.P2364260768239845218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052823 n + A020639 (A004277 n).toNat

end

end A000031.P2364260768239845218

namespace A000031

/-- `A052823(n)+A020639(A004277(n))` -/
def P2364260768239845218.Spec : Prop :=
  ∀ n, P2364260768239845218.a n = A000031 n

end A000031

/-! ## A000031.P7587065015001431028

`A052823(n)+A000034(A093074(n+1))`
-/

namespace A000031.P7587065015001431028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052823 n + A000034 (A093074 (n + 1)).toNat

end

end A000031.P7587065015001431028

namespace A000031

/-- `A052823(n)+A000034(A093074(n+1))` -/
def P7587065015001431028.Spec : Prop :=
  ∀ n, P7587065015001431028.a n = A000031 n

end A000031

/-! ## A000031.P6811900120988042552

`A052823(n)+A020639(A209211(n+1))`
-/

namespace A000031.P6811900120988042552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052823 n + A020639 (A209211 (n + 1)).toNat

end

end A000031.P6811900120988042552

namespace A000031

/-- `A052823(n)+A020639(A209211(n+1))` -/
def P6811900120988042552.Spec : Prop :=
  ∀ n, P6811900120988042552.a n = A000031 n

end A000031

/-! ## A000031.P5975438170524792565

`A001371(n)+A115119(n)+A059076(n)`
-/

namespace A000031.P5975438170524792565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001371 n + (A115119 n + A059076 n)

end

end A000031.P5975438170524792565

namespace A000031

/-- `A001371(n)+A115119(n)+A059076(n)` -/
def P5975438170524792565.Spec : Prop :=
  ∀ n, P5975438170524792565.a n = A000031 n

end A000031

/-! ## A000031.P5616136743131998809

`A008965(A028310(n))+n/A028310(n)`
-/

namespace A000031.P5616136743131998809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008965 (A028310 n).toNat : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A000031.P5616136743131998809

namespace A000031

/-- `A008965(A028310(n))+n/A028310(n)` -/
def P5616136743131998809.Spec : Prop :=
  ∀ n, P5616136743131998809.a n = (A000031 n : ℚ)

end A000031

/-! ## A000031.P223890412971558328

`Δ[A052825(n)]+1`
-/

namespace A000031.P223890412971558328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A000031.P223890412971558328

namespace A000031

/-- `Δ[A052825(n)]+1` -/
def P223890412971558328.Spec : Prop :=
  ∀ n, P223890412971558328.a n = A000031 n

end A000031

/-! ## A000031.P386766448616945201

`∪[A100446(n), A100447(n)]`
-/

namespace A000031.P386766448616945201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100446 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100447 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000031.P386766448616945201

namespace A000031

/-- `∪[A100446(n), A100447(n)]` -/
def P386766448616945201.Spec : Prop :=
  ∀ n, (P386766448616945201.a n : ℤ) = A000031 n

end A000031

/-! ## A000031.P13788458063957356453

`2^n-A209970(n)`
-/

namespace A000031.P13788458063957356453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A209970 n

end

end A000031.P13788458063957356453

namespace A000031

/-- `2^n-A209970(n)` -/
def P13788458063957356453.Spec : Prop :=
  ∀ n, P13788458063957356453.a n = A000031 n

theorem P13788458063957356453.correct : P13788458063957356453.Spec := by
  intro n
  simp only [A000031, Nat.add_sub_cancel, A000031.P13788458063957356453.a, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A059966, A059966.P5188141675617584754.a, A209970, A209970.P62417713944158277.a, A001037, A001037.P3072020637183991904.a, A045664, A045664.P10163269847227854319.a, A253909, A253909.P4396033400827970723.a, A000007, A000007.P6599383543502402472.a, A027375, A027375.P1624201345270917595.f1, A027375.P1624201345270917595.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000031

/-!
# A000032: Lucas numbers beginning at 2: L(n) = L(n-1) + L(n-2), L(0) = 2, L(1) = 1.

The programs for A000032, the canonical program `A000032.P8352177345629330861` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000032 has offset 0).

The definition of A000032 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A000032.anchor (n : ℕ) : (A000032 n : ℝ) = goldenRatio ^ n + goldenConj ^ n` in `Proof.A000.A000032`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000032.P8352177345629330861

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000032

/-- `a(n-1)+a(n-2)` -/
def P8352177345629330861.Spec : Prop :=
  ∀ n, (P8352177345629330861.a n : ℤ) = A000032 n

theorem P8352177345629330861.correct : P8352177345629330861.Spec := by
  intro n
  simp only [A000032]

end A000032

/-! ## A000032.P1821702584083591394

`A014217(n)+((-1)^n+1)/2`
-/

namespace A000032.P1821702584083591394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014217 n : ℚ) + ((-1) ^ n + 1 : ℚ) / 2

end

end A000032.P1821702584083591394

namespace A000032

/-- `A014217(n)+((-1)^n+1)/2` -/
def P1821702584083591394.Spec : Prop :=
  ∀ n, P1821702584083591394.a n = (A000032 n : ℚ)

end A000032

/-! ## A000032.P14726235476533139139

`2^n*(cos(π/5)^n+cos(3*π/5)^n)`
-/

namespace A000032.P14726235476533139139
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℝ) * (Real.cos (Real.pi / 5) ^ n + Real.cos (3 * Real.pi / 5) ^ n)

end

end A000032.P14726235476533139139

namespace A000032

/-- `2^n*(cos(π/5)^n+cos(3*π/5)^n)` -/
def P14726235476533139139.Spec : Prop :=
  ∀ n, P14726235476533139139.a n = (A000032 n : ℝ)

end A000032

/-! ## A000032.P12534714118127537351

`sqrt(A001254(n))`
-/

namespace A000032.P12534714118127537351
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001254 n : ℝ)

end

end A000032.P12534714118127537351

namespace A000032

/-- `sqrt(A001254(n))` -/
def P12534714118127537351.Spec : Prop :=
  ∀ n, P12534714118127537351.a n = (A000032 n : ℝ)

end A000032

/-! ## A000032.P16662307858082016597

`ogf((-2+x)/(-1+x+x^2))`
-/

namespace A000032.P16662307858082016597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, -1, -1] n

end

end A000032.P16662307858082016597

namespace A000032

/-- `ogf((-2+x)/(-1+x+x^2))` -/
def P16662307858082016597.Spec : Prop :=
  ∀ n, P16662307858082016597.a n = A000032 n

end A000032

/-! ## A000032.P9282441536704597979

`a(n-1)-floor(-a(n-2))` with `a(0)=2, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A000032.P9282441536704597979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A000032.P9282441536704597979

namespace A000032

/-- `a(n-1)-floor(-a(n-2))` -/
def P9282441536704597979.Spec : Prop :=
  ∀ n, P9282441536704597979.a n = A000032 n

end A000032

/-! ## A000032.P8264135875316987998

`a(n-1)-ceil(-a(n-2))` with `a(0)=2, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A000032.P8264135875316987998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A000032.P8264135875316987998

namespace A000032

/-- `a(n-1)-ceil(-a(n-2))` -/
def P8264135875316987998.Spec : Prop :=
  ∀ n, P8264135875316987998.a n = A000032 n

end A000032

/-! ## A000032.P6172383903086147183

`a(n-1)-round(-a(n-2))` with `a(0)=2, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A000032.P6172383903086147183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A000032.P6172383903086147183

namespace A000032

/-- `a(n-1)-round(-a(n-2))` -/
def P6172383903086147183.Spec : Prop :=
  ∀ n, P6172383903086147183.a n = A000032 n

end A000032

/-! ## A000032.P4157331334765807302

`abs(Δ[a(n-2)-a(n-1)])` with `a(0)=3, a(1)=1`
-/

namespace A000032.P4157331334765807302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A000032.P4157331334765807302

namespace A000032

/-- `abs(Δ[a(n-2)-a(n-1)])` -/
def P4157331334765807302.Spec : Prop :=
  ∀ n, P4157331334765807302.a n = A000032 n

end A000032

/-! ## A000032.P14638280984916643848

`2*a(n-1)-a(n-3)` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A000032.P14638280984916643848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A000032.P14638280984916643848

namespace A000032

/-- `2*a(n-1)-a(n-3)` -/
def P14638280984916643848.Spec : Prop :=
  ∀ n, P14638280984916643848.a n = A000032 n

end A000032

/-! ## A000032.P1730984034190603418

`a(n-1)-(char[1]-a(n-2))` with `a(0)=2, a(1)=1`
-/

namespace A000032.P1730984034190603418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))

end

end A000032.P1730984034190603418

namespace A000032

/-- `a(n-1)-(char[1]-a(n-2))` -/
def P1730984034190603418.Spec : Prop :=
  ∀ n, P1730984034190603418.a n = A000032 n

end A000032

/-! ## A000032.P3429114371262510869

`1-floor(1-a(n-1)-a(n-2))` with `a(0)=2, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A000032.P3429114371262510869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  1 - (1 - a (n - 1) - a (n - 2))

end

end A000032.P3429114371262510869

namespace A000032

/-- `1-floor(1-a(n-1)-a(n-2))` -/
def P3429114371262510869.Spec : Prop :=
  ∀ n, P3429114371262510869.a n = A000032 n

end A000032

/-! ## A000032.P15455105792858094003

`n-∑[a(n-1)-(1-a(n-2))]` with `a(0)=-2, a(1)=2`
-/

namespace A000032.P15455105792858094003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000032.P15455105792858094003

namespace A000032

/-- `n-∑[a(n-1)-(1-a(n-2))]` -/
def P15455105792858094003.Spec : Prop :=
  ∀ n, P15455105792858094003.a n = A000032 n

end A000032

/-! ## A000032.P13207832555086744853

`2-(4/2-a(n-1)-a(n-2))` with `a(0)=2, a(1)=1`
-/

namespace A000032.P13207832555086744853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n a =>
  2 - ((4 : ℚ) / 2 - a (n - 1) - a (n - 2))

end

end A000032.P13207832555086744853

namespace A000032

/-- `2-(4/2-a(n-1)-a(n-2))` -/
def P13207832555086744853.Spec : Prop :=
  ∀ n, P13207832555086744853.a n = (A000032 n : ℚ)

end A000032

/-! ## A000032.P17995204626281745560

`A001612(n)-1`
-/

namespace A000032.P17995204626281745560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n - 1

end

end A000032.P17995204626281745560

namespace A000032

/-- `A001612(n)-1` -/
def P17995204626281745560.Spec : Prop :=
  ∀ n, P17995204626281745560.a n = A000032 n

end A000032

/-! ## A000032.P15316811305491543095

`A329723(n+2)`
-/

namespace A000032.P15316811305491543095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (n + 2)

end

end A000032.P15316811305491543095

namespace A000032

/-- `A329723(n+2)` -/
def P15316811305491543095.Spec : Prop :=
  ∀ n, P15316811305491543095.a n = A000032 n

end A000032

/-! ## A000032.P12115275924104788063

`A000211(n)-2`
-/

namespace A000032.P12115275924104788063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 n - 2

end

end A000032.P12115275924104788063

namespace A000032

/-- `A000211(n)-2` -/
def P12115275924104788063.Spec : Prop :=
  ∀ n, P12115275924104788063.a n = A000032 n

end A000032

/-! ## A000032.P2982083995773173106

`A127218(2*n)`
-/

namespace A000032.P2982083995773173106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127218 (2 * n)

end

end A000032.P2982083995773173106

namespace A000032

/-- `A127218(2*n)` -/
def P2982083995773173106.Spec : Prop :=
  ∀ n, P2982083995773173106.a n = A000032 n

end A000032

/-! ## A000032.P4649679433923701123

`A303427(2*n)`
-/

namespace A000032.P4649679433923701123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 (2 * n)

end

end A000032.P4649679433923701123

namespace A000032

/-- `A303427(2*n)` -/
def P4649679433923701123.Spec : Prop :=
  ∀ n, P4649679433923701123.a n = A000032 n

end A000032

/-! ## A000032.P7182367213169553676

`A302126(Δ[n²])`
-/

namespace A000032.P7182367213169553676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A000032.P7182367213169553676

namespace A000032

/-- `A302126(Δ[n²])` -/
def P7182367213169553676.Spec : Prop :=
  ∀ n, P7182367213169553676.a n = A000032 n

end A000032

/-!
# A000033: a(n) = A058087(n,n-2).

The programs for A000033, there is no canonical definition to state claims against.
-/

/-! ## A000033.P4562823690084727274

`(n+1)*A000426(n+1)`
-/

namespace A000033.P4562823690084727274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000426 (n + 1)

end

end A000033.P4562823690084727274

/-! ## A000033.P5719897761234781052

`A094314(∑[n+1]+2)`
-/

namespace A000033.P5719897761234781052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094314 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A000033.P5719897761234781052

/-! ## A000033.P10995841074146046629

`A156996(∑[n+1]+2)`
-/

namespace A000033.P10995841074146046629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156996 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A000033.P10995841074146046629

/-! ## A000033.P5954605716696685322

`Δ[A109469(round(sqrt(n²+1)))]`
-/

namespace A000033.P5954605716696685322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109469 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000033.P5954605716696685322

/-! ## A000033.P15699133540245290150

`(n+1)*A156368(∑[n]+1)`
-/

namespace A000033.P15699133540245290150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A156368 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A000033.P15699133540245290150

/-! ## A000033.P6255156412687564082

`record[Δ[A109469(A109497(n))]]`
-/

namespace A000033.P6255156412687564082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109469 (A109497 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000033.P6255156412687564082

/-! ## A000033.P111414386257411894

`(n+1)*Δ[A000222(n)]/A028310(n)`
-/

namespace A000033.P111414386257411894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000222 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((f1 (n + 1) - f1 n : ℚ) / (A028310 n : ℚ))

end

end A000033.P111414386257411894

/-! ## A000033.P3881818224660349572

`A000222(n+1)+A000426(n+1)-A000222(n)`
-/

namespace A000033.P3881818224660349572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000222 (n + 1) + (A000426 (n + 1) - A000222 n)

end

end A000033.P3881818224660349572

/-!
# A000034: Period 2: repeat [1, 2]; a(n) = 1 + (n mod 2).

The programs for A000034, the canonical program `A000034.P10773112074177680709` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000034 has offset 0).

The definition of A000034 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000034.P10773112074177680709

`1+n%2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000034

/-- `1+n%2` -/
def P10773112074177680709.Spec : Prop :=
  ∀ n, (P10773112074177680709.a n : ℤ) = A000034 n

theorem P10773112074177680709.correct : P10773112074177680709.Spec := by
  intro n
  simp only [A000034]

end A000034

/-!
# A000035: Period 2: repeat [0, 1]; a(n) = n mod 2; parity of n.

The programs for A000035, the canonical program `A000035.P2023072528413494694` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000035 has offset 0).

The definition of A000035 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A000035.anchor (n : ℕ) : A000035 n = ((n % 2 : ℕ) : ℤ)` in `Proof.A000.A000035`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000035.P2023072528413494694

`n%2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000035

/-- `n%2` -/
def P2023072528413494694.Spec : Prop :=
  ∀ n, (P2023072528413494694.a n : ℤ) = A000035 n

theorem P2023072528413494694.correct : P2023072528413494694.Spec := by
  intro n
  simp only [A000035]

end A000035

/-!
# A000037: Numbers that are not squares (or, the nonsquares).

The programs for A000037, the canonical program `A000037.P3199287792184117507` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000037 has offset 1).

The definition of A000037 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000037.P3199287792184117507

`n+1+floor(1/2+sqrt(n+1))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000037

/-- `n+1+floor(1/2+sqrt(n+1))` -/
def P3199287792184117507.Spec : Prop :=
  ∀ n, P3199287792184117507.a n = A000037 (n + 1)

theorem P3199287792184117507.correct : P3199287792184117507.Spec := by
  intro n
  simp only [A000037, Nat.add_sub_cancel]

end A000037

/-! ## A000037.P8666944656442958675

`comp[ceil(tan(n))²]`
-/

namespace A000037.P8666944656442958675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (n : ℝ)⌉ ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A000037.P8666944656442958675

namespace A000037

/-- `comp[ceil(tan(n))²]` -/
def P8666944656442958675.Spec : Prop :=
  ∀ n, (P8666944656442958675.a n : ℤ) = A000037 (n + 1)

end A000037

/-! ## A000037.P9735943257888133736

`comp[Δ[∑{p}[n, #]]²]`
-/

namespace A000037.P9735943257888133736
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A000037.P9735943257888133736

namespace A000037

/-- `comp[Δ[∑{p}[n, #]]²]` -/
def P9735943257888133736.Spec : Prop :=
  ∀ n, (P9735943257888133736.a n : ℤ) = A000037 (n + 1)

end A000037

/-! ## A000037.P9588798620761462835

`comp[floor(tan(-n))²]`
-/

namespace A000037.P9588798620761462835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (-(n : ℤ) : ℝ)⌋ ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A000037.P9588798620761462835

namespace A000037

/-- `comp[floor(tan(-n))²]` -/
def P9588798620761462835.Spec : Prop :=
  ∀ n, (P9588798620761462835.a n : ℤ) = A000037 (n + 1)

end A000037

/-! ## A000037.P7999157539632715536

`comp[A165486(n)]`
-/

namespace A000037.P7999157539632715536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165486 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A000037.P7999157539632715536

namespace A000037

/-- `comp[A165486(n)]` -/
def P7999157539632715536.Spec : Prop :=
  ∀ n, (P7999157539632715536.a n : ℤ) = A000037 (n + 1)

end A000037

/-! ## A000037.P3577445609425553892

`comp[A165488(n)]`
-/

namespace A000037.P3577445609425553892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165488 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A000037.P3577445609425553892

namespace A000037

/-- `comp[A165488(n)]` -/
def P3577445609425553892.Spec : Prop :=
  ∀ n, (P3577445609425553892.a n : ℤ) = A000037 (n + 1)

end A000037

/-! ## A000037.P13496637083521618062

`eq[2, A169695(n)]`
-/

namespace A000037.P13496637083521618062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000037.P13496637083521618062

namespace A000037

/-- `eq[2, A169695(n)]` -/
def P13496637083521618062.Spec : Prop :=
  ∀ n, (P13496637083521618062.a n : ℤ) = A000037 (n + 1)

end A000037

/-! ## A000037.P389129273059068651

`∑[A089800(n)!]`
-/

namespace A000037.P389129273059068651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A089800 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000037.P389129273059068651

namespace A000037

/-- `∑[A089800(n)!]` -/
def P389129273059068651.Spec : Prop :=
  ∀ n, (P389129273059068651.a n : ℤ) = A000037 (n + 1)

end A000037

/-! ## A000037.P2190976402467928646

`∪[A195437(n), A118011(n+1)]`
-/

namespace A000037.P2190976402467928646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195437 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000037.P2190976402467928646

namespace A000037

/-- `∪[A195437(n), A118011(n+1)]` -/
def P2190976402467928646.Spec : Prop :=
  ∀ n, (P2190976402467928646.a n : ℤ) = A000037 (n + 1)

end A000037

/-! ## A000037.P1590524407831684584

`∪[A000415(n+1), A004435(n+1)]`
-/

namespace A000037.P1590524407831684584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000037.P1590524407831684584

namespace A000037

/-- `∪[A000415(n+1), A004435(n+1)]` -/
def P1590524407831684584.Spec : Prop :=
  ∀ n, (P1590524407831684584.a n : ℤ) = A000037 (n + 1)

end A000037

/-! ## A000037.P8353818414885804313

`∩[comp[(n+1)²], comp[n²]]`
-/

namespace A000037.P8353818414885804313
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = x) n

end

end A000037.P8353818414885804313

namespace A000037

/-- `∩[comp[(n+1)²], comp[n²]]` -/
def P8353818414885804313.Spec : Prop :=
  ∀ n, (P8353818414885804313.a n : ℤ) = A000037 (n + 1)

end A000037

/-! ## A000037.P4761481696228196859

`A164514(n+2)`
-/

namespace A000037.P4761481696228196859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164514 (n + 2)

end

end A000037.P4761481696228196859

namespace A000037

/-- `A164514(n+2)` -/
def P4761481696228196859.Spec : Prop :=
  ∀ n, P4761481696228196859.a n = A000037 (n + 1)

end A000037

/-! ## A000037.P2129951074697712106

`filter[A386267(n+1), A049240(#)]`
-/

namespace A000037.P2129951074697712106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A000037.P2129951074697712106

namespace A000037

/-- `filter[A386267(n+1), A049240(#)]` -/
def P2129951074697712106.Spec : Prop :=
  ∀ n, P2129951074697712106.a n = A000037 (n + 1)

end A000037

/-! ## A000037.P7329693122385119868

`filter[A213367(n+1), A049240(#)]`
-/

namespace A000037.P7329693122385119868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A000037.P7329693122385119868

namespace A000037

/-- `filter[A213367(n+1), A049240(#)]` -/
def P7329693122385119868.Spec : Prop :=
  ∀ n, P7329693122385119868.a n = A000037 (n + 1)

end A000037

/-! ## A000037.P6590125469927376112

`filter[A376573(n+1), A049240(#)]`
-/

namespace A000037.P6590125469927376112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A000037.P6590125469927376112

namespace A000037

/-- `filter[A376573(n+1), A049240(#)]` -/
def P6590125469927376112.Spec : Prop :=
  ∀ n, P6590125469927376112.a n = A000037 (n + 1)

end A000037

/-! ## A000037.P1358425091011379626

`filter[n+2, A049240(#)]`
-/

namespace A000037.P1358425091011379626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j) = 1) n)

end

end A000037.P1358425091011379626

namespace A000037

/-- `filter[n+2, A049240(#)]` -/
def P1358425091011379626.Spec : Prop :=
  ∀ n, (P1358425091011379626.a n : ℤ) = A000037 (n + 1)

end A000037

/-! ## A000037.P2433368342765534446

`A020725(A183299(n+1))`
-/

namespace A000037.P2433368342765534446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A183299 (n + 1)).toNat

end

end A000037.P2433368342765534446

namespace A000037

/-- `A020725(A183299(n+1))` -/
def P2433368342765534446.Spec : Prop :=
  ∀ n, P2433368342765534446.a n = A000037 (n + 1)

end A000037

/-! ## A000037.P13532983334006496003

`eq[0, char[n²]]`
-/

namespace A000037.P13532983334006496003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A000037.P13532983334006496003

namespace A000037

/-- `eq[0, char[n²]]` -/
def P13532983334006496003.Spec : Prop :=
  ∀ n, (P13532983334006496003.a n : ℤ) = A000037 (n + 1)

end A000037

/-! ## A000037.P18172716392798149629

`lt[char[n²], 1]`
-/

namespace A000037.P18172716392798149629
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A000037.P18172716392798149629

namespace A000037

/-- `lt[char[n²], 1]` -/
def P18172716392798149629.Spec : Prop :=
  ∀ n, (P18172716392798149629.a n : ℤ) = A000037 (n + 1)

end A000037

/-!
# A000038: Twice A000007.

The programs for A000038, the canonical program `A000038.P13734959004655594922` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000038 has offset 0).

The definition of A000038 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000038.P13734959004655594922

`2*A000007(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000038

/-- `2*A000007(n)` -/
def P13734959004655594922.Spec : Prop :=
  ∀ n, P13734959004655594922.a n = A000038 n

theorem P13734959004655594922.correct : P13734959004655594922.Spec := by
  intro n
  simp only [A000038]

end A000038

/-!
# A000039: Coefficient of q^(2n) in the series expansion of Ramanujan's mock theta function f(q).

The programs for A000039, there is no canonical definition to state claims against.
-/

/-! ## A000039.P11257825936384045510

`A000025(2*n)`
-/

namespace A000039.P11257825936384045510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000025 (2 * n)

end

end A000039.P11257825936384045510

/-! ## A000039.P904799470918894462

`-record[-A000025(n)]`
-/

namespace A000039.P904799470918894462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A000025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000039.P904799470918894462

/-! ## A000039.P2832282784352741735

`1-record[1-A000025(n+1)]`
-/

namespace A000039.P2832282784352741735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000039.P2832282784352741735

/-! ## A000039.P12426611358522040968

`A000025(A005843(n))/A033999(n)²`
-/

namespace A000039.P12426611358522040968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000025 (A005843 n).toNat : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A000039.P12426611358522040968

/-! ## A000039.P15318604021210597221

`A000025(A004277(n))%A000070(n+1)`
-/

namespace A000039.P15318604021210597221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000025 (A004277 n).toNat) (A000070 (n + 1))

end

end A000039.P15318604021210597221

/-! ## A000039.P4382769224846530882

`A341624(A008458(n)+1)+A000025(n+n)`
-/

namespace A000039.P4382769224846530882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341624 (A008458 n + 1).toNat + A000025 (n + n)

end

end A000039.P4382769224846530882

/-! ## A000039.P11041468108151699244

`A000025(A000027(n+1)+n-1)+A000007(n+2)`
-/

namespace A000039.P11041468108151699244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000025 (A000027 (n + 1) + ((n : ℤ) - 1)).toNat + A000007 (n + 2)

end

end A000039.P11041468108151699244

/-! ## A000039.P13981783464380764144

`A340601(2*n)-2*A101707(2*n)`
-/

namespace A000039.P13981783464380764144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340601 (2 * n) - 2 * A101707 (2 * n)

end

end A000039.P13981783464380764144

/-! ## A000039.P14130762268995038601

`2*A340601(2*n)-A000041(2*n)`
-/

namespace A000039.P14130762268995038601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A340601 (2 * n) - A000041 (2 * n)

end

end A000039.P14130762268995038601

/-! ## A000039.P7278577225108160383

`A053250(2*n)-2*A053251(2*n)`
-/

namespace A000039.P7278577225108160383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053250 (2 * n) - 2 * A053251 (2 * n)

end

end A000039.P7278577225108160383

/-! ## A000039.P15664256654004644528

`2*A053250(2*n)-A132969(2*n)`
-/

namespace A000039.P15664256654004644528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053250 (2 * n) - A132969 (2 * n)

end

end A000039.P15664256654004644528

/-! ## A000039.P8131743238963228261

`2*A053250(2*n)-A132970(2*n)`
-/

namespace A000039.P8131743238963228261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053250 (2 * n) - A132970 (2 * n)

end

end A000039.P8131743238963228261

/-! ## A000039.P5479097053211125928

`2*A340601(2*n)-A035363(4*n)`
-/

namespace A000039.P5479097053211125928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A340601 (2 * n) - A035363 (4 * n)

end

end A000039.P5479097053211125928

/-! ## A000039.P7675850114387388298

`A260460(2*n)`
-/

namespace A000039.P7675850114387388298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260460 (2 * n)

end

end A000039.P7675850114387388298

/-! ## A000039.P13003745348885476364

`A340601(2*n)-A340692(2*n)`
-/

namespace A000039.P13003745348885476364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340601 (2 * n) - A340692 (2 * n)

end

end A000039.P13003745348885476364

/-! ## A000039.P11058996444410227467

`A000025(A004277(n))%A028329(n)`
-/

namespace A000039.P11058996444410227467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000025 (A004277 n).toNat) (A028329 n)

end

end A000039.P11058996444410227467

/-!
# A000040: The prime numbers.

The programs for A000040, the canonical program `A000040.P3917089138138407011` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000040 has offset 1).

The definition of A000040 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A000040.anchor (n : ℕ) (_hn : 1 ≤ n) : A000040 n = (Nat.nth Nat.Prime (n - 1) : ℤ)` in `Proof.A000.A000040`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000040.P13163269538432484529

`p?[ceil(2/acot(n))]`
-/

namespace A000040.P13163269538432484529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A000040.P13163269538432484529

namespace A000040

/-- `p?[ceil(2/acot(n))]` -/
def P13163269538432484529.Spec : Prop :=
  ∀ n, P13163269538432484529.a n = A000040 (n + 1)

end A000040

/-! ## A000040.P3917089138138407011

`p?[a(n-1)+2]` with `a(0)=2, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000040

/-- `p?[a(n-1)+2]` -/
def P3917089138138407011.Spec : Prop :=
  ∀ n, (P3917089138138407011.a n : ℤ) = A000040 (n + 1)

theorem P3917089138138407011.correct : P3917089138138407011.Spec := by
  intro n
  simp only [A000040, Nat.add_sub_cancel]

end A000040

/-! ## A000040.P16343803932377943712

`Δ[A007504(n)]`
-/

namespace A000040.P16343803932377943712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000040.P16343803932377943712

namespace A000040

/-- `Δ[A007504(n)]` -/
def P16343803932377943712.Spec : Prop :=
  ∀ n, P16343803932377943712.a n = A000040 (n + 1)

end A000040

/-! ## A000040.P5554006501327837035

`p?[A259153(n)]`
-/

namespace A000040.P5554006501327837035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A000040.P5554006501327837035

namespace A000040

/-- `p?[A259153(n)]` -/
def P5554006501327837035.Spec : Prop :=
  ∀ n, P5554006501327837035.a n = A000040 (n + 1)

end A000040

/-! ## A000040.P10960868160333650783

`abs(Δ[A008348(n)])`
-/

namespace A000040.P10960868160333650783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A000040.P10960868160333650783

namespace A000040

/-- `abs(Δ[A008348(n)])` -/
def P10960868160333650783.Spec : Prop :=
  ∀ n, P10960868160333650783.a n = A000040 (n + 1)

end A000040

/-! ## A000040.P12968754274762662241

`abs(Δ[A022837(n)])`
-/

namespace A000040.P12968754274762662241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A000040.P12968754274762662241

namespace A000040

/-- `abs(Δ[A022837(n)])` -/
def P12968754274762662241.Spec : Prop :=
  ∀ n, P12968754274762662241.a n = A000040 (n + 1)

end A000040

/-! ## A000040.P12721262855971155741

`sqrt(A001248(n+1))`
-/

namespace A000040.P12721262855971155741
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ)

end

end A000040.P12721262855971155741

namespace A000040

/-- `sqrt(A001248(n+1))` -/
def P12721262855971155741.Spec : Prop :=
  ∀ n, P12721262855971155741.a n = (A000040 (n + 1) : ℝ)

end A000040

/-! ## A000040.P2619816553452983557

`∑[A054541(n+1)]`
-/

namespace A000040.P2619816553452983557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000040.P2619816553452983557

namespace A000040

/-- `∑[A054541(n+1)]` -/
def P2619816553452983557.Spec : Prop :=
  ∀ n, P2619816553452983557.a n = A000040 (n + 1)

end A000040

/-! ## A000040.P15392692019909327874

`A006093(n+1)+1`
-/

namespace A000040.P15392692019909327874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

end

end A000040.P15392692019909327874

namespace A000040

/-- `A006093(n+1)+1` -/
def P15392692019909327874.Spec : Prop :=
  ∀ n, P15392692019909327874.a n = A000040 (n + 1)

theorem P15392692019909327874.correct : P15392692019909327874.Spec := by
  intro n
  simp only [A000040, Nat.add_sub_cancel, A000040.P15392692019909327874.a, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000040

/-! ## A000040.P13001308040655994519

`A008864(n+1)-1`
-/

namespace A000040.P13001308040655994519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 1

end

end A000040.P13001308040655994519

namespace A000040

/-- `A008864(n+1)-1` -/
def P13001308040655994519.Spec : Prop :=
  ∀ n, P13001308040655994519.a n = A000040 (n + 1)

theorem P13001308040655994519.correct : P13001308040655994519.Spec := by
  intro n
  simp only [A000040, Nat.add_sub_cancel, A000040.P13001308040655994519.a, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000040

/-! ## A000040.P9965098910696297713

`A040976(n+1)+2`
-/

namespace A000040.P9965098910696297713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 2

end

end A000040.P9965098910696297713

namespace A000040

/-- `A040976(n+1)+2` -/
def P9965098910696297713.Spec : Prop :=
  ∀ n, P9965098910696297713.a n = A000040 (n + 1)

theorem P9965098910696297713.correct : P9965098910696297713.Spec := by
  intro n
  simp only [A000040, Nat.add_sub_cancel, A000040.P9965098910696297713.a, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000040

/-! ## A000040.P4886013638527301666

`A001748(n+1)/3`
-/

namespace A000040.P4886013638527301666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (n + 1) : ℚ) / 3

end

end A000040.P4886013638527301666

namespace A000040

/-- `A001748(n+1)/3` -/
def P4886013638527301666.Spec : Prop :=
  ∀ n, P4886013638527301666.a n = (A000040 (n + 1) : ℚ)

theorem P4886013638527301666.correct : P4886013638527301666.Spec := by
  intro n
  simp only [A000040, Nat.add_sub_cancel, A000040.P4886013638527301666.a, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001748, A001748.P16019639290970068825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000040

/-! ## A000040.P15616775039307966916

`A014692(n+1)+n`
-/

namespace A000040.P15616775039307966916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) + (n : ℤ)

end

end A000040.P15616775039307966916

namespace A000040

/-- `A014692(n+1)+n` -/
def P15616775039307966916.Spec : Prop :=
  ∀ n, P15616775039307966916.a n = A000040 (n + 1)

end A000040

/-! ## A000040.P15964070280130138675

`∑{d}[n+1, A007444(#)]`
-/

namespace A000040.P15964070280130138675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007444 d

end

end A000040.P15964070280130138675

namespace A000040

/-- `∑{d}[n+1, A007444(#)]` -/
def P15964070280130138675.Spec : Prop :=
  ∀ n, P15964070280130138675.a n = A000040 (n + 1)

end A000040

/-! ## A000040.P16564966162741259792

`n+1+A014689(n+1)`
-/

namespace A000040.P16564966162741259792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A014689 (n + 1)

end

end A000040.P16564966162741259792

namespace A000040

/-- `n+1+A014689(n+1)` -/
def P16564966162741259792.Spec : Prop :=
  ∀ n, P16564966162741259792.a n = A000040 (n + 1)

theorem P16564966162741259792.correct : P16564966162741259792.Spec := by
  intro n
  simp only [A000040, Nat.add_sub_cancel, A000040.P16564966162741259792.a, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014689, A014689.P3456970834266250440.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000040

/-! ## A000040.P7273062441341553348

`A014688(n+1)-(n+1)`
-/

namespace A000040.P7273062441341553348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - (n + 1 : ℤ)

end

end A000040.P7273062441341553348

namespace A000040

/-- `A014688(n+1)-(n+1)` -/
def P7273062441341553348.Spec : Prop :=
  ∀ n, P7273062441341553348.a n = A000040 (n + 1)

end A000040

/-! ## A000040.P13724765739648579905

`a(n-1)+A001223(n)` with `a(0)=2`
-/

namespace A000040.P13724765739648579905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + A001223 n

end

end A000040.P13724765739648579905

namespace A000040

/-- `a(n-1)+A001223(n)` -/
def P13724765739648579905.Spec : Prop :=
  ∀ n, P13724765739648579905.a n = A000040 (n + 1)

end A000040

/-! ## A000040.P15524538623346880873

`A001043(n)-a(n-1)` with `a(0)=2`
-/

namespace A000040.P15524538623346880873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001043 n - a (n - 1)

end

end A000040.P15524538623346880873

namespace A000040

/-- `A001043(n)-a(n-1)` -/
def P15524538623346880873.Spec : Prop :=
  ∀ n, P15524538623346880873.a n = A000040 (n + 1)

end A000040

/-! ## A000040.P17742402179050029579

`∪[A042988(n), A042990(n)]`
-/

namespace A000040.P17742402179050029579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000040.P17742402179050029579

namespace A000040

/-- `∪[A042988(n), A042990(n)]` -/
def P17742402179050029579.Spec : Prop :=
  ∀ n, (P17742402179050029579.a n : ℤ) = A000040 (n + 1)

end A000040

/-!
# A000041: a(n) is the number of partitions of n (the partition numbers).

The programs for A000041, there is no canonical definition to state claims against.
-/

/-! ## A000041.P7785359472743495403

`A000701(n)+A046682(n)`
-/

namespace A000041.P7785359472743495403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 n + A046682 n

end

end A000041.P7785359472743495403

/-! ## A000041.P376943175067115877

`A027187(n)+A027193(n)`
-/

namespace A000041.P376943175067115877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n + A027193 n

end

end A000041.P376943175067115877

/-! ## A000041.P5173326189715605865

`A000700(n)+A330644(n)`
-/

namespace A000041.P5173326189715605865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n + A330644 n

end

end A000041.P5173326189715605865

/-! ## A000041.P13352497140880995545

`A045931(n)+A171967(n)`
-/

namespace A000041.P13352497140880995545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045931 n + A171967 n

end

end A000041.P13352497140880995545

/-! ## A000041.P6077225662992272148

`A130780(n)+A171966(n)-A045931(n)`
-/

namespace A000041.P6077225662992272148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130780 n + A171966 n - A045931 n

end

end A000041.P6077225662992272148

/-! ## A000041.P9344609859725822154

`A183011(n)/A183010(n)`
-/

namespace A000041.P9344609859725822154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183011 n : ℚ) / (A183010 n : ℚ)

end

end A000041.P9344609859725822154

/-! ## A000041.P7161789875120929721

`A035363(2*n)`
-/

namespace A000041.P7161789875120929721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n)

end

end A000041.P7161789875120929721

/-! ## A000041.P8980842734300590036

`A114099(9*n)`
-/

namespace A000041.P8980842734300590036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 (9 * n)

end

end A000041.P8980842734300590036

/-! ## A000041.P1339011942588837605

`∑[A002865(n)]`
-/

namespace A000041.P1339011942588837605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000041.P1339011942588837605

/-! ## A000041.P5942884606143606413

`1+A000065(n)`
-/

namespace A000041.P5942884606143606413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000065 n

end

end A000041.P5942884606143606413

/-! ## A000041.P1206683142644012026

`A133041(n)-n`
-/

namespace A000041.P1206683142644012026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (n : ℤ)

end

end A000041.P1206683142644012026

/-! ## A000041.P9315234451645017092

`∑[A085811(n+3)]`
-/

namespace A000041.P9315234451645017092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000041.P9315234451645017092

/-! ## A000041.P10725410654717237759

`∑{d}[n+1, A133732(#)]`
-/

namespace A000041.P10725410654717237759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A133732 d

end

end A000041.P10725410654717237759

/-! ## A000041.P11398735994278420280

`A187219(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A000041.P11398735994278420280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A187219 n + a (n - 1)

end

end A000041.P11398735994278420280

/-! ## A000041.P13340923653105257908

`A027336(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A000041.P13340923653105257908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A027336 n + a (n - 2)

end

end A000041.P13340923653105257908

/-! ## A000041.P692713430147712239

`A027337(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A000041.P692713430147712239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A027337 n + a (n - 3)

end

end A000041.P692713430147712239

/-! ## A000041.P18093111249215803566

`a(n-1)+A232697(n)-1` with `a(0)=1`
-/

namespace A000041.P18093111249215803566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A232697 n - 1)

end

end A000041.P18093111249215803566

/-! ## A000041.P8409296345334732354

`A018783(n)+A000837(n)`
-/

namespace A000041.P8409296345334732354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n + A000837 n

end

end A000041.P8409296345334732354

/-! ## A000041.P8018055902169989684

`A039900(n)+A003106(n)`
-/

namespace A000041.P8018055902169989684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039900 n + A003106 n

end

end A000041.P8018055902169989684

/-! ## A000041.P14702070157137137408

`A047967(n)+A000009(n)`
-/

namespace A000041.P14702070157137137408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n + A000009 n

end

end A000041.P14702070157137137408

/-!
# A000042: Unary representation of natural numbers.

The programs for A000042, the canonical program `A000042.P15089885815703470759` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000042 has offset 1).

The definition of A000042 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000042.P16825452412707821290

`(10^(n+1)-1)/9`
-/

namespace A000042.P16825452412707821290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ (n + 1) : ℤ) - 1 : ℚ) / 9

end

end A000042.P16825452412707821290

namespace A000042

/-- `(10^(n+1)-1)/9` -/
def P16825452412707821290.Spec : Prop :=
  ∀ n, P16825452412707821290.a n = (A000042 (n + 1) : ℚ)

theorem P16825452412707821290.correct : P16825452412707821290.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A000042, Nat.add_sub_cancel, A000042.P16825452412707821290.a, A000042.P15089885815703470759.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A000042, Nat.add_sub_cancel, A000042.P16825452412707821290.a, A000042.P15089885815703470759.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A000042

/-! ## A000042.P15089885815703470759

`10*a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000042

/-- `10*a(n-1)+1` -/
def P15089885815703470759.Spec : Prop :=
  ∀ n, (P15089885815703470759.a n : ℤ) = A000042 (n + 1)

theorem P15089885815703470759.correct : P15089885815703470759.Spec := by
  intro n
  simp only [A000042, Nat.add_sub_cancel]

end A000042

/-! ## A000042.P14641185990890157964

`ogf(1/(1-11x+10x^2))`
-/

namespace A000042.P14641185990890157964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -11, 10] n

end

end A000042.P14641185990890157964

namespace A000042

/-- `ogf(1/(1-11x+10x^2))` -/
def P14641185990890157964.Spec : Prop :=
  ∀ n, P14641185990890157964.a n = A000042 (n + 1)

end A000042

/-! ## A000042.P3967731725743067305

`lcm(10, a(n-1))+1` with `a(0)=1`
-/

namespace A000042.P3967731725743067305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 10 (a (n - 1)) + 1

end

end A000042.P3967731725743067305

namespace A000042

/-- `lcm(10, a(n-1))+1` -/
def P3967731725743067305.Spec : Prop :=
  ∀ n, (P3967731725743067305.a n : ℤ) = A000042 (n + 1)

end A000042

/-! ## A000042.P7175009359967012888

`or(1, 10*a(n-1))` with `a(0)=1`
-/

namespace A000042.P7175009359967012888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (10 * a (n - 1))

end

end A000042.P7175009359967012888

namespace A000042

/-- `or(1, 10*a(n-1))` -/
def P7175009359967012888.Spec : Prop :=
  ∀ n, (P7175009359967012888.a n : ℤ) = A000042 (n + 1)

end A000042

/-! ## A000042.P3322472949340165193

`xor(1, 10*a(n-1))` with `a(0)=1`
-/

namespace A000042.P3322472949340165193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (10 * a (n - 1))

end

end A000042.P3322472949340165193

namespace A000042

/-- `xor(1, 10*a(n-1))` -/
def P3322472949340165193.Spec : Prop :=
  ∀ n, (P3322472949340165193.a n : ℤ) = A000042 (n + 1)

end A000042

/-! ## A000042.P12292552132812369407

`10^n+a(n-1)` with `a(0)=1`
-/

namespace A000042.P12292552132812369407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  10 ^ n + a (n - 1)

end

end A000042.P12292552132812369407

namespace A000042

/-- `10^n+a(n-1)` -/
def P12292552132812369407.Spec : Prop :=
  ∀ n, (P12292552132812369407.a n : ℤ) = A000042 (n + 1)

end A000042

/-! ## A000042.P6905724432429894578

`abs(∑[10*a(n-1)])` with `a(0)=1`
-/

namespace A000042.P6905724432429894578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000042.P6905724432429894578

namespace A000042

/-- `abs(∑[10*a(n-1)])` -/
def P6905724432429894578.Spec : Prop :=
  ∀ n, (P6905724432429894578.a n : ℤ) = A000042 (n + 1)

end A000042

/-! ## A000042.P12283157822365622091

`floor(∑[10*a(n-1)])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A000042.P12283157822365622091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000042.P12283157822365622091

namespace A000042

/-- `floor(∑[10*a(n-1)])` -/
def P12283157822365622091.Spec : Prop :=
  ∀ n, (P12283157822365622091.a n : ℤ) = A000042 (n + 1)

end A000042

/-! ## A000042.P1395008667677491977

`ceil(∑[10*a(n-1)])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A000042.P1395008667677491977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000042.P1395008667677491977

namespace A000042

/-- `ceil(∑[10*a(n-1)])` -/
def P1395008667677491977.Spec : Prop :=
  ∀ n, (P1395008667677491977.a n : ℤ) = A000042 (n + 1)

end A000042

/-! ## A000042.P17830868806755688101

`round(∑[10*a(n-1)])` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A000042.P17830868806755688101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000042.P17830868806755688101

namespace A000042

/-- `round(∑[10*a(n-1)])` -/
def P17830868806755688101.Spec : Prop :=
  ∀ n, (P17830868806755688101.a n : ℤ) = A000042 (n + 1)

end A000042

/-! ## A000042.P7160301606194277956

`∑[10*a(n-1)]-1` with `a(0)=2, a(1)=10`
-/

namespace A000042.P7160301606194277956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 10] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A000042.P7160301606194277956

namespace A000042

/-- `∑[10*a(n-1)]-1` -/
def P7160301606194277956.Spec : Prop :=
  ∀ n, P7160301606194277956.a n = A000042 (n + 1)

end A000042

/-! ## A000042.P14851233098169337035

`3-2*(1-5*a(n-1))` with `a(0)=1`
-/

namespace A000042.P14851233098169337035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 - 2 * (1 - 5 * a (n - 1))

end

end A000042.P14851233098169337035

namespace A000042

/-- `3-2*(1-5*a(n-1))` -/
def P14851233098169337035.Spec : Prop :=
  ∀ n, P14851233098169337035.a n = A000042 (n + 1)

end A000042

/-! ## A000042.P529065498091584808

`Δ[A014824(n)]`
-/

namespace A000042.P529065498091584808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000042.P529065498091584808

namespace A000042

/-- `Δ[A014824(n)]` -/
def P529065498091584808.Spec : Prop :=
  ∀ n, P529065498091584808.a n = A000042 (n + 1)

end A000042

/-! ## A000042.P534530116346993857

`record[A287468(n)]`
-/

namespace A000042.P534530116346993857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000042.P534530116346993857

namespace A000042

/-- `record[A287468(n)]` -/
def P534530116346993857.Spec : Prop :=
  ∀ n, P534530116346993857.a n = A000042 (n + 1)

end A000042

/-! ## A000042.P639579595711631694

`record[A290416(n)]`
-/

namespace A000042.P639579595711631694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000042.P639579595711631694

namespace A000042

/-- `record[A290416(n)]` -/
def P639579595711631694.Spec : Prop :=
  ∀ n, P639579595711631694.a n = A000042 (n + 1)

end A000042

/-! ## A000042.P2304936362201520232

`record[A290420(n)]`
-/

namespace A000042.P2304936362201520232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000042.P2304936362201520232

namespace A000042

/-- `record[A290420(n)]` -/
def P2304936362201520232.Spec : Prop :=
  ∀ n, P2304936362201520232.a n = A000042 (n + 1)

end A000042

/-! ## A000042.P2773461787331164460

`record[A290671(n)]`
-/

namespace A000042.P2773461787331164460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000042.P2773461787331164460

namespace A000042

/-- `record[A290671(n)]` -/
def P2773461787331164460.Spec : Prop :=
  ∀ n, P2773461787331164460.a n = A000042 (n + 1)

end A000042

/-! ## A000042.P9864859807696516528

`record[A290676(n)]`
-/

namespace A000042.P9864859807696516528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290676 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000042.P9864859807696516528

namespace A000042

/-- `record[A290676(n)]` -/
def P9864859807696516528.Spec : Prop :=
  ∀ n, P9864859807696516528.a n = A000042 (n + 1)

end A000042

/-! ## A000042.P14365707884031644357

`A002275(n+1)`
-/

namespace A000042.P14365707884031644357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1)

end

end A000042.P14365707884031644357

namespace A000042

/-- `A002275(n+1)` -/
def P14365707884031644357.Spec : Prop :=
  ∀ n, P14365707884031644357.a n = A000042 (n + 1)

end A000042

/-!
# A000043: Mersenne exponents: primes p such that 2^p - 1 is prime. Then 2^p - 1 is called a Mersenne prime.

The programs for A000043, there is no canonical definition to state claims against.
-/

/-! ## A000043.P14061927274143232306

`A090748(n+1)+1`
-/

namespace A000043.P14061927274143232306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090748 (n + 1) + 1

end

end A000043.P14061927274143232306

/-! ## A000043.P5586092872023037346

`A050475(n+1)-1`
-/

namespace A000043.P5586092872023037346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050475 (n + 1) - 1

end

end A000043.P5586092872023037346

/-! ## A000043.P7163533224505884921

`A153798(n+1)+2`
-/

namespace A000043.P7163533224505884921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153798 (n + 1) + 2

end

end A000043.P7163533224505884921

/-! ## A000043.P43271185306546004

`A061645(n+1)/2`
-/

namespace A000043.P43271185306546004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061645 (n + 1) : ℚ) / 2

end

end A000043.P43271185306546004

/-! ## A000043.P8247059393205150947

`ceil(sqrt(A139115(n+1)))`
-/

namespace A000043.P8247059393205150947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A139115 (n + 1) : ℝ)⌉

end

end A000043.P8247059393205150947

/-!
# A000044: Dying rabbits: a(0) = 1; for 1 <= n <= 12, a(n) = Fibonacci(n); for n >= 13, a(n) = a(n-1) + a(n-2) - a(n-13).

The programs for A000044, there is no canonical definition to state claims against.
-/

/-! ## A000044.P1517015730700617960

`A191869(n)+a(n-1)` with `a(0)=1`
-/

namespace A000044.P1517015730700617960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A191869 n + a (n - 1)

end

end A000044.P1517015730700617960

/-! ## A000044.P8286890819704135460

`∑[A191869(abs(1-n)+1)]+1`
-/

namespace A000044.P8286890819704135460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191869 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A000044.P8286890819704135460

/-! ## A000044.P3567538375627108328

`∑[A191869(A000038(n)²+n)]`
-/

namespace A000044.P3567538375627108328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191869 (A000038 n ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000044.P3567538375627108328

/-! ## A000044.P4469981376996261132

`A191869(n)+floor(a(A023443(n)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A000044.P4469981376996261132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A191869 n + a (A023443 n).toNat

end

end A000044.P4469981376996261132

/-! ## A000044.P9309209259974232294

`∑[∏{e}[A000079(n), A191869(#)]]`
-/

namespace A000044.P9309209259974232294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A191869 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000044.P9309209259974232294

/-!
# A000045: Fibonacci numbers: F(n) = F(n-1) + F(n-2) with F(0) = 0 and F(1) = 1.

The programs for A000045, the canonical program `A000045.P11838749114346432762` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000045 has offset 0).

The definition of A000045 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A000045.anchor (n : ℕ) : A000045 n = (Nat.fib n : ℤ)` in `Proof.A000.A000045`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000045.P11838749114346432762

`2*a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000045

/-- `2*a(n-2)+a(n-3)` -/
def P11838749114346432762.Spec : Prop :=
  ∀ n, (P11838749114346432762.a n : ℤ) = A000045 n

theorem P11838749114346432762.correct : P11838749114346432762.Spec := by
  intro n
  simp only [A000045]

end A000045

/-! ## A000045.P14831479706637998627

`((1+sqrt(5))^n-(1-sqrt(5))^n)/(2^n*sqrt(5))`
-/

namespace A000045.P14831479706637998627
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (5 : ℝ)) ^ n - (1 - Real.sqrt (5 : ℝ)) ^ n) / ((2 ^ n : ℝ) * Real.sqrt (5 : ℝ))

end

end A000045.P14831479706637998627

namespace A000045

/-- `((1+sqrt(5))^n-(1-sqrt(5))^n)/(2^n*sqrt(5))` -/
def P14831479706637998627.Spec : Prop :=
  ∀ n, P14831479706637998627.a n = (A000045 n : ℝ)

theorem P14831479706637998627.correct : P14831479706637998627.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A000045, Nat.add_sub_cancel, A000045.P14831479706637998627.a, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 3 =>
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A000045, Nat.add_sub_cancel, A000045.P14831479706637998627.a, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply] at h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h2 h3 ⊢
      rw [← h2, ← h3]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A000045

/-! ## A000045.P12835276111398517534

`ogf(x/(1-x-x^2))`
-/

namespace A000045.P12835276111398517534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -1, -1] n

end

end A000045.P12835276111398517534

namespace A000045

/-- `ogf(x/(1-x-x^2))` -/
def P12835276111398517534.Spec : Prop :=
  ∀ n, P12835276111398517534.a n = A000045 n

end A000045

/-! ## A000045.P2680431529503857657

`round(ϕ*a(n-1))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A000045.P2680431529503857657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))

end

end A000045.P2680431529503857657

namespace A000045

/-- `round(ϕ*a(n-1))` -/
def P2680431529503857657.Spec : Prop :=
  ∀ n, P2680431529503857657.a n = A000045 n

end A000045

/-! ## A000045.P1633355882836688186

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A000045.P1633355882836688186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a (n - 2)

end

end A000045.P1633355882836688186

namespace A000045

/-- `a(n-1)+a(n-2)` -/
def P1633355882836688186.Spec : Prop :=
  ∀ n, (P1633355882836688186.a n : ℤ) = A000045 n

end A000045

/-! ## A000045.P18319501241953779934

`a(n-1)-floor(-a(n-2))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A000045.P18319501241953779934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A000045.P18319501241953779934

namespace A000045

/-- `a(n-1)-floor(-a(n-2))` -/
def P18319501241953779934.Spec : Prop :=
  ∀ n, P18319501241953779934.a n = A000045 n

end A000045

/-! ## A000045.P10763205367122701536

`a(n-1)-ceil(-a(n-2))` with `a(0)=0, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A000045.P10763205367122701536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A000045.P10763205367122701536

namespace A000045

/-- `a(n-1)-ceil(-a(n-2))` -/
def P10763205367122701536.Spec : Prop :=
  ∀ n, P10763205367122701536.a n = A000045 n

end A000045

/-! ## A000045.P15052158878657797986

`a(n-1)-round(-a(n-2))` with `a(0)=0, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A000045.P15052158878657797986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A000045.P15052158878657797986

namespace A000045

/-- `a(n-1)-round(-a(n-2))` -/
def P15052158878657797986.Spec : Prop :=
  ∀ n, P15052158878657797986.a n = A000045 n

end A000045

/-! ## A000045.P16330497754181172989

`abs(Δ[a(n-2)-a(n-1)])` with `a(0)=1, a(1)=1`
-/

namespace A000045.P16330497754181172989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A000045.P16330497754181172989

namespace A000045

/-- `abs(Δ[a(n-2)-a(n-1)])` -/
def P16330497754181172989.Spec : Prop :=
  ∀ n, P16330497754181172989.a n = A000045 n

end A000045

/-! ## A000045.P5351178708153718483

`a(n-1)-(char[1]-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A000045.P5351178708153718483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))

end

end A000045.P5351178708153718483

namespace A000045

/-- `a(n-1)-(char[1]-a(n-2))` -/
def P5351178708153718483.Spec : Prop :=
  ∀ n, P5351178708153718483.a n = A000045 n

end A000045

/-! ## A000045.P14975904111978044812

`1-floor(1-a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A000045.P14975904111978044812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 - (1 - a (n - 1) - a (n - 2))

end

end A000045.P14975904111978044812

namespace A000045

/-- `1-floor(1-a(n-1)-a(n-2))` -/
def P14975904111978044812.Spec : Prop :=
  ∀ n, P14975904111978044812.a n = A000045 n

end A000045

/-! ## A000045.P6351091800247479378

`∑[a(n-1)-(1-a(n-2))]-n` with `a(0)=0, a(1)=2`
-/

namespace A000045.P6351091800247479378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A000045.P6351091800247479378

namespace A000045

/-- `∑[a(n-1)-(1-a(n-2))]-n` -/
def P6351091800247479378.Spec : Prop :=
  ∀ n, P6351091800247479378.a n = A000045 n

end A000045

/-! ## A000045.P12237654743852951586

`2-(4/2-a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A000045.P12237654743852951586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 - ((4 : ℚ) / 2 - a (n - 1) - a (n - 2))

end

end A000045.P12237654743852951586

namespace A000045

/-- `2-(4/2-a(n-1)-a(n-2))` -/
def P12237654743852951586.Spec : Prop :=
  ∀ n, P12237654743852951586.a n = (A000045 n : ℚ)

end A000045

/-! ## A000045.P12800935325497546965

`abs(A236191(n))`
-/

namespace A000045.P12800935325497546965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236191 n|

end

end A000045.P12800935325497546965

namespace A000045

/-- `abs(A236191(n))` -/
def P12800935325497546965.Spec : Prop :=
  ∀ n, P12800935325497546965.a n = A000045 n

end A000045

/-! ## A000045.P16268933559902933249

`A212804(n+1)`
-/

namespace A000045.P16268933559902933249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1)

end

end A000045.P16268933559902933249

namespace A000045

/-- `A212804(n+1)` -/
def P16268933559902933249.Spec : Prop :=
  ∀ n, P16268933559902933249.a n = A000045 n

end A000045

/-! ## A000045.P14921794429819124054

`A001611(n)-1`
-/

namespace A000045.P14921794429819124054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - 1

end

end A000045.P14921794429819124054

namespace A000045

/-- `A001611(n)-1` -/
def P14921794429819124054.Spec : Prop :=
  ∀ n, P14921794429819124054.a n = A000045 n

end A000045

/-! ## A000045.P5362266873989571050

`A157725(n)-2`
-/

namespace A000045.P5362266873989571050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 n - 2

end

end A000045.P5362266873989571050

namespace A000045

/-- `A157725(n)-2` -/
def P5362266873989571050.Spec : Prop :=
  ∀ n, P5362266873989571050.a n = A000045 n

end A000045

/-! ## A000045.P11618987221186802073

`A103609(2*n)`
-/

namespace A000045.P11618987221186802073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n)

end

end A000045.P11618987221186802073

namespace A000045

/-- `A103609(2*n)` -/
def P11618987221186802073.Spec : Prop :=
  ∀ n, P11618987221186802073.a n = A000045 n

end A000045

/-! ## A000045.P4205819762641105550

`A157726(n)-3`
-/

namespace A000045.P4205819762641105550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 n - 3

end

end A000045.P4205819762641105550

namespace A000045

/-- `A157726(n)-3` -/
def P4205819762641105550.Spec : Prop :=
  ∀ n, P4205819762641105550.a n = A000045 n

end A000045

/-!
# A000046: Number of primitive n-bead necklaces (turning over is allowed) where complements are equivalent.

The programs for A000046, the canonical program `A000046.P15269567726961333018` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000046 has offset 0).

The definition of A000046 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000048, A308706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A000046.P15269567726961333018

`A000048(n)-A308706(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A000046

/-- `A000048(n)-A308706(n)` -/
def P15269567726961333018.Spec : Prop :=
  ∀ n, P15269567726961333018.a n = A000046 n

theorem P15269567726961333018.correct : P15269567726961333018.Spec := by
  intro n
  simp only [A000046]

end A000046

/-! ## A000046.P620829783741894031

`A056366(A233583(n+1))`
-/

namespace A000046.P620829783741894031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056366 (A233583 (n + 1)).toNat

end

end A000046.P620829783741894031

namespace A000046

/-- `A056366(A233583(n+1))` -/
def P620829783741894031.Spec : Prop :=
  ∀ n, P620829783741894031.a n = A000046 n

end A000046

/-! ## A000046.P14697752234542000210

`A056366(A289207(n)+2)`
-/

namespace A000046.P14697752234542000210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056366 (A289207 n + 2).toNat

end

end A000046.P14697752234542000210

namespace A000046

/-- `A056366(A289207(n)+2)` -/
def P14697752234542000210.Spec : Prop :=
  ∀ n, P14697752234542000210.a n = A000046 n

end A000046

/-! ## A000046.P5812726259841979810

`A056366(2-A046698(n)+n)`
-/

namespace A000046.P5812726259841979810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056366 (2 - A046698 n + (n : ℤ)).toNat

end

end A000046.P5812726259841979810

namespace A000046

/-- `A056366(2-A046698(n)+n)` -/
def P5812726259841979810.Spec : Prop :=
  ∀ n, P5812726259841979810.a n = A000046 n

end A000046

/-! ## A000046.P15826250805731380594

`A056366(2-(A046698(n)-n))`
-/

namespace A000046.P15826250805731380594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056366 (2 - (A046698 n - (n : ℤ))).toNat

end

end A000046.P15826250805731380594

namespace A000046

/-- `A056366(2-(A046698(n)-n))` -/
def P15826250805731380594.Spec : Prop :=
  ∀ n, P15826250805731380594.a n = A000046 n

end A000046

/-! ## A000046.P3840755746876658398

`A056366(C(2, A028310(n))+n)`
-/

namespace A000046.P3840755746876658398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056366 (Nat.choose 2 (A028310 n).toNat + n)

end

end A000046.P3840755746876658398

namespace A000046

/-- `A056366(C(2, A028310(n))+n)` -/
def P3840755746876658398.Spec : Prop :=
  ∀ n, P3840755746876658398.a n = A000046 n

end A000046

/-! ## A000046.P2071892702945661755

`A056366(A028310(abs(1-n))+1)`
-/

namespace A000046.P2071892702945661755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056366 (A028310 |1 - (n : ℤ)|.toNat + 1).toNat

end

end A000046.P2071892702945661755

namespace A000046

/-- `A056366(A028310(abs(1-n))+1)` -/
def P2071892702945661755.Spec : Prop :=
  ∀ n, P2071892702945661755.a n = A000046 n

end A000046

/-! ## A000046.P5688045348285483483

`A056366(A004280(n+1)+1-n)`
-/

namespace A000046.P5688045348285483483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056366 (A004280 (n + 1) + (1 - (n : ℤ))).toNat

end

end A000046.P5688045348285483483

namespace A000046

/-- `A056366(A004280(n+1)+1-n)` -/
def P5688045348285483483.Spec : Prop :=
  ∀ n, P5688045348285483483.a n = A000046 n

theorem P5688045348285483483.correct : P5688045348285483483.Spec := by
  intro n
  simp only [A000046, Nat.add_sub_cancel, A000046.P5688045348285483483.a, A000046.P15269567726961333018.a, A000048, A000048.P16452762028424782785.a, A004280, A004280.P7320490124392557510.a, A056366, A056366.P11464598418181165535.f1, A056366.P11464598418181165535.a, A308706, A308706.P3139874676178354333.a, A000013, A000013.P13330308426199228881.f1, A000013.P13330308426199228881.a, A008683, A008683.P18254306604665478110.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A056357, A056357.P4842207205344538288.a, A115118, A115118.P6546194884082821130.a, A233583, A233583.P15026547221992958741.a, A000011, A000011.P276434732339544012.a, A056295, A056295.P9438402425658344231.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A000016, A000016.P4834367987804555054.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A008965, A008965.P16924218572130557635.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000046

/-! ## A000046.P7682060517037261580

`a(A000002(n-1))*A056366(n)` with `a(0)=1, a(1)=1`
-/

namespace A000046.P7682060517037261580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A000002 (n - 1)).toNat * A056366 n

end

end A000046.P7682060517037261580

namespace A000046

/-- `a(A000002(n-1))*A056366(n)` -/
def P7682060517037261580.Spec : Prop :=
  ∀ n, P7682060517037261580.a n = A000046 n

end A000046

/-! ## A000046.P8397539967501479387

`A056366(A254667(A000038(n)+n))`
-/

namespace A000046.P8397539967501479387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056366 (A254667 (A000038 n + (n : ℤ)).toNat).toNat

end

end A000046.P8397539967501479387

namespace A000046

/-- `A056366(A254667(A000038(n)+n))` -/
def P8397539967501479387.Spec : Prop :=
  ∀ n, P8397539967501479387.a n = A000046 n

end A000046

/-! ## A000046.P15999890625956339123

`A056366(A028310(n))^A008611(C(n, n²))`
-/

namespace A000046.P15999890625956339123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056366 (A028310 n).toNat : ℚ) ^ (A008611 (Nat.choose n (n ^ 2)) : ℤ)

end

end A000046.P15999890625956339123

namespace A000046

/-- `A056366(A028310(n))^A008611(C(n, n²))` -/
def P15999890625956339123.Spec : Prop :=
  ∀ n, P15999890625956339123.a n = (A000046 n : ℚ)

end A000046

/-!
# A000047: Number of integers <= 2^n of form x^2 - 2y^2.

The programs for A000047, there is no canonical definition to state claims against.
-/

/-! ## A000047.P6006710978591533171

`A024417(or(1, A101400(n)))`
-/

namespace A000047.P6006710978591533171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (Int.lor 1 (A101400 n)).toNat

end

end A000047.P6006710978591533171

/-! ## A000047.P13504863948277535868

`A024417(xor(1, A101400(n))+1)`
-/

namespace A000047.P13504863948277535868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (Int.xor 1 (A101400 n) + 1).toNat

end

end A000047.P13504863948277535868

/-! ## A000047.P1264091220931019292

`A024417(A101400(n)+A000035(n))`
-/

namespace A000047.P1264091220931019292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A101400 n + A000035 n).toNat

end

end A000047.P1264091220931019292

/-! ## A000047.P12439222934257481824

`A024417(A134667(n)+A101400(n))`
-/

namespace A000047.P12439222934257481824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A134667 n + A101400 n).toNat

end

end A000047.P12439222934257481824

/-! ## A000047.P6436011573231838666

`A024417(xor(A000035(n), A101400(n)))`
-/

namespace A000047.P6436011573231838666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (Int.xor (A000035 n) (A101400 n)).toNat

end

end A000047.P6436011573231838666

/-!
# A000048: Number of n-bead necklaces with beads of 2 colors and primitive period n, when turning over is not allowed but the two colors can be interchanged.

The programs for A000048, the canonical program `A000048.P16452762028424782785` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000048 has offset 0).

The definition of A000048 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000048.P9603574909479162606

`∑{d}[n+1, A054174(#-1)]`
-/

namespace A000048.P9603574909479162606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054174 (d - 1)

end

end A000048.P9603574909479162606

namespace A000048

/-- `∑{d}[n+1, A054174(#-1)]` -/
def P9603574909479162606.Spec : Prop :=
  ∀ n, P9603574909479162606.a n = A000048 n

end A000048

/-! ## A000048.P16452762028424782785

`A056303(A233583(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A000048

/-- `A056303(A233583(n+1))` -/
def P16452762028424782785.Spec : Prop :=
  ∀ n, P16452762028424782785.a n = A000048 n

theorem P16452762028424782785.correct : P16452762028424782785.Spec := by
  intro n
  simp only [A000048]

end A000048

/-! ## A000048.P15728507823940070969

`A045686(n)+A045683(n)`
-/

namespace A000048.P15728507823940070969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045686 n + A045683 n

end

end A000048.P15728507823940070969

namespace A000048

/-- `A045686(n)+A045683(n)` -/
def P15728507823940070969.Spec : Prop :=
  ∀ n, P15728507823940070969.a n = A000048 n

theorem P15728507823940070969.correct : P15728507823940070969.Spec := by
  intro n
  simp only [A000048, Nat.add_sub_cancel, A000048.P15728507823940070969.a, A000048.P16452762028424782785.a, A045683, A045683.P14787099194818843150.a, A045686, A045686.P11325912773679884789.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A233583, A233583.P15026547221992958741.a, A008683, A008683.P18254306604665478110.a, A056295, A056295.P9438402425658344231.a, A056476, A056476.P12632563156965169968.a, A000016, A000016.P4834367987804555054.a, A008965, A008965.P16924218572130557635.a, A056481, A056481.P6036497099892352670.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A000007, A000007.P6599383543502402472.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A028310, A028310.P18130301328277559831.a, A056463, A056463.P6786534809649954337.f1, A056463.P6786534809649954337.a, A085357, A085357.P3258697467278337073.a, A096010, A096010.P4903496547079153273.a, A106400, A106400.P11201390576172776043.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000048

/-! ## A000048.P14326227492856204621

`A308706(n)+A000046(n)`
-/

namespace A000048.P14326227492856204621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308706 n + A000046 n

end

end A000048.P14326227492856204621

namespace A000048

/-- `A308706(n)+A000046(n)` -/
def P14326227492856204621.Spec : Prop :=
  ∀ n, P14326227492856204621.a n = A000048 n

theorem P14326227492856204621.correct : P14326227492856204621.Spec := by
  intro n
  simp only [A000048, Nat.add_sub_cancel, A000048.P14326227492856204621.a, A000048.P16452762028424782785.a, A000046, A000046.P15269567726961333018.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A233583, A233583.P15026547221992958741.a, A308706, A308706.P3139874676178354333.a, A000013, A000013.P13330308426199228881.f1, A000013.P13330308426199228881.a, A004280, A004280.P7320490124392557510.a, A008683, A008683.P18254306604665478110.a, A056295, A056295.P9438402425658344231.a, A056366, A056366.P11464598418181165535.f1, A056366.P11464598418181165535.a, A115118, A115118.P6546194884082821130.a, A000016, A000016.P4834367987804555054.a, A008965, A008965.P16924218572130557635.a, A056357, A056357.P4842207205344538288.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A000007, A000007.P6599383543502402472.a, A000011, A000011.P276434732339544012.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A085357, A085357.P3258697467278337073.a, A096010, A096010.P4903496547079153273.a, A106400, A106400.P11201390576172776043.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000048

/-! ## A000048.P12567588785285548579

`A000013(n)-A115118(n)`
-/

namespace A000048.P12567588785285548579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 n - A115118 n

end

end A000048.P12567588785285548579

namespace A000048

/-- `A000013(n)-A115118(n)` -/
def P12567588785285548579.Spec : Prop :=
  ∀ n, P12567588785285548579.a n = A000048 n

theorem P12567588785285548579.correct : P12567588785285548579.Spec := by
  intro n
  simp only [A000048, Nat.add_sub_cancel, A000048.P12567588785285548579.a, A000048.P16452762028424782785.a, A000013, A000013.P13330308426199228881.f1, A000013.P13330308426199228881.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A115118, A115118.P6546194884082821130.a, A233583, A233583.P15026547221992958741.a, A008683, A008683.P18254306604665478110.a, A056295, A056295.P9438402425658344231.a, A000016, A000016.P4834367987804555054.a, A008965, A008965.P16924218572130557635.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A000007, A000007.P6599383543502402472.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A085357, A085357.P3258697467278337073.a, A096010, A096010.P4903496547079153273.a, A106400, A106400.P11201390576172776043.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000048

/-! ## A000048.P14774374768331138948

`∑{d}[n+1, A008683(#)*A054172((n+1)/#-1)]`
-/

namespace A000048.P14774374768331138948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A054172 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A000048.P14774374768331138948

namespace A000048

/-- `∑{d}[n+1, A008683(#)*A054172((n+1)/#-1)]` -/
def P14774374768331138948.Spec : Prop :=
  ∀ n, P14774374768331138948.a n = A000048 n

end A000048

/-! ## A000048.P159010823032855869

`A045680(n)+A045686(n)-A045685(n)`
-/

namespace A000048.P159010823032855869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045680 n + (A045686 n - A045685 n)

end

end A000048.P159010823032855869

namespace A000048

/-- `A045680(n)+A045686(n)-A045685(n)` -/
def P159010823032855869.Spec : Prop :=
  ∀ n, P159010823032855869.a n = A000048 n

end A000048

/-! ## A000048.P11053154353894864129

`A045683(2*n)/A028310(n)`
-/

namespace A000048.P11053154353894864129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045683 (2 * n) : ℚ) / (A028310 n : ℚ)

end

end A000048.P11053154353894864129

namespace A000048

/-- `A045683(2*n)/A028310(n)` -/
def P11053154353894864129.Spec : Prop :=
  ∀ n, P11053154353894864129.a n = (A000048 n : ℚ)

end A000048

/-! ## A000048.P6963914702052581699

`A045683(2*n)/A065033(2*n)`
-/

namespace A000048.P6963914702052581699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045683 (2 * n) : ℚ) / (A065033 (2 * n) : ℚ)

end

end A000048.P6963914702052581699

namespace A000048

/-- `A045683(2*n)/A065033(2*n)` -/
def P6963914702052581699.Spec : Prop :=
  ∀ n, P6963914702052581699.a n = (A000048 n : ℚ)

end A000048

/-! ## A000048.P15836988606791709537

`A045683(2*n)/A123108(2*n)`
-/

namespace A000048.P15836988606791709537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045683 (2 * n) : ℚ) / (A123108 (2 * n) : ℚ)

end

end A000048.P15836988606791709537

namespace A000048

/-- `A045683(2*n)/A123108(2*n)` -/
def P15836988606791709537.Spec : Prop :=
  ∀ n, P15836988606791709537.a n = (A000048 n : ℚ)

end A000048

/-! ## A000048.P14542906271989127328

`A045683(2*n)/(A065190(2*n+1)-n)`
-/

namespace A000048.P14542906271989127328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045683 (2 * n) : ℚ) / (A065190 (2 * n + 1) - (n : ℤ) : ℚ)

end

end A000048.P14542906271989127328

namespace A000048

/-- `A045683(2*n)/(A065190(2*n+1)-n)` -/
def P14542906271989127328.Spec : Prop :=
  ∀ n, P14542906271989127328.a n = (A000048 n : ℚ)

end A000048

/-! ## A000048.P7203345780121292904

`A216957(n+1)-(A115118(n)+A011782(n))`
-/

namespace A000048.P7203345780121292904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216957 (n + 1) - (A115118 n + A011782 n)

end

end A000048.P7203345780121292904

namespace A000048

/-- `A216957(n+1)-(A115118(n)+A011782(n))` -/
def P7203345780121292904.Spec : Prop :=
  ∀ n, P7203345780121292904.a n = A000048 n

end A000048

/-! ## A000048.P11168399793207281553

`A045663(n)/A004277(n)`
-/

namespace A000048.P11168399793207281553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045663 n : ℚ) / (A004277 n : ℚ)

end

end A000048.P11168399793207281553

namespace A000048

/-- `A045663(n)/A004277(n)` -/
def P11168399793207281553.Spec : Prop :=
  ∀ n, P11168399793207281553.a n = (A000048 n : ℚ)

end A000048

/-! ## A000048.P6681098735826598046

`A045663(n)/A004275(n+1)`
-/

namespace A000048.P6681098735826598046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045663 n : ℚ) / (A004275 (n + 1) : ℚ)

end

end A000048.P6681098735826598046

namespace A000048

/-- `A045663(n)/A004275(n+1)` -/
def P6681098735826598046.Spec : Prop :=
  ∀ n, P6681098735826598046.a n = (A000048 n : ℚ)

end A000048

/-! ## A000048.P4396186572582209453

`A045663(n)/(A008486(n)-n)`
-/

namespace A000048.P4396186572582209453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045663 n : ℚ) / (A008486 n - (n : ℤ) : ℚ)

end

end A000048.P4396186572582209453

namespace A000048

/-- `A045663(n)/(A008486(n)-n)` -/
def P4396186572582209453.Spec : Prop :=
  ∀ n, P4396186572582209453.a n = (A000048 n : ℚ)

end A000048

/-! ## A000048.P12881172833898829412

`A045663(n)/A065190(Δ[n²])`
-/

namespace A000048.P12881172833898829412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045663 n : ℚ) / (A065190 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A000048.P12881172833898829412

namespace A000048

/-- `A045663(n)/A065190(Δ[n²])` -/
def P12881172833898829412.Spec : Prop :=
  ∀ n, P12881172833898829412.a n = (A000048 n : ℚ)

end A000048

/-! ## A000048.P2571116705713573253

`A045663(n)/A004396(A008486(n))`
-/

namespace A000048.P2571116705713573253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045663 n : ℚ) / (A004396 (A008486 n).toNat : ℚ)

end

end A000048.P2571116705713573253

namespace A000048

/-- `A045663(n)/A004396(A008486(n))` -/
def P2571116705713573253.Spec : Prop :=
  ∀ n, P2571116705713573253.a n = (A000048 n : ℚ)

end A000048

/-! ## A000048.P11131354333886405915

`A045663(n)/A045665(n)*A045683(n)`
-/

namespace A000048.P11131354333886405915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045663 n : ℚ) / (A045665 n : ℚ) * (A045683 n : ℚ)

end

end A000048.P11131354333886405915

namespace A000048

/-- `A045663(n)/A045665(n)*A045683(n)` -/
def P11131354333886405915.Spec : Prop :=
  ∀ n, P11131354333886405915.a n = (A000048 n : ℚ)

end A000048

/-! ## A000048.P502713979530428304

`A045663(n)/gcd(A005843(n), A045663(n))`
-/

namespace A000048.P502713979530428304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045663 n : ℚ) / (Int.gcd (A005843 n) (A045663 n) : ℚ)

end

end A000048.P502713979530428304

namespace A000048

/-- `A045663(n)/gcd(A005843(n), A045663(n))` -/
def P502713979530428304.Spec : Prop :=
  ∀ n, P502713979530428304.a n = (A000048 n : ℚ)

end A000048

/-! ## A000048.P4262721584108766837

`A045663(n)/A045662(n)*A045680(n)`
-/

namespace A000048.P4262721584108766837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045663 n : ℚ) / (A045662 n : ℚ) * (A045680 n : ℚ)

end

end A000048.P4262721584108766837

namespace A000048

/-- `A045663(n)/A045662(n)*A045680(n)` -/
def P4262721584108766837.Spec : Prop :=
  ∀ n, P4262721584108766837.a n = (A000048 n : ℚ)

end A000048

/-!
# A000049: Number of positive integers <= 2^n of the form 3*x^2 + 4*y^2.

The programs for A000049, there is no canonical definition to state claims against.
-/

/-! ## A000049.P9874177739679194951

`A046155(A162428(n))-char[1-n²]`
-/

namespace A000049.P9874177739679194951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A162428 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A000049.P9874177739679194951

/-! ## A000049.P4844648626007511413

`A046155(A162428(n))%A000255(n)`
-/

namespace A000049.P4844648626007511413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046155 (A162428 n).toNat) (A000255 n)

end

end A000049.P4844648626007511413

/-! ## A000049.P2940135415586938838

`A046155(A162428(n)%A000354(n))`
-/

namespace A000049.P2940135415586938838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (Int.tmod (A162428 n) (A000354 n)).toNat

end

end A000049.P2940135415586938838

/-! ## A000049.P14006872053852626214

`A172471(A036768(n)%A000255(n))`
-/

namespace A000049.P14006872053852626214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (Int.tmod (A036768 n) (A000255 n)).toNat

end

end A000049.P14006872053852626214

/-! ## A000049.P15797714776993637452

`A172471(A036768(n))%A000354(n)`
-/

namespace A000049.P15797714776993637452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172471 (A036768 n).toNat) (A000354 n)

end

end A000049.P15797714776993637452

/-!
# A000050: Number of positive integers <= 2^n of form x^2 + y^2.

The programs for A000050, the canonical program `A000050.P5830236791147847898` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000050 has offset 0).

The definition of A000050 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102548, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A000050.P5830236791147847898

`A102548(2^n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A000050

/-- `A102548(2^n)` -/
def P5830236791147847898.Spec : Prop :=
  ∀ n, P5830236791147847898.a n = A000050 n

theorem P5830236791147847898.correct : P5830236791147847898.Spec := by
  intro n
  simp only [A000050]

end A000050

/-! ## A000050.P16855947688985550308

`A000074(n)+a(n-1)` with `a(0)=1`
-/

namespace A000050.P16855947688985550308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000074 n + a (n - 1)

end

end A000050.P16855947688985550308

namespace A000050

/-- `A000074(n)+a(n-1)` -/
def P16855947688985550308.Spec : Prop :=
  ∀ n, P16855947688985550308.a n = A000050 n

end A000050

/-! ## A000050.P4451005341124960321

`∑[A000074(round(sqrt(n²+1)))]`
-/

namespace A000050.P4451005341124960321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000074 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000050.P4451005341124960321

namespace A000050

/-- `∑[A000074(round(sqrt(n²+1)))]` -/
def P4451005341124960321.Spec : Prop :=
  ∀ n, P4451005341124960321.a n = A000050 n

end A000050

/-! ## A000050.P17486504648474316289

`∑[A000074(n+1)]+1-A000074(n+1)`
-/

namespace A000050.P17486504648474316289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A000074 (n + 1))

end

end A000050.P17486504648474316289

namespace A000050

/-- `∑[A000074(n+1)]+1-A000074(n+1)` -/
def P17486504648474316289.Spec : Prop :=
  ∀ n, P17486504648474316289.a n = A000050 n

end A000050

/-! ## A000050.P11486509888276207257

`A000072(n+2)-A000074(n+2)`
-/

namespace A000050.P11486509888276207257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000072 (n + 2) - A000074 (n + 2)

end

end A000050.P11486509888276207257

namespace A000050

/-- `A000072(n+2)-A000074(n+2)` -/
def P11486509888276207257.Spec : Prop :=
  ∀ n, P11486509888276207257.a n = A000050 n

end A000050

/-!
# A000051: a(n) = 2^n + 1.

The programs for A000051, the canonical program `A000051.P14067217022188782580` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000051 has offset 0).

The definition of A000051 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+1` (program `A000051.P14067217022188782580`, by `A000051.P14067217022188782580.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000051.P14067217022188782580

`2^n+1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000051

/-- `2^n+1` -/
def P14067217022188782580.Spec : Prop :=
  ∀ n, (P14067217022188782580.a n : ℤ) = A000051 n

theorem P14067217022188782580.correct : P14067217022188782580.Spec := by
  intro n
  simp only [A000051]

end A000051

/-!
# A000053: Local stops on New York City 1 Train (Broadway-7 Avenue Local) subway.

The programs for A000053, there is no canonical definition to state claims against.
-/

/-! ## A000053.P12339330690285121575

`A051419(n+1)+char[4]`
-/

namespace A000053.P12339330690285121575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051419 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A000053.P12339330690285121575

/-! ## A000053.P11495298993111936675

`A185014(n)+A051419(n+1)`
-/

namespace A000053.P11495298993111936675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185014 n + A051419 (n + 1)

end

end A000053.P11495298993111936675

/-! ## A000053.P13128565504786112318

`A262693(12*(n+8))+A051419(n+1)`
-/

namespace A000053.P13128565504786112318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262693 (12 * (n + 8)) + A051419 (n + 1)

end

end A000053.P13128565504786112318

/-! ## A000053.P11893349370500990051

`A339629(A014473(n))+A051419(n+1)`
-/

namespace A000053.P11893349370500990051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339629 (A014473 n).toNat + A051419 (n + 1)

end

end A000053.P11893349370500990051

/-!
# A000055: Number of trees with n unlabeled nodes.

The programs for A000055, there is no canonical definition to state claims against.
-/

/-! ## A000055.P6132229635562137330

`A000676(n)+A000677(n)`
-/

namespace A000055.P6132229635562137330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000676 n + A000677 n

end

end A000055.P6132229635562137330

/-! ## A000055.P16726367338273073973

`A144520(n)+1`
-/

namespace A000055.P16726367338273073973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144520 n + 1

end

end A000055.P16726367338273073973

/-! ## A000055.P12307087950535283895

`A274935(n)-A274937(n)`
-/

namespace A000055.P12307087950535283895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274935 n - A274937 n

end

end A000055.P12307087950535283895

/-! ## A000055.P14567747377260784103

`A100584(n)+2*A000677(n)`
-/

namespace A000055.P14567747377260784103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100584 n + 2 * A000677 n

end

end A000055.P14567747377260784103

/-! ## A000055.P13742940380326331055

`1-A057428(n)*A144520(n)`
-/

namespace A000055.P13742940380326331055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057428 n * A144520 n

end

end A000055.P13742940380326331055

/-! ## A000055.P7126286387106620860

`A000676(n)+A000676(n)-A100584(n)`
-/

namespace A000055.P7126286387106620860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000676 n + (A000676 n - A100584 n)

end

end A000055.P7126286387106620860

/-! ## A000055.P11479175470983253375

`A000081(A028310(n))-A217420(n+1)`
-/

namespace A000055.P11479175470983253375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A028310 n).toNat - A217420 (n + 1)

end

end A000055.P11479175470983253375

/-! ## A000055.P4894921387221998511

`A038001(A004280(n+1))-A217420(n+1)`
-/

namespace A000055.P4894921387221998511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038001 (A004280 (n + 1)).toNat - A217420 (n + 1)

end

end A000055.P4894921387221998511

/-! ## A000055.P1406952027139798529

`A000081(A233583(n+1))-A217420(n+1)`
-/

namespace A000055.P1406952027139798529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A233583 (n + 1)).toNat - A217420 (n + 1)

end

end A000055.P1406952027139798529

/-! ## A000055.P12556579897420712743

`A095133(C(n, 2)+1)`
-/

namespace A000055.P12556579897420712743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095133 (Nat.choose n 2 + 1)

end

end A000055.P12556579897420712743

/-! ## A000055.P2567144185392372450

`A095133(∑[abs(1-n)])`
-/

namespace A000055.P2567144185392372450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095133 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000055.P2567144185392372450

/-! ## A000055.P15580337036605649402

`A106237(∑[abs(1-n)])`
-/

namespace A000055.P15580337036605649402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106237 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000055.P15580337036605649402

/-! ## A000055.P3944660729482637576

`A136605(A179865(n+1))`
-/

namespace A000055.P3944660729482637576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136605 (A179865 (n + 1)).toNat

end

end A000055.P3944660729482637576

/-! ## A000055.P11685607375116410714

`A105821(A133263(n))`
-/

namespace A000055.P11685607375116410714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105821 (A133263 n).toNat

end

end A000055.P11685607375116410714

/-! ## A000055.P16646234035040329425

`A105821(A238531(n+1))`
-/

namespace A000055.P16646234035040329425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105821 (A238531 (n + 1)).toNat

end

end A000055.P16646234035040329425

/-! ## A000055.P5147082430744253066

`A105821(A179865(n+1)+2)`
-/

namespace A000055.P5147082430744253066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105821 (A179865 (n + 1) + 2).toNat

end

end A000055.P5147082430744253066

/-! ## A000055.P13723341974499418016

`sqrt(A001256(n))`
-/

namespace A000055.P13723341974499418016
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001256 n : ℝ)

end

end A000055.P13723341974499418016

/-! ## A000055.P4503515687599324353

`A274935(2*n)-A274936(2*n)`
-/

namespace A000055.P4503515687599324353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274935 (2 * n) - A274936 (2 * n)

end

end A000055.P4503515687599324353

/-! ## A000055.P6092272101635462815

`2*A274935(2*n)-A006706(2*n)`
-/

namespace A000055.P6092272101635462815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A274935 (2 * n) - A006706 (2 * n)

end

end A000055.P6092272101635462815

/-! ## A000055.P5864239065404449014

`A006706(2*n)-2*A274936(2*n)`
-/

namespace A000055.P5864239065404449014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006706 (2 * n) - 2 * A274936 (2 * n)

end

end A000055.P5864239065404449014

/-!
# A000056: Order of the group SL(2,Z_n).

The programs for A000056, the canonical program `A000056.P18166110637332708364` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000056 has offset 1).

The definition of A000056 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007434, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A000056.P18166110637332708364

`(n+1)*A007434(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A000056

/-- `(n+1)*A007434(n+1)` -/
def P18166110637332708364.Spec : Prop :=
  ∀ n, P18166110637332708364.a n = A000056 (n + 1)

theorem P18166110637332708364.correct : P18166110637332708364.Spec := by
  intro n
  simp only [A000056, Nat.add_sub_cancel]

end A000056

/-! ## A000056.P13846321603488173902

`A007434((n+1)²)/(n+1)`
-/

namespace A000056.P13846321603488173902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A000056.P13846321603488173902

namespace A000056

/-- `A007434((n+1)²)/(n+1)` -/
def P13846321603488173902.Spec : Prop :=
  ∀ n, P13846321603488173902.a n = (A000056 (n + 1) : ℚ)

end A000056

/-! ## A000056.P3672351641528750621

`(n+1)*Δ[A321879(n)]`
-/

namespace A000056.P3672351641528750621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A000056.P3672351641528750621

namespace A000056

/-- `(n+1)*Δ[A321879(n)]` -/
def P3672351641528750621.Spec : Prop :=
  ∀ n, P3672351641528750621.a n = A000056 (n + 1)

end A000056

/-! ## A000056.P8495313580294065019

`A379833(n+1)/(n+1)`
-/

namespace A000056.P8495313580294065019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379833 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A000056.P8495313580294065019

namespace A000056

/-- `A379833(n+1)/(n+1)` -/
def P8495313580294065019.Spec : Prop :=
  ∀ n, P8495313580294065019.a n = (A000056 (n + 1) : ℚ)

end A000056

/-! ## A000056.P1210429261487193422

`(n+1)*((n+1)²-A064279(n+1))`
-/

namespace A000056.P1210429261487193422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (((n + 1) ^ 2 : ℤ) - A064279 (n + 1))

end

end A000056.P1210429261487193422

namespace A000056

/-- `(n+1)*((n+1)²-A064279(n+1))` -/
def P1210429261487193422.Spec : Prop :=
  ∀ n, P1210429261487193422.a n = A000056 (n + 1)

theorem P1210429261487193422.correct : P1210429261487193422.Spec := by
  intro n
  simp only [A000056, Nat.add_sub_cancel, A000056.P1210429261487193422.a, A000056.P18166110637332708364.a, A007434, A007434.P3432859153295839493.a, A064279, A064279.P12022089793920685943.a, A000010, A000010.P4673923239450215316.a, A001615, A001615.P12078511981713404634.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000056

/-! ## A000056.P2778705732812919893

`A000034(n)*A065430(n+1)`
-/

namespace A000056.P2778705732812919893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A065430 (n + 1)

end

end A000056.P2778705732812919893

namespace A000056

/-- `A000034(n)*A065430(n+1)` -/
def P2778705732812919893.Spec : Prop :=
  ∀ n, P2778705732812919893.a n = A000056 (n + 1)

end A000056

/-! ## A000056.P5625389292004227648

`A000010(n+1)*A000082(n+1)`
-/

namespace A000056.P5625389292004227648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A000082 (n + 1)

end

end A000056.P5625389292004227648

namespace A000056

/-- `A000010(n+1)*A000082(n+1)` -/
def P5625389292004227648.Spec : Prop :=
  ∀ n, P5625389292004227648.a n = A000056 (n + 1)

end A000056

/-! ## A000056.P10473690499686845432

`A001615(n+1)*A002618(n+1)`
-/

namespace A000056.P10473690499686845432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) * A002618 (n + 1)

end

end A000056.P10473690499686845432

namespace A000056

/-- `A001615(n+1)*A002618(n+1)` -/
def P10473690499686845432.Spec : Prop :=
  ∀ n, P10473690499686845432.a n = A000056 (n + 1)

end A000056

/-! ## A000056.P6976997989771538064

`A062570(n+1)*A070732(n+1)`
-/

namespace A000056.P6976997989771538064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (n + 1) * A070732 (n + 1)

end

end A000056.P6976997989771538064

namespace A000056

/-- `A062570(n+1)*A070732(n+1)` -/
def P6976997989771538064.Spec : Prop :=
  ∀ n, P6976997989771538064.a n = A000056 (n + 1)

end A000056

/-! ## A000056.P12810959963039589169

`A060594(n+1)*A300915(n+1)`
-/

namespace A000056.P12810959963039589169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (n + 1) * A300915 (n + 1)

end

end A000056.P12810959963039589169

namespace A000056

/-- `A060594(n+1)*A300915(n+1)` -/
def P12810959963039589169.Spec : Prop :=
  ∀ n, P12810959963039589169.a n = A000056 (n + 1)

end A000056

/-! ## A000056.P412482500691552590

`A000252(n+1)/A000010(n+1)`
-/

namespace A000056.P412482500691552590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A000056.P412482500691552590

namespace A000056

/-- `A000252(n+1)/A000010(n+1)` -/
def P412482500691552590.Spec : Prop :=
  ∀ n, P412482500691552590.a n = (A000056 (n + 1) : ℚ)

end A000056

/-! ## A000056.P13389623642383282174

`A011785(n+1)/A115224(n+1)`
-/

namespace A000056.P13389623642383282174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011785 (n + 1) : ℚ) / (A115224 (n + 1) : ℚ)

end

end A000056.P13389623642383282174

namespace A000056

/-- `A011785(n+1)/A115224(n+1)` -/
def P13389623642383282174.Spec : Prop :=
  ∀ n, P13389623642383282174.a n = (A000056 (n + 1) : ℚ)

end A000056

/-! ## A000056.P4405121927477152735

`A064767(n+1)/A115226(n+1)`
-/

namespace A000056.P4405121927477152735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064767 (n + 1) : ℚ) / (A115226 (n + 1) : ℚ)

end

end A000056.P4405121927477152735

namespace A000056

/-- `A064767(n+1)/A115226(n+1)` -/
def P4405121927477152735.Spec : Prop :=
  ∀ n, P4405121927477152735.a n = (A000056 (n + 1) : ℚ)

end A000056

/-! ## A000056.P2434906897103570964

`A000252(n+1)/(A109606(n+1)+1)`
-/

namespace A000056.P2434906897103570964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) : ℚ) / (A109606 (n + 1) + 1 : ℚ)

end

end A000056.P2434906897103570964

namespace A000056

/-- `A000252(n+1)/(A109606(n+1)+1)` -/
def P2434906897103570964.Spec : Prop :=
  ∀ n, P2434906897103570964.a n = (A000056 (n + 1) : ℚ)

end A000056

/-! ## A000056.P4831037502494230321

`A000010(2*(n+1))*A070732(n+1)`
-/

namespace A000056.P4831037502494230321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 1)) * A070732 (n + 1)

end

end A000056.P4831037502494230321

namespace A000056

/-- `A000010(2*(n+1))*A070732(n+1)` -/
def P4831037502494230321.Spec : Prop :=
  ∀ n, P4831037502494230321.a n = A000056 (n + 1)

end A000056

/-! ## A000056.P14872740226904452388

`gcd(2, A001175(n+1))*A001766(n+1)`
-/

namespace A000056.P14872740226904452388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A001175 (n + 1)) : ℤ) * A001766 (n + 1)

end

end A000056.P14872740226904452388

namespace A000056

/-- `gcd(2, A001175(n+1))*A001766(n+1)` -/
def P14872740226904452388.Spec : Prop :=
  ∀ n, P14872740226904452388.a n = A000056 (n + 1)

end A000056

/-! ## A000056.P122258982554935878

`A000252(n+1)/(n-A219428(n+1))`
-/

namespace A000056.P122258982554935878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) : ℚ) / ((n : ℤ) - A219428 (n + 1) : ℚ)

end

end A000056.P122258982554935878

namespace A000056

/-- `A000252(n+1)/(n-A219428(n+1))` -/
def P122258982554935878.Spec : Prop :=
  ∀ n, P122258982554935878.a n = (A000056 (n + 1) : ℚ)

end A000056

/-! ## A000056.P16545110854417792914

`(n+1)*A000010(n+1)*A001615(n+1)`
-/

namespace A000056.P16545110854417792914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000010 (n + 1) * A001615 (n + 1)

end

end A000056.P16545110854417792914

namespace A000056

/-- `(n+1)*A000010(n+1)*A001615(n+1)` -/
def P16545110854417792914.Spec : Prop :=
  ∀ n, P16545110854417792914.a n = A000056 (n + 1)

theorem P16545110854417792914.correct : P16545110854417792914.Spec := by
  intro n
  simp only [A000056, Nat.add_sub_cancel, A000056.P16545110854417792914.a, A000056.P18166110637332708364.a, A000010, A000010.P4673923239450215316.a, A001615, A001615.P12078511981713404634.a, A007434, A007434.P3432859153295839493.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000056

/-! ## A000056.P491108706887633883

`∑{d}[n+1, A001158(#)*A046692((n+1)/#)]`
-/

namespace A000056.P491108706887633883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001158 d * A046692 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A000056.P491108706887633883

namespace A000056

/-- `∑{d}[n+1, A001158(#)*A046692((n+1)/#)]` -/
def P491108706887633883.Spec : Prop :=
  ∀ n, P491108706887633883.a n = A000056 (n + 1)

end A000056

/-! ## A000056.P6439309205093801002

`∑{d}[n+1, A002618(#)*A053191((n+1)/#)]`
-/

namespace A000056.P6439309205093801002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A053191 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A000056.P6439309205093801002

namespace A000056

/-- `∑{d}[n+1, A002618(#)*A053191((n+1)/#)]` -/
def P6439309205093801002.Spec : Prop :=
  ∀ n, P6439309205093801002.a n = A000056 (n + 1)

end A000056

/-!
# A000057: Primes that divide at least one term in every Fibonacci sequence.

The programs for A000057, there is no canonical definition to state claims against.
-/

/-! ## A000057.P10249414282352872098

`p?[A064414(n+1)]`
-/

namespace A000057.P10249414282352872098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A000057.P10249414282352872098

/-! ## A000057.P8945441075263759487

`∩[A003631(n+1), A064414(n+1)]`
-/

namespace A000057.P8945441075263759487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000057.P8945441075263759487

/-! ## A000057.P7641191455710051460

`∩[A003631(n+1), A079346(n+1)]`
-/

namespace A000057.P7641191455710051460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000057.P7641191455710051460

/-! ## A000057.P13729897917652104542

`∩[A040116(n+1), A064414(n+1)]`
-/

namespace A000057.P13729897917652104542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000057.P13729897917652104542

/-! ## A000057.P13778013850089843533

`∩[A023162(n+1), A079346(n+1)]`
-/

namespace A000057.P13778013850089843533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000057.P13778013850089843533

/-! ## A000057.P9623172188854685642

`∩[A040179(n+1), A064414(n+1)]`
-/

namespace A000057.P9623172188854685642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000057.P9623172188854685642

/-! ## A000057.P15273909642184694597

`∩[A040986(n+1), A064414(n+1)]`
-/

namespace A000057.P15273909642184694597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000057.P15273909642184694597

/-! ## A000057.P13976705755426392404

`∩[A040161(n+1), A064414(n+1)]`
-/

namespace A000057.P13976705755426392404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000057.P13976705755426392404

/-! ## A000057.P4119730748072160764

`∩[A040970(n+1), A064414(n+1)]`
-/

namespace A000057.P4119730748072160764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000057.P4119730748072160764

/-! ## A000057.P7129548023406910095

`∩[A040972(n+1), A064414(n+1)]`
-/

namespace A000057.P7129548023406910095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000057.P7129548023406910095

/-! ## A000057.P15553428421480657766

`∩[A040159(n+1), A064414(n+1)]`
-/

namespace A000057.P15553428421480657766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000057.P15553428421480657766

/-! ## A000057.P13740384687162333232

`∩[A040169(n+1), A064414(n+1)]`
-/

namespace A000057.P13740384687162333232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000057.P13740384687162333232

/-! ## A000057.P14336351527343136012

`∩[A040980(n+1), A064414(n+1)]`
-/

namespace A000057.P14336351527343136012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000057.P14336351527343136012

/-! ## A000057.P17449629480921995801

`∩[A040982(n+1), A064414(n+1)]`
-/

namespace A000057.P17449629480921995801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000057.P17449629480921995801

/-! ## A000057.P17202576421695080794

`∩[A040165(n+1), A064414(n+1)]`
-/

namespace A000057.P17202576421695080794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000057.P17202576421695080794

/-! ## A000057.P3876395999508843061

`∩[A040171(n+1), A064414(n+1)]`
-/

namespace A000057.P3876395999508843061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000057.P3876395999508843061

/-! ## A000057.P280330169682985990

`∩[A040184(n+1), A064414(n+1)]`
-/

namespace A000057.P280330169682985990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000057.P280330169682985990

/-! ## A000057.P9169216243535835649

`∩[A040978(n+1), A064414(n+1)]`
-/

namespace A000057.P9169216243535835649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000057.P9169216243535835649

/-! ## A000057.P16234212086888588053

`∩[A040177(n+1), A064414(n+1)]`
-/

namespace A000057.P16234212086888588053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000057.P16234212086888588053

/-! ## A000057.P9497621645417569117

`∩[A040974(n+1), A064414(n+1)]`
-/

namespace A000057.P9497621645417569117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000057.P9497621645417569117

/-!
# A000058: Sylvester's sequence: a(n+1) = a(n)^2 - a(n) + 1, with a(0) = 2.

The programs for A000058, the canonical program `A000058.P2211497797836191528` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000058 has offset 0).

The definition of A000058 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000058.P2211497797836191528

`a(n-1)²-a(n-1)+1` with `a(0)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000058

/-- `a(n-1)²-a(n-1)+1` -/
def P2211497797836191528.Spec : Prop :=
  ∀ n, P2211497797836191528.a n = A000058 n

theorem P2211497797836191528.correct : P2211497797836191528.Spec := by
  intro n
  simp only [A000058]

end A000058

/-! ## A000058.P214818854374530312

`1+a(n-1)*(a(n-1)-1)` with `a(0)=2`
-/

namespace A000058.P214818854374530312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  1 + a (n - 1) * (a (n - 1) - 1)

end

end A000058.P214818854374530312

namespace A000058

/-- `1+a(n-1)*(a(n-1)-1)` -/
def P214818854374530312.Spec : Prop :=
  ∀ n, P214818854374530312.a n = A000058 n

theorem P214818854374530312.correct : P214818854374530312.Spec := by
  intro n
  simp only [A000058, Nat.add_sub_cancel, A000058.P214818854374530312.a, A000058.P2211497797836191528.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A000058

/-! ## A000058.P10552498929287870377

`A007018(n+1)/A007018(n)`
-/

namespace A000058.P10552498929287870377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007018 (n + 1) : ℚ) / (A007018 n : ℚ)

end

end A000058.P10552498929287870377

namespace A000058

/-- `A007018(n+1)/A007018(n)` -/
def P10552498929287870377.Spec : Prop :=
  ∀ n, P10552498929287870377.a n = (A000058 n : ℚ)

end A000058

/-! ## A000058.P6878460487115733716

`2*C(a(n-1), 2)+1` with `a(0)=2`
-/

namespace A000058.P6878460487115733716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  2 * Nat.choose (a (n - 1)) 2 + 1

end

end A000058.P6878460487115733716

namespace A000058

/-- `2*C(a(n-1), 2)+1` -/
def P6878460487115733716.Spec : Prop :=
  ∀ n, (P6878460487115733716.a n : ℤ) = A000058 n

end A000058

/-! ## A000058.P2596468599120401055

`lcm(2, C(a(n-1), 2))+1` with `a(0)=2`
-/

namespace A000058.P2596468599120401055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lcm 2 (Nat.choose (a (n - 1)) 2) + 1

end

end A000058.P2596468599120401055

namespace A000058

/-- `lcm(2, C(a(n-1), 2))+1` -/
def P2596468599120401055.Spec : Prop :=
  ∀ n, (P2596468599120401055.a n : ℤ) = A000058 n

end A000058

/-!
# A000059: Numbers k such that (2k)^4 + 1 is prime.

The programs for A000059, the canonical program `A000059.P7901828597261490074` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000059 has offset 1).

The definition of A000059 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000068, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A000059.P7901828597261490074

`A000068(n+2)/2`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A000059

/-- `A000068(n+2)/2` -/
def P7901828597261490074.Spec : Prop :=
  ∀ n, P7901828597261490074.a n = (A000059 (n + 1) : ℚ)

end A000059

/-! ## A000059.P2939397085867199072

`∑[A004525(Δ[A000068(n+1)])]`
-/

namespace A000059.P2939397085867199072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000068 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000059.P2939397085867199072

namespace A000059

/-- `∑[A004525(Δ[A000068(n+1)])]` -/
def P2939397085867199072.Spec : Prop :=
  ∀ n, P2939397085867199072.a n = A000059 (n + 1)

end A000059

/-! ## A000059.P3087995659502340583

`∑[A026741(Δ[A000068(n+1)])]`
-/

namespace A000059.P3087995659502340583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000068 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000059.P3087995659502340583

namespace A000059

/-- `∑[A026741(Δ[A000068(n+1)])]` -/
def P3087995659502340583.Spec : Prop :=
  ∀ n, P3087995659502340583.a n = A000059 (n + 1)

end A000059

/-! ## A000059.P369696082242675388

`∑[A032742(Δ[A000068(n+1)])]`
-/

namespace A000059.P369696082242675388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000068 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000059.P369696082242675388

namespace A000059

/-- `∑[A032742(Δ[A000068(n+1)])]` -/
def P369696082242675388.Spec : Prop :=
  ∀ n, P369696082242675388.a n = A000059 (n + 1)

end A000059

/-! ## A000059.P12321203180120434724

`∑[A253554(Δ[A000068(n+1)])]`
-/

namespace A000059.P12321203180120434724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000068 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253554 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000059.P12321203180120434724

namespace A000059

/-- `∑[A253554(Δ[A000068(n+1)])]` -/
def P12321203180120434724.Spec : Prop :=
  ∀ n, P12321203180120434724.a n = A000059 (n + 1)

end A000059

/-! ## A000059.P15689792341196260711

`eq[1, A193929(2*n)]`
-/

namespace A000059.P15689792341196260711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000059.P15689792341196260711

namespace A000059

/-- `eq[1, A193929(2*n)]` -/
def P15689792341196260711.Spec : Prop :=
  ∀ n, (P15689792341196260711.a n : ℤ) = A000059 (n + 1)

end A000059

/-! ## A000059.P3542113214662633807

`eq[2, A193562(2*n)]`
-/

namespace A000059.P3542113214662633807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000059.P3542113214662633807

namespace A000059

/-- `eq[2, A193562(2*n)]` -/
def P3542113214662633807.Spec : Prop :=
  ∀ n, (P3542113214662633807.a n : ℤ) = A000059 (n + 1)

end A000059

/-! ## A000059.P3916914243339690402

`eq[1, A270927(2*(n+1))]+1`
-/

namespace A000059.P3916914243339690402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270927 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A000059.P3916914243339690402

namespace A000059

/-- `eq[1, A270927(2*(n+1))]+1` -/
def P3916914243339690402.Spec : Prop :=
  ∀ n, (P3916914243339690402.a n : ℤ) = A000059 (n + 1)

end A000059

/-! ## A000059.P9992572663659478774

`record[(n+1)/A193929(2*(n+1))²]`
-/

namespace A000059.P9992572663659478774
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A193929 (2 * (n + 1)) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000059.P9992572663659478774

namespace A000059

/-- `record[(n+1)/A193929(2*(n+1))²]` -/
def P9992572663659478774.Spec : Prop :=
  ∀ n, P9992572663659478774.a n = (A000059 (n + 1) : ℚ)

end A000059

/-! ## A000059.P13176115468846862317

`A001281(A000068(n+2))`
-/

namespace A000059.P13176115468846862317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A000068 (n + 2)).toNat

end

end A000059.P13176115468846862317

namespace A000059

/-- `A001281(A000068(n+2))` -/
def P13176115468846862317.Spec : Prop :=
  ∀ n, P13176115468846862317.a n = A000059 (n + 1)

end A000059

/-! ## A000059.P12815642130044838640

`A123108(A000068(n+2)+1)`
-/

namespace A000059.P12815642130044838640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A000068 (n + 2) + 1).toNat

end

end A000059.P12815642130044838640

namespace A000059

/-- `A123108(A000068(n+2)+1)` -/
def P12815642130044838640.Spec : Prop :=
  ∀ n, P12815642130044838640.a n = A000059 (n + 1)

end A000059

/-! ## A000059.P2250623092377442767

`eq[A193562(n)², A010710(n)]/2`
-/

namespace A000059.P2250623092377442767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010710 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A000059.P2250623092377442767

namespace A000059

/-- `eq[A193562(n)², A010710(n)]/2` -/
def P2250623092377442767.Spec : Prop :=
  ∀ n, P2250623092377442767.a n = (A000059 (n + 1) : ℚ)

end A000059

/-! ## A000059.P10735726527014923033

`eq[A193562(n)², A010711(n)]/2`
-/

namespace A000059.P10735726527014923033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010711 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A000059.P10735726527014923033

namespace A000059

/-- `eq[A193562(n)², A010711(n)]/2` -/
def P10735726527014923033.Spec : Prop :=
  ∀ n, P10735726527014923033.a n = (A000059 (n + 1) : ℚ)

end A000059

/-! ## A000059.P14762654259460291116

`eq[A193562(n)², A010712(n)]/2`
-/

namespace A000059.P14762654259460291116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010712 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A000059.P14762654259460291116

namespace A000059

/-- `eq[A193562(n)², A010712(n)]/2` -/
def P14762654259460291116.Spec : Prop :=
  ∀ n, P14762654259460291116.a n = (A000059 (n + 1) : ℚ)

end A000059

/-! ## A000059.P18265286665387545904

`eq[A193562(n)², A010714(n)]/2`
-/

namespace A000059.P18265286665387545904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010714 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A000059.P18265286665387545904

namespace A000059

/-- `eq[A193562(n)², A010714(n)]/2` -/
def P18265286665387545904.Spec : Prop :=
  ∀ n, P18265286665387545904.a n = (A000059 (n + 1) : ℚ)

end A000059

/-! ## A000059.P11282060806850661319

`eq[A193562(n)², A010715(n)]/2`
-/

namespace A000059.P11282060806850661319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010715 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A000059.P11282060806850661319

namespace A000059

/-- `eq[A193562(n)², A010715(n)]/2` -/
def P11282060806850661319.Spec : Prop :=
  ∀ n, P11282060806850661319.a n = (A000059 (n + 1) : ℚ)

end A000059

/-! ## A000059.P16085888487441988774

`eq[A193562(n)², A040005(n)]/2`
-/

namespace A000059.P16085888487441988774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040005 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A000059.P16085888487441988774

namespace A000059

/-- `eq[A193562(n)², A040005(n)]/2` -/
def P16085888487441988774.Spec : Prop :=
  ∀ n, P16085888487441988774.a n = (A000059 (n + 1) : ℚ)

end A000059

/-! ## A000059.P9473335529731764316

`A026741(A000068(n+1)+Δ[A000068(n+1)])`
-/

namespace A000059.P9473335529731764316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A000068 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A000059.P9473335529731764316

namespace A000059

/-- `A026741(A000068(n+1)+Δ[A000068(n+1)])` -/
def P9473335529731764316.Spec : Prop :=
  ∀ n, P9473335529731764316.a n = A000059 (n + 1)

end A000059

/-! ## A000059.P12674141781828497415

`A032742(A000068(n+1)+Δ[A000068(n+1)])`
-/

namespace A000059.P12674141781828497415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A000068 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A000059.P12674141781828497415

namespace A000059

/-- `A032742(A000068(n+1)+Δ[A000068(n+1)])` -/
def P12674141781828497415.Spec : Prop :=
  ∀ n, P12674141781828497415.a n = A000059 (n + 1)

end A000059

/-! ## A000059.P13828291042675038848

`lt[A193564(A193562(2*n)), A193509(2*n+1)]`
-/

namespace A000059.P13828291042675038848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193564 (A193562 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193509 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A000059.P13828291042675038848

namespace A000059

/-- `lt[A193564(A193562(2*n)), A193509(2*n+1)]` -/
def P13828291042675038848.Spec : Prop :=
  ∀ n, (P13828291042675038848.a n : ℤ) = A000059 (n + 1)

end A000059

/-!
# A000060: Number of signed trees with n nodes.

The programs for A000060, there is no canonical definition to state claims against.
-/

/-! ## A000060.P6767682492589004245

`A038056(n+1)-A000238(n+1)`
-/

namespace A000060.P6767682492589004245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038056 (n + 1) - A000238 (n + 1)

end

end A000060.P6767682492589004245

/-! ## A000060.P2277383715603216143

`A038056(n+1)-(2*A005751(n+1)-A007748(n+1))`
-/

namespace A000060.P2277383715603216143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038056 (n + 1) - (2 * A005751 (n + 1) - A007748 (n + 1))

end

end A000060.P2277383715603216143

/-! ## A000060.P7460976779617335973

`A038056(n+1)-A139621(∑[n]+n)`
-/

namespace A000060.P7460976779617335973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038056 (n + 1) - A139621 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A000060.P7460976779617335973

/-! ## A000060.P2856065257110801107

`A038056(n+1)-A350789(∑[n]+n)`
-/

namespace A000060.P2856065257110801107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038056 (n + 1) - A350789 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A000060.P2856065257110801107

/-! ## A000060.P5550946772931973238

`A038056(n+1)-A350914(∑[n]+n)`
-/

namespace A000060.P5550946772931973238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038056 (n + 1) - A350914 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A000060.P5550946772931973238

/-! ## A000060.P13884315147697328827

`record[A038056(A334230(n+1))-A139621(n)]`
-/

namespace A000060.P13884315147697328827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038056 (A334230 (n + 1)).toNat - A139621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000060.P13884315147697328827

/-! ## A000060.P8327234983591867026

`record[A038056(A334230(n+1))-A350789(n)]`
-/

namespace A000060.P8327234983591867026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038056 (A334230 (n + 1)).toNat - A350789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000060.P8327234983591867026

/-!
# A000061: Generalized tangent numbers d(n,1).

The programs for A000061, there is no canonical definition to state claims against.
-/

/-! ## A000061.P16783026448600942067

`A235606(∑[n]+1)`
-/

namespace A000061.P16783026448600942067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235606 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A000061.P16783026448600942067

/-! ## A000061.P15231317113860581718

`A235606(A000124(n))^A178334(n)`
-/

namespace A000061.P15231317113860581718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235606 (A000124 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A000061.P15231317113860581718

/-!
# A000062: A Beatty sequence: a(n) = floor(n/(e-2)).

The programs for A000062, the canonical program `A000062.P11138629236248489176` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000062 has offset 1).

The definition of A000062 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)/(e-2))` (program `A000062.P11138629236248489176`, by `A000062.P11138629236248489176.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000062.P11138629236248489176

`floor((n+1)/(e-2))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000062

/-- `floor((n+1)/(e-2))` -/
def P11138629236248489176.Spec : Prop :=
  ∀ n, P11138629236248489176.a n = A000062 (n + 1)

theorem P11138629236248489176.correct : P11138629236248489176.Spec := by
  intro n
  simp only [A000062, Nat.add_sub_cancel]

end A000062

/-! ## A000062.P10469128815579543071

`lt[2, Δ[floor(e*n)]]`
-/

namespace A000062.P10469128815579543071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (n : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A000062.P10469128815579543071

namespace A000062

/-- `lt[2, Δ[floor(e*n)]]` -/
def P10469128815579543071.Spec : Prop :=
  ∀ n, (P10469128815579543071.a n : ℤ) = A000062 (n + 1)

end A000062

/-! ## A000062.P15037027290938951975

`comp[A022843(n)-(n+1)]-n`
-/

namespace A000062.P15037027290938951975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A000062.P15037027290938951975

namespace A000062

/-- `comp[A022843(n)-(n+1)]-n` -/
def P15037027290938951975.Spec : Prop :=
  ∀ n, P15037027290938951975.a n = A000062 (n + 1)

end A000062

/-! ## A000062.P7336327469151124680

`lt[Δ[-A276859(n+1)], 1]+1`
-/

namespace A000062.P7336327469151124680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A276859 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A000062.P7336327469151124680

namespace A000062

/-- `lt[Δ[-A276859(n+1)], 1]+1` -/
def P7336327469151124680.Spec : Prop :=
  ∀ n, (P7336327469151124680.a n : ℤ) = A000062 (n + 1)

end A000062

/-! ## A000062.P13696580130579214334

`∪[A190860(n+1), A327213(n+1)]`
-/

namespace A000062.P13696580130579214334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000062.P13696580130579214334

namespace A000062

/-- `∪[A190860(n+1), A327213(n+1)]` -/
def P13696580130579214334.Spec : Prop :=
  ∀ n, (P13696580130579214334.a n : ℤ) = A000062 (n + 1)

end A000062

/-! ## A000062.P645494087875202625

`record[A028310(1-Δ[A276859(n+1)]+n)]`
-/

namespace A000062.P645494087875202625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276859 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (1 - (f2 (n + 1) - f2 n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000062.P645494087875202625

namespace A000062

/-- `record[A028310(1-Δ[A276859(n+1)]+n)]` -/
def P645494087875202625.Spec : Prop :=
  ∀ n, P645494087875202625.a n = A000062 (n + 1)

end A000062

/-! ## A000062.P3355033375540477277

`A032634(A249244(n+1))`
-/

namespace A000062.P3355033375540477277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 (A249244 (n + 1)).toNat

end

end A000062.P3355033375540477277

namespace A000062

/-- `A032634(A249244(n+1))` -/
def P3355033375540477277.Spec : Prop :=
  ∀ n, P3355033375540477277.a n = A000062 (n + 1)

end A000062

/-! ## A000062.P5245605845356458622

`A032634(A279608(n+1))`
-/

namespace A000062.P5245605845356458622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 (A279608 (n + 1)).toNat

end

end A000062.P5245605845356458622

namespace A000062

/-- `A032634(A279608(n+1))` -/
def P5245605845356458622.Spec : Prop :=
  ∀ n, P5245605845356458622.a n = A000062 (n + 1)

end A000062

/-! ## A000062.P9724765184975594761

`(A276875(n+2)-(n+2))/2`
-/

namespace A000062.P9724765184975594761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276875 (n + 2) - (n + 2 : ℤ) : ℚ) / 2

end

end A000062.P9724765184975594761

namespace A000062

/-- `(A276875(n+2)-(n+2))/2` -/
def P9724765184975594761.Spec : Prop :=
  ∀ n, P9724765184975594761.a n = (A000062 (n + 1) : ℚ)

end A000062

/-! ## A000062.P8041579619545201055

`A032634(A276875(n+2))`
-/

namespace A000062.P8041579619545201055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 (A276875 (n + 2)).toNat

end

end A000062.P8041579619545201055

namespace A000062

/-- `A032634(A276875(n+2))` -/
def P8041579619545201055.Spec : Prop :=
  ∀ n, P8041579619545201055.a n = A000062 (n + 1)

end A000062

/-!
# A000063: Symmetrical dissections of an n-gon.

The programs for A000063, there is no canonical definition to state claims against.
-/

/-! ## A000063.P5606692052058602216

`A210635(A259877(n+2))`
-/

namespace A000063.P5606692052058602216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210635 (A259877 (n + 2)).toNat

end

end A000063.P5606692052058602216

/-!
# A000064: Partial sums of (unordered) ways of making change for n cents using coins of 1, 2, 5, 10 cents.

The programs for A000064, the canonical program `A000064.P7860828275165321121` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000064 has offset 0).

The definition of A000064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000064.P7860828275165321121

`∑[A000008(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000064

/-- `∑[A000008(n)]` -/
def P7860828275165321121.Spec : Prop :=
  ∀ n, P7860828275165321121.a n = A000064 n

theorem P7860828275165321121.correct : P7860828275165321121.Spec := by
  intro n
  simp only [A000064]

end A000064

/-! ## A000064.P4467726379769109535

`∑[∑[A025810(n)]]`
-/

namespace A000064.P4467726379769109535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025810 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000064.P4467726379769109535

namespace A000064

/-- `∑[∑[A025810(n)]]` -/
def P4467726379769109535.Spec : Prop :=
  ∀ n, P4467726379769109535.a n = A000064 n

end A000064

/-! ## A000064.P4757430963059597251

`∑[A187243(n)+a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A000064.P4757430963059597251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A187243 n + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000064.P4757430963059597251

namespace A000064

/-- `∑[A187243(n)+a(n-2)]` -/
def P4757430963059597251.Spec : Prop :=
  ∀ n, P4757430963059597251.a n = A000064 n

end A000064

/-! ## A000064.P17165736414390741593

`∑[∑[A000217(A008616(n))]]`
-/

namespace A000064.P17165736414390741593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008616 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000064.P17165736414390741593

namespace A000064

/-- `∑[∑[A000217(A008616(n))]]` -/
def P17165736414390741593.Spec : Prop :=
  ∀ n, P17165736414390741593.a n = A000064 n

end A000064

/-! ## A000064.P15050166553880003490

`∑[∑[A000217(A165190(2*n))]]`
-/

namespace A000064.P15050166553880003490
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A165190 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000064.P15050166553880003490

namespace A000064

/-- `∑[∑[A000217(A165190(2*n))]]` -/
def P15050166553880003490.Spec : Prop :=
  ∀ n, P15050166553880003490.a n = A000064 n

end A000064

/-! ## A000064.P2893040972561496601

`A358206(2*n)`
-/

namespace A000064.P2893040972561496601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358206 (2 * n)

end

end A000064.P2893040972561496601

namespace A000064

/-- `A358206(2*n)` -/
def P2893040972561496601.Spec : Prop :=
  ∀ n, P2893040972561496601.a n = A000064 n

end A000064

/-! ## A000064.P6503097108591550600

`∑[∑[A000217(A008651(3*n))]]`
-/

namespace A000064.P6503097108591550600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008651 (3 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000064.P6503097108591550600

namespace A000064

/-- `∑[∑[A000217(A008651(3*n))]]` -/
def P6503097108591550600.Spec : Prop :=
  ∀ n, P6503097108591550600.a n = A000064 n

end A000064

/-! ## A000064.P4263145358736787805

`∑[∑[A000217(A033182(3*n))]]`
-/

namespace A000064.P4263145358736787805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A033182 (3 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000064.P4263145358736787805

namespace A000064

/-- `∑[∑[A000217(A033182(3*n))]]` -/
def P4263145358736787805.Spec : Prop :=
  ∀ n, P4263145358736787805.a n = A000064 n

end A000064

/-! ## A000064.P11609281062342637495

`A001307(2*n+1)-A001307(2*n)`
-/

namespace A000064.P11609281062342637495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001307 (2 * n + 1) - A001307 (2 * n)

end

end A000064.P11609281062342637495

namespace A000064

/-- `A001307(2*n+1)-A001307(2*n)` -/
def P11609281062342637495.Spec : Prop :=
  ∀ n, P11609281062342637495.a n = A000064 n

end A000064

/-! ## A000064.P7908040722693101699

`A001300(5*n)`
-/

namespace A000064.P7908040722693101699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001300 (5 * n)

end

end A000064.P7908040722693101699

namespace A000064

/-- `A001300(5*n)` -/
def P7908040722693101699.Spec : Prop :=
  ∀ n, P7908040722693101699.a n = A000064 n

end A000064

/-! ## A000064.P1551177093903654967

`record[A001343(n)]`
-/

namespace A000064.P1551177093903654967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001343 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000064.P1551177093903654967

namespace A000064

/-- `record[A001343(n)]` -/
def P1551177093903654967.Spec : Prop :=
  ∀ n, P1551177093903654967.a n = A000064 n

end A000064

/-! ## A000064.P5444127315721786615

`A001343(10*n)`
-/

namespace A000064.P5444127315721786615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001343 (10 * n)

end

end A000064.P5444127315721786615

namespace A000064

/-- `A001343(10*n)` -/
def P5444127315721786615.Spec : Prop :=
  ∀ n, P5444127315721786615.a n = A000064 n

end A000064

/-!
# A000065: -1 + number of partitions of n.

The programs for A000065, there is no canonical definition to state claims against.
-/

/-! ## A000065.P10510404710480155330

`A000041(n)-1`
-/

namespace A000065.P10510404710480155330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - 1

end

end A000065.P10510404710480155330

/-! ## A000065.P13972440842739073450

`∑[A002865(n)]-1`
-/

namespace A000065.P13972440842739073450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A000065.P13972440842739073450

/-! ## A000065.P5112875690299940700

`∑[A232697(n)-1]`
-/

namespace A000065.P5112875690299940700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000065.P5112875690299940700

/-! ## A000065.P7602101102761412008

`A133041(n)-(n+1)`
-/

namespace A000065.P7602101102761412008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (n + 1 : ℤ)

end

end A000065.P7602101102761412008

/-! ## A000065.P12513344965668459023

`∑[A085811(n+3)]-1`
-/

namespace A000065.P12513344965668459023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A000065.P12513344965668459023

/-! ## A000065.P13884757645744358476

`A111133(n)+A047967(n)`
-/

namespace A000065.P13884757645744358476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + A047967 n

end

end A000065.P13884757645744358476

/-! ## A000065.P15827720113001801457

`A362548(n)+A002620(n)`
-/

namespace A000065.P15827720113001801457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362548 n + A002620 n

end

end A000065.P15827720113001801457

/-! ## A000065.P12962641004572565448

`A389920(n)+A325334(n)`
-/

namespace A000065.P12962641004572565448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389920 n + A325334 n

end

end A000065.P12962641004572565448

/-! ## A000065.P15839778980677143858

`A394589(n)+A333147(n)`
-/

namespace A000065.P15839778980677143858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394589 n + A333147 n

end

end A000065.P15839778980677143858

/-! ## A000065.P12505890445816227580

`A218004(n)-A000009(n)`
-/

namespace A000065.P12505890445816227580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218004 n - A000009 n

end

end A000065.P12505890445816227580

/-! ## A000065.P8119547634197301169

`A027187(n)+A027193(n)-1`
-/

namespace A000065.P8119547634197301169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n + (A027193 n - 1)

end

end A000065.P8119547634197301169

/-! ## A000065.P2866879279145890052

`A163295(n+1)-A070941(n)`
-/

namespace A000065.P2866879279145890052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163295 (n + 1) - A070941 n

end

end A000065.P2866879279145890052

/-! ## A000065.P6224578193796011158

`A260196(n+2)+A000041(n)`
-/

namespace A000065.P6224578193796011158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A000041 n

end

end A000065.P6224578193796011158

/-! ## A000065.P14863744097013119484

`A295341(n)+A000726(n)-1`
-/

namespace A000065.P14863744097013119484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295341 n + A000726 n - 1

end

end A000065.P14863744097013119484

/-! ## A000065.P14032874194345674935

`A163295(n+1)-(A029837(n+1)+1)`
-/

namespace A000065.P14032874194345674935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163295 (n + 1) - (A029837 (n + 1) + 1)

end

end A000065.P14032874194345674935

/-! ## A000065.P2302656691712953884

`A008683(C(2, n+2)+2)+A000041(n)`
-/

namespace A000065.P2302656691712953884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.choose 2 (n + 2) + 2) + A000041 n

end

end A000065.P2302656691712953884

/-! ## A000065.P6612025066565860370

`A008683(2*gcd(n, n+1))+A000041(n)`
-/

namespace A000065.P6612025066565860370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * Nat.gcd n (n + 1)) + A000041 n

end

end A000065.P6612025066565860370

/-! ## A000065.P4074738652131148517

`A008683((2*n+2)/(n+1))+A000041(n)`
-/

namespace A000065.P4074738652131148517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((2 * n + 2 : ℚ) / (n + 1 : ℚ))).toNat + A000041 n

end

end A000065.P4074738652131148517

/-! ## A000065.P3376992246133764347

`A139582(n)/2-1`
-/

namespace A000065.P3376992246133764347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - 1

end

end A000065.P3376992246133764347

/-!
# A000066: Smallest number of vertices in trivalent graph with girth (shortest cycle) = n.

The programs for A000066, there is no canonical definition to state claims against.
-/

/-! ## A000066.P963543494354702728

`A266730(n+3)-A266691(n)²`
-/

namespace A000066.P963543494354702728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266730 (n + 3) - A266691 n ^ 2

end

end A000066.P963543494354702728

/-! ## A000066.P2910689586216838536

`and(-A321716(n), A266730(n+3))`
-/

namespace A000066.P2910689586216838536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A321716 n) (A266730 (n + 3))

end

end A000066.P2910689586216838536

/-! ## A000066.P11951474474314619318

`A266730(n+3)-Δ[A005873(n)]`
-/

namespace A000066.P11951474474314619318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266730 (n + 3) - (f1 (n + 1) - f1 n)

end

end A000066.P11951474474314619318

/-! ## A000066.P5738431266902914021

`A266730(n+3)-Δ[A236378(n)]`
-/

namespace A000066.P5738431266902914021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266730 (n + 3) - (f1 (n + 1) - f1 n)

end

end A000066.P5738431266902914021

/-! ## A000066.P4306984986462940920

`A266730(n+3)-A005873(n+1)`
-/

namespace A000066.P4306984986462940920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266730 (n + 3) - A005873 (n + 1)

end

end A000066.P4306984986462940920

/-!
# A000067: Number of positive integers <= 2^n of form x^2 + 2 y^2.

The programs for A000067, there is no canonical definition to state claims against.
-/

/-! ## A000067.P7891239283751557230

`eq[1, A000120(A002479(n+1))]`
-/

namespace A000067.P7891239283751557230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A002479 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000067.P7891239283751557230

/-! ## A000067.P6701008469271166705

`eq[A000007(n), A285099(A002479(n+1))]`
-/

namespace A000067.P6701008469271166705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 (A002479 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A000067.P6701008469271166705

/-! ## A000067.P7821605106957137517

`eq[A000038(n), A285099(A002479(n+1))]`
-/

namespace A000067.P7821605106957137517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 (A002479 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A000067.P7821605106957137517

/-! ## A000067.P18202659767515321295

`A081315(A000495(n))`
-/

namespace A000067.P18202659767515321295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081315 (A000495 n).toNat

end

end A000067.P18202659767515321295

/-! ## A000067.P391070919957707019

`∑[A194323(A289501(n))]`
-/

namespace A000067.P391070919957707019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194323 (A289501 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000067.P391070919957707019

/-!
# A000068: Numbers k such that k^4 + 1 is prime.

The programs for A000068, the canonical program `A000068.P16222419504185008145` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000068 has offset 1).

The definition of A000068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000068.P16222419504185008145

`floor(sqrt(sqrt(A037896(n+1))))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A000068

/-- `floor(sqrt(sqrt(A037896(n+1))))` -/
def P16222419504185008145.Spec : Prop :=
  ∀ n, P16222419504185008145.a n = A000068 (n + 1)

theorem P16222419504185008145.correct : P16222419504185008145.Spec := by
  intro n
  simp only [A000068, Nat.add_sub_cancel]

end A000068

/-! ## A000068.P16069280540646233587

`eq[1, A193929(n)]`
-/

namespace A000068.P16069280540646233587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000068.P16069280540646233587

namespace A000068

/-- `eq[1, A193929(n)]` -/
def P16069280540646233587.Spec : Prop :=
  ∀ n, (P16069280540646233587.a n : ℤ) = A000068 (n + 1)

end A000068

/-! ## A000068.P15430255480115911736

`eq[2, A193562(n)]`
-/

namespace A000068.P15430255480115911736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000068.P15430255480115911736

namespace A000068

/-- `eq[2, A193562(n)]` -/
def P15430255480115911736.Spec : Prop :=
  ∀ n, (P15430255480115911736.a n : ℤ) = A000068 (n + 1)

end A000068

/-! ## A000068.P6698582801575119838

`eq[1, A270927(n+1)]+1`
-/

namespace A000068.P6698582801575119838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270927 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A000068.P6698582801575119838

namespace A000068

/-- `eq[1, A270927(n+1)]+1` -/
def P6698582801575119838.Spec : Prop :=
  ∀ n, (P6698582801575119838.a n : ℤ) = A000068 (n + 1)

end A000068

/-! ## A000068.P2756371421309383391

`lt[A193929(n+1), 2]+1`
-/

namespace A000068.P2756371421309383391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A000068.P2756371421309383391

namespace A000068

/-- `lt[A193929(n+1), 2]+1` -/
def P2756371421309383391.Spec : Prop :=
  ∀ n, (P2756371421309383391.a n : ℤ) = A000068 (n + 1)

end A000068

/-! ## A000068.P4669393272468015463

`lt[A211241(A193562(n)+1), 1]`
-/

namespace A000068.P4669393272468015463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211241 (A193562 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A000068.P4669393272468015463

namespace A000068

/-- `lt[A211241(A193562(n)+1), 1]` -/
def P4669393272468015463.Spec : Prop :=
  ∀ n, (P4669393272468015463.a n : ℤ) = A000068 (n + 1)

end A000068

/-! ## A000068.P7493222819845620570

`lt[A004736(A193562(n)+1), 2]`
-/

namespace A000068.P7493222819845620570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A193562 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A000068.P7493222819845620570

namespace A000068

/-- `lt[A004736(A193562(n)+1), 2]` -/
def P7493222819845620570.Spec : Prop :=
  ∀ n, (P7493222819845620570.a n : ℤ) = A000068 (n + 1)

end A000068

/-! ## A000068.P11784244031181908665

`record[(n+1)/A000401(A193562(n+1))]`
-/

namespace A000068.P11784244031181908665
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000401 (A193562 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000068.P11784244031181908665

namespace A000068

/-- `record[(n+1)/A000401(A193562(n+1))]` -/
def P11784244031181908665.Spec : Prop :=
  ∀ n, P11784244031181908665.a n = (A000068 (n + 1) : ℚ)

end A000068

/-! ## A000068.P3951895692453498516

`eq[A053786(n+1), A096172(n+1)]+1`
-/

namespace A000068.P3951895692453498516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096172 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A000068.P3951895692453498516

namespace A000068

/-- `eq[A053786(n+1), A096172(n+1)]+1` -/
def P3951895692453498516.Spec : Prop :=
  ∀ n, (P3951895692453498516.a n : ℤ) = A000068 (n + 1)

end A000068

/-! ## A000068.P9249891892031062021

`lt[A193564(A193562(n))², A193509(n+1)]`
-/

namespace A000068.P9249891892031062021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193564 (A193562 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193509 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A000068.P9249891892031062021

namespace A000068

/-- `lt[A193564(A193562(n))², A193509(n+1)]` -/
def P9249891892031062021.Spec : Prop :=
  ∀ n, (P9249891892031062021.a n : ℤ) = A000068 (n + 1)

end A000068

/-! ## A000068.P3451479646874439086

`record[A000027(n+1)/A193929(A000027(n+1))²]`
-/

namespace A000068.P3451479646874439086
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A193929 (A000027 (n + 1)).toNat ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000068.P3451479646874439086

namespace A000068

/-- `record[A000027(n+1)/A193929(A000027(n+1))²]` -/
def P3451479646874439086.Spec : Prop :=
  ∀ n, P3451479646874439086.a n = (A000068 (n + 1) : ℚ)

end A000068

/-! ## A000068.P11153499778548500881

`record[A008619(2*n)/A193929(n+1)²]`
-/

namespace A000068.P11153499778548500881
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A193929 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000068.P11153499778548500881

namespace A000068

/-- `record[A008619(2*n)/A193929(n+1)²]` -/
def P11153499778548500881.Spec : Prop :=
  ∀ n, P11153499778548500881.a n = (A000068 (n + 1) : ℚ)

end A000068

/-! ## A000068.P2675977481342688670

`lt[A193562(n), A074473(4*n+1)]`
-/

namespace A000068.P2675977481342688670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074473 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A000068.P2675977481342688670

namespace A000068

/-- `lt[A193562(n), A074473(4*n+1)]` -/
def P2675977481342688670.Spec : Prop :=
  ∀ n, (P2675977481342688670.a n : ℤ) = A000068 (n + 1)

end A000068

/-!
# A000069: Odious numbers: numbers with an odd number of 1's in their binary expansion.

The programs for A000069, the canonical program `A000069.P1050670559813085717` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000069 has offset 1).

The definition of A000069 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000069.P1050670559813085717

`1/2*(4*n+1+(-1)^A000120(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A000069

/-- `1/2*(4*n+1+(-1)^A000120(n))` -/
def P1050670559813085717.Spec : Prop :=
  ∀ n, P1050670559813085717.a n = (A000069 (n + 1) : ℚ)

end A000069

/-! ## A000069.P7087360813786457996

`comp[xor(n, 2*n)]`
-/

namespace A000069.P7087360813786457996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A000069.P7087360813786457996

namespace A000069

/-- `comp[xor(n, 2*n)]` -/
def P7087360813786457996.Spec : Prop :=
  ∀ n, (P7087360813786457996.a n : ℤ) = A000069 (n + 1)

end A000069

/-! ## A000069.P8228008242277552017

`lt[-a(and(n, n-1)), 0]` with `a(0)=1`
-/

namespace A000069.P8228008242277552017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A000069.P8228008242277552017

namespace A000069

/-- `lt[-a(and(n, n-1)), 0]` -/
def P8228008242277552017.Spec : Prop :=
  ∀ n, (P8228008242277552017.a n : ℤ) = A000069 (n + 1)

end A000069

/-! ## A000069.P3137827671632191937

`char[xor(n, 2*n)]+2*n`
-/

namespace A000069.P3137827671632191937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 2 * n

end

end A000069.P3137827671632191937

namespace A000069

/-- `char[xor(n, 2*n)]+2*n` -/
def P3137827671632191937.Spec : Prop :=
  ∀ n, (P3137827671632191937.a n : ℤ) = A000069 (n + 1)

end A000069

/-! ## A000069.P12073106030050855825

`or(2*n, char[xor(n, 2*n)])`
-/

namespace A000069.P12073106030050855825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (if ∃ j, f1 j = n then 1 else 0)

end

end A000069.P12073106030050855825

namespace A000069

/-- `or(2*n, char[xor(n, 2*n)])` -/
def P12073106030050855825.Spec : Prop :=
  ∀ n, (P12073106030050855825.a n : ℤ) = A000069 (n + 1)

end A000069

/-! ## A000069.P3942269000847040284

`xor(2*n, char[xor(n, 2*n)])`
-/

namespace A000069.P3942269000847040284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n) (if ∃ j, f1 j = n then 1 else 0)

end

end A000069.P3942269000847040284

namespace A000069

/-- `xor(2*n, char[xor(n, 2*n)])` -/
def P3942269000847040284.Spec : Prop :=
  ∀ n, (P3942269000847040284.a n : ℤ) = A000069 (n + 1)

end A000069

/-! ## A000069.P16778379330083604940

`eq[1, 1-a(and(n, n-1))]` with `a(0)=0`
-/

namespace A000069.P16778379330083604940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  1 - f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000069.P16778379330083604940

namespace A000069

/-- `eq[1, 1-a(and(n, n-1))]` -/
def P16778379330083604940.Spec : Prop :=
  ∀ n, (P16778379330083604940.a n : ℤ) = A000069 (n + 1)

end A000069

/-! ## A000069.P12565543062344399661

`2*n+1-and(1, a(and(n, n-1)))` with `a(0)=1`
-/

namespace A000069.P12565543062344399661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1 : ℤ) - Int.land 1 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

end

end A000069.P12565543062344399661

namespace A000069

/-- `2*n+1-and(1, a(and(n, n-1)))` -/
def P12565543062344399661.Spec : Prop :=
  ∀ n, P12565543062344399661.a n = A000069 (n + 1)

end A000069

/-! ## A000069.P15133656215062894707

`record[A268669(n+1)]`
-/

namespace A000069.P15133656215062894707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000069.P15133656215062894707

namespace A000069

/-- `record[A268669(n+1)]` -/
def P15133656215062894707.Spec : Prop :=
  ∀ n, P15133656215062894707.a n = A000069 (n + 1)

end A000069

/-! ## A000069.P10494597291018116896

`A181155(n+1)-1`
-/

namespace A000069.P10494597291018116896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181155 (n + 1) - 1

end

end A000069.P10494597291018116896

namespace A000069

/-- `A181155(n+1)-1` -/
def P10494597291018116896.Spec : Prop :=
  ∀ n, P10494597291018116896.a n = A000069 (n + 1)

end A000069

/-! ## A000069.P2142420446551658903

`A128309(n+1)/2`
-/

namespace A000069.P2142420446551658903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128309 (n + 1) : ℚ) / 2

end

end A000069.P2142420446551658903

namespace A000069

/-- `A128309(n+1)/2` -/
def P2142420446551658903.Spec : Prop :=
  ∀ n, P2142420446551658903.a n = (A000069 (n + 1) : ℚ)

end A000069

/-! ## A000069.P4195299032901127126

`xor(1, A001969(n+1))`
-/

namespace A000069.P4195299032901127126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A001969 (n + 1))

end

end A000069.P4195299032901127126

namespace A000069

/-- `xor(1, A001969(n+1))` -/
def P4195299032901127126.Spec : Prop :=
  ∀ n, P4195299032901127126.a n = A000069 (n + 1)

end A000069

/-! ## A000069.P6625944643498584486

`eq[0, A254651(2*n)]`
-/

namespace A000069.P6625944643498584486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254651 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000069.P6625944643498584486

namespace A000069

/-- `eq[0, A254651(2*n)]` -/
def P6625944643498584486.Spec : Prop :=
  ∀ n, (P6625944643498584486.a n : ℤ) = A000069 (n + 1)

end A000069

/-! ## A000069.P6099942907662792369

`eq[1, A254379(2*n)]`
-/

namespace A000069.P6099942907662792369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000069.P6099942907662792369

namespace A000069

/-- `eq[1, A254379(2*n)]` -/
def P6099942907662792369.Spec : Prop :=
  ∀ n, (P6099942907662792369.a n : ℤ) = A000069 (n + 1)

end A000069

/-! ## A000069.P18043353311604294151

`A010059(n)+2*n`
-/

namespace A000069.P18043353311604294151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n + (2 * n : ℤ)

end

end A000069.P18043353311604294151

namespace A000069

/-- `A010059(n)+2*n` -/
def P18043353311604294151.Spec : Prop :=
  ∀ n, P18043353311604294151.a n = A000069 (n + 1)

end A000069

/-! ## A000069.P6435076537820601531

`∑{d}[n+1, A130159(#)]`
-/

namespace A000069.P6435076537820601531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130159 d

end

end A000069.P6435076537820601531

namespace A000069

/-- `∑{d}[n+1, A130159(#)]` -/
def P6435076537820601531.Spec : Prop :=
  ∀ n, P6435076537820601531.a n = A000069 (n + 1)

end A000069

/-! ## A000069.P17710776538891684002

`(A129771(n+1)-1)/2`
-/

namespace A000069.P17710776538891684002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129771 (n + 1) - 1 : ℚ) / 2

end

end A000069.P17710776538891684002

namespace A000069

/-- `(A129771(n+1)-1)/2` -/
def P17710776538891684002.Spec : Prop :=
  ∀ n, P17710776538891684002.a n = (A000069 (n + 1) : ℚ)

end A000069

/-! ## A000069.P2773158698288038968

`A003188(A268716(n)+1)`
-/

namespace A000069.P2773158698288038968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A268716 n + 1).toNat

end

end A000069.P2773158698288038968

namespace A000069

/-- `A003188(A268716(n)+1)` -/
def P2773158698288038968.Spec : Prop :=
  ∀ n, P2773158698288038968.a n = A000069 (n + 1)

end A000069

/-! ## A000069.P12640687851144057053

`A159481(n)+A026430(n)`
-/

namespace A000069.P12640687851144057053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159481 n + A026430 n

end

end A000069.P12640687851144057053

namespace A000069

/-- `A159481(n)+A026430(n)` -/
def P12640687851144057053.Spec : Prop :=
  ∀ n, P12640687851144057053.a n = A000069 (n + 1)

end A000069

/-!
# A000070: a(n) = Sum_{k=0..n} p(k) where p(k) = number of partitions of k (A000041).

The programs for A000070, there is no canonical definition to state claims against.
-/

/-! ## A000070.P8773384105564230675

`A024786(n+2)+A024786(n+1)`
-/

namespace A000070.P8773384105564230675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024786 (n + 2) + A024786 (n + 1)

end

end A000070.P8773384105564230675

/-! ## A000070.P6409585122684189826

`A025065(2*n)`
-/

namespace A000070.P6409585122684189826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 (2 * n)

end

end A000070.P6409585122684189826

/-! ## A000070.P14927915404201581036

`A092269(n+1)-A195820(n+1)`
-/

namespace A000070.P14927915404201581036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092269 (n + 1) - A195820 (n + 1)

end

end A000070.P14927915404201581036

/-! ## A000070.P7052979455285757449

`A000041(2*n+1)-A110618(2*n+1)`
-/

namespace A000070.P7052979455285757449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n + 1) - A110618 (2 * n + 1)

end

end A000070.P7052979455285757449

/-! ## A000070.P11546043828107335099

`∑[A000041(n)]`
-/

namespace A000070.P11546043828107335099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000070.P11546043828107335099

/-! ## A000070.P14758515317358679571

`∑[∑[A002865(n)]]`
-/

namespace A000070.P14758515317358679571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000070.P14758515317358679571

/-! ## A000070.P6719045488048602277

`∑[A000065(n)+1]`
-/

namespace A000070.P6719045488048602277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000070.P6719045488048602277

/-! ## A000070.P15481771941780926761

`∑[A139582(n)/2]`
-/

namespace A000070.P15481771941780926761
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000070.P15481771941780926761

/-! ## A000070.P9294829819017663814

`∑[A052810(n)]-n`
-/

namespace A000070.P9294829819017663814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A000070.P9294829819017663814

/-! ## A000070.P5089599160789218289

`∑[A133041(n)-n]`
-/

namespace A000070.P5089599160789218289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000070.P5089599160789218289

/-! ## A000070.P3218094482802336872

`A216053(n+1)-1`
-/

namespace A000070.P3218094482802336872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216053 (n + 1) - 1

end

end A000070.P3218094482802336872

/-! ## A000070.P12069017194335002410

`A058682(n)+1+n`
-/

namespace A000070.P12069017194335002410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058682 n + 1 + (n : ℤ)

end

end A000070.P12069017194335002410

/-! ## A000070.P10911368348602345095

`∑[∑[A085811(n+3)]]`
-/

namespace A000070.P10911368348602345095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000070.P10911368348602345095

/-! ## A000070.P17035841338461944903

`A084376(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A000070.P17035841338461944903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A084376 n + a (n - 2)

end

end A000070.P17035841338461944903

/-! ## A000070.P11670023790265965767

`a(n-1)+A000041(2*n-n)` with `a(0)=1`
-/

namespace A000070.P11670023790265965767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000041 (2 * n - n)

end

end A000070.P11670023790265965767

/-! ## A000070.P6382137514460875281

`A139582(n)+A058884(n)`
-/

namespace A000070.P6382137514460875281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139582 n + A058884 n

end

end A000070.P6382137514460875281

/-! ## A000070.P5255750048524072624

`A306145(n)+A304620(n)`
-/

namespace A000070.P5255750048524072624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306145 n + A304620 n

end

end A000070.P5255750048524072624

/-! ## A000070.P8793221885129715632

`∑[A295341(n)+A000726(n)]`
-/

namespace A000070.P8793221885129715632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295341 n + A000726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000070.P8793221885129715632

/-! ## A000070.P15774052261340713750

`A058884(n+1)+A000041(n+1)`
-/

namespace A000070.P15774052261340713750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058884 (n + 1) + A000041 (n + 1)

end

end A000070.P15774052261340713750

/-! ## A000070.P17381030624076098802

`A120452(n+2)-A002865(n+1)`
-/

namespace A000070.P17381030624076098802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120452 (n + 2) - A002865 (n + 1)

end

end A000070.P17381030624076098802

/-!
# A000071: a(n) = Fibonacci(n) - 1.

The programs for A000071, the canonical program `A000071.P14715820033649062238` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000071 has offset 1).

The definition of A000071 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000071.P2131056320266407347

`ceil(ϕ*a(n-1))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A000071.P2131056320266407347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  ⌈Real.goldenRatio * (a (n - 1) : ℝ)⌉

end

end A000071.P2131056320266407347

namespace A000071

/-- `ceil(ϕ*a(n-1))` -/
def P2131056320266407347.Spec : Prop :=
  ∀ n, P2131056320266407347.a n = A000071 (n + 1)

end A000071

/-! ## A000071.P14715820033649062238

`a(n-1)+a(n-2)+1` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000071

/-- `a(n-1)+a(n-2)+1` -/
def P14715820033649062238.Spec : Prop :=
  ∀ n, (P14715820033649062238.a n : ℤ) = A000071 (n + 1)

theorem P14715820033649062238.correct : P14715820033649062238.Spec := by
  intro n
  simp only [A000071, Nat.add_sub_cancel]

end A000071

/-! ## A000071.P17543778731970887199

`A000045(n+1)-1`
-/

namespace A000071.P17543778731970887199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - 1

end

end A000071.P17543778731970887199

namespace A000071

/-- `A000045(n+1)-1` -/
def P17543778731970887199.Spec : Prop :=
  ∀ n, P17543778731970887199.a n = A000071 (n + 1)

end A000071

/-! ## A000071.P8558475351112750373

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A000071.P8558475351112750373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A000071.P8558475351112750373

namespace A000071

/-- `2*a(n-1)-a(n-3)` -/
def P8558475351112750373.Spec : Prop :=
  ∀ n, P8558475351112750373.a n = A000071 (n + 1)

end A000071

/-! ## A000071.P10709070802637133973

`ogf(x^2/(1-2x+x^3))`
-/

namespace A000071.P10709070802637133973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -2, 0, 1] n

end

end A000071.P10709070802637133973

namespace A000071

/-- `ogf(x^2/(1-2x+x^3))` -/
def P10709070802637133973.Spec : Prop :=
  ∀ n, P10709070802637133973.a n = A000071 (n + 1)

end A000071

/-! ## A000071.P15784081049893866004

`floor(ϕ*a(n-1))+1` with `a(0)=0, a(1)=0`
-/

namespace A000071.P15784081049893866004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) : ℝ)⌋ + 1

end

end A000071.P15784081049893866004

namespace A000071

/-- `floor(ϕ*a(n-1))+1` -/
def P15784081049893866004.Spec : Prop :=
  ∀ n, P15784081049893866004.a n = A000071 (n + 1)

end A000071

/-! ## A000071.P16349319097215334302

`a(n-1)-xor(-1, a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A000071.P16349319097215334302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) - Int.xor (-1) (a (n - 2))

end

end A000071.P16349319097215334302

namespace A000071

/-- `a(n-1)-xor(-1, a(n-2))` -/
def P16349319097215334302.Spec : Prop :=
  ∀ n, P16349319097215334302.a n = A000071 (n + 1)

end A000071

/-! ## A000071.P15768933787317545942

`2-floor(1-a(n-1)-a(n-2))` with `a(0)=0, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A000071.P15768933787317545942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  2 - (1 - a (n - 1) - a (n - 2))

end

end A000071.P15768933787317545942

namespace A000071

/-- `2-floor(1-a(n-1)-a(n-2))` -/
def P15768933787317545942.Spec : Prop :=
  ∀ n, P15768933787317545942.a n = A000071 (n + 1)

end A000071

/-! ## A000071.P5723504795251499406

`n-∑[a(n-1)-(1-a(n-2))]` with `a(0)=0, a(1)=1`
-/

namespace A000071.P5723504795251499406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000071.P5723504795251499406

namespace A000071

/-- `n-∑[a(n-1)-(1-a(n-2))]` -/
def P5723504795251499406.Spec : Prop :=
  ∀ n, P5723504795251499406.a n = A000071 (n + 1)

end A000071

/-! ## A000071.P13130970017297366618

`4/2-(1-a(n-1)-a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A000071.P13130970017297366618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  (4 : ℚ) / 2 - (1 - a (n - 1) - a (n - 2))

end

end A000071.P13130970017297366618

namespace A000071

/-- `4/2-(1-a(n-1)-a(n-2))` -/
def P13130970017297366618.Spec : Prop :=
  ∀ n, P13130970017297366618.a n = (A000071 (n + 1) : ℚ)

end A000071

/-! ## A000071.P18136052328565062427

`A226649(2*n)`
-/

namespace A000071.P18136052328565062427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226649 (2 * n)

end

end A000071.P18136052328565062427

namespace A000071

/-- `A226649(2*n)` -/
def P18136052328565062427.Spec : Prop :=
  ∀ n, P18136052328565062427.a n = A000071 (n + 1)

end A000071

/-! ## A000071.P9967668175047043984

`∑[A212804(n)]-1`
-/

namespace A000071.P9967668175047043984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A000071.P9967668175047043984

namespace A000071

/-- `∑[A212804(n)]-1` -/
def P9967668175047043984.Spec : Prop :=
  ∀ n, P9967668175047043984.a n = A000071 (n + 1)

end A000071

/-! ## A000071.P5628143392912951080

`A001611(n+1)-2`
-/

namespace A000071.P5628143392912951080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 1) - 2

end

end A000071.P5628143392912951080

namespace A000071

/-- `A001611(n+1)-2` -/
def P5628143392912951080.Spec : Prop :=
  ∀ n, P5628143392912951080.a n = A000071 (n + 1)

end A000071

/-! ## A000071.P12066356779927676093

`A212804(n+2)-1`
-/

namespace A000071.P12066356779927676093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) - 1

end

end A000071.P12066356779927676093

namespace A000071

/-- `A212804(n+2)-1` -/
def P12066356779927676093.Spec : Prop :=
  ∀ n, P12066356779927676093.a n = A000071 (n + 1)

end A000071

/-! ## A000071.P1628993155836096322

`A324969(n+2)-1`
-/

namespace A000071.P1628993155836096322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 2) - 1

end

end A000071.P1628993155836096322

namespace A000071

/-- `A324969(n+2)-1` -/
def P1628993155836096322.Spec : Prop :=
  ∀ n, P1628993155836096322.a n = A000071 (n + 1)

end A000071

/-! ## A000071.P13100782306876366780

`A157725(n+1)-3`
-/

namespace A000071.P13100782306876366780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 (n + 1) - 3

end

end A000071.P13100782306876366780

namespace A000071

/-- `A157725(n+1)-3` -/
def P13100782306876366780.Spec : Prop :=
  ∀ n, P13100782306876366780.a n = A000071 (n + 1)

end A000071

/-! ## A000071.P2302848050228003841

`A079977(2*n)-1`
-/

namespace A000071.P2302848050228003841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (2 * n) - 1

end

end A000071.P2302848050228003841

namespace A000071

/-- `A079977(2*n)-1` -/
def P2302848050228003841.Spec : Prop :=
  ∀ n, P2302848050228003841.a n = A000071 (n + 1)

end A000071

/-! ## A000071.P11930794100614784040

`A157726(n+1)-4`
-/

namespace A000071.P11930794100614784040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 (n + 1) - 4

end

end A000071.P11930794100614784040

namespace A000071

/-- `A157726(n+1)-4` -/
def P11930794100614784040.Spec : Prop :=
  ∀ n, P11930794100614784040.a n = A000071 (n + 1)

end A000071

/-! ## A000071.P9270615418996740591

`A157727(n+1)-5`
-/

namespace A000071.P9270615418996740591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157727 (n + 1) - 5

end

end A000071.P9270615418996740591

namespace A000071

/-- `A157727(n+1)-5` -/
def P9270615418996740591.Spec : Prop :=
  ∀ n, P9270615418996740591.a n = A000071 (n + 1)

end A000071

/-! ## A000071.P8256218911083065888

`A327035(3*n)-1`
-/

namespace A000071.P8256218911083065888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327035 (3 * n) - 1

end

end A000071.P8256218911083065888

namespace A000071

/-- `A327035(3*n)-1` -/
def P8256218911083065888.Spec : Prop :=
  ∀ n, P8256218911083065888.a n = A000071 (n + 1)

end A000071

/-!
# A000072: Number of positive integers <= 2^n of form x^2 + 4 y^2.

The programs for A000072, there is no canonical definition to state claims against.
-/

/-! ## A000072.P969657502570673064

`A257639(A160755(n+1)*A319560(n))`
-/

namespace A000072.P969657502570673064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A160755 (n + 1) * A319560 n).toNat

end

end A000072.P969657502570673064

/-! ## A000072.P5877733638323268695

`A103128(A016514(2*(n+1))+A001189(n+1))`
-/

namespace A000072.P5877733638323268695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A016514 (2 * (n + 1)) + A001189 (n + 1)).toNat

end

end A000072.P5877733638323268695

/-! ## A000072.P7202499385298919161

`A117924(A026713(n))`
-/

namespace A000072.P7202499385298919161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117924 (A026713 n).toNat

end

end A000072.P7202499385298919161

/-! ## A000072.P1734766154828665145

`A026099(A148856(n))`
-/

namespace A000072.P1734766154828665145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026099 (A148856 n).toNat

end

end A000072.P1734766154828665145

/-! ## A000072.P16460918058250546238

`A137734(A192877(n))`
-/

namespace A000072.P16460918058250546238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A192877 n).toNat

end

end A000072.P16460918058250546238

/-!
# A000073: Tribonacci numbers: a(n) = a(n-1) + a(n-2) + a(n-3) for n >= 3 with a(0) = a(1) = 0 and a(2) = 1.

The programs for A000073, the canonical program `A000073.P7141908421961241923` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000073 has offset 0).

The definition of A000073 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A000073.P7141908421961241923`, by `A000073.P7141908421961241923.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000073.P13753347270466221058

`2*a(n-1)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A000073.P13753347270466221058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1] fun n a =>
  2 * a (n - 1) - a (n - 4)

end

end A000073.P13753347270466221058

namespace A000073

/-- `2*a(n-1)-a(n-4)` -/
def P13753347270466221058.Spec : Prop :=
  ∀ n, P13753347270466221058.a n = A000073 n

end A000073

/-! ## A000073.P7141908421961241923

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000073

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P7141908421961241923.Spec : Prop :=
  ∀ n, (P7141908421961241923.a n : ℤ) = A000073 n

theorem P7141908421961241923.correct : P7141908421961241923.Spec := by
  intro n
  simp only [A000073]

end A000073

/-! ## A000073.P13396975721235345917

`(A000213(n+1)-A000213(n))/2`
-/

namespace A000073.P13396975721235345917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000213 (n + 1) - A000213 n : ℚ) / 2

end

end A000073.P13396975721235345917

namespace A000073

/-- `(A000213(n+1)-A000213(n))/2` -/
def P13396975721235345917.Spec : Prop :=
  ∀ n, P13396975721235345917.a n = (A000073 n : ℚ)

end A000073

/-! ## A000073.P17368705431265982338

`ogf(-x^2/(-1+x+x^2+x^3))`
-/

namespace A000073.P17368705431265982338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -1, -1, -1] n

end

end A000073.P17368705431265982338

namespace A000073

/-- `ogf(-x^2/(-1+x+x^2+x^3))` -/
def P17368705431265982338.Spec : Prop :=
  ∀ n, P17368705431265982338.a n = A000073 n

end A000073

/-! ## A000073.P12544124614603102947

`a(n-1)-(a(n-4)-a(n-1))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A000073.P12544124614603102947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 1))

end

end A000073.P12544124614603102947

namespace A000073

/-- `a(n-1)-(a(n-4)-a(n-1))` -/
def P12544124614603102947.Spec : Prop :=
  ∀ n, P12544124614603102947.a n = A000073 n

end A000073

/-! ## A000073.P13770566894308063555

`A001590(n)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A000073.P13770566894308063555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A001590 n + a (n - 3)

end

end A000073.P13770566894308063555

namespace A000073

/-- `A001590(n)+a(n-3)` -/
def P13770566894308063555.Spec : Prop :=
  ∀ n, P13770566894308063555.a n = A000073 n

end A000073

/-! ## A000073.P10258477708584788079

`A114952(A014601(n))`
-/

namespace A000073.P10258477708584788079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114952 (A014601 n).toNat

end

end A000073.P10258477708584788079

namespace A000073

/-- `A114952(A014601(n))` -/
def P10258477708584788079.Spec : Prop :=
  ∀ n, P10258477708584788079.a n = A000073 n

end A000073

/-! ## A000073.P3933441045708939120

`A112476(n)-A033999(n)`
-/

namespace A000073.P3933441045708939120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112476 n - A033999 n

end

end A000073.P3933441045708939120

namespace A000073

/-- `A112476(n)-A033999(n)` -/
def P3933441045708939120.Spec : Prop :=
  ∀ n, P3933441045708939120.a n = A000073 n

end A000073

/-! ## A000073.P6908864741832827362

`A338192(n)-A000045(n)`
-/

namespace A000073.P6908864741832827362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338192 n - A000045 n

end

end A000073.P6908864741832827362

namespace A000073

/-- `A338192(n)-A000045(n)` -/
def P6908864741832827362.Spec : Prop :=
  ∀ n, P6908864741832827362.a n = A000073 n

theorem P6908864741832827362.correct : P6908864741832827362.Spec := by
  intro n
  simp only [A000073, Nat.add_sub_cancel, A000073.P6908864741832827362.a, A000073.P7141908421961241923.a, A000045, A000045.P11838749114346432762.a, A338192, A338192.P8906844135182273752.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000073

/-! ## A000073.P10498954981174834121

`∑[A001590(A004273(n)-n)]`
-/

namespace A000073.P10498954981174834121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000073.P10498954981174834121

namespace A000073

/-- `∑[A001590(A004273(n)-n)]` -/
def P10498954981174834121.Spec : Prop :=
  ∀ n, P10498954981174834121.a n = A000073 n

end A000073

/-! ## A000073.P6517675476821116278

`A114952(A042963(n+2)-2)`
-/

namespace A000073.P6517675476821116278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114952 (A042963 (n + 2) - 2).toNat

end

end A000073.P6517675476821116278

namespace A000073

/-- `A114952(A042963(n+2)-2)` -/
def P6517675476821116278.Spec : Prop :=
  ∀ n, P6517675476821116278.a n = A000073 n

end A000073

/-! ## A000073.P1287024223633331619

`Δ[A192804(n)]`
-/

namespace A000073.P1287024223633331619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000073.P1287024223633331619

namespace A000073

/-- `Δ[A192804(n)]` -/
def P1287024223633331619.Spec : Prop :=
  ∀ n, P1287024223633331619.a n = A000073 n

end A000073

/-! ## A000073.P4120623972932727305

`A354784(n)/2`
-/

namespace A000073.P4120623972932727305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354784 n : ℚ) / 2

end

end A000073.P4120623972932727305

namespace A000073

/-- `A354784(n)/2` -/
def P4120623972932727305.Spec : Prop :=
  ∀ n, P4120623972932727305.a n = (A000073 n : ℚ)

end A000073

/-! ## A000073.P14544249055972374538

`A000213(n)-A081172(n)`
-/

namespace A000073.P14544249055972374538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n - A081172 n

end

end A000073.P14544249055972374538

namespace A000073

/-- `A000213(n)-A081172(n)` -/
def P14544249055972374538.Spec : Prop :=
  ∀ n, P14544249055972374538.a n = A000073 n

end A000073

/-! ## A000073.P16255743942709750603

`∑[A001590(n)]-A001590(n)`
-/

namespace A000073.P16255743942709750603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001590 n

end

end A000073.P16255743942709750603

namespace A000073

/-- `∑[A001590(n)]-A001590(n)` -/
def P16255743942709750603.Spec : Prop :=
  ∀ n, P16255743942709750603.a n = A000073 n

end A000073

/-! ## A000073.P6006452298389785782

`A192804(n+1)-A192804(n)`
-/

namespace A000073.P6006452298389785782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 (n + 1) - A192804 n

end

end A000073.P6006452298389785782

namespace A000073

/-- `A192804(n+1)-A192804(n)` -/
def P6006452298389785782.Spec : Prop :=
  ∀ n, P6006452298389785782.a n = A000073 n

end A000073

/-! ## A000073.P14352206822300410957

`A020992(n)-2*A001590(n)`
-/

namespace A000073.P14352206822300410957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020992 n - 2 * A001590 n

end

end A000073.P14352206822300410957

namespace A000073

/-- `A020992(n)-2*A001590(n)` -/
def P14352206822300410957.Spec : Prop :=
  ∀ n, P14352206822300410957.a n = A000073 n

end A000073

/-! ## A000073.P1230413071594703423

`A081172(n+1)-A001590(n+1)`
-/

namespace A000073.P1230413071594703423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 (n + 1) - A001590 (n + 1)

end

end A000073.P1230413071594703423

namespace A000073

/-- `A081172(n+1)-A001590(n+1)` -/
def P1230413071594703423.Spec : Prop :=
  ∀ n, P1230413071594703423.a n = A000073 n

end A000073

/-! ## A000073.P16731298070210223275

`A214899(n)-A141036(n)`
-/

namespace A000073.P16731298070210223275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214899 n - A141036 n

end

end A000073.P16731298070210223275

namespace A000073

/-- `A214899(n)-A141036(n)` -/
def P16731298070210223275.Spec : Prop :=
  ∀ n, P16731298070210223275.a n = A000073 n

end A000073

/-! ## A000073.P1668689268769998529

`A214727(n)-A275778(n)`
-/

namespace A000073.P1668689268769998529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n - A275778 n

end

end A000073.P1668689268769998529

namespace A000073

/-- `A214727(n)-A275778(n)` -/
def P1668689268769998529.Spec : Prop :=
  ∀ n, P1668689268769998529.a n = A000073 n

end A000073

/-!
# A000074: Number of odd integers <= 2^n of form x^2 + y^2.

The programs for A000074, there is no canonical definition to state claims against.
-/

/-! ## A000074.P8180350943112091804

`Δ[A000050(n)]`
-/

namespace A000074.P8180350943112091804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000074.P8180350943112091804

/-! ## A000074.P2413052753933459265

`A000050(n+1)-A000050(n)`
-/

namespace A000074.P2413052753933459265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000050 (n + 1) - A000050 n

end

end A000074.P2413052753933459265

/-! ## A000074.P9039884964565945805

`A000050(2*n-(n-2))-A000072(2*n-(n-2))`
-/

namespace A000074.P9039884964565945805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000050 ((2 * n : ℤ) - ((n : ℤ) - 2)).toNat - A000072 ((2 * n : ℤ) - ((n : ℤ) - 2)).toNat

end

end A000074.P9039884964565945805

/-! ## A000074.P193519935681486145

`record[A000050(A025923(n))]-A000050(n)`
-/

namespace A000074.P193519935681486145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000050 (A025923 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000050 n

end

end A000074.P193519935681486145

/-! ## A000074.P12939486042165872493

`record[A000050(A123108(n))]-A000050(n)`
-/

namespace A000074.P12939486042165872493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000050 (A123108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000050 n

end

end A000074.P12939486042165872493

/-!
# A000075: Number of positive integers <= 2^n of form 2*x^2 + 3*y^2.

The programs for A000075, there is no canonical definition to state claims against.
-/

/-! ## A000075.P2954977660766042985

`char[5]+record[A120643(n+1)-A124389(n)]`
-/

namespace A000075.P2954977660766042985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120643 (n + 1) - A124389 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A000075.P2954977660766042985

/-! ## A000075.P6544483439137067623

`char[5]+record[A238346(n+1)-A124389(n)]`
-/

namespace A000075.P6544483439137067623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238346 (n + 1) - A124389 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A000075.P6544483439137067623

/-! ## A000075.P4935179133596783228

`A048888(n)+∑{p}[A289158(n), val(n+1, #)]`
-/

namespace A000075.P4935179133596783228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048888 n + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ)

end

end A000075.P4935179133596783228

/-! ## A000075.P13946190308463286815

`A101605(A038078(n))+A048888(n)`
-/

namespace A000075.P13946190308463286815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (A038078 n).toNat + A048888 n

end

end A000075.P13946190308463286815

/-! ## A000075.P7322084598604141159

`A101605(A042723(n))+A048888(n)`
-/

namespace A000075.P7322084598604141159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (A042723 n).toNat + A048888 n

end

end A000075.P7322084598604141159

/-!
# A000076: Number of integers <= 2^n of form 4 x^2 + 4 x y + 5 y^2.

The programs for A000076, there is no canonical definition to state claims against.
-/

/-! ## A000076.P6491756369131794180

`A054169(n)-A184159(A147349(n+1))`
-/

namespace A000076.P6491756369131794180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054169 n - A184159 (A147349 (n + 1)).toNat

end

end A000076.P6491756369131794180

/-! ## A000076.P6307165566279172397

`A143472(3*n+1)-A341024(A005384(n+1))`
-/

namespace A000076.P6307165566279172397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143472 (3 * n + 1) - A341024 ((A005384 (n + 1)).toNat + 84)

end

end A000076.P6307165566279172397

/-! ## A000076.P4195800296489038366

`floor(A002024(floor(π^n))/π)`
-/

namespace A000076.P4195800296489038366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002024 ⌊Real.pi ^ n⌋.toNat : ℝ) / Real.pi⌋

end

end A000076.P4195800296489038366

/-! ## A000076.P8451624751298524961

`round(A319925(2*n+3)/5)`
-/

namespace A000076.P8451624751298524961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A319925 (2 * n + 3) : ℚ) / 5)

end

end A000076.P8451624751298524961

/-! ## A000076.P9748846442255794331

`A367193(A052972(n))`
-/

namespace A000076.P9748846442255794331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367193 (A052972 n).toNat

end

end A000076.P9748846442255794331

/-!
# A000077: Number of positive integers <= 2^n of form x^2 + 6 y^2.

The programs for A000077, there is no canonical definition to state claims against.
-/

/-! ## A000077.P16130695588175425308

`A000267(A120304(n)+A001383(n))`
-/

namespace A000077.P16130695588175425308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A120304 n + A001383 n).toNat

end

end A000077.P16130695588175425308

/-! ## A000077.P10353293088515048143

`A000267(A120304(n)+A098057(n))`
-/

namespace A000077.P10353293088515048143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A120304 n + A098057 n).toNat

end

end A000077.P10353293088515048143

/-! ## A000077.P459252377727756596

`A206915(A120304(n)+A000041(n))`
-/

namespace A000077.P459252377727756596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206915 (A120304 n + A000041 n).toNat

end

end A000077.P459252377727756596

/-! ## A000077.P14955994029356659557

`A003056(A294790(n)+A036657(n))`
-/

namespace A000077.P14955994029356659557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A294790 n + A036657 n).toNat

end

end A000077.P14955994029356659557

/-! ## A000077.P13947403454830626385

`A257639(A084509(n))+A002620(n)`
-/

namespace A000077.P13947403454830626385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A084509 n).toNat + A002620 n

end

end A000077.P13947403454830626385

/-!
# A000078: Tetranacci numbers: a(n) = a(n-1) + a(n-2) + a(n-3) + a(n-4) for n >= 4 with a(0) = a(1) = a(2) = 0 and a(3) = 1.

The programs for A000078, the canonical program `A000078.P12373634374590648917` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000078 has offset 0).

The definition of A000078 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)+a(n-4)` (program `A000078.P12373634374590648917`, by `A000078.P12373634374590648917.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000078.P16016228514122471265

`2*a(n-1)-a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A000078.P16016228514122471265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 1] fun n a =>
  2 * a (n - 1) - a (n - 5)

end

end A000078.P16016228514122471265

namespace A000078

/-- `2*a(n-1)-a(n-5)` -/
def P16016228514122471265.Spec : Prop :=
  ∀ n, P16016228514122471265.a n = A000078 n

end A000078

/-! ## A000078.P12373634374590648917

`a(n-1)+a(n-2)+a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000078

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)` -/
def P12373634374590648917.Spec : Prop :=
  ∀ n, (P12373634374590648917.a n : ℤ) = A000078 n

theorem P12373634374590648917.correct : P12373634374590648917.Spec := by
  intro n
  simp only [A000078]

end A000078

/-! ## A000078.P10192270500684634027

`ogf(-x^3/(-1+x+x^2+x^3+x^4))`
-/

namespace A000078.P10192270500684634027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1] [1, -1, -1, -1, -1] n

end

end A000078.P10192270500684634027

namespace A000078

/-- `ogf(-x^3/(-1+x+x^2+x^3+x^4))` -/
def P10192270500684634027.Spec : Prop :=
  ∀ n, P10192270500684634027.a n = A000078 n

end A000078

/-! ## A000078.P15185805506920730408

`a(n-1)+a(n-1)-a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A000078.P15185805506920730408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 1] fun n a =>
  a (n - 1) + (a (n - 1) - a (n - 5))

end

end A000078.P15185805506920730408

namespace A000078

/-- `a(n-1)+a(n-1)-a(n-5)` -/
def P15185805506920730408.Spec : Prop :=
  ∀ n, P15185805506920730408.a n = A000078 n

end A000078

/-! ## A000078.P16697152216583520455

`∑[A001631(abs(1-n))]`
-/

namespace A000078.P16697152216583520455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000078.P16697152216583520455

namespace A000078

/-- `∑[A001631(abs(1-n))]` -/
def P16697152216583520455.Spec : Prop :=
  ∀ n, P16697152216583520455.a n = A000078 n

end A000078

/-! ## A000078.P15165581722525731563

`A001631(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A000078.P15165581722525731563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001631 (n - 1) + a (n - 1)

end

end A000078.P15165581722525731563

namespace A000078

/-- `A001631(n-1)+a(n-1)` -/
def P15165581722525731563.Spec : Prop :=
  ∀ n, P15165581722525731563.a n = A000078 n

end A000078

/-! ## A000078.P3395336650298557234

`A001630(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A000078.P3395336650298557234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001630 (n - 1) - a (n - 1)

end

end A000078.P3395336650298557234

namespace A000078

/-- `A001630(n-1)-a(n-1)` -/
def P3395336650298557234.Spec : Prop :=
  ∀ n, P3395336650298557234.a n = A000078 n

end A000078

/-! ## A000078.P9085421797315353369

`A251655(n)-A251654(n)`
-/

namespace A000078.P9085421797315353369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251655 n - A251654 n

end

end A000078.P9085421797315353369

namespace A000078

/-- `A251655(n)-A251654(n)` -/
def P9085421797315353369.Spec : Prop :=
  ∀ n, P9085421797315353369.a n = A000078 n

end A000078

/-! ## A000078.P1584152834926569534

`A251704(n)-A251703(n)`
-/

namespace A000078.P1584152834926569534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251704 n - A251703 n

end

end A000078.P1584152834926569534

namespace A000078

/-- `A251704(n)-A251703(n)` -/
def P1584152834926569534.Spec : Prop :=
  ∀ n, P1584152834926569534.a n = A000078 n

end A000078

/-! ## A000078.P4306082583089764160

`A001630(n)-∑[A001631(n)]`
-/

namespace A000078.P4306082583089764160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001630 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000078.P4306082583089764160

namespace A000078

/-- `A001630(n)-∑[A001631(n)]` -/
def P4306082583089764160.Spec : Prop :=
  ∀ n, P4306082583089764160.a n = A000078 n

end A000078

/-! ## A000078.P14154212116647200166

`A251656(n+1)-A001631(n+1)`
-/

namespace A000078.P14154212116647200166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251656 (n + 1) - A001631 (n + 1)

end

end A000078.P14154212116647200166

namespace A000078

/-- `A251656(n+1)-A001631(n+1)` -/
def P14154212116647200166.Spec : Prop :=
  ∀ n, P14154212116647200166.a n = A000078 n

end A000078

/-! ## A000078.P6363769832851594292

`A001631(n+1)+A001631(n)-A251654(n)`
-/

namespace A000078.P6363769832851594292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 (n + 1) + (A001631 n - A251654 n)

end

end A000078.P6363769832851594292

namespace A000078

/-- `A001631(n+1)+A001631(n)-A251654(n)` -/
def P6363769832851594292.Spec : Prop :=
  ∀ n, P6363769832851594292.a n = A000078 n

end A000078

/-! ## A000078.P13382962056518950703

`A000288(n)-A251705(n)`
-/

namespace A000078.P13382962056518950703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 n - A251705 n

end

end A000078.P13382962056518950703

namespace A000078

/-- `A000288(n)-A251705(n)` -/
def P13382962056518950703.Spec : Prop :=
  ∀ n, P13382962056518950703.a n = A000078 n

end A000078

/-! ## A000078.P423672927979913234

`A251654(n+1)-A251704(n)`
-/

namespace A000078.P423672927979913234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251654 (n + 1) - A251704 n

end

end A000078.P423672927979913234

namespace A000078

/-- `A251654(n+1)-A251704(n)` -/
def P423672927979913234.Spec : Prop :=
  ∀ n, P423672927979913234.a n = A000078 n

end A000078

/-! ## A000078.P13828889896907220515

`A251705(n+1)-A251654(n+1)`
-/

namespace A000078.P13828889896907220515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251705 (n + 1) - A251654 (n + 1)

end

end A000078.P13828889896907220515

namespace A000078

/-- `A251705(n+1)-A251654(n+1)` -/
def P13828889896907220515.Spec : Prop :=
  ∀ n, P13828889896907220515.a n = A000078 n

end A000078

/-! ## A000078.P17612033877335238075

`A251704(n+1)-A001631(n+2)`
-/

namespace A000078.P17612033877335238075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251704 (n + 1) - A001631 (n + 2)

end

end A000078.P17612033877335238075

namespace A000078

/-- `A251704(n+1)-A001631(n+2)` -/
def P17612033877335238075.Spec : Prop :=
  ∀ n, P17612033877335238075.a n = A000078 n

end A000078

/-! ## A000078.P1518138943000276156

`A000288(n)-(A251703(n)+A001631(n))`
-/

namespace A000078.P1518138943000276156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 n - (A251703 n + A001631 n)

end

end A000078.P1518138943000276156

namespace A000078

/-- `A000288(n)-(A251703(n)+A001631(n))` -/
def P1518138943000276156.Spec : Prop :=
  ∀ n, P1518138943000276156.a n = A000078 n

end A000078

/-! ## A000078.P5259029010210033395

`A001630(n)+A251703(n)-A000288(n)`
-/

namespace A000078.P5259029010210033395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001630 n + (A251703 n - A000288 n)

end

end A000078.P5259029010210033395

namespace A000078

/-- `A001630(n)+A251703(n)-A000288(n)` -/
def P5259029010210033395.Spec : Prop :=
  ∀ n, P5259029010210033395.a n = A000078 n

end A000078

/-! ## A000078.P1322381183380528590

`A001630(n+1)-(A251654(n)+A001630(n))`
-/

namespace A000078.P1322381183380528590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001630 (n + 1) - (A251654 n + A001630 n)

end

end A000078.P1322381183380528590

namespace A000078

/-- `A001630(n+1)-(A251654(n)+A001630(n))` -/
def P1322381183380528590.Spec : Prop :=
  ∀ n, P1322381183380528590.a n = A000078 n

end A000078

/-! ## A000078.P9454182805706624344

`A251656(n+1)+A251656(n)-A000288(n)`
-/

namespace A000078.P9454182805706624344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251656 (n + 1) + (A251656 n - A000288 n)

end

end A000078.P9454182805706624344

namespace A000078

/-- `A251656(n+1)+A251656(n)-A000288(n)` -/
def P9454182805706624344.Spec : Prop :=
  ∀ n, P9454182805706624344.a n = A000078 n

end A000078

/-!
# A000079: Powers of 2: a(n) = 2^n.

The programs for A000079, the canonical program `A000079.P10855139691139572931` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000079 has offset 0).

The definition of A000079 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n` (program `A000079.P10855139691139572931`, by `A000079.P10855139691139572931.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000079.P10855139691139572931

`2^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000079

/-- `2^n` -/
def P10855139691139572931.Spec : Prop :=
  ∀ n, (P10855139691139572931.a n : ℤ) = A000079 n

theorem P10855139691139572931.correct : P10855139691139572931.Spec := by
  intro n
  simp only [A000079]

end A000079

/-!
# A000080: Number of nonisomorphic minimal triangle graphs.

The programs for A000080, there is no canonical definition to state claims against.
-/

/-! ## A000080.P3802319755537538141

`A054404(A357586(n)+A001867(n))`
-/

namespace A000080.P3802319755537538141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A357586 n + A001867 n).toNat

end

end A000080.P3802319755537538141

/-! ## A000080.P11308167666560894033

`A054404(A360952(n)+A001867(n))`
-/

namespace A000080.P11308167666560894033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A360952 n + A001867 n).toNat

end

end A000080.P11308167666560894033

/-! ## A000080.P14704866920595061026

`A134542(n+1)+A071842(A132357(n))`
-/

namespace A000080.P14704866920595061026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134542 (n + 1) + A071842 (A132357 n).toNat

end

end A000080.P14704866920595061026

/-! ## A000080.P1165313828654074384

`A054404(A304972(n+1)+A001867(n))`
-/

namespace A000080.P1165313828654074384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A304972 (n + 1) + A001867 n).toNat

end

end A000080.P1165313828654074384

/-!
# A000081: Number of unlabeled rooted trees with n nodes (or connected functions with a fixed point).

The programs for A000081, there is no canonical definition to state claims against.
-/

/-! ## A000081.P3452242119644760134

`∑[A174145(abs(1-n))]`
-/

namespace A000081.P3452242119644760134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000081.P3452242119644760134

/-! ## A000081.P5343752954296394184

`A174145(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A000081.P5343752954296394184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A174145 (n - 1) + a (n - 1)

end

end A000081.P5343752954296394184

/-! ## A000081.P12880808342842316587

`∑[A174145(n-(1-floor(acot(n))))]-1`
-/

namespace A000081.P12880808342842316587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 ((n : ℤ) - (1 - ⌊SequenceMachineLib.acot (n : ℝ)⌋)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A000081.P12880808342842316587

/-! ## A000081.P220106068258256904

`∑[A174145(round(sqrt(n²+1))-1)]-1`
-/

namespace A000081.P220106068258256904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A000081.P220106068258256904

/-! ## A000081.P5696444481781916141

`A222380(n)+A222379(n)`
-/

namespace A000081.P5696444481781916141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222380 n + A222379 n

end

end A000081.P5696444481781916141

/-! ## A000081.P3796242560240515652

`A211192(n)+2*A222379(n)`
-/

namespace A000081.P3796242560240515652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211192 n + 2 * A222379 n

end

end A000081.P3796242560240515652

/-! ## A000081.P2016263591662933951

`2*A222380(n)-A211192(n)`
-/

namespace A000081.P2016263591662933951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222380 n - A211192 n

end

end A000081.P2016263591662933951

/-! ## A000081.P13181036086669311036

`A038001(A004280(n+1))-A000007(n)`
-/

namespace A000081.P13181036086669311036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038001 (A004280 (n + 1)).toNat - A000007 n

end

end A000081.P13181036086669311036

/-! ## A000081.P7126424599902801887

`A222379(n)-A057428(n)*A222380(n)`
-/

namespace A000081.P7126424599902801887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222379 n - A057428 n * A222380 n

end

end A000081.P7126424599902801887

/-! ## A000081.P9344234059313345779

`A038001(A004280(n+1))*A178334(A178334(n))`
-/

namespace A000081.P9344234059313345779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038001 (A004280 (n + 1)).toNat * A178334 (A178334 n).toNat

end

end A000081.P9344234059313345779

/-! ## A000081.P15927519170313147085

`A038001(2*n+1)-A174145(n)`
-/

namespace A000081.P15927519170313147085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038001 (2 * n + 1) - A174145 n

end

end A000081.P15927519170313147085

/-! ## A000081.P15691945151089581056

`A369289(n)-A005703(n)`
-/

namespace A000081.P15691945151089581056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369289 n - A005703 n

end

end A000081.P15691945151089581056

/-! ## A000081.P8797504953276363987

`A095341(n+1)/(n+1)`
-/

namespace A000081.P8797504953276363987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095341 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A000081.P8797504953276363987

/-! ## A000081.P654126691930237540

`A213674(n)-A213683(n)`
-/

namespace A000081.P654126691930237540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213674 n - A213683 n

end

end A000081.P654126691930237540

/-! ## A000081.P3132275238919069613

`A106234(∑[n]+2)`
-/

namespace A000081.P3132275238919069613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A000081.P3132275238919069613

/-! ## A000081.P1953462600062960772

`A033185(A000124(n))-A174145(n)`
-/

namespace A000081.P1953462600062960772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (A000124 n).toNat - A174145 n

end

end A000081.P1953462600062960772

/-! ## A000081.P14260518638632433337

`n*A106234(A133263(n))/A028310(n)`
-/

namespace A000081.P14260518638632433337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A106234 (A133263 n).toNat : ℚ) / (A028310 n : ℚ)

end

end A000081.P14260518638632433337

/-! ## A000081.P6537298318893324067

`A106234(A133263(n))-A106234(A000124(n))`
-/

namespace A000081.P6537298318893324067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (A133263 n).toNat - A106234 (A000124 n).toNat

end

end A000081.P6537298318893324067

/-! ## A000081.P7670732184244677558

`A106234(A152950(n+2)-1)-A174145(n)`
-/

namespace A000081.P7670732184244677558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (A152950 (n + 2) - 1).toNat - A174145 n

end

end A000081.P7670732184244677558

/-! ## A000081.P1625545012782215732

`A318753(2*n²)`
-/

namespace A000081.P1625545012782215732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (2 * n ^ 2)

end

end A000081.P1625545012782215732

/-!
# A000082: a(n) = n^2*Product_{p|n} (1 + 1/p).

The programs for A000082, the canonical program `A000082.P16648937404349228138` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000082 has offset 1).

The definition of A000082 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000082.P3578577071959605334

`(n+1)*A001615(n+1)`
-/

namespace A000082.P3578577071959605334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001615 (n + 1)

end

end A000082.P3578577071959605334

namespace A000082

/-- `(n+1)*A001615(n+1)` -/
def P3578577071959605334.Spec : Prop :=
  ∀ n, P3578577071959605334.a n = A000082 (n + 1)

end A000082

/-! ## A000082.P16648937404349228138

`A181797(n+1)*A003557(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A000082

/-- `A181797(n+1)*A003557(n+1)` -/
def P16648937404349228138.Spec : Prop :=
  ∀ n, P16648937404349228138.a n = A000082 (n + 1)

theorem P16648937404349228138.correct : P16648937404349228138.Spec := by
  intro n
  simp only [A000082, Nat.add_sub_cancel]

end A000082

/-! ## A000082.P8771211001761187688

`A001615((n+1)²)`
-/

namespace A000082.P8771211001761187688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 ((n + 1) ^ 2)

end

end A000082.P8771211001761187688

namespace A000082

/-- `A001615((n+1)²)` -/
def P8771211001761187688.Spec : Prop :=
  ∀ n, P8771211001761187688.a n = A000082 (n + 1)

end A000082

/-! ## A000082.P9089630010786753364

`∑{d}[∏{p}[n+1, #], (n+1)²/#]`
-/

namespace A000082.P9089630010786753364
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n + 1) ^ 2 : ℚ) / (d : ℚ)

end

end A000082.P9089630010786753364

namespace A000082

/-- `∑{d}[∏{p}[n+1, #], (n+1)²/#]` -/
def P9089630010786753364.Spec : Prop :=
  ∀ n, P9089630010786753364.a n = (A000082 (n + 1) : ℚ)

end A000082

/-! ## A000082.P2825659686521788512

`(n+1)*∑{d}[∏{p}[n+1, #], (n+1)/#]`
-/

namespace A000082.P2825659686521788512
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ))

end

end A000082.P2825659686521788512

namespace A000082

/-- `(n+1)*∑{d}[∏{p}[n+1, #], (n+1)/#]` -/
def P2825659686521788512.Spec : Prop :=
  ∀ n, P2825659686521788512.a n = (A000082 (n + 1) : ℚ)

end A000082

/-! ## A000082.P6563833227312874354

`∑{d}[n+1, A140697(#)]`
-/

namespace A000082.P6563833227312874354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A140697 d

end

end A000082.P6563833227312874354

namespace A000082

/-- `∑{d}[n+1, A140697(#)]` -/
def P6563833227312874354.Spec : Prop :=
  ∀ n, P6563833227312874354.a n = A000082 (n + 1)

end A000082

/-! ## A000082.P14849541653782637421

`A033196(n+1)/(n+1)`
-/

namespace A000082.P14849541653782637421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033196 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A000082.P14849541653782637421

namespace A000082

/-- `A033196(n+1)/(n+1)` -/
def P14849541653782637421.Spec : Prop :=
  ∀ n, P14849541653782637421.a n = (A000082 (n + 1) : ℚ)

end A000082

/-! ## A000082.P11757602747640556579

`abs((n+1)*A158523(n+1))`
-/

namespace A000082.P11757602747640556579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A158523 (n + 1)|

end

end A000082.P11757602747640556579

namespace A000082

/-- `abs((n+1)*A158523(n+1))` -/
def P11757602747640556579.Spec : Prop :=
  ∀ n, P11757602747640556579.a n = A000082 (n + 1)

end A000082

/-! ## A000082.P17877467235030335194

`(n+1)*∑{d}[n+1, A063659(#)]`
-/

namespace A000082.P17877467235030335194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A063659 d)

end

end A000082.P17877467235030335194

namespace A000082

/-- `(n+1)*∑{d}[n+1, A063659(#)]` -/
def P17877467235030335194.Spec : Prop :=
  ∀ n, P17877467235030335194.a n = A000082 (n + 1)

end A000082

/-! ## A000082.P15164397243799711742

`(n+1)*(A306927(n+1)+n+1)`
-/

namespace A000082.P15164397243799711742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A306927 (n + 1) + (n + 1 : ℤ))

end

end A000082.P15164397243799711742

namespace A000082

/-- `(n+1)*(A306927(n+1)+n+1)` -/
def P15164397243799711742.Spec : Prop :=
  ∀ n, P15164397243799711742.a n = A000082 (n + 1)

end A000082

/-! ## A000082.P10232396383245087552

`∑{d}[n+1, #*A254520((n+1)/#)]`
-/

namespace A000082.P10232396383245087552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A254520 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A000082.P10232396383245087552

namespace A000082

/-- `∑{d}[n+1, #*A254520((n+1)/#)]` -/
def P10232396383245087552.Spec : Prop :=
  ∀ n, P10232396383245087552.a n = A000082 (n + 1)

end A000082

/-! ## A000082.P13473774354726204577

`A000034(n)*A070732(n+1)`
-/

namespace A000082.P13473774354726204577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A070732 (n + 1)

end

end A000082.P13473774354726204577

namespace A000082

/-- `A000034(n)*A070732(n+1)` -/
def P13473774354726204577.Spec : Prop :=
  ∀ n, P13473774354726204577.a n = A000082 (n + 1)

end A000082

/-! ## A000082.P12373172681817468351

`A165998(n)*A253629(n+1)`
-/

namespace A000082.P12373172681817468351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 n * A253629 (n + 1)

end

end A000082.P12373172681817468351

namespace A000082

/-- `A165998(n)*A253629(n+1)` -/
def P12373172681817468351.Spec : Prop :=
  ∀ n, P12373172681817468351.a n = A000082 (n + 1)

end A000082

/-! ## A000082.P12304057890340772656

`A040001(n+1)*A070732(n+1)`
-/

namespace A000082.P12304057890340772656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A070732 (n + 1)

end

end A000082.P12304057890340772656

namespace A000082

/-- `A040001(n+1)*A070732(n+1)` -/
def P12304057890340772656.Spec : Prop :=
  ∀ n, P12304057890340772656.a n = A000082 (n + 1)

end A000082

/-! ## A000082.P8832551175243099638

`A048250(n+1)*A102631(n+1)`
-/

namespace A000082.P8832551175243099638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) * A102631 (n + 1)

end

end A000082.P8832551175243099638

namespace A000082

/-- `A048250(n+1)*A102631(n+1)` -/
def P8832551175243099638.Spec : Prop :=
  ∀ n, P8832551175243099638.a n = A000082 (n + 1)

end A000082

/-! ## A000082.P8433196441519359012

`A061019(n+1)*A158523(n+1)`
-/

namespace A000082.P8433196441519359012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061019 (n + 1) * A158523 (n + 1)

end

end A000082.P8433196441519359012

namespace A000082

/-- `A061019(n+1)*A158523(n+1)` -/
def P8433196441519359012.Spec : Prop :=
  ∀ n, P8433196441519359012.a n = A000082 (n + 1)

end A000082

/-! ## A000082.P15936219301006038011

`A080512(n+1)*A159634(n+1)`
-/

namespace A000082.P15936219301006038011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (n + 1) * A159634 (n + 1)

end

end A000082.P15936219301006038011

namespace A000082

/-- `A080512(n+1)*A159634(n+1)` -/
def P15936219301006038011.Spec : Prop :=
  ∀ n, P15936219301006038011.a n = A000082 (n + 1)

end A000082

/-! ## A000082.P3942282347262260005

`A000056(n+1)/A000010(n+1)`
-/

namespace A000082.P3942282347262260005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A000082.P3942282347262260005

namespace A000082

/-- `A000056(n+1)/A000010(n+1)` -/
def P3942282347262260005.Spec : Prop :=
  ∀ n, P3942282347262260005.a n = (A000082 (n + 1) : ℚ)

end A000082

/-! ## A000082.P11073011024839332093

`A011785(n+1)/A115226(n+1)`
-/

namespace A000082.P11073011024839332093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011785 (n + 1) : ℚ) / (A115226 (n + 1) : ℚ)

end

end A000082.P11073011024839332093

namespace A000082

/-- `A011785(n+1)/A115226(n+1)` -/
def P11073011024839332093.Spec : Prop :=
  ∀ n, P11073011024839332093.a n = (A000082 (n + 1) : ℚ)

end A000082

/-! ## A000082.P13165242489088707134

`A000252(n+1)/A127473(n+1)`
-/

namespace A000082.P13165242489088707134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) : ℚ) / (A127473 (n + 1) : ℚ)

end

end A000082.P13165242489088707134

namespace A000082

/-- `A000252(n+1)/A127473(n+1)` -/
def P13165242489088707134.Spec : Prop :=
  ∀ n, P13165242489088707134.a n = (A000082 (n + 1) : ℚ)

end A000082

/-!
# A000083: Number of mixed Husimi trees with n nodes; or polygonal cacti with bridges.

The programs for A000083, there is no canonical definition to state claims against.
-/

/-! ## A000083.P822264495659504010

`A247908(A370886(n))`
-/

namespace A000083.P822264495659504010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (A370886 n).toNat

end

end A000083.P822264495659504010

/-! ## A000083.P13921945949989283616

`A023193(A076864(n)+2)-1`
-/

namespace A000083.P13921945949989283616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A076864 n + 2).toNat - 1

end

end A000083.P13921945949989283616

/-! ## A000083.P4574375182185084926

`A023193(A076864(n)-A004526(n))`
-/

namespace A000083.P4574375182185084926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A076864 n - A004526 n).toNat

end

end A000083.P4574375182185084926

/-! ## A000083.P434346616821027997

`A023193(A076864(n)-A125229(n))`
-/

namespace A000083.P434346616821027997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A076864 n - A125229 n).toNat

end

end A000083.P434346616821027997

/-! ## A000083.P1116278498182955993

`A194698(A148804(n))+Δ[A062178(n)]`
-/

namespace A000083.P1116278498182955993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A148804 n).toNat + (f1 (n + 1) - f1 n)

end

end A000083.P1116278498182955993

/-!
# A000084: Number of series-parallel networks with n unlabeled edges. Also called yoke-chains by Cayley and MacMahon.

The programs for A000084, there is no canonical definition to state claims against.
-/

/-! ## A000084.P17024075068675835580

`ceil(cosh(sin(n)))*A000669(n+1)`
-/

namespace A000084.P17024075068675835580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ * A000669 (n + 1)

end

end A000084.P17024075068675835580

/-! ## A000084.P9137098232013093743

`A000669(n+1)*A036453(n+1)`
-/

namespace A000084.P9137098232013093743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000669 (n + 1) * A036453 (n + 1)

end

end A000084.P9137098232013093743

/-! ## A000084.P12526884569943561346

`2*A000669(n+1)-A000007(n)`
-/

namespace A000084.P12526884569943561346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000669 (n + 1) - A000007 n

end

end A000084.P12526884569943561346

/-! ## A000084.P2307917986866871573

`gcd(2, A301467(n+1))*A000669(n+1)`
-/

namespace A000084.P2307917986866871573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A301467 (n + 1)) : ℤ) * A000669 (n + 1)

end

end A000084.P2307917986866871573

/-! ## A000084.P18268653679502242952

`A000669(n+1)*A136986(n²%(n+1)+1)`
-/

namespace A000084.P18268653679502242952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000669 (n + 1) * A136986 (n ^ 2 % (n + 1) + 1)

end

end A000084.P18268653679502242952

/-! ## A000084.P17284327259435267905

`A000669(n+1)*A020639(A008458(n))`
-/

namespace A000084.P17284327259435267905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000669 (n + 1) * A020639 (A008458 n).toNat

end

end A000084.P17284327259435267905

/-! ## A000084.P2820433316381062657

`A000669(n+1)*A020639(A008574(n))`
-/

namespace A000084.P2820433316381062657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000669 (n + 1) * A020639 (A008574 n).toNat

end

end A000084.P2820433316381062657

/-! ## A000084.P6328009380951027301

`A000669(n+1)*A020639(A022144(n))`
-/

namespace A000084.P6328009380951027301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000669 (n + 1) * A020639 (A022144 n).toNat

end

end A000084.P6328009380951027301

/-! ## A000084.P17932450707835902461

`A000669(n+1)*A020639(A053799(n))`
-/

namespace A000084.P17932450707835902461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000669 (n + 1) * A020639 (A053799 n).toNat

end

end A000084.P17932450707835902461

/-! ## A000084.P2440824857024024710

`A000669(n+1)*A067824(A006530(n+1))`
-/

namespace A000084.P2440824857024024710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000669 (n + 1) * A067824 (A006530 (n + 1)).toNat

end

end A000084.P2440824857024024710

/-! ## A000084.P11533224382927673886

`A000669(n+1)*A067824(A020639(n+1))`
-/

namespace A000084.P11533224382927673886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000669 (n + 1) * A067824 (A020639 (n + 1)).toNat

end

end A000084.P11533224382927673886

/-! ## A000084.P7839182399705404760

`A000669(n+1)*A134914(A134914(n+1))`
-/

namespace A000084.P7839182399705404760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000669 (n + 1) * A134914 (A134914 (n + 1)).toNat

end

end A000084.P7839182399705404760

/-! ## A000084.P809089404197327856

`A000669(n+1)*A020639(A331683(n+1))`
-/

namespace A000084.P809089404197327856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000669 (n + 1) * A020639 (A331683 (n + 1)).toNat

end

end A000084.P809089404197327856

/-! ## A000084.P17054171245419911992

`A020639(Δ[A000040(n+1)])*A000669(n+1)`
-/

namespace A000084.P17054171245419911992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (n + 1) - f1 n).toNat * A000669 (n + 1)

end

end A000084.P17054171245419911992

/-! ## A000084.P8657753508555164481

`A020639(A000040(n+1)-1)*A000669(n+1)`
-/

namespace A000084.P8657753508555164481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (n + 1) - 1).toNat * A000669 (n + 1)

end

end A000084.P8657753508555164481

/-! ## A000084.P4273597320915891012

`A000669(n+1)+A000669(n+1)-A063524(n+1)`
-/

namespace A000084.P4273597320915891012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000669 (n + 1) + (A000669 (n + 1) - A063524 (n + 1))

end

end A000084.P4273597320915891012

/-! ## A000084.P16835113090049519071

`Δ[A058351(n)]`
-/

namespace A000084.P16835113090049519071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000084.P16835113090049519071

/-! ## A000084.P10136736667522143907

`A058351(n+1)-A058351(n)`
-/

namespace A000084.P10136736667522143907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058351 (n + 1) - A058351 n

end

end A000084.P10136736667522143907

/-! ## A000084.P10592574764740377338

`A000669(n+1)+A000669(n+1)%A000669(n+2)`
-/

namespace A000084.P10592574764740377338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000669 (n + 1) + Int.tmod (A000669 (n + 1)) (A000669 (n + 2))

end

end A000084.P10592574764740377338

/-!
# A000085: Number of self-inverse permutations on n letters, also known as involutions; number of standard Young tableaux with n cells.

The programs for A000085, the canonical program `A000085.P6317799103021482191` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000085 has offset 0).

The definition of A000085 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000085.P6317799103021482191

`(n-1)*a(n-2)+a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000085

/-- `(n-1)*a(n-2)+a(n-1)` -/
def P6317799103021482191.Spec : Prop :=
  ∀ n, P6317799103021482191.a n = A000085 n

theorem P6317799103021482191.correct : P6317799103021482191.Spec := by
  intro n
  simp only [A000085]

end A000085

/-! ## A000085.P14767918516316678056

`a(n-1)+A013989(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A000085.P14767918516316678056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + A013989 (n - 2)

end

end A000085.P14767918516316678056

namespace A000085

/-- `a(n-1)+A013989(n-2)` -/
def P14767918516316678056.Spec : Prop :=
  ∀ n, P14767918516316678056.a n = A000085 n

end A000085

/-! ## A000085.P10243966407786262030

`A013989(n)/(n+1)`
-/

namespace A000085.P10243966407786262030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013989 n : ℚ) / (n + 1 : ℚ)

end

end A000085.P10243966407786262030

namespace A000085

/-- `A013989(n)/(n+1)` -/
def P10243966407786262030.Spec : Prop :=
  ∀ n, P10243966407786262030.a n = (A000085 n : ℚ)

end A000085

/-! ## A000085.P12027227896781248277

`∏[(n-1)/a(n-1)+1]` with `a(0)=1`
-/

namespace A000085.P12027227896781248277
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A000085.P12027227896781248277

namespace A000085

/-- `∏[(n-1)/a(n-1)+1]` -/
def P12027227896781248277.Spec : Prop :=
  ∀ n, P12027227896781248277.a n = (A000085 n : ℚ)

end A000085

/-! ## A000085.P4945854092219496630

`a(n-1)-(1-n)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A000085.P4945854092219496630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - (1 - (n : ℤ)) * a (n - 2)

end

end A000085.P4945854092219496630

namespace A000085

/-- `a(n-1)-(1-n)*a(n-2)` -/
def P4945854092219496630.Spec : Prop :=
  ∀ n, P4945854092219496630.a n = A000085 n

end A000085

/-! ## A000085.P8502098449663451265

`∏[abs(1-a(n-1)-n)/a(n-1)]` with `a(0)=1`
-/

namespace A000085.P8502098449663451265
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  |1 - f1 (n - 1) - (n : ℚ)| / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A000085.P8502098449663451265

namespace A000085

/-- `∏[abs(1-a(n-1)-n)/a(n-1)]` -/
def P8502098449663451265.Spec : Prop :=
  ∀ n, P8502098449663451265.a n = (A000085 n : ℚ)

end A000085

/-! ## A000085.P17506378779876364285

`A070895(∑[n])`
-/

namespace A000085.P17506378779876364285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070895 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000085.P17506378779876364285

namespace A000085

/-- `A070895(∑[n])` -/
def P17506378779876364285.Spec : Prop :=
  ∀ n, P17506378779876364285.a n = A000085 n

end A000085

/-! ## A000085.P16149969913992598634

`A099020(∑[n])`
-/

namespace A000085.P16149969913992598634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099020 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000085.P16149969913992598634

namespace A000085

/-- `A099020(∑[n])` -/
def P16149969913992598634.Spec : Prop :=
  ∀ n, P16149969913992598634.a n = A000085 n

end A000085

/-! ## A000085.P9273652658795715683

`A293808(∑[A254667(n)])`
-/

namespace A000085.P9273652658795715683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000085.P9273652658795715683

namespace A000085

/-- `A293808(∑[A254667(n)])` -/
def P9273652658795715683.Spec : Prop :=
  ∀ n, P9273652658795715683.a n = A000085 n

end A000085

/-! ## A000085.P6497170116031532578

`A293808(A133263(n)-1)`
-/

namespace A000085.P6497170116031532578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A133263 n - 1).toNat

end

end A000085.P6497170116031532578

namespace A000085

/-- `A293808(A133263(n)-1)` -/
def P6497170116031532578.Spec : Prop :=
  ∀ n, P6497170116031532578.a n = A000085 n

end A000085

/-! ## A000085.P5803828221873552941

`A001465(n)+A000704(n)`
-/

namespace A000085.P5803828221873552941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001465 n + A000704 n

end

end A000085.P5803828221873552941

namespace A000085

/-- `A001465(n)+A000704(n)` -/
def P5803828221873552941.Spec : Prop :=
  ∀ n, P5803828221873552941.a n = A000085 n

theorem P5803828221873552941.correct : P5803828221873552941.Spec := by
  intro n
  simp only [A000085, Nat.add_sub_cancel, A000085.P5803828221873552941.a, A000085.P6317799103021482191.a, A000704, A000704.P18194243516802683645.a, A001465, A001465.P11263082568877116543.a, A048099, A048099.P9392881477138269526.a, A001189, A001189.P2746469675608936850.a, A051684, A051684.P7377963826740137144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000085

/-! ## A000085.P5133435496081586968

`A378100(n)+A123023(n)`
-/

namespace A000085.P5133435496081586968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378100 n + A123023 n

end

end A000085.P5133435496081586968

namespace A000085

/-- `A378100(n)+A123023(n)` -/
def P5133435496081586968.Spec : Prop :=
  ∀ n, P5133435496081586968.a n = A000085 n

theorem P5133435496081586968.correct : P5133435496081586968.Spec := by
  intro n
  simp only [A000085, Nat.add_sub_cancel, A000085.P5133435496081586968.a, A000085.P6317799103021482191.a, A123023, A123023.P14029042805103886972.a, A378100, A378100.P5253957062667002361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000085

/-! ## A000085.P9410430560170698362

`A001189(A004277(n)-n)+1`
-/

namespace A000085.P9410430560170698362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001189 (A004277 n - (n : ℤ)).toNat + 1

end

end A000085.P9410430560170698362

namespace A000085

/-- `A001189(A004277(n)-n)+1` -/
def P9410430560170698362.Spec : Prop :=
  ∀ n, P9410430560170698362.a n = A000085 n

end A000085

/-! ## A000085.P12520676665548135919

`A187044(n)-A186739(n+1)`
-/

namespace A000085.P12520676665548135919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187044 n - A186739 (n + 1)

end

end A000085.P12520676665548135919

namespace A000085

/-- `A187044(n)-A186739(n+1)` -/
def P12520676665548135919.Spec : Prop :=
  ∀ n, P12520676665548135919.a n = A000085 n

end A000085

/-! ## A000085.P3676702405920157918

`A135401(n)+2*A000900(n)`
-/

namespace A000085.P3676702405920157918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135401 n + 2 * A000900 n

end

end A000085.P3676702405920157918

namespace A000085

/-- `A135401(n)+2*A000900(n)` -/
def P3676702405920157918.Spec : Prop :=
  ∀ n, P3676702405920157918.a n = A000085 n

end A000085

/-! ## A000085.P8607331708220525840

`A220699(n+3)-A187044(n)`
-/

namespace A000085.P8607331708220525840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220699 (n + 3) - A187044 n

end

end A000085.P8607331708220525840

namespace A000085

/-- `A220699(n+3)-A187044(n)` -/
def P8607331708220525840.Spec : Prop :=
  ∀ n, P8607331708220525840.a n = A000085 n

end A000085

/-! ## A000085.P15815964922759919726

`2*A085386(n)-A001464(n)`
-/

namespace A000085.P15815964922759919726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085386 n - A001464 n

end

end A000085.P15815964922759919726

namespace A000085

/-- `2*A085386(n)-A001464(n)` -/
def P15815964922759919726.Spec : Prop :=
  ∀ n, P15815964922759919726.a n = A000085 n

end A000085

/-! ## A000085.P14464859219132598224

`A297708(n)-2*A000900(n)`
-/

namespace A000085.P14464859219132598224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297708 n - 2 * A000900 n

end

end A000085.P14464859219132598224

namespace A000085

/-- `A297708(n)-2*A000900(n)` -/
def P14464859219132598224.Spec : Prop :=
  ∀ n, P14464859219132598224.a n = A000085 n

end A000085

/-! ## A000085.P95015232762711039

`(A297708(n)+A135401(n))/2`
-/

namespace A000085.P95015232762711039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297708 n + A135401 n : ℚ) / 2

end

end A000085.P95015232762711039

namespace A000085

/-- `(A297708(n)+A135401(n))/2` -/
def P95015232762711039.Spec : Prop :=
  ∀ n, P95015232762711039.a n = (A000085 n : ℚ)

theorem P95015232762711039.correct : P95015232762711039.Spec := by
  intro n
  simp only [A000085, Nat.add_sub_cancel, A000085.P95015232762711039.a, A000085.P6317799103021482191.a, A135401, A135401.P14093664586731084065.a, A297708, A297708.P854593747947966794.a, A000898, A000898.P7671676320348687094.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000085

/-! ## A000085.P15271451253481763212

`A193361(n+2)-A186739(n+1)`
-/

namespace A000085.P15271451253481763212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193361 (n + 2) - A186739 (n + 1)

end

end A000085.P15271451253481763212

namespace A000085

/-- `A193361(n+2)-A186739(n+1)` -/
def P15271451253481763212.Spec : Prop :=
  ∀ n, P15271451253481763212.a n = A000085 n

end A000085

/-!
# A000086: Number of solutions to x^2 - x + 1 == 0 (mod n).

The programs for A000086, the canonical program `A000086.P3359847833353072450` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000086 has offset 1).

The definition of A000086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000086.P3359847833353072450

`A065959(n+1)%9`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A000086

/-- `A065959(n+1)%9` -/
def P3359847833353072450.Spec : Prop :=
  ∀ n, P3359847833353072450.a n = A000086 (n + 1)

theorem P3359847833353072450.correct : P3359847833353072450.Spec := by
  intro n
  simp only [A000086, Nat.add_sub_cancel]

end A000086

/-! ## A000086.P17604702999753414702

`∑{d}[n+1, A078461(#)*A112300((n+1)/#)]`
-/

namespace A000086.P17604702999753414702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078461 d * A112300 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A000086.P17604702999753414702

namespace A000086

/-- `∑{d}[n+1, A078461(#)*A112300((n+1)/#)]` -/
def P17604702999753414702.Spec : Prop :=
  ∀ n, P17604702999753414702.a n = A000086 (n + 1)

end A000086

/-! ## A000086.P12639671682257180944

`∑{d}[n+1, A002324(#)*A271102((n+1)/#)]`
-/

namespace A000086.P12639671682257180944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002324 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A000086.P12639671682257180944

namespace A000086

/-- `∑{d}[n+1, A002324(#)*A271102((n+1)/#)]` -/
def P12639671682257180944.Spec : Prop :=
  ∀ n, P12639671682257180944.a n = A000086 (n + 1)

end A000086

/-! ## A000086.P13692462318101555105

`∑{d}[n+1, A007427(#)*A319442((n+1)/#)]`
-/

namespace A000086.P13692462318101555105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A319442 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A000086.P13692462318101555105

namespace A000086

/-- `∑{d}[n+1, A007427(#)*A319442((n+1)/#)]` -/
def P13692462318101555105.Spec : Prop :=
  ∀ n, P13692462318101555105.a n = A000086 (n + 1)

end A000086

/-! ## A000086.P16525556873666970944

`∑{d}[n+1, A035178(#)*A359548((n+1)/#)]`
-/

namespace A000086.P16525556873666970944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035178 d * A359548 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A000086.P16525556873666970944

namespace A000086

/-- `∑{d}[n+1, A035178(#)*A359548((n+1)/#)]` -/
def P16525556873666970944.Spec : Prop :=
  ∀ n, P16525556873666970944.a n = A000086 (n + 1)

end A000086

/-! ## A000086.P13829975578390136062

`∑{d}[n+1, A326401(#)*A328729((n+1)/#)]`
-/

namespace A000086.P13829975578390136062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326401 d * A328729 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A000086.P13829975578390136062

namespace A000086

/-- `∑{d}[n+1, A326401(#)*A328729((n+1)/#)]` -/
def P13829975578390136062.Spec : Prop :=
  ∀ n, P13829975578390136062.a n = A000086 (n + 1)

end A000086

/-! ## A000086.P8242608211607005526

`∑{d}[n+1, A008966(#)*A049347((n+1)/#-1)]`
-/

namespace A000086.P8242608211607005526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A049347 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A000086.P8242608211607005526

namespace A000086

/-- `∑{d}[n+1, A008966(#)*A049347((n+1)/#-1)]` -/
def P8242608211607005526.Spec : Prop :=
  ∀ n, P8242608211607005526.a n = A000086 (n + 1)

end A000086

/-! ## A000086.P18351001877650892460

`A091393(n+1)*A175629(A000091(n+1))`
-/

namespace A000086.P18351001877650892460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091393 (n + 1) * A175629 (A000091 (n + 1)).toNat

end

end A000086.P18351001877650892460

namespace A000086

/-- `A091393(n+1)*A175629(A000091(n+1))` -/
def P18351001877650892460.Spec : Prop :=
  ∀ n, P18351001877650892460.a n = A000086 (n + 1)

end A000086

/-! ## A000086.P13200882746460792418

`A000091(n+1)/A034444(n+1)*A091393(n+1)`
-/

namespace A000086.P13200882746460792418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000091 (n + 1) : ℚ) / (A034444 (n + 1) : ℚ) * (A091393 (n + 1) : ℚ)

end

end A000086.P13200882746460792418

namespace A000086

/-- `A000091(n+1)/A034444(n+1)*A091393(n+1)` -/
def P13200882746460792418.Spec : Prop :=
  ∀ n, P13200882746460792418.a n = (A000086 (n + 1) : ℚ)

end A000086

/-! ## A000086.P16893933579276196033

`A092575(4*(n+1))`
-/

namespace A000086.P16893933579276196033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092575 (4 * (n + 1))

end

end A000086.P16893933579276196033

namespace A000086

/-- `A092575(4*(n+1))` -/
def P16893933579276196033.Spec : Prop :=
  ∀ n, P16893933579276196033.a n = A000086 (n + 1)

end A000086

/-! ## A000086.P15104051158809526941

`A091393((n+1)*A242219(n+1))`
-/

namespace A000086.P15104051158809526941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091393 ((n + 1 : ℤ) * A242219 (n + 1)).toNat

end

end A000086.P15104051158809526941

namespace A000086

/-- `A091393((n+1)*A242219(n+1))` -/
def P15104051158809526941.Spec : Prop :=
  ∀ n, P15104051158809526941.a n = A000086 (n + 1)

end A000086

/-!
# A000087: Number of unrooted nonseparable planar maps with n edges and a distinguished face.

The programs for A000087, there is no canonical definition to state claims against.
-/

/-! ## A000087.P10296882212327873738

`A340941(n)+A010059(A030297(n))`
-/

namespace A000087.P10296882212327873738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340941 n + A010059 (A030297 n).toNat

end

end A000087.P10296882212327873738

/-!
# A000088: Number of simple graphs on n unlabeled nodes.

The programs for A000088, there is no canonical definition to state claims against.
-/

/-! ## A000088.P15376515597604832760

`∑[A002494(n)]`
-/

namespace A000088.P15376515597604832760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000088.P15376515597604832760

/-! ## A000088.P4045831528785194861

`A361404(∑[n])`
-/

namespace A000088.P4045831528785194861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361404 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000088.P4045831528785194861

/-! ## A000088.P12117097798124650948

`∑[A217653(∑[n])]`
-/

namespace A000088.P12117097798124650948
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217653 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000088.P12117097798124650948

/-! ## A000088.P7494063873351631110

`A001349(n)+A000719(n)`
-/

namespace A000088.P7494063873351631110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 n + A000719 n

end

end A000088.P7494063873351631110

/-! ## A000088.P17041454739020899735

`A157016(n)+A157015(n)`
-/

namespace A000088.P17041454739020899735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157016 n + A157015 n

end

end A000088.P17041454739020899735

/-!
# A000089: Number of solutions to x^2 + 1 == 0 (mod n).

The programs for A000089, the canonical program `A000089.P6732950680245443794` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000089 has offset 1).

The definition of A000089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000089.P5387384149559620814

`Δ[A305117(n)]`
-/

namespace A000089.P5387384149559620814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000089.P5387384149559620814

namespace A000089

/-- `Δ[A305117(n)]` -/
def P5387384149559620814.Spec : Prop :=
  ∀ n, P5387384149559620814.a n = A000089 (n + 1)

end A000089

/-! ## A000089.P58027986237286335

`Δ[A304651(n)/4]`
-/

namespace A000089.P58027986237286335
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304651 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000089.P58027986237286335

namespace A000089

/-- `Δ[A304651(n)/4]` -/
def P58027986237286335.Spec : Prop :=
  ∀ n, P58027986237286335.a n = (A000089 (n + 1) : ℚ)

end A000089

/-! ## A000089.P12373178004468951098

`A000095(A214682(n+1))`
-/

namespace A000089.P12373178004468951098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000095 (A214682 (n + 1)).toNat

end

end A000089.P12373178004468951098

namespace A000089

/-- `A000095(A214682(n+1))` -/
def P12373178004468951098.Spec : Prop :=
  ∀ n, P12373178004468951098.a n = A000089 (n + 1)

end A000089

/-! ## A000089.P3850710794809712655

`A000095(A320045(n+1))`
-/

namespace A000089.P3850710794809712655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000095 (A320045 (n + 1)).toNat

end

end A000089.P3850710794809712655

namespace A000089

/-- `A000095(A320045(n+1))` -/
def P3850710794809712655.Spec : Prop :=
  ∀ n, P3850710794809712655.a n = A000089 (n + 1)

end A000089

/-! ## A000089.P6732950680245443794

`A350872(A026741(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A000089

/-- `A350872(A026741(n+1))` -/
def P6732950680245443794.Spec : Prop :=
  ∀ n, P6732950680245443794.a n = A000089 (n + 1)

theorem P6732950680245443794.correct : P6732950680245443794.Spec := by
  intro n
  simp only [A000089, Nat.add_sub_cancel]

end A000089

/-! ## A000089.P14019255529606389153

`A000095(A384055(n+1))`
-/

namespace A000089.P14019255529606389153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000095 (A384055 (n + 1)).toNat

end

end A000089.P14019255529606389153

namespace A000089

/-- `A000095(A384055(n+1))` -/
def P14019255529606389153.Spec : Prop :=
  ∀ n, P14019255529606389153.a n = A000089 (n + 1)

end A000089

/-! ## A000089.P1363165501834272081

`A000095(A384251(n+1))`
-/

namespace A000089.P1363165501834272081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000095 (A384251 (n + 1)).toNat

end

end A000089.P1363165501834272081

namespace A000089

/-- `A000095(A384251(n+1))` -/
def P1363165501834272081.Spec : Prop :=
  ∀ n, P1363165501834272081.a n = A000089 (n + 1)

end A000089

/-! ## A000089.P11568905310559495521

`A350872(A059816(n+1))`
-/

namespace A000089.P11568905310559495521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350872 (A059816 (n + 1)).toNat

end

end A000089.P11568905310559495521

namespace A000089

/-- `A350872(A059816(n+1))` -/
def P11568905310559495521.Spec : Prop :=
  ∀ n, P11568905310559495521.a n = A000089 (n + 1)

end A000089

/-! ## A000089.P1137118827519433992

`A305117(n+1)-A305117(n)`
-/

namespace A000089.P1137118827519433992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 (n + 1) - A305117 n

end

end A000089.P1137118827519433992

namespace A000089

/-- `A305117(n+1)-A305117(n)` -/
def P1137118827519433992.Spec : Prop :=
  ∀ n, P1137118827519433992.a n = A000089 (n + 1)

end A000089

/-! ## A000089.P15959160913912795243

`A091400(n+1)*A115525(n)`
-/

namespace A000089.P15959160913912795243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091400 (n + 1) * A115525 n

end

end A000089.P15959160913912795243

namespace A000089

/-- `A091400(n+1)*A115525(n)` -/
def P15959160913912795243.Spec : Prop :=
  ∀ n, P15959160913912795243.a n = A000089 (n + 1)

end A000089

/-! ## A000089.P9622801700429003538

`A091400(n+1)*A115635(n)`
-/

namespace A000089.P9622801700429003538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091400 (n + 1) * A115635 n

end

end A000089.P9622801700429003538

namespace A000089

/-- `A091400(n+1)*A115635(n)` -/
def P9622801700429003538.Spec : Prop :=
  ∀ n, P9622801700429003538.a n = A000089 (n + 1)

end A000089

/-! ## A000089.P7430568635599886981

`A091400(n+1)*A133872(n)`
-/

namespace A000089.P7430568635599886981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091400 (n + 1) * A133872 n

end

end A000089.P7430568635599886981

namespace A000089

/-- `A091400(n+1)*A133872(n)` -/
def P7430568635599886981.Spec : Prop :=
  ∀ n, P7430568635599886981.a n = A000089 (n + 1)

end A000089

/-! ## A000089.P14115098475592067930

`A000095(n+1)/A000034(n)`
-/

namespace A000089.P14115098475592067930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000095 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A000089.P14115098475592067930

namespace A000089

/-- `A000095(n+1)/A000034(n)` -/
def P14115098475592067930.Spec : Prop :=
  ∀ n, P14115098475592067930.a n = (A000089 (n + 1) : ℚ)

end A000089

/-! ## A000089.P9716347522846032914

`A000095(n+1)/A007880(n)`
-/

namespace A000089.P9716347522846032914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000095 (n + 1) : ℚ) / (A007880 n : ℚ)

end

end A000089.P9716347522846032914

namespace A000089

/-- `A000095(n+1)/A007880(n)` -/
def P9716347522846032914.Spec : Prop :=
  ∀ n, P9716347522846032914.a n = (A000089 (n + 1) : ℚ)

end A000089

/-! ## A000089.P17649108625208987206

`A000095(n+1)/A007884(n)`
-/

namespace A000089.P17649108625208987206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000095 (n + 1) : ℚ) / (A007884 n : ℚ)

end

end A000089.P17649108625208987206

namespace A000089

/-- `A000095(n+1)/A007884(n)` -/
def P17649108625208987206.Spec : Prop :=
  ∀ n, P17649108625208987206.a n = (A000089 (n + 1) : ℚ)

end A000089

/-! ## A000089.P15732172999581800666

`A000095(n+1)/A010883(n)`
-/

namespace A000089.P15732172999581800666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000095 (n + 1) : ℚ) / (A010883 n : ℚ)

end

end A000089.P15732172999581800666

namespace A000089

/-- `A000095(n+1)/A010883(n)` -/
def P15732172999581800666.Spec : Prop :=
  ∀ n, P15732172999581800666.a n = (A000089 (n + 1) : ℚ)

end A000089

/-! ## A000089.P9813055062357508700

`A000095(n+1)/A014695(n)`
-/

namespace A000089.P9813055062357508700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000095 (n + 1) : ℚ) / (A014695 n : ℚ)

end

end A000089.P9813055062357508700

namespace A000089

/-- `A000095(n+1)/A014695(n)` -/
def P9813055062357508700.Spec : Prop :=
  ∀ n, P9813055062357508700.a n = (A000089 (n + 1) : ℚ)

end A000089

/-! ## A000089.P18093007264160752788

`A000095(n+1)/A068073(n)`
-/

namespace A000089.P18093007264160752788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000095 (n + 1) : ℚ) / (A068073 n : ℚ)

end

end A000089.P18093007264160752788

namespace A000089

/-- `A000095(n+1)/A068073(n)` -/
def P18093007264160752788.Spec : Prop :=
  ∀ n, P18093007264160752788.a n = (A000089 (n + 1) : ℚ)

end A000089

/-! ## A000089.P14436988034896221630

`A000095(n+1)/A070402(n)`
-/

namespace A000089.P14436988034896221630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000095 (n + 1) : ℚ) / (A070402 n : ℚ)

end

end A000089.P14436988034896221630

namespace A000089

/-- `A000095(n+1)/A070402(n)` -/
def P14436988034896221630.Spec : Prop :=
  ∀ n, P14436988034896221630.a n = (A000089 (n + 1) : ℚ)

end A000089

/-! ## A000089.P8922848306824646991

`A000095(n+1)/A001511(n+1)`
-/

namespace A000089.P8922848306824646991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000095 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A000089.P8922848306824646991

namespace A000089

/-- `A000095(n+1)/A001511(n+1)` -/
def P8922848306824646991.Spec : Prop :=
  ∀ n, P8922848306824646991.a n = (A000089 (n + 1) : ℚ)

end A000089

/-!
# A000090: Expansion of e.g.f. exp((-x^3)/3)/(1-x).

The programs for A000090, there is no canonical definition to state claims against.
-/

/-! ## A000090.P13179059412978318676

`A122974(∑[n-1]+4)`
-/

namespace A000090.P13179059412978318676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122974 (∑ j ∈ Finset.range (n + 1), f1 j + 4).toNat

end

end A000090.P13179059412978318676

/-! ## A000090.P13119420470882319722

`A186526(A001840(n))`
-/

namespace A000090.P13119420470882319722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186526 (A001840 n).toNat

end

end A000090.P13119420470882319722

/-! ## A000090.P4557513172773344069

`A186526(eq[0, A073189(n)])`
-/

namespace A000090.P4557513172773344069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186526 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000090.P4557513172773344069

/-! ## A000090.P13857037012749329164

`A186526(eq[1, A118394(n)])`
-/

namespace A000090.P13857037012749329164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118394 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186526 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000090.P13857037012749329164

/-! ## A000090.P4338490860876860091

`n!-A027617(n)`
-/

namespace A000090.P4338490860876860091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A027617 n

end

end A000090.P4338490860876860091

/-! ## A000090.P2601565664764539373

`A000142(n)-A027617(n)`
-/

namespace A000090.P2601565664764539373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A027617 n

end

end A000090.P2601565664764539373

/-! ## A000090.P2863291144466063386

`∏[A007318(∑[n]+1)]-A027617(n)`
-/

namespace A000090.P2863291144466063386
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A027617 n

end

end A000090.P2863291144466063386

/-! ## A000090.P17036785027037781974

`A068424(A179865(n+1))-A027617(n)`
-/

namespace A000090.P17036785027037781974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068424 (A179865 (n + 1)).toNat - A027617 n

end

end A000090.P17036785027037781974

/-!
# A000091: Multiplicative with a(2^e) = 2 for k >= 1; a(3) = 2, a(3^e) = 0 for k >= 2; a(p^e) = 0 if p > 3 and p == -1 (mod 3); a(p^e) = 2 if p > 3 and p == 1 (mod 3).

The programs for A000091, the canonical program `A000091.P2909649729475731760` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000091 has offset 1).

The definition of A000091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000091.P2909649729475731760

`A034444(n+1)*A097325(A253629(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A000091

/-- `A034444(n+1)*A097325(A253629(n+1))` -/
def P2909649729475731760.Spec : Prop :=
  ∀ n, P2909649729475731760.a n = A000091 (n + 1)

theorem P2909649729475731760.correct : P2909649729475731760.Spec := by
  intro n
  simp only [A000091, Nat.add_sub_cancel]

end A000091

/-! ## A000091.P8677268921803496742

`lcm(A158522(n+1), A163810(A002472(n+1)))`
-/

namespace A000091.P8677268921803496742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158522 (n + 1)) (A163810 (A002472 (n + 1)).toNat)

end

end A000091.P8677268921803496742

namespace A000091

/-- `lcm(A158522(n+1), A163810(A002472(n+1)))` -/
def P8677268921803496742.Spec : Prop :=
  ∀ n, (P8677268921803496742.a n : ℤ) = A000091 (n + 1)

end A000091

/-! ## A000091.P15080154220786510594

`abs(A158522(n+1))*A097325(A253629(n+1))`
-/

namespace A000091.P15080154220786510594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158522 (n + 1)| * A097325 (A253629 (n + 1)).toNat

end

end A000091.P15080154220786510594

namespace A000091

/-- `abs(A158522(n+1))*A097325(A253629(n+1))` -/
def P15080154220786510594.Spec : Prop :=
  ∀ n, P15080154220786510594.a n = A000091 (n + 1)

end A000091

/-! ## A000091.P16041367566920630227

`A000005(∏{p}[n+1, #])*A097325(A253629(n+1))`
-/

namespace A000091.P16041367566920630227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), p) * A097325 (A253629 (n + 1)).toNat

end

end A000091.P16041367566920630227

namespace A000091

/-- `A000005(∏{p}[n+1, #])*A097325(A253629(n+1))` -/
def P16041367566920630227.Spec : Prop :=
  ∀ n, P16041367566920630227.a n = A000091 (n + 1)

end A000091

/-! ## A000091.P17916759978857674224

`lcm(A034444(n+1), A140080(A002472(n+1)))`
-/

namespace A000091.P17916759978857674224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034444 (n + 1)) (A140080 (A002472 (n + 1)).toNat)

end

end A000091.P17916759978857674224

namespace A000091

/-- `lcm(A034444(n+1), A140080(A002472(n+1)))` -/
def P17916759978857674224.Spec : Prop :=
  ∀ n, (P17916759978857674224.a n : ℤ) = A000091 (n + 1)

end A000091

/-! ## A000091.P14038574197422553675

`A034444(n+1)*A140080(A002472(n+1)²)`
-/

namespace A000091.P14038574197422553675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A140080 (A002472 (n + 1) ^ 2).toNat

end

end A000091.P14038574197422553675

namespace A000091

/-- `A034444(n+1)*A140080(A002472(n+1)²)` -/
def P14038574197422553675.Spec : Prop :=
  ∀ n, P14038574197422553675.a n = A000091 (n + 1)

end A000091

/-!
# A000093: a(n) = floor(n^(3/2)).

The programs for A000093, the canonical program `A000093.P17445405278724815419` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000093 has offset 0).

The definition of A000093 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000093.P17445405278724815419

`floor(sqrt(n^3))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000093

/-- `floor(sqrt(n^3))` -/
def P17445405278724815419.Spec : Prop :=
  ∀ n, (P17445405278724815419.a n : ℤ) = A000093 n

theorem P17445405278724815419.correct : P17445405278724815419.Spec := by
  intro n
  simp only [A000093]

end A000093

/-! ## A000093.P6545356252378501204

`floor(n^(3/2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A000093.P6545356252378501204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋

end

end A000093.P6545356252378501204

namespace A000093

/-- `floor(n^(3/2))` -/
def P6545356252378501204.Spec : Prop :=
  ∀ n, P6545356252378501204.a n = A000093 n

end A000093

/-! ## A000093.P388892217854546160

`A077121(n)-1`
-/

namespace A000093.P388892217854546160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077121 n - 1

end

end A000093.P388892217854546160

namespace A000093

/-- `A077121(n)-1` -/
def P388892217854546160.Spec : Prop :=
  ∀ n, P388892217854546160.a n = A000093 n

theorem P388892217854546160.correct : P388892217854546160.Spec := by
  intro n
  simp only [A000093, Nat.add_sub_cancel, A000093.P388892217854546160.a, A000093.P17445405278724815419.a, A077121, A077121.P1205340503456116965.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000093

/-! ## A000093.P14565726351993536815

`A000196(A000578(n))`
-/

namespace A000093.P14565726351993536815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000578 n).toNat

end

end A000093.P14565726351993536815

namespace A000093

/-- `A000196(A000578(n))` -/
def P14565726351993536815.Spec : Prop :=
  ∀ n, P14565726351993536815.a n = A000093 n

end A000093

/-! ## A000093.P10592434459286545609

`ceil(n*(sqrt(n)-acot(n)))`
-/

namespace A000093.P10592434459286545609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * (Real.sqrt (n : ℝ) - SequenceMachineLib.acot (n : ℝ))⌉

end

end A000093.P10592434459286545609

namespace A000093

/-- `ceil(n*(sqrt(n)-acot(n)))` -/
def P10592434459286545609.Spec : Prop :=
  ∀ n, P10592434459286545609.a n = A000093 n

end A000093

/-! ## A000093.P8924885450111834601

`sqrt(A065733(n))`
-/

namespace A000093.P8924885450111834601
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065733 n : ℝ)

end

end A000093.P8924885450111834601

namespace A000093

/-- `sqrt(A065733(n))` -/
def P8924885450111834601.Spec : Prop :=
  ∀ n, P8924885450111834601.a n = (A000093 n : ℝ)

end A000093

/-! ## A000093.P8376950355470806680

`A359275(n)+n`
-/

namespace A000093.P8376950355470806680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359275 n + (n : ℤ)

end

end A000093.P8376950355470806680

namespace A000093

/-- `A359275(n)+n` -/
def P8376950355470806680.Spec : Prop :=
  ∀ n, P8376950355470806680.a n = A000093 n

end A000093

/-! ## A000093.P15027447247452853072

`A349993(n)-1+n`
-/

namespace A000093.P15027447247452853072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349993 n - 1 + (n : ℤ)

end

end A000093.P15027447247452853072

namespace A000093

/-- `A349993(n)-1+n` -/
def P15027447247452853072.Spec : Prop :=
  ∀ n, P15027447247452853072.a n = A000093 n

theorem P15027447247452853072.correct : P15027447247452853072.Spec := by
  intro n
  simp only [A000093, Nat.add_sub_cancel, A000093.P15027447247452853072.a, A000093.P17445405278724815419.a, A349993, A349993.P2971347097920431812.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000093

/-! ## A000093.P637066801888738497

`ceil(sqrt(sqrt(A002604(n))))-1`
-/

namespace A000093.P637066801888738497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A002604 n : ℝ))⌉ - 1

end

end A000093.P637066801888738497

namespace A000093

/-- `ceil(sqrt(sqrt(A002604(n))))-1` -/
def P637066801888738497.Spec : Prop :=
  ∀ n, P637066801888738497.a n = A000093 n

end A000093

/-! ## A000093.P14766565679019269640

`ceil(sqrt(sqrt(A060883(n))))-1`
-/

namespace A000093.P14766565679019269640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A060883 n : ℝ))⌉ - 1

end

end A000093.P14766565679019269640

namespace A000093

/-- `ceil(sqrt(sqrt(A060883(n))))-1` -/
def P14766565679019269640.Spec : Prop :=
  ∀ n, P14766565679019269640.a n = A000093 n

end A000093

/-! ## A000093.P5785167721562499308

`A349993(n)+A023443(n)`
-/

namespace A000093.P5785167721562499308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349993 n + A023443 n

end

end A000093.P5785167721562499308

namespace A000093

/-- `A349993(n)+A023443(n)` -/
def P5785167721562499308.Spec : Prop :=
  ∀ n, P5785167721562499308.a n = A000093 n

theorem P5785167721562499308.correct : P5785167721562499308.Spec := by
  intro n
  simp only [A000093, Nat.add_sub_cancel, A000093.P5785167721562499308.a, A000093.P17445405278724815419.a, A023443, A023443.P2966051066474347068.a, A349993, A349993.P2971347097920431812.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000093

/-! ## A000093.P9411719987248341390

`A349993(n)-A024000(n)`
-/

namespace A000093.P9411719987248341390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349993 n - A024000 n

end

end A000093.P9411719987248341390

namespace A000093

/-- `A349993(n)-A024000(n)` -/
def P9411719987248341390.Spec : Prop :=
  ∀ n, P9411719987248341390.a n = A000093 n

theorem P9411719987248341390.correct : P9411719987248341390.Spec := by
  intro n
  simp only [A000093, Nat.add_sub_cancel, A000093.P9411719987248341390.a, A000093.P17445405278724815419.a, A024000, A024000.P8748414335487061084.a, A349993, A349993.P2971347097920431812.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000093

/-! ## A000093.P2582946113439098693

`∑[A035936(n)]-A035936(n)`
-/

namespace A000093.P2582946113439098693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035936 n

end

end A000093.P2582946113439098693

namespace A000093

/-- `∑[A035936(n)]-A035936(n)` -/
def P2582946113439098693.Spec : Prop :=
  ∀ n, P2582946113439098693.a n = A000093 n

end A000093

/-! ## A000093.P5391891283473832554

`A010052(n)+A185549(n)-1`
-/

namespace A000093.P5391891283473832554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n + (A185549 n - 1)

end

end A000093.P5391891283473832554

namespace A000093

/-- `A010052(n)+A185549(n)-1` -/
def P5391891283473832554.Spec : Prop :=
  ∀ n, P5391891283473832554.a n = A000093 n

end A000093

/-! ## A000093.P10562118442878237078

`comp[A185543(n+1)]`
-/

namespace A000093.P10562118442878237078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A000093.P10562118442878237078

namespace A000093

/-- `comp[A185543(n+1)]` -/
def P10562118442878237078.Spec : Prop :=
  ∀ n, (P10562118442878237078.a n : ℤ) = A000093 n

end A000093

/-! ## A000093.P18191447170022268095

`n-A001489(A349993(n)-1)`
-/

namespace A000093.P18191447170022268095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001489 (A349993 n - 1).toNat

end

end A000093.P18191447170022268095

namespace A000093

/-- `n-A001489(A349993(n)-1)` -/
def P18191447170022268095.Spec : Prop :=
  ∀ n, P18191447170022268095.a n = A000093 n

end A000093

/-! ## A000093.P13511864991336883151

`lt[A070923(n)², (2*n+1)²]`
-/

namespace A000093.P13511864991336883151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070923 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A000093.P13511864991336883151

namespace A000093

/-- `lt[A070923(n)², (2*n+1)²]` -/
def P13511864991336883151.Spec : Prop :=
  ∀ n, (P13511864991336883151.a n : ℤ) = A000093 n

end A000093

/-! ## A000093.P1557510651453974930

`A023443(A077121(n))`
-/

namespace A000093.P1557510651453974930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A077121 n).toNat

end

end A000093.P1557510651453974930

namespace A000093

/-- `A023443(A077121(n))` -/
def P1557510651453974930.Spec : Prop :=
  ∀ n, P1557510651453974930.a n = A000093 n

end A000093

/-! ## A000093.P2968295917917487236

`A062108(n²)`
-/

namespace A000093.P2968295917917487236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (n ^ 2)

end

end A000093.P2968295917917487236

namespace A000093

/-- `A062108(n²)` -/
def P2968295917917487236.Spec : Prop :=
  ∀ n, P2968295917917487236.a n = A000093 n

end A000093

/-!
# A000094: Number of trees of diameter 4.

The programs for A000094, there is no canonical definition to state claims against.
-/

/-! ## A000094.P6956437317463392913

`A052810(n)-(n+1)`
-/

namespace A000094.P6956437317463392913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n - (n + 1 : ℤ)

end

end A000094.P6956437317463392913

/-! ## A000094.P3803498257446473103

`∑{d}[n, A000837(#)]-n`
-/

namespace A000094.P3803498257446473103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000837 d - (n : ℤ)

end

end A000094.P3803498257446473103

/-! ## A000094.P3539077867806951347

`A083751(n)+a(n-1)` with `a(0)=0`
-/

namespace A000094.P3539077867806951347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A083751 n + a (n - 1)

end

end A000094.P3539077867806951347

/-! ## A000094.P9129422487036737432

`∑[A002865(char[1]+n)-1]`
-/

namespace A000094.P9129422487036737432
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 ((if ∃ j, f2 j = n then 1 else 0) + n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000094.P9129422487036737432

/-! ## A000094.P3781008557534845704

`A000041(n)-(C(2, n+2)+n)`
-/

namespace A000094.P3781008557534845704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (Nat.choose 2 (n + 2) + n : ℤ)

end

end A000094.P3781008557534845704

/-! ## A000094.P17527769243741078898

`A000041(abs(1-n)+1)-(abs(1-n)+1)`
-/

namespace A000094.P17527769243741078898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (|1 - (n : ℤ)| + 1).toNat - (|1 - (n : ℤ)| + 1)

end

end A000094.P17527769243741078898

/-! ## A000094.P14481599304123876562

`A058984(n)-A065033(n)`
-/

namespace A000094.P14481599304123876562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058984 n - A065033 n

end

end A000094.P14481599304123876562

/-! ## A000094.P10166285026523886923

`A133041(n)-A004277(n)`
-/

namespace A000094.P10166285026523886923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - A004277 n

end

end A000094.P10166285026523886923

/-! ## A000094.P9740156449306816668

`∑[A002865(n)]-A028310(n)`
-/

namespace A000094.P9740156449306816668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A028310 n

end

end A000094.P9740156449306816668

/-! ## A000094.P7311086210307535621

`A000065(n)+1-A028310(n)`
-/

namespace A000094.P7311086210307535621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A028310 n)

end

end A000094.P7311086210307535621

/-! ## A000094.P16110225053523251291

`A000041(n)-A004277(n)+n`
-/

namespace A000094.P16110225053523251291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A004277 n + (n : ℤ)

end

end A000094.P16110225053523251291

/-! ## A000094.P10636078174465091521

`(n-A000041(n))*A057428(n)`
-/

namespace A000094.P10636078174465091521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A000041 n) * A057428 n

end

end A000094.P10636078174465091521

/-! ## A000094.P11634563518404784989

`(A000041(n)-n)*A057427(n)`
-/

namespace A000094.P11634563518404784989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000041 n - (n : ℤ)) * A057427 n

end

end A000094.P11634563518404784989

/-! ## A000094.P9491483662345731859

`(A000041(n)-n)*A062157(n)²`
-/

namespace A000094.P9491483662345731859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000041 n - (n : ℤ)) * A062157 n ^ 2

end

end A000094.P9491483662345731859

/-! ## A000094.P15138254290484581455

`A000041(n)-n-char[A262508(n)]`
-/

namespace A000094.P15138254290484581455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262508 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (n : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A000094.P15138254290484581455

/-! ## A000094.P12126079664232932786

`A000041(n)-record[A064745(n+1)]+n`
-/

namespace A000094.P12126079664232932786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A000094.P12126079664232932786

/-! ## A000094.P5110068844340934432

`A000041(n)*and(1, A000040(n+1))-n`
-/

namespace A000094.P5110068844340934432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * Int.land 1 (A000040 (n + 1)) - (n : ℤ)

end

end A000094.P5110068844340934432

/-! ## A000094.P5508118121360713182

`gcd(2, A000010(2*n+1))+A000041(n)-(n+2)`
-/

namespace A000094.P5508118121360713182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000010 (2 * n + 1)) : ℤ) + (A000041 n - (n + 2 : ℤ))

end

end A000094.P5508118121360713182

/-! ## A000094.P15756063084155957971

`∑[A187219(n+1)]-(A187219(n+1)+n)`
-/

namespace A000094.P15756063084155957971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A187219 (n + 1) + (n : ℤ))

end

end A000094.P15756063084155957971

/-! ## A000094.P5370980522259632689

`A139582(n)%A133041(n)`
-/

namespace A000094.P5370980522259632689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139582 n) (A133041 n)

end

end A000094.P5370980522259632689

/-!
# A000095: Number of fixed points of Gamma_0 (n) of type i.

The programs for A000095, the canonical program `A000095.P2430518374745600653` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000095 has offset 1).

The definition of A000095 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091379, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A000095.P2430518374745600653

`A166486(n+1)*A091379(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000095

/-- `A166486(n+1)*A091379(n+1)` -/
def P2430518374745600653.Spec : Prop :=
  ∀ n, P2430518374745600653.a n = A000095 (n + 1)

theorem P2430518374745600653.correct : P2430518374745600653.Spec := by
  intro n
  simp only [A000095, Nat.add_sub_cancel]

end A000095

/-! ## A000095.P11022804941783858688

`2*A000089(n+1)-A000089(2*(n+1))`
-/

namespace A000095.P11022804941783858688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000089 (n + 1) - A000089 (2 * (n + 1))

end

end A000095.P11022804941783858688

namespace A000095

/-- `2*A000089(n+1)-A000089(2*(n+1))` -/
def P11022804941783858688.Spec : Prop :=
  ∀ n, P11022804941783858688.a n = A000095 (n + 1)

end A000095

/-! ## A000095.P6344633483168979693

`(n%2+1)*A000089(n+1)`
-/

namespace A000095.P6344633483168979693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A000089 (n + 1)

end

end A000095.P6344633483168979693

namespace A000095

/-- `(n%2+1)*A000089(n+1)` -/
def P6344633483168979693.Spec : Prop :=
  ∀ n, P6344633483168979693.a n = A000095 (n + 1)

end A000095

/-! ## A000095.P14767102872791891436

`A091379(A166486(n+1)+n)`
-/

namespace A000095.P14767102872791891436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091379 (A166486 (n + 1) + (n : ℤ)).toNat

end

end A000095.P14767102872791891436

namespace A000095

/-- `A091379(A166486(n+1)+n)` -/
def P14767102872791891436.Spec : Prop :=
  ∀ n, P14767102872791891436.a n = A000095 (n + 1)

end A000095

/-! ## A000095.P2030436696953529294

`A000034(n)*A000089(n+1)`
-/

namespace A000095.P2030436696953529294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A000089 (n + 1)

end

end A000095.P2030436696953529294

namespace A000095

/-- `A000034(n)*A000089(n+1)` -/
def P2030436696953529294.Spec : Prop :=
  ∀ n, P2030436696953529294.a n = A000095 (n + 1)

end A000095

/-! ## A000095.P5901652236915817949

`A000089(n+1)*A007880(n)`
-/

namespace A000095.P5901652236915817949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (n + 1) * A007880 n

end

end A000095.P5901652236915817949

namespace A000095

/-- `A000089(n+1)*A007880(n)` -/
def P5901652236915817949.Spec : Prop :=
  ∀ n, P5901652236915817949.a n = A000095 (n + 1)

end A000095

/-! ## A000095.P2430016181598098749

`A000089(n+1)*A007884(n)`
-/

namespace A000095.P2430016181598098749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (n + 1) * A007884 n

end

end A000095.P2430016181598098749

namespace A000095

/-- `A000089(n+1)*A007884(n)` -/
def P2430016181598098749.Spec : Prop :=
  ∀ n, P2430016181598098749.a n = A000095 (n + 1)

end A000095

/-! ## A000095.P1088956363110193394

`A000089(n+1)*A010883(n)`
-/

namespace A000095.P1088956363110193394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (n + 1) * A010883 n

end

end A000095.P1088956363110193394

namespace A000095

/-- `A000089(n+1)*A010883(n)` -/
def P1088956363110193394.Spec : Prop :=
  ∀ n, P1088956363110193394.a n = A000095 (n + 1)

end A000095

/-! ## A000095.P480658115729112007

`A000089(n+1)*A014695(n)`
-/

namespace A000095.P480658115729112007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (n + 1) * A014695 n

end

end A000095.P480658115729112007

namespace A000095

/-- `A000089(n+1)*A014695(n)` -/
def P480658115729112007.Spec : Prop :=
  ∀ n, P480658115729112007.a n = A000095 (n + 1)

end A000095

/-! ## A000095.P3382717867462279710

`A000089(n+1)*A068073(n)`
-/

namespace A000095.P3382717867462279710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (n + 1) * A068073 n

end

end A000095.P3382717867462279710

namespace A000095

/-- `A000089(n+1)*A068073(n)` -/
def P3382717867462279710.Spec : Prop :=
  ∀ n, P3382717867462279710.a n = A000095 (n + 1)

end A000095

/-! ## A000095.P779631802267960020

`A000089(n+1)*A070402(n)`
-/

namespace A000095.P779631802267960020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (n + 1) * A070402 n

end

end A000095.P779631802267960020

namespace A000095

/-- `A000089(n+1)*A070402(n)` -/
def P779631802267960020.Spec : Prop :=
  ∀ n, P779631802267960020.a n = A000095 (n + 1)

end A000095

/-! ## A000095.P6205080057759466869

`A000089(n+1)*A071222(n)`
-/

namespace A000095.P6205080057759466869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (n + 1) * A071222 n

end

end A000095.P6205080057759466869

namespace A000095

/-- `A000089(n+1)*A071222(n)` -/
def P6205080057759466869.Spec : Prop :=
  ∀ n, P6205080057759466869.a n = A000095 (n + 1)

end A000095

/-! ## A000095.P17045779836580630698

`A000089(n+1)*A130731(n)`
-/

namespace A000095.P17045779836580630698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (n + 1) * A130731 n

end

end A000095.P17045779836580630698

namespace A000095

/-- `A000089(n+1)*A130731(n)` -/
def P17045779836580630698.Spec : Prop :=
  ∀ n, P17045779836580630698.a n = A000095 (n + 1)

end A000095

/-! ## A000095.P17631218543682662426

`A000089(n+1)*A131800(n)`
-/

namespace A000095.P17631218543682662426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (n + 1) * A131800 n

end

end A000095.P17631218543682662426

namespace A000095

/-- `A000089(n+1)*A131800(n)` -/
def P17631218543682662426.Spec : Prop :=
  ∀ n, P17631218543682662426.a n = A000095 (n + 1)

end A000095

/-! ## A000095.P12409699761403650469

`A000089(n+1)*A133145(n)`
-/

namespace A000095.P12409699761403650469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (n + 1) * A133145 n

end

end A000095.P12409699761403650469

namespace A000095

/-- `A000089(n+1)*A133145(n)` -/
def P12409699761403650469.Spec : Prop :=
  ∀ n, P12409699761403650469.a n = A000095 (n + 1)

end A000095

/-! ## A000095.P10635332919411866628

`A000089(n+1)*A133186(n)`
-/

namespace A000095.P10635332919411866628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (n + 1) * A133186 n

end

end A000095.P10635332919411866628

namespace A000095

/-- `A000089(n+1)*A133186(n)` -/
def P10635332919411866628.Spec : Prop :=
  ∀ n, P10635332919411866628.a n = A000095 (n + 1)

end A000095

/-! ## A000095.P11646348913144227009

`A000089(n+1)*A177002(n)`
-/

namespace A000095.P11646348913144227009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (n + 1) * A177002 n

end

end A000095.P11646348913144227009

namespace A000095

/-- `A000089(n+1)*A177002(n)` -/
def P11646348913144227009.Spec : Prop :=
  ∀ n, P11646348913144227009.a n = A000095 (n + 1)

end A000095

/-! ## A000095.P17799052165283282750

`A091379(n+1)*A115525(n)`
-/

namespace A000095.P17799052165283282750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091379 (n + 1) * A115525 n

end

end A000095.P17799052165283282750

namespace A000095

/-- `A091379(n+1)*A115525(n)` -/
def P17799052165283282750.Spec : Prop :=
  ∀ n, P17799052165283282750.a n = A000095 (n + 1)

end A000095

/-! ## A000095.P7699974366551778574

`A091379(n+1)*A115635(n)`
-/

namespace A000095.P7699974366551778574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091379 (n + 1) * A115635 n

end

end A000095.P7699974366551778574

namespace A000095

/-- `A091379(n+1)*A115635(n)` -/
def P7699974366551778574.Spec : Prop :=
  ∀ n, P7699974366551778574.a n = A000095 (n + 1)

end A000095

/-! ## A000095.P17082556779116804154

`A091400(n+1)*A130731(n)`
-/

namespace A000095.P17082556779116804154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091400 (n + 1) * A130731 n

end

end A000095.P17082556779116804154

namespace A000095

/-- `A091400(n+1)*A130731(n)` -/
def P17082556779116804154.Spec : Prop :=
  ∀ n, P17082556779116804154.a n = A000095 (n + 1)

end A000095

/-!
# A000096: a(n) = n*(n+3)/2.

The programs for A000096, the canonical program `A000096.P6925830517264718723` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000096 has offset 0).

The definition of A000096 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+3)/2` (program `A000096.P4145229375340616103`, by `A000096.P4145229375340616103.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000096.P4145229375340616103

`n*(n+3)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A000096.P4145229375340616103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 3) : ℚ) / 2

end

end A000096.P4145229375340616103

namespace A000096

/-- `n*(n+3)/2` -/
def P4145229375340616103.Spec : Prop :=
  ∀ n, P4145229375340616103.a n = (A000096 n : ℚ)

theorem P4145229375340616103.correct : P4145229375340616103.Spec := by
  intro n
  simp only [A000096, Nat.add_sub_cancel, A000096.P4145229375340616103.a, A000096.P6925830517264718723.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000096

/-! ## A000096.P6925830517264718723

`C(n+3, 2)-(n+3)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000096

/-- `C(n+3, 2)-(n+3)` -/
def P6925830517264718723.Spec : Prop :=
  ∀ n, P6925830517264718723.a n = A000096 n

theorem P6925830517264718723.correct : P6925830517264718723.Spec := by
  intro n
  simp only [A000096]

end A000096

/-! ## A000096.P5176616917791446218

`a(n-1)+n+1` with `a(0)=0`
-/

namespace A000096.P5176616917791446218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n + 1

end

end A000096.P5176616917791446218

namespace A000096

/-- `a(n-1)+n+1` -/
def P5176616917791446218.Spec : Prop :=
  ∀ n, (P5176616917791446218.a n : ℤ) = A000096 n

end A000096

/-! ## A000096.P12905268171355643911

`A000217(n)+n`
-/

namespace A000096.P12905268171355643911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (n : ℤ)

end

end A000096.P12905268171355643911

namespace A000096

/-- `A000217(n)+n` -/
def P12905268171355643911.Spec : Prop :=
  ∀ n, P12905268171355643911.a n = A000096 n

theorem P12905268171355643911.correct : P12905268171355643911.Spec := by
  intro n
  simp only [A000096, Nat.add_sub_cancel, A000096.P12905268171355643911.a, A000096.P6925830517264718723.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000096

/-! ## A000096.P1680110615879188098

`(n+1)²-A000124(n)`
-/

namespace A000096.P1680110615879188098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A000124 n

end

end A000096.P1680110615879188098

namespace A000096

/-- `(n+1)²-A000124(n)` -/
def P1680110615879188098.Spec : Prop :=
  ∀ n, P1680110615879188098.a n = A000096 n

end A000096

/-! ## A000096.P1200310528644761777

`record[C(n, 2)-n]`
-/

namespace A000096.P1200310528644761777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000096.P1200310528644761777

namespace A000096

/-- `record[C(n, 2)-n]` -/
def P1200310528644761777.Spec : Prop :=
  ∀ n, P1200310528644761777.a n = A000096 n

end A000096

/-! ## A000096.P11133008998366448340

`xor(∑[xor(n, -1)], -1)`
-/

namespace A000096.P11133008998366448340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A000096.P11133008998366448340

namespace A000096

/-- `xor(∑[xor(n, -1)], -1)` -/
def P11133008998366448340.Spec : Prop :=
  ∀ n, P11133008998366448340.a n = A000096 n

end A000096

/-! ## A000096.P198052595320166439

`n+C(n+1, 2)`
-/

namespace A000096.P198052595320166439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + Nat.choose (n + 1) 2

end

end A000096.P198052595320166439

namespace A000096

/-- `n+C(n+1, 2)` -/
def P198052595320166439.Spec : Prop :=
  ∀ n, (P198052595320166439.a n : ℤ) = A000096 n

theorem P198052595320166439.correct : P198052595320166439.Spec := by
  intro n
  simp only [A000096, Nat.add_sub_cancel, A000096.P198052595320166439.a, A000096.P6925830517264718723.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000096

/-! ## A000096.P15779878127056863037

`record[(n-3)*n/2]`
-/

namespace A000096.P15779878127056863037
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3 : ℚ) * ((n : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000096.P15779878127056863037

namespace A000096

/-- `record[(n-3)*n/2]` -/
def P15779878127056863037.Spec : Prop :=
  ∀ n, P15779878127056863037.a n = (A000096 n : ℚ)

end A000096

/-! ## A000096.P803674957679260034

`floor(n*cosh(log(n+3)))`
-/

namespace A000096.P803674957679260034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.cosh (Real.log (n + 3 : ℝ))⌋

end

end A000096.P803674957679260034

namespace A000096

/-- `floor(n*cosh(log(n+3)))` -/
def P803674957679260034.Spec : Prop :=
  ∀ n, P803674957679260034.a n = A000096 n

end A000096

/-! ## A000096.P14015915432472965918

`round(n*cosh(log(n+3)))`
-/

namespace A000096.P14015915432472965918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.cosh (Real.log (n + 3 : ℝ)))

end

end A000096.P14015915432472965918

namespace A000096

/-- `round(n*cosh(log(n+3)))` -/
def P14015915432472965918.Spec : Prop :=
  ∀ n, P14015915432472965918.a n = A000096 n

end A000096

/-! ## A000096.P11577706371972100664

`ceil(n*sinh(log(n+3)))`
-/

namespace A000096.P11577706371972100664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.sinh (Real.log (n + 3 : ℝ))⌉

end

end A000096.P11577706371972100664

namespace A000096

/-- `ceil(n*sinh(log(n+3)))` -/
def P11577706371972100664.Spec : Prop :=
  ∀ n, P11577706371972100664.a n = A000096 n

end A000096

/-! ## A000096.P15065491185782309438

`round(n*sinh(log(n+3)))`
-/

namespace A000096.P15065491185782309438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.sinh (Real.log (n + 3 : ℝ)))

end

end A000096.P15065491185782309438

namespace A000096

/-- `round(n*sinh(log(n+3)))` -/
def P15065491185782309438.Spec : Prop :=
  ∀ n, P15065491185782309438.a n = A000096 n

end A000096

/-! ## A000096.P6893242013423533489

`ceil(n-(cos(1)-∑[n]))`
-/

namespace A000096.P6893242013423533489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) - (Real.cos (1 : ℝ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))⌉

end

end A000096.P6893242013423533489

namespace A000096

/-- `ceil(n-(cos(1)-∑[n]))` -/
def P6893242013423533489.Spec : Prop :=
  ∀ n, P6893242013423533489.a n = A000096 n

end A000096

/-! ## A000096.P11338122073266800298

`ceil(n-(sin(1)-∑[n]))`
-/

namespace A000096.P11338122073266800298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) - (Real.sin (1 : ℝ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))⌉

end

end A000096.P11338122073266800298

namespace A000096

/-- `ceil(n-(sin(1)-∑[n]))` -/
def P11338122073266800298.Spec : Prop :=
  ∀ n, P11338122073266800298.a n = A000096 n

end A000096

/-! ## A000096.P7134916806957059460

`round(n-(cos(2)-∑[n]))`
-/

namespace A000096.P7134916806957059460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) - (Real.cos (2 : ℝ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)))

end

end A000096.P7134916806957059460

namespace A000096

/-- `round(n-(cos(2)-∑[n]))` -/
def P7134916806957059460.Spec : Prop :=
  ∀ n, P7134916806957059460.a n = A000096 n

end A000096

/-! ## A000096.P10629216741401999911

`floor(n-(tan(3)-∑[n]))`
-/

namespace A000096.P10629216741401999911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) - (Real.tan (3 : ℝ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))⌋

end

end A000096.P10629216741401999911

namespace A000096

/-- `floor(n-(tan(3)-∑[n]))` -/
def P10629216741401999911.Spec : Prop :=
  ∀ n, P10629216741401999911.a n = A000096 n

end A000096

/-! ## A000096.P12295187840243477109

`round(n-(sin(3)-∑[n]))`
-/

namespace A000096.P12295187840243477109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) - (Real.sin (3 : ℝ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)))

end

end A000096.P12295187840243477109

namespace A000096

/-- `round(n-(sin(3)-∑[n]))` -/
def P12295187840243477109.Spec : Prop :=
  ∀ n, P12295187840243477109.a n = A000096 n

end A000096

/-! ## A000096.P894986285729981087

`ceil(n-(atan(1)-∑[n]))`
-/

namespace A000096.P894986285729981087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) - (Real.arctan (1 : ℝ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))⌉

end

end A000096.P894986285729981087

namespace A000096

/-- `ceil(n-(atan(1)-∑[n]))` -/
def P894986285729981087.Spec : Prop :=
  ∀ n, P894986285729981087.a n = A000096 n

end A000096

/-! ## A000096.P3694353205891299228

`ceil(n-(tanh(1)-∑[n]))`
-/

namespace A000096.P3694353205891299228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) - (Real.tanh (1 : ℝ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))⌉

end

end A000096.P3694353205891299228

namespace A000096

/-- `ceil(n-(tanh(1)-∑[n]))` -/
def P3694353205891299228.Spec : Prop :=
  ∀ n, P3694353205891299228.a n = A000096 n

end A000096

/-!
# A000097: Number of partitions of n if there are two kinds of 1's and two kinds of 2's.

The programs for A000097, there is no canonical definition to state claims against.
-/

/-! ## A000097.P6183162289095935729

`A014153(n)/2+A087787(n)/4+A000070(n)/4`
-/

namespace A000097.P6183162289095935729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014153 n : ℚ) / 2 + (A087787 n : ℚ) / 4 + (A000070 n : ℚ) / 4

end

end A000097.P6183162289095935729

/-! ## A000097.P2642211326515146505

`∑[∑[A087787(n)]]`
-/

namespace A000097.P2642211326515146505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087787 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000097.P2642211326515146505

/-! ## A000097.P17221642614367608287

`∑[A024786(n+2)]`
-/

namespace A000097.P17221642614367608287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024786 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000097.P17221642614367608287

/-! ## A000097.P10366535115997914015

`∑[∑[A182712(n+2)]]`
-/

namespace A000097.P10366535115997914015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000097.P10366535115997914015

/-! ## A000097.P17743562756066540910

`A000070(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A000097.P17743562756066540910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000070 n + a (n - 2)

end

end A000097.P17743562756066540910

/-! ## A000097.P10826815847896241963

`∑[a(n-2)+A000041(n)]` with `a(0)=1, a(1)=1`
-/

namespace A000097.P10826815847896241963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000097.P10826815847896241963

/-! ## A000097.P14247425425896273060

`A103650(n+1)+A103650(n+2)`
-/

namespace A000097.P14247425425896273060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103650 (n + 1) + A103650 (n + 2)

end

end A000097.P14247425425896273060

/-! ## A000097.P10403464099414539722

`A316861(n+3)-A116646(n+3)`
-/

namespace A000097.P10403464099414539722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316861 (n + 3) - A116646 (n + 3)

end

end A000097.P10403464099414539722

/-! ## A000097.P10215588129257336792

`A000291(n)-A000070(n)`
-/

namespace A000097.P10215588129257336792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000291 n - A000070 n

end

end A000097.P10215588129257336792

/-! ## A000097.P8688958802084363931

`A000291(n)-(A024786(n+1)+A024786(n+2))`
-/

namespace A000097.P8688958802084363931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000291 n - (A024786 (n + 1) + A024786 (n + 2))

end

end A000097.P8688958802084363931

/-! ## A000097.P7912978978427973041

`A000070(n)+A093695(n)/2`
-/

namespace A000097.P7912978978427973041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000070 n : ℚ) + (A093695 n : ℚ) / 2

end

end A000097.P7912978978427973041

/-! ## A000097.P1957187516441431272

`∑[A000041(n)]+A093695(n)/2`
-/

namespace A000097.P1957187516441431272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) + (A093695 n : ℚ) / 2

end

end A000097.P1957187516441431272

/-! ## A000097.P10280660629256417511

`A014153(n)-a(n-1)` with `a(0)=1`
-/

namespace A000097.P10280660629256417511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014153 n - a (n - 1)

end

end A000097.P10280660629256417511

/-! ## A000097.P5521728654987042590

`∑[A216053(n+1)-1]-a(n-1)` with `a(0)=1`
-/

namespace A000097.P5521728654987042590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216053 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A000097.P5521728654987042590

/-! ## A000097.P15891122697484544722

`A135348(n+1)-A093695(n)/2`
-/

namespace A000097.P15891122697484544722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135348 (n + 1) : ℚ) - (A093695 n : ℚ) / 2

end

end A000097.P15891122697484544722

/-! ## A000097.P2873944417110977715

`A093695(n+2)/2`
-/

namespace A000097.P2873944417110977715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093695 (n + 2) : ℚ) / 2

end

end A000097.P2873944417110977715

/-! ## A000097.P14038976576169160212

`(A135348(n+1)+A000070(n))/2`
-/

namespace A000097.P14038976576169160212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135348 (n + 1) + A000070 n : ℚ) / 2

end

end A000097.P14038976576169160212

/-! ## A000097.P6151655850277862988

`A082775(n+3)-A000291(n+1)`
-/

namespace A000097.P6151655850277862988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082775 (n + 3) - A000291 (n + 1)

end

end A000097.P6151655850277862988

/-! ## A000097.P15453679506465021974

`A000291(n)-A025065(2*n)`
-/

namespace A000097.P15453679506465021974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000291 n - A025065 (2 * n)

end

end A000097.P15453679506465021974

/-! ## A000097.P17337262305665487030

`A014160(n)+A093695(n)-A096586(n)`
-/

namespace A000097.P17337262305665487030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014160 n + (A093695 n - A096586 n)

end

end A000097.P17337262305665487030

/-!
# A000098: Number of partitions of n if there are two kinds of 1, two kinds of 2 and two kinds of 3.

The programs for A000098, there is no canonical definition to state claims against.
-/

/-! ## A000098.P8039357949676861912

`∑[∑[A116646(n+2)]]`
-/

namespace A000098.P8039357949676861912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116646 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000098.P8039357949676861912

/-! ## A000098.P11476744360832500561

`A000097(n)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A000098.P11476744360832500561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  A000097 n + a (n - 3)

end

end A000098.P11476744360832500561

/-! ## A000098.P6701810201787405016

`∑[A291553(n+3)-A024786(n+1)]`
-/

namespace A000098.P6701810201787405016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291553 (n + 3) - A024786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000098.P6701810201787405016

/-! ## A000098.P16061334131901782347

`A000412(n)-A082775(n+2)`
-/

namespace A000098.P16061334131901782347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000412 n - A082775 (n + 2)

end

end A000098.P16061334131901782347

/-! ## A000098.P15331683836121335397

`A000412(n)-(A014153(n)+A000070(n))`
-/

namespace A000098.P15331683836121335397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000412 n - (A014153 n + A000070 n)

end

end A000098.P15331683836121335397

/-! ## A000098.P4952618773637258175

`∑[A000097(n)-∑[A024787(n+2)]]`
-/

namespace A000098.P4952618773637258175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024787 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000097 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000098.P4952618773637258175

/-! ## A000098.P15916977702526111610

`∑[∑[A024786(n+2)-A024787(n+2)]]`
-/

namespace A000098.P15916977702526111610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024786 (n + 2) - A024787 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000098.P15916977702526111610

/-! ## A000098.P9911764673279173611

`A114312(2*n+3)-A000070(n+1)`
-/

namespace A000098.P9911764673279173611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114312 (2 * n + 3) - A000070 (n + 1)

end

end A000098.P9911764673279173611

/-! ## A000098.P15401549512158707871

`A114312(2*n+3)-A100824(2*n+3)`
-/

namespace A000098.P15401549512158707871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114312 (2 * n + 3) - A100824 (2 * n + 3)

end

end A000098.P15401549512158707871

/-! ## A000098.P1446635231863567652

`A114312(2*n+3)-A100835(2*n+3)`
-/

namespace A000098.P1446635231863567652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114312 (2 * n + 3) - A100835 (2 * n + 3)

end

end A000098.P1446635231863567652

/-! ## A000098.P13604833726561692845

`∑[A299779(∑[n+1]+2)]`
-/

namespace A000098.P13604833726561692845
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299779 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000098.P13604833726561692845

/-! ## A000098.P4213580534507492809

`A239829(∑[n+1]+2)`
-/

namespace A000098.P4213580534507492809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239829 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A000098.P4213580534507492809

/-! ## A000098.P10546285310229720214

`A103923(A167614(n+2))`
-/

namespace A000098.P10546285310229720214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103923 (A167614 (n + 2)).toNat

end

end A000098.P10546285310229720214

/-! ## A000098.P6419128084307039792

`A103923(eq[3, A002262(n)])`
-/

namespace A000098.P6419128084307039792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103923 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000098.P6419128084307039792

/-! ## A000098.P11944228018209925158

`A103923(eq[2, A002260(n+1)-2])`
-/

namespace A000098.P11944228018209925158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103923 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000098.P11944228018209925158

/-! ## A000098.P1223669475584805236

`A103923(eq[2, A002260(n+1)/2])`
-/

namespace A000098.P1223669475584805236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103923 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A000098.P1223669475584805236

/-!
# A000099: Let A(n) = #{(i,j): i^2 + j^2 <= n}, V(n) = Pi*n, P(n) = A(n) - V(n); sequence gives values of n where |P(n)| sets a new record.

The programs for A000099, there is no canonical definition to state claims against.
-/

/-! ## A000099.P14655886678347974350

`∑[A235791(A319564(floor((n/2)²+n)))]`
-/

namespace A000099.P14655886678347974350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235791 (A319564 ⌊((n : ℚ) / 2) ^ 2 + (n : ℚ)⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000099.P14655886678347974350

