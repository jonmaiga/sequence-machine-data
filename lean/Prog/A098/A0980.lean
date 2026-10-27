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
import Seq.B000.C029
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C022
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A098000: Number of outerplanar graphs on n labeled nodes.

The programs for A098000, there is no canonical definition to state claims against.
-/

/-! ## A098000.P9759246505744957633

`A129268(A369840(n))`
-/

namespace A098000.P9759246505744957633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129268 (A369840 n).toNat

end

end A098000.P9759246505744957633

/-! ## A098000.P7837254297403196239

`A044923(∏[A026713(n)])`
-/

namespace A098000.P7837254297403196239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044923 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A098000.P7837254297403196239

/-!
# A098002: Sum of squares of distinct prime divisors p of n, where each p <= sqrt(n).

The programs for A098002, the canonical program `A098002.P16795242418287850417` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098002 has offset 1).

The definition of A098002 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098002.P16795242418287850417

`∑{p}[A072504(n+1), #²]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A098002

/-- `∑{p}[A072504(n+1), #²]` -/
def P16795242418287850417.Spec : Prop :=
  ∀ n, (P16795242418287850417.a n : ℤ) = A098002 (n + 1)

theorem P16795242418287850417.correct : P16795242418287850417.Spec := by
  intro n
  simp only [A098002, Nat.add_sub_cancel]

end A098002

/-! ## A098002.P16237463033113069990

`∑{p}[(n+1)/A072505(n+1), #²]`
-/

namespace A098002.P16237463033113069990
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A072505 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p ^ 2

end

end A098002.P16237463033113069990

namespace A098002

/-- `∑{p}[(n+1)/A072505(n+1), #²]` -/
def P16237463033113069990.Spec : Prop :=
  ∀ n, (P16237463033113069990.a n : ℤ) = A098002 (n + 1)

end A098002

/-! ## A098002.P6277333062369743369

`A005063(A072504(n+1))`
-/

namespace A098002.P6277333062369743369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (A072504 (n + 1)).toNat

end

end A098002.P6277333062369743369

namespace A098002

/-- `A005063(A072504(n+1))` -/
def P6277333062369743369.Spec : Prop :=
  ∀ n, P6277333062369743369.a n = A098002 (n + 1)

end A098002

/-! ## A098002.P14502540811767508590

`A005063(A382486(n+1))`
-/

namespace A098002.P14502540811767508590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (A382486 (n + 1)).toNat

end

end A098002.P14502540811767508590

namespace A098002

/-- `A005063(A382486(n+1))` -/
def P14502540811767508590.Spec : Prop :=
  ∀ n, P14502540811767508590.a n = A098002 (n + 1)

end A098002

/-! ## A098002.P17088727173249034303

`A067666(∏{p}[A072504(n+1), #])`
-/

namespace A098002.P17088727173249034303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067666 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A098002.P17088727173249034303

namespace A098002

/-- `A067666(∏{p}[A072504(n+1), #])` -/
def P17088727173249034303.Spec : Prop :=
  ∀ n, P17088727173249034303.a n = A098002 (n + 1)

end A098002

/-! ## A098002.P4267774066773482016

`A005063((n+1)/A072505(n+1))`
-/

namespace A098002.P4267774066773482016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A072505 (n + 1) : ℚ))).toNat

end

end A098002.P4267774066773482016

namespace A098002

/-- `A005063((n+1)/A072505(n+1))` -/
def P4267774066773482016.Spec : Prop :=
  ∀ n, P4267774066773482016.a n = A098002 (n + 1)

end A098002

/-! ## A098002.P13818537029065178678

`A005063(gcd(n+1, A072499(n+1)))`
-/

namespace A098002.P13818537029065178678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (Int.gcd (n + 1 : ℤ) (A072499 (n + 1)))

end

end A098002.P13818537029065178678

namespace A098002

/-- `A005063(gcd(n+1, A072499(n+1)))` -/
def P13818537029065178678.Spec : Prop :=
  ∀ n, P13818537029065178678.a n = A098002 (n + 1)

end A098002

/-! ## A098002.P9798260128385453093

`∑{p}[A011262(A072504(n+1)), A011262(#)]`
-/

namespace A098002.P9798260128385453093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011262 (A072504 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A011262 p

end

end A098002.P9798260128385453093

namespace A098002

/-- `∑{p}[A011262(A072504(n+1)), A011262(#)]` -/
def P9798260128385453093.Spec : Prop :=
  ∀ n, P9798260128385453093.a n = A098002 (n + 1)

end A098002

/-! ## A098002.P5476275630905933314

`A071327(A072504(n+1)²)`
-/

namespace A098002.P5476275630905933314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071327 (A072504 (n + 1) ^ 2).toNat

end

end A098002.P5476275630905933314

namespace A098002

/-- `A071327(A072504(n+1)²)` -/
def P5476275630905933314.Spec : Prop :=
  ∀ n, P5476275630905933314.a n = A098002 (n + 1)

end A098002

/-! ## A098002.P13698409915327070430

`A071327((n+1)*A072504(n+1))`
-/

namespace A098002.P13698409915327070430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071327 ((n + 1 : ℤ) * A072504 (n + 1)).toNat

end

end A098002.P13698409915327070430

namespace A098002

/-- `A071327((n+1)*A072504(n+1))` -/
def P13698409915327070430.Spec : Prop :=
  ∀ n, P13698409915327070430.a n = A098002 (n + 1)

end A098002

/-! ## A098002.P13399293339343478152

`A347156(A175068(n+1))`
-/

namespace A098002.P13399293339343478152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347156 (A175068 (n + 1)).toNat

end

end A098002.P13399293339343478152

namespace A098002

/-- `A347156(A175068(n+1))` -/
def P13399293339343478152.Spec : Prop :=
  ∀ n, P13399293339343478152.a n = A098002 (n + 1)

end A098002

/-! ## A098002.P13439466049065460639

`∑{p}[A072499(n+1), #²]`
-/

namespace A098002.P13439466049065460639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072499 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A098002.P13439466049065460639

namespace A098002

/-- `∑{p}[A072499(n+1), #²]` -/
def P13439466049065460639.Spec : Prop :=
  ∀ n, (P13439466049065460639.a n : ℤ) = A098002 (n + 1)

end A098002

/-! ## A098002.P1406266449918954261

`A067666(∏{p}[A072499(n+1), #])`
-/

namespace A098002.P1406266449918954261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067666 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A098002.P1406266449918954261

namespace A098002

/-- `A067666(∏{p}[A072499(n+1), #])` -/
def P1406266449918954261.Spec : Prop :=
  ∀ n, P1406266449918954261.a n = A098002 (n + 1)

end A098002

/-! ## A098002.P4741801937480801178

`∑{p}[A072500(n+1)/A072501(n+1), #²]`
-/

namespace A098002.P4741801937480801178
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072500 (n + 1) : ℚ) / (A072501 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p ^ 2

end

end A098002.P4741801937480801178

namespace A098002

/-- `∑{p}[A072500(n+1)/A072501(n+1), #²]` -/
def P4741801937480801178.Spec : Prop :=
  ∀ n, (P4741801937480801178.a n : ℤ) = A098002 (n + 1)

end A098002

/-! ## A098002.P1477382062515372255

`A005063(A396068(n+1))`
-/

namespace A098002.P1477382062515372255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (A396068 (n + 1)).toNat

end

end A098002.P1477382062515372255

namespace A098002

/-- `A005063(A396068(n+1))` -/
def P1477382062515372255.Spec : Prop :=
  ∀ n, P1477382062515372255.a n = A098002 (n + 1)

end A098002

/-! ## A098002.P5855313392699962772

`A005063(A064446(n+1)/A019554(n+1))`
-/

namespace A098002.P5855313392699962772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (SequenceMachineLib.roundAway ((A064446 (n + 1) : ℚ) / (A019554 (n + 1) : ℚ))).toNat

end

end A098002.P5855313392699962772

namespace A098002

/-- `A005063(A064446(n+1)/A019554(n+1))` -/
def P5855313392699962772.Spec : Prop :=
  ∀ n, P5855313392699962772.a n = A098002 (n + 1)

end A098002

/-! ## A098002.P15076603801039398245

`A005063(A072499(n+1))`
-/

namespace A098002.P15076603801039398245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (A072499 (n + 1)).toNat

end

end A098002.P15076603801039398245

namespace A098002

/-- `A005063(A072499(n+1))` -/
def P15076603801039398245.Spec : Prop :=
  ∀ n, P15076603801039398245.a n = A098002 (n + 1)

end A098002

/-! ## A098002.P12849075929629447045

`A347156(A140580(n+1))`
-/

namespace A098002.P12849075929629447045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347156 (A140580 (n + 1)).toNat

end

end A098002.P12849075929629447045

namespace A098002

/-- `A347156(A140580(n+1))` -/
def P12849075929629447045.Spec : Prop :=
  ∀ n, P12849075929629447045.a n = A098002 (n + 1)

end A098002

/-!
# A098003: Start with positive integers. On the m-th step, shift terms a(m+1) to a(2m-1) one position to the left, then move a(m) to position (2m-1). Sequence is limit of reordering.

The programs for A098003, the canonical program `A098003.P10348797530336827391` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098003 has offset 1).

The definition of A098003 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098003.P2127419976640101359

`A004396(A098486(n+2)-1)`
-/

namespace A098003.P2127419976640101359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A098486 (n + 2) - 1).toNat

end

end A098003.P2127419976640101359

namespace A098003

/-- `A004396(A098486(n+2)-1)` -/
def P2127419976640101359.Spec : Prop :=
  ∀ n, P2127419976640101359.a n = A098003 (n + 1)

end A098003

/-! ## A098003.P15231126271741072263

`A004523(A098486(n+2))`
-/

namespace A098003.P15231126271741072263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A098486 (n + 2)).toNat

end

end A098003.P15231126271741072263

namespace A098003

/-- `A004523(A098486(n+2))` -/
def P15231126271741072263.Spec : Prop :=
  ∀ n, P15231126271741072263.a n = A098003 (n + 1)

end A098003

/-! ## A098003.P10348797530336827391

`A004396(A064614(2*n+3)-1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A098003

/-- `A004396(A064614(2*n+3)-1)` -/
def P10348797530336827391.Spec : Prop :=
  ∀ n, P10348797530336827391.a n = A098003 (n + 1)

theorem P10348797530336827391.correct : P10348797530336827391.Spec := by
  intro n
  simp only [A098003, Nat.add_sub_cancel]

end A098003

/-! ## A098003.P9967716447789544793

`A002264(2*A098486(n+2))`
-/

namespace A098003.P9967716447789544793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * A098486 (n + 2)).toNat

end

end A098003.P9967716447789544793

namespace A098003

/-- `A002264(2*A098486(n+2))` -/
def P9967716447789544793.Spec : Prop :=
  ∀ n, P9967716447789544793.a n = A098003 (n + 1)

end A098003

/-! ## A098003.P10732788121593968993

`A002264(A098486(n+2)+A098486(n+2))`
-/

namespace A098003.P10732788121593968993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A098486 (n + 2) + A098486 (n + 2)).toNat

end

end A098003.P10732788121593968993

namespace A098003

/-- `A002264(A098486(n+2)+A098486(n+2))` -/
def P10732788121593968993.Spec : Prop :=
  ∀ n, P10732788121593968993.a n = A098003 (n + 1)

end A098003

/-! ## A098003.P3599723505659776218

`A347945(n)+1`
-/

namespace A098003.P3599723505659776218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347945 n + 1

end

end A098003.P3599723505659776218

namespace A098003

/-- `A347945(n)+1` -/
def P3599723505659776218.Spec : Prop :=
  ∀ n, P3599723505659776218.a n = A098003 (n + 1)

end A098003

/-! ## A098003.P5089915627129569019

`1-(A253786(n²)-A347945(n))`
-/

namespace A098003.P5089915627129569019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A253786 (n ^ 2) - A347945 n)

end

end A098003.P5089915627129569019

namespace A098003

/-- `1-(A253786(n²)-A347945(n))` -/
def P5089915627129569019.Spec : Prop :=
  ∀ n, P5089915627129569019.a n = A098003 (n + 1)

end A098003

/-!
# A098005: Beatty sequence for 1/(3 - e): a(n) = floor(n/(3-e)).

The programs for A098005, the canonical program `A098005.P5580117881887268594` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098005 has offset 1).

The definition of A098005 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)/(3-e))` (program `A098005.P5580117881887268594`, by `A098005.P5580117881887268594.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098005.P5580117881887268594

`floor((n+1)/(3-e))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098005

/-- `floor((n+1)/(3-e))` -/
def P5580117881887268594.Spec : Prop :=
  ∀ n, P5580117881887268594.a n = A098005 (n + 1)

theorem P5580117881887268594.correct : P5580117881887268594.Spec := by
  intro n
  simp only [A098005, Nat.add_sub_cancel]

end A098005

/-! ## A098005.P9339665977370191722

`∩[A190847(n+1), A327212(n+1)]`
-/

namespace A098005.P9339665977370191722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098005.P9339665977370191722

namespace A098005

/-- `∩[A190847(n+1), A327212(n+1)]` -/
def P9339665977370191722.Spec : Prop :=
  ∀ n, (P9339665977370191722.a n : ℤ) = A098005 (n + 1)

end A098005

/-! ## A098005.P13537030046376745340

`∩[A191103(n+1), A327212(n+1)]`
-/

namespace A098005.P13537030046376745340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098005.P13537030046376745340

namespace A098005

/-- `∩[A191103(n+1), A327212(n+1)]` -/
def P13537030046376745340.Spec : Prop :=
  ∀ n, (P13537030046376745340.a n : ℤ) = A098005 (n + 1)

end A098005

/-! ## A098005.P9840725672785105944

`eq[A063790(n+1), A276859(n+1)]`
-/

namespace A098005.P9840725672785105944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276859 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098005.P9840725672785105944

namespace A098005

/-- `eq[A063790(n+1), A276859(n+1)]` -/
def P9840725672785105944.Spec : Prop :=
  ∀ n, (P9840725672785105944.a n : ℤ) = A098005 (n + 1)

end A098005

/-! ## A098005.P15090344944603655431

`eq[A236213(n+1), A276859(n+1)]`
-/

namespace A098005.P15090344944603655431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276859 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098005.P15090344944603655431

namespace A098005

/-- `eq[A236213(n+1), A276859(n+1)]` -/
def P15090344944603655431.Spec : Prop :=
  ∀ n, (P15090344944603655431.a n : ℤ) = A098005 (n + 1)

end A098005

/-! ## A098005.P10821832123918494832

`lt[A344348(n), A344348(n+1)]`
-/

namespace A098005.P10821832123918494832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344348 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344348 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098005.P10821832123918494832

namespace A098005

/-- `lt[A344348(n), A344348(n+1)]` -/
def P10821832123918494832.Spec : Prop :=
  ∀ n, (P10821832123918494832.a n : ℤ) = A098005 (n + 1)

end A098005

/-!
# A098006: (p-1)/2 - phi(p-1) as p runs through the odd primes.

The programs for A098006, the canonical program `A098006.P10183433005591828709` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098006 has offset 2).

The definition of A098006 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A098006.P10183433005591828709

`A005097(n+1)-A000010(A006093(n+2))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A098006

/-- `A005097(n+1)-A000010(A006093(n+2))` -/
def P10183433005591828709.Spec : Prop :=
  ∀ n, P10183433005591828709.a n = A098006 (n + 2)

theorem P10183433005591828709.correct : P10183433005591828709.Spec := by
  intro n
  simp only [A098006, Nat.add_sub_cancel]

end A098006

/-! ## A098006.P17603795996407745739

`(A000040(n+2)-1)/2-A000010(A000040(n+2)-1)`
-/

namespace A098006.P17603795996407745739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) - 1 : ℚ) / 2 - (A000010 (A000040 (n + 2) - 1).toNat : ℚ)

end

end A098006.P17603795996407745739

namespace A098006

/-- `(A000040(n+2)-1)/2-A000010(A000040(n+2)-1)` -/
def P17603795996407745739.Spec : Prop :=
  ∀ n, P17603795996407745739.a n = (A098006 (n + 2) : ℚ)

end A098006

/-! ## A098006.P17828117484897693753

`A005097(n+1)-A008330(n+2)`
-/

namespace A098006.P17828117484897693753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) - A008330 (n + 2)

end

end A098006.P17828117484897693753

namespace A098006

/-- `A005097(n+1)-A008330(n+2)` -/
def P17828117484897693753.Spec : Prop :=
  ∀ n, P17828117484897693753.a n = A098006 (n + 2)

end A098006

/-! ## A098006.P9350653289225692325

`A006093(n+2)-A280729(n+1)`
-/

namespace A098006.P9350653289225692325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 2) - A280729 (n + 1)

end

end A098006.P9350653289225692325

namespace A098006

/-- `A006093(n+2)-A280729(n+1)` -/
def P9350653289225692325.Spec : Prop :=
  ∀ n, P9350653289225692325.a n = A098006 (n + 2)

end A098006

/-! ## A098006.P17224623214581215909

`A006093(n+2)/2-A008330(n+2)`
-/

namespace A098006.P17224623214581215909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 2) : ℚ) / 2 - (A008330 (n + 2) : ℚ)

end

end A098006.P17224623214581215909

namespace A098006

/-- `A006093(n+2)/2-A008330(n+2)` -/
def P17224623214581215909.Spec : Prop :=
  ∀ n, P17224623214581215909.a n = (A098006 (n + 2) : ℚ)

end A098006

/-! ## A098006.P9966251765080146070

`A130290(n+2)-A062570(A130290(n+2))`
-/

namespace A098006.P9966251765080146070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 2) - A062570 (A130290 (n + 2)).toNat

end

end A098006.P9966251765080146070

namespace A098006

/-- `A130290(n+2)-A062570(A130290(n+2))` -/
def P9966251765080146070.Spec : Prop :=
  ∀ n, P9966251765080146070.a n = A098006 (n + 2)

end A098006

/-! ## A098006.P13194472598080329808

`A005097(n+1)-A000010(2*A005097(n+1))`
-/

namespace A098006.P13194472598080329808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) - A000010 (2 * A005097 (n + 1)).toNat

end

end A098006.P13194472598080329808

namespace A098006

/-- `A005097(n+1)-A000010(2*A005097(n+1))` -/
def P13194472598080329808.Spec : Prop :=
  ∀ n, P13194472598080329808.a n = A098006 (n + 2)

end A098006

/-! ## A098006.P9098642257548441590

`A176095(A005097(n+1))`
-/

namespace A098006.P9098642257548441590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176095 (A005097 (n + 1)).toNat

end

end A098006.P9098642257548441590

namespace A098006

/-- `A176095(A005097(n+1))` -/
def P9098642257548441590.Spec : Prop :=
  ∀ n, P9098642257548441590.a n = A098006 (n + 2)

end A098006

/-! ## A098006.P14702365081868387671

`A176095(A102781(n+2))`
-/

namespace A098006.P14702365081868387671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176095 (A102781 (n + 2)).toNat

end

end A098006.P14702365081868387671

namespace A098006

/-- `A176095(A102781(n+2))` -/
def P14702365081868387671.Spec : Prop :=
  ∀ n, P14702365081868387671.a n = A098006 (n + 2)

end A098006

/-! ## A098006.P8356173461318206188

`A176095(A130290(n+2))`
-/

namespace A098006.P8356173461318206188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176095 (A130290 (n + 2)).toNat

end

end A098006.P8356173461318206188

namespace A098006

/-- `A176095(A130290(n+2))` -/
def P8356173461318206188.Spec : Prop :=
  ∀ n, P8356173461318206188.a n = A098006 (n + 2)

end A098006

/-! ## A098006.P14289596681633580908

`A176095(A006093(n+2)/2)`
-/

namespace A098006.P14289596681633580908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176095 (SequenceMachineLib.roundAway ((A006093 (n + 2) : ℚ) / 2)).toNat

end

end A098006.P14289596681633580908

namespace A098006

/-- `A176095(A006093(n+2)/2)` -/
def P14289596681633580908.Spec : Prop :=
  ∀ n, P14289596681633580908.a n = A098006 (n + 2)

end A098006

/-! ## A098006.P8455464311292159168

`A176095(eq[1, A176095(2*n+1)])`
-/

namespace A098006.P8455464311292159168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176095 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098006.P8455464311292159168

namespace A098006

/-- `A176095(eq[1, A176095(2*n+1)])` -/
def P8455464311292159168.Spec : Prop :=
  ∀ n, P8455464311292159168.a n = A098006 (n + 2)

end A098006

/-! ## A098006.P13328133887885264213

`A176095(eq[1, A176095(n+1)]/2)`
-/

namespace A098006.P13328133887885264213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176095 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2)).toNat

end

end A098006.P13328133887885264213

namespace A098006

/-- `A176095(eq[1, A176095(n+1)]/2)` -/
def P13328133887885264213.Spec : Prop :=
  ∀ n, P13328133887885264213.a n = A098006 (n + 2)

end A098006

/-! ## A098006.P7661318904209806580

`A219839(A165972(n+1))`
-/

namespace A098006.P7661318904209806580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219839 (A165972 (n + 1)).toNat

end

end A098006.P7661318904209806580

namespace A098006

/-- `A219839(A165972(n+1))` -/
def P7661318904209806580.Spec : Prop :=
  ∀ n, P7661318904209806580.a n = A098006 (n + 2)

end A098006

/-! ## A098006.P17706424439361653742

`A219839(A006093(n+2))`
-/

namespace A098006.P17706424439361653742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219839 (A006093 (n + 2)).toNat

end

end A098006.P17706424439361653742

namespace A098006

/-- `A219839(A006093(n+2))` -/
def P17706424439361653742.Spec : Prop :=
  ∀ n, P17706424439361653742.a n = A098006 (n + 2)

end A098006

/-! ## A098006.P14576694084301531001

`A219839(A039915(n+2))`
-/

namespace A098006.P14576694084301531001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219839 (A039915 (n + 2)).toNat

end

end A098006.P14576694084301531001

namespace A098006

/-- `A219839(A039915(n+2))` -/
def P14576694084301531001.Spec : Prop :=
  ∀ n, P14576694084301531001.a n = A098006 (n + 2)

end A098006

/-! ## A098006.P12325744025646287064

`A219839(A156037(n+2))`
-/

namespace A098006.P12325744025646287064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219839 (A156037 (n + 2)).toNat

end

end A098006.P12325744025646287064

namespace A098006

/-- `A219839(A156037(n+2))` -/
def P12325744025646287064.Spec : Prop :=
  ∀ n, P12325744025646287064.a n = A098006 (n + 2)

end A098006

/-! ## A098006.P2056598700876931281

`A219839(record[A000010(n+3)])`
-/

namespace A098006.P2056598700876931281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219839 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098006.P2056598700876931281

namespace A098006

/-- `A219839(record[A000010(n+3)])` -/
def P2056598700876931281.Spec : Prop :=
  ∀ n, P2056598700876931281.a n = A098006 (n + 2)

end A098006

/-! ## A098006.P8424507258754873573

`A219839(A065091(n+1)-1)`
-/

namespace A098006.P8424507258754873573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219839 (A065091 (n + 1) - 1).toNat

end

end A098006.P8424507258754873573

namespace A098006

/-- `A219839(A065091(n+1)-1)` -/
def P8424507258754873573.Spec : Prop :=
  ∀ n, P8424507258754873573.a n = A098006 (n + 2)

end A098006

/-! ## A098006.P1047185613594042574

`A219839(A000040(n+2)-1)`
-/

namespace A098006.P1047185613594042574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219839 (A000040 (n + 2) - 1).toNat

end

end A098006.P1047185613594042574

namespace A098006

/-- `A219839(A000040(n+2)-1)` -/
def P1047185613594042574.Spec : Prop :=
  ∀ n, P1047185613594042574.a n = A098006 (n + 2)

end A098006

/-!
# A098007: Length of aliquot sequence for n, or -1 if aliquot sequence never cycles.

The programs for A098007, there is no canonical definition to state claims against.
-/

/-! ## A098007.P11456874905718963194

`A008619(A098008(n+1)+A044050(n+1))`
-/

namespace A098007.P11456874905718963194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A098008 (n + 1) + A044050 (n + 1)).toNat

end

end A098007.P11456874905718963194

/-! ## A098007.P2221598097886384927

`A228572(A338156(n+1))+A098008(n+1)`
-/

namespace A098007.P2221598097886384927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228572 (A338156 (n + 1)).toNat + A098008 (n + 1)

end

end A098007.P2221598097886384927

/-! ## A098007.P16428493682381788652

`A098008(n+1)+gcd(A003023(n+1), A044050(n+1))`
-/

namespace A098007.P16428493682381788652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098008 (n + 1) + (Int.gcd (A003023 (n + 1)) (A044050 (n + 1)) : ℤ)

end

end A098007.P16428493682381788652

/-! ## A098007.P3938740083319619341

`A098008(n+1)+A000041(A044050(n+1)-A098008(n+1))`
-/

namespace A098007.P3938740083319619341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098008 (n + 1) + A000041 (A044050 (n + 1) - A098008 (n + 1)).toNat

end

end A098007.P3938740083319619341

/-! ## A098007.P3061339653218609522

`A044050(n+1)+(A044050(n+1)-A003023(n+1))^A000010(n+1)`
-/

namespace A098007.P3061339653218609522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044050 (n + 1) : ℚ) + (A044050 (n + 1) - A003023 (n + 1) : ℚ) ^ (A000010 (n + 1) : ℤ)

end

end A098007.P3061339653218609522

/-! ## A098007.P1218665602904942891

`A098008(n+1)+A019425(A051230(n+1))`
-/

namespace A098007.P1218665602904942891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098008 (n + 1) + A019425 (A051230 (n + 1)).toNat

end

end A098007.P1218665602904942891

/-! ## A098007.P12252443359747524951

`(A098008(n+1)+1)%A136053(A340348(n+1)+1)`
-/

namespace A098007.P12252443359747524951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098008 (n + 1) + 1) (A136053 (A340348 (n + 1) + 1).toNat)

end

end A098007.P12252443359747524951

/-! ## A098007.P7123280033216827875

`A098008(n+1)+and(1, A136053(A340348(n+2)+1))`
-/

namespace A098007.P7123280033216827875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098008 (n + 1) + Int.land 1 (A136053 (A340348 (n + 2) + 1).toNat)

end

end A098007.P7123280033216827875

/-! ## A098007.P2447943728186044539

`A098008(n+1)+A001065(A089531(n+1))`
-/

namespace A098007.P2447943728186044539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098008 (n + 1) + A001065 (A089531 (n + 1)).toNat

end

end A098007.P2447943728186044539

/-! ## A098007.P7145832472167526602

`A098008(n+1)+A001222(A129480(A073751(n+1)))`
-/

namespace A098007.P7145832472167526602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098008 (n + 1) + A001222 (A129480 (A073751 (n + 1)).toNat).toNat

end

end A098007.P7145832472167526602

/-! ## A098007.P3941622593417941013

`A098008(n+1)+A001222(A023299(n+1))`
-/

namespace A098007.P3941622593417941013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098008 (n + 1) + A001222 (A023299 (n + 1)).toNat

end

end A098007.P3941622593417941013

/-! ## A098007.P6394840773338351868

`A098008(n+1)+A001222(A142282(2*n+1))`
-/

namespace A098007.P6394840773338351868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098008 (n + 1) + A001222 (A142282 (2 * n + 1)).toNat

end

end A098007.P6394840773338351868

/-! ## A098007.P3686312260255583541

`A098008(n+1)+A001222(A129480(A066207(n+1)))`
-/

namespace A098007.P3686312260255583541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098008 (n + 1) + A001222 (A129480 (A066207 (n + 1)).toNat).toNat

end

end A098007.P3686312260255583541

/-! ## A098007.P11610413678956123123

`A007906(A059447(A098008(n+1)))`
-/

namespace A098007.P11610413678956123123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007906 (A059447 (A098008 (n + 1)).toNat).toNat

end

end A098007.P11610413678956123123

/-!
# A098008: Length of transient part of aliquot sequence for n, or -1 if transient part is infinite.

The programs for A098008, there is no canonical definition to state claims against.
-/

/-! ## A098008.P18026522330869120835

`A044050(n+1)%A098007(n+1)`
-/

namespace A098008.P18026522330869120835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044050 (n + 1)) (A098007 (n + 1))

end

end A098008.P18026522330869120835

/-! ## A098008.P9983978230337446194

`A023443(C(A098007(n+1), A044050(n+1)))`
-/

namespace A098008.P9983978230337446194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (Nat.choose (A098007 (n + 1)).toNat (A044050 (n + 1)).toNat)

end

end A098008.P9983978230337446194

/-! ## A098008.P4523144414809306600

`A098007(n+1)-gcd(A003023(n+1), A044050(n+1))`
-/

namespace A098008.P4523144414809306600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098007 (n + 1) - (Int.gcd (A003023 (n + 1)) (A044050 (n + 1)) : ℤ)

end

end A098008.P4523144414809306600

/-! ## A098008.P6937032953841531773

`and(A023443(A044050(n+1)+(A044050(n+1)-A003023(n+1))^A000010(n+1)), A044050(n+1))`
-/

namespace A098008.P6937032953841531773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023443 (SequenceMachineLib.roundAway ((A044050 (n + 1) : ℚ) + (A044050 (n + 1) - A003023 (n + 1) : ℚ) ^ (A000010 (n + 1) : ℤ))).toNat) (A044050 (n + 1))

end

end A098008.P6937032953841531773

/-! ## A098008.P1858630759674885808

`A098007(n+1)-A093178(A051230(n+1))`
-/

namespace A098008.P1858630759674885808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098007 (n + 1) - A093178 (A051230 (n + 1)).toNat

end

end A098008.P1858630759674885808

/-! ## A098008.P14148023532251543544

`A098007(n+1)-A051903(A100760(n+1))`
-/

namespace A098008.P14148023532251543544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098007 (n + 1) - A051903 (A100760 (n + 1)).toNat

end

end A098008.P14148023532251543544

/-! ## A098008.P9637890963255688624

`A098007(n+1)-A052409(A143577(n+1))`
-/

namespace A098008.P9637890963255688624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098007 (n + 1) - A052409 (A143577 (n + 1)).toNat

end

end A098008.P9637890963255688624

/-! ## A098008.P8483770353659259229

`A098007(n+1)-A193267(A007591(n+1))`
-/

namespace A098008.P8483770353659259229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098007 (n + 1) - A193267 (A007591 (n + 1)).toNat

end

end A098008.P8483770353659259229

/-! ## A098008.P13974782660680587907

`A098007(n+1)-A001511(A089531(n+1))`
-/

namespace A098008.P13974782660680587907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098007 (n + 1) - A001511 (A089531 (n + 1)).toNat

end

end A098008.P13974782660680587907

/-! ## A098008.P15643124537407539178

`A098007(n+1)-A000190(A001359(n+1))`
-/

namespace A098008.P15643124537407539178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098007 (n + 1) - A000190 (A001359 (n + 1)).toNat

end

end A098008.P15643124537407539178

/-! ## A098008.P7427620096683849680

`A098007(n+1)-A038548(A014963(A028262(n)))`
-/

namespace A098008.P7427620096683849680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098007 (n + 1) - A038548 (A014963 (A028262 n).toNat).toNat

end

end A098008.P7427620096683849680

/-! ## A098008.P12856830748200295461

`A098007(n+1)-A054977(A098007(n+1)²)`
-/

namespace A098008.P12856830748200295461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098007 (n + 1) - A054977 (A098007 (n + 1) ^ 2).toNat

end

end A098008.P12856830748200295461

/-! ## A098008.P2953895798740034928

`A098007(n+1)-A057427(A098007(n+1)²)`
-/

namespace A098008.P2953895798740034928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098007 (n + 1) - A057427 (A098007 (n + 1) ^ 2).toNat

end

end A098008.P2953895798740034928

/-! ## A098008.P16547102654276456208

`A098007(n+1)-A001222(A023299(n+1))`
-/

namespace A098008.P16547102654276456208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098007 (n + 1) - A001222 (A023299 (n + 1)).toNat

end

end A098008.P16547102654276456208

/-! ## A098008.P16635093256388231796

`A098007(n+1)-A001222(A250027(n+1))`
-/

namespace A098008.P16635093256388231796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098007 (n + 1) - A001222 (A250027 (n + 1)).toNat

end

end A098008.P16635093256388231796

/-!
# A098009: Numbers k such that the transient part of the aliquot sequence for k is finite and sets a new record.

The programs for A098009, there is no canonical definition to state claims against.
-/

/-! ## A098009.P8597683837632408520

`record[A269387(∑[A338589(n+1)])]`
-/

namespace A098009.P8597683837632408520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338589 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269387 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098009.P8597683837632408520

/-! ## A098009.P15908212704842372113

`A059447(record[A003023(n+1)])`
-/

namespace A098009.P15908212704842372113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059447 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098009.P15908212704842372113

/-! ## A098009.P6076708302657888036

`record[A002260(A268213(n)+3)]`
-/

namespace A098009.P6076708302657888036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A268213 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098009.P6076708302657888036

/-!
# A098010: Record lengths of transient part of aliquot sequences corresponding to entries in A098009.

The programs for A098010, there is no canonical definition to state claims against.
-/

/-! ## A098010.P18227914254671079389

`record[A007906(n+1)]`
-/

namespace A098010.P18227914254671079389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098010.P18227914254671079389

/-! ## A098010.P7434926405583597029

`record[A044050(n+1)]`
-/

namespace A098010.P7434926405583597029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098010.P7434926405583597029

/-! ## A098010.P13676606812222634366

`record[A098008(n+1)]`
-/

namespace A098010.P13676606812222634366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098010.P13676606812222634366

/-! ## A098010.P16177830638732983741

`record[A003023(n+1)+1]`
-/

namespace A098010.P16177830638732983741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003023 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098010.P16177830638732983741

/-!
# A098011: 10^a(n) + 1 = A088773(n).

The programs for A098011, the canonical program `A098011.P713841693835873558` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098011 has offset 1).

The definition of A098011 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098011.P713841693835873558

`ceil(3*2^(n-3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098011

/-- `ceil(3*2^(n-3))` -/
def P713841693835873558.Spec : Prop :=
  ∀ n, P713841693835873558.a n = A098011 (n + 1)

theorem P713841693835873558.correct : P713841693835873558.Spec := by
  intro n
  simp only [A098011, Nat.add_sub_cancel]

end A098011

/-! ## A098011.P15212929708056785230

`ogf((-1+x+x^3)/(-1+2x))`
-/

namespace A098011.P15212929708056785230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, -1] [1, -2] n

end

end A098011.P15212929708056785230

namespace A098011

/-- `ogf((-1+x+x^3)/(-1+2x))` -/
def P15212929708056785230.Spec : Prop :=
  ∀ n, P15212929708056785230.a n = A098011 (n + 1)

end A098011

/-! ## A098011.P6191496475987307597

`2*a(n-1)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A098011.P6191496475987307597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 3] fun n a =>
  2 * a (n - 1)

end

end A098011.P6191496475987307597

namespace A098011

/-- `2*a(n-1)` -/
def P6191496475987307597.Spec : Prop :=
  ∀ n, (P6191496475987307597.a n : ℤ) = A098011 (n + 1)

end A098011

/-! ## A098011.P5726397748883584709

`a(n-1)+a(n-1)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A098011.P5726397748883584709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 3] fun n a =>
  a (n - 1) + a (n - 1)

end

end A098011.P5726397748883584709

namespace A098011

/-- `a(n-1)+a(n-1)` -/
def P5726397748883584709.Spec : Prop :=
  ∀ n, (P5726397748883584709.a n : ℤ) = A098011 (n + 1)

end A098011

/-! ## A098011.P15121354168585980040

`a(n-1)/(1-1/2)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A098011.P15121354168585980040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2, 3] fun n a =>
  a (n - 1) / (1 - (1 : ℚ) / 2)

end

end A098011.P15121354168585980040

namespace A098011

/-- `a(n-1)/(1-1/2)` -/
def P15121354168585980040.Spec : Prop :=
  ∀ n, P15121354168585980040.a n = (A098011 (n + 1) : ℚ)

end A098011

/-! ## A098011.P14335985878958396501

`a(n-1)-(char[3]-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A098011.P14335985878958396501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 1))

end

end A098011.P14335985878958396501

namespace A098011

/-- `a(n-1)-(char[3]-a(n-1))` -/
def P14335985878958396501.Spec : Prop :=
  ∀ n, P14335985878958396501.a n = A098011 (n + 1)

end A098011

/-! ## A098011.P17205183365560107699

`A122391(n)+char[2]`
-/

namespace A098011.P17205183365560107699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122391 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A098011.P17205183365560107699

namespace A098011

/-- `A122391(n)+char[2]` -/
def P17205183365560107699.Spec : Prop :=
  ∀ n, P17205183365560107699.a n = A098011 (n + 1)

end A098011

/-! ## A098011.P13462243851603231898

`A185012(n)+A122391(n)`
-/

namespace A098011.P13462243851603231898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 n + A122391 n

end

end A098011.P13462243851603231898

namespace A098011

/-- `A185012(n)+A122391(n)` -/
def P13462243851603231898.Spec : Prop :=
  ∀ n, P13462243851603231898.a n = A098011 (n + 1)

end A098011

/-! ## A098011.P10882366607639307084

`A328284(n)+A152046(n)`
-/

namespace A098011.P10882366607639307084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328284 n + A152046 n

end

end A098011.P10882366607639307084

namespace A098011

/-- `A328284(n)+A152046(n)` -/
def P10882366607639307084.Spec : Prop :=
  ∀ n, P10882366607639307084.a n = A098011 (n + 1)

end A098011

/-! ## A098011.P3708014567587211016

`A122391(n)*A329684(n)`
-/

namespace A098011.P3708014567587211016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122391 n * A329684 n

end

end A098011.P3708014567587211016

namespace A098011

/-- `A122391(n)*A329684(n)` -/
def P3708014567587211016.Spec : Prop :=
  ∀ n, P3708014567587211016.a n = A098011 (n + 1)

end A098011

/-! ## A098011.P10736967699416166649

`lcm(A014709(n), A122391(n))`
-/

namespace A098011.P10736967699416166649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014709 n) (A122391 n)

end

end A098011.P10736967699416166649

namespace A098011

/-- `lcm(A014709(n), A122391(n))` -/
def P10736967699416166649.Spec : Prop :=
  ∀ n, (P10736967699416166649.a n : ℤ) = A098011 (n + 1)

end A098011

/-! ## A098011.P15794918938849948668

`A328284(A243427(n+1))+A328284(n)`
-/

namespace A098011.P15794918938849948668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328284 (A243427 (n + 1)).toNat + A328284 n

end

end A098011.P15794918938849948668

namespace A098011

/-- `A328284(A243427(n+1))+A328284(n)` -/
def P15794918938849948668.Spec : Prop :=
  ∀ n, P15794918938849948668.a n = A098011 (n + 1)

end A098011

/-! ## A098011.P2344674372176299841

`A063524(n+1)+A328284(n)+A001045(n)`
-/

namespace A098011.P2344674372176299841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 1) + (A328284 n + A001045 n)

end

end A098011.P2344674372176299841

namespace A098011

/-- `A063524(n+1)+A328284(n)+A001045(n)` -/
def P2344674372176299841.Spec : Prop :=
  ∀ n, P2344674372176299841.a n = A098011 (n + 1)

end A098011

/-! ## A098011.P5255720956709960048

`A166444(A153881(n+1)+n)+A166444(n)`
-/

namespace A098011.P5255720956709960048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A153881 (n + 1) + (n : ℤ)).toNat + A166444 n

end

end A098011.P5255720956709960048

namespace A098011

/-- `A166444(A153881(n+1)+n)+A166444(n)` -/
def P5255720956709960048.Spec : Prop :=
  ∀ n, P5255720956709960048.a n = A098011 (n + 1)

end A098011

/-! ## A098011.P18377450283417690539

`floor(A266550(n+1)/2)+1`
-/

namespace A098011.P18377450283417690539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A266550 (n + 1) : ℚ) / 2⌋ + 1

end

end A098011.P18377450283417690539

namespace A098011

/-- `floor(A266550(n+1)/2)+1` -/
def P18377450283417690539.Spec : Prop :=
  ∀ n, P18377450283417690539.a n = A098011 (n + 1)

end A098011

/-! ## A098011.P15334253741808425124

`A164090(A092535(n))/2`
-/

namespace A098011.P15334253741808425124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164090 (A092535 n).toNat : ℚ) / 2

end

end A098011.P15334253741808425124

namespace A098011

/-- `A164090(A092535(n))/2` -/
def P15334253741808425124.Spec : Prop :=
  ∀ n, P15334253741808425124.a n = (A098011 (n + 1) : ℚ)

end A098011

/-! ## A098011.P3209706708593203665

`A111286(n)/A329683(n)`
-/

namespace A098011.P3209706708593203665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111286 n : ℚ) / (A329683 n : ℚ)

end

end A098011.P3209706708593203665

namespace A098011

/-- `A111286(n)/A329683(n)` -/
def P3209706708593203665.Spec : Prop :=
  ∀ n, P3209706708593203665.a n = (A098011 (n + 1) : ℚ)

end A098011

/-! ## A098011.P3961854901481504232

`A111286(n)/A046698(A000007(n)+n)`
-/

namespace A098011.P3961854901481504232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111286 n : ℚ) / (A046698 (A000007 n + (n : ℤ)).toNat : ℚ)

end

end A098011.P3961854901481504232

namespace A098011

/-- `A111286(n)/A046698(A000007(n)+n)` -/
def P3961854901481504232.Spec : Prop :=
  ∀ n, P3961854901481504232.a n = (A098011 (n + 1) : ℚ)

end A098011

/-! ## A098011.P7665131924609874731

`A166444(n+1)+A365062(n+1)-A000079(n)`
-/

namespace A098011.P7665131924609874731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (n + 1) + (A365062 (n + 1) - A000079 n)

end

end A098011.P7665131924609874731

namespace A098011

/-- `A166444(n+1)+A365062(n+1)-A000079(n)` -/
def P7665131924609874731.Spec : Prop :=
  ∀ n, P7665131924609874731.a n = A098011 (n + 1)

end A098011

/-! ## A098011.P14146239608809049139

`A267880(n)-A000225(n)`
-/

namespace A098011.P14146239608809049139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267880 n - A000225 n

end

end A098011.P14146239608809049139

namespace A098011

/-- `A267880(n)-A000225(n)` -/
def P14146239608809049139.Spec : Prop :=
  ∀ n, P14146239608809049139.a n = A098011 (n + 1)

end A098011

/-!
# A098012: Triangle read by rows in which the k-th term in row n (n >= 1, k = 1..n) is Product_{i=0..k-1} prime(n-i).

The programs for A098012, there is no canonical definition to state claims against.
-/

/-! ## A098012.P10985691225647312435

`A248164(A212013(n+1))`
-/

namespace A098012.P10985691225647312435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248164 (A212013 (n + 1)).toNat

end

end A098012.P10985691225647312435

/-! ## A098012.P6868345962025164888

`A248164(∑[A004736(n+1)])`
-/

namespace A098012.P6868345962025164888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248164 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A098012.P6868345962025164888

/-! ## A098012.P2513895579037049465

`A248164(∑[A025581(n)+1])`
-/

namespace A098012.P2513895579037049465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248164 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A098012.P2513895579037049465

/-! ## A098012.P13126149323729225494

`A248164(∑[A008619(A099375(n))])`
-/

namespace A098012.P13126149323729225494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A099375 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248164 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A098012.P13126149323729225494

/-! ## A098012.P8178039494965370725

`A248164(∑[A002260(A278818(n))])`
-/

namespace A098012.P8178039494965370725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A278818 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248164 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A098012.P8178039494965370725

/-! ## A098012.P14099002561143334620

`A248164(∑[A002260(A038722(n+1))])`
-/

namespace A098012.P14099002561143334620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248164 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A098012.P14099002561143334620

/-! ## A098012.P5967741635309610609

`A248164(∑[A000720(A104887(n+1))])`
-/

namespace A098012.P5967741635309610609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A104887 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248164 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A098012.P5967741635309610609

/-! ## A098012.P5811302563288530638

`A248164(eq[2, A248164(n+2)%4]+1)`
-/

namespace A098012.P5811302563288530638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248164 (n + 2)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248164 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A098012.P5811302563288530638

/-! ## A098012.P3787571554659896921

`A381500(A163866(n+1))`
-/

namespace A098012.P3787571554659896921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381500 (A163866 (n + 1)).toNat

end

end A098012.P3787571554659896921

/-! ## A098012.P17550727829800200170

`A019565(A089633(n)+1)`
-/

namespace A098012.P17550727829800200170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A089633 n + 1).toNat

end

end A098012.P17550727829800200170

/-!
# A098013: Differences between consecutive primes that are twice primes.

The programs for A098013, the canonical program `A098013.P2344816386387271385` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098013 has offset 1).

The definition of A098013 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058620, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A098013.P2344816386387271385

`A151800(A058620(n+1))-A058620(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A098013

/-- `A151800(A058620(n+1))-A058620(n+1)` -/
def P2344816386387271385.Spec : Prop :=
  ∀ n, P2344816386387271385.a n = A098013 (n + 1)

theorem P2344816386387271385.correct : P2344816386387271385.Spec := by
  intro n
  simp only [A098013, Nat.add_sub_cancel]

end A098013

/-! ## A098013.P12426326594938348369

`A001223(A098015(n+1))`
-/

namespace A098013.P12426326594938348369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A098015 (n + 1)).toNat

end

end A098013.P12426326594938348369

namespace A098013

/-- `A001223(A098015(n+1))` -/
def P12426326594938348369.Spec : Prop :=
  ∀ n, P12426326594938348369.a n = A098013 (n + 1)

end A098013

/-! ## A098013.P16610945341355151880

`2*p?[A004525(A001223(n+1))]`
-/

namespace A098013.P16610945341355151880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A001223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098013.P16610945341355151880

namespace A098013

/-- `2*p?[A004525(A001223(n+1))]` -/
def P16610945341355151880.Spec : Prop :=
  ∀ n, P16610945341355151880.a n = A098013 (n + 1)

end A098013

/-! ## A098013.P2436791864183258875

`2*p?[A001281(A001223(n+2))]`
-/

namespace A098013.P2436791864183258875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A001223 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098013.P2436791864183258875

namespace A098013

/-- `2*p?[A001281(A001223(n+2))]` -/
def P2436791864183258875.Spec : Prop :=
  ∀ n, P2436791864183258875.a n = A098013 (n + 1)

end A098013

/-! ## A098013.P2673561106463860682

`A243153(n+1)-A058620(n+1)`
-/

namespace A098013.P2673561106463860682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243153 (n + 1) - A058620 (n + 1)

end

end A098013.P2673561106463860682

namespace A098013

/-- `A243153(n+1)-A058620(n+1)` -/
def P2673561106463860682.Spec : Prop :=
  ∀ n, P2673561106463860682.a n = A098013 (n + 1)

end A098013

/-! ## A098013.P13907102579208687702

`2*p?[A047846(n+2)+1]`
-/

namespace A098013.P13907102579208687702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047846 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098013.P13907102579208687702

namespace A098013

/-- `2*p?[A047846(n+2)+1]` -/
def P13907102579208687702.Spec : Prop :=
  ∀ n, P13907102579208687702.a n = A098013 (n + 1)

end A098013

/-! ## A098013.P16691539896882004410

`2*p?[A028334(n+2)]`
-/

namespace A098013.P16691539896882004410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098013.P16691539896882004410

namespace A098013

/-- `2*p?[A028334(n+2)]` -/
def P16691539896882004410.Spec : Prop :=
  ∀ n, P16691539896882004410.a n = A098013 (n + 1)

end A098013

/-! ## A098013.P11451068898102887286

`2*p?[Δ[A005097(n+1)]]`
-/

namespace A098013.P11451068898102887286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098013.P11451068898102887286

namespace A098013

/-- `2*p?[Δ[A005097(n+1)]]` -/
def P11451068898102887286.Spec : Prop :=
  ∀ n, P11451068898102887286.a n = A098013 (n + 1)

end A098013

/-! ## A098013.P18140044527183620956

`2*p?[Δ[A006254(n+1)]]`
-/

namespace A098013.P18140044527183620956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098013.P18140044527183620956

namespace A098013

/-- `2*p?[Δ[A006254(n+1)]]` -/
def P18140044527183620956.Spec : Prop :=
  ∀ n, P18140044527183620956.a n = A098013 (n + 1)

end A098013

/-! ## A098013.P14129564989715247882

`2*p?[Δ[A067076(n+1)]]`
-/

namespace A098013.P14129564989715247882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098013.P14129564989715247882

namespace A098013

/-- `2*p?[Δ[A067076(n+1)]]` -/
def P14129564989715247882.Spec : Prop :=
  ∀ n, P14129564989715247882.a n = A098013 (n + 1)

end A098013

/-! ## A098013.P11651002735037719052

`2*p?[Δ[A089038(n+1)]]`
-/

namespace A098013.P11651002735037719052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098013.P11651002735037719052

namespace A098013

/-- `2*p?[Δ[A089038(n+1)]]` -/
def P11651002735037719052.Spec : Prop :=
  ∀ n, P11651002735037719052.a n = A098013 (n + 1)

end A098013

/-! ## A098013.P1092869102589171630

`2*p?[Δ[A089192(n+1)]]`
-/

namespace A098013.P1092869102589171630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098013.P1092869102589171630

namespace A098013

/-- `2*p?[Δ[A089192(n+1)]]` -/
def P1092869102589171630.Spec : Prop :=
  ∀ n, P1092869102589171630.a n = A098013 (n + 1)

end A098013

/-! ## A098013.P15013560164603515108

`2*p?[Δ[A089253(n+1)]]`
-/

namespace A098013.P15013560164603515108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098013.P15013560164603515108

namespace A098013

/-- `2*p?[Δ[A089253(n+1)]]` -/
def P15013560164603515108.Spec : Prop :=
  ∀ n, P15013560164603515108.a n = A098013 (n + 1)

end A098013

/-! ## A098013.P233990446426589823

`2*p?[Δ[A097069(n+1)]]`
-/

namespace A098013.P233990446426589823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098013.P233990446426589823

namespace A098013

/-- `2*p?[Δ[A097069(n+1)]]` -/
def P233990446426589823.Spec : Prop :=
  ∀ n, P233990446426589823.a n = A098013 (n + 1)

end A098013

/-! ## A098013.P3691369318581542535

`2*p?[Δ[A097338(n+1)]]`
-/

namespace A098013.P3691369318581542535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098013.P3691369318581542535

namespace A098013

/-- `2*p?[Δ[A097338(n+1)]]` -/
def P3691369318581542535.Spec : Prop :=
  ∀ n, P3691369318581542535.a n = A098013 (n + 1)

end A098013

/-! ## A098013.P14332099172145307536

`2*p?[Δ[A097363(n+1)]]`
-/

namespace A098013.P14332099172145307536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097363 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098013.P14332099172145307536

namespace A098013

/-- `2*p?[Δ[A097363(n+1)]]` -/
def P14332099172145307536.Spec : Prop :=
  ∀ n, P14332099172145307536.a n = A098013 (n + 1)

end A098013

/-! ## A098013.P8585613393176933277

`2*p?[Δ[A097480(n+1)]]`
-/

namespace A098013.P8585613393176933277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097480 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098013.P8585613393176933277

namespace A098013

/-- `2*p?[Δ[A097480(n+1)]]` -/
def P8585613393176933277.Spec : Prop :=
  ∀ n, P8585613393176933277.a n = A098013 (n + 1)

end A098013

/-! ## A098013.P2531286259264671435

`2*p?[Δ[A097932(n+1)]]`
-/

namespace A098013.P2531286259264671435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097932 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098013.P2531286259264671435

namespace A098013

/-- `2*p?[Δ[A097932(n+1)]]` -/
def P2531286259264671435.Spec : Prop :=
  ∀ n, P2531286259264671435.a n = A098013 (n + 1)

end A098013

/-!
# A098014: A098013/2.

The programs for A098014, the canonical program `A098014.P11442637500900151086` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098014 has offset 1).

The definition of A098014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098014.P796907889586237922

`p?[A028334(n+2)]`
-/

namespace A098014.P796907889586237922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098014.P796907889586237922

namespace A098014

/-- `p?[A028334(n+2)]` -/
def P796907889586237922.Spec : Prop :=
  ∀ n, P796907889586237922.a n = A098014 (n + 1)

end A098014

/-! ## A098014.P13024424292325820368

`A098013(n+1)/2`
-/

namespace A098014.P13024424292325820368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098013 (n + 1) : ℚ) / 2

end

end A098014.P13024424292325820368

namespace A098014

/-- `A098013(n+1)/2` -/
def P13024424292325820368.Spec : Prop :=
  ∀ n, P13024424292325820368.a n = (A098014 (n + 1) : ℚ)

end A098014

/-! ## A098014.P1325380819129005742

`p?[Δ[A005097(n+1)]]`
-/

namespace A098014.P1325380819129005742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098014.P1325380819129005742

namespace A098014

/-- `p?[Δ[A005097(n+1)]]` -/
def P1325380819129005742.Spec : Prop :=
  ∀ n, P1325380819129005742.a n = A098014 (n + 1)

end A098014

/-! ## A098014.P11442637500900151086

`p?[Δ[A006254(n+1)]]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A098014

/-- `p?[Δ[A006254(n+1)]]` -/
def P11442637500900151086.Spec : Prop :=
  ∀ n, P11442637500900151086.a n = A098014 (n + 1)

theorem P11442637500900151086.correct : P11442637500900151086.Spec := by
  intro n
  simp only [A098014, Nat.add_sub_cancel]

end A098014

/-! ## A098014.P414111453021864143

`p?[Δ[A067076(n+1)]]`
-/

namespace A098014.P414111453021864143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098014.P414111453021864143

namespace A098014

/-- `p?[Δ[A067076(n+1)]]` -/
def P414111453021864143.Spec : Prop :=
  ∀ n, P414111453021864143.a n = A098014 (n + 1)

theorem P414111453021864143.correct : P414111453021864143.Spec := by
  intro n
  simp only [A098014, Nat.add_sub_cancel, A098014.P414111453021864143.f2, A098014.P414111453021864143.f1, A098014.P414111453021864143.a, A098014.P11442637500900151086.f2, A098014.P11442637500900151086.f1, A098014.P11442637500900151086.a, A006254, A006254.P17336495081768971287.a, A067076, A067076.P14247190955968615804.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098014

/-! ## A098014.P2862843813678162221

`p?[Δ[A089038(n+1)]]`
-/

namespace A098014.P2862843813678162221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098014.P2862843813678162221

namespace A098014

/-- `p?[Δ[A089038(n+1)]]` -/
def P2862843813678162221.Spec : Prop :=
  ∀ n, P2862843813678162221.a n = A098014 (n + 1)

end A098014

/-! ## A098014.P11466675436032930012

`p?[Δ[A089192(n+1)]]`
-/

namespace A098014.P11466675436032930012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098014.P11466675436032930012

namespace A098014

/-- `p?[Δ[A089192(n+1)]]` -/
def P11466675436032930012.Spec : Prop :=
  ∀ n, P11466675436032930012.a n = A098014 (n + 1)

theorem P11466675436032930012.correct : P11466675436032930012.Spec := by
  intro n
  simp only [A098014, Nat.add_sub_cancel, A098014.P11466675436032930012.f2, A098014.P11466675436032930012.f1, A098014.P11466675436032930012.a, A098014.P11442637500900151086.f2, A098014.P11442637500900151086.f1, A098014.P11442637500900151086.a, A006254, A006254.P17336495081768971287.a, A089192, A089192.P5097066678155882464.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098014

/-! ## A098014.P7873954206532447597

`p?[Δ[A089253(n+1)]]`
-/

namespace A098014.P7873954206532447597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098014.P7873954206532447597

namespace A098014

/-- `p?[Δ[A089253(n+1)]]` -/
def P7873954206532447597.Spec : Prop :=
  ∀ n, P7873954206532447597.a n = A098014 (n + 1)

theorem P7873954206532447597.correct : P7873954206532447597.Spec := by
  intro n
  simp only [A098014, Nat.add_sub_cancel, A098014.P7873954206532447597.f2, A098014.P7873954206532447597.f1, A098014.P7873954206532447597.a, A098014.P11442637500900151086.f2, A098014.P11442637500900151086.f1, A098014.P11442637500900151086.a, A006254, A006254.P17336495081768971287.a, A089253, A089253.P9623062397135395528.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A067076, A067076.P14247190955968615804.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098014

/-! ## A098014.P6755490843798234633

`p?[Δ[A097069(n+1)]]`
-/

namespace A098014.P6755490843798234633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098014.P6755490843798234633

namespace A098014

/-- `p?[Δ[A097069(n+1)]]` -/
def P6755490843798234633.Spec : Prop :=
  ∀ n, P6755490843798234633.a n = A098014 (n + 1)

theorem P6755490843798234633.correct : P6755490843798234633.Spec := by
  intro n
  simp only [A098014, Nat.add_sub_cancel, A098014.P6755490843798234633.f2, A098014.P6755490843798234633.f1, A098014.P6755490843798234633.a, A098014.P11442637500900151086.f2, A098014.P11442637500900151086.f1, A098014.P11442637500900151086.a, A006254, A006254.P17336495081768971287.a, A097069, A097069.P18192174897570610825.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A089192, A089192.P5097066678155882464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098014

/-! ## A098014.P2024948592806753079

`p?[Δ[A097338(n+1)]]`
-/

namespace A098014.P2024948592806753079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098014.P2024948592806753079

namespace A098014

/-- `p?[Δ[A097338(n+1)]]` -/
def P2024948592806753079.Spec : Prop :=
  ∀ n, P2024948592806753079.a n = A098014 (n + 1)

theorem P2024948592806753079.correct : P2024948592806753079.Spec := by
  intro n
  simp only [A098014, Nat.add_sub_cancel, A098014.P2024948592806753079.f2, A098014.P2024948592806753079.f1, A098014.P2024948592806753079.a, A098014.P11442637500900151086.f2, A098014.P11442637500900151086.f1, A098014.P11442637500900151086.a, A006254, A006254.P17336495081768971287.a, A097338, A097338.P887064449779485792.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A097069, A097069.P18192174897570610825.a, A089192, A089192.P5097066678155882464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098014

/-! ## A098014.P9208159294686635669

`p?[Δ[A097363(n+1)]]`
-/

namespace A098014.P9208159294686635669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097363 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098014.P9208159294686635669

namespace A098014

/-- `p?[Δ[A097363(n+1)]]` -/
def P9208159294686635669.Spec : Prop :=
  ∀ n, P9208159294686635669.a n = A098014 (n + 1)

theorem P9208159294686635669.correct : P9208159294686635669.Spec := by
  intro n
  simp only [A098014, Nat.add_sub_cancel, A098014.P9208159294686635669.f2, A098014.P9208159294686635669.f1, A098014.P9208159294686635669.a, A098014.P11442637500900151086.f2, A098014.P11442637500900151086.f1, A098014.P11442637500900151086.a, A006254, A006254.P17336495081768971287.a, A097363, A097363.P9324045915537457052.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A097338, A097338.P887064449779485792.a, A097069, A097069.P18192174897570610825.a, A089192, A089192.P5097066678155882464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098014

/-! ## A098014.P1448450121782768268

`p?[Δ[A097480(n+1)]]`
-/

namespace A098014.P1448450121782768268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097480 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098014.P1448450121782768268

namespace A098014

/-- `p?[Δ[A097480(n+1)]]` -/
def P1448450121782768268.Spec : Prop :=
  ∀ n, P1448450121782768268.a n = A098014 (n + 1)

end A098014

/-! ## A098014.P15198266742642285167

`p?[Δ[A097932(n+1)]]`
-/

namespace A098014.P15198266742642285167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097932 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098014.P15198266742642285167

namespace A098014

/-- `p?[Δ[A097932(n+1)]]` -/
def P15198266742642285167.Spec : Prop :=
  ∀ n, P15198266742642285167.a n = A098014 (n + 1)

end A098014

/-! ## A098014.P18068505127696679572

`p?[Δ[A098090(n+1)]]`
-/

namespace A098014.P18068505127696679572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098014.P18068505127696679572

namespace A098014

/-- `p?[Δ[A098090(n+1)]]` -/
def P18068505127696679572.Spec : Prop :=
  ∀ n, P18068505127696679572.a n = A098014 (n + 1)

end A098014

/-!
# A098015: Indices x such that (1/2)(prime(x+1) - prime(x)) is prime.

The programs for A098015, the canonical program `A098015.P15060828265845716309` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098015 has offset 1).

The definition of A098015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098015.P15060828265845716309

`eq[2, A001222(A001223(n+1))]+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A098015

/-- `eq[2, A001222(A001223(n+1))]+1` -/
def P15060828265845716309.Spec : Prop :=
  ∀ n, (P15060828265845716309.a n : ℤ) = A098015 (n + 1)

theorem P15060828265845716309.correct : P15060828265845716309.Spec := by
  intro n
  simp only [A098015, Nat.add_sub_cancel]

end A098015

/-! ## A098015.P1776271050919920606

`eq[2, A001222(A074927(n+1))]+1`
-/

namespace A098015.P1776271050919920606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A074927 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A098015.P1776271050919920606

namespace A098015

/-- `eq[2, A001222(A074927(n+1))]+1` -/
def P1776271050919920606.Spec : Prop :=
  ∀ n, (P1776271050919920606.a n : ℤ) = A098015 (n + 1)

end A098015

/-! ## A098015.P9928535050308523202

`eq[2, A001222(Δ[A028815(n)])]`
-/

namespace A098015.P9928535050308523202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f3 (n + 1) - f3 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098015.P9928535050308523202

namespace A098015

/-- `eq[2, A001222(Δ[A028815(n)])]` -/
def P9928535050308523202.Spec : Prop :=
  ∀ n, (P9928535050308523202.a n : ℤ) = A098015 (n + 1)

end A098015

/-! ## A098015.P16867259336937657198

`eq[2, A001055(A054541(n+1))]`
-/

namespace A098015.P16867259336937657198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A054541 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098015.P16867259336937657198

namespace A098015

/-- `eq[2, A001055(A054541(n+1))]` -/
def P16867259336937657198.Spec : Prop :=
  ∀ n, (P16867259336937657198.a n : ℤ) = A098015 (n + 1)

end A098015

/-! ## A098015.P12555261080864377117

`eq[2, A001222(A125266(n+1))]`
-/

namespace A098015.P12555261080864377117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A125266 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098015.P12555261080864377117

namespace A098015

/-- `eq[2, A001222(A125266(n+1))]` -/
def P12555261080864377117.Spec : Prop :=
  ∀ n, (P12555261080864377117.a n : ℤ) = A098015 (n + 1)

end A098015

/-! ## A098015.P15870248217629120317

`eq[2, A001222(Δ[A299763(n+1)])]`
-/

namespace A098015.P15870248217629120317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f3 (n + 1) - f3 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098015.P15870248217629120317

namespace A098015

/-- `eq[2, A001222(Δ[A299763(n+1)])]` -/
def P15870248217629120317.Spec : Prop :=
  ∀ n, (P15870248217629120317.a n : ℤ) = A098015 (n + 1)

end A098015

/-! ## A098015.P7466033943000682543

`A000720(A058620(n+1))`
-/

namespace A098015.P7466033943000682543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A058620 (n + 1)).toNat

end

end A098015.P7466033943000682543

namespace A098015

/-- `A000720(A058620(n+1))` -/
def P7466033943000682543.Spec : Prop :=
  ∀ n, P7466033943000682543.a n = A098015 (n + 1)

end A098015

/-! ## A098015.P13125547500923975242

`A000720(A225461(n+1))`
-/

namespace A098015.P13125547500923975242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A225461 (n + 1)).toNat

end

end A098015.P13125547500923975242

namespace A098015

/-- `A000720(A225461(n+1))` -/
def P13125547500923975242.Spec : Prop :=
  ∀ n, P13125547500923975242.a n = A098015 (n + 1)

end A098015

/-! ## A098015.P6332264419014530788

`A033270(A243153(n+1))`
-/

namespace A098015.P6332264419014530788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A243153 (n + 1)).toNat

end

end A098015.P6332264419014530788

namespace A098015

/-- `A033270(A243153(n+1))` -/
def P6332264419014530788.Spec : Prop :=
  ∀ n, P6332264419014530788.a n = A098015 (n + 1)

end A098015

/-!
# A098016: Indices x such that (1/4)(prime(x+1) + prime(x)) is prime.

The programs for A098016, there is no canonical definition to state claims against.
-/

/-! ## A098016.P14596677572965746080

`A000720(2*A118134(n+1))`
-/

namespace A098016.P14596677572965746080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * A118134 (n + 1)).toNat

end

end A098016.P14596677572965746080

/-! ## A098016.P7781139290603213353

`A020900(A000720(A118134(n+1)))`
-/

namespace A098016.P7781139290603213353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020900 (A000720 (A118134 (n + 1)).toNat).toNat

end

end A098016.P7781139290603213353

/-! ## A098016.P11290458191634064151

`A000720(A075277(n+1))`
-/

namespace A098016.P11290458191634064151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A075277 (n + 1)).toNat

end

end A098016.P11290458191634064151

/-! ## A098016.P1922840945666494555

`A000720(A339414(n+1))`
-/

namespace A098016.P1922840945666494555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A339414 (n + 1)).toNat

end

end A098016.P1922840945666494555

/-! ## A098016.P1704623215726441551

`A061395(or(1, A339414(n+1)))`
-/

namespace A098016.P1704623215726441551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A339414 (n + 1))).toNat

end

end A098016.P1704623215726441551

/-! ## A098016.P4761440460208466620

`∑{d}[A339414(n+1), A061395(#)]`
-/

namespace A098016.P4761440460208466620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A098016.P4761440460208466620

/-! ## A098016.P10114614521188038929

`A000720(A118134(n+1)+A118134(n+1))`
-/

namespace A098016.P10114614521188038929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A118134 (n + 1) + A118134 (n + 1)).toNat

end

end A098016.P10114614521188038929

/-! ## A098016.P12871952025360146728

`A061395(2*A339414(n+1))`
-/

namespace A098016.P12871952025360146728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A339414 (n + 1)).toNat

end

end A098016.P12871952025360146728

/-! ## A098016.P14786196141280919104

`A099802(A118134(n+1))`
-/

namespace A098016.P14786196141280919104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (A118134 (n + 1)).toNat

end

end A098016.P14786196141280919104

/-!
# A098018: a(n) = Sum_{k|n, k>=2} mu(k-1), where mu() is the Moebius function.

The programs for A098018, there is no canonical definition to state claims against.
-/

/-! ## A098018.P16080189493114239269

`Δ[-A332509(A028310(n))]`
-/

namespace A098018.P16080189493114239269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A332509 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098018.P16080189493114239269

/-! ## A098018.P669957807617076602

`A332509(A028310(n))-A332509(n+1)`
-/

namespace A098018.P669957807617076602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332509 (A028310 n).toNat - A332509 (n + 1)

end

end A098018.P669957807617076602

/-! ## A098018.P7470263536536798786

`Δ[-A332509(A000007(n)+n)]`
-/

namespace A098018.P7470263536536798786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A332509 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098018.P7470263536536798786

/-! ## A098018.P12117283508633411060

`Δ[-A332509(A065033(2*n))]`
-/

namespace A098018.P12117283508633411060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A332509 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098018.P12117283508633411060

/-! ## A098018.P5994860339786504657

`Δ[-A332509(A123108(2*n))]`
-/

namespace A098018.P5994860339786504657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A332509 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098018.P5994860339786504657

/-! ## A098018.P8152827921049920178

`∑{d}[n+1, A000005(#)*A117163((n+1)/#)]`
-/

namespace A098018.P8152827921049920178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A117163 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A098018.P8152827921049920178

/-! ## A098018.P7052167572750977658

`∑{d}[n+1, A117163(#)*A122667((n+1)/#)]`
-/

namespace A098018.P7052167572750977658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117163 d * A122667 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A098018.P7052167572750977658

/-! ## A098018.P13386689118211993449

`∑{d}[n+1, A117163(#)*A179941((n+1)/#)]`
-/

namespace A098018.P13386689118211993449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117163 d * A179941 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A098018.P13386689118211993449

/-! ## A098018.P14062742671444064339

`∑{d}[n+1, A117163(#)*A184395((n+1)/#)]`
-/

namespace A098018.P14062742671444064339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117163 d * A184395 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A098018.P14062742671444064339

/-! ## A098018.P10447154275353051466

`∑{d}[n+1, A008683(A171173(A000290(#)))]+1`
-/

namespace A098018.P10447154275353051466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (A171173 (A000290 d).toNat).toNat + 1

end

end A098018.P10447154275353051466

/-!
# A098019: Irrational rotation of e as an implicit sequence with an uneven Cantor cartoon.

The programs for A098019, there is no canonical definition to state claims against.
-/

/-! ## A098019.P8836103842068535640

`A191104(n+1)-1`
-/

namespace A098019.P8836103842068535640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191104 (n + 1) - 1

end

end A098019.P8836103842068535640

/-! ## A098019.P14135215761574774912

`A191105(n+5)-14`
-/

namespace A098019.P14135215761574774912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191105 (n + 5) - 14

end

end A098019.P14135215761574774912

/-! ## A098019.P7196929745627554857

`eq[1, A190893(n+1)]`
-/

namespace A098019.P7196929745627554857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190893 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098019.P7196929745627554857

/-! ## A098019.P4969653328536047244

`abs(1-A191104(-xor(n, -1)))`
-/

namespace A098019.P4969653328536047244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A191104 (-Int.xor (n : ℤ) (-1)).toNat|

end

end A098019.P4969653328536047244

/-! ## A098019.P10689203492619576910

`eq[1, floor((3*n+2)/A024572(n+1))]`
-/

namespace A098019.P10689203492619576910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * n + 2 : ℚ) / (A024572 (n + 1) : ℚ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098019.P10689203492619576910

/-! ## A098019.P17770016379821385372

`A023443(A191104(n+1))`
-/

namespace A098019.P17770016379821385372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A191104 (n + 1)).toNat

end

end A098019.P17770016379821385372

/-! ## A098019.P3563555095885765502

`A023444(A191104(n+1)+1)`
-/

namespace A098019.P3563555095885765502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A191104 (n + 1) + 1).toNat

end

end A098019.P3563555095885765502

/-! ## A098019.P10109964199366767412

`A289207(A191104(n+1)+1)`
-/

namespace A098019.P10109964199366767412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A191104 (n + 1) + 1).toNat

end

end A098019.P10109964199366767412

/-! ## A098019.P11928446449728267241

`A023446(A191104(n+1)+3)`
-/

namespace A098019.P11928446449728267241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A191104 (n + 1) + 3).toNat

end

end A098019.P11928446449728267241

/-! ## A098019.P10044558978261947355

`A140106(2*A191104(n+1))`
-/

namespace A098019.P10044558978261947355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A191104 (n + 1)).toNat

end

end A098019.P10044558978261947355

/-!
# A098020: Let f[n] = fractional part of n*Pi and let g[x] = -1 for the range 0<=x<=1/3, g[x] = 0 for the range 1/3<x<=2/3, g[x] = 11 for range 2/3<x<1. Sequence gives all positive integers n such that f[n+2]-2*f[n+1]+f[n]-g[f[n+1]] = 0.

The programs for A098020, there is no canonical definition to state claims against.
-/

/-! ## A098020.P2393025713509705825

`A327300(n+1)-1`
-/

namespace A098020.P2393025713509705825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327300 (n + 1) - 1

end

end A098020.P2393025713509705825

/-! ## A098020.P11413879097717710808

`eq[2, A135296(n+1)]`
-/

namespace A098020.P11413879097717710808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135296 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098020.P11413879097717710808

/-! ## A098020.P11085537526032594793

`comp[n*a(A327298(n))-1]` with `a(0)=1`
-/

namespace A098020.P11085537526032594793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) * f1 (A327298 n).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A098020.P11085537526032594793

/-! ## A098020.P12547774978933094

`eq[n+1, A327298(n+1)+n]`
-/

namespace A098020.P12547774978933094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327298 (n + 1) + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098020.P12547774978933094

/-! ## A098020.P11654269042827390975

`A023443(A327300(n+1))`
-/

namespace A098020.P11654269042827390975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A327300 (n + 1)).toNat

end

end A098020.P11654269042827390975

/-! ## A098020.P8788036927484875078

`record[A327300(A154958(n))-1]`
-/

namespace A098020.P8788036927484875078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327300 (A154958 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098020.P8788036927484875078

/-! ## A098020.P14659944320100244832

`A289207(A327300(n+1)+1)`
-/

namespace A098020.P14659944320100244832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A327300 (n + 1) + 1).toNat

end

end A098020.P14659944320100244832

/-! ## A098020.P6358390493925839489

`A023445(A327300(n+1)+2)`
-/

namespace A098020.P6358390493925839489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A327300 (n + 1) + 2).toNat

end

end A098020.P6358390493925839489

/-! ## A098020.P1878602661236053599

`eq[A327298(n+1), A373565(n)]`
-/

namespace A098020.P1878602661236053599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098020.P1878602661236053599

/-! ## A098020.P17138095198075428463

`A233583(root(A327300(n+1), 2)²)`
-/

namespace A098020.P17138095198075428463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (SequenceMachineLib.roundAway (((A327300 (n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat

end

end A098020.P17138095198075428463

/-!
# A098021: Positions of 0's in the zero-one sequence [n*r+2*r]-[n*r]-[2*r], where r=sqrt(2) and [ ]=floor; see A187967.

The programs for A098021, the canonical program `A098021.P1655931677534323428` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098021 has offset 1).

The definition of A098021 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098021.P1655931677534323428

`3*(n+1)+2*floor((n+1)*sqrt(2))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098021

/-- `3*(n+1)+2*floor((n+1)*sqrt(2))` -/
def P1655931677534323428.Spec : Prop :=
  ∀ n, P1655931677534323428.a n = A098021 (n + 1)

theorem P1655931677534323428.correct : P1655931677534323428.Spec := by
  intro n
  simp only [A098021, Nat.add_sub_cancel]

end A098021

/-! ## A098021.P12544147895901685705

`∑[2*A276864(n+1)-1]`
-/

namespace A098021.P12544147895901685705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276864 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098021.P12544147895901685705

namespace A098021

/-- `∑[2*A276864(n+1)-1]` -/
def P12544147895901685705.Spec : Prop :=
  ∀ n, P12544147895901685705.a n = A098021 (n + 1)

end A098021

/-! ## A098021.P13181482582876145152

`abs(n+1-A286927(n+1))`
-/

namespace A098021.P13181482582876145152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) - A286927 (n + 1)|

end

end A098021.P13181482582876145152

namespace A098021

/-- `abs(n+1-A286927(n+1))` -/
def P13181482582876145152.Spec : Prop :=
  ∀ n, P13181482582876145152.a n = A098021 (n + 1)

end A098021

/-! ## A098021.P3609032071940724913

`∑[A005385(Δ[A001951(n)])]`
-/

namespace A098021.P3609032071940724913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098021.P3609032071940724913

namespace A098021

/-- `∑[A005385(Δ[A001951(n)])]` -/
def P3609032071940724913.Spec : Prop :=
  ∀ n, P3609032071940724913.a n = A098021 (n + 1)

end A098021

/-! ## A098021.P10554450960919974680

`∑[A028281(Δ[A001951(n)])]`
-/

namespace A098021.P10554450960919974680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028281 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098021.P10554450960919974680

namespace A098021

/-- `∑[A028281(Δ[A001951(n)])]` -/
def P10554450960919974680.Spec : Prop :=
  ∀ n, P10554450960919974680.a n = A098021 (n + 1)

end A098021

/-! ## A098021.P10937008614532000837

`∑[A160811(Δ[A001951(n)])]`
-/

namespace A098021.P10937008614532000837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160811 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098021.P10937008614532000837

namespace A098021

/-- `∑[A160811(Δ[A001951(n)])]` -/
def P10937008614532000837.Spec : Prop :=
  ∀ n, P10937008614532000837.a n = A098021 (n + 1)

end A098021

/-! ## A098021.P17839061425291730093

`∑[A229033(Δ[A001951(n)])]`
-/

namespace A098021.P17839061425291730093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229033 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098021.P17839061425291730093

namespace A098021

/-- `∑[A229033(Δ[A001951(n)])]` -/
def P17839061425291730093.Spec : Prop :=
  ∀ n, P17839061425291730093.a n = A098021 (n + 1)

end A098021

/-! ## A098021.P6418630876442927705

`A000027(A286690(n+1)-n)`
-/

namespace A098021.P6418630876442927705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A286690 (n + 1) - (n : ℤ)).toNat

end

end A098021.P6418630876442927705

namespace A098021

/-- `A000027(A286690(n+1)-n)` -/
def P6418630876442927705.Spec : Prop :=
  ∀ n, P6418630876442927705.a n = A098021 (n + 1)

end A098021

/-! ## A098021.P982520956619515438

`∑[A000040(Δ[A001951(n)]+2)]`
-/

namespace A098021.P982520956619515438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f2 (n + 1) - f2 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098021.P982520956619515438

namespace A098021

/-- `∑[A000040(Δ[A001951(n)]+2)]` -/
def P982520956619515438.Spec : Prop :=
  ∀ n, P982520956619515438.a n = A098021 (n + 1)

end A098021

/-! ## A098021.P4027672818493317191

`A187975(n+1)%A188383(n+1)`
-/

namespace A098021.P4027672818493317191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187975 (n + 1)) (A188383 (n + 1))

end

end A098021.P4027672818493317191

namespace A098021

/-- `A187975(n+1)%A188383(n+1)` -/
def P4027672818493317191.Spec : Prop :=
  ∀ n, P4027672818493317191.a n = A098021 (n + 1)

end A098021

/-! ## A098021.P7328818164812153895

`∑[abs(Δ[A188039(n+1)])]`
-/

namespace A098021.P7328818164812153895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188039 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098021.P7328818164812153895

namespace A098021

/-- `∑[abs(Δ[A188039(n+1)])]` -/
def P7328818164812153895.Spec : Prop :=
  ∀ n, P7328818164812153895.a n = A098021 (n + 1)

end A098021

/-! ## A098021.P17227240759564534782

`∑[A000027(Δ[A188039(n+1)])]`
-/

namespace A098021.P17227240759564534782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188039 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098021.P17227240759564534782

namespace A098021

/-- `∑[A000027(Δ[A188039(n+1)])]` -/
def P17227240759564534782.Spec : Prop :=
  ∀ n, P17227240759564534782.a n = A098021 (n + 1)

end A098021

/-! ## A098021.P3172288138317651779

`A188043(A001951(n+1))`
-/

namespace A098021.P3172288138317651779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188043 (A001951 (n + 1)).toNat

end

end A098021.P3172288138317651779

namespace A098021

/-- `A188043(A001951(n+1))` -/
def P3172288138317651779.Spec : Prop :=
  ∀ n, P3172288138317651779.a n = A098021 (n + 1)

end A098021

/-! ## A098021.P3637919026393316379

`A187973(2*(n+1))`
-/

namespace A098021.P3637919026393316379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187973 (2 * (n + 1))

end

end A098021.P3637919026393316379

namespace A098021

/-- `A187973(2*(n+1))` -/
def P3637919026393316379.Spec : Prop :=
  ∀ n, P3637919026393316379.a n = A098021 (n + 1)

end A098021

/-! ## A098021.P10624917794729915508

`A189457(2*(n+1))`
-/

namespace A098021.P10624917794729915508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189457 (2 * (n + 1))

end

end A098021.P10624917794729915508

namespace A098021

/-- `A189457(2*(n+1))` -/
def P10624917794729915508.Spec : Prop :=
  ∀ n, P10624917794729915508.a n = A098021 (n + 1)

end A098021

/-! ## A098021.P13459549232266999594

`A188396(2*(n+1))/2`
-/

namespace A098021.P13459549232266999594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188396 (2 * (n + 1)) : ℚ) / 2

end

end A098021.P13459549232266999594

namespace A098021

/-- `A188396(2*(n+1))/2` -/
def P13459549232266999594.Spec : Prop :=
  ∀ n, P13459549232266999594.a n = (A098021 (n + 1) : ℚ)

end A098021

/-! ## A098021.P4784901222467453161

`∩[A188043(n+1), A189457(n+1)]`
-/

namespace A098021.P4784901222467453161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098021.P4784901222467453161

namespace A098021

/-- `∩[A188043(n+1), A189457(n+1)]` -/
def P4784901222467453161.Spec : Prop :=
  ∀ n, (P4784901222467453161.a n : ℤ) = A098021 (n + 1)

end A098021

/-! ## A098021.P4049729742230380057

`∩[A189457(n+1), A190484(n+1)]`
-/

namespace A098021.P4049729742230380057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098021.P4049729742230380057

namespace A098021

/-- `∩[A189457(n+1), A190484(n+1)]` -/
def P4049729742230380057.Spec : Prop :=
  ∀ n, (P4049729742230380057.a n : ℤ) = A098021 (n + 1)

end A098021

/-! ## A098021.P9221766036020479620

`A003153(A003151(n+1))`
-/

namespace A098021.P9221766036020479620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003153 (A003151 (n + 1)).toNat

end

end A098021.P9221766036020479620

namespace A098021

/-- `A003153(A003151(n+1))` -/
def P9221766036020479620.Spec : Prop :=
  ∀ n, P9221766036020479620.a n = A098021 (n + 1)

end A098021

/-!
# A098022: Irrational rotation of Log(3)/Log(2) as an implicit sequence with an uneven Cantor cartoon.

The programs for A098022, there is no canonical definition to state claims against.
-/

/-! ## A098022.P8765972522708393119

`∑[or(5, Δ[floor(n/log(2))])]`
-/

namespace A098022.P8765972522708393119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.log (2 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 5 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098022.P8765972522708393119

/-! ## A098022.P15639961690191996149

`∑[2*Δ[floor(n/log(2))]+3]`
-/

namespace A098022.P15639961690191996149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.log (2 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098022.P15639961690191996149

/-! ## A098022.P3613693096173918215

`A310412(n+2)-5+n`
-/

namespace A098022.P3613693096173918215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310412 (n + 2) - 5 + (n : ℤ)

end

end A098022.P3613693096173918215

/-! ## A098022.P14602846629082667534

`2*A059542(n+1)+1+n`
-/

namespace A098022.P14602846629082667534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059542 (n + 1) + 1 + (n : ℤ)

end

end A098022.P14602846629082667534

/-! ## A098022.P3776232678096955378

`2*A329834(n+1)+1+n`
-/

namespace A098022.P3776232678096955378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A329834 (n + 1) + 1 + (n : ℤ)

end

end A098022.P3776232678096955378

/-! ## A098022.P6009220036974125272

`A005408(A059542(n+1))+n`
-/

namespace A098022.P6009220036974125272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A059542 (n + 1)).toNat + (n : ℤ)

end

end A098022.P6009220036974125272

/-! ## A098022.P6474834742799040484

`A005408(A329834(n+1))+n`
-/

namespace A098022.P6474834742799040484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A329834 (n + 1)).toNat + (n : ℤ)

end

end A098022.P6474834742799040484

/-! ## A098022.P10526408895848412305

`eq[A022921(n), A093476(n+2)]`
-/

namespace A098022.P10526408895848412305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022921 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093476 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098022.P10526408895848412305

/-! ## A098022.P18057797349119978891

`eq[A093476(n+2), A093476(n+3)]+1`
-/

namespace A098022.P18057797349119978891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093476 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093476 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A098022.P18057797349119978891

/-! ## A098022.P690654260338098133

`lt[A093476(n+2), A093476(A233583(n+1))]`
-/

namespace A098022.P690654260338098133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093476 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093476 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098022.P690654260338098133

/-!
# A098025: p and 2p-1 are both Pythagorean primes, i.e., congruent to 1 (mod 4).

The programs for A098025, there is no canonical definition to state claims against.
-/

/-! ## A098025.P320956561622309589

`4*A320599(n+1)+1`
-/

namespace A098025.P320956561622309589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A320599 (n + 1) + 1

end

end A098025.P320956561622309589

/-! ## A098025.P5990896478804613595

`∩[A005382(n+1), A008846(n+1)]`
-/

namespace A098025.P5990896478804613595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098025.P5990896478804613595

/-! ## A098025.P18248057762752562294

`∩[A008846(n+1), A244111(n+1)]`
-/

namespace A098025.P18248057762752562294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098025.P18248057762752562294

/-! ## A098025.P1365007345131412923

`∩[A008846(n+1), A265394(n+1)]`
-/

namespace A098025.P1365007345131412923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098025.P1365007345131412923

/-! ## A098025.P7726682674165661537

`∩[A005382(n+1), A068228(n+1)]`
-/

namespace A098025.P7726682674165661537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098025.P7726682674165661537

/-! ## A098025.P18240028077635273903

`∩[A068228(n+1), A174568(n+1)]`
-/

namespace A098025.P18240028077635273903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098025.P18240028077635273903

/-! ## A098025.P1861299999600185716

`∩[A068228(n+1), A244111(n+1)]`
-/

namespace A098025.P1861299999600185716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098025.P1861299999600185716

/-! ## A098025.P6113182594530572470

`∩[A068228(n+1), A265394(n+1)]`
-/

namespace A098025.P6113182594530572470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098025.P6113182594530572470

/-! ## A098025.P9598060367624249847

`∩[A005382(n+1), A351537(n+1)]`
-/

namespace A098025.P9598060367624249847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098025.P9598060367624249847

/-! ## A098025.P421762976157645264

`∩[A174568(n+1), A351537(n+1)]`
-/

namespace A098025.P421762976157645264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098025.P421762976157645264

/-! ## A098025.P16246987617623700475

`∩[A244111(n+1), A351537(n+1)]`
-/

namespace A098025.P16246987617623700475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098025.P16246987617623700475

/-! ## A098025.P17092161344689268755

`∩[A265394(n+1), A351537(n+1)]`
-/

namespace A098025.P17092161344689268755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098025.P17092161344689268755

/-! ## A098025.P4690766657965507382

`∩[A005382(n+1), A354467(n+1)]`
-/

namespace A098025.P4690766657965507382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098025.P4690766657965507382

/-! ## A098025.P7412457095733581810

`∩[A244111(n+1), A354467(n+1)]`
-/

namespace A098025.P7412457095733581810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098025.P7412457095733581810

/-! ## A098025.P10161713598130444080

`∩[A005382(n+1), A191218(n+1)]`
-/

namespace A098025.P10161713598130444080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098025.P10161713598130444080

/-! ## A098025.P935082296510504162

`∩[A174568(n+1), A191218(n+1)]`
-/

namespace A098025.P935082296510504162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098025.P935082296510504162

/-! ## A098025.P12964022363092053642

`∩[A191218(n+1), A244111(n+1)]`
-/

namespace A098025.P12964022363092053642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098025.P12964022363092053642

/-! ## A098025.P17221344357976838644

`∩[A191218(n+1), A265394(n+1)]`
-/

namespace A098025.P17221344357976838644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098025.P17221344357976838644

/-! ## A098025.P6496601705630340359

`∩[A068228(n+1), A384020(n+1)]`
-/

namespace A098025.P6496601705630340359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098025.P6496601705630340359

/-!
# A098026: Smallest prime p such that p+1 is the product of exactly n distinct prime numbers.

The programs for A098026, there is no canonical definition to state claims against.
-/

/-! ## A098026.P8097265313047630313

`p?[xor(A066838(n+1), A204217(n+1))]`
-/

namespace A098026.P8097265313047630313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A066838 (n + 1)) (A204217 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098026.P8097265313047630313

/-! ## A098026.P14564558082240084998

`A330734(A057588(n+1))+A007014(n+1)`
-/

namespace A098026.P14564558082240084998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330734 (A057588 (n + 1)).toNat + A007014 (n + 1)

end

end A098026.P14564558082240084998

/-!
# A098027: Smallest prime p such that p+2 is a product of exactly n distinct primes.

The programs for A098027, there is no canonical definition to state claims against.
-/

/-! ## A098027.P11246112619581508537

`or(1, A067024(n+1))`
-/

namespace A098027.P11246112619581508537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A067024 (n + 1))

end

end A098027.P11246112619581508537

/-! ## A098027.P15672010360785213639

`A067024(n+1)+A000007(n)`
-/

namespace A098027.P15672010360785213639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067024 (n + 1) + A000007 n

end

end A098027.P15672010360785213639

/-! ## A098027.P18352074945304294481

`A067024(n+1)+char[A008600(n)]`
-/

namespace A098027.P18352074945304294481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008600 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067024 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A098027.P18352074945304294481

/-! ## A098027.P11509871878511933669

`A067024(n+1)+A008683(A008574(n))`
-/

namespace A098027.P11509871878511933669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067024 (n + 1) + A008683 (A008574 n).toNat

end

end A098027.P11509871878511933669

/-! ## A098027.P8255800032898444273

`A067024(n+1)+A008683(A016778(n))`
-/

namespace A098027.P8255800032898444273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067024 (n + 1) + A008683 (A016778 n).toNat

end

end A098027.P8255800032898444273

/-!
# A098028: Smallest prime p such that p-2 is a product of exactly n distinct primes.

The programs for A098028, there is no canonical definition to state claims against.
-/

/-! ## A098028.P3992634049817132283

`A083778(A061304(n+2))`
-/

namespace A098028.P3992634049817132283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083778 (A061304 (n + 2)).toNat

end

end A098028.P3992634049817132283

/-!
# A098029: Primes of the form (prime(k)+ prime(k+3))/2.

The programs for A098029, the canonical program `A098029.P12425777026168091225` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098029 has offset 1).

The definition of A098029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 572 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098029.P12425777026168091225

`p?[A052288(n+2)+A024675(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A098029

/-- `p?[A052288(n+2)+A024675(n+1)]` -/
def P12425777026168091225.Spec : Prop :=
  ∀ n, P12425777026168091225.a n = A098029 (n + 1)

theorem P12425777026168091225.correct : P12425777026168091225.Spec := by
  intro n
  simp only [A098029, Nat.add_sub_cancel]

end A098029

/-! ## A098029.P12095170467686478639

`p?[A024675(n+1)-A115061(n+1)]`
-/

namespace A098029.P12095170467686478639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) - A115061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098029.P12095170467686478639

namespace A098029

/-- `p?[A024675(n+1)-A115061(n+1)]` -/
def P12095170467686478639.Spec : Prop :=
  ∀ n, P12095170467686478639.a n = A098029 (n + 1)

end A098029

/-! ## A098029.P13450438122974245401

`p?[A089253(n+1)+A089038(n+3)]`
-/

namespace A098029.P13450438122974245401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1) + A089038 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098029.P13450438122974245401

namespace A098029

/-- `p?[A089253(n+1)+A089038(n+3)]` -/
def P13450438122974245401.Spec : Prop :=
  ∀ n, P13450438122974245401.a n = A098029 (n + 1)

end A098029

/-! ## A098029.P6086946334984879287

`p?[A006254(n+1)+A005097(n+4)]`
-/

namespace A098029.P6086946334984879287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) + A005097 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098029.P6086946334984879287

namespace A098029

/-- `p?[A006254(n+1)+A005097(n+4)]` -/
def P6086946334984879287.Spec : Prop :=
  ∀ n, P6086946334984879287.a n = A098029 (n + 1)

end A098029

/-! ## A098029.P14861916152975887276

`p?[A115061(n+4)+A024675(n+1)]`
-/

namespace A098029.P14861916152975887276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115061 (n + 4) + A024675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098029.P14861916152975887276

namespace A098029

/-- `p?[A115061(n+4)+A024675(n+1)]` -/
def P14861916152975887276.Spec : Prop :=
  ∀ n, P14861916152975887276.a n = A098029 (n + 1)

theorem P14861916152975887276.correct : P14861916152975887276.Spec := by
  intro n
  simp only [A098029, Nat.add_sub_cancel, A098029.P14861916152975887276.f1, A098029.P14861916152975887276.a, A098029.P12425777026168091225.f1, A098029.P12425777026168091225.a, A024675, A024675.P1773648843625354992.a, A052288, A052288.P13034887197585829558.a, A115061, A115061.P11822645177236110390.a, A000007, A000007.P6599383543502402472.a, A001043, A001043.P18269783162673735460.a, A162345, A162345.P16599755805380939880.f1, A162345.P16599755805380939880.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A011974, A011974.P2665693327137284562.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098029

/-! ## A098029.P7605502910119509620

`p?[A024675(n+2)-A162345(n+2)]`
-/

namespace A098029.P7605502910119509620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 2) - A162345 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098029.P7605502910119509620

namespace A098029

/-- `p?[A024675(n+2)-A162345(n+2)]` -/
def P7605502910119509620.Spec : Prop :=
  ∀ n, P7605502910119509620.a n = A098029 (n + 1)

end A098029

/-! ## A098029.P1893483148236555303

`p?[A162345(n+4)+A024675(n+1)]`
-/

namespace A098029.P1893483148236555303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (n + 4) + A024675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098029.P1893483148236555303

namespace A098029

/-- `p?[A162345(n+4)+A024675(n+1)]` -/
def P1893483148236555303.Spec : Prop :=
  ∀ n, P1893483148236555303.a n = A098029 (n + 1)

theorem P1893483148236555303.correct : P1893483148236555303.Spec := by
  intro n
  simp only [A098029, Nat.add_sub_cancel, A098029.P1893483148236555303.f1, A098029.P1893483148236555303.a, A098029.P12425777026168091225.f1, A098029.P12425777026168091225.a, A024675, A024675.P1773648843625354992.a, A052288, A052288.P13034887197585829558.a, A162345, A162345.P16599755805380939880.f1, A162345.P16599755805380939880.a, A001043, A001043.P18269783162673735460.a, A011974, A011974.P2665693327137284562.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098029

/-!
# A098031: Primes p such that p = (prime(n)+ prime(n+4))/2.

The programs for A098031, the canonical program `A098031.P16525975557051663860` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098031 has offset 1).

The definition of A098031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 531 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098031.P16525975557051663860

`p?[A153081(n+1)+A097363(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A098031

/-- `p?[A153081(n+1)+A097363(n+1)]` -/
def P16525975557051663860.Spec : Prop :=
  ∀ n, P16525975557051663860.a n = A098031 (n + 1)

theorem P16525975557051663860.correct : P16525975557051663860.Spec := by
  intro n
  simp only [A098031, Nat.add_sub_cancel]

end A098031

/-! ## A098031.P3609937841139592139

`p?[A005097(n+2)+A089559(n+1)+8]`
-/

namespace A098031.P3609937841139592139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 2) + (A089559 (n + 1) + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098031.P3609937841139592139

namespace A098031

/-- `p?[A005097(n+2)+A089559(n+1)+8]` -/
def P3609937841139592139.Spec : Prop :=
  ∀ n, P3609937841139592139.a n = A098031 (n + 1)

end A098031

/-! ## A098031.P7459259188775960867

`p?[A089253(n+1)+A089038(n+4)]`
-/

namespace A098031.P7459259188775960867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1) + A089038 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098031.P7459259188775960867

namespace A098031

/-- `p?[A089253(n+1)+A089038(n+4)]` -/
def P7459259188775960867.Spec : Prop :=
  ∀ n, P7459259188775960867.a n = A098031 (n + 1)

end A098031

/-! ## A098031.P8323653587892314280

`p?[A006254(n+1)+A005097(n+5)]`
-/

namespace A098031.P8323653587892314280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) + A005097 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098031.P8323653587892314280

namespace A098031

/-- `p?[A006254(n+1)+A005097(n+5)]` -/
def P8323653587892314280.Spec : Prop :=
  ∀ n, P8323653587892314280.a n = A098031 (n + 1)

end A098031

/-! ## A098031.P6046905859860300094

`p?[A032742(A000040(n+1)+A000040(n+5))]`
-/

namespace A098031.P6046905859860300094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A000040 (n + 1) + A000040 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098031.P6046905859860300094

namespace A098031

/-- `p?[A032742(A000040(n+1)+A000040(n+5))]` -/
def P6046905859860300094.Spec : Prop :=
  ∀ n, P6046905859860300094.a n = A098031 (n + 1)

end A098031

/-!
# A098032: Primes p such that p = (prime(n)+ prime(n+5))/2.

The programs for A098032, the canonical program `A098032.P17836810842318808486` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098032 has offset 1).

The definition of A098032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 578 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098032.P9463022512197791272

`p?[A097480(n+1)+A089559(n+1)]`
-/

namespace A098032.P9463022512197791272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097480 (n + 1) + A089559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098032.P9463022512197791272

namespace A098032

/-- `p?[A097480(n+1)+A089559(n+1)]` -/
def P9463022512197791272.Spec : Prop :=
  ∀ n, P9463022512197791272.a n = A098032 (n + 1)

end A098032

/-! ## A098032.P749415622413255147

`p?[A173059(n+1)+A098605(n+1)]`
-/

namespace A098032.P749415622413255147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173059 (n + 1) + A098605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098032.P749415622413255147

namespace A098032

/-- `p?[A173059(n+1)+A098605(n+1)]` -/
def P749415622413255147.Spec : Prop :=
  ∀ n, P749415622413255147.a n = A098032 (n + 1)

end A098032

/-! ## A098032.P15970953033561919348

`p?[A153143(n+1)+A097932(n+2)]`
-/

namespace A098032.P15970953033561919348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153143 (n + 1) + A097932 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098032.P15970953033561919348

namespace A098032

/-- `p?[A153143(n+1)+A097932(n+2)]` -/
def P15970953033561919348.Spec : Prop :=
  ∀ n, P15970953033561919348.a n = A098032 (n + 1)

end A098032

/-! ## A098032.P3647881644905749601

`p?[A105760(n+4)+A089192(n+1)]`
-/

namespace A098032.P3647881644905749601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 4) + A089192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098032.P3647881644905749601

namespace A098032

/-- `p?[A105760(n+4)+A089192(n+1)]` -/
def P3647881644905749601.Spec : Prop :=
  ∀ n, P3647881644905749601.a n = A098032 (n + 1)

end A098032

/-! ## A098032.P17836810842318808486

`p?[A006254(n+1)+A005097(n+6)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A098032

/-- `p?[A006254(n+1)+A005097(n+6)]` -/
def P17836810842318808486.Spec : Prop :=
  ∀ n, P17836810842318808486.a n = A098032 (n + 1)

theorem P17836810842318808486.correct : P17836810842318808486.Spec := by
  intro n
  simp only [A098032, Nat.add_sub_cancel]

end A098032

/-!
# A098033: Parity of p*(p+1)/2 for n-th prime p.

The programs for A098033, the canonical program `A098033.P522710971308267066` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098033 has offset 1).

The definition of A098033 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098033.P522710971308267066

`(A000040(n+1)*(A000040(n+1)+1)/2)%2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098033

/-- `(A000040(n+1)*(A000040(n+1)+1)/2)%2` -/
def P522710971308267066.Spec : Prop :=
  ∀ n, P522710971308267066.a n = A098033 (n + 1)

theorem P522710971308267066.correct : P522710971308267066.Spec := by
  intro n
  simp only [A098033, Nat.add_sub_cancel]

end A098033

/-! ## A098033.P13342644259111958829

`and(1, ∑[A138383(n)])`
-/

namespace A098033.P13342644259111958829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098033.P13342644259111958829

namespace A098033

/-- `and(1, ∑[A138383(n)])` -/
def P13342644259111958829.Spec : Prop :=
  ∀ n, P13342644259111958829.a n = A098033 (n + 1)

end A098033

/-! ## A098033.P5764389216701661975

`A034953(n+1)%2`
-/

namespace A098033.P5764389216701661975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034953 (n + 1)) 2

end

end A098033.P5764389216701661975

namespace A098033

/-- `A034953(n+1)%2` -/
def P5764389216701661975.Spec : Prop :=
  ∀ n, P5764389216701661975.a n = A098033 (n + 1)

end A098033

/-! ## A098033.P11155568251585198155

`A054269(n+1)%2`
-/

namespace A098033.P11155568251585198155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054269 (n + 1)) 2

end

end A098033.P11155568251585198155

namespace A098033

/-- `A054269(n+1)%2` -/
def P11155568251585198155.Spec : Prop :=
  ∀ n, P11155568251585198155.a n = A098033 (n + 1)

end A098033

/-! ## A098033.P13654191219826008662

`A098997(n+1)%2`
-/

namespace A098033.P13654191219826008662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098997 (n + 1)) 2

end

end A098033.P13654191219826008662

namespace A098033

/-- `A098997(n+1)%2` -/
def P13654191219826008662.Spec : Prop :=
  ∀ n, P13654191219826008662.a n = A098033 (n + 1)

end A098033

/-! ## A098033.P11383436699466798105

`A110496(n+1)%2`
-/

namespace A098033.P11383436699466798105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110496 (n + 1)) 2

end

end A098033.P11383436699466798105

namespace A098033

/-- `A110496(n+1)%2` -/
def P11383436699466798105.Spec : Prop :=
  ∀ n, P11383436699466798105.a n = A098033 (n + 1)

end A098033

/-! ## A098033.P13485166248706071075

`A111333(n+1)%2`
-/

namespace A098033.P13485166248706071075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111333 (n + 1)) 2

end

end A098033.P13485166248706071075

namespace A098033

/-- `A111333(n+1)%2` -/
def P13485166248706071075.Spec : Prop :=
  ∀ n, P13485166248706071075.a n = A098033 (n + 1)

end A098033

/-! ## A098033.P8303750408551753501

`A116995(n+1)%2`
-/

namespace A098033.P8303750408551753501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116995 (n + 1)) 2

end

end A098033.P8303750408551753501

namespace A098033

/-- `A116995(n+1)%2` -/
def P8303750408551753501.Spec : Prop :=
  ∀ n, P8303750408551753501.a n = A098033 (n + 1)

end A098033

/-! ## A098033.P11300365160922430473

`A124678(n+1)%2`
-/

namespace A098033.P11300365160922430473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124678 (n + 1)) 2

end

end A098033.P11300365160922430473

namespace A098033

/-- `A124678(n+1)%2` -/
def P11300365160922430473.Spec : Prop :=
  ∀ n, P11300365160922430473.a n = A098033 (n + 1)

end A098033

/-! ## A098033.P3978865584743201700

`A143292(n+1)%2`
-/

namespace A098033.P3978865584743201700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143292 (n + 1)) 2

end

end A098033.P3978865584743201700

namespace A098033

/-- `A143292(n+1)%2` -/
def P3978865584743201700.Spec : Prop :=
  ∀ n, P3978865584743201700.a n = A098033 (n + 1)

end A098033

/-! ## A098033.P11608517678392900043

`A160696(n+1)%2`
-/

namespace A098033.P11608517678392900043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160696 (n + 1)) 2

end

end A098033.P11608517678392900043

namespace A098033

/-- `A160696(n+1)%2` -/
def P11608517678392900043.Spec : Prop :=
  ∀ n, P11608517678392900043.a n = A098033 (n + 1)

end A098033

/-! ## A098033.P14223771879847349309

`A262247(n+1)%2`
-/

namespace A098033.P14223771879847349309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262247 (n + 1)) 2

end

end A098033.P14223771879847349309

namespace A098033

/-- `A262247(n+1)%2` -/
def P14223771879847349309.Spec : Prop :=
  ∀ n, P14223771879847349309.a n = A098033 (n + 1)

end A098033

/-! ## A098033.P10748860250277877599

`A267105(n+1)%2`
-/

namespace A098033.P10748860250277877599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267105 (n + 1)) 2

end

end A098033.P10748860250277877599

namespace A098033

/-- `A267105(n+1)%2` -/
def P10748860250277877599.Spec : Prop :=
  ∀ n, P10748860250277877599.a n = A098033 (n + 1)

end A098033

/-! ## A098033.P2667902821280435870

`A330277(n+1)%2`
-/

namespace A098033.P2667902821280435870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330277 (n + 1)) 2

end

end A098033.P2667902821280435870

namespace A098033

/-- `A330277(n+1)%2` -/
def P2667902821280435870.Spec : Prop :=
  ∀ n, P2667902821280435870.a n = A098033 (n + 1)

end A098033

/-! ## A098033.P17241449492688164076

`A332805(n+1)%2`
-/

namespace A098033.P17241449492688164076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332805 (n + 1)) 2

end

end A098033.P17241449492688164076

namespace A098033

/-- `A332805(n+1)%2` -/
def P17241449492688164076.Spec : Prop :=
  ∀ n, P17241449492688164076.a n = A098033 (n + 1)

end A098033

/-! ## A098033.P735977173436391228

`abs(1-A088978(n+1))`
-/

namespace A098033.P735977173436391228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A088978 (n + 1)|

end

end A098033.P735977173436391228

namespace A098033

/-- `abs(1-A088978(n+1))` -/
def P735977173436391228.Spec : Prop :=
  ∀ n, P735977173436391228.a n = A098033 (n + 1)

end A098033

/-! ## A098033.P15340084942916409864

`1-char[A138971(n+1)]`
-/

namespace A098033.P15340084942916409864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138971 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A098033.P15340084942916409864

namespace A098033

/-- `1-char[A138971(n+1)]` -/
def P15340084942916409864.Spec : Prop :=
  ∀ n, P15340084942916409864.a n = A098033 (n + 1)

end A098033

/-! ## A098033.P7070225445025644946

`char[lt[A023512(n+1), 2]]`
-/

namespace A098033.P7070225445025644946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023512 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A098033.P7070225445025644946

namespace A098033

/-- `char[lt[A023512(n+1), 2]]` -/
def P7070225445025644946.Spec : Prop :=
  ∀ n, (P7070225445025644946.a n : ℤ) = A098033 (n + 1)

end A098033

/-! ## A098033.P3628226914830832685

`gcd(2, A102781(n+1))-1`
-/

namespace A098033.P3628226914830832685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A102781 (n + 1)) : ℤ) - 1

end

end A098033.P3628226914830832685

namespace A098033

/-- `gcd(2, A102781(n+1))-1` -/
def P3628226914830832685.Spec : Prop :=
  ∀ n, P3628226914830832685.a n = A098033 (n + 1)

end A098033

/-! ## A098033.P10269647417827975398

`and(2, A001748(n+1))/2`
-/

namespace A098033.P10269647417827975398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A001748 (n + 1)) : ℚ) / 2

end

end A098033.P10269647417827975398

namespace A098033

/-- `and(2, A001748(n+1))/2` -/
def P10269647417827975398.Spec : Prop :=
  ∀ n, P10269647417827975398.a n = (A098033 (n + 1) : ℚ)

end A098033

/-!
# A098035: a(n) = Sum_{d|n} mu(d+1), where mu() is the Moebius function.

The programs for A098035, the canonical program `A098035.P3859201930447220096` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098035 has offset 1).

The definition of A098035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098035.P7446635173596849184

`∑{d}[n+1, A008683(#+1)]`
-/

namespace A098035.P7446635173596849184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (d + 1)

end

end A098035.P7446635173596849184

namespace A098035

/-- `∑{d}[n+1, A008683(#+1)]` -/
def P7446635173596849184.Spec : Prop :=
  ∀ n, P7446635173596849184.a n = A098035 (n + 1)

end A098035

/-! ## A098035.P3859201930447220096

`∑{d}[n+1, A007423(#+1)-1]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A098035

/-- `∑{d}[n+1, A007423(#+1)-1]` -/
def P3859201930447220096.Spec : Prop :=
  ∀ n, P3859201930447220096.a n = A098035 (n + 1)

theorem P3859201930447220096.correct : P3859201930447220096.Spec := by
  intro n
  simp only [A098035, Nat.add_sub_cancel]

end A098035

/-! ## A098035.P13495558891519009451

`∑{d}[n+1, A062007(#+1)%2]`
-/

namespace A098035.P13495558891519009451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A062007 (d + 1)) 2

end

end A098035.P13495558891519009451

namespace A098035

/-- `∑{d}[n+1, A062007(#+1)%2]` -/
def P13495558891519009451.Spec : Prop :=
  ∀ n, P13495558891519009451.a n = A098035 (n + 1)

end A098035

/-! ## A098035.P12432901370910611712

`∑{d}[n+1, A004718(A074823(#+1))]`
-/

namespace A098035.P12432901370910611712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A004718 (A074823 (d + 1)).toNat

end

end A098035.P12432901370910611712

namespace A098035

/-- `∑{d}[n+1, A004718(A074823(#+1))]` -/
def P12432901370910611712.Spec : Prop :=
  ∀ n, P12432901370910611712.a n = A098035 (n + 1)

end A098035

/-! ## A098035.P9786109912956840172

`∑{d}[n+1, A181434(#+1)]+2`
-/

namespace A098035.P9786109912956840172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A181434 (d + 1) + 2

end

end A098035.P9786109912956840172

namespace A098035

/-- `∑{d}[n+1, A181434(#+1)]+2` -/
def P9786109912956840172.Spec : Prop :=
  ∀ n, P9786109912956840172.a n = A098035 (n + 1)

end A098035

/-! ## A098035.P12122541117823124168

`∑{d}[n+1, A054533(A000124(#))]`
-/

namespace A098035.P12122541117823124168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054533 (A000124 d).toNat

end

end A098035.P12122541117823124168

namespace A098035

/-- `∑{d}[n+1, A054533(A000124(#))]` -/
def P12122541117823124168.Spec : Prop :=
  ∀ n, P12122541117823124168.a n = A098035 (n + 1)

end A098035

/-! ## A098035.P14830390677926874437

`∑{d}[n+1, A054533(A000096(#))]`
-/

namespace A098035.P14830390677926874437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054533 (A000096 d).toNat

end

end A098035.P14830390677926874437

namespace A098035

/-- `∑{d}[n+1, A054533(A000096(#))]` -/
def P14830390677926874437.Spec : Prop :=
  ∀ n, P14830390677926874437.a n = A098035 (n + 1)

end A098035

/-! ## A098035.P11068347434338696392

`∑{d}[n+1, A271102((#+1)²)]`
-/

namespace A098035.P11068347434338696392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A271102 ((d + 1) ^ 2)

end

end A098035.P11068347434338696392

namespace A098035

/-- `∑{d}[n+1, A271102((#+1)²)]` -/
def P11068347434338696392.Spec : Prop :=
  ∀ n, P11068347434338696392.a n = A098035 (n + 1)

end A098035

/-!
# A098037: Number of prime divisors, counted with multiplicity, of the sum of two consecutive primes.

The programs for A098037, the canonical program `A098037.P1041668013125865311` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098037 has offset 1).

The definition of A098037 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A098037.P1041668013125865311

`A001222(A001043(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A098037

/-- `A001222(A001043(n+1))` -/
def P1041668013125865311.Spec : Prop :=
  ∀ n, P1041668013125865311.a n = A098037 (n + 1)

theorem P1041668013125865311.correct : P1041668013125865311.Spec := by
  intro n
  simp only [A098037, Nat.add_sub_cancel]

end A098037

/-! ## A098037.P8671137854193027979

`∑{e}[A011974(n+2), #]`
-/

namespace A098037.P8671137854193027979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A098037.P8671137854193027979

namespace A098037

/-- `∑{e}[A011974(n+2), #]` -/
def P8671137854193027979.Spec : Prop :=
  ∀ n, (P8671137854193027979.a n : ℤ) = A098037 (n + 1)

end A098037

/-! ## A098037.P11369401579526721282

`∑{e}[A162735(n+1), #]+1`
-/

namespace A098037.P11369401579526721282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1

end

end A098037.P11369401579526721282

namespace A098037

/-- `∑{e}[A162735(n+1), #]+1` -/
def P11369401579526721282.Spec : Prop :=
  ∀ n, (P11369401579526721282.a n : ℤ) = A098037 (n + 1)

end A098037

/-! ## A098037.P9902905399473494044

`∑{e}[A069102(n+3), #]`
-/

namespace A098037.P9902905399473494044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069102 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A098037.P9902905399473494044

namespace A098037

/-- `∑{e}[A069102(n+3), #]` -/
def P9902905399473494044.Spec : Prop :=
  ∀ n, (P9902905399473494044.a n : ℤ) = A098037 (n + 1)

end A098037

/-! ## A098037.P11131937198411182419

`∑{e}[A164653(n+3), #]`
-/

namespace A098037.P11131937198411182419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A098037.P11131937198411182419

namespace A098037

/-- `∑{e}[A164653(n+3), #]` -/
def P11131937198411182419.Spec : Prop :=
  ∀ n, (P11131937198411182419.a n : ℤ) = A098037 (n + 1)

end A098037

/-! ## A098037.P8750955983452372806

`A001222(A162735(n+1))+1`
-/

namespace A098037.P8750955983452372806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A162735 (n + 1)).toNat + 1

end

end A098037.P8750955983452372806

namespace A098037

/-- `A001222(A162735(n+1))+1` -/
def P8750955983452372806.Spec : Prop :=
  ∀ n, P8750955983452372806.a n = A098037 (n + 1)

end A098037

/-! ## A098037.P12679651436320470247

`A001222(Δ[A061802(n)])`
-/

namespace A098037.P12679651436320470247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A098037.P12679651436320470247

namespace A098037

/-- `A001222(Δ[A061802(n)])` -/
def P12679651436320470247.Spec : Prop :=
  ∀ n, P12679651436320470247.a n = A098037 (n + 1)

end A098037

/-! ## A098037.P6332362206298836423

`A001222(A011974(n+2))`
-/

namespace A098037.P6332362206298836423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A011974 (n + 2)).toNat

end

end A098037.P6332362206298836423

namespace A098037

/-- `A001222(A011974(n+2))` -/
def P6332362206298836423.Spec : Prop :=
  ∀ n, P6332362206298836423.a n = A098037 (n + 1)

end A098037

/-! ## A098037.P2886850789576623855

`A001222(A164653(n+3))`
-/

namespace A098037.P2886850789576623855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A164653 (n + 3)).toNat

end

end A098037.P2886850789576623855

namespace A098037

/-- `A001222(A164653(n+3))` -/
def P2886850789576623855.Spec : Prop :=
  ∀ n, P2886850789576623855.a n = A098037 (n + 1)

end A098037

/-! ## A098037.P7785219012659507709

`A001222(A076273(n+2)+1)`
-/

namespace A098037.P7785219012659507709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A076273 (n + 2) + 1).toNat

end

end A098037.P7785219012659507709

namespace A098037

/-- `A001222(A076273(n+2)+1)` -/
def P7785219012659507709.Spec : Prop :=
  ∀ n, P7785219012659507709.a n = A098037 (n + 1)

end A098037

/-! ## A098037.P3072356909886920750

`A001222(ceil(2*sqrt(A006094(n+1))))`
-/

namespace A098037.P3072356909886920750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌈2 * Real.sqrt (A006094 (n + 1) : ℝ)⌉.toNat

end

end A098037.P3072356909886920750

namespace A098037

/-- `A001222(ceil(2*sqrt(A006094(n+1))))` -/
def P3072356909886920750.Spec : Prop :=
  ∀ n, P3072356909886920750.a n = A098037 (n + 1)

end A098037

/-! ## A098037.P1383986841858404257

`A001222(round(2*sqrt(A006094(n+1))))`
-/

namespace A098037.P1383986841858404257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (2 * Real.sqrt (A006094 (n + 1) : ℝ))).toNat

end

end A098037.P1383986841858404257

namespace A098037

/-- `A001222(round(2*sqrt(A006094(n+1))))` -/
def P1383986841858404257.Spec : Prop :=
  ∀ n, P1383986841858404257.a n = A098037 (n + 1)

end A098037

/-! ## A098037.P10961063447299946488

`A001222(A061802(n+1)-A061802(n))`
-/

namespace A098037.P10961063447299946488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A061802 (n + 1) - A061802 n).toNat

end

end A098037.P10961063447299946488

namespace A098037

/-- `A001222(A061802(n+1)-A061802(n))` -/
def P10961063447299946488.Spec : Prop :=
  ∀ n, P10961063447299946488.a n = A098037 (n + 1)

end A098037

/-! ## A098037.P2980553834410044358

`A001222(A007504(n+2)-A007504(n))`
-/

namespace A098037.P2980553834410044358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007504 (n + 2) - A007504 n).toNat

end

end A098037.P2980553834410044358

namespace A098037

/-- `A001222(A007504(n+2)-A007504(n))` -/
def P2980553834410044358.Spec : Prop :=
  ∀ n, P2980553834410044358.a n = A098037 (n + 1)

end A098037

/-! ## A098037.P4644817255960813751

`A001222(A065091(n+1)+A000040(n+1))`
-/

namespace A098037.P4644817255960813751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065091 (n + 1) + A000040 (n + 1)).toNat

end

end A098037.P4644817255960813751

namespace A098037

/-- `A001222(A065091(n+1)+A000040(n+1))` -/
def P4644817255960813751.Spec : Prop :=
  ∀ n, P4644817255960813751.a n = A098037 (n + 1)

end A098037

/-! ## A098037.P8394263484759299325

`A001222(A000040(n+1)+A000040(n+2))`
-/

namespace A098037.P8394263484759299325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000040 (n + 1) + A000040 (n + 2)).toNat

end

end A098037.P8394263484759299325

namespace A098037

/-- `A001222(A000040(n+1)+A000040(n+2))` -/
def P8394263484759299325.Spec : Prop :=
  ∀ n, P8394263484759299325.a n = A098037 (n + 1)

end A098037

/-! ## A098037.P6290267208195044619

`A001222(A008864(n+1)+A006093(n+2))`
-/

namespace A098037.P6290267208195044619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008864 (n + 1) + A006093 (n + 2)).toNat

end

end A098037.P6290267208195044619

namespace A098037

/-- `A001222(A008864(n+1)+A006093(n+2))` -/
def P6290267208195044619.Spec : Prop :=
  ∀ n, P6290267208195044619.a n = A098037 (n + 1)

end A098037

/-! ## A098037.P12620204234423494979

`A001222(A006093(n+1)+A065091(n+1)+1)`
-/

namespace A098037.P12620204234423494979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006093 (n + 1) + (A065091 (n + 1) + 1)).toNat

end

end A098037.P12620204234423494979

namespace A098037

/-- `A001222(A006093(n+1)+A065091(n+1)+1)` -/
def P12620204234423494979.Spec : Prop :=
  ∀ n, P12620204234423494979.a n = A098037 (n + 1)

end A098037

/-! ## A098037.P17838330824450592720

`A073093(A162735(n+1))`
-/

namespace A098037.P17838330824450592720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A162735 (n + 1)).toNat

end

end A098037.P17838330824450592720

namespace A098037

/-- `A073093(A162735(n+1))` -/
def P17838330824450592720.Spec : Prop :=
  ∀ n, P17838330824450592720.a n = A098037 (n + 1)

end A098037

/-!
# A098038: Numbers p such that p = (prime(n)+ prime(n+2))/2 is prime for prime indices n=2, 3, 5...

The programs for A098038, there is no canonical definition to state claims against.
-/

/-! ## A098038.P4372547169424417901

`p?[A093667(A000040(n+1))]`
-/

namespace A098038.P4372547169424417901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093667 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098038.P4372547169424417901

/-! ## A098038.P1278218202861626858

`A045344(p?[A064113(n+1)])`
-/

namespace A098038.P1278218202861626858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A098038.P1278218202861626858

/-! ## A098038.P10306761860011283417

`A065091(p?[A064113(n+1)])`
-/

namespace A098038.P10306761860011283417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A098038.P10306761860011283417

/-! ## A098038.P5189934800633416016

`A093667(p?[A064113(n+1)])`
-/

namespace A098038.P5189934800633416016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093667 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A098038.P5189934800633416016

/-! ## A098038.P16601288508569926644

`A000040(p?[A064113(n+1)]+1)`
-/

namespace A098038.P16601288508569926644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A098038.P16601288508569926644

/-!
# A098041: Arithmetic mean of successive Mersenne primes.

The programs for A098041, there is no canonical definition to state claims against.
-/

/-! ## A098041.P1641071629468147232

`A169628(∑[n+2])`
-/

namespace A098041.P1641071629468147232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169628 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098041.P1641071629468147232

/-! ## A098041.P6261843239840724254

`A139234(n+1)+A000668(n+1)`
-/

namespace A098041.P6261843239840724254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139234 (n + 1) + A000668 (n + 1)

end

end A098041.P6261843239840724254

/-! ## A098041.P1289329485467143622

`A343733(n+2)+A139234(n+1)`
-/

namespace A098041.P1289329485467143622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343733 (n + 2) + A139234 (n + 1)

end

end A098041.P1289329485467143622

/-! ## A098041.P14199447333833336632

`A139234(n+1)+sqrt(A133049(n+1))`
-/

namespace A098041.P14199447333833336632
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A139234 (n + 1) : ℝ) + Real.sqrt (A133049 (n + 1) : ℝ)

end

end A098041.P14199447333833336632

/-! ## A098041.P2765539708738811582

`floor(A139228(n+1)/A139231(n+1))`
-/

namespace A098041.P2765539708738811582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139228 (n + 1) : ℚ) / (A139231 (n + 1) : ℚ)⌋

end

end A098041.P2765539708738811582

/-!
# A098042: Primes of the form (prime(prime(k)) + prime(prime(k+1)))/2.

The programs for A098042, the canonical program `A098042.P4605575753571514886` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098042 has offset 1).

The definition of A098042 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098042.P4605575753571514886

`p?[A006450(n+1)-A001057(A073131(n+1))]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A098042

/-- `p?[A006450(n+1)-A001057(A073131(n+1))]` -/
def P4605575753571514886.Spec : Prop :=
  ∀ n, P4605575753571514886.a n = A098042 (n + 1)

theorem P4605575753571514886.correct : P4605575753571514886.Spec := by
  intro n
  simp only [A098042, Nat.add_sub_cancel]

end A098042

/-! ## A098042.P14838464286333238885

`p?[A004525(A006450(n+1)+A006450(n+2))]`
-/

namespace A098042.P14838464286333238885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A006450 (n + 1) + A006450 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098042.P14838464286333238885

namespace A098042

/-- `p?[A004525(A006450(n+1)+A006450(n+2))]` -/
def P14838464286333238885.Spec : Prop :=
  ∀ n, P14838464286333238885.a n = A098042 (n + 1)

end A098042

/-!
# A098043: Primes of the form (prime(prime(k+1)) - prime(prime(k)))/2.

The programs for A098043, the canonical program `A098043.P367051223371950583` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098043 has offset 1).

The definition of A098043 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1687 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098043.P367051223371950583

`p?[A001281(A073131(n+1))]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A098043

/-- `p?[A001281(A073131(n+1))]` -/
def P367051223371950583.Spec : Prop :=
  ∀ n, P367051223371950583.a n = A098043 (n + 1)

theorem P367051223371950583.correct : P367051223371950583.Spec := by
  intro n
  simp only [A098043, Nat.add_sub_cancel]

end A098043

/-! ## A098043.P1171083321368369239

`p?[A004525(A073131(n+2))]`
-/

namespace A098043.P1171083321368369239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A073131 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098043.P1171083321368369239

namespace A098043

/-- `p?[A004525(A073131(n+2))]` -/
def P1171083321368369239.Spec : Prop :=
  ∀ n, P1171083321368369239.a n = A098043 (n + 1)

end A098043

/-! ## A098043.P7087414667340187028

`p?[A078898(Δ[A006450(n+1)])]`
-/

namespace A098043.P7087414667340187028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098043.P7087414667340187028

namespace A098043

/-- `p?[A078898(Δ[A006450(n+1)])]` -/
def P7087414667340187028.Spec : Prop :=
  ∀ n, P7087414667340187028.a n = A098043 (n + 1)

end A098043

/-! ## A098043.P8025144602224374856

`p?[A001057(A073131(n+1)-1)]`
-/

namespace A098043.P8025144602224374856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A073131 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098043.P8025144602224374856

namespace A098043

/-- `p?[A001057(A073131(n+1)-1)]` -/
def P8025144602224374856.Spec : Prop :=
  ∀ n, P8025144602224374856.a n = A098043 (n + 1)

end A098043

/-! ## A098043.P14636369023106063934

`p?[Δ[A005097(p?[2*n+1]-1)]]`
-/

namespace A098043.P14636369023106063934
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098043.P14636369023106063934

namespace A098043

/-- `p?[Δ[A005097(p?[2*n+1]-1)]]` -/
def P14636369023106063934.Spec : Prop :=
  ∀ n, P14636369023106063934.a n = A098043 (n + 1)

end A098043

/-! ## A098043.P16348495461785786899

`p?[Δ[A005097(A006093(n+1))]]`
-/

namespace A098043.P16348495461785786899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (A006093 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098043.P16348495461785786899

namespace A098043

/-- `p?[Δ[A005097(A006093(n+1))]]` -/
def P16348495461785786899.Spec : Prop :=
  ∀ n, P16348495461785786899.a n = A098043 (n + 1)

end A098043

/-! ## A098043.P2040838189377327613

`p?[Δ[A005097(A000040(n+1)-1)]]`
-/

namespace A098043.P2040838189377327613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (A000040 (n + 1) - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098043.P2040838189377327613

namespace A098043

/-- `p?[Δ[A005097(A000040(n+1)-1)]]` -/
def P2040838189377327613.Spec : Prop :=
  ∀ n, P2040838189377327613.a n = A098043 (n + 1)

end A098043

/-!
# A098044: Odd primes p such that Pi_{3,1}(p) = Pi_{3,2}(p) - 1, where Pi_{m,n}(p) denotes the number of primes q <= p with q == n (mod m).

The programs for A098044, there is no canonical definition to state claims against.
-/

/-! ## A098044.P17809199200568492959

`p?[record[A337544((2*n)^(n%2))]]`
-/

namespace A098044.P17809199200568492959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337544 ((2 * n) ^ (n % 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098044.P17809199200568492959

/-! ## A098044.P2671425449432341970

`p?[p?[or(1, 3*n)]*A267134(n+1)]`
-/

namespace A098044.P2671425449432341970
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) * A267134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098044.P2671425449432341970

/-! ## A098044.P15575055061055121732

`A064989(A096449(n+1))`
-/

namespace A098044.P15575055061055121732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A096449 (n + 1)).toNat

end

end A098044.P15575055061055121732

/-! ## A098044.P16092509689624010257

`p?[record[A337544(A016825(n))]]`
-/

namespace A098044.P16092509689624010257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337544 (A016825 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098044.P16092509689624010257

/-!
# A098046: Inverse permutation to A098003.

The programs for A098046, the canonical program `A098046.P1023201019138157329` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098046 has offset 1).

The definition of A098046 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098046.P1023201019138157329

`A085062(A032766(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A098046

/-- `A085062(A032766(n+1))` -/
def P1023201019138157329.Spec : Prop :=
  ∀ n, P1023201019138157329.a n = A098046 (n + 1)

theorem P1023201019138157329.correct : P1023201019138157329.Spec := by
  intro n
  simp only [A098046, Nat.add_sub_cancel]

end A098046

/-! ## A098046.P16546908840563192283

`A085062(A008619(n+1)+n)`
-/

namespace A098046.P16546908840563192283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085062 (A008619 (n + 1) + (n : ℤ)).toNat

end

end A098046.P16546908840563192283

namespace A098046

/-- `A085062(A008619(n+1)+n)` -/
def P16546908840563192283.Spec : Prop :=
  ∀ n, P16546908840563192283.a n = A098046 (n + 1)

end A098046

/-! ## A098046.P14069398845273106892

`floor(A064614(A007494(n)+2)/2)`
-/

namespace A098046.P14069398845273106892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A064614 (A007494 n + 2).toNat : ℚ) / 2⌋

end

end A098046.P14069398845273106892

namespace A098046

/-- `floor(A064614(A007494(n)+2)/2)` -/
def P14069398845273106892.Spec : Prop :=
  ∀ n, P14069398845273106892.a n = A098046 (n + 1)

end A098046

/-! ## A098046.P4402258840482933856

`round(A064614(A007494(n)+2)/2-(-1)^A153733(n))`
-/

namespace A098046.P4402258840482933856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A064614 (A007494 n + 2).toNat : ℚ) / 2 - (-1 : ℚ) ^ (A153733 n : ℤ))

end

end A098046.P4402258840482933856

namespace A098046

/-- `round(A064614(A007494(n)+2)/2-(-1)^A153733(n))` -/
def P4402258840482933856.Spec : Prop :=
  ∀ n, P4402258840482933856.a n = A098046 (n + 1)

end A098046

/-! ## A098046.P4544419460296089641

`ceil(A064614(A007494(n)+2)/2+1-A326810(2*n))`
-/

namespace A098046.P4544419460296089641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A064614 (A007494 n + 2).toNat : ℚ) / 2 + (1 - A326810 (2 * n) : ℚ)⌉

end

end A098046.P4544419460296089641

namespace A098046

/-- `ceil(A064614(A007494(n)+2)/2+1-A326810(2*n))` -/
def P4544419460296089641.Spec : Prop :=
  ∀ n, P4544419460296089641.a n = A098046 (n + 1)

end A098046

/-! ## A098046.P14771128386697381061

`A064614(A007494(n)+2)/2-A087039(A087039(n+1))/2`
-/

namespace A098046.P14771128386697381061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064614 (A007494 n + 2).toNat : ℚ) / 2 - (A087039 (A087039 (n + 1)).toNat : ℚ) / 2

end

end A098046.P14771128386697381061

namespace A098046

/-- `A064614(A007494(n)+2)/2-A087039(A087039(n+1))/2` -/
def P14771128386697381061.Spec : Prop :=
  ∀ n, P14771128386697381061.a n = (A098046 (n + 1) : ℚ)

end A098046

/-! ## A098046.P7123898369234788461

`A004526(A276147(∑[n%2+1]+1))`
-/

namespace A098046.P7123898369234788461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A276147 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A098046.P7123898369234788461

namespace A098046

/-- `A004526(A276147(∑[n%2+1]+1))` -/
def P7123898369234788461.Spec : Prop :=
  ∀ n, P7123898369234788461.a n = A098046 (n + 1)

end A098046

/-! ## A098046.P3679712051609187324

`A004526(A276147(record[(n+1)%3+n]+1))`
-/

namespace A098046.P3679712051609187324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A276147 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A098046.P3679712051609187324

namespace A098046

/-- `A004526(A276147(record[(n+1)%3+n]+1))` -/
def P3679712051609187324.Spec : Prop :=
  ∀ n, P3679712051609187324.a n = A098046 (n + 1)

end A098046

/-! ## A098046.P4540530996672274650

`A028242(A064614(A007494(n)+2))`
-/

namespace A098046.P4540530996672274650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A064614 (A007494 n + 2).toNat).toNat

end

end A098046.P4540530996672274650

namespace A098046

/-- `A028242(A064614(A007494(n)+2))` -/
def P4540530996672274650.Spec : Prop :=
  ∀ n, P4540530996672274650.a n = A098046 (n + 1)

end A098046

/-! ## A098046.P14750049315337924136

`ceil(A064614(A007494(n)+2)/2-A115362(n²))`
-/

namespace A098046.P14750049315337924136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A064614 (A007494 n + 2).toNat : ℚ) / 2 - (A115362 (n ^ 2) : ℚ)⌉

end

end A098046.P14750049315337924136

namespace A098046

/-- `ceil(A064614(A007494(n)+2)/2-A115362(n²))` -/
def P14750049315337924136.Spec : Prop :=
  ∀ n, P14750049315337924136.a n = A098046 (n + 1)

end A098046

/-!
# A098047: Numbers not in A098006.

The programs for A098047, there is no canonical definition to state claims against.
-/

/-! ## A098047.P4036226852033891015

`eq[0, A134765(n)]`
-/

namespace A098047.P4036226852033891015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134765 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098047.P4036226852033891015

/-! ## A098047.P3937506460750023927

`lt[A134765(n), A071045(n)]`
-/

namespace A098047.P3937506460750023927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098047.P3937506460750023927

/-! ## A098047.P3810792443191745860

`lt[A134765(n), A134779(n)]`
-/

namespace A098047.P3810792443191745860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134779 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098047.P3810792443191745860

/-! ## A098047.P14439191663338286730

`lt[A134765(n), A298296(n)]`
-/

namespace A098047.P14439191663338286730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298296 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098047.P14439191663338286730

/-! ## A098047.P3313057489648928934

`lt[A134765(n), A001222(n+1)]`
-/

namespace A098047.P3313057489648928934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098047.P3313057489648928934

/-! ## A098047.P12167623057494653372

`lt[A134765(n), A038502(n+1)]`
-/

namespace A098047.P12167623057494653372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098047.P12167623057494653372

/-! ## A098047.P12542374668998996504

`lt[A134765(n), A134740(n+1)]`
-/

namespace A098047.P12542374668998996504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134740 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098047.P12542374668998996504

/-! ## A098047.P957180372123276454

`lt[A134765(n), A134743(n+1)]`
-/

namespace A098047.P957180372123276454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134743 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098047.P957180372123276454

/-! ## A098047.P14812132852448882211

`lt[A134765(n), A134744(n+1)]`
-/

namespace A098047.P14812132852448882211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134744 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098047.P14812132852448882211

/-! ## A098047.P14033810770526616771

`lt[A134765(n), A057427(2*n)]`
-/

namespace A098047.P14033810770526616771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098047.P14033810770526616771

/-! ## A098047.P5031406725254551254

`lt[A134765(n), A298112(2*n)]`
-/

namespace A098047.P5031406725254551254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298112 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098047.P5031406725254551254

/-! ## A098047.P401325501445588111

`A061395(p?[A008578(n+1)-A134765(n)])`
-/

namespace A098047.P401325501445588111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - A134765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A098047.P401325501445588111

/-! ## A098047.P7448878962741086239

`lt[A134765(n), A014963(4*n+2)]`
-/

namespace A098047.P7448878962741086239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098047.P7448878962741086239

/-! ## A098047.P11738162165028016484

`A061395(p?[A134765(n)+A008578(n+1)])`
-/

namespace A098047.P11738162165028016484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134765 n + A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A098047.P11738162165028016484

/-! ## A098047.P8672309670385230080

`comp[A098006(n+2)]`
-/

namespace A098047.P8672309670385230080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098006 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A098047.P8672309670385230080

/-!
# A098048: Numbers k such that A098037(k) sets a new record. A098037 is the number of prime divisors (counting multiplicity) of the sums of two consecutive primes.

The programs for A098048, there is no canonical definition to state claims against.
-/

/-! ## A098048.P17234376766185512339

`A251600(A065672(n+1)+A000196(n))`
-/

namespace A098048.P17234376766185512339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251600 (A065672 (n + 1) + A000196 n).toNat

end

end A098048.P17234376766185512339

/-! ## A098048.P2319527843467564921

`A251600(A078358(n+1)%A128024(n+1))`
-/

namespace A098048.P2319527843467564921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251600 (Int.tmod (A078358 (n + 1)) (A128024 (n + 1))).toNat

end

end A098048.P2319527843467564921

/-! ## A098048.P11121317418651337040

`A251600(record[A098037(n+1)])`
-/

namespace A098048.P11121317418651337040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251600 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098048.P11121317418651337040

/-! ## A098048.P6413741140639877652

`A251600(A173153(n+1))%A206930(n+1)`
-/

namespace A098048.P6413741140639877652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251600 (A173153 (n + 1)).toNat) (A206930 (n + 1))

end

end A098048.P6413741140639877652

/-!
# A098050: Triangle read by rows: T(n,k) = number of peakless Motzkin paths of length n and containing a total of k level steps H in all UHH...HD's, where U=(1,1), H=(1,0) and D=(1,-1) (can be easily expressed using RNA secondary structure terminology).

The programs for A098050, there is no canonical definition to state claims against.
-/

/-! ## A098050.P12131979540190819621

`A111579(A017353(n)%A351374(n+1))`
-/

namespace A098050.P12131979540190819621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111579 (Int.tmod (A017353 n) (A351374 (n + 1))).toNat

end

end A098050.P12131979540190819621

/-! ## A098050.P10047599232616343154

`A111579(A289207(n))%A017353(A280058(n))`
-/

namespace A098050.P10047599232616343154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111579 (A289207 n).toNat) (A017353 (A280058 n).toNat)

end

end A098050.P10047599232616343154

/-! ## A098050.P5365382347762446632

`A278984(A005361(ceil(2^(n-1))))`
-/

namespace A098050.P5365382347762446632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278984 (A005361 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat

end

end A098050.P5365382347762446632

/-! ## A098050.P14003542840056807976

`A111579(log2(A000010(ceil(2^(n-1)))))`
-/

namespace A098050.P14003542840056807976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111579 (SequenceMachineLib.roundAway (Real.logb 2 (A000010 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat : ℝ))).toNat

end

end A098050.P14003542840056807976

/-! ## A098050.P3181274339306638392

`A111579(A289207(n))^A001222(A075058(n))`
-/

namespace A098050.P3181274339306638392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111579 (A289207 n).toNat : ℚ) ^ (A001222 (A075058 n).toNat : ℤ)

end

end A098050.P3181274339306638392

/-!
# A098051: Number of peakless Motzkin paths with no U H...HU's where U=(1,1) and H=(1,0) (can be easily expressed using RNA secondary structure terminology).

The programs for A098051, there is no canonical definition to state claims against.
-/

/-! ## A098051.P8776070618929763733

`2-∑[1-A166286(n)]-A166286(n)`
-/

namespace A098051.P8776070618929763733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A166286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j - A166286 n

end

end A098051.P8776070618929763733

/-! ## A098051.P18226240651161417608

`A233583(∑[A004149(n)])-1`
-/

namespace A098051.P18226240651161417608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A098051.P18226240651161417608

/-! ## A098051.P15015144393598353375

`A097777(lt[A187257(n), A110333(n)²])`
-/

namespace A098051.P15015144393598353375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110333 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097777 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A098051.P15015144393598353375

/-! ## A098051.P12183869422761491553

`A097777(lt[A326766(n), 11])`
-/

namespace A098051.P12183869422761491553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326766 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097777 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A098051.P12183869422761491553

/-! ## A098051.P17872518363371929145

`A001651(A007477(n)^A246465(n))`
-/

namespace A098051.P17872518363371929145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (SequenceMachineLib.roundAway ((A007477 n : ℚ) ^ (A246465 n : ℤ))).toNat

end

end A098051.P17872518363371929145

/-!
# A098053: Let M={{0,1,0},{0,0,1},{1,1,0}}; a[n_]:=M.a[n-1]-a[n-1].M; a[0]:={{0,1,1},{1,1,2},{1,2,3}}.

The programs for A098053, there is no canonical definition to state claims against.
-/

/-! ## A098053.P12311447369631679582

`gcd(A082447(A161831(n+1)), A113127(n))`
-/

namespace A098053.P12311447369631679582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A082447 (A161831 (n + 1)).toNat) (A113127 n)

end

end A098053.P12311447369631679582

/-! ## A098053.P1814974677085944462

`gcd(A005496(A165704(n)), A348043(n+1))`
-/

namespace A098053.P1814974677085944462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005496 (A165704 n).toNat) (A348043 (n + 1))

end

end A098053.P1814974677085944462

/-! ## A098053.P2016635131750910433

`gcd(A273110(A296019(2*n+5)), A273110(n+1))`
-/

namespace A098053.P2016635131750910433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A273110 (A296019 (2 * n + 5)).toNat) (A273110 (n + 1))

end

end A098053.P2016635131750910433

/-! ## A098053.P12344085254945382587

`A353835(A353859(n)+A059802(n+1))`
-/

namespace A098053.P12344085254945382587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353835 (A353859 n + A059802 (n + 1)).toNat

end

end A098053.P12344085254945382587

/-! ## A098053.P1578795216712346986

`A051903(A033879(n+1)+A005179(n+3))`
-/

namespace A098053.P1578795216712346986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A033879 (n + 1) + A005179 (n + 3)).toNat

end

end A098053.P1578795216712346986

/-!
# A098054: Absolute values of elements of flattened successive matrices B(k), k>=0, read by rows where B(k) = M^k*C where M=[[2, -1], [-1, 1]] and C = [[0, 1], [1, 1]].

The programs for A098054, the canonical program `A098054.P9115985897233041401` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098054 has offset 0).

The definition of A098054 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 964 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098054.P9115985897233041401

`abs(A051792(xor(2, n)+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098054

/-- `abs(A051792(xor(2, n)+1))` -/
def P9115985897233041401.Spec : Prop :=
  ∀ n, P9115985897233041401.a n = A098054 n

theorem P9115985897233041401.correct : P9115985897233041401.Spec := by
  intro n
  simp only [A098054]

end A098054

/-! ## A098054.P5979919663055032978

`A000045(abs(2-ceil(xor(3, n)/2)))`
-/

namespace A098054.P5979919663055032978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |2 - ⌈(Nat.xor 3 n : ℚ) / 2⌉|.toNat

end

end A098054.P5979919663055032978

namespace A098054

/-- `A000045(abs(2-ceil(xor(3, n)/2)))` -/
def P5979919663055032978.Spec : Prop :=
  ∀ n, P5979919663055032978.a n = A098054 n

end A098054

/-! ## A098054.P7004205417633738580

`A000045(abs(floor(n/2)-n%4))`
-/

namespace A098054.P7004205417633738580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |⌊(n : ℚ) / 2⌋ - ((n % 4 : ℕ) : ℤ)|.toNat

end

end A098054.P7004205417633738580

namespace A098054

/-- `A000045(abs(floor(n/2)-n%4))` -/
def P7004205417633738580.Spec : Prop :=
  ∀ n, P7004205417633738580.a n = A098054 n

end A098054

/-! ## A098054.P13752755356238118592

`A000045(abs(and(3, n)-floor(n/2)))`
-/

namespace A098054.P13752755356238118592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |(Nat.land 3 n : ℤ) - ⌊(n : ℚ) / 2⌋|.toNat

end

end A098054.P13752755356238118592

namespace A098054

/-- `A000045(abs(and(3, n)-floor(n/2)))` -/
def P13752755356238118592.Spec : Prop :=
  ∀ n, P13752755356238118592.a n = A098054 n

end A098054

/-! ## A098054.P8840797362551180587

`A000045((or(2, n)-1)%A052938(n))`
-/

namespace A098054.P8840797362551180587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod ((Nat.lor 2 n : ℤ) - 1) (A052938 n)).toNat

end

end A098054.P8840797362551180587

namespace A098054

/-- `A000045((or(2, n)-1)%A052938(n))` -/
def P8840797362551180587.Spec : Prop :=
  ∀ n, P8840797362551180587.a n = A098054 n

end A098054

/-! ## A098054.P7656559079610994121

`A000045(abs(A110654(n)+and(3, n)-n))`
-/

namespace A098054.P7656559079610994121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |A110654 n + ((Nat.land 3 n : ℤ) - (n : ℤ))|.toNat

end

end A098054.P7656559079610994121

namespace A098054

/-- `A000045(abs(A110654(n)+and(3, n)-n))` -/
def P7656559079610994121.Spec : Prop :=
  ∀ n, P7656559079610994121.a n = A098054 n

end A098054

/-! ## A098054.P7722634863432898174

`A000045((1-(and(3, n)-n))%A008619(n+1))`
-/

namespace A098054.P7722634863432898174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (1 - ((Nat.land 3 n : ℤ) - (n : ℤ))) (A008619 (n + 1))).toNat

end

end A098054.P7722634863432898174

namespace A098054

/-- `A000045((1-(and(3, n)-n))%A008619(n+1))` -/
def P7722634863432898174.Spec : Prop :=
  ∀ n, P7722634863432898174.a n = A098054 n

end A098054

/-! ## A098054.P10542308796372650621

`A000045(abs(A004526(n)-A010873(n)))`
-/

namespace A098054.P10542308796372650621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |A004526 n - A010873 n|.toNat

end

end A098054.P10542308796372650621

namespace A098054

/-- `A000045(abs(A004526(n)-A010873(n)))` -/
def P10542308796372650621.Spec : Prop :=
  ∀ n, P10542308796372650621.a n = A098054 n

end A098054

/-! ## A098054.P13375193811454357706

`A000045(abs(A008619(n)-A010883(n)))`
-/

namespace A098054.P13375193811454357706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |A008619 n - A010883 n|.toNat

end

end A098054.P13375193811454357706

namespace A098054

/-- `A000045(abs(A008619(n)-A010883(n)))` -/
def P13375193811454357706.Spec : Prop :=
  ∀ n, P13375193811454357706.a n = A098054 n

end A098054

/-!
# A098055: Let M={{0,1,0},{0,0,1},{1,1,0}}, M0=MatrixPower[(M-IdentityMatrix[3]),2], Det[M0], a[n_]:=M0.a[n-1]; a[0]:={{0,1,1},{1,1,1},{1,1,2}}.

The programs for A098055, there is no canonical definition to state claims against.
-/

/-! ## A098055.P12487059405583999519

`A098082(2*n-A010878(n))`
-/

namespace A098055.P12487059405583999519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098082 ((2 * n : ℤ) - A010878 n).toNat

end

end A098055.P12487059405583999519

/-! ## A098055.P12564997330430114345

`A098082(n-A010878(n)+n)`
-/

namespace A098055.P12564997330430114345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098082 ((n : ℤ) - A010878 n + (n : ℤ)).toNat

end

end A098055.P12564997330430114345

/-! ## A098055.P3769922618233776939

`A098082(n-(A010878(n)-n))`
-/

namespace A098055.P3769922618233776939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098082 ((n : ℤ) - (A010878 n - (n : ℤ))).toNat

end

end A098055.P3769922618233776939

/-!
# A098057: Number of peakless Motzkin paths with no U H^j U, no D H^j D and no D H^jU (j>0), where U=(1,1), D=(1,-1) and H=(1,0) (can be easily expressed using RNA secondary structure terminology).

The programs for A098057, there is no canonical definition to state claims against.
-/

/-! ## A098057.P17611212767245227893

`∑[∑[A329695(n)-1]]+1`
-/

namespace A098057.P17611212767245227893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329695 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A098057.P17611212767245227893

/-! ## A098057.P9341084072090403977

`∑[A329698(abs(1-n))]-n`
-/

namespace A098057.P9341084072090403977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329698 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A098057.P9341084072090403977

/-! ## A098057.P17032763753672928288

`1-∑[∑[A024000(A329695(n))]]`
-/

namespace A098057.P17032763753672928288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A329695 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098057.P17032763753672928288

/-! ## A098057.P8664404785757713704

`A098056(lt[A098050(3*n+4), 12])`
-/

namespace A098057.P8664404785757713704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098050 (3 * n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098056 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A098057.P8664404785757713704

/-! ## A098057.P16455849017546310811

`A079960(n)-A073089(2^n*Δ[n²])`
-/

namespace A098057.P16455849017546310811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079960 n - A073089 ((2 ^ n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A098057.P16455849017546310811

/-!
# A098058: Prime(n) such that 4 does not divide the difference between prime(n) and prime(n+1).

The programs for A098058, the canonical program `A098058.P16596621847938489443` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098058 has offset 1).

The definition of A098058 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5863 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098058.P16596621847938489443

`A000040(∑[A091237(n+1)])`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A098058

/-- `A000040(∑[A091237(n+1)])` -/
def P16596621847938489443.Spec : Prop :=
  ∀ n, P16596621847938489443.a n = A098058 (n + 1)

theorem P16596621847938489443.correct : P16596621847938489443.Spec := by
  intro n
  simp only [A098058, Nat.add_sub_cancel]

end A098058

/-! ## A098058.P15105034696574629661

`A000040(eq[2, and(2, A076368(n+1))])`
-/

namespace A098058.P15105034696574629661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A076368 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098058.P15105034696574629661

namespace A098058

/-- `A000040(eq[2, and(2, A076368(n+1))])` -/
def P15105034696574629661.Spec : Prop :=
  ∀ n, P15105034696574629661.a n = A098058 (n + 1)

end A098058

/-! ## A098058.P8320326158515360544

`A060308(A215523(n+1))`
-/

namespace A098058.P8320326158515360544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A215523 (n + 1)).toNat

end

end A098058.P8320326158515360544

namespace A098058

/-- `A060308(A215523(n+1))` -/
def P8320326158515360544.Spec : Prop :=
  ∀ n, P8320326158515360544.a n = A098058 (n + 1)

end A098058

/-! ## A098058.P14206057305622070301

`A064216(A215523(n+1)+1)`
-/

namespace A098058.P14206057305622070301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A215523 (n + 1) + 1).toNat

end

end A098058.P14206057305622070301

namespace A098058

/-- `A064216(A215523(n+1)+1)` -/
def P14206057305622070301.Spec : Prop :=
  ∀ n, P14206057305622070301.a n = A098058 (n + 1)

end A098058

/-! ## A098058.P17364520056259807178

`p?[n*A073089(A013634(n))]`
-/

namespace A098058.P17364520056259807178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A073089 (A013634 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098058.P17364520056259807178

namespace A098058

/-- `p?[n*A073089(A013634(n))]` -/
def P17364520056259807178.Spec : Prop :=
  ∀ n, P17364520056259807178.a n = A098058 (n + 1)

end A098058

/-! ## A098058.P8653455093171686444

`p?[n*A318453(A013632(n))]`
-/

namespace A098058.P8653455093171686444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A318453 (A013632 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098058.P8653455093171686444

namespace A098058

/-- `p?[n*A318453(A013632(n))]` -/
def P8653455093171686444.Spec : Prop :=
  ∀ n, P8653455093171686444.a n = A098058 (n + 1)

end A098058

/-!
# A098059: Primes preceding gaps divisible by 4.

The programs for A098059, the canonical program `A098059.P11755285612293814488` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098059 has offset 1).

The definition of A098059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4137 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098059.P4118703977833081609

`A000040(eq[1, A237881(n+1)]+1)`
-/

namespace A098059.P4118703977833081609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A098059.P4118703977833081609

namespace A098059

/-- `A000040(eq[1, A237881(n+1)]+1)` -/
def P4118703977833081609.Spec : Prop :=
  ∀ n, P4118703977833081609.a n = A098059 (n + 1)

end A098059

/-! ## A098059.P7585947632163338379

`A000040(eq[0, A125266(n+1)%4])`
-/

namespace A098059.P7585947632163338379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125266 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098059.P7585947632163338379

namespace A098059

/-- `A000040(eq[0, A125266(n+1)%4])` -/
def P7585947632163338379.Spec : Prop :=
  ∀ n, P7585947632163338379.a n = A098059 (n + 1)

end A098059

/-! ## A098059.P16035286747458805200

`A000040(lt[1, val(A023515(n+1), 2)])`
-/

namespace A098059.P16035286747458805200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A023515 (n + 1)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A098059.P16035286747458805200

namespace A098059

/-- `A000040(lt[1, val(A023515(n+1), 2)])` -/
def P16035286747458805200.Spec : Prop :=
  ∀ n, P16035286747458805200.a n = A098059 (n + 1)

end A098059

/-! ## A098059.P11755285612293814488

`A000040(eq[1, A080378(n+1)+1]+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A098059

/-- `A000040(eq[1, A080378(n+1)+1]+1)` -/
def P11755285612293814488.Spec : Prop :=
  ∀ n, P11755285612293814488.a n = A098059 (n + 1)

theorem P11755285612293814488.correct : P11755285612293814488.Spec := by
  intro n
  simp only [A098059, Nat.add_sub_cancel]

end A098059

/-! ## A098059.P6805423857495341628

`A000040(lt[A001223(n+1)%4, 1]+1)`
-/

namespace A098059.P6805423857495341628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001223 (n + 1)) 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A098059.P6805423857495341628

namespace A098059

/-- `A000040(lt[A001223(n+1)%4, 1]+1)` -/
def P6805423857495341628.Spec : Prop :=
  ∀ n, P6805423857495341628.a n = A098059 (n + 1)

end A098059

/-! ## A098059.P11288997240991005859

`A000040(eq[2, and(2, A001043(n+1))]+1)`
-/

namespace A098059.P11288997240991005859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A001043 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A098059.P11288997240991005859

namespace A098059

/-- `A000040(eq[2, and(2, A001043(n+1))]+1)` -/
def P11288997240991005859.Spec : Prop :=
  ∀ n, P11288997240991005859.a n = A098059 (n + 1)

end A098059

/-! ## A098059.P991462544072236965

`A065091(eq[A039702(n+1), A039702(n+2)])`
-/

namespace A098059.P991462544072236965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039702 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A098059.P991462544072236965

namespace A098059

/-- `A065091(eq[A039702(n+1), A039702(n+2)])` -/
def P991462544072236965.Spec : Prop :=
  ∀ n, P991462544072236965.a n = A098059 (n + 1)

end A098059

/-! ## A098059.P12820917669133046857

`A000040(eq[A039702(n+2), A039702(n+1)]+1)`
-/

namespace A098059.P12820917669133046857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039702 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A098059.P12820917669133046857

namespace A098059

/-- `A000040(eq[A039702(n+2), A039702(n+1)]+1)` -/
def P12820917669133046857.Spec : Prop :=
  ∀ n, P12820917669133046857.a n = A098059 (n + 1)

end A098059

/-! ## A098059.P17872883295807578359

`p?[A000040(n+1)*A237881(n+1)]`
-/

namespace A098059.P17872883295807578359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A237881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098059.P17872883295807578359

namespace A098059

/-- `p?[A000040(n+1)*A237881(n+1)]` -/
def P17872883295807578359.Spec : Prop :=
  ∀ n, P17872883295807578359.a n = A098059 (n + 1)

end A098059

/-! ## A098059.P11682040524488748470

`A002374(A072569(n+1))`
-/

namespace A098059.P11682040524488748470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002374 (A072569 (n + 1)).toNat

end

end A098059.P11682040524488748470

namespace A098059

/-- `A002374(A072569(n+1))` -/
def P11682040524488748470.Spec : Prop :=
  ∀ n, P11682040524488748470.a n = A098059 (n + 1)

end A098059

/-! ## A098059.P7162032287812644113

`eq[2*A004524(A013632(n)), A166597(n)]`
-/

namespace A098059.P7162032287812644113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004524 (A013632 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098059.P7162032287812644113

namespace A098059

/-- `eq[2*A004524(A013632(n)), A166597(n)]` -/
def P7162032287812644113.Spec : Prop :=
  ∀ n, (P7162032287812644113.a n : ℤ) = A098059 (n + 1)

end A098059

/-!
# A098061: Primes p such that p - 6 is a product of two consecutive primes.

The programs for A098061, there is no canonical definition to state claims against.
-/

/-! ## A098061.P15158561548497453387

`p?[A023523(n+1)+5]`
-/

namespace A098061.P15158561548497453387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098061.P15158561548497453387

/-! ## A098061.P8221653281276295564

`p?[A006094(n+1)+6]`
-/

namespace A098061.P8221653281276295564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098061.P8221653281276295564

/-! ## A098061.P11012171023758514606

`p?[A023515(n+1)+7]`
-/

namespace A098061.P11012171023758514606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098061.P11012171023758514606

/-! ## A098061.P15285460310868554188

`p?[A124669(n+1)+8]`
-/

namespace A098061.P15285460310868554188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124669 (n + 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098061.P15285460310868554188

/-! ## A098061.P6096912314515824979

`p?[A116570(2*n)+6]`
-/

namespace A098061.P6096912314515824979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 (2 * n) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098061.P6096912314515824979

/-! ## A098061.P10258207231575331751

`p?[record[A006530(n+2)]*p?[2*n+1]+6]`
-/

namespace A098061.P10258207231575331751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098061.P10258207231575331751

/-! ## A098061.P5627205828859952802

`p?[(eq[1, A001222(n+1)]+1)*p?[2*n+1]+6]`
-/

namespace A098061.P5627205828859952802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1) * f4 (SequenceMachineLib.nth (fun j => (f4 j).Prime) n) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A098061.P5627205828859952802

/-! ## A098061.P16823686178757099943

`p?[(lt[A000005(n+2), 3]+2)*p?[2*n+1]+6]`
-/

namespace A098061.P16823686178757099943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2) * f4 (SequenceMachineLib.nth (fun j => (f4 j).Prime) n) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A098061.P16823686178757099943

/-! ## A098061.P9849005057399307363

`p?[A000040(n+1)*A000040(n+2)+6]`
-/

namespace A098061.P9849005057399307363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A000040 (n + 2) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098061.P9849005057399307363

/-!
# A098062: Primes of the form n^2 + 4n + 8.

The programs for A098062, there is no canonical definition to state claims against.
-/

/-! ## A098062.P10370071123884064656

`A005473(n+2)`
-/

namespace A098062.P10370071123884064656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005473 (n + 2)

end

end A098062.P10370071123884064656

/-! ## A098062.P16168720130835810449

`A007591(n+2)²+4`
-/

namespace A098062.P16168720130835810449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 2) ^ 2 + 4

end

end A098062.P16168720130835810449

/-! ## A098062.P2964552239460472699

`record[A005473(A133310(A133310(n)))]`
-/

namespace A098062.P2964552239460472699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005473 (A133310 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098062.P2964552239460472699

/-! ## A098062.P4428346694231558971

`A078370(floor(A007591(n+2)/2))`
-/

namespace A098062.P4428346694231558971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078370 ⌊(A007591 (n + 2) : ℚ) / 2⌋.toNat

end

end A098062.P4428346694231558971

/-! ## A098062.P6950007207803072817

`A013946(A007591(n+2))`
-/

namespace A098062.P6950007207803072817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013946 (A007591 (n + 2)).toNat

end

end A098062.P6950007207803072817

/-! ## A098062.P7377086293291985894

`A087475(A129412(n+1)+3)`
-/

namespace A098062.P7377086293291985894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 (A129412 (n + 1) + 3).toNat

end

end A098062.P7377086293291985894

/-! ## A098062.P2195460769260971321

`∩[A349900(n+2), A078370(n)]`
-/

namespace A098062.P2195460769260971321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349900 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078370 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098062.P2195460769260971321

/-! ## A098062.P18116384632586484055

`∩[A349900(n+2), A087475(n)]`
-/

namespace A098062.P18116384632586484055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349900 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098062.P18116384632586484055

/-! ## A098062.P17519761742640737490

`∩[A308464(n+1), A349900(n+2)]`
-/

namespace A098062.P17519761742640737490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349900 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098062.P17519761742640737490

/-! ## A098062.P7296881900363191256

`∩[A265889(n+2), A078370(n)]`
-/

namespace A098062.P7296881900363191256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265889 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078370 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098062.P7296881900363191256

/-! ## A098062.P13752429044526582137

`∩[A265889(n+2), A087475(n)]`
-/

namespace A098062.P13752429044526582137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265889 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098062.P13752429044526582137

/-! ## A098062.P9803391381302539387

`∩[A265889(n+1), A308464(n+2)]`
-/

namespace A098062.P9803391381302539387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308464 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098062.P9803391381302539387

/-! ## A098062.P8346009922783190009

`∩[A350687(n+2), A078370(n)]`
-/

namespace A098062.P8346009922783190009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350687 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078370 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098062.P8346009922783190009

/-! ## A098062.P1170830001884035306

`∩[A350687(n+2), A087475(n)]`
-/

namespace A098062.P1170830001884035306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350687 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098062.P1170830001884035306

/-! ## A098062.P14887762667148205011

`∩[A308464(n+1), A350687(n+2)]`
-/

namespace A098062.P14887762667148205011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350687 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098062.P14887762667148205011

/-! ## A098062.P7016190242902613725

`p?[(n+2)²+4]`
-/

namespace A098062.P7016190242902613725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2 + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A098062.P7016190242902613725

/-! ## A098062.P5758356831573977971

`record[∑{p}[(n+3)²+4, #]]`
-/

namespace A098062.P5758356831573977971
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 2 + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098062.P5758356831573977971

/-! ## A098062.P17038684020033873502

`or(1, p?[n*(n+4)+8])`
-/

namespace A098062.P17038684020033873502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 4) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A098062.P17038684020033873502

/-! ## A098062.P2077085119142178113

`record[p?[A243883(n+2)]]`
-/

namespace A098062.P2077085119142178113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243883 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098062.P2077085119142178113

/-!
# A098063: Triangle read by rows: T(n,k) = number of peakless Motzkin paths of length n and having k level steps at height >0 (can be easily expressed using RNA secondary structure terminology).

The programs for A098063, there is no canonical definition to state claims against.
-/

/-! ## A098063.P14208297601730179969

`A098010(A098050(n))%A098019(n+2)`
-/

namespace A098063.P14208297601730179969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098010 (A098050 n).toNat) (A098019 (n + 2))

end

end A098063.P14208297601730179969

/-! ## A098063.P11317566915663966171

`A273014(A098050(n)%A273016(n+1))`
-/

namespace A098063.P11317566915663966171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273014 (Int.tmod (A098050 n) (A273016 (n + 1))).toNat

end

end A098063.P11317566915663966171

/-!
# A098065: Minimal span for an absolute difference triangle of distinct entries whose base consists of a sequence of n positive integers.

The programs for A098065, there is no canonical definition to state claims against.
-/

/-! ## A098065.P15517984910851830991

`A226239(n+2)-1`
-/

namespace A098065.P15517984910851830991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226239 (n + 2) - 1

end

end A098065.P15517984910851830991

/-! ## A098065.P17892989659713454914

`∑[abs(Δ[A226239(n+1)])]`
-/

namespace A098065.P17892989659713454914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226239 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098065.P17892989659713454914

/-! ## A098065.P9638736142089107276

`∑[A000027(Δ[A226239(n+1)])]`
-/

namespace A098065.P9638736142089107276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226239 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098065.P9638736142089107276

/-! ## A098065.P14750130630059334179

`∑[A028310(Δ[A226239(n+1)])]`
-/

namespace A098065.P14750130630059334179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226239 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098065.P14750130630059334179

/-!
# A098067: Consider the succession of single digits of the positive integers: 1 2 3 4 5 6 7 8 9 1 0 1 1 1 2 1 3 1 4 1 5 1 6 ... (A007376). This sequence is the lexicographically earliest derangement of the positive integers that produces the same succession of digits.

The programs for A098067, there is no canonical definition to state claims against.
-/

/-! ## A098067.P5647204090977004992

`A097481(n+1)/2`
-/

namespace A098067.P5647204090977004992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097481 (n + 1) : ℚ) / 2

end

end A098067.P5647204090977004992

/-! ## A098067.P5708383017920557770

`A001281(A097481(n+1))`
-/

namespace A098067.P5708383017920557770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A097481 (n + 1)).toNat

end

end A098067.P5708383017920557770

/-! ## A098067.P17201325943562598556

`A004524(A097481(n+1)+1)`
-/

namespace A098067.P17201325943562598556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A097481 (n + 1) + 1).toNat

end

end A098067.P17201325943562598556

/-! ## A098067.P2511252976136979863

`A004526(A097481(n+1)+1)`
-/

namespace A098067.P2511252976136979863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A097481 (n + 1) + 1).toNat

end

end A098067.P2511252976136979863

/-! ## A098067.P9989377738256911960

`A028242(A097481(n+1)+1)`
-/

namespace A098067.P9989377738256911960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A097481 (n + 1) + 1).toNat

end

end A098067.P9989377738256911960

/-! ## A098067.P9576541726590536934

`A057979(A097481(n+1)+1)`
-/

namespace A098067.P9576541726590536934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A097481 (n + 1) + 1).toNat

end

end A098067.P9576541726590536934

/-! ## A098067.P1573851941532180061

`A001057(A097481(n+1)-1)`
-/

namespace A098067.P1573851941532180061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A097481 (n + 1) - 1).toNat

end

end A098067.P1573851941532180061

/-! ## A098067.P1306442574052045716

`A003602(A097481(n+1)-1)`
-/

namespace A098067.P1306442574052045716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A097481 (n + 1) - 1).toNat

end

end A098067.P1306442574052045716

/-! ## A098067.P828032854791018936

`A008619(A097481(n+1)-1)`
-/

namespace A098067.P828032854791018936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A097481 (n + 1) - 1).toNat

end

end A098067.P828032854791018936

/-! ## A098067.P15915233873703182617

`A110654(A097481(n+1)-1)`
-/

namespace A098067.P15915233873703182617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A097481 (n + 1) - 1).toNat

end

end A098067.P15915233873703182617

/-!
# A098069: If C is a self-dual code over Z_4 of length N=24m+n, 1 <= n <= 24, then the minimum Lee weight of C is bounded above by 8m+a(n).

The programs for A098069, there is no canonical definition to state claims against.
-/

/-! ## A098069.P4632089989640100516

`2*A066016(A249817(n+1))`
-/

namespace A098069.P4632089989640100516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066016 (A249817 (n + 1)).toNat

end

end A098069.P4632089989640100516

/-! ## A098069.P994778954064503341

`2*A066016(A249818(n+1))`
-/

namespace A098069.P994778954064503341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066016 (A249818 (n + 1)).toNat

end

end A098069.P994778954064503341

/-! ## A098069.P17035423204096475649

`2*A066016(A250245(n+1))`
-/

namespace A098069.P17035423204096475649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066016 (A250245 (n + 1)).toNat

end

end A098069.P17035423204096475649

/-! ## A098069.P11212613684996372870

`2*A066016(A250247(n+1))`
-/

namespace A098069.P11212613684996372870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066016 (A250247 (n + 1)).toNat

end

end A098069.P11212613684996372870

/-! ## A098069.P10824039293751367834

`2*A066016(A250248(n+1))`
-/

namespace A098069.P10824039293751367834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066016 (A250248 (n + 1)).toNat

end

end A098069.P10824039293751367834

/-!
# A098070: Consider a single king on an infinite chessboard. This sequence gives number of n-move paths when king starting at origin reaches the origin again for the first time at step n.

The programs for A098070, there is no canonical definition to state claims against.
-/

/-! ## A098070.P9282746227244101943

`and(∑[A001333(n)!], A042934(n))`
-/

namespace A098070.P9282746227244101943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A001333 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A042934 n)

end

end A098070.P9282746227244101943

/-! ## A098070.P320992736677709482

`A318505(A201648(n+4))*A318519(n+1)`
-/

namespace A098070.P320992736677709482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318505 (A201648 (n + 4)).toNat * A318519 (n + 1)

end

end A098070.P320992736677709482

/-!
# A098074: Numbers n such that the sum of the first n primes is divisible by n + 1.

The programs for A098074, there is no canonical definition to state claims against.
-/

/-! ## A098074.P4007082659890922355

`eq[1, (A007504(n)+1)%(n+1)]`
-/

namespace A098074.P4007082659890922355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 n + 1) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098074.P4007082659890922355

/-! ## A098074.P11513137593774575697

`eq[n+2, gcd(n+2, A007504(n+1))]+1`
-/

namespace A098074.P11513137593774575697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A007504 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A098074.P11513137593774575697

/-! ## A098074.P12778636316799079333

`eq[1, A014284(n+1)%(n+1)]`
-/

namespace A098074.P12778636316799079333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014284 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098074.P12778636316799079333

/-! ## A098074.P8504494039281888989

`eq[n+1, A237589(n+1)%(n+2)]+1`
-/

namespace A098074.P8504494039281888989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237589 (n + 1)) (n + 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A098074.P8504494039281888989

/-! ## A098074.P4148841896089837218

`eq[A007504(n)%(n+1), A000007(n)]`
-/

namespace A098074.P4148841896089837218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 n) (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098074.P4148841896089837218

/-!
# A098075: Threefold convolution of A004148 (the RNA secondary structure numbers) with itself.

The programs for A098075, there is no canonical definition to state claims against.
-/

/-! ## A098075.P13975906998571394693

`A097779(A008619(2*n+3))+A097779(n+4)`
-/

namespace A098075.P13975906998571394693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097779 (A008619 (2 * n + 3)).toNat + A097779 (n + 4)

end

end A098075.P13975906998571394693

/-! ## A098075.P5340179947947845314

`Δ[Δ[A292460(n)+A089735(n)]]`
-/

namespace A098075.P5340179947947845314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292460 n + A089735 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098075.P5340179947947845314

/-! ## A098075.P10501741062667749962

`Δ[Δ[A004148(n+2)+A004148(n)]]`
-/

namespace A098075.P10501741062667749962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004148 (n + 2) + A004148 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098075.P10501741062667749962

/-! ## A098075.P10946938835409438415

`A097724(∑[n+2]+3)`
-/

namespace A098075.P10946938835409438415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097724 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A098075.P10946938835409438415

/-! ## A098075.P14988825769822834256

`A097724(A340266(n+1))^floor(atan(n+1))`
-/

namespace A098075.P14988825769822834256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097724 (A340266 (n + 1)).toNat : ℚ) ^ (⌊Real.arctan (n + 1 : ℝ)⌋ : ℤ)

end

end A098075.P14988825769822834256

/-!
# A098077: a(n) = n^2*(n+1)*(2*n+1)/3.

The programs for A098077, the canonical program `A098077.P255775982390388265` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098077 has offset 1).

The definition of A098077 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098077.P12747471525708270359

`(n+1)²*(n+2)*(2*(n+1)+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098077.P12747471525708270359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 * (n + 2) * (2 * (n + 1) + 1) : ℚ) / 3

end

end A098077.P12747471525708270359

namespace A098077

/-- `(n+1)²*(n+2)*(2*(n+1)+1)/3` -/
def P12747471525708270359.Spec : Prop :=
  ∀ n, P12747471525708270359.a n = (A098077 (n + 1) : ℚ)

end A098077

/-! ## A098077.P255775982390388265

`2*A108678(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A098077

/-- `2*A108678(n)` -/
def P255775982390388265.Spec : Prop :=
  ∀ n, P255775982390388265.a n = A098077 (n + 1)

theorem P255775982390388265.correct : P255775982390388265.Spec := by
  intro n
  simp only [A098077, Nat.add_sub_cancel]

end A098077

/-! ## A098077.P16711201287205493393

`1/4*A100431(n)`
-/

namespace A098077.P16711201287205493393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (A100431 n : ℚ)

end

end A098077.P16711201287205493393

namespace A098077

/-- `1/4*A100431(n)` -/
def P16711201287205493393.Spec : Prop :=
  ∀ n, P16711201287205493393.a n = (A098077 (n + 1) : ℚ)

end A098077

/-! ## A098077.P17771004063512593517

`∑[∑[C(2*(2*n+1), 2)+1]]`
-/

namespace A098077.P17771004063512593517
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (2 * n + 1)) 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098077.P17771004063512593517

namespace A098077

/-- `∑[∑[C(2*(2*n+1), 2)+1]]` -/
def P17771004063512593517.Spec : Prop :=
  ∀ n, (P17771004063512593517.a n : ℤ) = A098077 (n + 1)

end A098077

/-! ## A098077.P13702796588753645546

`lcm(2, 2*(n+1)*∑[(n+1)²])`
-/

namespace A098077.P13702796588753645546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (2 * ((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A098077.P13702796588753645546

namespace A098077

/-- `lcm(2, 2*(n+1)*∑[(n+1)²])` -/
def P13702796588753645546.Spec : Prop :=
  ∀ n, (P13702796588753645546.a n : ℤ) = A098077 (n + 1)

end A098077

/-! ## A098077.P3508656203934578119

`(n+1)*∑[∑[a(n-1)+4]]` with `a(0)=2`
-/

namespace A098077.P3508656203934578119
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098077.P3508656203934578119

namespace A098077

/-- `(n+1)*∑[∑[a(n-1)+4]]` -/
def P3508656203934578119.Spec : Prop :=
  ∀ n, (P3508656203934578119.a n : ℤ) = A098077 (n + 1)

end A098077

/-! ## A098077.P10034751421415950998

`∑[2*A051662(n)]`
-/

namespace A098077.P10034751421415950998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098077.P10034751421415950998

namespace A098077

/-- `∑[2*A051662(n)]` -/
def P10034751421415950998.Spec : Prop :=
  ∀ n, P10034751421415950998.a n = A098077 (n + 1)

end A098077

/-! ## A098077.P5507849838912482537

`(n+1)*A006331(n+1)`
-/

namespace A098077.P5507849838912482537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006331 (n + 1)

end

end A098077.P5507849838912482537

namespace A098077

/-- `(n+1)*A006331(n+1)` -/
def P5507849838912482537.Spec : Prop :=
  ∀ n, P5507849838912482537.a n = A098077 (n + 1)

end A098077

/-! ## A098077.P11390696176242982026

`A053134(n)+∑[(n+1)²]`
-/

namespace A098077.P11390696176242982026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053134 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A098077.P11390696176242982026

namespace A098077

/-- `A053134(n)+∑[(n+1)²]` -/
def P11390696176242982026.Spec : Prop :=
  ∀ n, P11390696176242982026.a n = A098077 (n + 1)

end A098077

/-! ## A098077.P12445504875206735989

`A213846(n+1)-∑[n+1]`
-/

namespace A098077.P12445504875206735989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213846 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A098077.P12445504875206735989

namespace A098077

/-- `A213846(n+1)-∑[n+1]` -/
def P12445504875206735989.Spec : Prop :=
  ∀ n, P12445504875206735989.a n = A098077 (n + 1)

end A098077

/-! ## A098077.P5669915165422472150

`(n+1)*(A112524(n+1)+1)`
-/

namespace A098077.P5669915165422472150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A112524 (n + 1) + 1)

end

end A098077.P5669915165422472150

namespace A098077

/-- `(n+1)*(A112524(n+1)+1)` -/
def P5669915165422472150.Spec : Prop :=
  ∀ n, P5669915165422472150.a n = A098077 (n + 1)

end A098077

/-! ## A098077.P6059770110764244226

`(n+1)*(A131423(n+1)+n+1)`
-/

namespace A098077.P6059770110764244226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A131423 (n + 1) + (n + 1 : ℤ))

end

end A098077.P6059770110764244226

namespace A098077

/-- `(n+1)*(A131423(n+1)+n+1)` -/
def P6059770110764244226.Spec : Prop :=
  ∀ n, P6059770110764244226.a n = A098077 (n + 1)

end A098077

/-! ## A098077.P8482324607279342725

`A100189(n+1)+A005915(n)`
-/

namespace A098077.P8482324607279342725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100189 (n + 1) + A005915 n

end

end A098077.P8482324607279342725

namespace A098077

/-- `A100189(n+1)+A005915(n)` -/
def P8482324607279342725.Spec : Prop :=
  ∀ n, P8482324607279342725.a n = A098077 (n + 1)

end A098077

/-! ## A098077.P4128958673770943364

`A066804(n+1)+A051797(n)`
-/

namespace A098077.P4128958673770943364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066804 (n + 1) + A051797 n

end

end A098077.P4128958673770943364

namespace A098077

/-- `A066804(n+1)+A051797(n)` -/
def P4128958673770943364.Spec : Prop :=
  ∀ n, P4128958673770943364.a n = A098077 (n + 1)

end A098077

/-! ## A098077.P5089165545012849150

`A187673(n)+A006323(n+1)`
-/

namespace A098077.P5089165545012849150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187673 n + A006323 (n + 1)

end

end A098077.P5089165545012849150

namespace A098077

/-- `A187673(n)+A006323(n+1)` -/
def P5089165545012849150.Spec : Prop :=
  ∀ n, P5089165545012849150.a n = A098077 (n + 1)

end A098077

/-! ## A098077.P15264063570767624639

`A330805(n)+A085786(n+1)`
-/

namespace A098077.P15264063570767624639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330805 n + A085786 (n + 1)

end

end A098077.P15264063570767624639

namespace A098077

/-- `A330805(n)+A085786(n+1)` -/
def P15264063570767624639.Spec : Prop :=
  ∀ n, P15264063570767624639.a n = A098077 (n + 1)

end A098077

/-! ## A098077.P15397931904679877262

`2*A051797(n)-A210440(n)`
-/

namespace A098077.P15397931904679877262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051797 n - A210440 n

end

end A098077.P15397931904679877262

namespace A098077

/-- `2*A051797(n)-A210440(n)` -/
def P15397931904679877262.Spec : Prop :=
  ∀ n, P15397931904679877262.a n = A098077 (n + 1)

end A098077

/-! ## A098077.P11710394445911460146

`A213840(n+1)+A002414(n+1)`
-/

namespace A098077.P11710394445911460146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213840 (n + 1) + A002414 (n + 1)

end

end A098077.P11710394445911460146

namespace A098077

/-- `A213840(n+1)+A002414(n+1)` -/
def P11710394445911460146.Spec : Prop :=
  ∀ n, P11710394445911460146.a n = A098077 (n + 1)

end A098077

/-! ## A098077.P13302460990599810909

`A213549(n+1)+A006322(n+1)`
-/

namespace A098077.P13302460990599810909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213549 (n + 1) + A006322 (n + 1)

end

end A098077.P13302460990599810909

namespace A098077

/-- `A213549(n+1)+A006322(n+1)` -/
def P13302460990599810909.Spec : Prop :=
  ∀ n, P13302460990599810909.a n = A098077 (n + 1)

end A098077

/-! ## A098077.P10504122708833457063

`A302560(n+1)+A022815(n+1)`
-/

namespace A098077.P10504122708833457063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302560 (n + 1) + A022815 (n + 1)

end

end A098077.P10504122708833457063

namespace A098077

/-- `A302560(n+1)+A022815(n+1)` -/
def P10504122708833457063.Spec : Prop :=
  ∀ n, P10504122708833457063.a n = A098077 (n + 1)

end A098077

/-!
# A098080: Nontrivial slowest increasing sequence whose succession of digits is that of the nonnegative integers.

The programs for A098080, the canonical program `A098080.P15055727507018318769` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098080 has offset 0).

The definition of A098080 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098080.P15055727507018318769

`record[n%2*A127421(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098080

/-- `record[n%2*A127421(n+1)]` -/
def P15055727507018318769.Spec : Prop :=
  ∀ n, P15055727507018318769.a n = A098080 n

theorem P15055727507018318769.correct : P15055727507018318769.Spec := by
  intro n
  simp only [A098080]

end A098080

/-! ## A098080.P9624601426523653824

`A127421(a(val(n, n+1))+2*n)` with `a(0)=0`
-/

namespace A098080.P9624601426523653824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A127421 (a (SequenceMachineLib.valuation n (n + 1)) + (2 * n : ℤ)).toNat

end

end A098080.P9624601426523653824

namespace A098080

/-- `A127421(a(val(n, n+1))+2*n)` -/
def P9624601426523653824.Spec : Prop :=
  ∀ n, P9624601426523653824.a n = A098080 n

end A098080

/-! ## A098080.P15441787488726150937

`and(-2, A127421(A004277(n)))`
-/

namespace A098080.P15441787488726150937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A127421 (A004277 n).toNat)

end

end A098080.P15441787488726150937

namespace A098080

/-- `and(-2, A127421(A004277(n)))` -/
def P15441787488726150937.Spec : Prop :=
  ∀ n, P15441787488726150937.a n = A098080 n

end A098080

/-! ## A098080.P16693108650475031715

`record[val(A020639(n+1), 2)*A127421(n+1)]`
-/

namespace A098080.P16693108650475031715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A020639 (n + 1)).toNat 2 : ℤ) * A127421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098080.P16693108650475031715

namespace A098080

/-- `record[val(A020639(n+1), 2)*A127421(n+1)]` -/
def P16693108650475031715.Spec : Prop :=
  ∀ n, P16693108650475031715.a n = A098080 n

end A098080

/-! ## A098080.P4543466827460099571

`2*A074993(comp[2*(n+1)])`
-/

namespace A098080.P4543466827460099571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074993 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A098080.P4543466827460099571

namespace A098080

/-- `2*A074993(comp[2*(n+1)])` -/
def P4543466827460099571.Spec : Prop :=
  ∀ n, P4543466827460099571.a n = A098080 n

end A098080

/-! ## A098080.P18164124792058828669

`record[A000035(n)*A127421(n+1)]`
-/

namespace A098080.P18164124792058828669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A127421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098080.P18164124792058828669

namespace A098080

/-- `record[A000035(n)*A127421(n+1)]` -/
def P18164124792058828669.Spec : Prop :=
  ∀ n, P18164124792058828669.a n = A098080 n

end A098080

/-! ## A098080.P4243870879820860467

`record[A062157(n)*A127421(n+1)]`
-/

namespace A098080.P4243870879820860467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A127421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098080.P4243870879820860467

namespace A098080

/-- `record[A062157(n)*A127421(n+1)]` -/
def P4243870879820860467.Spec : Prop :=
  ∀ n, P4243870879820860467.a n = A098080 n

end A098080

/-! ## A098080.P16047514537674631102

`record[A088705(n)*A127421(n+1)]`
-/

namespace A098080.P16047514537674631102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n * A127421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098080.P16047514537674631102

namespace A098080

/-- `record[A088705(n)*A127421(n+1)]` -/
def P16047514537674631102.Spec : Prop :=
  ∀ n, P16047514537674631102.a n = A098080 n

end A098080

/-! ## A098080.P8559478340837515899

`record[A127421(n+1)*A131729(n)]`
-/

namespace A098080.P8559478340837515899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (n + 1) * A131729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098080.P8559478340837515899

namespace A098080

/-- `record[A127421(n+1)*A131729(n)]` -/
def P8559478340837515899.Spec : Prop :=
  ∀ n, P8559478340837515899.a n = A098080 n

end A098080

/-!
# A098082: Absolute values of elements of flattened successive matrices B(k), k>=0, read by rows where B(k) = M^k*C where M=[[-1, 1, 0], [0, -1, 1], [1, 1, -1]] and C = [[0, 1, 1], [1, 1, 1], [1, 1, 2]].

The programs for A098082, there is no canonical definition to state claims against.
-/

/-! ## A098082.P769548995761718691

`and(A009194(A080663(2*(n+2))), A099206(n+1))`
-/

namespace A098082.P769548995761718691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A009194 (A080663 (2 * (n + 2))).toNat) (A099206 (n + 1))

end

end A098082.P769548995761718691

/-! ## A098082.P16689702245427500517

`and(A051904(A265066(n+1)), A099206(n+1))`
-/

namespace A098082.P16689702245427500517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051904 (A265066 (n + 1)).toNat) (A099206 (n + 1))

end

end A098082.P16689702245427500517

/-! ## A098082.P4697920749822565394

`and(A000975(A099206(n+1)), A014963(3*(n+1)))`
-/

namespace A098082.P4697920749822565394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000975 (A099206 (n + 1)).toNat) (A014963 (3 * (n + 1)))

end

end A098082.P4697920749822565394

/-! ## A098082.P8459915170563410975

`A099206(n+1)%A030133(A250432(n+1))`
-/

namespace A098082.P8459915170563410975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099206 (n + 1)) (A030133 (A250432 (n + 1)).toNat)

end

end A098082.P8459915170563410975

/-! ## A098082.P12869629184745483844

`and(A099206(n+1), A280048(3*A167040(n)))`
-/

namespace A098082.P12869629184745483844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099206 (n + 1)) (A280048 (3 * A167040 n).toNat)

end

end A098082.P12869629184745483844

/-!
# A098083: Triangle read by rows: T(n,k) = number of peakless Motzkin paths of length n containing k DHH...HU's, where U=(1,1), D=(1,-1) and H=(1,0) (can be easily expressed using RNA secondary structure terminology).

The programs for A098083, there is no canonical definition to state claims against.
-/

/-! ## A098083.P17683586630049553567

`A097107(A002998(n))`
-/

namespace A098083.P17683586630049553567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097107 (A002998 n).toNat

end

end A098083.P17683586630049553567

/-! ## A098083.P4838247275849977678

`A097107(A023106(n))`
-/

namespace A098083.P4838247275849977678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097107 (A023106 n).toNat

end

end A098083.P4838247275849977678

/-! ## A098083.P6997190225847764283

`A097107(A024662(n))`
-/

namespace A098083.P6997190225847764283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097107 (A024662 n).toNat

end

end A098083.P6997190225847764283

/-! ## A098083.P2803990802492448676

`A097107(A024663(n))`
-/

namespace A098083.P2803990802492448676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097107 (A024663 n).toNat

end

end A098083.P2803990802492448676

/-! ## A098083.P3331272205736874879

`A097107(A024664(n))`
-/

namespace A098083.P3331272205736874879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097107 (A024664 n).toNat

end

end A098083.P3331272205736874879

/-!
# A098084: a(n) satisfies P(n) + P(n+1) + a(n) = least prime >= P(n) + P(n+1), where P(i)=i-th prime.

The programs for A098084, the canonical program `A098084.P2888162765627818762` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098084 has offset 1).

The definition of A098084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098084.P2888162765627818762

`A151800(A001043(n+1)-1)-A001043(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A098084

/-- `A151800(A001043(n+1)-1)-A001043(n+1)` -/
def P2888162765627818762.Spec : Prop :=
  ∀ n, P2888162765627818762.a n = A098084 (n + 1)

theorem P2888162765627818762.correct : P2888162765627818762.Spec := by
  intro n
  simp only [A098084, Nat.add_sub_cancel]

end A098084

/-! ## A098084.P7310218284722544661

`A007920(A001043(n+1))`
-/

namespace A098084.P7310218284722544661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A001043 (n + 1)).toNat

end

end A098084.P7310218284722544661

namespace A098084

/-- `A007920(A001043(n+1))` -/
def P7310218284722544661.Spec : Prop :=
  ∀ n, P7310218284722544661.a n = A098084 (n + 1)

end A098084

/-! ## A098084.P18271822723223996804

`A007920(A011974(n+2))`
-/

namespace A098084.P18271822723223996804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A011974 (n + 2)).toNat

end

end A098084.P18271822723223996804

namespace A098084

/-- `A007920(A011974(n+2))` -/
def P18271822723223996804.Spec : Prop :=
  ∀ n, P18271822723223996804.a n = A098084 (n + 1)

end A098084

/-! ## A098084.P3057685346489228908

`A071960(2*A162735(n+1)-1)`
-/

namespace A098084.P3057685346489228908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071960 (2 * A162735 (n + 1) - 1).toNat

end

end A098084.P3057685346489228908

namespace A098084

/-- `A071960(2*A162735(n+1)-1)` -/
def P3057685346489228908.Spec : Prop :=
  ∀ n, P3057685346489228908.a n = A098084 (n + 1)

end A098084

/-! ## A098084.P4194850363831039378

`A007920(A013634(A000040(n+1)))`
-/

namespace A098084.P4194850363831039378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A013634 (A000040 (n + 1)).toNat).toNat

end

end A098084.P4194850363831039378

namespace A098084

/-- `A007920(A013634(A000040(n+1)))` -/
def P4194850363831039378.Spec : Prop :=
  ∀ n, P4194850363831039378.a n = A098084 (n + 1)

end A098084

/-! ## A098084.P2648570567863635846

`A007920(A007504(n+2)-A007504(n))`
-/

namespace A098084.P2648570567863635846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A007504 (n + 2) - A007504 n).toNat

end

end A098084.P2648570567863635846

namespace A098084

/-- `A007920(A007504(n+2)-A007504(n))` -/
def P2648570567863635846.Spec : Prop :=
  ∀ n, P2648570567863635846.a n = A098084 (n + 1)

end A098084

/-! ## A098084.P7835964789553584979

`A007920(A000040(n+1)+p?[A145979(n)])`
-/

namespace A098084.P7835964789553584979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A000040 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A098084.P7835964789553584979

namespace A098084

/-- `A007920(A000040(n+1)+p?[A145979(n)])` -/
def P7835964789553584979.Spec : Prop :=
  ∀ n, P7835964789553584979.a n = A098084 (n + 1)

end A098084

/-! ## A098084.P11389000430012752

`A007920(A000040(n+1)+A000040(n+2))`
-/

namespace A098084.P11389000430012752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A000040 (n + 1) + A000040 (n + 2)).toNat

end

end A098084.P11389000430012752

namespace A098084

/-- `A007920(A000040(n+1)+A000040(n+2))` -/
def P11389000430012752.Spec : Prop :=
  ∀ n, P11389000430012752.a n = A098084 (n + 1)

end A098084

/-! ## A098084.P8676568983344885713

`A071960(A162735(n+1)+A162735(n+1)-1)`
-/

namespace A098084.P8676568983344885713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071960 (A162735 (n + 1) + (A162735 (n + 1) - 1)).toNat

end

end A098084.P8676568983344885713

namespace A098084

/-- `A071960(A162735(n+1)+A162735(n+1)-1)` -/
def P8676568983344885713.Spec : Prop :=
  ∀ n, P8676568983344885713.a n = A098084 (n + 1)

end A098084

/-! ## A098084.P5672382512692836488

`A007918(A144043(2*(n+1)))-A144043(2*(n+1))`
-/

namespace A098084.P5672382512692836488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A144043 (2 * (n + 1))).toNat - A144043 (2 * (n + 1))

end

end A098084.P5672382512692836488

namespace A098084

/-- `A007918(A144043(2*(n+1)))-A144043(2*(n+1))` -/
def P5672382512692836488.Spec : Prop :=
  ∀ n, P5672382512692836488.a n = A098084 (n + 1)

end A098084

/-!
# A098085: Primes P(n)+P(n+1)+b(n) = least prime >= P(n)+P(n+1), P(i)=i-th prime, b(n) given in A098084.

The programs for A098085, there is no canonical definition to state claims against.
-/

/-! ## A098085.P13168851638979376821

`A007918(Δ[A061802(n)])`
-/

namespace A098085.P13168851638979376821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (f1 (n + 1) - f1 n).toNat

end

end A098085.P13168851638979376821

/-! ## A098085.P6676949103657606751

`A007918(A001043(n+1))`
-/

namespace A098085.P6676949103657606751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A001043 (n + 1)).toNat

end

end A098085.P6676949103657606751

/-! ## A098085.P18417053201120940254

`A060264(A162800(n+1))`
-/

namespace A098085.P18417053201120940254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (A162800 (n + 1)).toNat

end

end A098085.P18417053201120940254

/-! ## A098085.P818582717023170979

`A007918(A011974(n+2))`
-/

namespace A098085.P818582717023170979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A011974 (n + 2)).toNat

end

end A098085.P818582717023170979

/-! ## A098085.P10688769778863673039

`A066169(A076273(n+2))`
-/

namespace A098085.P10688769778863673039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066169 (A076273 (n + 2)).toNat

end

end A098085.P10688769778863673039

/-! ## A098085.P11039612654827957500

`A066169(A001043(n+1)-1)`
-/

namespace A098085.P11039612654827957500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066169 (A001043 (n + 1) - 1).toNat

end

end A098085.P11039612654827957500

/-! ## A098085.P3184724176722969092

`A151800(A001043(n+1)-1)`
-/

namespace A098085.P3184724176722969092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A001043 (n + 1) - 1).toNat

end

end A098085.P3184724176722969092

/-! ## A098085.P6361622842555420011

`A151800(A011974(n+2)-1)`
-/

namespace A098085.P6361622842555420011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A011974 (n + 2) - 1).toNat

end

end A098085.P6361622842555420011

/-! ## A098085.P15198145706847662903

`A007918(A144043(2*(n+1)))`
-/

namespace A098085.P15198145706847662903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A144043 (2 * (n + 1))).toNat

end

end A098085.P15198145706847662903

/-! ## A098085.P10528795562458122794

`A007918(2*A162800(n+1))`
-/

namespace A098085.P10528795562458122794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (2 * A162800 (n + 1)).toNat

end

end A098085.P10528795562458122794

/-!
# A098086: Triangle read by rows: T(n,k) is the number of peakless Motzkin paths in which the k-th step is the leftmost (1,0)-step (can be easily expressed using RNA secondary structure terminology).

The programs for A098086, there is no canonical definition to state claims against.
-/

/-! ## A098086.P18238103239442060210

`A097724(A091018(n))`
-/

namespace A098086.P18238103239442060210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097724 (A091018 n).toNat

end

end A098086.P18238103239442060210

/-! ## A098086.P4785275233234242694

`A097724(A056536(n+1)-1)`
-/

namespace A098086.P4785275233234242694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097724 (A056536 (n + 1) - 1).toNat

end

end A098086.P4785275233234242694

/-! ## A098086.P2400035138552004338

`A137579(A007318(3*n+4))+A105114(n)`
-/

namespace A098086.P2400035138552004338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 (A007318 (3 * n + 4)).toNat + A105114 n

end

end A098086.P2400035138552004338

/-!
# A098088: Numbers k such that 6*R_k - 5 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A098088, there is no canonical definition to state claims against.
-/

/-! ## A098088.P762160092492071004

`A056658(n+1)+1`
-/

namespace A098088.P762160092492071004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056658 (n + 1) + 1

end

end A098088.P762160092492071004

/-! ## A098088.P2670775307961190940

`ceil(A165724(n+1)/6)`
-/

namespace A098088.P2670775307961190940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A165724 (n + 1) : ℚ) / 6⌉

end

end A098088.P2670775307961190940

/-! ## A098088.P17726977567365830331

`A020725(A056658(n+1))`
-/

namespace A098088.P17726977567365830331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A056658 (n + 1)).toNat

end

end A098088.P17726977567365830331

/-! ## A098088.P16322336001060171989

`A020725(floor(A165724(n+1)/6))`
-/

namespace A098088.P16322336001060171989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 ⌊(A165724 (n + 1) : ℚ) / 6⌋.toNat

end

end A098088.P16322336001060171989

/-! ## A098088.P17923846134167076107

`A020725((A165724(n+1)-1)/6)`
-/

namespace A098088.P17923846134167076107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.roundAway ((A165724 (n + 1) - 1 : ℚ) / 6)).toNat

end

end A098088.P17923846134167076107

/-!
# A098089: Numbers k such that 7*R_k + 2 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A098089, there is no canonical definition to state claims against.
-/

/-! ## A098089.P10663672311655472524

`record[and(A325231(3*(n+1)), A325248(n+1))]`
-/

namespace A098089.P10663672311655472524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A325231 (3 * (n + 1))) (A325248 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098089.P10663672311655472524

/-! ## A098089.P8085891039156069915

`eq[A268173(n), A341000(A188916(3*n+4))]`
-/

namespace A098089.P8085891039156069915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268173 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341000 ((A188916 (3 * n + 4)).toNat + 285)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098089.P8085891039156069915

/-!
# A098090: Numbers k such that 2k-3 is prime.

The programs for A098090, the canonical program `A098090.P13715726592348268082` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098090 has offset 1).

The definition of A098090 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098090.P13715726592348268082

`A113935(n+2)/2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A098090

/-- `A113935(n+2)/2` -/
def P13715726592348268082.Spec : Prop :=
  ∀ n, P13715726592348268082.a n = (A098090 (n + 1) : ℚ)

end A098090

/-! ## A098090.P10675831505419995716

`(p?[2*n+1]+3)/2`
-/

namespace A098090.P10675831505419995716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 3 : ℚ) / 2

end

end A098090.P10675831505419995716

namespace A098090

/-- `(p?[2*n+1]+3)/2` -/
def P10675831505419995716.Spec : Prop :=
  ∀ n, P10675831505419995716.a n = (A098090 (n + 1) : ℚ)

end A098090

/-! ## A098090.P16195240269755644450

`A006254(n+1)+1`
-/

namespace A098090.P16195240269755644450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) + 1

end

end A098090.P16195240269755644450

namespace A098090

/-- `A006254(n+1)+1` -/
def P16195240269755644450.Spec : Prop :=
  ∀ n, P16195240269755644450.a n = A098090 (n + 1)

end A098090

/-! ## A098090.P11432893285824611471

`A005097(n+1)+2`
-/

namespace A098090.P11432893285824611471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + 2

end

end A098090.P11432893285824611471

namespace A098090

/-- `A005097(n+1)+2` -/
def P11432893285824611471.Spec : Prop :=
  ∀ n, P11432893285824611471.a n = A098090 (n + 1)

end A098090

/-! ## A098090.P2407402796720455463

`A089253(n+1)-1`
-/

namespace A098090.P2407402796720455463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1) - 1

end

end A098090.P2407402796720455463

namespace A098090

/-- `A089253(n+1)-1` -/
def P2407402796720455463.Spec : Prop :=
  ∀ n, P2407402796720455463.a n = A098090 (n + 1)

end A098090

/-! ## A098090.P14417340970016614059

`A067076(n+1)+3`
-/

namespace A098090.P14417340970016614059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) + 3

end

end A098090.P14417340970016614059

namespace A098090

/-- `A067076(n+1)+3` -/
def P14417340970016614059.Spec : Prop :=
  ∀ n, P14417340970016614059.a n = A098090 (n + 1)

end A098090

/-! ## A098090.P1486203728871283820

`A089192(n+1)-2`
-/

namespace A098090.P1486203728871283820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1) - 2

end

end A098090.P1486203728871283820

namespace A098090

/-- `A089192(n+1)-2` -/
def P1486203728871283820.Spec : Prop :=
  ∀ n, P1486203728871283820.a n = A098090 (n + 1)

end A098090

/-! ## A098090.P11227910334094927788

`A097069(n+1)-3`
-/

namespace A098090.P11227910334094927788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1) - 3

end

end A098090.P11227910334094927788

namespace A098090

/-- `A097069(n+1)-3` -/
def P11227910334094927788.Spec : Prop :=
  ∀ n, P11227910334094927788.a n = A098090 (n + 1)

end A098090

/-! ## A098090.P13605276836644330611

`A097338(n+1)-4`
-/

namespace A098090.P13605276836644330611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 1) - 4

end

end A098090.P13605276836644330611

namespace A098090

/-- `A097338(n+1)-4` -/
def P13605276836644330611.Spec : Prop :=
  ∀ n, P13605276836644330611.a n = A098090 (n + 1)

end A098090

/-! ## A098090.P1158513129589617603

`A298252(n+1)/2`
-/

namespace A098090.P1158513129589617603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298252 (n + 1) : ℚ) / 2

end

end A098090.P1158513129589617603

namespace A098090

/-- `A298252(n+1)/2` -/
def P1158513129589617603.Spec : Prop :=
  ∀ n, P1158513129589617603.a n = (A098090 (n + 1) : ℚ)

end A098090

/-! ## A098090.P6353028935723172806

`A097363(n+1)-5`
-/

namespace A098090.P6353028935723172806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097363 (n + 1) - 5

end

end A098090.P6353028935723172806

namespace A098090

/-- `A097363(n+1)-5` -/
def P6353028935723172806.Spec : Prop :=
  ∀ n, P6353028935723172806.a n = A098090 (n + 1)

end A098090

/-! ## A098090.P14822638900711551344

`A097480(n+1)-6`
-/

namespace A098090.P14822638900711551344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097480 (n + 1) - 6

end

end A098090.P14822638900711551344

namespace A098090

/-- `A097480(n+1)-6` -/
def P14822638900711551344.Spec : Prop :=
  ∀ n, P14822638900711551344.a n = A098090 (n + 1)

end A098090

/-! ## A098090.P3884521869091997068

`A098605(n+1)-7`
-/

namespace A098090.P3884521869091997068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098605 (n + 1) - 7

end

end A098090.P3884521869091997068

namespace A098090

/-- `A098605(n+1)-7` -/
def P3884521869091997068.Spec : Prop :=
  ∀ n, P3884521869091997068.a n = A098090 (n + 1)

end A098090

/-! ## A098090.P14360715050718839637

`A097932(n+1)-8`
-/

namespace A098090.P14360715050718839637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097932 (n + 1) - 8

end

end A098090.P14360715050718839637

namespace A098090

/-- `A097932(n+1)-8` -/
def P14360715050718839637.Spec : Prop :=
  ∀ n, P14360715050718839637.a n = A098090 (n + 1)

end A098090

/-! ## A098090.P14355123157664312911

`A177018(n+1)+n`
-/

namespace A098090.P14355123157664312911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177018 (n + 1) + (n : ℤ)

end

end A098090.P14355123157664312911

namespace A098090

/-- `A177018(n+1)+n` -/
def P14355123157664312911.Spec : Prop :=
  ∀ n, P14355123157664312911.a n = A098090 (n + 1)

end A098090

/-! ## A098090.P6581305401046956868

`(A048974(n+1)+1)/2`
-/

namespace A098090.P6581305401046956868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048974 (n + 1) + 1 : ℚ) / 2

end

end A098090.P6581305401046956868

namespace A098090

/-- `(A048974(n+1)+1)/2` -/
def P6581305401046956868.Spec : Prop :=
  ∀ n, P6581305401046956868.a n = (A098090 (n + 1) : ℚ)

end A098090

/-! ## A098090.P12665152134118785587

`(A065091(n+1)+3)/2`
-/

namespace A098090.P12665152134118785587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065091 (n + 1) + 3 : ℚ) / 2

end

end A098090.P12665152134118785587

namespace A098090

/-- `(A065091(n+1)+3)/2` -/
def P12665152134118785587.Spec : Prop :=
  ∀ n, P12665152134118785587.a n = (A098090 (n + 1) : ℚ)

end A098090

/-! ## A098090.P4119689634473766442

`n+3+A008507(n+1)`
-/

namespace A098090.P4119689634473766442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) + A008507 (n + 1)

end

end A098090.P4119689634473766442

namespace A098090

/-- `n+3+A008507(n+1)` -/
def P4119689634473766442.Spec : Prop :=
  ∀ n, P4119689634473766442.a n = A098090 (n + 1)

end A098090

/-! ## A098090.P6631445245645538009

`A175540(n+1)+2-n`
-/

namespace A098090.P6631445245645538009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175540 (n + 1) + (2 - (n : ℤ))

end

end A098090.P6631445245645538009

namespace A098090

/-- `A175540(n+1)+2-n` -/
def P6631445245645538009.Spec : Prop :=
  ∀ n, P6631445245645538009.a n = A098090 (n + 1)

end A098090

/-!
# A098091: Graded dimension of the space of invariant bilinear forms on the free pre-Lie algebra on one generator.

The programs for A098091, there is no canonical definition to state claims against.
-/

/-! ## A098091.P5373492116701731875

`A000081(n+4)-A051573(n+4)`
-/

namespace A098091.P5373492116701731875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (n + 4) - A051573 (n + 4)

end

end A098091.P5373492116701731875

/-! ## A098091.P12458417938560650280

`record[A033185(n+7)]-A051573(n+4)`
-/

namespace A098091.P12458417938560650280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A051573 (n + 4)

end

end A098091.P12458417938560650280

/-! ## A098091.P17773235342685881394

`record[A033185(n+9)]%A051573(n+4)`
-/

namespace A098091.P17773235342685881394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A051573 (n + 4))

end

end A098091.P17773235342685881394

/-!
# A098094: T(n,k) = greatest e such that k^e divides n!, 2<=k<=n (triangle read by rows).

The programs for A098094, the canonical program `A098094.P18419752277972636093` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098094 has offset 2).

The definition of A098094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098094.P289928640493014826

`val((comp[∑[n]]-n)!, A131818(n+2))`
-/

namespace A098094.P289928640493014826
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat) (A131818 (n + 2)).toNat

end

end A098094.P289928640493014826

namespace A098094

/-- `val((comp[∑[n]]-n)!, A131818(n+2))` -/
def P289928640493014826.Spec : Prop :=
  ∀ n, (P289928640493014826.a n : ℤ) = A098094 (n + 2)

end A098094

/-! ## A098094.P18419752277972636093

`val(A162990(n+1), (A002260(n+1)+1)²)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098094

/-- `val(A162990(n+1), (A002260(n+1)+1)²)` -/
def P18419752277972636093.Spec : Prop :=
  ∀ n, (P18419752277972636093.a n : ℤ) = A098094 (n + 2)

theorem P18419752277972636093.correct : P18419752277972636093.Spec := by
  intro n
  simp only [A098094, Nat.add_sub_cancel]

end A098094

/-! ## A098094.P262032788756613719

`val(A003057(A305430(n+1))!, A002260(n+1)+1)`
-/

namespace A098094.P262032788756613719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial (A003057 (A305430 (n + 1)).toNat).toNat) (A002260 (n + 1) + 1).toNat

end

end A098094.P262032788756613719

namespace A098094

/-- `val(A003057(A305430(n+1))!, A002260(n+1)+1)` -/
def P262032788756613719.Spec : Prop :=
  ∀ n, (P262032788756613719.a n : ℤ) = A098094 (n + 2)

end A098094

/-! ## A098094.P11201214986602790548

`A090623(n+2)+A055641(A207024(n+1)+A184955(n))`
-/

namespace A098094.P11201214986602790548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090623 (n + 2) + A055641 (A207024 (n + 1) + A184955 n).toNat

end

end A098094.P11201214986602790548

namespace A098094

/-- `A090623(n+2)+A055641(A207024(n+1)+A184955(n))` -/
def P11201214986602790548.Spec : Prop :=
  ∀ n, P11201214986602790548.a n = A098094 (n + 2)

end A098094

/-! ## A098094.P17644414081782878644

`lcm(A090623(n+2), A090629(A090657(n+2)))`
-/

namespace A098094.P17644414081782878644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A090623 (n + 2)) (A090629 (A090657 (n + 2)).toNat)

end

end A098094.P17644414081782878644

namespace A098094

/-- `lcm(A090623(n+2), A090629(A090657(n+2)))` -/
def P17644414081782878644.Spec : Prop :=
  ∀ n, (P17644414081782878644.a n : ℤ) = A098094 (n + 2)

end A098094

/-!
# A098095: Primes of the form p^2 + pq + q.

The programs for A098095, there is no canonical definition to state claims against.
-/

/-! ## A098095.P16826428747808904081

`filter[A274589(n+2), A181632(#)]`
-/

namespace A098095.P16826428747808904081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274589 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181632 (f1 j).toNat = 1) n)

end

end A098095.P16826428747808904081

/-! ## A098095.P4593200541402567225

`filter[A274589(n+3), A385395(#)]`
-/

namespace A098095.P4593200541402567225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274589 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A385395 (f1 j).toNat = 1) n)

end

end A098095.P4593200541402567225

/-! ## A098095.P2568967044578981576

`∩[A226537(n+1), A339912(n+1)]`
-/

namespace A098095.P2568967044578981576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098095.P2568967044578981576

/-! ## A098095.P13357822061792807568

`∩[A099184(n+2), A226537(n+1)]`
-/

namespace A098095.P13357822061792807568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099184 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098095.P13357822061792807568

/-!
# A098096: Numbers of the form p^2 * 2^p for p prime.

The programs for A098096, there is no canonical definition to state claims against.
-/

/-! ## A098096.P864553756179385985

`A007758(p?[comp[n²]])`
-/

namespace A098096.P864553756179385985
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007758 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A098096.P864553756179385985

/-! ## A098096.P3774266439360171084

`record[(n+2)²*2^A006530(n+2)]`
-/

namespace A098096.P3774266439360171084
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℚ) * (2 : ℚ) ^ (A006530 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098096.P3774266439360171084

/-! ## A098096.P9313163274661912111

`record[(n+2)²*2^A020639(n+2)]`
-/

namespace A098096.P9313163274661912111
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℚ) * (2 : ℚ) ^ (A020639 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098096.P9313163274661912111

/-! ## A098096.P6956037613919059688

`A007758(A000040(n+1))`
-/

namespace A098096.P6956037613919059688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007758 (A000040 (n + 1)).toNat

end

end A098096.P6956037613919059688

/-! ## A098096.P7495433659975753465

`A007758(record[A006530(n+2)])`
-/

namespace A098096.P7495433659975753465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007758 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098096.P7495433659975753465

/-! ## A098096.P6910848486707273898

`A001248(n+1)*A034785(n+1)`
-/

namespace A098096.P6910848486707273898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A034785 (n + 1)

end

end A098096.P6910848486707273898

/-! ## A098096.P11127371704437998895

`A000040(n+1)*A100042(n+1)`
-/

namespace A098096.P11127371704437998895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A100042 (n + 1)

end

end A098096.P11127371704437998895

/-! ## A098096.P2048108574889188968

`A000040(n+1)²*A034785(n+1)`
-/

namespace A098096.P2048108574889188968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 * A034785 (n + 1)

end

end A098096.P2048108574889188968

/-! ## A098096.P4847486044310112800

`A000040(n+1)*record[(n+2)*2^A006530(n+2)]`
-/

namespace A098096.P4847486044310112800
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (2 : ℚ) ^ (A006530 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098096.P4847486044310112800

/-! ## A098096.P6163410327152288251

`p?[A018252(n+1)-7]²*2^(eq[1, A001222(n+1)]+1)`
-/

namespace A098096.P6163410327152288251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 * (2 ^ (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1) : ℤ)

end

end A098096.P6163410327152288251

/-!
# A098097: Terms of sequence A005150 interpreted as numbers written in base 4 (written here in base ten).

The programs for A098097, there is no canonical definition to state claims against.
-/

/-! ## A098097.P6788476309368363871

`A216962(A077854(n))`
-/

namespace A098097.P6788476309368363871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216962 (A077854 n).toNat

end

end A098097.P6788476309368363871

/-!
# A098098: a(n) = sigma(6*n+5)/6.

The programs for A098098, the canonical program `A098098.P10093377580239662932` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098098 has offset 0).

The definition of A098098 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098098.P7894644884986961340

`(-1)^n*A258831(n)`
-/

namespace A098098.P7894644884986961340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A258831 n

end

end A098098.P7894644884986961340

namespace A098098

/-- `(-1)^n*A258831(n)` -/
def P7894644884986961340.Spec : Prop :=
  ∀ n, P7894644884986961340.a n = A098098 n

end A098098

/-! ## A098098.P10093377580239662932

`A000203(6*n+5)/6`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098098

/-- `A000203(6*n+5)/6` -/
def P10093377580239662932.Spec : Prop :=
  ∀ n, P10093377580239662932.a n = (A098098 n : ℚ)

end A098098

/-! ## A098098.P6745742112884961294

`A232343(2*n)`
-/

namespace A098098.P6745742112884961294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232343 (2 * n)

end

end A098098.P6745742112884961294

namespace A098098

/-- `A232343(2*n)` -/
def P6745742112884961294.Spec : Prop :=
  ∀ n, P6745742112884961294.a n = A098098 n

end A098098

/-! ## A098098.P5807236255473895726

`abs(A258831(n))`
-/

namespace A098098.P5807236255473895726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A258831 n|

end

end A098098.P5807236255473895726

namespace A098098

/-- `abs(A258831(n))` -/
def P5807236255473895726.Spec : Prop :=
  ∀ n, P5807236255473895726.a n = A098098 n

end A098098

/-! ## A098098.P5016193433746525618

`A033686(Δ[n²])/2`
-/

namespace A098098.P5016193433746525618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033686 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A098098.P5016193433746525618

namespace A098098

/-- `A033686(Δ[n²])/2` -/
def P5016193433746525618.Spec : Prop :=
  ∀ n, P5016193433746525618.a n = (A098098 n : ℚ)

end A098098

/-! ## A098098.P15095903652755701489

`∑{d}[A016957(n)+1, #]/6`
-/

namespace A098098.P15095903652755701489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℚ) / 6

end

end A098098.P15095903652755701489

namespace A098098

/-- `∑{d}[A016957(n)+1, #]/6` -/
def P15095903652755701489.Spec : Prop :=
  ∀ n, P15095903652755701489.a n = (A098098 n : ℚ)

end A098098

/-! ## A098098.P14491420918978832033

`gcd(A000038(n), A258831(n))`
-/

namespace A098098.P14491420918978832033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A258831 n)

end

end A098098.P14491420918978832033

namespace A098098

/-- `gcd(A000038(n), A258831(n))` -/
def P14491420918978832033.Spec : Prop :=
  ∀ n, (P14491420918978832033.a n : ℤ) = A098098 n

end A098098

/-! ## A098098.P1939251308765955962

`lcm(A000034(n), A258831(n))`
-/

namespace A098098.P1939251308765955962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A258831 n)

end

end A098098.P1939251308765955962

namespace A098098

/-- `lcm(A000034(n), A258831(n))` -/
def P1939251308765955962.Spec : Prop :=
  ∀ n, (P1939251308765955962.a n : ℤ) = A098098 n

end A098098

/-! ## A098098.P6250483373429221000

`abs(A208435(Δ[n²]))`
-/

namespace A098098.P6250483373429221000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A208435 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A098098.P6250483373429221000

namespace A098098

/-- `abs(A208435(Δ[n²]))` -/
def P6250483373429221000.Spec : Prop :=
  ∀ n, P6250483373429221000.a n = A098098 n

end A098098

/-! ## A098098.P18145109796031500218

`abs(A208457(2*n+1))`
-/

namespace A098098.P18145109796031500218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A208457 (2 * n + 1)|

end

end A098098.P18145109796031500218

namespace A098098

/-- `abs(A208457(2*n+1))` -/
def P18145109796031500218.Spec : Prop :=
  ∀ n, P18145109796031500218.a n = A098098 n

end A098098

/-! ## A098098.P17908159305559759726

`A144615(2*n+1)/6`
-/

namespace A098098.P17908159305559759726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144615 (2 * n + 1) : ℚ) / 6

end

end A098098.P17908159305559759726

namespace A098098

/-- `A144615(2*n+1)/6` -/
def P17908159305559759726.Spec : Prop :=
  ∀ n, P17908159305559759726.a n = (A098098 n : ℚ)

end A098098

/-! ## A098098.P16686689572052859238

`abs(A134079(2*n+1)/2)`
-/

namespace A098098.P16686689572052859238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A134079 (2 * n + 1) : ℚ) / 2|

end

end A098098.P16686689572052859238

namespace A098098

/-- `abs(A134079(2*n+1)/2)` -/
def P16686689572052859238.Spec : Prop :=
  ∀ n, P16686689572052859238.a n = (A098098 n : ℚ)

end A098098

/-! ## A098098.P3226643592472498196

`A062157(n+1)*A208435(2*n+1)`
-/

namespace A098098.P3226643592472498196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) * A208435 (2 * n + 1)

end

end A098098.P3226643592472498196

namespace A098098

/-- `A062157(n+1)*A208435(2*n+1)` -/
def P3226643592472498196.Spec : Prop :=
  ∀ n, P3226643592472498196.a n = A098098 n

end A098098

/-! ## A098098.P7520062740230751074

`A062157(n+1)*A208457(2*n+1)`
-/

namespace A098098.P7520062740230751074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) * A208457 (2 * n + 1)

end

end A098098.P7520062740230751074

namespace A098098

/-- `A062157(n+1)*A208457(2*n+1)` -/
def P7520062740230751074.Spec : Prop :=
  ∀ n, P7520062740230751074.a n = A098098 n

end A098098

/-! ## A098098.P9375403567874784353

`A165326(n+1)*A208435(2*n+1)`
-/

namespace A098098.P9375403567874784353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (n + 1) * A208435 (2 * n + 1)

end

end A098098.P9375403567874784353

namespace A098098

/-- `A165326(n+1)*A208435(2*n+1)` -/
def P9375403567874784353.Spec : Prop :=
  ∀ n, P9375403567874784353.a n = A098098 n

end A098098

/-! ## A098098.P3306409526663877515

`A165326(n+1)*A208457(2*n+1)`
-/

namespace A098098.P3306409526663877515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (n + 1) * A208457 (2 * n + 1)

end

end A098098.P3306409526663877515

namespace A098098

/-- `A165326(n+1)*A208457(2*n+1)` -/
def P3306409526663877515.Spec : Prop :=
  ∀ n, P3306409526663877515.a n = A098098 n

end A098098

/-! ## A098098.P14943507227700304663

`A134079(2*n+1)/(A000038(n+1)-2)`
-/

namespace A098098.P14943507227700304663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134079 (2 * n + 1) : ℚ) / (A000038 (n + 1) - 2 : ℚ)

end

end A098098.P14943507227700304663

namespace A098098

/-- `A134079(2*n+1)/(A000038(n+1)-2)` -/
def P14943507227700304663.Spec : Prop :=
  ∀ n, P14943507227700304663.a n = (A098098 n : ℚ)

end A098098

/-! ## A098098.P1054706701454996123

`A134079(2*n+1)/(1-A174971(2*n))`
-/

namespace A098098.P1054706701454996123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134079 (2 * n + 1) : ℚ) / (1 - A174971 (2 * n) : ℚ)

end

end A098098.P1054706701454996123

namespace A098098

/-- `A134079(2*n+1)/(1-A174971(2*n))` -/
def P1054706701454996123.Spec : Prop :=
  ∀ n, P1054706701454996123.a n = (A098098 n : ℚ)

end A098098

/-! ## A098098.P7723274803687964889

`A004526(A033686(Δ[n²]))`
-/

namespace A098098.P7723274803687964889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A033686 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A098098.P7723274803687964889

namespace A098098

/-- `A004526(A033686(Δ[n²]))` -/
def P7723274803687964889.Spec : Prop :=
  ∀ n, P7723274803687964889.a n = A098098 n

end A098098

