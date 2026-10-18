import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B002.C004
import Seq.B002.C005
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

/-!
# A062401: a(n) = phi(sigma(n)).

The programs for A062401, the canonical program `A062401.P14719521271091436929` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062401 has offset 1).

The definition of A062401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062401.P14719521271091436929

`A000010(∑{d}[n+1, #])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A062401

/-- `A000010(∑{d}[n+1, #])` -/
def P14719521271091436929.Spec : Prop :=
  ∀ n, P14719521271091436929.a n = A062401 (n + 1)

theorem P14719521271091436929.correct : P14719521271091436929.Spec := by
  intro n
  simp only [A062401, Nat.add_sub_cancel]

end A062401

/-! ## A062401.P7798382995464851693

`∑{d}[n+1, A353647(#)]`
-/

namespace A062401.P7798382995464851693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353647 d

end

end A062401.P7798382995464851693

namespace A062401

/-- `∑{d}[n+1, A353647(#)]` -/
def P7798382995464851693.Spec : Prop :=
  ∀ n, P7798382995464851693.a n = A062401 (n + 1)

end A062401

/-! ## A062401.P2761100113855355171

`1-A295301(n+1)+n`
-/

namespace A062401.P2761100113855355171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A295301 (n + 1) + (n : ℤ)

end

end A062401.P2761100113855355171

namespace A062401

/-- `1-A295301(n+1)+n` -/
def P2761100113855355171.Spec : Prop :=
  ∀ n, P2761100113855355171.a n = A062401 (n + 1)

end A062401

/-! ## A062401.P14737111460874314125

`A000010(Δ[A160664(n)])`
-/

namespace A062401.P14737111460874314125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat

end

end A062401.P14737111460874314125

namespace A062401

/-- `A000010(Δ[A160664(n)])` -/
def P14737111460874314125.Spec : Prop :=
  ∀ n, P14737111460874314125.a n = A062401 (n + 1)

end A062401

/-! ## A062401.P5330272924956157075

`A000010(A000203(n+1))`
-/

namespace A062401.P5330272924956157075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (n + 1)).toNat

end

end A062401.P5330272924956157075

namespace A062401

/-- `A000010(A000203(n+1))` -/
def P5330272924956157075.Spec : Prop :=
  ∀ n, P5330272924956157075.a n = A062401 (n + 1)

end A062401

/-! ## A062401.P1458282403418931896

`A000010(abs(Δ[A330725(n)]))`
-/

namespace A062401.P1458282403418931896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 |f1 (n + 1) - f1 n|.toNat

end

end A062401.P1458282403418931896

namespace A062401

/-- `A000010(abs(Δ[A330725(n)]))` -/
def P1458282403418931896.Spec : Prop :=
  ∀ n, P1458282403418931896.a n = A062401 (n + 1)

end A062401

/-! ## A062401.P11566878690438066870

`A000010(abs(A143348(n+1)))`
-/

namespace A062401.P11566878690438066870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 |A143348 (n + 1)|.toNat

end

end A062401.P11566878690438066870

namespace A062401

/-- `A000010(abs(A143348(n+1)))` -/
def P11566878690438066870.Spec : Prop :=
  ∀ n, P11566878690438066870.a n = A062401 (n + 1)

end A062401

/-! ## A062401.P16344659738015453427

`A000010(sqrt(A072861(n+1)))`
-/

namespace A062401.P16344659738015453427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat

end

end A062401.P16344659738015453427

namespace A062401

/-- `A000010(sqrt(A072861(n+1)))` -/
def P16344659738015453427.Spec : Prop :=
  ∀ n, P16344659738015453427.a n = A062401 (n + 1)

end A062401

/-! ## A062401.P5497317248439479681

`A000010(∑[A340793(n+1)])`
-/

namespace A062401.P5497317248439479681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A062401.P5497317248439479681

namespace A062401

/-- `A000010(∑[A340793(n+1)])` -/
def P5497317248439479681.Spec : Prop :=
  ∀ n, P5497317248439479681.a n = A062401 (n + 1)

end A062401

/-! ## A062401.P6231157748984013771

`A000010(A039653(n+1)+1)`
-/

namespace A062401.P6231157748984013771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A039653 (n + 1) + 1).toNat

end

end A062401.P6231157748984013771

namespace A062401

/-- `A000010(A039653(n+1)+1)` -/
def P6231157748984013771.Spec : Prop :=
  ∀ n, P6231157748984013771.a n = A062401 (n + 1)

end A062401

/-! ## A062401.P13444966389616622820

`A000010(A088580(n+1)-1)`
-/

namespace A062401.P13444966389616622820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A088580 (n + 1) - 1).toNat

end

end A062401.P13444966389616622820

namespace A062401

/-- `A000010(A088580(n+1)-1)` -/
def P13444966389616622820.Spec : Prop :=
  ∀ n, P13444966389616622820.a n = A062401 (n + 1)

end A062401

/-! ## A062401.P15780628118009332990

`A000010(A245092(2*n+1))`
-/

namespace A062401.P15780628118009332990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A245092 (2 * n + 1)).toNat

end

end A062401.P15780628118009332990

namespace A062401

/-- `A000010(A245092(2*n+1))` -/
def P15780628118009332990.Spec : Prop :=
  ∀ n, P15780628118009332990.a n = A062401 (n + 1)

end A062401

/-! ## A062401.P7067053476904914081

`A000010(A074400(n+1)/2)`
-/

namespace A062401.P7067053476904914081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A062401.P7067053476904914081

namespace A062401

/-- `A000010(A074400(n+1)/2)` -/
def P7067053476904914081.Spec : Prop :=
  ∀ n, P7067053476904914081.a n = A062401 (n + 1)

end A062401

/-! ## A062401.P7231669838646722622

`A000010(A272027(n+1)/3)`
-/

namespace A062401.P7231669838646722622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A272027 (n + 1) : ℚ) / 3)).toNat

end

end A062401.P7231669838646722622

namespace A062401

/-- `A000010(A272027(n+1)/3)` -/
def P7231669838646722622.Spec : Prop :=
  ∀ n, P7231669838646722622.a n = A062401 (n + 1)

end A062401

/-! ## A062401.P14570673285644634566

`A000010(A239050(n+1)/4)`
-/

namespace A062401.P14570673285644634566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A239050 (n + 1) : ℚ) / 4)).toNat

end

end A062401.P14570673285644634566

namespace A062401

/-- `A000010(A239050(n+1)/4)` -/
def P14570673285644634566.Spec : Prop :=
  ∀ n, P14570673285644634566.a n = A062401 (n + 1)

end A062401

/-! ## A062401.P2123460943465529093

`A000010(A274535(n+1)/5)`
-/

namespace A062401.P2123460943465529093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A274535 (n + 1) : ℚ) / 5)).toNat

end

end A062401.P2123460943465529093

namespace A062401

/-- `A000010(A274535(n+1)/5)` -/
def P2123460943465529093.Spec : Prop :=
  ∀ n, P2123460943465529093.a n = A062401 (n + 1)

end A062401

/-! ## A062401.P13875244306867380504

`A000010(ceil(A002659(n+1)/2))`
-/

namespace A062401.P13875244306867380504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ⌈(A002659 (n + 1) : ℚ) / 2⌉.toNat

end

end A062401.P13875244306867380504

namespace A062401

/-- `A000010(ceil(A002659(n+1)/2))` -/
def P13875244306867380504.Spec : Prop :=
  ∀ n, P13875244306867380504.a n = A062401 (n + 1)

end A062401

/-! ## A062401.P5336781523311939674

`A000010((A002659(n+1)+1)/2)`
-/

namespace A062401.P5336781523311939674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A002659 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A062401.P5336781523311939674

namespace A062401

/-- `A000010((A002659(n+1)+1)/2)` -/
def P5336781523311939674.Spec : Prop :=
  ∀ n, P5336781523311939674.a n = A062401 (n + 1)

end A062401

/-! ## A062401.P3344740934163836008

`A000010(A001065(n+1)+n+1)`
-/

namespace A062401.P3344740934163836008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001065 (n + 1) + (n + 1 : ℤ)).toNat

end

end A062401.P3344740934163836008

namespace A062401

/-- `A000010(A001065(n+1)+n+1)` -/
def P3344740934163836008.Spec : Prop :=
  ∀ n, P3344740934163836008.a n = A062401 (n + 1)

end A062401

/-! ## A062401.P4223197776824873662

`A353636(n+1)+A000010(n+1)`
-/

namespace A062401.P4223197776824873662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353636 (n + 1) + A000010 (n + 1)

end

end A062401.P4223197776824873662

namespace A062401

/-- `A353636(n+1)+A000010(n+1)` -/
def P4223197776824873662.Spec : Prop :=
  ∀ n, P4223197776824873662.a n = A062401 (n + 1)

end A062401

/-!
# A062402: a(n) = sigma(phi(n)).

The programs for A062402, the canonical program `A062402.P8430549949511934837` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062402 has offset 1).

The definition of A062402 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062402.P8430549949511934837

`∑{d}[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], #]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062402

/-- `∑{d}[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], #]` -/
def P8430549949511934837.Spec : Prop :=
  ∀ n, (P8430549949511934837.a n : ℤ) = A062402 (n + 1)

theorem P8430549949511934837.correct : P8430549949511934837.Spec := by
  intro n
  simp only [A062402, Nat.add_sub_cancel]

end A062402

/-! ## A062402.P8226640748573222158

`∑{d}[Δ[A002088(n)], #]`
-/

namespace A062402.P8226640748573222158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A062402.P8226640748573222158

namespace A062402

/-- `∑{d}[Δ[A002088(n)], #]` -/
def P8226640748573222158.Spec : Prop :=
  ∀ n, (P8226640748573222158.a n : ℤ) = A062402 (n + 1)

end A062402

/-! ## A062402.P12305957877531989456

`∑{d}[Δ[A005728(n)], #]`
-/

namespace A062402.P12305957877531989456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A062402.P12305957877531989456

namespace A062402

/-- `∑{d}[Δ[A005728(n)], #]` -/
def P12305957877531989456.Spec : Prop :=
  ∀ n, (P12305957877531989456.a n : ℤ) = A062402 (n + 1)

end A062402

/-! ## A062402.P4703108177131452085

`∑{d}[A000010(n+1), #]`
-/

namespace A062402.P4703108177131452085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A062402.P4703108177131452085

namespace A062402

/-- `∑{d}[A000010(n+1), #]` -/
def P4703108177131452085.Spec : Prop :=
  ∀ n, (P4703108177131452085.a n : ℤ) = A062402 (n + 1)

end A062402

/-! ## A062402.P12524620460445691036

`∑{d}[sqrt(A127473(n+1)), #]`
-/

namespace A062402.P12524620460445691036
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A062402.P12524620460445691036

namespace A062402

/-- `∑{d}[sqrt(A127473(n+1)), #]` -/
def P12524620460445691036.Spec : Prop :=
  ∀ n, (P12524620460445691036.a n : ℤ) = A062402 (n + 1)

end A062402

/-! ## A062402.P9185254853700881512

`A295302(n+1)+1+n`
-/

namespace A062402.P9185254853700881512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295302 (n + 1) + 1 + (n : ℤ)

end

end A062402.P9185254853700881512

namespace A062402

/-- `A295302(n+1)+1+n` -/
def P9185254853700881512.Spec : Prop :=
  ∀ n, P9185254853700881512.a n = A062402 (n + 1)

end A062402

/-! ## A062402.P11193451700801538771

`∑{d}[A109606(n+1)+1, #]`
-/

namespace A062402.P11193451700801538771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A062402.P11193451700801538771

namespace A062402

/-- `∑{d}[A109606(n+1)+1, #]` -/
def P11193451700801538771.Spec : Prop :=
  ∀ n, (P11193451700801538771.a n : ℤ) = A062402 (n + 1)

end A062402

/-! ## A062402.P6566932760130750486

`∑{d}[1-A039649(n+1), #]`
-/

namespace A062402.P6566932760130750486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A039649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A062402.P6566932760130750486

namespace A062402

/-- `∑{d}[1-A039649(n+1), #]` -/
def P6566932760130750486.Spec : Prop :=
  ∀ n, (P6566932760130750486.a n : ℤ) = A062402 (n + 1)

end A062402

/-! ## A062402.P13800604604779169526

`∑{d}[A349137(2*n+1), #]`
-/

namespace A062402.P13800604604779169526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A062402.P13800604604779169526

namespace A062402

/-- `∑{d}[A349137(2*n+1), #]` -/
def P13800604604779169526.Spec : Prop :=
  ∀ n, (P13800604604779169526.a n : ℤ) = A062402 (n + 1)

end A062402

/-! ## A062402.P214462391464985493

`∑{d}[A219428(n+1)-n, #]`
-/

namespace A062402.P214462391464985493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A062402.P214462391464985493

namespace A062402

/-- `∑{d}[A219428(n+1)-n, #]` -/
def P214462391464985493.Spec : Prop :=
  ∀ n, (P214462391464985493.a n : ℤ) = A062402 (n + 1)

end A062402

/-! ## A062402.P16828197614257436876

`(A340461(n+1)+n+1)/2`
-/

namespace A062402.P16828197614257436876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340461 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A062402.P16828197614257436876

namespace A062402

/-- `(A340461(n+1)+n+1)/2` -/
def P16828197614257436876.Spec : Prop :=
  ∀ n, P16828197614257436876.a n = (A062402 (n + 1) : ℚ)

end A062402

/-! ## A062402.P16223493350237355673

`A000203(Δ[A002088(n)])`
-/

namespace A062402.P16223493350237355673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (n + 1) - f1 n).toNat

end

end A062402.P16223493350237355673

namespace A062402

/-- `A000203(Δ[A002088(n)])` -/
def P16223493350237355673.Spec : Prop :=
  ∀ n, P16223493350237355673.a n = A062402 (n + 1)

end A062402

/-! ## A062402.P18233781655774470245

`A000203(Δ[A005728(n)])`
-/

namespace A062402.P18233781655774470245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (n + 1) - f1 n).toNat

end

end A062402.P18233781655774470245

namespace A062402

/-- `A000203(Δ[A005728(n)])` -/
def P18233781655774470245.Spec : Prop :=
  ∀ n, P18233781655774470245.a n = A062402 (n + 1)

end A062402

/-! ## A062402.P8156864134052788222

`A000203(A000010(n+1))`
-/

namespace A062402.P8156864134052788222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000010 (n + 1)).toNat

end

end A062402.P8156864134052788222

namespace A062402

/-- `A000203(A000010(n+1))` -/
def P8156864134052788222.Spec : Prop :=
  ∀ n, P8156864134052788222.a n = A062402 (n + 1)

end A062402

/-! ## A062402.P6289548307103274336

`A000203(sqrt(A127473(n+1)))`
-/

namespace A062402.P6289548307103274336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))).toNat

end

end A062402.P6289548307103274336

namespace A062402

/-- `A000203(sqrt(A127473(n+1)))` -/
def P6289548307103274336.Spec : Prop :=
  ∀ n, P6289548307103274336.a n = A062402 (n + 1)

end A062402

/-! ## A062402.P10791270915966045325

`A039653(Δ[A005728(n)])+1`
-/

namespace A062402.P10791270915966045325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (f1 (n + 1) - f1 n).toNat + 1

end

end A062402.P10791270915966045325

namespace A062402

/-- `A039653(Δ[A005728(n)])+1` -/
def P10791270915966045325.Spec : Prop :=
  ∀ n, P10791270915966045325.a n = A062402 (n + 1)

end A062402

/-! ## A062402.P14852531080562850839

`A000203(A109606(n+1)+1)`
-/

namespace A062402.P14852531080562850839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A109606 (n + 1) + 1).toNat

end

end A062402.P14852531080562850839

namespace A062402

/-- `A000203(A109606(n+1)+1)` -/
def P14852531080562850839.Spec : Prop :=
  ∀ n, P14852531080562850839.a n = A062402 (n + 1)

end A062402

/-! ## A062402.P13914411754015022284

`A000203(A039649(n+1)-1)`
-/

namespace A062402.P13914411754015022284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A039649 (n + 1) - 1).toNat

end

end A062402.P13914411754015022284

namespace A062402

/-- `A000203(A039649(n+1)-1)` -/
def P13914411754015022284.Spec : Prop :=
  ∀ n, P13914411754015022284.a n = A062402 (n + 1)

end A062402

/-! ## A062402.P10899044034915671769

`A000203(A349137(2*n+1))`
-/

namespace A062402.P10899044034915671769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A349137 (2 * n + 1)).toNat

end

end A062402.P10899044034915671769

namespace A062402

/-- `A000203(A349137(2*n+1))` -/
def P10899044034915671769.Spec : Prop :=
  ∀ n, P10899044034915671769.a n = A062402 (n + 1)

end A062402

/-! ## A062402.P4141422659643316341

`A000203(n-A219428(n+1))`
-/

namespace A062402.P4141422659643316341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n : ℤ) - A219428 (n + 1)).toNat

end

end A062402.P4141422659643316341

namespace A062402

/-- `A000203(n-A219428(n+1))` -/
def P4141422659643316341.Spec : Prop :=
  ∀ n, P4141422659643316341.a n = A062402 (n + 1)

end A062402

/-!
# A062403: Primes of the form 2*k*prime(k) + 1.

The programs for A062403, there is no canonical definition to state claims against.
-/

/-! ## A062403.P14777346188617078134

`p?[2*A033286(n+1)+1]`
-/

namespace A062403.P14777346188617078134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033286 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062403.P14777346188617078134

/-! ## A062403.P15305245137738883470

`p?[n*A001747(n+1)+1]`
-/

namespace A062403.P15305245137738883470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001747 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062403.P15305245137738883470

/-! ## A062403.P13196565336683761107

`p?[(n+1)*A100484(n+1)+1]`
-/

namespace A062403.P13196565336683761107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A100484 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062403.P13196565336683761107

/-! ## A062403.P16414425839657062369

`p?[2*n*A008578(n+1)+1]`
-/

namespace A062403.P16414425839657062369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A008578 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062403.P16414425839657062369

/-! ## A062403.P549211506814820812

`p?[2*n*A158611(n+2)+1]`
-/

namespace A062403.P549211506814820812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A158611 (n + 2)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062403.P549211506814820812

/-! ## A062403.P5070612928439517344

`p?[n*A076274(n+1)+n+1]`
-/

namespace A062403.P5070612928439517344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A076274 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062403.P5070612928439517344

/-! ## A062403.P7651394150315009418

`p?[2*n*record[A006530(n+1)]+1]`
-/

namespace A062403.P7651394150315009418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062403.P7651394150315009418

/-! ## A062403.P8722998015876716233

`p?[2*(n+1)*A000040(n+1)+1]`
-/

namespace A062403.P8722998015876716233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A000040 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062403.P8722998015876716233

/-! ## A062403.P799418866980785594

`p?[(n+2)*A000040(A080513(n))+1]`
-/

namespace A062403.P799418866980785594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000040 (A080513 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062403.P799418866980785594

/-! ## A062403.P6855735265353472398

`p?[2*n*A000040(A028310(n))+1]`
-/

namespace A062403.P6855735265353472398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A000040 (A028310 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062403.P6855735265353472398

/-!
# A062404: Numbers k such that 2*k*prime(k) + 1 is prime.

The programs for A062404, there is no canonical definition to state claims against.
-/

/-! ## A062404.P10203788260348386222

`eq[2, A000005(2*n*A000040(abs(1-n)+1)+1)]`
-/

namespace A062404.P10203788260348386222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((2 * n : ℤ) * A000040 (|1 - (n : ℤ)| + 1).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062404.P10203788260348386222

/-! ## A062404.P3922097246871098333

`eq[1, A001222(2*(n+1)*A000040(n+1)+1)]+1`
-/

namespace A062404.P3922097246871098333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((2 * (n + 1) : ℤ) * A000040 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062404.P3922097246871098333

/-! ## A062404.P5523508527415603405

`eq[2, A000005(2*(n+1)*A000040(n+1)+1)]+1`
-/

namespace A062404.P5523508527415603405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((2 * (n + 1) : ℤ) * A000040 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062404.P5523508527415603405

/-! ## A062404.P16952391722723665374

`lt[A000005(2*(n+1)*A000040(n+1)+1), 3]+1`
-/

namespace A062404.P16952391722723665374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * ((n + 1 : ℤ) * A000040 (n + 1)) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A062404.P16952391722723665374

/-! ## A062404.P10765104093700374612

`eq[n*A001747(n+1), A033879(n*A001747(n+1)+1)]`
-/

namespace A062404.P10765104093700374612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 ((n : ℤ) * A001747 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062404.P10765104093700374612

/-!
# A062407: Numbers of the form Sum_{j=1..k} sigma(j) that are square.

The programs for A062407, there is no canonical definition to state claims against.
-/

/-! ## A062407.P13158080551303509187

`∩[A000203(n+1)+a(n-1), (n+1)²]` with `a(0)=1`
-/

namespace A062407.P13158080551303509187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000203 (n + 1) + f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A062407.P13158080551303509187

/-! ## A062407.P12590687369780273526

`∩[A024916(n+1), n²]`
-/

namespace A062407.P12590687369780273526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A062407.P12590687369780273526

/-!
# A062408: Numbers k such that floor(Pi*k) is prime.

The programs for A062408, the canonical program `A062408.P920450603261674343` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062408 has offset 0).

The definition of A062408 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8724 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062408.P920450603261674343

`ceil(p?[floor(π*n)]/π)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062408

/-- `ceil(p?[floor(π*n)]/π)` -/
def P920450603261674343.Spec : Prop :=
  ∀ n, P920450603261674343.a n = A062408 n

theorem P920450603261674343.correct : P920450603261674343.Spec := by
  intro n
  simp only [A062408]

end A062408

/-! ## A062408.P12770305224614118889

`round(p?[floor(π*n)]/π)`
-/

namespace A062408.P12770305224614118889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ) / Real.pi)

end

end A062408.P12770305224614118889

namespace A062408

/-- `round(p?[floor(π*n)]/π)` -/
def P12770305224614118889.Spec : Prop :=
  ∀ n, P12770305224614118889.a n = A062408 n

end A062408

/-! ## A062408.P7584787198071297390

`eq[2, A000005(A022844(n+1))]+1`
-/

namespace A062408.P7584787198071297390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A022844 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062408.P7584787198071297390

namespace A062408

/-- `eq[2, A000005(A022844(n+1))]+1` -/
def P7584787198071297390.Spec : Prop :=
  ∀ n, (P7584787198071297390.a n : ℤ) = A062408 n

end A062408

/-! ## A062408.P4796014000533025556

`A062300(A077546(n+1))`
-/

namespace A062408.P4796014000533025556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062300 (A077546 (n + 1)).toNat

end

end A062408.P4796014000533025556

namespace A062408

/-- `A062300(A077546(n+1))` -/
def P4796014000533025556.Spec : Prop :=
  ∀ n, P4796014000533025556.a n = A062408 n

end A062408

/-! ## A062408.P11863763239474446323

`record[n+1-A003415(A022844(n))]`
-/

namespace A062408.P11863763239474446323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A003415 (A022844 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062408.P11863763239474446323

namespace A062408

/-- `record[n+1-A003415(A022844(n))]` -/
def P11863763239474446323.Spec : Prop :=
  ∀ n, P11863763239474446323.a n = A062408 n

end A062408

/-! ## A062408.P3228496498962871617

`eq[1, A001222(A316669(floor(π*n)+1))]`
-/

namespace A062408.P3228496498962871617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A316669 (⌊Real.pi * (n : ℝ)⌋ + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062408.P3228496498962871617

namespace A062408

/-- `eq[1, A001222(A316669(floor(π*n)+1))]` -/
def P3228496498962871617.Spec : Prop :=
  ∀ n, (P3228496498962871617.a n : ℤ) = A062408 n

end A062408

/-!
# A062409: Numbers k such that floor(e*k) is prime.

The programs for A062409, the canonical program `A062409.P12890872922671797960` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062409 has offset 1).

The definition of A062409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062409.P12890872922671797960

`eq[1, A001222(A022843(n+1))]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A062409

/-- `eq[1, A001222(A022843(n+1))]+1` -/
def P12890872922671797960.Spec : Prop :=
  ∀ n, (P12890872922671797960.a n : ℤ) = A062409 (n + 1)

theorem P12890872922671797960.correct : P12890872922671797960.Spec := by
  intro n
  simp only [A062409, Nat.add_sub_cancel]

end A062409

/-! ## A062409.P12012070734742093543

`A078219(A077545(n+1))`
-/

namespace A062409.P12012070734742093543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078219 (A077545 (n + 1)).toNat

end

end A062409.P12012070734742093543

namespace A062409

/-- `A078219(A077545(n+1))` -/
def P12012070734742093543.Spec : Prop :=
  ∀ n, P12012070734742093543.a n = A062409 (n + 1)

end A062409

/-! ## A062409.P9828598914669242656

`eq[1, A003415(A022843(n))]`
-/

namespace A062409.P9828598914669242656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A022843 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062409.P9828598914669242656

namespace A062409

/-- `eq[1, A003415(A022843(n))]` -/
def P9828598914669242656.Spec : Prop :=
  ∀ n, (P9828598914669242656.a n : ℤ) = A062409 (n + 1)

end A062409

/-! ## A062409.P13100018937726324059

`eq[A134451(2*(n+2)), A152061(A022843(n))]`
-/

namespace A062409.P13100018937726324059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152061 (A022843 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062409.P13100018937726324059

namespace A062409

/-- `eq[A134451(2*(n+2)), A152061(A022843(n))]` -/
def P13100018937726324059.Spec : Prop :=
  ∀ n, (P13100018937726324059.a n : ℤ) = A062409 (n + 1)

end A062409

/-! ## A062409.P480169758173055292

`lt[A003415(A022843(n)), A073200(3*n)]`
-/

namespace A062409.P480169758173055292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A022843 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073200 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062409.P480169758173055292

namespace A062409

/-- `lt[A003415(A022843(n)), A073200(3*n)]` -/
def P480169758173055292.Spec : Prop :=
  ∀ n, (P480169758173055292.a n : ℤ) = A062409 (n + 1)

end A062409

/-!
# A062411: a(n) = (-1)^(p-1)*(p-1)! + 1 where p = prime(n).

The programs for A062411, there is no canonical definition to state claims against.
-/

/-! ## A062411.P5434778753518912935

`xor(1, (p?[abs(xor(n, -2))]-1)!)`
-/

namespace A062411.P5434778753518912935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.factorial (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat)

end

end A062411.P5434778753518912935

/-! ## A062411.P7315458799559024089

`xor(1, (p?[xor(1, n)+1]-1)!)`
-/

namespace A062411.P7315458799559024089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.factorial ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1).toNat)

end

end A062411.P7315458799559024089

/-! ## A062411.P1966426260776376909

`A182927(p?[comp[n²]])`
-/

namespace A062411.P1966426260776376909
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182927 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A062411.P1966426260776376909

/-! ## A062411.P819899820607557472

`xor(1, A177771(n+1))`
-/

namespace A062411.P819899820607557472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A177771 (n + 1))

end

end A062411.P819899820607557472

/-! ## A062411.P16950012683046279152

`xor(1, A006093(n+1)!)`
-/

namespace A062411.P16950012683046279152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.factorial (A006093 (n + 1)).toNat)

end

end A062411.P16950012683046279152

/-!
# A062412: a(n) = Sum_{k=1..n} (k^n + (prime(k) - 1)^n).

The programs for A062412, there is no canonical definition to state claims against.
-/

/-! ## A062412.P5790964116492501162

`A062440(n+1)+A031971(n+1)`
-/

namespace A062412.P5790964116492501162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062440 (n + 1) + A031971 (n + 1)

end

end A062412.P5790964116492501162

/-! ## A062412.P11604096620106741725

`A215078(∑[n+2])+A062440(n+1)`
-/

namespace A062412.P11604096620106741725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215078 (∑ j ∈ Finset.range (n + 1), f1 j) + A062440 (n + 1)

end

end A062412.P11604096620106741725

/-! ## A062412.P10443559506823587313

`A062440(n+1)+A121706(n+1)+Δ[A001923(n)]`
-/

namespace A062412.P10443559506823587313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062440 (n + 1) + (A121706 (n + 1) + (f1 (n + 1) - f1 n))

end

end A062412.P10443559506823587313

/-! ## A062412.P9979308837661157550

`A062440(n+1)+A121706(n+1)+A000312(n+1)`
-/

namespace A062412.P9979308837661157550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062440 (n + 1) + (A121706 (n + 1) + A000312 (n + 1))

end

end A062412.P9979308837661157550

/-! ## A062412.P5120116592838346802

`A062440(n+1)+A000169(n+2)-A191686(n+2)`
-/

namespace A062412.P5120116592838346802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062440 (n + 1) + (A000169 (n + 2) - A191686 (n + 2))

end

end A062412.P5120116592838346802

/-!
# A062413: Integer part of log(n!)^(1 - 1/n).

The programs for A062413, the canonical program `A062413.P11143323484269557244` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062413 has offset 1).

The definition of A062413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062413.P11143323484269557244

`floor(∑[log(n+1)]^(n/(n+1)))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062413

/-- `floor(∑[log(n+1)]^(n/(n+1)))` -/
def P11143323484269557244.Spec : Prop :=
  ∀ n, P11143323484269557244.a n = A062413 (n + 1)

theorem P11143323484269557244.correct : P11143323484269557244.Spec := by
  intro n
  simp only [A062413, Nat.add_sub_cancel]

end A062413

/-!
# A062414: Nearest integer to log(n!)^(1 - 1/n).

The programs for A062414, the canonical program `A062414.P9226704166784689341` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062414 has offset 1).

The definition of A062414 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062414.P9226704166784689341

`round(log((n+1)!)^(1-1/(n+1)))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062414

/-- `round(log((n+1)!)^(1-1/(n+1)))` -/
def P9226704166784689341.Spec : Prop :=
  ∀ n, P9226704166784689341.a n = A062414 (n + 1)

theorem P9226704166784689341.correct : P9226704166784689341.Spec := by
  intro n
  simp only [A062414, Nat.add_sub_cancel]

end A062414

/-! ## A062414.P10466123877914647596

`round(∑[log(n+1)]^(n/(n+1)))`
-/

namespace A062414.P10466123877914647596
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) ^ ((n : ℚ) / (n + 1 : ℚ) : ℝ))

end

end A062414.P10466123877914647596

namespace A062414

/-- `round(∑[log(n+1)]^(n/(n+1)))` -/
def P10466123877914647596.Spec : Prop :=
  ∀ n, P10466123877914647596.a n = A062414 (n + 1)

end A062414

/-! ## A062414.P1993079601469116477

`A034887(A000196(A015237(n)))`
-/

namespace A062414.P1993079601469116477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A000196 (A015237 n).toNat).toNat

end

end A062414.P1993079601469116477

namespace A062414

/-- `A034887(A000196(A015237(n)))` -/
def P1993079601469116477.Spec : Prop :=
  ∀ n, P1993079601469116477.a n = A062414 (n + 1)

end A062414

/-! ## A062414.P13323912670547851118

`A034887(A259361(A172472(n)²))`
-/

namespace A062414.P13323912670547851118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A259361 (A172472 n ^ 2).toNat).toNat

end

end A062414.P13323912670547851118

namespace A062414

/-- `A034887(A259361(A172472(n)²))` -/
def P13323912670547851118.Spec : Prop :=
  ∀ n, P13323912670547851118.a n = A062414 (n + 1)

end A062414

/-!
# A062415: Integer part of log(n)^(n - 1).

The programs for A062415, the canonical program `A062415.P8518435197414088526` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062415 has offset 1).

The definition of A062415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062415.P8518435197414088526

`floor(log(n+1)^n)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062415

/-- `floor(log(n+1)^n)` -/
def P8518435197414088526.Spec : Prop :=
  ∀ n, P8518435197414088526.a n = A062415 (n + 1)

theorem P8518435197414088526.correct : P8518435197414088526.Spec := by
  intro n
  simp only [A062415, Nat.add_sub_cancel]

end A062415

/-! ## A062415.P2578834481714366990

`ceil(log(n+1)^n-A057427(n))`
-/

namespace A062415.P2578834481714366990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (n + 1 : ℝ) ^ n - (A057427 n : ℝ)⌉

end

end A062415.P2578834481714366990

namespace A062415

/-- `ceil(log(n+1)^n-A057427(n))` -/
def P2578834481714366990.Spec : Prop :=
  ∀ n, P2578834481714366990.a n = A062415 (n + 1)

end A062415

/-! ## A062415.P5012618739484009925

`round(log(n+1)^n)-A005614(A304662(n))`
-/

namespace A062415.P5012618739484009925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (n + 1 : ℝ) ^ n) - A005614 (A304662 n).toNat

end

end A062415.P5012618739484009925

namespace A062415

/-- `round(log(n+1)^n)-A005614(A304662(n))` -/
def P5012618739484009925.Spec : Prop :=
  ∀ n, P5012618739484009925.a n = A062415 (n + 1)

end A062415

/-! ## A062415.P10253305856244067958

`xor(A005614(A304662(n)), A062416(n+1))`
-/

namespace A062415.P10253305856244067958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005614 (A304662 n).toNat) (A062416 (n + 1))

end

end A062415.P10253305856244067958

namespace A062415

/-- `xor(A005614(A304662(n)), A062416(n+1))` -/
def P10253305856244067958.Spec : Prop :=
  ∀ n, P10253305856244067958.a n = A062415 (n + 1)

end A062415

/-!
# A062416: Nearest integer to log(n)^(n-1).

The programs for A062416, the canonical program `A062416.P6130519687807876499` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062416 has offset 1).

The definition of A062416 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062416.P6130519687807876499

`round(log(n+1)^n)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062416

/-- `round(log(n+1)^n)` -/
def P6130519687807876499.Spec : Prop :=
  ∀ n, P6130519687807876499.a n = A062416 (n + 1)

theorem P6130519687807876499.correct : P6130519687807876499.Spec := by
  intro n
  simp only [A062416, Nat.add_sub_cancel]

end A062416

/-! ## A062416.P8450655830518005830

`A005614(A304662(n))+floor(log(n+1)^n)`
-/

namespace A062416.P8450655830518005830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A304662 n).toNat + ⌊Real.log (n + 1 : ℝ) ^ n⌋

end

end A062416.P8450655830518005830

namespace A062416

/-- `A005614(A304662(n))+floor(log(n+1)^n)` -/
def P8450655830518005830.Spec : Prop :=
  ∀ n, P8450655830518005830.a n = A062416 (n + 1)

end A062416

/-! ## A062416.P10310753151142560827

`A062415(n+1)+A005614(A304662(n))`
-/

namespace A062416.P10310753151142560827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062415 (n + 1) + A005614 (A304662 n).toNat

end

end A062416.P10310753151142560827

namespace A062416

/-- `A062415(n+1)+A005614(A304662(n))` -/
def P10310753151142560827.Spec : Prop :=
  ∀ n, P10310753151142560827.a n = A062416 (n + 1)

end A062416

/-! ## A062416.P8182228836640194882

`or(A005614(A026532(n+1)), A062415(n+1))`
-/

namespace A062416.P8182228836640194882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005614 (A026532 (n + 1)).toNat) (A062415 (n + 1))

end

end A062416.P8182228836640194882

namespace A062416

/-- `or(A005614(A026532(n+1)), A062415(n+1))` -/
def P8182228836640194882.Spec : Prop :=
  ∀ n, P8182228836640194882.a n = A062416 (n + 1)

end A062416

/-! ## A062416.P8765655764330481662

`or(A062415(n+1), A240025(A095912(n+1)))`
-/

namespace A062416.P8765655764330481662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A062415 (n + 1)) (A240025 (A095912 (n + 1)).toNat)

end

end A062416.P8765655764330481662

namespace A062416

/-- `or(A062415(n+1), A240025(A095912(n+1)))` -/
def P8765655764330481662.Spec : Prop :=
  ∀ n, P8765655764330481662.a n = A062416 (n + 1)

end A062416

/-!
# A062417: Integer part of log(n!)^((1 - 1/n)^(1/n)).

The programs for A062417, the canonical program `A062417.P850504378929026117` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062417 has offset 1).

The definition of A062417 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062417.P850504378929026117

`floor(log((n+1)!)^(1-1/(n+1))^(1/(n+1)))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062417

/-- `floor(log((n+1)!)^(1-1/(n+1))^(1/(n+1)))` -/
def P850504378929026117.Spec : Prop :=
  ∀ n, P850504378929026117.a n = A062417 (n + 1)

theorem P850504378929026117.correct : P850504378929026117.Spec := by
  intro n
  simp only [A062417, Nat.add_sub_cancel]

end A062417

/-! ## A062417.P7204175296553220922

`abs(A000196((n+1)*∑[A202308(n)]+3)-(n+2))`
-/

namespace A062417.P7204175296553220922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000196 ((n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) + 3).toNat - (n + 2 : ℤ)|

end

end A062417.P7204175296553220922

namespace A062417

/-- `abs(A000196((n+1)*∑[A202308(n)]+3)-(n+2))` -/
def P7204175296553220922.Spec : Prop :=
  ∀ n, P7204175296553220922.a n = A062417 (n + 1)

end A062417

/-! ## A062417.P10276739201109016642

`round(log(A192744(n+1))+abs(1-n)-n)`
-/

namespace A062417.P10276739201109016642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A192744 (n + 1) : ℝ) + (|1 - (n : ℤ)| - (n : ℤ) : ℝ))

end

end A062417.P10276739201109016642

namespace A062417

/-- `round(log(A192744(n+1))+abs(1-n)-n)` -/
def P10276739201109016642.Spec : Prop :=
  ∀ n, P10276739201109016642.a n = A062417 (n + 1)

end A062417

/-!
# A062418: Nearest integer to log(n!)^((1 - 1/n)^(1/n)).

The programs for A062418, the canonical program `A062418.P13784730562724304073` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062418 has offset 1).

The definition of A062418 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062418.P13784730562724304073

`round(log((n+1)!)^(1-1/(n+1))^(1/(n+1)))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062418

/-- `round(log((n+1)!)^(1-1/(n+1))^(1/(n+1)))` -/
def P13784730562724304073.Spec : Prop :=
  ∀ n, P13784730562724304073.a n = A062418 (n + 1)

theorem P13784730562724304073.correct : P13784730562724304073.Spec := by
  intro n
  simp only [A062418, Nat.add_sub_cancel]

end A062418

/-! ## A062418.P13171390209868107952

`round(log(A007808(n)+2))`
-/

namespace A062418.P13171390209868107952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A007808 n + 2 : ℝ))

end

end A062418.P13171390209868107952

namespace A062418

/-- `round(log(A007808(n)+2))` -/
def P13171390209868107952.Spec : Prop :=
  ∀ n, P13171390209868107952.a n = A062418 (n + 1)

end A062418

/-! ## A062418.P12045192825400679862

`floor(log(A088129(n)+4))`
-/

namespace A062418.P12045192825400679862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A088129 n + 4 : ℝ)⌋

end

end A062418.P12045192825400679862

namespace A062418

/-- `floor(log(A088129(n)+4))` -/
def P12045192825400679862.Spec : Prop :=
  ∀ n, P12045192825400679862.a n = A062418 (n + 1)

end A062418

/-! ## A062418.P15436835945877969257

`A000196(A046691(A072831(n)))`
-/

namespace A062418.P15436835945877969257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A046691 (A072831 n).toNat).toNat

end

end A062418.P15436835945877969257

namespace A062418

/-- `A000196(A046691(A072831(n)))` -/
def P15436835945877969257.Spec : Prop :=
  ∀ n, P15436835945877969257.a n = A062418 (n + 1)

end A062418

/-! ## A062418.P10596128994893156319

`A000196(A027379(A072831(n))-1)`
-/

namespace A062418.P10596128994893156319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A027379 (A072831 n).toNat - 1).toNat

end

end A062418.P10596128994893156319

namespace A062418

/-- `A000196(A027379(A072831(n))-1)` -/
def P10596128994893156319.Spec : Prop :=
  ∀ n, P10596128994893156319.a n = A062418 (n + 1)

end A062418

/-!
# A062419: Integer part of log(n)^log(n).

The programs for A062419, the canonical program `A062419.P7669946648936108240` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062419 has offset 1).

The definition of A062419 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062419.P7669946648936108240

`floor(log(n+1)^log(n+1))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062419

/-- `floor(log(n+1)^log(n+1))` -/
def P7669946648936108240.Spec : Prop :=
  ∀ n, P7669946648936108240.a n = A062419 (n + 1)

theorem P7669946648936108240.correct : P7669946648936108240.Spec := by
  intro n
  simp only [A062419, Nat.add_sub_cancel]

end A062419

/-! ## A062419.P6736394046924900958

`A061052(abs(1-n)+2)`
-/

namespace A062419.P6736394046924900958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061052 (|1 - (n : ℤ)| + 2).toNat

end

end A062419.P6736394046924900958

namespace A062419

/-- `A061052(abs(1-n)+2)` -/
def P6736394046924900958.Spec : Prop :=
  ∀ n, P6736394046924900958.a n = A062419 (n + 1)

end A062419

/-! ## A062419.P3082019644729574091

`ceil(log(n+1)^log(n+1))-A057427(n)`
-/

namespace A062419.P3082019644729574091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (n + 1 : ℝ) ^ (Real.log (n + 1 : ℝ))⌉ - A057427 n

end

end A062419.P3082019644729574091

namespace A062419

/-- `ceil(log(n+1)^log(n+1))-A057427(n)` -/
def P3082019644729574091.Spec : Prop :=
  ∀ n, P3082019644729574091.a n = A062419 (n + 1)

end A062419

/-! ## A062419.P10913188175977513865

`A103298(A001935(n)-Δ[A002620(n)])`
-/

namespace A062419.P10913188175977513865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A001935 n - (f1 (n + 1) - f1 n)).toNat

end

end A062419.P10913188175977513865

namespace A062419

/-- `A103298(A001935(n)-Δ[A002620(n)])` -/
def P10913188175977513865.Spec : Prop :=
  ∀ n, P10913188175977513865.a n = A062419 (n + 1)

end A062419

/-! ## A062419.P4886030342361157445

`A348588(n)+A035263(A123203(n+1))`
-/

namespace A062419.P4886030342361157445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348588 n + A035263 (A123203 (n + 1)).toNat

end

end A062419.P4886030342361157445

namespace A062419

/-- `A348588(n)+A035263(A123203(n+1))` -/
def P4886030342361157445.Spec : Prop :=
  ∀ n, P4886030342361157445.a n = A062419 (n + 1)

end A062419

/-!
# A062420: Nearest integer to log(n)^log(n).

The programs for A062420, the canonical program `A062420.P4508336958846281857` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062420 has offset 1).

The definition of A062420 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062420.P4508336958846281857

`round(log(n+1)^log(n+1))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062420

/-- `round(log(n+1)^log(n+1))` -/
def P4508336958846281857.Spec : Prop :=
  ∀ n, P4508336958846281857.a n = A062420 (n + 1)

theorem P4508336958846281857.correct : P4508336958846281857.Spec := by
  intro n
  simp only [A062420, Nat.add_sub_cancel]

end A062420

/-! ## A062420.P17504338734383472800

`A204551(A083707(n)+A028364(2*n))`
-/

namespace A062420.P17504338734383472800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204551 (A083707 n + A028364 (2 * n)).toNat

end

end A062420.P17504338734383472800

namespace A062420

/-- `A204551(A083707(n)+A028364(2*n))` -/
def P17504338734383472800.Spec : Prop :=
  ∀ n, P17504338734383472800.a n = A062420 (n + 1)

end A062420

/-! ## A062420.P18266761848126158562

`A067085(A000700(3*(n+1)))%A359908(3*n+4)`
-/

namespace A062420.P18266761848126158562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067085 (A000700 (3 * (n + 1))).toNat) (A359908 (3 * n + 4))

end

end A062420.P18266761848126158562

namespace A062420

/-- `A067085(A000700(3*(n+1)))%A359908(3*n+4)` -/
def P18266761848126158562.Spec : Prop :=
  ∀ n, P18266761848126158562.a n = A062420 (n + 1)

end A062420

/-!
# A062421: Integer part of log(n!)^log(n).

The programs for A062421, the canonical program `A062421.P12425009650488332772` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062421 has offset 1).

The definition of A062421 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062421.P12425009650488332772

`floor(log((n+1)!)^log(n+1))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062421

/-- `floor(log((n+1)!)^log(n+1))` -/
def P12425009650488332772.Spec : Prop :=
  ∀ n, P12425009650488332772.a n = A062421 (n + 1)

theorem P12425009650488332772.correct : P12425009650488332772.Spec := by
  intro n
  simp only [A062421, Nat.add_sub_cancel]

end A062421

/-! ## A062421.P2308125512251296798

`floor(∑[log(n+1)]^log(n+1))`
-/

namespace A062421.P2308125512251296798
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) ^ (Real.log (n + 1 : ℝ))⌋

end

end A062421.P2308125512251296798

namespace A062421

/-- `floor(∑[log(n+1)]^log(n+1))` -/
def P2308125512251296798.Spec : Prop :=
  ∀ n, P2308125512251296798.a n = A062421 (n + 1)

end A062421

/-! ## A062421.P10543957246751235800

`A104463(A293335(n))-n`
-/

namespace A062421.P10543957246751235800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104463 (A293335 n).toNat - (n : ℤ)

end

end A062421.P10543957246751235800

namespace A062421

/-- `A104463(A293335(n))-n` -/
def P10543957246751235800.Spec : Prop :=
  ∀ n, P10543957246751235800.a n = A062421 (n + 1)

end A062421

/-! ## A062421.P17776595278928829142

`∑[A000196(A118265(n))]-n`
-/

namespace A062421.P17776595278928829142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A118265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A062421.P17776595278928829142

namespace A062421

/-- `∑[A000196(A118265(n))]-n` -/
def P17776595278928829142.Spec : Prop :=
  ∀ n, P17776595278928829142.a n = A062421 (n + 1)

end A062421

/-!
# A062422: Nearest integer to log(n!)^log(n).

The programs for A062422, the canonical program `A062422.P1302796884198818936` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062422 has offset 1).

The definition of A062422 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062422.P1302796884198818936

`round(log((n+1)!)^log(n+1))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062422

/-- `round(log((n+1)!)^log(n+1))` -/
def P1302796884198818936.Spec : Prop :=
  ∀ n, P1302796884198818936.a n = A062422 (n + 1)

theorem P1302796884198818936.correct : P1302796884198818936.Spec := by
  intro n
  simp only [A062422, Nat.add_sub_cancel]

end A062422

/-! ## A062422.P7459910197170729983

`round(∑[log(n+1)]^log(n+1))`
-/

namespace A062422.P7459910197170729983
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) ^ (Real.log (n + 1 : ℝ)))

end

end A062422.P7459910197170729983

namespace A062422

/-- `round(∑[log(n+1)]^log(n+1))` -/
def P7459910197170729983.Spec : Prop :=
  ∀ n, P7459910197170729983.a n = A062422 (n + 1)

end A062422

/-! ## A062422.P12379953043553075707

`A266669(Δ[A001788(n)])+A062421(n+1)`
-/

namespace A062422.P12379953043553075707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266669 (f1 (n + 1) - f1 n).toNat + A062421 (n + 1)

end

end A062422.P12379953043553075707

namespace A062422

/-- `A266669(Δ[A001788(n)])+A062421(n+1)` -/
def P12379953043553075707.Spec : Prop :=
  ∀ n, P12379953043553075707.a n = A062422 (n + 1)

end A062422

/-! ## A062422.P4593244881114353245

`A003056(A029081(n²)²)`
-/

namespace A062422.P4593244881114353245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A029081 (n ^ 2) ^ 2).toNat

end

end A062422.P4593244881114353245

namespace A062422

/-- `A003056(A029081(n²)²)` -/
def P4593244881114353245.Spec : Prop :=
  ∀ n, P4593244881114353245.a n = A062422 (n + 1)

end A062422

/-!
# A062423: Integer part of log(n)^(sqrt(n)*log(n)).

The programs for A062423, there is no canonical definition to state claims against.
-/

/-! ## A062423.P9899476012835408579

`A008618(A258341(n)+A052212(n+1))`
-/

namespace A062423.P9899476012835408579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A258341 n + A052212 (n + 1)).toNat

end

end A062423.P9899476012835408579

/-! ## A062423.P16635022690375747225

`A001462(A216837(n))-A000045(n)`
-/

namespace A062423.P16635022690375747225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A216837 n).toNat - A000045 n

end

end A062423.P16635022690375747225

/-!
# A062424: Nearest integer to log(n)^(sqrt(n)*log(n)).

The programs for A062424, there is no canonical definition to state claims against.
-/

/-! ## A062424.P2204128149198284339

`A062423(n+1)+A011751(A006054(n+4))`
-/

namespace A062424.P2204128149198284339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062423 (n + 1) + A011751 (A006054 (n + 4)).toNat

end

end A062424.P2204128149198284339

/-! ## A062424.P16849809265629755357

`A023193(xor(A002426(n), A004526(n)))`
-/

namespace A062424.P16849809265629755357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (Int.xor (A002426 n) (A004526 n)).toNat

end

end A062424.P16849809265629755357

/-! ## A062424.P3214536496130415762

`A026819(A096647(n)+A034742(n+1))`
-/

namespace A062424.P3214536496130415762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A096647 n + A034742 (n + 1)).toNat

end

end A062424.P3214536496130415762

/-! ## A062424.P3214563323016974011

`A198683(n+1)-A001222(A003504(n))`
-/

namespace A062424.P3214563323016974011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198683 (n + 1) - A001222 (A003504 n).toNat

end

end A062424.P3214563323016974011

/-!
# A062425: Integer part of log(n!)^log(1 + log(n)).

The programs for A062425, the canonical program `A062425.P201992795304888948` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062425 has offset 1).

The definition of A062425 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062425.P201992795304888948

`floor(log((n+1)!)^log(1+log(n+1)))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062425

/-- `floor(log((n+1)!)^log(1+log(n+1)))` -/
def P201992795304888948.Spec : Prop :=
  ∀ n, P201992795304888948.a n = A062425 (n + 1)

theorem P201992795304888948.correct : P201992795304888948.Spec := by
  intro n
  simp only [A062425, Nat.add_sub_cancel]

end A062425

/-! ## A062425.P9967472470749621295

`A239873(n)+A048766(A192423(n))`
-/

namespace A062425.P9967472470749621295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239873 n + A048766 (A192423 n).toNat

end

end A062425.P9967472470749621295

namespace A062425

/-- `A239873(n)+A048766(A192423(n))` -/
def P9967472470749621295.Spec : Prop :=
  ∀ n, P9967472470749621295.a n = A062425 (n + 1)

end A062425

/-! ## A062425.P14824807556575743805

`A090631(n)-comp[A000081(A273612(n))]`
-/

namespace A062425.P14824807556575743805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A273612 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090631 n - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A062425.P14824807556575743805

namespace A062425

/-- `A090631(n)-comp[A000081(A273612(n))]` -/
def P14824807556575743805.Spec : Prop :=
  ∀ n, P14824807556575743805.a n = A062425 (n + 1)

end A062425

/-!
# A062426: Nearest integer to log(n!)^log(1 + log(n)).

The programs for A062426, the canonical program `A062426.P17957107997655691902` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062426 has offset 1).

The definition of A062426 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062426.P17957107997655691902

`round(log((n+1)!)^log(1+log(n+1)))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062426

/-- `round(log((n+1)!)^log(1+log(n+1)))` -/
def P17957107997655691902.Spec : Prop :=
  ∀ n, P17957107997655691902.a n = A062426 (n + 1)

theorem P17957107997655691902.correct : P17957107997655691902.Spec := by
  intro n
  simp only [A062426, Nat.add_sub_cancel]

end A062426

/-! ## A062426.P16589383772916003481

`A000196(A008766(∑[A020915(n)]))`
-/

namespace A062426.P16589383772916003481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A008766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A062426.P16589383772916003481

namespace A062426

/-- `A000196(A008766(∑[A020915(n)]))` -/
def P16589383772916003481.Spec : Prop :=
  ∀ n, P16589383772916003481.a n = A062426 (n + 1)

end A062426

/-! ## A062426.P6169677256174863030

`ceil(A296195(n+1)/A000085(n))`
-/

namespace A062426.P6169677256174863030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A296195 (n + 1) : ℚ) / (A000085 n : ℚ)⌉

end

end A062426.P6169677256174863030

namespace A062426

/-- `ceil(A296195(n+1)/A000085(n))` -/
def P6169677256174863030.Spec : Prop :=
  ∀ n, P6169677256174863030.a n = A062426 (n + 1)

end A062426

/-! ## A062426.P14822499282639721837

`round(A000027(A126939(n))/A244519(n))`
-/

namespace A062426.P14822499282639721837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000027 (A126939 n).toNat : ℚ) / (A244519 n : ℚ))

end

end A062426.P14822499282639721837

namespace A062426

/-- `round(A000027(A126939(n))/A244519(n))` -/
def P14822499282639721837.Spec : Prop :=
  ∀ n, P14822499282639721837.a n = A062426 (n + 1)

end A062426

/-! ## A062426.P4782669928264895557

`A092982(A275580(n))`
-/

namespace A062426.P4782669928264895557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092982 (A275580 n).toNat

end

end A062426.P4782669928264895557

namespace A062426

/-- `A092982(A275580(n))` -/
def P4782669928264895557.Spec : Prop :=
  ∀ n, P4782669928264895557.a n = A062426 (n + 1)

end A062426

/-!
# A062427: Integer part of log(n^n)^(1 - 1/n).

The programs for A062427, the canonical program `A062427.P3757279840980029977` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062427 has offset 1).

The definition of A062427 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062427.P3757279840980029977

`floor(((n+1)*log(n+1))^(n/(n+1)))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062427

/-- `floor(((n+1)*log(n+1))^(n/(n+1)))` -/
def P3757279840980029977.Spec : Prop :=
  ∀ n, P3757279840980029977.a n = A062427 (n + 1)

theorem P3757279840980029977.correct : P3757279840980029977.Spec := by
  intro n
  simp only [A062427, Nat.add_sub_cancel]

end A062427

/-! ## A062427.P6648819596814657456

`round(sqrt(A008620(n^3+∑[n]+1)))`
-/

namespace A062427.P6648819596814657456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A008620 (n ^ 3 + (∑ j ∈ Finset.range (n + 1), f1 j + 1)) : ℝ))

end

end A062427.P6648819596814657456

namespace A062427

/-- `round(sqrt(A008620(n^3+∑[n]+1)))` -/
def P6648819596814657456.Spec : Prop :=
  ∀ n, P6648819596814657456.a n = A062427 (n + 1)

end A062427

/-! ## A062427.P15364763855516348579

`A083277(A065033(n^3-n))`
-/

namespace A062427.P15364763855516348579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083277 (A065033 (n ^ 3 - n)).toNat

end

end A062427.P15364763855516348579

namespace A062427

/-- `A083277(A065033(n^3-n))` -/
def P15364763855516348579.Spec : Prop :=
  ∀ n, P15364763855516348579.a n = A062427 (n + 1)

end A062427

/-! ## A062427.P1594162794551764107

`A000194(A008620(∑[∑[6*n-5]+6]))`
-/

namespace A062427.P1594162794551764107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A008620 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A062427.P1594162794551764107

namespace A062427

/-- `A000194(A008620(∑[∑[6*n-5]+6]))` -/
def P1594162794551764107.Spec : Prop :=
  ∀ n, P1594162794551764107.a n = A062427 (n + 1)

end A062427

/-! ## A062427.P5800362026298678148

`A137734(A002264(∑[A056105(n)]))`
-/

namespace A062427.P5800362026298678148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A062427.P5800362026298678148

namespace A062427

/-- `A137734(A002264(∑[A056105(n)]))` -/
def P5800362026298678148.Spec : Prop :=
  ∀ n, P5800362026298678148.a n = A062427 (n + 1)

end A062427

/-!
# A062428: Nearest integer to log(n^n)^(1 - 1/n).

The programs for A062428, the canonical program `A062428.P17806292035982943949` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062428 has offset 1).

The definition of A062428 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062428.P17806292035982943949

`round(log((n+1)^(n+1))^(1-1/(n+1)))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062428

/-- `round(log((n+1)^(n+1))^(1-1/(n+1)))` -/
def P17806292035982943949.Spec : Prop :=
  ∀ n, P17806292035982943949.a n = A062428 (n + 1)

theorem P17806292035982943949.correct : P17806292035982943949.Spec := by
  intro n
  simp only [A062428, Nat.add_sub_cancel]

end A062428

/-! ## A062428.P12758971289130798329

`A340372(A283378(n)+1)+A060903(n)`
-/

namespace A062428.P12758971289130798329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340372 (A283378 n + 1).toNat + A060903 n

end

end A062428.P12758971289130798329

namespace A062428

/-- `A340372(A283378(n)+1)+A060903(n)` -/
def P12758971289130798329.Spec : Prop :=
  ∀ n, P12758971289130798329.a n = A062428 (n + 1)

end A062428

/-! ## A062428.P2674030152607601466

`floor(sqrt(A357630(n+2)+A219902(n)))`
-/

namespace A062428.P2674030152607601466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A357630 (n + 2) + A219902 n)

end

end A062428.P2674030152607601466

namespace A062428

/-- `floor(sqrt(A357630(n+2)+A219902(n)))` -/
def P2674030152607601466.Spec : Prop :=
  ∀ n, P2674030152607601466.a n = A062428 (n + 1)

end A062428

/-! ## A062428.P16803682665247366414

`A137735(xor(A000120(n), A219902(n)))`
-/

namespace A062428.P16803682665247366414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (Int.xor (A000120 n) (A219902 n)).toNat

end

end A062428.P16803682665247366414

namespace A062428

/-- `A137735(xor(A000120(n), A219902(n)))` -/
def P16803682665247366414.Spec : Prop :=
  ∀ n, P16803682665247366414.a n = A062428 (n + 1)

end A062428

/-! ## A062428.P17324091526547392145

`A137735(xor(A000194(n), A219902(n)))`
-/

namespace A062428.P17324091526547392145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (Int.xor (A000194 n) (A219902 n)).toNat

end

end A062428.P17324091526547392145

namespace A062428

/-- `A137735(xor(A000194(n), A219902(n)))` -/
def P17324091526547392145.Spec : Prop :=
  ∀ n, P17324091526547392145.a n = A062428 (n + 1)

end A062428

/-!
# A062429: Integer part of log(n^n)^((1 - 1/n)^(1/n)).

The programs for A062429, the canonical program `A062429.P15902052391805390459` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062429 has offset 1).

The definition of A062429 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062429.P15902052391805390459

`floor(log((n+1)^(n+1))^(1-1/(n+1))^(1/(n+1)))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062429

/-- `floor(log((n+1)^(n+1))^(1-1/(n+1))^(1/(n+1)))` -/
def P15902052391805390459.Spec : Prop :=
  ∀ n, P15902052391805390459.a n = A062429 (n + 1)

theorem P15902052391805390459.correct : P15902052391805390459.Spec := by
  intro n
  simp only [A062429, Nat.add_sub_cancel]

end A062429

/-! ## A062429.P2848174325304103919

`A056556(∑[(n+3)*(1-n)²])`
-/

namespace A062429.P2848174325304103919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A062429.P2848174325304103919

namespace A062429

/-- `A056556(∑[(n+3)*(1-n)²])` -/
def P2848174325304103919.Spec : Prop :=
  ∀ n, P2848174325304103919.a n = A062429 (n + 1)

end A062429

/-!
# A062430: Nearest integer to log(n^n)^((1 - 1/n)^(1/n)).

The programs for A062430, the canonical program `A062430.P16764742765132405167` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062430 has offset 1).

The definition of A062430 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062430.P16764742765132405167

`round(log((n+1)^(n+1))^(1-1/(n+1))^(1/(n+1)))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062430

/-- `round(log((n+1)^(n+1))^(1-1/(n+1))^(1/(n+1)))` -/
def P16764742765132405167.Spec : Prop :=
  ∀ n, P16764742765132405167.a n = A062430 (n + 1)

theorem P16764742765132405167.correct : P16764742765132405167.Spec := by
  intro n
  simp only [A062430, Nat.add_sub_cancel]

end A062430

/-! ## A062430.P7039796879745917487

`A358992(2*n)%A217079(A000041(n))`
-/

namespace A062430.P7039796879745917487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358992 (2 * n)) (A217079 (A000041 n).toNat)

end

end A062430.P7039796879745917487

namespace A062430

/-- `A358992(2*n)%A217079(A000041(n))` -/
def P7039796879745917487.Spec : Prop :=
  ∀ n, P7039796879745917487.a n = A062430 (n + 1)

end A062430

/-! ## A062430.P17872775425963615120

`A358992(2*n)+A000007(A358993(3*n+2))`
-/

namespace A062430.P17872775425963615120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358992 (2 * n) + A000007 (A358993 (3 * n + 2)).toNat

end

end A062430.P17872775425963615120

namespace A062430

/-- `A358992(2*n)+A000007(A358993(3*n+2))` -/
def P17872775425963615120.Spec : Prop :=
  ∀ n, P17872775425963615120.a n = A062430 (n + 1)

end A062430

/-! ## A062430.P10989331045534227631

`A358992(A243836(3*n+2)+n+n)`
-/

namespace A062430.P10989331045534227631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358992 (A243836 (3 * n + 2) + (n : ℤ) + (n : ℤ)).toNat

end

end A062430.P10989331045534227631

namespace A062430

/-- `A358992(A243836(3*n+2)+n+n)` -/
def P10989331045534227631.Spec : Prop :=
  ∀ n, P10989331045534227631.a n = A062430 (n + 1)

end A062430

/-!
# A062431: Integer part of log(n^n)^log(n).

The programs for A062431, the canonical program `A062431.P796710350566817587` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062431 has offset 1).

The definition of A062431 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062431.P796710350566817587

`floor(log((n+1)^(n+1))^log(n+1))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062431

/-- `floor(log((n+1)^(n+1))^log(n+1))` -/
def P796710350566817587.Spec : Prop :=
  ∀ n, P796710350566817587.a n = A062431 (n + 1)

theorem P796710350566817587.correct : P796710350566817587.Spec := by
  intro n
  simp only [A062431, Nat.add_sub_cancel]

end A062431

/-! ## A062431.P8261208532582509601

`A062432(n+1)-A064990(A000110(n))`
-/

namespace A062431.P8261208532582509601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062432 (n + 1) - A064990 (A000110 n).toNat

end

end A062431.P8261208532582509601

namespace A062431

/-- `A062432(n+1)-A064990(A000110(n))` -/
def P8261208532582509601.Spec : Prop :=
  ∀ n, P8261208532582509601.a n = A062431 (n + 1)

end A062431

/-! ## A062431.P2528046729390767436

`A062432(n+1)-A304438(A087208(n))`
-/

namespace A062431.P2528046729390767436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062432 (n + 1) - A304438 (A087208 n).toNat

end

end A062431.P2528046729390767436

namespace A062431

/-- `A062432(n+1)-A304438(A087208(n))` -/
def P2528046729390767436.Spec : Prop :=
  ∀ n, P2528046729390767436.a n = A062431 (n + 1)

end A062431

/-! ## A062431.P14008741084618354457

`A316722(eq[A098087(n), A193472(n)])`
-/

namespace A062431.P14008741084618354457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316722 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A062431.P14008741084618354457

namespace A062431

/-- `A316722(eq[A098087(n), A193472(n)])` -/
def P14008741084618354457.Spec : Prop :=
  ∀ n, P14008741084618354457.a n = A062431 (n + 1)

end A062431

/-!
# A062432: Nearest integer to log(n^n)^log(n).

The programs for A062432, the canonical program `A062432.P16473889413922750710` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062432 has offset 1).

The definition of A062432 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062432.P16473889413922750710

`round(log((n+1)^(n+1))^log(n+1))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062432

/-- `round(log((n+1)^(n+1))^log(n+1))` -/
def P16473889413922750710.Spec : Prop :=
  ∀ n, P16473889413922750710.a n = A062432 (n + 1)

theorem P16473889413922750710.correct : P16473889413922750710.Spec := by
  intro n
  simp only [A062432, Nat.add_sub_cancel]

end A062432

/-! ## A062432.P2042275553250782285

`A064990(A000110(n))+A062431(n+1)`
-/

namespace A062432.P2042275553250782285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064990 (A000110 n).toNat + A062431 (n + 1)

end

end A062432.P2042275553250782285

namespace A062432

/-- `A064990(A000110(n))+A062431(n+1)` -/
def P2042275553250782285.Spec : Prop :=
  ∀ n, P2042275553250782285.a n = A062432 (n + 1)

end A062432

/-! ## A062432.P5936000153555412255

`A304438(A087208(n))+A062431(n+1)`
-/

namespace A062432.P5936000153555412255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304438 (A087208 n).toNat + A062431 (n + 1)

end

end A062432.P5936000153555412255

namespace A062432

/-- `A304438(A087208(n))+A062431(n+1)` -/
def P5936000153555412255.Spec : Prop :=
  ∀ n, P5936000153555412255.a n = A062432 (n + 1)

end A062432

/-! ## A062432.P6852526861679475216

`A189028(A307413(n))+A062431(n+1)`
-/

namespace A062432.P6852526861679475216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189028 (A307413 n).toNat + A062431 (n + 1)

end

end A062432.P6852526861679475216

namespace A062432

/-- `A189028(A307413(n))+A062431(n+1)` -/
def P6852526861679475216.Spec : Prop :=
  ∀ n, P6852526861679475216.a n = A062432 (n + 1)

end A062432

/-!
# A062433: Integer part of log(n^n)^log(1 + log(n)).

The programs for A062433, the canonical program `A062433.P28291840628319436` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062433 has offset 1).

The definition of A062433 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062433.P28291840628319436

`floor(log((n+1)^(n+1))^log(1+log(n+1)))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062433

/-- `floor(log((n+1)^(n+1))^log(1+log(n+1)))` -/
def P28291840628319436.Spec : Prop :=
  ∀ n, P28291840628319436.a n = A062433 (n + 1)

theorem P28291840628319436.correct : P28291840628319436.Spec := by
  intro n
  simp only [A062433, Nat.add_sub_cancel]

end A062433

/-! ## A062433.P6029894969219896075

`A177849(or(A192025(n+1), A192031(n+3)))`
-/

namespace A062433.P6029894969219896075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (Int.lor (A192025 (n + 1)) (A192031 (n + 3))).toNat

end

end A062433.P6029894969219896075

namespace A062433

/-- `A177849(or(A192025(n+1), A192031(n+3)))` -/
def P6029894969219896075.Spec : Prop :=
  ∀ n, P6029894969219896075.a n = A062433 (n + 1)

end A062433

/-! ## A062433.P11860006216727419377

`A177849(A192025(n+1)+A192031(n+3)+2)`
-/

namespace A062433.P11860006216727419377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (A192025 (n + 1) + (A192031 (n + 3) + 2)).toNat

end

end A062433.P11860006216727419377

namespace A062433

/-- `A177849(A192025(n+1)+A192031(n+3)+2)` -/
def P11860006216727419377.Spec : Prop :=
  ∀ n, P11860006216727419377.a n = A062433 (n + 1)

end A062433

/-! ## A062433.P14744651913507326725

`A110656(A005996(n+1))%A089748(n+1)`
-/

namespace A062433.P14744651913507326725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110656 (A005996 (n + 1)).toNat) (A089748 (n + 1))

end

end A062433.P14744651913507326725

namespace A062433

/-- `A110656(A005996(n+1))%A089748(n+1)` -/
def P14744651913507326725.Spec : Prop :=
  ∀ n, P14744651913507326725.a n = A062433 (n + 1)

end A062433

/-! ## A062433.P15073353720211753120

`A089868(A275580(n+1)-(n+1))`
-/

namespace A062433.P15073353720211753120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (A275580 (n + 1) - (n + 1 : ℤ)).toNat

end

end A062433.P15073353720211753120

namespace A062433

/-- `A089868(A275580(n+1)-(n+1))` -/
def P15073353720211753120.Spec : Prop :=
  ∀ n, P15073353720211753120.a n = A062433 (n + 1)

end A062433

/-!
# A062434: Nearest integer to log(n^n)^log(1 + log(n)).

The programs for A062434, the canonical program `A062434.P10697667191766738657` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062434 has offset 1).

The definition of A062434 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062434.P10697667191766738657

`round(log((n+1)^(n+1))^log(1+log(n+1)))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062434

/-- `round(log((n+1)^(n+1))^log(1+log(n+1)))` -/
def P10697667191766738657.Spec : Prop :=
  ∀ n, P10697667191766738657.a n = A062434 (n + 1)

theorem P10697667191766738657.correct : P10697667191766738657.Spec := by
  intro n
  simp only [A062434, Nat.add_sub_cancel]

end A062434

/-! ## A062434.P12698431835700421426

`A259361(∑[A051037(n+1)]²)+1-2*n`
-/

namespace A062434.P12698431835700421426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat + 1 - (2 * n : ℤ)

end

end A062434.P12698431835700421426

namespace A062434

/-- `A259361(∑[A051037(n+1)]²)+1-2*n` -/
def P12698431835700421426.Spec : Prop :=
  ∀ n, P12698431835700421426.a n = A062434 (n + 1)

end A062434

/-! ## A062434.P8466725499073226573

`∑[A112310(A066454(n+1))]+1`
-/

namespace A062434.P8466725499073226573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112310 (A066454 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A062434.P8466725499073226573

namespace A062434

/-- `∑[A112310(A066454(n+1))]+1` -/
def P8466725499073226573.Spec : Prop :=
  ∀ n, P8466725499073226573.a n = A062434 (n + 1)

end A062434

/-! ## A062434.P11688832345544477220

`A288425(n+1)+1-n`
-/

namespace A062434.P11688832345544477220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288425 (n + 1) + (1 - (n : ℤ))

end

end A062434.P11688832345544477220

namespace A062434

/-- `A288425(n+1)+1-n` -/
def P11688832345544477220.Spec : Prop :=
  ∀ n, P11688832345544477220.a n = A062434 (n + 1)

end A062434

/-! ## A062434.P3371491015212660689

`n²-A240443(n+1)+n+2`
-/

namespace A062434.P3371491015212660689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A240443 (n + 1) + (n + 2 : ℤ)

end

end A062434.P3371491015212660689

namespace A062434

/-- `n²-A240443(n+1)+n+2` -/
def P3371491015212660689.Spec : Prop :=
  ∀ n, P3371491015212660689.a n = A062434 (n + 1)

end A062434

/-!
# A062435: Integer part of log(n!)^log(log(1 + n)).

The programs for A062435, there is no canonical definition to state claims against.
-/

/-! ## A062435.P15261013749822334917

`A034887(A029144(3*n+2))%A124542(n)`
-/

namespace A062435.P15261013749822334917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034887 (A029144 (3 * n + 2)).toNat) (A124542 n)

end

end A062435.P15261013749822334917

/-! ## A062435.P15085688226593940453

`A003056(Δ[A109613(A039946(n))])`
-/

namespace A062435.P15085688226593940453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A039946 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (f1 (n + 1) - f1 n).toNat

end

end A062435.P15085688226593940453

/-! ## A062435.P12418147305040419109

`A242216(n)+A057428(A218542(n))`
-/

namespace A062435.P12418147305040419109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242216 n + A057428 (A218542 n).toNat

end

end A062435.P12418147305040419109

/-! ## A062435.P15465733417142289322

`A242216(n)+A057428(A307057(n))`
-/

namespace A062435.P15465733417142289322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242216 n + A057428 (A307057 n).toNat

end

end A062435.P15465733417142289322

/-! ## A062435.P14165138594910650908

`A242216(n)-A001222(A242195(n+2))`
-/

namespace A062435.P14165138594910650908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242216 n - A001222 (A242195 (n + 2)).toNat

end

end A062435.P14165138594910650908

/-!
# A062436: Nearest integer to log(n!)^log(log(1 + n)).

The programs for A062436, there is no canonical definition to state claims against.
-/

/-! ## A062436.P3275381610526452130

`A277903(A227309(n+1)+1)`
-/

namespace A062436.P3275381610526452130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277903 (A227309 (n + 1) + 1).toNat

end

end A062436.P3275381610526452130

/-! ## A062436.P1284520618574885259

`A023604(A023615(n)-A008574(n))`
-/

namespace A062436.P1284520618574885259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023604 (A023615 n - A008574 n).toNat

end

end A062436.P1284520618574885259

/-! ## A062436.P11402318340532693989

`A204551(A325341(2*n+1)+A060099(n))`
-/

namespace A062436.P11402318340532693989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204551 (A325341 (2 * n + 1) + A060099 n).toNat

end

end A062436.P11402318340532693989

/-!
# A062437: Integer part of log(n^n)^log(log(1 + n)).

The programs for A062437, there is no canonical definition to state claims against.
-/

/-! ## A062437.P15880652313510425797

`A005206(A226763(∑[A000124(n)]))`
-/

namespace A062437.P15880652313510425797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A226763 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A062437.P15880652313510425797

/-! ## A062437.P13574336094543020587

`A029084(A187829(n+1)+comp[2*n+3])`
-/

namespace A062437.P13574336094543020587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029084 (A187829 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A062437.P13574336094543020587

/-! ## A062437.P12167732453115933396

`A177151(A022856(n+1)+n)`
-/

namespace A062437.P12167732453115933396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177151 (A022856 (n + 1) + (n : ℤ)).toNat

end

end A062437.P12167732453115933396

/-! ## A062437.P12833349005563236973

`∑[∑[A094217(A320574(n+1))]]+1`
-/

namespace A062437.P12833349005563236973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094217 (A320574 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A062437.P12833349005563236973

/-! ## A062437.P10902494921493680599

`A204553(A097125(n+1))`
-/

namespace A062437.P10902494921493680599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204553 (A097125 (n + 1)).toNat

end

end A062437.P10902494921493680599

/-!
# A062438: Nearest integer to log(n^n)^log(log(1 + n)).

The programs for A062438, there is no canonical definition to state claims against.
-/

/-! ## A062438.P7716653662295200460

`floor(A201140(n+1)^acot(7))`
-/

namespace A062438.P7716653662295200460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A201140 (n + 1) : ℝ) ^ (SequenceMachineLib.acot (7 : ℝ))⌋

end

end A062438.P7716653662295200460

/-! ## A062438.P7353917907675889585

`A204164(ceil(A032249(n)/4)-n)`
-/

namespace A062438.P7353917907675889585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (⌈(A032249 (n + 11) : ℚ) / 4⌉ - (n : ℤ)).toNat

end

end A062438.P7353917907675889585

/-! ## A062438.P9189748772772763698

`∑[A123108(A328003(A002088(n)))]`
-/

namespace A062438.P9189748772772763698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A328003 (A002088 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062438.P9189748772772763698

/-! ## A062438.P8698196155474571185

`A008620(A290821(n+2)+∑[n])`
-/

namespace A062438.P8698196155474571185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A290821 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A062438.P8698196155474571185

/-! ## A062438.P666035977601878763

`A277903(A052953(n))`
-/

namespace A062438.P666035977601878763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277903 (A052953 n).toNat

end

end A062438.P666035977601878763

/-!
# A062439: Primes at large indices: a(n) = prime(n!).

The programs for A062439, the canonical program `A062439.P4549804686274560624` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062439 has offset 0).

The definition of A062439 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062439.P4549804686274560624

`A000040(A000142(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062439

/-- `A000040(A000142(n))` -/
def P4549804686274560624.Spec : Prop :=
  ∀ n, P4549804686274560624.a n = A062439 n

theorem P4549804686274560624.correct : P4549804686274560624.Spec := by
  intro n
  simp only [A062439]

end A062439

/-! ## A062439.P6306983077060014785

`A325709(A162753(2*n+1))`
-/

namespace A062439.P6306983077060014785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325709 (A162753 (2 * n + 1)).toNat

end

end A062439.P6306983077060014785

namespace A062439

/-- `A325709(A162753(2*n+1))` -/
def P6306983077060014785.Spec : Prop :=
  ∀ n, P6306983077060014785.a n = A062439 n

end A062439

/-! ## A062439.P11844820891840306579

`A325709(A000040(round(sqrt(n²+1))))`
-/

namespace A062439.P11844820891840306579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325709 (A000040 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat).toNat

end

end A062439.P11844820891840306579

namespace A062439

/-- `A325709(A000040(round(sqrt(n²+1))))` -/
def P11844820891840306579.Spec : Prop :=
  ∀ n, P11844820891840306579.a n = A062439 n

end A062439

/-! ## A062439.P17741317838752462446

`A325709(A008578(n+1)+char[(8*n)²])`
-/

namespace A062439.P17741317838752462446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325709 (A008578 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A062439.P17741317838752462446

namespace A062439

/-- `A325709(A008578(n+1)+char[(8*n)²])` -/
def P17741317838752462446.Spec : Prop :=
  ∀ n, P17741317838752462446.a n = A062439 n

end A062439

/-! ## A062439.P10542612892708593558

`A325709(A076710(n)+A008578(n+1))`
-/

namespace A062439.P10542612892708593558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325709 (A076710 n + A008578 (n + 1)).toNat

end

end A062439.P10542612892708593558

namespace A062439

/-- `A325709(A076710(n)+A008578(n+1))` -/
def P10542612892708593558.Spec : Prop :=
  ∀ n, P10542612892708593558.a n = A062439 n

end A062439

/-!
# A062440: a(n) = Sum_{k=1..n} (prime(k) - 1)^n.

The programs for A062440, there is no canonical definition to state claims against.
-/

/-! ## A062440.P5769489481664702901

`A062412(n+1)-A031971(n+1)`
-/

namespace A062440.P5769489481664702901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062412 (n + 1) - A031971 (n + 1)

end

end A062440.P5769489481664702901

/-! ## A062440.P13876349545619224894

`A062412(n+1)-A215078(∑[n+2])`
-/

namespace A062440.P13876349545619224894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062412 (n + 1) - A215078 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A062440.P13876349545619224894

/-! ## A062440.P5023342448654402581

`A062412(n+1)-(A121706(n+1)+Δ[A001923(n)])`
-/

namespace A062440.P5023342448654402581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062412 (n + 1) - (A121706 (n + 1) + (f1 (n + 1) - f1 n))

end

end A062440.P5023342448654402581

/-! ## A062440.P3917535703334657245

`A062412(n+1)-(A121706(n+1)+A000312(n+1))`
-/

namespace A062440.P3917535703334657245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062412 (n + 1) - (A121706 (n + 1) + A000312 (n + 1))

end

end A062440.P3917535703334657245

/-! ## A062440.P3735565217311671005

`A062412(n+1)-(A000169(n+2)-A191686(n+2))`
-/

namespace A062440.P3735565217311671005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062412 (n + 1) - (A000169 (n + 2) - A191686 (n + 2))

end

end A062440.P3735565217311671005

/-!
# A062441: Integer part of log(n)^(1 + log(n)).

The programs for A062441, there is no canonical definition to state claims against.
-/

/-! ## A062441.P14000567865156186170

`∑[∑[A083893(A018164(n))]]`
-/

namespace A062441.P14000567865156186170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083893 (A018164 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062441.P14000567865156186170

/-! ## A062441.P10289247864605158555

`floor(∑[A127321(A094533(n))/3])`
-/

namespace A062441.P10289247864605158555
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127321 (A094533 n).toNat : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A062441.P10289247864605158555

/-! ## A062441.P3552471452028904376

`∑[A287867(A212456(n+1)+A052409(2*n+5))]`
-/

namespace A062441.P3552471452028904376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287867 (A212456 (n + 1) + A052409 (2 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062441.P3552471452028904376

/-! ## A062441.P8967434190273430955

`∑[∑[A319581(A263771(n))]]`
-/

namespace A062441.P8967434190273430955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319581 (A263771 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062441.P8967434190273430955

/-! ## A062441.P17780233379489308467

`∑[A178487(∑[A002703(n+3)])]`
-/

namespace A062441.P17780233379489308467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002703 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062441.P17780233379489308467

/-!
# A062442: Nearest integer to log(n)^(1 + log(n)).

The programs for A062442, there is no canonical definition to state claims against.
-/

/-! ## A062442.P3925729007690059943

`A012265(A024531(n+2)-A012265(n))`
-/

namespace A062442.P3925729007690059943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 (A024531 (n + 2) - A012265 n).toNat

end

end A062442.P3925729007690059943

/-! ## A062442.P16971475318653919745

`A012265(∑[A028242(A003309(n+1))])`
-/

namespace A062442.P16971475318653919745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A003309 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A062442.P16971475318653919745

/-! ## A062442.P12862192148497636805

`A000196(∑[A317637(n)/2])%A077121(n)`
-/

namespace A062442.P12862192148497636805
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317637 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000196 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat) (A077121 n)

end

end A062442.P12862192148497636805

/-!
# A062443: Integer part of log(n!)^(1 + log(1 + log(n))).

The programs for A062443, there is no canonical definition to state claims against.
-/

/-! ## A062443.P13642067332975045212

`A059995(lcm(A038025(n+1), A211922(n)))`
-/

namespace A062443.P13642067332975045212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (Int.lcm (A038025 (n + 1)) (A211922 n))

end

end A062443.P13642067332975045212

/-! ## A062443.P7464758781011200613

`A059995(A038025(n+1)*A211922(n))/A038025(n+1)`
-/

namespace A062443.P7464758781011200613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059995 (A038025 (n + 1) * A211922 n).toNat : ℚ) / (A038025 (n + 1) : ℚ)

end

end A062443.P7464758781011200613

/-!
# A062444: Nearest integer to log(n!)^(1 + log(1 + log(n))).

The programs for A062444, there is no canonical definition to state claims against.
-/

/-! ## A062444.P6406228642878595666

`ceil(A334704(∑[n+1])/18)`
-/

namespace A062444.P6406228642878595666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334704 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 18⌉

end

end A062444.P6406228642878595666

/-!
# A062445: Integer part of log(n!)^(1 + log(1 + log(1 + n))).

The programs for A062445, the canonical program `A062445.P4466625132816390049` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062445 has offset 0).

The definition of A062445 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062445.P4466625132816390049

`floor(log(n!)^(1+log(1+log(1+n))))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062445

/-- `floor(log(n!)^(1+log(1+log(1+n))))` -/
def P4466625132816390049.Spec : Prop :=
  ∀ n, P4466625132816390049.a n = A062445 n

theorem P4466625132816390049.correct : P4466625132816390049.Spec := by
  intro n
  simp only [A062445]

end A062445

/-! ## A062445.P7710398436658468215

`A062446(n)-A059841(A338778(n))`
-/

namespace A062445.P7710398436658468215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062446 n - A059841 (A338778 n).toNat

end

end A062445.P7710398436658468215

namespace A062445

/-- `A062446(n)-A059841(A338778(n))` -/
def P7710398436658468215.Spec : Prop :=
  ∀ n, P7710398436658468215.a n = A062445 n

end A062445

/-!
# A062446: Nearest integer to log(n!)^(1 + log(1 + log(1 + n))).

The programs for A062446, the canonical program `A062446.P1179203381721997708` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062446 has offset 0).

The definition of A062446 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062446.P1179203381721997708

`round(log(n!)^(1+log(1+log(1+n))))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062446

/-- `round(log(n!)^(1+log(1+log(1+n))))` -/
def P1179203381721997708.Spec : Prop :=
  ∀ n, P1179203381721997708.a n = A062446 n

theorem P1179203381721997708.correct : P1179203381721997708.Spec := by
  intro n
  simp only [A062446]

end A062446

/-! ## A062446.P9156831603119176932

`A062445(n)+A059841(A338778(n))`
-/

namespace A062446.P9156831603119176932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062445 n + A059841 (A338778 n).toNat

end

end A062446.P9156831603119176932

namespace A062446

/-- `A062445(n)+A059841(A338778(n))` -/
def P9156831603119176932.Spec : Prop :=
  ∀ n, P9156831603119176932.a n = A062446 n

end A062446

/-! ## A062446.P8427165265710866237

`A002266(A062026(n)^A082516(n+1))`
-/

namespace A062446.P8427165265710866237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (SequenceMachineLib.roundAway ((A062026 n : ℚ) ^ (A082516 (n + 1) : ℤ))).toNat

end

end A062446.P8427165265710866237

namespace A062446

/-- `A002266(A062026(n)^A082516(n+1))` -/
def P8427165265710866237.Spec : Prop :=
  ∀ n, P8427165265710866237.a n = A062446 n

end A062446

/-! ## A062446.P8984900548293305972

`A057354(A101357(n)^A082516(n+1))`
-/

namespace A062446.P8984900548293305972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (SequenceMachineLib.roundAway ((A101357 n : ℚ) ^ (A082516 (n + 1) : ℤ))).toNat

end

end A062446.P8984900548293305972

namespace A062446

/-- `A057354(A101357(n)^A082516(n+1))` -/
def P8984900548293305972.Spec : Prop :=
  ∀ n, P8984900548293305972.a n = A062446 n

end A062446

/-! ## A062446.P12121097208675958614

`A002266(A062026(n))%A128352(n+1)`
-/

namespace A062446.P12121097208675958614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002266 (A062026 n).toNat) (A128352 (n + 1))

end

end A062446.P12121097208675958614

namespace A062446

/-- `A002266(A062026(n))%A128352(n+1)` -/
def P12121097208675958614.Spec : Prop :=
  ∀ n, P12121097208675958614.a n = A062446 n

end A062446

/-!
# A062447: a(n) = prime(q(n)), where q(n) = A002110(n).

The programs for A062447, there is no canonical definition to state claims against.
-/

/-! ## A062447.P5261838897295069790

`A000040(A002110(n))`
-/

namespace A062447.P5261838897295069790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002110 n).toNat

end

end A062447.P5261838897295069790

/-! ## A062447.P2110185085766874146

`A000040(∏[eq[n, ∏{d}[n, #]]])`
-/

namespace A062447.P2110185085766874146
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A062447.P2110185085766874146

/-!
# A062448: Prime numbers at large subscripts: a(n) = prime(n^n).

The programs for A062448, the canonical program `A062448.P17857974854903580756` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062448 has offset 0).

The definition of A062448 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062448.P17857974854903580756

`A000040(A000312(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062448

/-- `A000040(A000312(n))` -/
def P17857974854903580756.Spec : Prop :=
  ∀ n, P17857974854903580756.a n = A062448 n

theorem P17857974854903580756.correct : P17857974854903580756.Spec := by
  intro n
  simp only [A062448]

end A062448

/-! ## A062448.P10209759759351276553

`A347000((1-n)²+n²)`
-/

namespace A062448.P10209759759351276553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 ((1 - (n : ℤ)) ^ 2 + (n ^ 2 : ℤ)).toNat

end

end A062448.P10209759759351276553

namespace A062448

/-- `A347000((1-n)²+n²)` -/
def P10209759759351276553.Spec : Prop :=
  ∀ n, P10209759759351276553.a n = A062448 n

end A062448

/-! ## A062448.P2977128720407088826

`A141103(round(sqrt(n²+1)))+n^n`
-/

namespace A062448.P2977128720407088826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141103 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + (n ^ n : ℤ)

end

end A062448.P2977128720407088826

namespace A062448

/-- `A141103(round(sqrt(n²+1)))+n^n` -/
def P2977128720407088826.Spec : Prop :=
  ∀ n, P2977128720407088826.a n = A062448 n

end A062448

/-!
# A062449: Integer part of log(n^n)^(1 + log(1 + log(n))).

The programs for A062449, there is no canonical definition to state claims against.
-/

/-! ## A062449.P7323240110812273356

`∑[A325106(∑[∑[n]])]`
-/

namespace A062449.P7323240110812273356
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325106 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062449.P7323240110812273356

/-! ## A062449.P8023213232739909607

`A055086(A005044(A005044((2*n)²)))`
-/

namespace A062449.P8023213232739909607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A005044 (A005044 ((2 * n) ^ 2)).toNat).toNat

end

end A062449.P8023213232739909607

/-! ## A062449.P15034133983767618115

`A334267(A079976(n+1))-A046978(n)`
-/

namespace A062449.P15034133983767618115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334267 (A079976 (n + 1)).toNat - A046978 n

end

end A062449.P15034133983767618115

/-!
# A062450: Nearest integer to log(n^n)^(1 + log(1 + log(n))).

The programs for A062450, there is no canonical definition to state claims against.
-/

/-! ## A062450.P640043044884852782

`A175860(A014820(3*n+1))+A062449(n)`
-/

namespace A062450.P640043044884852782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175860 (A014820 (3 * n + 1)).toNat + A062449 n

end

end A062450.P640043044884852782

/-! ## A062450.P15087438050952713512

`ceil(log(A213793(∑[n])))`
-/

namespace A062450.P15087438050952713512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A213793 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)⌉

end

end A062450.P15087438050952713512

/-! ## A062450.P4602050690988746134

`round(A219903(2*n+3)/52)`
-/

namespace A062450.P4602050690988746134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A219903 (2 * n + 3) : ℚ) / 52)

end

end A062450.P4602050690988746134

/-!
# A062451: Integer part of log(n^n)^(1 + log(1 + log(1 + n))).

The programs for A062451, the canonical program `A062451.P17674894986698226484` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062451 has offset 0).

The definition of A062451 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062451.P17674894986698226484

`floor(log(n^n)^(1+log(1+log(1+n))))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062451

/-- `floor(log(n^n)^(1+log(1+log(1+n))))` -/
def P17674894986698226484.Spec : Prop :=
  ∀ n, P17674894986698226484.a n = A062451 n

theorem P17674894986698226484.correct : P17674894986698226484.Spec := by
  intro n
  simp only [A062451]

end A062451

/-! ## A062451.P16507038762645944363

`A062452(n)-A000035(A221076(n))`
-/

namespace A062451.P16507038762645944363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062452 n - A000035 (A221076 n).toNat

end

end A062451.P16507038762645944363

namespace A062451

/-- `A062452(n)-A000035(A221076(n))` -/
def P16507038762645944363.Spec : Prop :=
  ∀ n, P16507038762645944363.a n = A062451 n

end A062451

/-! ## A062451.P812407040818675219

`∑[∑[A181840(A181852(2*(n+1)))]]`
-/

namespace A062451.P812407040818675219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181840 (A181852 (2 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062451.P812407040818675219

namespace A062451

/-- `∑[∑[A181840(A181852(2*(n+1)))]]` -/
def P812407040818675219.Spec : Prop :=
  ∀ n, P812407040818675219.a n = A062451 n

end A062451

/-!
# A062452: Nearest integer to log(n^n)^(1 + log(1 + log(1 + n))).

The programs for A062452, the canonical program `A062452.P9133054961566580629` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062452 has offset 0).

The definition of A062452 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062452.P9133054961566580629

`round(log(n^n)^(1+log(1+log(1+n))))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062452

/-- `round(log(n^n)^(1+log(1+log(1+n))))` -/
def P9133054961566580629.Spec : Prop :=
  ∀ n, P9133054961566580629.a n = A062452 n

theorem P9133054961566580629.correct : P9133054961566580629.Spec := by
  intro n
  simp only [A062452]

end A062452

/-! ## A062452.P13120254235262815702

`A062451(n)+A000035(A221076(n))`
-/

namespace A062452.P13120254235262815702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062451 n + A000035 (A221076 n).toNat

end

end A062452.P13120254235262815702

namespace A062452

/-- `A062451(n)+A000035(A221076(n))` -/
def P13120254235262815702.Spec : Prop :=
  ∀ n, P13120254235262815702.a n = A062452 n

end A062452

/-! ## A062452.P1413362741585400254

`A002265(A139594(n)^A279041(n))`
-/

namespace A062452.P1413362741585400254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (SequenceMachineLib.roundAway ((A139594 n : ℚ) ^ (A279041 n : ℤ))).toNat

end

end A062452.P1413362741585400254

namespace A062452

/-- `A002265(A139594(n)^A279041(n))` -/
def P1413362741585400254.Spec : Prop :=
  ∀ n, P1413362741585400254.a n = A062452 n

end A062452

/-!
# A062453: Integer part of log(n!)^sqrt(n).

The programs for A062453, the canonical program `A062453.P14020781701743290547` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062453 has offset 0).

The definition of A062453 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062453.P14020781701743290547

`floor(log(n!)^sqrt(n))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062453

/-- `floor(log(n!)^sqrt(n))` -/
def P14020781701743290547.Spec : Prop :=
  ∀ n, P14020781701743290547.a n = A062453 n

theorem P14020781701743290547.correct : P14020781701743290547.Spec := by
  intro n
  simp only [A062453]

end A062453

/-! ## A062453.P9371680406762269976

`floor(log(A000142(n))^sqrt(n))`
-/

namespace A062453.P9371680406762269976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A000142 n : ℝ) ^ (Real.sqrt (n : ℝ))⌋

end

end A062453.P9371680406762269976

namespace A062453

/-- `floor(log(A000142(n))^sqrt(n))` -/
def P9371680406762269976.Spec : Prop :=
  ∀ n, P9371680406762269976.a n = A062453 n

end A062453

/-! ## A062453.P16169846158800786505

`A100196(A151481(n))-n`
-/

namespace A062453.P16169846158800786505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A151481 n).toNat - (n : ℤ)

end

end A062453.P16169846158800786505

namespace A062453

/-- `A100196(A151481(n))-n` -/
def P16169846158800786505.Spec : Prop :=
  ∀ n, P16169846158800786505.a n = A062453 n

end A062453

/-! ## A062453.P12838018936108207308

`A062454(n)-A000035(A074431(n+1))`
-/

namespace A062453.P12838018936108207308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062454 n - A000035 (A074431 (n + 1)).toNat

end

end A062453.P12838018936108207308

namespace A062453

/-- `A062454(n)-A000035(A074431(n+1))` -/
def P12838018936108207308.Spec : Prop :=
  ∀ n, P12838018936108207308.a n = A062453 n

end A062453

/-!
# A062454: Nearest integer to log(n!)^sqrt(n).

The programs for A062454, the canonical program `A062454.P6074641705074145899` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062454 has offset 0).

The definition of A062454 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062454.P6074641705074145899

`round(log(n!)^sqrt(n))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062454

/-- `round(log(n!)^sqrt(n))` -/
def P6074641705074145899.Spec : Prop :=
  ∀ n, P6074641705074145899.a n = A062454 n

theorem P6074641705074145899.correct : P6074641705074145899.Spec := by
  intro n
  simp only [A062454]

end A062454

/-! ## A062454.P8902151611483214045

`floor((2*log(n!)^sqrt(n)+1)/2)`
-/

namespace A062454.P8902151611483214045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * Real.log (Nat.factorial n : ℝ) ^ (Real.sqrt (n : ℝ)) + 1) / 2⌋

end

end A062454.P8902151611483214045

namespace A062454

/-- `floor((2*log(n!)^sqrt(n)+1)/2)` -/
def P8902151611483214045.Spec : Prop :=
  ∀ n, P8902151611483214045.a n = A062454 n

end A062454

/-! ## A062454.P16131150012522272573

`or(A062453(n), A352555(A087051(n)+1))`
-/

namespace A062454.P16131150012522272573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A062453 n) (A352555 (A087051 n + 1).toNat)

end

end A062454.P16131150012522272573

namespace A062454

/-- `or(A062453(n), A352555(A087051(n)+1))` -/
def P16131150012522272573.Spec : Prop :=
  ∀ n, P16131150012522272573.a n = A062454 n

end A062454

/-! ## A062454.P18192668790859784492

`A062453(n)+A021913(A047122(n*A021913(n)))`
-/

namespace A062454.P18192668790859784492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062453 n + A021913 (A047122 ((n : ℤ) * A021913 n).toNat).toNat

end

end A062454.P18192668790859784492

namespace A062454

/-- `A062453(n)+A021913(A047122(n*A021913(n)))` -/
def P18192668790859784492.Spec : Prop :=
  ∀ n, P18192668790859784492.a n = A062454 n

end A062454

/-! ## A062454.P1632742159707032273

`or(A021913(A047122(n)), A062453(n))`
-/

namespace A062454.P1632742159707032273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A021913 (A047122 n).toNat) (A062453 n)

end

end A062454.P1632742159707032273

namespace A062454

/-- `or(A021913(A047122(n)), A062453(n))` -/
def P1632742159707032273.Spec : Prop :=
  ∀ n, P1632742159707032273.a n = A062454 n

end A062454

/-!
# A062455: Integer part of log(n^n)^sqrt(n).

The programs for A062455, the canonical program `A062455.P3258992777774104518` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062455 has offset 0).

The definition of A062455 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062455.P3258992777774104518

`floor(log(n^n)^sqrt(n))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062455

/-- `floor(log(n^n)^sqrt(n))` -/
def P3258992777774104518.Spec : Prop :=
  ∀ n, P3258992777774104518.a n = A062455 n

theorem P3258992777774104518.correct : P3258992777774104518.Spec := by
  intro n
  simp only [A062455]

end A062455

/-! ## A062455.P12121611024139297499

`A062456(n)-A333382(n²+n)`
-/

namespace A062455.P12121611024139297499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062456 n - A333382 (n ^ 2 + n)

end

end A062455.P12121611024139297499

namespace A062455

/-- `A062456(n)-A333382(n²+n)` -/
def P12121611024139297499.Spec : Prop :=
  ∀ n, P12121611024139297499.a n = A062455 n

end A062455

/-! ## A062455.P11128168469354137650

`A062456(n)-A179527(A134664(n+1))`
-/

namespace A062455.P11128168469354137650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062456 n - A179527 (A134664 (n + 1)).toNat

end

end A062455.P11128168469354137650

namespace A062455

/-- `A062456(n)-A179527(A134664(n+1))` -/
def P11128168469354137650.Spec : Prop :=
  ∀ n, P11128168469354137650.a n = A062455 n

end A062455

/-!
# A062456: Nearest integer to log(n^n)^sqrt(n).

The programs for A062456, the canonical program `A062456.P10871314378329872693` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062456 has offset 0).

The definition of A062456 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062456.P10871314378329872693

`round(log(n^n)^sqrt(n))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062456

/-- `round(log(n^n)^sqrt(n))` -/
def P10871314378329872693.Spec : Prop :=
  ∀ n, P10871314378329872693.a n = A062456 n

theorem P10871314378329872693.correct : P10871314378329872693.Spec := by
  intro n
  simp only [A062456]

end A062456

/-! ## A062456.P13048841822697774941

`A214090(A209657(n))+A062455(n)`
-/

namespace A062456.P13048841822697774941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214090 (A209657 n).toNat + A062455 n

end

end A062456.P13048841822697774941

namespace A062456

/-- `A214090(A209657(n))+A062455(n)` -/
def P13048841822697774941.Spec : Prop :=
  ∀ n, P13048841822697774941.a n = A062456 n

end A062456

/-! ## A062456.P9982326450090187812

`A284533(A015128(3*n))+A062455(n)`
-/

namespace A062456.P9982326450090187812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284533 (A015128 (3 * n)).toNat + A062455 n

end

end A062456.P9982326450090187812

namespace A062456

/-- `A284533(A015128(3*n))+A062455(n)` -/
def P9982326450090187812.Spec : Prop :=
  ∀ n, P9982326450090187812.a n = A062456 n

end A062456

/-!
# A062457: a(n) = prime(n)^n.

The programs for A062457, there is no canonical definition to state claims against.
-/

/-! ## A062457.P14904658916312933385

`A062006(n+1)-1`
-/

namespace A062457.P14904658916312933385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062006 (n + 1) - 1

end

end A062457.P14904658916312933385

/-! ## A062457.P16557477700364118219

`p?[comp[n²]]^(n+1)`
-/

namespace A062457.P16557477700364118219
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ (n + 1)

end

end A062457.P16557477700364118219

/-! ## A062457.P10777414044801636177

`eq[1, ∑{e}[n, #]]^(n+1)`
-/

namespace A062457.P10777414044801636177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ (n + 1)

end

end A062457.P10777414044801636177

/-! ## A062457.P14490487249679037849

`record[∑{p}[n+2, #]]^(n+1)`
-/

namespace A062457.P14490487249679037849
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ (n + 1)

end

end A062457.P14490487249679037849

/-! ## A062457.P5327810699050401197

`eq[2, ∏{e}[n², #]]^(n+1)`
-/

namespace A062457.P5327810699050401197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ (n + 1)

end

end A062457.P5327810699050401197

/-!
# A062458: Nearest integer to (n+1)^(n+1)/n^n.

The programs for A062458, the canonical program `A062458.P12838080748876116517` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062458 has offset 0).

The definition of A062458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4932 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062458.P17237577304887277905

`round(sinh(log(2*n+1)+1))`
-/

namespace A062458.P17237577304887277905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.log (2 * n + 1 : ℝ) + 1))

end

end A062458.P17237577304887277905

namespace A062458

/-- `round(sinh(log(2*n+1)+1))` -/
def P17237577304887277905.Spec : Prop :=
  ∀ n, P17237577304887277905.a n = A062458 n

end A062458

/-! ## A062458.P12838080748876116517

`round((n+1)/(n/(n+1))^n)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062458

/-- `round((n+1)/(n/(n+1))^n)` -/
def P12838080748876116517.Spec : Prop :=
  ∀ n, P12838080748876116517.a n = A062458 n

theorem P12838080748876116517.correct : P12838080748876116517.Spec := by
  intro n
  simp only [A062458]

end A062458

/-! ## A062458.P7137862780274418972

`A004526(ceil(ratio[A062971(n)]))`
-/

namespace A062458.P7137862780274418972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A062458.P7137862780274418972

namespace A062458

/-- `A004526(ceil(ratio[A062971(n)]))` -/
def P7137862780274418972.Spec : Prop :=
  ∀ n, P7137862780274418972.a n = A062458 n

end A062458

/-! ## A062458.P3322560380734360237

`A000194(A171972(2*n+1)+A171971(n+1))`
-/

namespace A062458.P3322560380734360237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A171972 (2 * n + 1) + A171971 (n + 1)).toNat

end

end A062458.P3322560380734360237

namespace A062458

/-- `A000194(A171972(2*n+1)+A171971(n+1))` -/
def P3322560380734360237.Spec : Prop :=
  ∀ n, P3322560380734360237.a n = A062458 n

end A062458

/-! ## A062458.P10220392215719900248

`A121373(A119250(2*n+5))+A103762(n+1)`
-/

namespace A062458.P10220392215719900248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A119250 (2 * n + 5)).toNat + A103762 (n + 1)

end

end A062458.P10220392215719900248

namespace A062458

/-- `A121373(A119250(2*n+5))+A103762(n+1)` -/
def P10220392215719900248.Spec : Prop :=
  ∀ n, P10220392215719900248.a n = A062458 n

end A062458

/-!
# A062459: Primes of form n^2 + mu(n), where mu is A008683.

The programs for A062459, there is no canonical definition to state claims against.
-/

/-! ## A062459.P3902794195740765771

`record[A078311(A026417(n+1))]`
-/

namespace A062459.P3902794195740765771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078311 (A026417 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062459.P3902794195740765771

/-! ## A062459.P12431990537324336934

`p?[(n+1)²+A008683(n+1)]`
-/

namespace A062459.P12431990537324336934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062459.P12431990537324336934

/-! ## A062459.P1875232972918414590

`p?[abs((n+1)*A055615(n+1)+1)]`
-/

namespace A062459.P1875232972918414590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A055615 (n + 1) + 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062459.P1875232972918414590

/-! ## A062459.P8461840304407844726

`p?[A008683(A028310(n))+n²]`
-/

namespace A062459.P8461840304407844726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A028310 n).toNat + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062459.P8461840304407844726

/-! ## A062459.P4639631627795184796

`p?[A007423(n+1)+A005563(n)]`
-/

namespace A062459.P4639631627795184796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1) + A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062459.P4639631627795184796

/-!
# A062460: Nearest integer to log(n)^n.

The programs for A062460, the canonical program `A062460.P18264796176817003377` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062460 has offset 1).

The definition of A062460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062460.P18264796176817003377

`round(log(n+1)^(n+1))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062460

/-- `round(log(n+1)^(n+1))` -/
def P18264796176817003377.Spec : Prop :=
  ∀ n, P18264796176817003377.a n = A062460 (n + 1)

theorem P18264796176817003377.correct : P18264796176817003377.Spec := by
  intro n
  simp only [A062460, Nat.add_sub_cancel]

end A062460

/-! ## A062460.P16853288433234546779

`A022003(A305561(n))+floor(log(n+1)^(n+1))`
-/

namespace A062460.P16853288433234546779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 (A305561 n).toNat + ⌊Real.log (n + 1 : ℝ) ^ (n + 1)⌋

end

end A062460.P16853288433234546779

namespace A062460

/-- `A022003(A305561(n))+floor(log(n+1)^(n+1))` -/
def P16853288433234546779.Spec : Prop :=
  ∀ n, P16853288433234546779.a n = A062460 (n + 1)

end A062460

/-! ## A062460.P9321208418168017043

`A061566(n+1)+A022003(A305561(n))`
-/

namespace A062460.P9321208418168017043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061566 (n + 1) + A022003 (A305561 n).toNat

end

end A062460.P9321208418168017043

namespace A062460

/-- `A061566(n+1)+A022003(A305561(n))` -/
def P9321208418168017043.Spec : Prop :=
  ∀ n, P9321208418168017043.a n = A062460 (n + 1)

end A062460

/-! ## A062460.P2141001543271133343

`A286096(A163590(n))+floor(log(n+1)^(n+1))`
-/

namespace A062460.P2141001543271133343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286096 (A163590 n).toNat + ⌊Real.log (n + 1 : ℝ) ^ (n + 1)⌋

end

end A062460.P2141001543271133343

namespace A062460

/-- `A286096(A163590(n))+floor(log(n+1)^(n+1))` -/
def P2141001543271133343.Spec : Prop :=
  ∀ n, P2141001543271133343.a n = A062460 (n + 1)

end A062460

/-! ## A062460.P8001253842843020797

`A090620(n+1)+A286096(A163590(n))+A061566(n+1)`
-/

namespace A062460.P8001253842843020797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090620 (n + 1) + (A286096 (A163590 n).toNat + A061566 (n + 1))

end

end A062460.P8001253842843020797

namespace A062460

/-- `A090620(n+1)+A286096(A163590(n))+A061566(n+1)` -/
def P8001253842843020797.Spec : Prop :=
  ∀ n, P8001253842843020797.a n = A062460 (n + 1)

end A062460

/-!
# A062461: Integer part of log(n!)^(n^(-1/n)).

The programs for A062461, there is no canonical definition to state claims against.
-/

/-! ## A062461.P12786763480068104945

`A121902(A266784(n)-1)`
-/

namespace A062461.P12786763480068104945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A266784 n - 1).toNat

end

end A062461.P12786763480068104945

/-! ## A062461.P4212076362650578768

`A121900(A266784(n)-1)+A057428(n)`
-/

namespace A062461.P4212076362650578768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A266784 n - 1).toNat + A057428 n

end

end A062461.P4212076362650578768

/-! ## A062461.P3729125801626298186

`A121900(A266784(n)-1)-A057427(n)`
-/

namespace A062461.P3729125801626298186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A266784 n - 1).toNat - A057427 n

end

end A062461.P3729125801626298186

/-! ## A062461.P10887756961711180506

`A121900(A266784(n)-A121900(n))-1`
-/

namespace A062461.P10887756961711180506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A266784 n - A121900 n).toNat - 1

end

end A062461.P10887756961711180506

/-! ## A062461.P15592381519952575458

`∑[floor(A188817(A244187(3*(n+1)))/5)]`
-/

namespace A062461.P15592381519952575458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A188817 (A244187 (3 * (n + 1))).toNat : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062461.P15592381519952575458

/-!
# A062462: Nearest integer to log(n!)^(n^(-1/n)).

The programs for A062462, there is no canonical definition to state claims against.
-/

/-! ## A062462.P16137910980654239519

`A121902((n+1)*C(n, 2)+1)-A057428(n)`
-/

namespace A062462.P16137910980654239519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 ((n + 1) * Nat.choose n 2 + 1) - A057428 n

end

end A062462.P16137910980654239519

/-! ## A062462.P15174331814809170864

`A121900(A135503(n)+A010060(n))`
-/

namespace A062462.P15174331814809170864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A135503 n + A010060 n).toNat

end

end A062462.P15174331814809170864

/-! ## A062462.P78004576358460122

`A121900(A135503(n)+A057427(n))`
-/

namespace A062462.P78004576358460122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A135503 n + A057427 n).toNat

end

end A062462.P78004576358460122

/-! ## A062462.P3936810438459239039

`A121900(A135503(n)-A057428(n))`
-/

namespace A062462.P3936810438459239039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A135503 n - A057428 n).toNat

end

end A062462.P3936810438459239039

/-! ## A062462.P16748738008235500154

`A121900(or(A010060(n), A135503(n)))`
-/

namespace A062462.P16748738008235500154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (Int.lor (A010060 n) (A135503 n)).toNat

end

end A062462.P16748738008235500154

/-!
# A062463: Integer part of log(n)^sqrt(n).

The programs for A062463, the canonical program `A062463.P783409282647602028` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062463 has offset 1).

The definition of A062463 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062463.P783409282647602028

`floor(log(n+1)^sqrt(n+1))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062463

/-- `floor(log(n+1)^sqrt(n+1))` -/
def P783409282647602028.Spec : Prop :=
  ∀ n, P783409282647602028.a n = A062463 (n + 1)

theorem P783409282647602028.correct : P783409282647602028.Spec := by
  intro n
  simp only [A062463, Nat.add_sub_cancel]

end A062463

/-! ## A062463.P7705082052074047474

`A000196(A295342(2*n)+A282892(2*n))`
-/

namespace A062463.P7705082052074047474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A295342 (2 * n) + A282892 (2 * n)).toNat

end

end A062463.P7705082052074047474

namespace A062463

/-- `A000196(A295342(2*n)+A282892(2*n))` -/
def P7705082052074047474.Spec : Prop :=
  ∀ n, P7705082052074047474.a n = A062463 (n + 1)

end A062463

/-! ## A062463.P203364973887247283

`A003056(A002264(A087153(3*n+1)))`
-/

namespace A062463.P203364973887247283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A002264 (A087153 (3 * n + 1)).toNat).toNat

end

end A062463.P203364973887247283

namespace A062463

/-- `A003056(A002264(A087153(3*n+1)))` -/
def P203364973887247283.Spec : Prop :=
  ∀ n, P203364973887247283.a n = A062463 (n + 1)

end A062463

/-! ## A062463.P4320655454481710184

`A095861(A005987(2*n+3)-A001318(n))`
-/

namespace A062463.P4320655454481710184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (A005987 (2 * n + 3) - A001318 n).toNat

end

end A062463.P4320655454481710184

namespace A062463

/-- `A095861(A005987(2*n+3)-A001318(n))` -/
def P4320655454481710184.Spec : Prop :=
  ∀ n, P4320655454481710184.a n = A062463 (n + 1)

end A062463

/-! ## A062463.P2113625237558968604

`A032634(∑[A036820(A187829(n+1))])`
-/

namespace A062463.P2113625237558968604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036820 (A187829 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A062463.P2113625237558968604

namespace A062463

/-- `A032634(∑[A036820(A187829(n+1))])` -/
def P2113625237558968604.Spec : Prop :=
  ∀ n, P2113625237558968604.a n = A062463 (n + 1)

end A062463

/-!
# A062464: Nearest integer to log(n)^sqrt(n).

The programs for A062464, the canonical program `A062464.P16581550044288693085` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062464 has offset 1).

The definition of A062464 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062464.P16581550044288693085

`round(log(n+1)^sqrt(n+1))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062464

/-- `round(log(n+1)^sqrt(n+1))` -/
def P16581550044288693085.Spec : Prop :=
  ∀ n, P16581550044288693085.a n = A062464 (n + 1)

theorem P16581550044288693085.correct : P16581550044288693085.Spec := by
  intro n
  simp only [A062464, Nat.add_sub_cancel]

end A062464

/-! ## A062464.P10121113700067902107

`A118759(A111133(n+2)+A069907(n))`
-/

namespace A062464.P10121113700067902107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A111133 (n + 2) + A069907 n).toNat

end

end A062464.P10121113700067902107

namespace A062464

/-- `A118759(A111133(n+2)+A069907(n))` -/
def P10121113700067902107.Spec : Prop :=
  ∀ n, P10121113700067902107.a n = A062464 (n + 1)

end A062464

/-! ## A062464.P6213266206136170275

`A000196(A002095(4*n+3)-A002095(4*n+1))`
-/

namespace A062464.P6213266206136170275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A002095 (4 * n + 3) - A002095 (4 * n + 1)).toNat

end

end A062464.P6213266206136170275

namespace A062464

/-- `A000196(A002095(4*n+3)-A002095(4*n+1))` -/
def P6213266206136170275.Spec : Prop :=
  ∀ n, P6213266206136170275.a n = A062464 (n + 1)

end A062464

/-! ## A062464.P16907586886579578099

`(A111133(n+2)+A069907(n))%A000203(2^n)`
-/

namespace A062464.P16907586886579578099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111133 (n + 2) + A069907 n) (A000203 (2 ^ n))

end

end A062464.P16907586886579578099

namespace A062464

/-- `(A111133(n+2)+A069907(n))%A000203(2^n)` -/
def P16907586886579578099.Spec : Prop :=
  ∀ n, P16907586886579578099.a n = A062464 (n + 1)

end A062464

/-! ## A062464.P17958951728677170252

`floor(A000267(∑[A236913(n)])/3)`
-/

namespace A062464.P17958951728677170252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000267 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 3⌋

end

end A062464.P17958951728677170252

namespace A062464

/-- `floor(A000267(∑[A236913(n)])/3)` -/
def P17958951728677170252.Spec : Prop :=
  ∀ n, P17958951728677170252.a n = A062464 (n + 1)

end A062464

/-!
# A062465: Integer part of log(n)^(n^(1 - 1/n)).

The programs for A062465, there is no canonical definition to state claims against.
-/

/-! ## A062465.P6059734506662200578

`A066339(A148307(n+1))`
-/

namespace A062465.P6059734506662200578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (A148307 (n + 1)).toNat

end

end A062465.P6059734506662200578

/-! ## A062465.P17184475082168533396

`A054846(A000110(n))-1`
-/

namespace A062465.P17184475082168533396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A000110 n).toNat - 1

end

end A062465.P17184475082168533396

/-! ## A062465.P12781584316658255089

`A100196(A000110(n)-1)`
-/

namespace A062465.P12781584316658255089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A000110 n - 1).toNat

end

end A062465.P12781584316658255089

/-! ## A062465.P9976812525784992599

`A100196(A100388(n))-1`
-/

namespace A062465.P9976812525784992599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A100388 n).toNat - 1

end

end A062465.P9976812525784992599

/-! ## A062465.P3819817472927677794

`A054846(A164864(n))-1`
-/

namespace A062465.P3819817472927677794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A164864 n).toNat - 1

end

end A062465.P3819817472927677794

/-!
# A062466: Nearest integer to log(n)^(n^(1 - 1/n)).

The programs for A062466, there is no canonical definition to state claims against.
-/

/-! ## A062466.P9370752547817879824

`A100196(A100388(n)+1)-1`
-/

namespace A062466.P9370752547817879824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A100388 n + 1).toNat - 1

end

end A062466.P9370752547817879824

/-! ## A062466.P9810298957550356660

`A100196(A000110(n)-(2*char[∑[n-1]]-1))`
-/

namespace A062466.P9810298957550356660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A000110 n - (((2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ) - 1)).toNat

end

end A062466.P9810298957550356660

/-! ## A062466.P1392452259926139715

`A100196(A164864(n)-A143431(n))`
-/

namespace A062466.P1392452259926139715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A164864 n - A143431 n).toNat

end

end A062466.P1392452259926139715

/-! ## A062466.P8049353561641539030

`A100196(A192126(n)-A143431(n))`
-/

namespace A062466.P8049353561641539030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A192126 n - A143431 n).toNat

end

end A062466.P8049353561641539030

/-! ## A062466.P14493388315335144968

`A100196(A229227(n)-A143431(n))`
-/

namespace A062466.P14493388315335144968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A229227 n - A143431 n).toNat

end

end A062466.P14493388315335144968

/-!
# A062467: Integer part of log(n!)^(1 + log(n)/n).

The programs for A062467, there is no canonical definition to state claims against.
-/

/-! ## A062467.P4925974211898850116

`∑[A067693(p?[A293596(n+1)])]`
-/

namespace A062467.P4925974211898850116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293596 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067693 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062467.P4925974211898850116

/-! ## A062467.P13965509460588482418

`A330709(A004275(n)*A060577(n))`
-/

namespace A062467.P13965509460588482418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330709 (A004275 n * A060577 n).toNat

end

end A062467.P13965509460588482418

/-! ## A062467.P16100634572351694381

`A067850(n)+A000523(A255170(n+1))`
-/

namespace A062467.P16100634572351694381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067850 n + A000523 (A255170 (n + 1)).toNat

end

end A062467.P16100634572351694381

/-! ## A062467.P12950203898245735319

`A095114(n+1)-A321020(A317517(2*n+1))`
-/

namespace A062467.P12950203898245735319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095114 (n + 1) - A321020 (A317517 (2 * n + 1)).toNat

end

end A062467.P12950203898245735319

/-! ## A062467.P3040172718832223199

`A127034(3*n+5)-A084558(A022327(n+1))`
-/

namespace A062467.P3040172718832223199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127034 (3 * n + 5) - A084558 (A022327 (n + 1)).toNat

end

end A062467.P3040172718832223199

/-!
# A062468: Nearest integer to log(n!)^(1 + log(n)/n).

The programs for A062468, there is no canonical definition to state claims against.
-/

/-! ## A062468.P15297159768996834365

`A065515((1-n)²+1)%A224239(n+1)`
-/

namespace A062468.P15297159768996834365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065515 ((1 - (n : ℤ)) ^ 2 + 1).toNat) (A224239 (n + 1))

end

end A062468.P15297159768996834365

/-! ## A062468.P4691806709902832079

`∑[A319447(A051163(n))]`
-/

namespace A062468.P4691806709902832079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319447 (A051163 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062468.P4691806709902832079

/-! ## A062468.P1419271574169932584

`A056556(∑[A345426(n+1)]²)`
-/

namespace A062468.P1419271574169932584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A062468.P1419271574169932584

/-! ## A062468.P15977947203165289357

`record[and(A029431(n), A095370(n+1))]`
-/

namespace A062468.P15977947203165289357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029431 n) (A095370 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062468.P15977947203165289357

/-! ## A062468.P364066138130837327

`A330709(A000096(n)*A004275(n))`
-/

namespace A062468.P364066138130837327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330709 (A000096 n * A004275 n).toNat

end

end A062468.P364066138130837327

/-!
# A062469: Integer part of log(n^n)^(n^(-1/n)).

The programs for A062469, there is no canonical definition to state claims against.
-/

/-! ## A062469.P4901300164503288717

`A257639(A005998(n+1))%record[A192011(n)]`
-/

namespace A062469.P4901300164503288717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192011 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257639 (A005998 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A062469.P4901300164503288717

/-! ## A062469.P3616702834328453928

`A095861(∑[A171378(n+1)]+3)`
-/

namespace A062469.P3616702834328453928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A062469.P3616702834328453928

/-! ## A062469.P2932625541051894886

`A257639(A005998(n+1))%A256059(n)`
-/

namespace A062469.P2932625541051894886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257639 (A005998 (n + 1)).toNat) (A256059 n)

end

end A062469.P2932625541051894886

/-! ## A062469.P6730416613526357194

`floor(A265912(∑[A010000(n)])/3)`
-/

namespace A062469.P6730416613526357194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A265912 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 3⌋

end

end A062469.P6730416613526357194

/-! ## A062469.P645468618670304832

`A000196(A057357(∑[∑[2*n]+1]))`
-/

namespace A062469.P645468618670304832
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A057357 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A062469.P645468618670304832

/-!
# A062470: Nearest integer to log(n^n)^(n^(-1/n)).

The programs for A062470, there is no canonical definition to state claims against.
-/

/-! ## A062470.P9191833344014957236

`A055086(∑[∑[A353315(3*n+4)]])`
-/

namespace A062470.P9191833344014957236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353315 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A062470.P9191833344014957236

/-! ## A062470.P5090832934488578349

`A000196(A063984(2*n+3)+A028957(n+1))`
-/

namespace A062470.P5090832934488578349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A063984 (2 * n + 3) + A028957 (n + 1)).toNat

end

end A062470.P5090832934488578349

/-! ## A062470.P3020847448209662769

`A347697(∑[record[A338914(n)]])`
-/

namespace A062470.P3020847448209662769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338914 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A062470.P3020847448209662769

/-! ## A062470.P14137594030821912457

`A121900(∑[∑[A310366(n)]]-1)`
-/

namespace A062470.P14137594030821912457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310366 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A062470.P14137594030821912457

/-! ## A062470.P13278479033639299740

`A121900(∑[∑[A312557(n)]]-1)`
-/

namespace A062470.P13278479033639299740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312557 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A062470.P13278479033639299740

/-!
# A062471: Integer part of log(n^n)^(1 + log(n)/n).

The programs for A062471, there is no canonical definition to state claims against.
-/

/-! ## A062471.P7493227092236017563

`A306069(2*n+3)-A103586(A304503(2*n))`
-/

namespace A062471.P7493227092236017563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306069 (2 * n + 3) - A103586 (A304503 (2 * n)).toNat

end

end A062471.P7493227092236017563

/-! ## A062471.P11211789201773705455

`ceil(log2(∑[A266755(3^n)]²+1))`
-/

namespace A062471.P11211789201773705455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 (3 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1 : ℤ) : ℝ)⌉

end

end A062471.P11211789201773705455

/-! ## A062471.P9430349892283309343

`A130236(n)+A001221(A001764(n))`
-/

namespace A062471.P9430349892283309343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130236 n + A001221 (A001764 n).toNat

end

end A062471.P9430349892283309343

/-!
# A062472: Nearest integer to log(n^n)^(1 + log(n)/n).

The programs for A062472, there is no canonical definition to state claims against.
-/

/-! ## A062472.P10233524916358334606

`floor(log2(A006010(floor(3^(n-1))+1)))`
-/

namespace A062472.P10233524916358334606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A006010 (⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1).toNat).toNat

end

end A062472.P10233524916358334606

/-! ## A062472.P7855646955607668832

`A347697(A014616(n+1)*A051170(n+5))`
-/

namespace A062472.P7855646955607668832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A014616 (n + 1) * A051170 (n + 5)).toNat

end

end A062472.P7855646955607668832

/-! ## A062472.P15724471208214880388

`lt[A339365(n), A339364(A339388(2*n+3))]`
-/

namespace A062472.P15724471208214880388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339365 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339364 (A339388 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062472.P15724471208214880388

/-! ## A062472.P15496973283724110174

`A277903(A022856(3*n+2)*A022856(n+1))`
-/

namespace A062472.P15496973283724110174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277903 (A022856 (3 * n + 2) * A022856 (n + 1)).toNat

end

end A062472.P15496973283724110174

/-!
# A062473: Integer part of log(n!)^(1 + log(n)).

The programs for A062473, the canonical program `A062473.P7114627243791854606` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062473 has offset 1).

The definition of A062473 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062473.P7114627243791854606

`floor(log((n+1)!)^(1+log(n+1)))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062473

/-- `floor(log((n+1)!)^(1+log(n+1)))` -/
def P7114627243791854606.Spec : Prop :=
  ∀ n, P7114627243791854606.a n = A062473 (n + 1)

theorem P7114627243791854606.correct : P7114627243791854606.Spec := by
  intro n
  simp only [A062473, Nat.add_sub_cancel]

end A062473

/-! ## A062473.P5572559737090296528

`A062474(n+1)-A000035(A041984(n))`
-/

namespace A062473.P5572559737090296528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062474 (n + 1) - A000035 (A041984 n).toNat

end

end A062473.P5572559737090296528

namespace A062473

/-- `A062474(n+1)-A000035(A041984(n))` -/
def P5572559737090296528.Spec : Prop :=
  ∀ n, P5572559737090296528.a n = A062473 (n + 1)

end A062473

/-!
# A062474: Nearest integer to log(n!)^(1 + log(n)).

The programs for A062474, the canonical program `A062474.P13461404681598582442` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062474 has offset 1).

The definition of A062474 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062474.P13461404681598582442

`floor(log((n+1)!)^(1+log(n+1))+1/2)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062474

/-- `floor(log((n+1)!)^(1+log(n+1))+1/2)` -/
def P13461404681598582442.Spec : Prop :=
  ∀ n, P13461404681598582442.a n = A062474 (n + 1)

theorem P13461404681598582442.correct : P13461404681598582442.Spec := by
  intro n
  simp only [A062474, Nat.add_sub_cancel]

end A062474

/-! ## A062474.P17306207999044933538

`round(∑[log(n+1)]^(log(n+1)+1))`
-/

namespace A062474.P17306207999044933538
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) ^ (Real.log (n + 1 : ℝ) + 1))

end

end A062474.P17306207999044933538

namespace A062474

/-- `round(∑[log(n+1)]^(log(n+1)+1))` -/
def P17306207999044933538.Spec : Prop :=
  ∀ n, P17306207999044933538.a n = A062474 (n + 1)

end A062474

/-! ## A062474.P10231148424500087845

`A062473(n+1)+A000035(A041984(n))`
-/

namespace A062474.P10231148424500087845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062473 (n + 1) + A000035 (A041984 n).toNat

end

end A062474.P10231148424500087845

namespace A062474

/-- `A062473(n+1)+A000035(A041984(n))` -/
def P10231148424500087845.Spec : Prop :=
  ∀ n, P10231148424500087845.a n = A062474 (n + 1)

end A062474

/-!
# A062475: Integer part of log(n!)^(1 + log(log(1 + n))).

The programs for A062475, there is no canonical definition to state claims against.
-/

/-! ## A062475.P2601290243372408718

`A000720(A341123((1-n)²+n+5))`
-/

namespace A062475.P2601290243372408718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A341123 ((1 - (n : ℤ)) ^ 2 + (n + 5 : ℤ)).toNat).toNat

end

end A062475.P2601290243372408718

/-! ## A062475.P15386691749365149606

`A002024(A024207(n))-A325331(n)`
-/

namespace A062475.P15386691749365149606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A024207 n).toNat - A325331 n

end

end A062475.P15386691749365149606

/-! ## A062475.P4906791609423074353

`A323022(A000142(n))+A216172(n+1)`
-/

namespace A062475.P4906791609423074353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (A000142 n).toNat + A216172 (n + 1)

end

end A062475.P4906791609423074353

/-!
# A062476: Nearest integer to log(n!)^(1 + log(log(1 + n))).

The programs for A062476, there is no canonical definition to state claims against.
-/

/-! ## A062476.P17617897863704097402

`A337979(A036765(n)+A000081(n))`
-/

namespace A062476.P17617897863704097402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337979 (A036765 n + A000081 n).toNat

end

end A062476.P17617897863704097402

/-! ## A062476.P14477673654423067623

`A051889(∑[A212578(n)])`
-/

namespace A062476.P14477673654423067623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A062476.P14477673654423067623

/-!
# A062477: Integer part of log(n^n)^(1 + log(n)).

The programs for A062477, the canonical program `A062477.P17048657811142706745` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062477 has offset 1).

The definition of A062477 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062477.P17048657811142706745

`floor(log((n+1)^(n+1))^(1+log(n+1)))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062477

/-- `floor(log((n+1)^(n+1))^(1+log(n+1)))` -/
def P17048657811142706745.Spec : Prop :=
  ∀ n, P17048657811142706745.a n = A062477 (n + 1)

theorem P17048657811142706745.correct : P17048657811142706745.Spec := by
  intro n
  simp only [A062477, Nat.add_sub_cancel]

end A062477

/-! ## A062477.P17190376245866391503

`A062478(n+1)-A080764(A157727(2*n+1))`
-/

namespace A062477.P17190376245866391503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062478 (n + 1) - A080764 (A157727 (2 * n + 1)).toNat

end

end A062477.P17190376245866391503

namespace A062477

/-- `A062478(n+1)-A080764(A157727(2*n+1))` -/
def P17190376245866391503.Spec : Prop :=
  ∀ n, P17190376245866391503.a n = A062477 (n + 1)

end A062477

/-! ## A062477.P12411768265050013446

`A062478(n+1)-A010060(A084326(n))`
-/

namespace A062477.P12411768265050013446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062478 (n + 1) - A010060 (A084326 n).toNat

end

end A062477.P12411768265050013446

namespace A062477

/-- `A062478(n+1)-A010060(A084326(n))` -/
def P12411768265050013446.Spec : Prop :=
  ∀ n, P12411768265050013446.a n = A062477 (n + 1)

end A062477

/-!
# A062478: Nearest integer to log(n^n)^(1 + log(n)).

The programs for A062478, the canonical program `A062478.P4863577436396151230` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062478 has offset 1).

The definition of A062478 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062478.P4863577436396151230

`round(log((n+1)^(n+1))^(1+log(n+1)))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062478

/-- `round(log((n+1)^(n+1))^(1+log(n+1)))` -/
def P4863577436396151230.Spec : Prop :=
  ∀ n, P4863577436396151230.a n = A062478 (n + 1)

theorem P4863577436396151230.correct : P4863577436396151230.Spec := by
  intro n
  simp only [A062478, Nat.add_sub_cancel]

end A062478

/-! ## A062478.P5362452092663488187

`A062477(n+1)+A030308(A178181(n))`
-/

namespace A062478.P5362452092663488187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062477 (n + 1) + A030308 (A178181 n).toNat

end

end A062478.P5362452092663488187

namespace A062478

/-- `A062477(n+1)+A030308(A178181(n))` -/
def P5362452092663488187.Spec : Prop :=
  ∀ n, P5362452092663488187.a n = A062478 (n + 1)

end A062478

/-! ## A062478.P7979053910268614217

`A321090(A000522(n))+A062477(n+1)`
-/

namespace A062478.P7979053910268614217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321090 (A000522 n).toNat + A062477 (n + 1)

end

end A062478.P7979053910268614217

namespace A062478

/-- `A321090(A000522(n))+A062477(n+1)` -/
def P7979053910268614217.Spec : Prop :=
  ∀ n, P7979053910268614217.a n = A062478 (n + 1)

end A062478

/-!
# A062479: Integer part of log(n^n)^(1 + log(log(1 + n))).

The programs for A062479, there is no canonical definition to state claims against.
-/

/-! ## A062479.P14370593074594620975

`A062480(n+1)-A025426(A062443(2*n))`
-/

namespace A062479.P14370593074594620975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062480 (n + 1) - A025426 (A062443 (2 * n)).toNat

end

end A062479.P14370593074594620975

/-! ## A062479.P14200735164636242015

`∑[A054900(∑[A038343(n+1)])]`
-/

namespace A062479.P14200735164636242015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038343 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054900 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062479.P14200735164636242015

/-! ## A062479.P14989920270462853579

`A008651(A152041(n+1))`
-/

namespace A062479.P14989920270462853579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A152041 (n + 1)).toNat

end

end A062479.P14989920270462853579

/-! ## A062479.P1512056815533520909

`A062480(n+1)-A120325(A154638(n))`
-/

namespace A062479.P1512056815533520909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062480 (n + 1) - A120325 (A154638 n).toNat

end

end A062479.P1512056815533520909

/-!
# A062480: Nearest integer to log(n^n)^(1 + log(log(1 + n))).

The programs for A062480, there is no canonical definition to state claims against.
-/

/-! ## A062480.P581768971538659310

`A358771(A000142(n))+A062479(n+1)`
-/

namespace A062480.P581768971538659310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358771 (A000142 n).toNat + A062479 (n + 1)

end

end A062480.P581768971538659310

/-! ## A062480.P14300074673952693679

`A171588(A062465(n+4))+A062479(n+1)`
-/

namespace A062480.P14300074673952693679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171588 (A062465 (n + 4)).toNat + A062479 (n + 1)

end

end A062480.P14300074673952693679

/-! ## A062480.P4699016757918427714

`A008651(A152041(n+1))+char[A042978(n+1)]`
-/

namespace A062480.P4699016757918427714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042978 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A152041 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A062480.P4699016757918427714

/-! ## A062480.P2748754605672298889

`A050531(n)-A155585(A283666(2*n+3))`
-/

namespace A062480.P2748754605672298889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050531 n - A155585 (A283666 (2 * n + 3)).toNat

end

end A062480.P2748754605672298889

/-!
# A062481: a(n) = n^prime(n).

The programs for A062481, the canonical program `A062481.P10209660498964784841` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062481 has offset 1).

The definition of A062481 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062481.P10209660498964784841

`(n+1)^A000040(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062481

/-- `(n+1)^A000040(n+1)` -/
def P10209660498964784841.Spec : Prop :=
  ∀ n, P10209660498964784841.a n = (A062481 (n + 1) : ℚ)

end A062481

/-! ## A062481.P16594004339968201676

`(n+1)^p?[comp[n²]]`
-/

namespace A062481.P16594004339968201676
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A062481.P16594004339968201676

namespace A062481

/-- `(n+1)^p?[comp[n²]]` -/
def P16594004339968201676.Spec : Prop :=
  ∀ n, (P16594004339968201676.a n : ℤ) = A062481 (n + 1)

end A062481

/-! ## A062481.P14407617832009896593

`(n+1)^eq[1, ∑{e}[n, #]]`
-/

namespace A062481.P14407617832009896593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062481.P14407617832009896593

namespace A062481

/-- `(n+1)^eq[1, ∑{e}[n, #]]` -/
def P14407617832009896593.Spec : Prop :=
  ∀ n, (P14407617832009896593.a n : ℤ) = A062481 (n + 1)

end A062481

/-! ## A062481.P13081423080217377432

`(n+1)^record[∑{p}[n+2, #]]`
-/

namespace A062481.P13081423080217377432
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062481.P13081423080217377432

namespace A062481

/-- `(n+1)^record[∑{p}[n+2, #]]` -/
def P13081423080217377432.Spec : Prop :=
  ∀ n, (P13081423080217377432.a n : ℤ) = A062481 (n + 1)

end A062481

/-! ## A062481.P2674334830905955402

`(n+1)^eq[2, ∏{e}[n², #]]`
-/

namespace A062481.P2674334830905955402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062481.P2674334830905955402

namespace A062481

/-- `(n+1)^eq[2, ∏{e}[n², #]]` -/
def P2674334830905955402.Spec : Prop :=
  ∀ n, (P2674334830905955402.a n : ℤ) = A062481 (n + 1)

end A062481

/-!
# A062482: Integer part of (Product(n^((1 + log(i))/i^2), {i, 1, n})).

The programs for A062482, there is no canonical definition to state claims against.
-/

/-! ## A062482.P244381239891616122

`A261227(n)+A138712(A138751(n+4))`
-/

namespace A062482.P244381239891616122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261227 n + A138712 (A138751 (n + 4)).toNat

end

end A062482.P244381239891616122

/-! ## A062482.P1015194098335332748

`A238886(A061375(n+1)+∑[n])`
-/

namespace A062482.P1015194098335332748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238886 (A061375 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A062482.P1015194098335332748

/-! ## A062482.P17709453500230578238

`A238886(∑[A320808(n+1)+n])`
-/

namespace A062482.P17709453500230578238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320808 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238886 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A062482.P17709453500230578238

/-!
# A062483: Nearest integer to (Product(n^((1 + log(i))/i^2), {i, 1, n})).

The programs for A062483, there is no canonical definition to state claims against.
-/

/-! ## A062483.P6448710407171814474

`A110655(A157271(∑[3*n²+1]))`
-/

namespace A062483.P6448710407171814474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A157271 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A062483.P6448710407171814474

/-! ## A062483.P1630379152426633863

`A110656(∑[3*n²+1]^A204551(n+1))`
-/

namespace A062483.P1630379152426633863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A204551 (n + 1) : ℤ))).toNat

end

end A062483.P1630379152426633863

/-! ## A062483.P15172547737502775072

`A110656(C(∑[3*n²+1], A204551(n+1)))`
-/

namespace A062483.P15172547737502775072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (A204551 (n + 1)).toNat)

end

end A062483.P15172547737502775072

/-! ## A062483.P2087133419232673236

`A118759(ceil(Δ[C(n²+1, 2)]/16))`
-/

namespace A062483.P2087133419232673236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2 + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 ⌈((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 16⌉.toNat

end

end A062483.P2087133419232673236

/-! ## A062483.P2517438536978387115

`A135660((floor(-a(n-2))-n²)²)` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A062483.P2517438536978387115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A135660 ((-a (n - 2) - (n ^ 2 : ℤ)) ^ 2).toNat

end

end A062483.P2517438536978387115

/-!
# A062484: Integer part of (Product(n^(log(1 + i)/i^2), {i, 1, n})).

The programs for A062484, there is no canonical definition to state claims against.
-/

/-! ## A062484.P2607166048387091063

`A251419(2*n+1)-A006577(A000079(n))`
-/

namespace A062484.P2607166048387091063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251419 (2 * n + 1) - A006577 (A000079 n).toNat

end

end A062484.P2607166048387091063

/-! ## A062484.P7475232091083540946

`round(log2(A291294(n+1))²)`
-/

namespace A062484.P7475232091083540946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A291294 (n + 1) : ℝ) ^ 2)

end

end A062484.P7475232091083540946

/-! ## A062484.P8319949054233558059

`A105224(A101374(n)+A038754(n))`
-/

namespace A062484.P8319949054233558059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A101374 n + A038754 n).toNat

end

end A062484.P8319949054233558059

/-!
# A062485: Nearest integer to (Product(n^(log(1 + i)/i^2), {i, 1, n})).

The programs for A062485, there is no canonical definition to state claims against.
-/

/-! ## A062485.P14448005749991114429

`A120966(A208757(n+1))+∑[A057363(n)]`
-/

namespace A062485.P14448005749991114429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120966 (A208757 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062485.P14448005749991114429

/-! ## A062485.P8251574975368949033

`∑[A130259(Δ[A226452(n)])]`
-/

namespace A062485.P8251574975368949033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226452 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130259 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062485.P8251574975368949033

/-! ## A062485.P9510966732206290581

`A023118(A022779(A255977(n+1)))-n`
-/

namespace A062485.P9510966732206290581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023118 (A022779 (A255977 (n + 1)).toNat).toNat - (n : ℤ)

end

end A062485.P9510966732206290581

/-! ## A062485.P9367327528775188367

`A069924(A077947(n))`
-/

namespace A062485.P9367327528775188367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069924 (A077947 n).toNat

end

end A062485.P9367327528775188367

/-! ## A062485.P5861219697624367601

`A069924(A214319(n))`
-/

namespace A062485.P5861219697624367601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069924 (A214319 n).toNat

end

end A062485.P5861219697624367601

/-!
# A062486: Integer part of (Product(n^((1 + log(1 + i))/i^2), {i, 1, n})).

The programs for A062486, there is no canonical definition to state claims against.
-/

/-! ## A062486.P3713624171062328292

`A033183(∑[A190705(n)])`
-/

namespace A062486.P3713624171062328292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A062486.P3713624171062328292

/-! ## A062486.P17862038740346520776

`A062487(n)-A059841(A004212(n))`
-/

namespace A062486.P17862038740346520776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062487 n - A059841 (A004212 n).toNat

end

end A062486.P17862038740346520776

/-! ## A062486.P16849064574761046480

`A062487(n)-A059841(A047864(n))`
-/

namespace A062486.P16849064574761046480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062487 n - A059841 (A047864 n).toNat

end

end A062486.P16849064574761046480

/-!
# A062487: Nearest integer to (Product(n^((1 + log(1 + i))/i^2), {i, 1, n})).

The programs for A062487, there is no canonical definition to state claims against.
-/

/-! ## A062487.P16010435539344298726

`A177849(2*∑{d}[n+1, #]+(∑[4*n]+n)²-1)`
-/

namespace A062487.P16010435539344298726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (((2 * (∑ d ∈ Nat.divisors (f1 n), d) : ℕ) : ℤ) + ((((∑ j ∈ Finset.range (n + 1), f2 j + n) ^ 2 : ℕ) : ℤ) - 1)).toNat

end

end A062487.P16010435539344298726

/-! ## A062487.P12558521126998417257

`A117448(A212681(n+1))`
-/

namespace A062487.P12558521126998417257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117448 (A212681 (n + 1)).toNat

end

end A062487.P12558521126998417257

/-! ## A062487.P7151548263070157587

`A062486(n)+A059841(A004212(n))`
-/

namespace A062487.P7151548263070157587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062486 n + A059841 (A004212 n).toNat

end

end A062487.P7151548263070157587

/-!
# A062488: Integer part of (Product(n^((1 + log(i))/(1 + i^2)), {i, 1, n})).

The programs for A062488, there is no canonical definition to state claims against.
-/

/-! ## A062488.P10498180917313040386

`A111660(or(3, A006918(n)))`
-/

namespace A062488.P10498180917313040386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (Int.lor 3 (A006918 n)).toNat

end

end A062488.P10498180917313040386

/-! ## A062488.P15553872072900546195

`A111660(or(3, ∑[A248421(n+3)]))`
-/

namespace A062488.P15553872072900546195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248421 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (Int.lor 3 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A062488.P15553872072900546195

/-! ## A062488.P7404743443316774406

`A111660(A106607(n))+A000700(n)`
-/

namespace A062488.P7404743443316774406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A106607 n).toNat + A000700 n

end

end A062488.P7404743443316774406

/-! ## A062488.P8003693992247901799

`or(A000120(n), A337642(A292060(n)))`
-/

namespace A062488.P8003693992247901799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000120 n) (A337642 (A292060 n).toNat)

end

end A062488.P8003693992247901799

/-! ## A062488.P7654813756312740412

`or(A173911(n), A337642(A292060(n)))`
-/

namespace A062488.P7654813756312740412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A173911 n) (A337642 (A292060 n).toNat)

end

end A062488.P7654813756312740412

/-!
# A062489: Nearest integer to (Product(n^((1 + log(i))/(1 + i^2)), {i, 1, n})).

The programs for A062489, there is no canonical definition to state claims against.
-/

/-! ## A062489.P2812488576498129780

`∑[A320382(n)-A164292(A344459(n+1))]`
-/

namespace A062489.P2812488576498129780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320382 n - A164292 (A344459 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062489.P2812488576498129780

/-! ## A062489.P9643470468763079840

`A112382(A133263(n)-A002473(n+1))`
-/

namespace A062489.P9643470468763079840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112382 (A133263 n - A002473 (n + 1)).toNat

end

end A062489.P9643470468763079840

/-! ## A062489.P107376390493882566

`A112382(A238531(n+1)-A002473(n+1))`
-/

namespace A062489.P107376390493882566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112382 (A238531 (n + 1) - A002473 (n + 1)).toNat

end

end A062489.P107376390493882566

/-! ## A062489.P11260610684726418697

`A373810((n+1)*a(n-1))` with `a(0)=1`
-/

namespace A062489.P11260610684726418697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A373810 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A062489.P11260610684726418697

/-! ## A062489.P14860836881092921037

`A105224(A000938(n+1)+1)`
-/

namespace A062489.P14860836881092921037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A000938 (n + 1) + 1).toNat

end

end A062489.P14860836881092921037

/-!
# A062490: Integer part of (Product(n^(log(1 + i)/(1 + i^2)), {i, 1, n})).

The programs for A062490, there is no canonical definition to state claims against.
-/

/-! ## A062490.P9008229475834783343

`A008621(∑[A000523(A034337(n+1))])`
-/

namespace A062490.P9008229475834783343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A034337 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A062490.P9008229475834783343

/-! ## A062490.P7648175722555274361

`A276611(A154324(n)-Δ[A062491(n)])`
-/

namespace A062490.P7648175722555274361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A154324 n - (f1 (n + 1) - f1 n)).toNat

end

end A062490.P7648175722555274361

/-! ## A062490.P16544706653849824559

`A276611(A154324(n)-A285139(n+1))`
-/

namespace A062490.P16544706653849824559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A154324 n - A285139 (n + 1)).toNat

end

end A062490.P16544706653849824559

/-! ## A062490.P16263976758464012592

`A276611(A154324(n)-A329697(n+1))`
-/

namespace A062490.P16263976758464012592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A154324 n - A329697 (n + 1)).toNat

end

end A062490.P16263976758464012592

/-! ## A062490.P10185395262750348078

`A276611(A154324(n)-A342651(n+2))`
-/

namespace A062490.P10185395262750348078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A154324 n - A342651 (n + 2)).toNat

end

end A062490.P10185395262750348078

/-!
# A062492: Integer part of (Product(n^((1 + log(1 + i))/(1 + i^2)), {i, 1, n})).

The programs for A062492, there is no canonical definition to state claims against.
-/

/-! ## A062492.P8046096557543734964

`A305504(A000601(n))-n`
-/

namespace A062492.P8046096557543734964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305504 (A000601 n).toNat - (n : ℤ)

end

end A062492.P8046096557543734964

/-! ## A062492.P13237328940273932812

`A225745(A152947(n+1))+A276502(n+1)-1`
-/

namespace A062492.P13237328940273932812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225745 (A152947 (n + 1)).toNat + (A276502 (n + 1) - 1)

end

end A062492.P13237328940273932812

/-! ## A062492.P10099143983285650932

`A002622(n)-A304465(A000984(n))`
-/

namespace A062492.P10099143983285650932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002622 n - A304465 (A000984 n).toNat

end

end A062492.P10099143983285650932

/-! ## A062492.P3462438199664547851

`A338331(A025879(n)+∑[A004652(n)])`
-/

namespace A062492.P3462438199664547851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338331 (A025879 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A062492.P3462438199664547851

/-! ## A062492.P15071542780846006347

`A089279(or(A283981(n), A333147(2*n)))`
-/

namespace A062492.P15071542780846006347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089279 (Int.lor (A283981 n) (A333147 (2 * n))).toNat

end

end A062492.P15071542780846006347

/-!
# A062493: Nearest integer to (Product(n^((1 + log(1 + i))/(1 + i^2)), {i, 1, n})).

The programs for A062493, there is no canonical definition to state claims against.
-/

/-! ## A062493.P3756763221361272840

`A177849((n+3)*(A007742(n)+1))`
-/

namespace A062493.P3756763221361272840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 ((n + 3 : ℤ) * (A007742 n + 1)).toNat

end

end A062493.P3756763221361272840

/-! ## A062493.P10562851366443657502

`∑[A111660(∑[n])]+1`
-/

namespace A062493.P10562851366443657502
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A062493.P10562851366443657502

/-! ## A062493.P13882128104587771740

`A029161(eq[A029179(n), A029193(n+4)])`
-/

namespace A062493.P13882128104587771740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029179 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029193 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029161 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A062493.P13882128104587771740

/-! ## A062493.P6193367135414527191

`A003056(A308931(3*n+4)+A121373(n))`
-/

namespace A062493.P6193367135414527191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A308931 (3 * n + 4) + A121373 n).toNat

end

end A062493.P6193367135414527191

/-! ## A062493.P10200439487617322194

`A160044(a(n-1)+n)` with `a(0)=1`
-/

namespace A062493.P10200439487617322194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A160044 (a (n - 1) + (n : ℤ)).toNat

end

end A062493.P10200439487617322194

/-!
# A062494: Integer part of Product_{j=1..n-1} (n-j)^log(j).

The programs for A062494, there is no canonical definition to state claims against.
-/

/-! ## A062494.P3351635675613858579

`A062495(n)-A059841(A303923(n))`
-/

namespace A062494.P3351635675613858579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062495 n - A059841 (A303923 n).toNat

end

end A062494.P3351635675613858579

/-! ## A062494.P18249181383283523131

`A028310(A062495(n)-∏{e}[n+1, #%2])`
-/

namespace A062494.P18249181383283523131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A062495 n - ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p % 2 : ℕ) : ℤ)).toNat

end

end A062494.P18249181383283523131

/-! ## A062494.P17587098876754078841

`floor(A326293(n)/9)+1`
-/

namespace A062494.P17587098876754078841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A326293 n : ℚ) / 9⌋ + 1

end

end A062494.P17587098876754078841

/-! ## A062494.P11398980925414228251

`A330995(A036387(n+1))`
-/

namespace A062494.P11398980925414228251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330995 (A036387 (n + 1)).toNat

end

end A062494.P11398980925414228251

/-!
# A062495: Nearest integer to Product_{j=1..n-1} (n-j)^log(j).

The programs for A062495, there is no canonical definition to state claims against.
-/

/-! ## A062495.P17863878801751740252

`A062494(n)+A059841(A303923(n))`
-/

namespace A062495.P17863878801751740252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062494 n + A059841 (A303923 n).toNat

end

end A062495.P17863878801751740252

/-! ## A062495.P8820535679099323432

`A365543(A116521(n))`
-/

namespace A062495.P8820535679099323432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365543 (A116521 n).toNat

end

end A062495.P8820535679099323432

/-! ## A062495.P15467585840011589957

`A080735(A048766(n!))`
-/

namespace A062495.P15467585840011589957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080735 (A048766 (Nat.factorial n)).toNat

end

end A062495.P15467585840011589957

/-! ## A062495.P10450906231057358580

`A331296(A048762(n!))`
-/

namespace A062495.P10450906231057358580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331296 (A048762 (Nat.factorial n)).toNat

end

end A062495.P10450906231057358580

/-!
# A062496: Integer part of Product_{j=1..n-1} (n-j)^(1 + log(1+j)).

The programs for A062496, there is no canonical definition to state claims against.
-/

/-! ## A062496.P10105010123148583112

`A062497(n)-A327928(A346888(n))`
-/

namespace A062496.P10105010123148583112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062497 n - A327928 (A346888 n).toNat

end

end A062496.P10105010123148583112

/-! ## A062496.P13095926989519164417

`A062497(n)-A266608(A001349(n))`
-/

namespace A062496.P13095926989519164417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062497 n - A266608 (A001349 n).toNat

end

end A062496.P13095926989519164417

/-! ## A062496.P4556185218128801505

`A062497(n)-A057918(A256202(n))`
-/

namespace A062496.P4556185218128801505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062497 n - A057918 (A256202 n).toNat

end

end A062496.P4556185218128801505

/-! ## A062496.P8305655623558920044

`A062497(n)-A224782(A113950(3*(n+1)))`
-/

namespace A062496.P8305655623558920044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062497 n - A224782 (A113950 (3 * (n + 1))).toNat

end

end A062496.P8305655623558920044

/-!
# A062497: Nearest integer to (Product((n - i)^(1 + log(1 + i)), {i, 1, n - 1})).

The programs for A062497, there is no canonical definition to state claims against.
-/

/-! ## A062497.P7169950229643366192

`A327928(A346888(n))+A062496(n)`
-/

namespace A062497.P7169950229643366192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327928 (A346888 n).toNat + A062496 n

end

end A062497.P7169950229643366192

/-! ## A062497.P12202633297818656635

`A062496(n)+A057918(A256202(n))`
-/

namespace A062497.P12202633297818656635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062496 n + A057918 (A256202 n).toNat

end

end A062497.P12202633297818656635

/-! ## A062497.P3535946612814680322

`A062496(n)+A046665(A061283(n+1))`
-/

namespace A062497.P3535946612814680322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062496 n + A046665 (A061283 (n + 1)).toNat

end

end A062497.P3535946612814680322

/-!
# A062498: Integer part of Product_{j=1..n-1} (n-j)^(1 + log(j)).

The programs for A062498, there is no canonical definition to state claims against.
-/

/-! ## A062498.P6875600966557867404

`A062499(n)-A072401(A056272(n))`
-/

namespace A062498.P6875600966557867404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062499 n - A072401 (A056272 n).toNat

end

end A062498.P6875600966557867404

/-! ## A062498.P2164788029568749820

`A062499(n)-A079978(A279553(n))`
-/

namespace A062498.P2164788029568749820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062499 n - A079978 (A279553 n).toNat

end

end A062498.P2164788029568749820

/-! ## A062498.P17144353678937005667

`A062499(n)-A266608(A001349(n))`
-/

namespace A062498.P17144353678937005667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062499 n - A266608 (A001349 n).toNat

end

end A062498.P17144353678937005667

/-!
# A062499: Nearest integer to Product_{j=1..n-1} (n-j)^(1 + log(j)).

The programs for A062499, there is no canonical definition to state claims against.
-/

/-! ## A062499.P4650479974188114031

`A072401(A056272(n))+A062498(n)`
-/

namespace A062499.P4650479974188114031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072401 (A056272 n).toNat + A062498 n

end

end A062499.P4650479974188114031

/-! ## A062499.P12230689514364504186

`A318880(A308462(n))+A062498(n)`
-/

namespace A062499.P12230689514364504186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318880 (A308462 n).toNat + A062498 n

end

end A062499.P12230689514364504186

