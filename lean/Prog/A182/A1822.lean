import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A182200: a(n) = prime(n)^2-3.

The programs for A182200, the canonical program `A182200.P2957371844516527360` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182200 has offset 1).

The definition of A182200 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A182200.P2957371844516527360

`A166010(n+1)+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A182200

/-- `A166010(n+1)+1` -/
def P2957371844516527360.Spec : Prop :=
  ∀ n, P2957371844516527360.a n = A182200 (n + 1)

theorem P2957371844516527360.correct : P2957371844516527360.Spec := by
  intro n
  simp only [A182200, Nat.add_sub_cancel]

end A182200

/-! ## A182200.P10620708775660888105

`A049001(n+1)-1`
-/

namespace A182200.P10620708775660888105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (n + 1) - 1

end

end A182200.P10620708775660888105

namespace A182200

/-- `A049001(n+1)-1` -/
def P10620708775660888105.Spec : Prop :=
  ∀ n, P10620708775660888105.a n = A182200 (n + 1)

end A182200

/-! ## A182200.P9843869634038134217

`A084920(n+1)-2`
-/

namespace A182200.P9843869634038134217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) - 2

end

end A182200.P9843869634038134217

namespace A182200

/-- `A084920(n+1)-2` -/
def P9843869634038134217.Spec : Prop :=
  ∀ n, P9843869634038134217.a n = A182200 (n + 1)

end A182200

/-! ## A182200.P8112923395928976176

`A001248(n+1)-3`
-/

namespace A182200.P8112923395928976176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - 3

end

end A182200.P8112923395928976176

namespace A182200

/-- `A001248(n+1)-3` -/
def P8112923395928976176.Spec : Prop :=
  ∀ n, P8112923395928976176.a n = A182200 (n + 1)

end A182200

/-! ## A182200.P2204308891066440783

`A066872(n+1)-4`
-/

namespace A182200.P2204308891066440783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) - 4

end

end A182200.P2204308891066440783

namespace A182200

/-- `A066872(n+1)-4` -/
def P2204308891066440783.Spec : Prop :=
  ∀ n, P2204308891066440783.a n = A182200 (n + 1)

end A182200

/-! ## A182200.P14759209184716693264

`A061725(n+1)-5`
-/

namespace A182200.P14759209184716693264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061725 (n + 1) - 5

end

end A182200.P14759209184716693264

namespace A182200

/-- `A061725(n+1)-5` -/
def P14759209184716693264.Spec : Prop :=
  ∀ n, P14759209184716693264.a n = A182200 (n + 1)

end A182200

/-! ## A182200.P2837291933966417671

`A153480(n)/2-1`
-/

namespace A182200.P2837291933966417671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153480 n : ℚ) / 2 - 1

end

end A182200.P2837291933966417671

namespace A182200

/-- `A153480(n)/2-1` -/
def P2837291933966417671.Spec : Prop :=
  ∀ n, P2837291933966417671.a n = (A182200 (n + 1) : ℚ)

end A182200

/-! ## A182200.P5601980497041720780

`A287922(n+1)-7`
-/

namespace A182200.P5601980497041720780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287922 (n + 1) - 7

end

end A182200.P5601980497041720780

namespace A182200

/-- `A287922(n+1)-7` -/
def P5601980497041720780.Spec : Prop :=
  ∀ n, P5601980497041720780.a n = A182200 (n + 1)

end A182200

/-! ## A182200.P10892454505114202763

`Δ[A007504(n)]²-3`
-/

namespace A182200.P10892454505114202763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 3

end

end A182200.P10892454505114202763

namespace A182200

/-- `Δ[A007504(n)]²-3` -/
def P10892454505114202763.Spec : Prop :=
  ∀ n, P10892454505114202763.a n = A182200 (n + 1)

end A182200

/-! ## A182200.P2641452326019549153

`Δ[A008348(n)]²-3`
-/

namespace A182200.P2641452326019549153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 3

end

end A182200.P2641452326019549153

namespace A182200

/-- `Δ[A008348(n)]²-3` -/
def P2641452326019549153.Spec : Prop :=
  ∀ n, P2641452326019549153.a n = A182200 (n + 1)

end A182200

/-! ## A182200.P326742725390365778

`Δ[A022837(n)]²-3`
-/

namespace A182200.P326742725390365778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 3

end

end A182200.P326742725390365778

namespace A182200

/-- `Δ[A022837(n)]²-3` -/
def P326742725390365778.Spec : Prop :=
  ∀ n, P326742725390365778.a n = A182200 (n + 1)

end A182200

/-! ## A182200.P16012549985605643231

`Δ[A064365(n)]²-3`
-/

namespace A182200.P16012549985605643231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 3

end

end A182200.P16012549985605643231

namespace A182200

/-- `Δ[A064365(n)]²-3` -/
def P16012549985605643231.Spec : Prop :=
  ∀ n, P16012549985605643231.a n = A182200 (n + 1)

end A182200

/-! ## A182200.P12471322381191731954

`Δ[A309222(n)]²-3`
-/

namespace A182200.P12471322381191731954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 3

end

end A182200.P12471322381191731954

namespace A182200

/-- `Δ[A309222(n)]²-3` -/
def P12471322381191731954.Spec : Prop :=
  ∀ n, P12471322381191731954.a n = A182200 (n + 1)

end A182200

/-! ## A182200.P11759421930425352337

`A000040(n+1)²-3`
-/

namespace A182200.P11759421930425352337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - 3

end

end A182200.P11759421930425352337

namespace A182200

/-- `A000040(n+1)²-3` -/
def P11759421930425352337.Spec : Prop :=
  ∀ n, P11759421930425352337.a n = A182200 (n + 1)

end A182200

/-! ## A182200.P9140759701977840878

`A273960(n+1)²-3`
-/

namespace A182200.P9140759701977840878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1) ^ 2 - 3

end

end A182200.P9140759701977840878

namespace A182200

/-- `A273960(n+1)²-3` -/
def P9140759701977840878.Spec : Prop :=
  ∀ n, P9140759701977840878.a n = A182200 (n + 1)

end A182200

/-! ## A182200.P5683296724286731341

`sqrt(A030514(n+1))-3`
-/

namespace A182200.P5683296724286731341
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030514 (n + 1) : ℝ) - 3

end

end A182200.P5683296724286731341

namespace A182200

/-- `sqrt(A030514(n+1))-3` -/
def P5683296724286731341.Spec : Prop :=
  ∀ n, P5683296724286731341.a n = (A182200 (n + 1) : ℝ)

end A182200

/-! ## A182200.P7620710562092376843

`A079704(n+1)/2-3`
-/

namespace A182200.P7620710562092376843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079704 (n + 1) : ℚ) / 2 - 3

end

end A182200.P7620710562092376843

namespace A182200

/-- `A079704(n+1)/2-3` -/
def P7620710562092376843.Spec : Prop :=
  ∀ n, P7620710562092376843.a n = (A182200 (n + 1) : ℚ)

end A182200

/-! ## A182200.P11789258358875631341

`A079705(n+1)/3-3`
-/

namespace A182200.P11789258358875631341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079705 (n + 1) : ℚ) / 3 - 3

end

end A182200.P11789258358875631341

namespace A182200

/-- `A079705(n+1)/3-3` -/
def P11789258358875631341.Spec : Prop :=
  ∀ n, P11789258358875631341.a n = (A182200 (n + 1) : ℚ)

end A182200

/-! ## A182200.P26092056845469865

`A069262(n+1)/4-3`
-/

namespace A182200.P26092056845469865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069262 (n + 1) : ℚ) / 4 - 3

end

end A182200.P26092056845469865

namespace A182200

/-- `A069262(n+1)/4-3` -/
def P26092056845469865.Spec : Prop :=
  ∀ n, P26092056845469865.a n = (A182200 (n + 1) : ℚ)

end A182200

/-!
# A182201: Fibonacci-type sequence based on bitwise exclusive-or: a(0) = 0, a(1) = 1 and a(n) = a(n-1) + (a(n-1) xor a(n-2)).

The programs for A182201, there is no canonical definition to state claims against.
-/

/-! ## A182201.P15909512387422280103

`a(n-1)+xor(a(n-1), a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A182201.P15909512387422280103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + Nat.xor (a (n - 1)) (a (n - 2))

end

end A182201.P15909512387422280103

/-! ## A182201.P2800014776628077755

`2*or(a(n-1), a(n-2))-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A182201.P2800014776628077755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * Int.lor (a (n - 1)) (a (n - 2)) - a (n - 2)

end

end A182201.P2800014776628077755

/-! ## A182201.P10787557628113331034

`a(n-1)-xor(-2, xor(a(n-1), a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A182201.P10787557628113331034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - Int.xor (-2) (Int.xor (a (n - 1)) (a (n - 2)))

end

end A182201.P10787557628113331034

/-! ## A182201.P14817199343905135327

`xor(a(n-1), a(n-2))-(n²%n-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A182201.P14817199343905135327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.xor (a (n - 1)) (a (n - 2)) - (((n ^ 2 % n : ℕ) : ℤ) - a (n - 1))

end

end A182201.P14817199343905135327

/-!
# A182202: Fibonacci-type sequence based on bitwise inclusive-or: a(0) = 0, a(1) = 1 and a(n) = a(n-1) + (a(n-1) or a(n-2)).

The programs for A182202, the canonical program `A182202.P16475500328841457179` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182202 has offset 0).

The definition of A182202 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182202.P16475500328841457179

`a(n-1)+3*a(n-2)-a(n-3)-2*a(n-5)-4*a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5, a(4)=12, a(5)=25, a(6)=54, a(7)=117`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182202

/-- `a(n-1)+3*a(n-2)-a(n-3)-2*a(n-5)-4*a(n-6)` -/
def P16475500328841457179.Spec : Prop :=
  ∀ n, P16475500328841457179.a n = A182202 n

theorem P16475500328841457179.correct : P16475500328841457179.Spec := by
  intro n
  simp only [A182202]

end A182202

/-! ## A182202.P2433348273195185669

`a(n-1)+or(a(n-1), a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A182202.P2433348273195185669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + Nat.lor (a (n - 1)) (a (n - 2))

end

end A182202.P2433348273195185669

namespace A182202

/-- `a(n-1)+or(a(n-1), a(n-2))` -/
def P2433348273195185669.Spec : Prop :=
  ∀ n, (P2433348273195185669.a n : ℤ) = A182202 n

end A182202

/-! ## A182202.P443818458325809536

`2*a(n-1)+a(n-2)-and(a(n-1), a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A182202.P443818458325809536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a (n - 1) + (a (n - 2) - Int.land (a (n - 1)) (a (n - 2)))

end

end A182202.P443818458325809536

namespace A182202

/-- `2*a(n-1)+a(n-2)-and(a(n-1), a(n-2))` -/
def P443818458325809536.Spec : Prop :=
  ∀ n, P443818458325809536.a n = A182202 n

end A182202

/-! ## A182202.P911606741332188542

`2*a(n-1)-(a(n-1)-or(a(n-1), a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A182202.P911606741332188542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a (n - 1) - (a (n - 1) - Int.lor (a (n - 1)) (a (n - 2)))

end

end A182202.P911606741332188542

namespace A182202

/-- `2*a(n-1)-(a(n-1)-or(a(n-1), a(n-2)))` -/
def P911606741332188542.Spec : Prop :=
  ∀ n, P911606741332188542.a n = A182202 n

end A182202

/-! ## A182202.P996047302817653826

`2*a(n-1)-(and(a(n-1), a(n-2))-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A182202.P996047302817653826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a (n - 1) - (Int.land (a (n - 1)) (a (n - 2)) - a (n - 2))

end

end A182202.P996047302817653826

namespace A182202

/-- `2*a(n-1)-(and(a(n-1), a(n-2))-a(n-2))` -/
def P996047302817653826.Spec : Prop :=
  ∀ n, P996047302817653826.a n = A182202 n

end A182202

/-! ## A182202.P12715718872377168874

`a(n-1)+a(n-1)+a(n-2)-and(a(n-1), a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A182202.P12715718872377168874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 2) - Int.land (a (n - 1)) (a (n - 2))))

end

end A182202.P12715718872377168874

namespace A182202

/-- `a(n-1)+a(n-1)+a(n-2)-and(a(n-1), a(n-2))` -/
def P12715718872377168874.Spec : Prop :=
  ∀ n, P12715718872377168874.a n = A182202 n

end A182202

/-!
# A182203: Numbers n for which A068869(n) > sqrt(n!).

The programs for A182203, there is no canonical definition to state claims against.
-/

/-! ## A182203.P6589350694517911849

`comp[A182204(n+1)-1]+1`
-/

namespace A182203.P6589350694517911849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182204 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A182203.P6589350694517911849

/-! ## A182203.P1887076195269759758

`eq[char[A182204(n+1)], A151933(n)]`
-/

namespace A182203.P1887076195269759758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182204 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A182203.P1887076195269759758

/-!
# A182204: Numbers n for which A068869(n) < sqrt(n!).

The programs for A182204, there is no canonical definition to state claims against.
-/

/-! ## A182204.P11431671301738555113

`eq[char[A182203(n+1)], A151933(n)]`
-/

namespace A182204.P11431671301738555113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182203 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A182204.P11431671301738555113

/-! ## A182204.P7901719245499830732

`∑[gcd(A080134(n+1), A175304(2*n+1))]`
-/

namespace A182204.P7901719245499830732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080134 (n + 1)) (A175304 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182204.P7901719245499830732

/-! ## A182204.P13366283477846053348

`lt[A177031(A177040(n+4)), A177041(n+1)]`
-/

namespace A182204.P13366283477846053348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177031 (A177040 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177041 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A182204.P13366283477846053348

/-! ## A182204.P14671283220386067940

`lt[A331106(n+1), A331103(A331117(n+1))]`
-/

namespace A182204.P14671283220386067940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331103 (A331117 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A182204.P14671283220386067940

/-!
# A182205: Iterate the map in A006368 starting at 40.

The programs for A182205, there is no canonical definition to state claims against.
-/

/-! ## A182205.P1173685106721813177

`A006368(a(n-1))` with `a(0)=40`
-/

namespace A182205.P1173685106721813177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [40] fun n a =>
  A006368 (a (n - 1)).toNat

end

end A182205.P1173685106721813177

/-! ## A182205.P12067530841308222236

`A351412(xor(1, a(n-1)))` with `a(0)=40`
-/

namespace A182205.P12067530841308222236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [40] fun n a =>
  A351412 (Int.xor 1 (a (n - 1))).toNat

end

end A182205.P12067530841308222236

/-! ## A182205.P248878818329715522

`floor(A165355(a(n-1))/2)` with `a(0)=40`
-/

namespace A182205.P248878818329715522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [40] fun n a =>
  ⌊(A165355 (a (n - 1)).toNat : ℚ) / 2⌋

end

end A182205.P248878818329715522

/-! ## A182205.P10636628821483985953

`A342131(a(n-1)-1)+1` with `a(0)=40`
-/

namespace A182205.P10636628821483985953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [40] fun n a =>
  A342131 (a (n - 1) - 1).toNat + 1

end

end A182205.P10636628821483985953

/-! ## A182205.P14361249824345171650

`A006368(ceil(a(A023443(n))))` with `a(0)=40`

`ceil` is left out, it is the identity on integers.
-/

namespace A182205.P14361249824345171650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [40] fun n a =>
  A006368 (a (A023443 n).toNat).toNat

end

end A182205.P14361249824345171650

/-! ## A182205.P16538204878421888775

`A168221(A006369(a(n-1)))` with `a(0)=40`
-/

namespace A182205.P16538204878421888775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [40] fun n a =>
  A168221 (A006369 (a (n - 1)).toNat).toNat

end

end A182205.P16538204878421888775

/-! ## A182205.P17488591648460564638

`A074306(A159966(a(n-1)))` with `a(0)=40`
-/

namespace A182205.P17488591648460564638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [40] fun n a =>
  A074306 (A159966 (a (n - 1)).toNat).toNat

end

end A182205.P17488591648460564638

/-!
# A182207: Carmichael numbers of the form C = p*(2p-1)*(n*(2p-2)+p), where p and 2p-1 are prime numbers.

The programs for A182207, there is no canonical definition to state claims against.
-/

/-! ## A182207.P3511784804739272014

`A002997(∏{e}[A134708(n+3), #])`
-/

namespace A182207.P3511784804739272014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134708 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A182207.P3511784804739272014

/-!
# A182208: Carmichael numbers divisible by 7.

The programs for A182208, there is no canonical definition to state claims against.
-/

/-! ## A182208.P2792931926062607198

`A002997(eq[0, A002997(n+1)%7]+1)`
-/

namespace A182208.P2792931926062607198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002997 (n + 1)) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A182208.P2792931926062607198

/-! ## A182208.P5889967592668694012

`A002997(lt[A064192(2*(n+1)), A305989(n)])`
-/

namespace A182208.P5889967592668694012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064192 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A182208.P5889967592668694012

/-! ## A182208.P8155501486073361135

`A002997(lt[A123910(n+1), A270897(n)])`
-/

namespace A182208.P8155501486073361135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A182208.P8155501486073361135

/-! ## A182208.P11573217597465309215

`A002997(lt[A165025(n+4), n])`
-/

namespace A182208.P11573217597465309215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165025 (n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A182208.P11573217597465309215

/-! ## A182208.P1985263646373579111

`A002997(lt[A321451(n+3), A000217(n)])`
-/

namespace A182208.P1985263646373579111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321451 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A182208.P1985263646373579111

/-!
# A182210: Triangle T(n,k) = floor(k*(n+1)/(k+1)), 1 <= k <= n.

The programs for A182210, the canonical program `A182210.P17113691228070697625` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182210 has offset 1).

The definition of A182210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182210.P6652869266512407674

`A002260(∑[A075993(n+1)])`
-/

namespace A182210.P6652869266512407674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A182210.P6652869266512407674

namespace A182210

/-- `A002260(∑[A075993(n+1)])` -/
def P6652869266512407674.Spec : Prop :=
  ∀ n, P6652869266512407674.a n = A182210 (n + 1)

end A182210

/-! ## A182210.P16667094541802880566

`∑[A075993(n+1)]-A057944(n)`
-/

namespace A182210.P16667094541802880566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057944 n

end

end A182210.P16667094541802880566

namespace A182210

/-- `∑[A075993(n+1)]-A057944(n)` -/
def P16667094541802880566.Spec : Prop :=
  ∀ n, P16667094541802880566.a n = A182210 (n + 1)

end A182210

/-! ## A182210.P17113691228070697625

`floor(A162612(n+1)/A162610(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A182210

/-- `floor(A162612(n+1)/A162610(n+1))` -/
def P17113691228070697625.Spec : Prop :=
  ∀ n, P17113691228070697625.a n = A182210 (n + 1)

theorem P17113691228070697625.correct : P17113691228070697625.Spec := by
  intro n
  simp only [A182210, Nat.add_sub_cancel]

end A182210

/-! ## A182210.P3732940267001192416

`A004736(A038722(∑[A075993(n+1)]))`
-/

namespace A182210.P3732940267001192416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A038722 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A182210.P3732940267001192416

namespace A182210

/-- `A004736(A038722(∑[A075993(n+1)]))` -/
def P3732940267001192416.Spec : Prop :=
  ∀ n, P3732940267001192416.a n = A182210 (n + 1)

end A182210

/-! ## A182210.P8430309613750359307

`A002024(n+1)-A010766(n+2)%A002024(n+2)`
-/

namespace A182210.P8430309613750359307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - Int.tmod (A010766 (n + 2)) (A002024 (n + 2))

end

end A182210.P8430309613750359307

namespace A182210

/-- `A002024(n+1)-A010766(n+2)%A002024(n+2)` -/
def P8430309613750359307.Spec : Prop :=
  ∀ n, P8430309613750359307.a n = A182210 (n + 1)

end A182210

/-! ## A182210.P3555657953529700780

`A000720(A037126(∑[A075993(n+1)]))`
-/

namespace A182210.P3555657953529700780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A037126 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A182210.P3555657953529700780

namespace A182210

/-- `A000720(A037126(∑[A075993(n+1)]))` -/
def P3555657953529700780.Spec : Prop :=
  ∀ n, P3555657953529700780.a n = A182210 (n + 1)

end A182210

/-! ## A182210.P6213857444187461869

`A065033(A158405(∑[A075993(n+1)]))`
-/

namespace A182210.P6213857444187461869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A158405 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A182210.P6213857444187461869

namespace A182210

/-- `A065033(A158405(∑[A075993(n+1)]))` -/
def P6213857444187461869.Spec : Prop :=
  ∀ n, P6213857444187461869.a n = A182210 (n + 1)

end A182210

/-! ## A182210.P14605131625056125776

`abs(A183110(n+1)-A010766(n+2))`
-/

namespace A182210.P14605131625056125776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A183110 (n + 1) - A010766 (n + 2)|

end

end A182210.P14605131625056125776

namespace A182210

/-- `abs(A183110(n+1)-A010766(n+2))` -/
def P14605131625056125776.Spec : Prop :=
  ∀ n, P14605131625056125776.a n = A182210 (n + 1)

end A182210

/-!
# A182212: a(n) = floor(n! / Fibonacci(n)).

The programs for A182212, the canonical program `A182212.P16253075558844481521` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182212 has offset 1).

The definition of A182212 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182212.P16253075558844481521

`floor(A000142(n+1)/A000045(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A182212

/-- `floor(A000142(n+1)/A000045(n+1))` -/
def P16253075558844481521.Spec : Prop :=
  ∀ n, P16253075558844481521.a n = A182212 (n + 1)

theorem P16253075558844481521.correct : P16253075558844481521.Spec := by
  intro n
  simp only [A182212, Nat.add_sub_cancel]

end A182212

/-! ## A182212.P15816731449535267998

`floor(Δ[A007489(n)]/A000045(n+1))`
-/

namespace A182212.P15816731449535267998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / (A000045 (n + 1) : ℚ)⌋

end

end A182212.P15816731449535267998

namespace A182212

/-- `floor(Δ[A007489(n)]/A000045(n+1))` -/
def P15816731449535267998.Spec : Prop :=
  ∀ n, P15816731449535267998.a n = A182212 (n + 1)

end A182212

/-! ## A182212.P5424694703832101358

`floor(record[A047920(n)]/A000045(n+1))`
-/

namespace A182212.P5424694703832101358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A000045 (n + 1) : ℚ)⌋

end

end A182212.P5424694703832101358

namespace A182212

/-- `floor(record[A047920(n)]/A000045(n+1))` -/
def P5424694703832101358.Spec : Prop :=
  ∀ n, P5424694703832101358.a n = A182212 (n + 1)

end A182212

/-! ## A182212.P16842262803248021905

`floor(record[A098361(n)]/A000045(n+1))`
-/

namespace A182212.P16842262803248021905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A000045 (n + 1) : ℚ)⌋

end

end A182212.P16842262803248021905

namespace A182212

/-- `floor(record[A098361(n)]/A000045(n+1))` -/
def P16842262803248021905.Spec : Prop :=
  ∀ n, P16842262803248021905.a n = A182212 (n + 1)

end A182212

/-! ## A182212.P13706993323822501019

`floor(A081123(2*(n+1))/A212804(n+2))`
-/

namespace A182212.P13706993323822501019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081123 (2 * (n + 1)) : ℚ) / (A212804 (n + 2) : ℚ)⌋

end

end A182212.P13706993323822501019

namespace A182212

/-- `floor(A081123(2*(n+1))/A212804(n+2))` -/
def P13706993323822501019.Spec : Prop :=
  ∀ n, P13706993323822501019.a n = A182212 (n + 1)

end A182212

/-! ## A182212.P10704491648989250775

`(A000142(n+1)-A182213(n+1))/A000045(n+1)`
-/

namespace A182212.P10704491648989250775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) - A182213 (n + 1) : ℚ) / (A000045 (n + 1) : ℚ)

end

end A182212.P10704491648989250775

namespace A182212

/-- `(A000142(n+1)-A182213(n+1))/A000045(n+1)` -/
def P10704491648989250775.Spec : Prop :=
  ∀ n, P10704491648989250775.a n = (A182212 (n + 1) : ℚ)

end A182212

/-!
# A182213: a(n) = n! mod Fibonacci(n).

The programs for A182213, there is no canonical definition to state claims against.
-/

/-! ## A182213.P9391027220004487225

`(n+1)!%A000045(n+1)`
-/

namespace A182213.P9391027220004487225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (n + 1) : ℤ) (A000045 (n + 1))

end

end A182213.P9391027220004487225

/-! ## A182213.P16936921629935459394

`∏[n+1]%Δ[A000045(n+2)]`
-/

namespace A182213.P16936921629935459394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (f2 (n + 1) - f2 n)

end

end A182213.P16936921629935459394

/-! ## A182213.P15206589061798709213

`A000142(n+1)%∑[A212804(n)]`
-/

namespace A182213.P15206589061798709213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000142 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182213.P15206589061798709213

/-! ## A182213.P7957009555936878789

`A080568(n+1)%∑[A212804(n)]`
-/

namespace A182213.P7957009555936878789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080568 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182213.P7957009555936878789

/-! ## A182213.P4558321108233990080

`Δ[A007489(n)]%A000045(n+1)`
-/

namespace A182213.P4558321108233990080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000045 (n + 1))

end

end A182213.P4558321108233990080

/-! ## A182213.P8597358198239712310

`∏[A000027(n+1)]%A000045(n+1)`
-/

namespace A182213.P8597358198239712310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A000045 (n + 1))

end

end A182213.P8597358198239712310

/-! ## A182213.P7661129826331668373

`∏[A007318(∑[n+1]+1)]%A000045(n+1)`
-/

namespace A182213.P7661129826331668373
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A000045 (n + 1))

end

end A182213.P7661129826331668373

/-! ## A182213.P10507388337321825002

`A000142(n+1)-A000045(n+1)*A182212(n+1)`
-/

namespace A182213.P10507388337321825002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - A000045 (n + 1) * A182212 (n + 1)

end

end A182213.P10507388337321825002

/-!
# A182214: Bondage number of the Cartesian product graph G = C_n X K_2.

The programs for A182214, the canonical program `A182214.P178119645952427975` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182214 has offset 3).

The definition of A182214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182214.P178119645952427975

`a(n-4)` with `a(0)=3, a(1)=2, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182214

/-- `a(n-4)` -/
def P178119645952427975.Spec : Prop :=
  ∀ n, (P178119645952427975.a n : ℤ) = A182214 (n + 3)

theorem P178119645952427975.correct : P178119645952427975.Spec := by
  intro n
  simp only [A182214, Nat.add_sub_cancel]

end A182214

/-!
# A182215: Bondage number of the Cartesian product graph G = C_n X C_3.

The programs for A182215, the canonical program `A182215.P6305106701909261642` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182215 has offset 4).

The definition of A182215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182215.P6305106701909261642

`a(n-4)` with `a(0)=2, a(1)=4, a(2)=4, a(3)=5`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182215

/-- `a(n-4)` -/
def P6305106701909261642.Spec : Prop :=
  ∀ n, (P6305106701909261642.a n : ℤ) = A182215 (n + 4)

theorem P6305106701909261642.correct : P6305106701909261642.Spec := by
  intro n
  simp only [A182215, Nat.add_sub_cancel]

end A182215

/-!
# A182216: Number of permutations sortable by a double-ended queue.

The programs for A182216, there is no canonical definition to state claims against.
-/

/-! ## A182216.P14136769263582949923

`A008621(record[A187250(n)])`
-/

namespace A182216.P14136769263582949923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A182216.P14136769263582949923

/-! ## A182216.P8686440372247895980

`A008621(A187251(n+1))`
-/

namespace A182216.P8686440372247895980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A187251 (n + 1)).toNat

end

end A182216.P8686440372247895980

/-! ## A182216.P9311688160969522785

`A008621(record[A216964(n+1)])`
-/

namespace A182216.P9311688160969522785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A182216.P9311688160969522785

/-!
# A182217: Primes p = prime(n) such that there is k>0 for which prime(n+k) = prime(n) + 4^(k-1).

The programs for A182217, there is no canonical definition to state claims against.
-/

/-! ## A182217.P2135067744868387600

`p?[A076436(A294652(n+1))]`
-/

namespace A182217.P2135067744868387600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076436 (A294652 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182217.P2135067744868387600

/-! ## A182217.P3051120369040420988

`A000040(eq[A065531(2*(n+1)), A221171(2*n+1)])`
-/

namespace A182217.P3051120369040420988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065531 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221171 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A182217.P3051120369040420988

/-!
# A182218: Numbers derived as with Lucky Numbers, but beginning with the removal of every third number instead of every second.

The programs for A182218, there is no canonical definition to state claims against.
-/

/-! ## A182218.P12812032255798533831

`record[gcd(A216241(n), A216256(n+1))]`
-/

namespace A182218.P12812032255798533831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A216241 n) (A216256 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182218.P12812032255798533831

/-!
# A182219: Where A024573 becomes a record.

The programs for A182219, there is no canonical definition to state claims against.
-/

/-! ## A182219.P14832031519346754662

`A006259(A358511(n+2))`
-/

namespace A182219.P14832031519346754662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006259 (A358511 (n + 2)).toNat

end

end A182219.P14832031519346754662

/-! ## A182219.P12120246479850133546

`record[A006259(n+1)*A342991(n+1)]`
-/

namespace A182219.P12120246479850133546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006259 (n + 1) * A342991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182219.P12120246479850133546

/-! ## A182219.P10057711410867064823

`record[A191665(A052938(n))%2*A006259(n+1)]`
-/

namespace A182219.P10057711410867064823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191665 (A052938 n).toNat) 2 * A006259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182219.P10057711410867064823

/-! ## A182219.P14459048026641903803

`record[(A062557(n)+A000194(n))%2*A006259(n+1)]`
-/

namespace A182219.P14459048026641903803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062557 n + A000194 n) 2 * A006259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182219.P14459048026641903803

/-! ## A182219.P13175370951766687478

`A389581(∑[n]+1)`
-/

namespace A182219.P13175370951766687478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389581 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A182219.P13175370951766687478

/-!
# A182220: Largest number k such that there exists an extensional acyclic digraph on n labeled nodes with k sources.

The programs for A182220, there is no canonical definition to state claims against.
-/

/-! ## A182220.P14938011253778409969

`∑[char[comp[2^n]]]`
-/

namespace A182220.P14938011253778409969
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182220.P14938011253778409969

/-! ## A182220.P13776406530166617457

`ceil(log2(acot(n))+n)`
-/

namespace A182220.P13776406530166617457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (SequenceMachineLib.acot (n : ℝ)) + (n : ℝ)⌉

end

end A182220.P13776406530166617457

/-! ## A182220.P57492963926827829

`n-floor(-log2(acot(n)))`
-/

namespace A182220.P57492963926827829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊-Real.logb 2 (SequenceMachineLib.acot (n : ℝ))⌋

end

end A182220.P57492963926827829

/-! ## A182220.P9366005918584925778

`ceil(abs(log2(or(2, n))-n))`
-/

namespace A182220.P9366005918584925778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.logb 2 (Nat.lor 2 n : ℝ) - (n : ℝ)|⌉

end

end A182220.P9366005918584925778

/-! ## A182220.P6186638808499340011

`n-floor(log2(cos(1)+n))`
-/

namespace A182220.P6186638808499340011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊Real.logb 2 (Real.cos (1 : ℝ) + (n : ℝ))⌋

end

end A182220.P6186638808499340011

/-! ## A182220.P7707391494732699509

`ceil(n-log2(cos(1)+n))`
-/

namespace A182220.P7707391494732699509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) - Real.logb 2 (Real.cos (1 : ℝ) + (n : ℝ))⌉

end

end A182220.P7707391494732699509

/-! ## A182220.P8593813647107945346

`n-floor(log2(sin(1)+n))`
-/

namespace A182220.P8593813647107945346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊Real.logb 2 (Real.sin (1 : ℝ) + (n : ℝ))⌋

end

end A182220.P8593813647107945346

/-! ## A182220.P18051789880155454601

`ceil(n-log2(sin(1)+n))`
-/

namespace A182220.P18051789880155454601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) - Real.logb 2 (Real.sin (1 : ℝ) + (n : ℝ))⌉

end

end A182220.P18051789880155454601

/-! ## A182220.P1114665291873658424

`floor(log2(acot(n))+n+1)`
-/

namespace A182220.P1114665291873658424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (SequenceMachineLib.acot (n : ℝ)) + (n + 1 : ℝ)⌋

end

end A182220.P1114665291873658424

/-! ## A182220.P2391492113851108061

`n+1-dr(ceil(log2(n+1)))`
-/

namespace A182220.P2391492113851108061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (SequenceMachineLib.digitalRoot ⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)

end

end A182220.P2391492113851108061

/-!
# A182222: Number T(n,k) of standard Young tableaux of n cells and height >= k; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A182222, there is no canonical definition to state claims against.
-/

/-! ## A182222.P2199400692419549598

`A048766(A127054(n)^3)*A089404(A158821(n))`
-/

namespace A182222.P2199400692419549598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A127054 n ^ 3).toNat * A089404 (A158821 n).toNat

end

end A182222.P2199400692419549598

/-! ## A182222.P2202973142793858105

`A129382(A344639(n))`
-/

namespace A182222.P2202973142793858105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129382 (A344639 n).toNat

end

end A182222.P2202973142793858105

/-! ## A182222.P17084960477115597710

`A185414(n+1)-A240500(A185414(n+1))`
-/

namespace A182222.P17084960477115597710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185414 (n + 1) - A240500 (A185414 (n + 1)).toNat

end

end A182222.P17084960477115597710

/-! ## A182222.P12697710680235478560

`A325367(A128175(n+1)^A046534(n+1))`
-/

namespace A182222.P12697710680235478560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325367 (SequenceMachineLib.roundAway ((A128175 (n + 1) : ℚ) ^ (A046534 (n + 1) : ℤ))).toNat

end

end A182222.P12697710680235478560

/-!
# A182224: G.f. satisfies: A(x) = 1 + x*A(x) * A(A(x) - 1).

The programs for A182224, there is no canonical definition to state claims against.
-/

/-! ## A182224.P8847484447566402638

`A293975(A355164(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A182224.P8847484447566402638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A293975 (A355164 (n - 1) + a (n - 1)).toNat

end

end A182224.P8847484447566402638

/-!
# A182225: Numbers m such that the sum of their divisors smaller than A033880(m) is greater than A033880(m).

The programs for A182225, there is no canonical definition to state claims against.
-/

/-! ## A182225.P969327352258983891

`lt[A103298(n), A000065(A032741(n))]`
-/

namespace A182225.P969327352258983891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A182225.P969327352258983891

/-! ## A182225.P16894899681817160322

`lt[A023036(n), A029889(A032741(n))]`
-/

namespace A182225.P16894899681817160322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023036 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029889 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A182225.P16894899681817160322

/-! ## A182225.P3621569090287312168

`lt[A046693(n), A000041(A032741(n))]`
-/

namespace A182225.P3621569090287312168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046693 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A182225.P3621569090287312168

/-! ## A182225.P5119846614708043800

`lt[A326698(3*n+2), A000045(A033630(n))]`
-/

namespace A182225.P5119846614708043800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326698 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A033630 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A182225.P5119846614708043800

/-! ## A182225.P14688289352624024974

`lt[A004823(n+1), A006884(A226602(n))]`
-/

namespace A182225.P14688289352624024974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006884 (A226602 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A182225.P14688289352624024974

/-!
# A182226: Abundant numbers m (in A005101) whose sum of divisors less than their abundance A033880(m) does not exceed A033880(m).

The programs for A182226, there is no canonical definition to state claims against.
-/

/-! ## A182226.P8334131190190990016

`∩[A091191(n+1), A174000(n+1)]`
-/

namespace A182226.P8334131190190990016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182226.P8334131190190990016

/-! ## A182226.P8892876167240367320

`A091191(∑[A307084(n)^(A104781(n+1)%3)]+1)`
-/

namespace A182226.P8892876167240367320
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307084 n : ℚ) ^ (Int.tmod (A104781 (n + 1)) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A182226.P8892876167240367320

/-!
# A182228: a(n) = 3*a(n-2) - a(n-1) for n > 1, a(0) = 0, a(1) = 1.

The programs for A182228, the canonical program `A182228.P11946368153864818958` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182228 has offset 0).

The definition of A182228 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-2)-a(n-1)` (program `A182228.P11946368153864818958`, by `A182228.P11946368153864818958.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182228.P11946368153864818958

`3*a(n-2)-a(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182228

/-- `3*a(n-2)-a(n-1)` -/
def P11946368153864818958.Spec : Prop :=
  ∀ n, P11946368153864818958.a n = A182228 n

theorem P11946368153864818958.correct : P11946368153864818958.Spec := by
  intro n
  simp only [A182228]

end A182228

/-! ## A182228.P4991552612097909363

`ogf(x/(1+x-3x^2))`
-/

namespace A182228.P4991552612097909363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, 1, -3] n

end

end A182228.P4991552612097909363

namespace A182228

/-- `ogf(x/(1+x-3x^2))` -/
def P4991552612097909363.Spec : Prop :=
  ∀ n, P4991552612097909363.a n = A182228 n

end A182228

/-! ## A182228.P15094529411090623619

`a(n-2)/(1-2/3)-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A182228.P15094529411090623619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) / (1 - (2 : ℚ) / 3) - a (n - 1)

end

end A182228.P15094529411090623619

namespace A182228

/-- `a(n-2)/(1-2/3)-a(n-1)` -/
def P15094529411090623619.Spec : Prop :=
  ∀ n, P15094529411090623619.a n = (A182228 n : ℚ)

end A182228

/-! ## A182228.P1929383647554242036

`a(n-2)+a(n-2)+a(n-2)-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A182228.P1929383647554242036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 2) - a (n - 1)))

end

end A182228.P1929383647554242036

namespace A182228

/-- `a(n-2)+a(n-2)+a(n-2)-a(n-1)` -/
def P1929383647554242036.Spec : Prop :=
  ∀ n, P1929383647554242036.a n = A182228 n

theorem P1929383647554242036.correct : P1929383647554242036.Spec := by
  intro n
  simp only [A182228, Nat.add_sub_cancel, A182228.P1929383647554242036.a, A182228.P11946368153864818958.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A182228

/-! ## A182228.P14293982334491742913

`a(n-2)-(a(n-1)-a(n-2)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A182228.P14293982334491742913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) - (a (n - 1) - a (n - 2) - a (n - 2))

end

end A182228.P14293982334491742913

namespace A182228

/-- `a(n-2)-(a(n-1)-a(n-2)-a(n-2))` -/
def P14293982334491742913.Spec : Prop :=
  ∀ n, P14293982334491742913.a n = A182228 n

theorem P14293982334491742913.correct : P14293982334491742913.Spec := by
  intro n
  simp only [A182228, Nat.add_sub_cancel, A182228.P14293982334491742913.a, A182228.P11946368153864818958.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A182228

/-! ## A182228.P5101123876108229415

`Δ[A140165(A160413(abs(1-n)+n+1))]`
-/

namespace A182228.P5101123876108229415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140165 (A160413 (|1 - (n : ℤ)| + (n + 1 : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182228.P5101123876108229415

namespace A182228

/-- `Δ[A140165(A160413(abs(1-n)+n+1))]` -/
def P5101123876108229415.Spec : Prop :=
  ∀ n, P5101123876108229415.a n = A182228 n

end A182228

/-! ## A182228.P5380652813707313191

`A140165(n+1)-A140165(A000007(n)+n)`
-/

namespace A182228.P5380652813707313191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140165 (n + 1) - A140165 (A000007 n + (n : ℤ)).toNat

end

end A182228.P5380652813707313191

namespace A182228

/-- `A140165(n+1)-A140165(A000007(n)+n)` -/
def P5380652813707313191.Spec : Prop :=
  ∀ n, P5380652813707313191.a n = A182228 n

end A182228

/-! ## A182228.P496508096398731982

`A140165(n+1)-A140165(A004277(n)-n)`
-/

namespace A182228.P496508096398731982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140165 (n + 1) - A140165 (A004277 n - (n : ℤ)).toNat

end

end A182228.P496508096398731982

namespace A182228

/-- `A140165(n+1)-A140165(A004277(n)-n)` -/
def P496508096398731982.Spec : Prop :=
  ∀ n, P496508096398731982.a n = A182228 n

end A182228

/-! ## A182228.P11217386930560746034

`(A006138(n)-Δ[A006138(n)])*A033999(n)`
-/

namespace A182228.P11217386930560746034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006138 n - (f1 (n + 1) - f1 n)) * A033999 n

end

end A182228.P11217386930560746034

namespace A182228

/-- `(A006138(n)-Δ[A006138(n)])*A033999(n)` -/
def P11217386930560746034.Spec : Prop :=
  ∀ n, P11217386930560746034.a n = A182228 n

end A182228

/-! ## A182228.P11825978132376955619

`(A140167(n+1)+A140165(n+1))/3`
-/

namespace A182228.P11825978132376955619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140167 (n + 1) + A140165 (n + 1) : ℚ) / 3

end

end A182228.P11825978132376955619

namespace A182228

/-- `(A140167(n+1)+A140165(n+1))/3` -/
def P11825978132376955619.Spec : Prop :=
  ∀ n, P11825978132376955619.a n = (A182228 n : ℚ)

end A182228

/-!
# A182229: a(n) = a(n-1) + floor(a(n-2)/3) with a(0)=2, a(1)=3.

The programs for A182229, the canonical program `A182229.P14088679045158782960` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182229 has offset 0).

The definition of A182229 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+floor(a(n-2)/3)` (program `A182229.P14088679045158782960`, by `A182229.P14088679045158782960.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182229.P14088679045158782960

`a(n-1)+floor(a(n-2)/3)` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182229

/-- `a(n-1)+floor(a(n-2)/3)` -/
def P14088679045158782960.Spec : Prop :=
  ∀ n, P14088679045158782960.a n = A182229 n

theorem P14088679045158782960.correct : P14088679045158782960.Spec := by
  intro n
  simp only [A182229]

end A182229

/-! ## A182229.P10619283065624246572

`a(n-1)-floor((2-a(n-2))/3)` with `a(0)=2, a(1)=3`
-/

namespace A182229.P10619283065624246572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) - ⌊(2 - a (n - 2) : ℚ) / 3⌋

end

end A182229.P10619283065624246572

namespace A182229

/-- `a(n-1)-floor((2-a(n-2))/3)` -/
def P10619283065624246572.Spec : Prop :=
  ∀ n, P10619283065624246572.a n = A182229 n

end A182229

/-! ## A182229.P1346562880112721460

`a(n-1)+ceil((a(n-2)-2)/3)` with `a(0)=2, a(1)=3`
-/

namespace A182229.P1346562880112721460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) + ⌈(a (n - 2) - 2 : ℚ) / 3⌉

end

end A182229.P1346562880112721460

namespace A182229

/-- `a(n-1)+ceil((a(n-2)-2)/3)` -/
def P1346562880112721460.Spec : Prop :=
  ∀ n, P1346562880112721460.a n = A182229 n

end A182229

/-! ## A182229.P14933509604375148071

`a(n-1)+(a(n-2)-a(n-2)%3)/3` with `a(0)=2, a(1)=3`
-/

namespace A182229.P14933509604375148071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) + (a (n - 2) - (Int.tmod (SequenceMachineLib.roundAway (a (n - 2))) 3 : ℚ)) / 3

end

end A182229.P14933509604375148071

namespace A182229

/-- `a(n-1)+(a(n-2)-a(n-2)%3)/3` -/
def P14933509604375148071.Spec : Prop :=
  ∀ n, P14933509604375148071.a n = (A182229 n : ℚ)

end A182229

/-! ## A182229.P13764324938408861484

`A002264(a(n-2))+a(n-1)` with `a(0)=2, a(1)=3`
-/

namespace A182229.P13764324938408861484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A002264 (a (n - 2)).toNat + a (n - 1)

end

end A182229.P13764324938408861484

namespace A182229

/-- `A002264(a(n-2))+a(n-1)` -/
def P13764324938408861484.Spec : Prop :=
  ∀ n, P13764324938408861484.a n = A182229 n

end A182229

/-!
# A182230: a(n) = a(n-1)+floor(a(n-2)/4) with a(0)=3, a(1)=4.

The programs for A182230, the canonical program `A182230.P7952285408155440271` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182230 has offset 0).

The definition of A182230 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+floor(a(n-2)/4)` (program `A182230.P7952285408155440271`, by `A182230.P7952285408155440271.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182230.P7952285408155440271

`a(n-1)+floor(a(n-2)/4)` with `a(0)=3, a(1)=4`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182230

/-- `a(n-1)+floor(a(n-2)/4)` -/
def P7952285408155440271.Spec : Prop :=
  ∀ n, P7952285408155440271.a n = A182230 n

theorem P7952285408155440271.correct : P7952285408155440271.Spec := by
  intro n
  simp only [A182230]

end A182230

/-! ## A182230.P9226990831649941537

`a(n-1)-floor((3-a(n-2))/4)` with `a(0)=3, a(1)=4`
-/

namespace A182230.P9226990831649941537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 1) - ⌊(3 - a (n - 2) : ℚ) / 4⌋

end

end A182230.P9226990831649941537

namespace A182230

/-- `a(n-1)-floor((3-a(n-2))/4)` -/
def P9226990831649941537.Spec : Prop :=
  ∀ n, P9226990831649941537.a n = A182230 n

end A182230

/-! ## A182230.P11951736298595899545

`a(n-1)+ceil((a(n-2)-3)/4)` with `a(0)=3, a(1)=4`
-/

namespace A182230.P11951736298595899545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 1) + ⌈(a (n - 2) - 3 : ℚ) / 4⌉

end

end A182230.P11951736298595899545

namespace A182230

/-- `a(n-1)+ceil((a(n-2)-3)/4)` -/
def P11951736298595899545.Spec : Prop :=
  ∀ n, P11951736298595899545.a n = A182230 n

end A182230

/-! ## A182230.P14821497409174715503

`a(n-1)+(or(3, a(n-2))-3)/4` with `a(0)=3, a(1)=4`
-/

namespace A182230.P14821497409174715503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 1) + (Int.lor 3 (SequenceMachineLib.roundAway (a (n - 2))) - 3 : ℚ) / 4

end

end A182230.P14821497409174715503

namespace A182230

/-- `a(n-1)+(or(3, a(n-2))-3)/4` -/
def P14821497409174715503.Spec : Prop :=
  ∀ n, P14821497409174715503.a n = (A182230 n : ℚ)

end A182230

/-! ## A182230.P8146144667106096476

`a(n-1)-(3-or(3, a(n-2)))/4` with `a(0)=3, a(1)=4`
-/

namespace A182230.P8146144667106096476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 1) - (3 - Int.lor 3 (SequenceMachineLib.roundAway (a (n - 2))) : ℚ) / 4

end

end A182230.P8146144667106096476

namespace A182230

/-- `a(n-1)-(3-or(3, a(n-2)))/4` -/
def P8146144667106096476.Spec : Prop :=
  ∀ n, P8146144667106096476.a n = (A182230 n : ℚ)

end A182230

/-! ## A182230.P12650740969130495946

`a(n-1)+(a(n-2)-a(n-2)%4)/4` with `a(0)=3, a(1)=4`
-/

namespace A182230.P12650740969130495946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 1) + (a (n - 2) - (Int.tmod (SequenceMachineLib.roundAway (a (n - 2))) 4 : ℚ)) / 4

end

end A182230.P12650740969130495946

namespace A182230

/-- `a(n-1)+(a(n-2)-a(n-2)%4)/4` -/
def P12650740969130495946.Spec : Prop :=
  ∀ n, P12650740969130495946.a n = (A182230 n : ℚ)

end A182230

/-!
# A182232: Numbers that are palindromic in bases 2 and 5.

The programs for A182232, there is no canonical definition to state claims against.
-/

/-! ## A182232.P11034883160836015857

`∩[A006995(n+1), A029952(n+1)]`
-/

namespace A182232.P11034883160836015857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182232.P11034883160836015857

/-! ## A182232.P14011931220668145641

`eq[A055951(n), A178226(n)]`
-/

namespace A182232.P14011931220668145641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055951 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182232.P14011931220668145641

/-! ## A182232.P7351175995728679370

`eq[n, A206913(A030104(n))]`
-/

namespace A182232.P7351175995728679370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206913 (A030104 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182232.P7351175995728679370

/-!
# A182233: Numbers that are palindromic in bases 2 and 6.

The programs for A182233, there is no canonical definition to state claims against.
-/

/-! ## A182233.P10085349416808230762

`∩[A006995(n+1), A029953(n+1)]`
-/

namespace A182233.P10085349416808230762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182233.P10085349416808230762

/-! ## A182233.P13721338938272373682

`∩[A029953(n+1), A180204(n+1)]`
-/

namespace A182233.P13721338938272373682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182233.P13721338938272373682

/-! ## A182233.P14490579157271428216

`eq[n, A062130(A030105(n))]`
-/

namespace A182233.P14490579157271428216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062130 (A030105 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182233.P14490579157271428216

/-! ## A182233.P7316191915377259533

`eq[n, A030105(A175298(n))]`
-/

namespace A182233.P7316191915377259533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030105 (A175298 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182233.P7316191915377259533

/-! ## A182233.P16359645702782855511

`eq[A055953(n), A178226(n)]`
-/

namespace A182233.P16359645702782855511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182233.P16359645702782855511

/-!
# A182234: Numbers that are palindromic in bases 2 and 7.

The programs for A182234, there is no canonical definition to state claims against.
-/

/-! ## A182234.P15603224591702670544

`∩[A006995(n+1), A029954(n+1)]`
-/

namespace A182234.P15603224591702670544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182234.P15603224591702670544

/-! ## A182234.P3558433437272621206

`∩[A029954(n+1), A180204(n+1)]`
-/

namespace A182234.P3558433437272621206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182234.P3558433437272621206

/-! ## A182234.P8104167454950763670

`eq[A055955(n), A178226(n)]`
-/

namespace A182234.P8104167454950763670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182234.P8104167454950763670

/-! ## A182234.P7240200598043598914

`eq[A055955(n), A193239(n)]`
-/

namespace A182234.P7240200598043598914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193239 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182234.P7240200598043598914

/-! ## A182234.P8744100578368107442

`eq[A055955(n)², A175919(n)]`
-/

namespace A182234.P8744100578368107442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182234.P8744100578368107442

/-!
# A182236: T(n,k)=Number of n X n 0..n+k-2 arrays with new values 0 upwards introduced in row major order and every value unique in its row and column.

The programs for A182236, there is no canonical definition to state claims against.
-/

/-! ## A182236.P15965211238929397811

`A385957(A186239(n+1))`
-/

namespace A182236.P15965211238929397811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385957 (A186239 (n + 1)).toNat

end

end A182236.P15965211238929397811

/-! ## A182236.P16031958389555815245

`A003983(A306557(n)+n)`
-/

namespace A182236.P16031958389555815245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (A306557 n + (n : ℤ)).toNat

end

end A182236.P16031958389555815245

/-! ## A182236.P658429403436044855

`A104741(C(n, A196055(n+1)))`
-/

namespace A182236.P658429403436044855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104741 (Nat.choose n (A196055 (n + 1)).toNat)

end

end A182236.P658429403436044855

/-! ## A182236.P3101285380903189476

`gcd(∏[A094638(n+1)], A364080(n+1))`
-/

namespace A182236.P3101285380903189476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094638 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A364080 (n + 1))

end

end A182236.P3101285380903189476

/-! ## A182236.P3057279542826024876

`A028262(n)*A333270(A162982(n))`
-/

namespace A182236.P3057279542826024876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 n * A333270 (A162982 n).toNat

end

end A182236.P3057279542826024876

/-!
# A182237: Numbers occurring exactly in 2 rows of Pascal's triangle.

The programs for A182237, there is no canonical definition to state claims against.
-/

/-! ## A182237.P16347660109511869273

`eq[2, A059233(n+2)]+2`
-/

namespace A182237.P16347660109511869273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059233 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A182237.P16347660109511869273

/-! ## A182237.P13503149155423241588

`eq[2, round(A003016(n+2)/2)]+2`
-/

namespace A182237.P13503149155423241588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A003016 (n + 2) : ℚ) / 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A182237.P13503149155423241588

/-! ## A182237.P17970284779260792146

`A009056(eq[2, A059233(n+2)])`
-/

namespace A182237.P17970284779260792146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059233 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182237.P17970284779260792146

/-! ## A182237.P8389810830428091883

`A009056(eq[2, ceil(A003016(n+2)/2)])`
-/

namespace A182237.P8389810830428091883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003016 (n + 2) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182237.P8389810830428091883

/-! ## A182237.P13160213103265941930

`eq[2, A059233(A233583(n+1))]`
-/

namespace A182237.P13160213103265941930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059233 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182237.P13160213103265941930

/-!
# A182238: n^2 + {1,3,7} are primes.

The programs for A182238, there is no canonical definition to state claims against.
-/

/-! ## A182238.P5437256833463849758

`floor(sqrt(A200992(n+1)))`
-/

namespace A182238.P5437256833463849758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A200992 (n + 1))

end

end A182238.P5437256833463849758

/-! ## A182238.P8961210762565530326

`round(sqrt(A200992(n+1)+A000124(n)))`
-/

namespace A182238.P8961210762565530326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A200992 (n + 1) + A000124 n : ℝ))

end

end A182238.P8961210762565530326

/-! ## A182238.P777803178046225752

`round(sqrt(A200992(n+1)+A008611(n)))`
-/

namespace A182238.P777803178046225752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A200992 (n + 1) + A008611 n : ℝ))

end

end A182238.P777803178046225752

/-! ## A182238.P2517794294746749620

`round(sqrt(A200992(n+1)+A008624(n)))`
-/

namespace A182238.P2517794294746749620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A200992 (n + 1) + A008624 n : ℝ))

end

end A182238.P2517794294746749620

/-! ## A182238.P16328208273251983067

`round(sqrt(A200992(n+1)+A028242(n)))`
-/

namespace A182238.P16328208273251983067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A200992 (n + 1) + A028242 n : ℝ))

end

end A182238.P16328208273251983067

/-! ## A182238.P11573837888030459559

`round(sqrt(A200992(n+1)+A033638(n)))`
-/

namespace A182238.P11573837888030459559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A200992 (n + 1) + A033638 n : ℝ))

end

end A182238.P11573837888030459559

/-! ## A182238.P12203121098871500096

`round(sqrt(A200992(n+1)+A057979(n)))`
-/

namespace A182238.P12203121098871500096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A200992 (n + 1) + A057979 n : ℝ))

end

end A182238.P12203121098871500096

/-! ## A182238.P2813129086174029476

`round(sqrt(A200992(n+1)+A193330(n)))`
-/

namespace A182238.P2813129086174029476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A200992 (n + 1) + A193330 n : ℝ))

end

end A182238.P2813129086174029476

/-! ## A182238.P863383555774032526

`round(sqrt(A200992(n+1)+A005574(n+1)))`
-/

namespace A182238.P863383555774032526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A200992 (n + 1) + A005574 (n + 1) : ℝ))

end

end A182238.P863383555774032526

/-! ## A182238.P4503092372906399385

`round(sqrt(A200992(n+1)+A123232(n+1)))`
-/

namespace A182238.P4503092372906399385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A200992 (n + 1) + A123232 (n + 1) : ℝ))

end

end A182238.P4503092372906399385

/-! ## A182238.P14246052297261499605

`round(sqrt(A200992(n+1)))%A145824(n+1)`
-/

namespace A182238.P14246052297261499605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A200992 (n + 1) : ℝ))) (A145824 (n + 1))

end

end A182238.P14246052297261499605

/-! ## A182238.P13588257611183807320

`sqrt(A200992(n+1)-A000027(n+1)+n)`
-/

namespace A182238.P13588257611183807320
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A200992 (n + 1) - A000027 (n + 1) + (n : ℤ) : ℝ)

end

end A182238.P13588257611183807320

/-! ## A182238.P17539784021336862216

`A000027(round(sqrt(A200992(n+1))))`
-/

namespace A182238.P17539784021336862216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (A200992 (n + 1) : ℝ))).toNat

end

end A182238.P17539784021336862216

/-! ## A182238.P2328470616312002232

`A000027(sqrt(A200992(n+1)-1))`
-/

namespace A182238.P2328470616312002232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (A200992 (n + 1) - 1 : ℝ))).toNat

end

end A182238.P2328470616312002232

/-! ## A182238.P15158962971396627097

`∩[A080149(n+1), A114270(n+1)]`
-/

namespace A182238.P15158962971396627097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182238.P15158962971396627097

/-!
# A182240: Number of inequivalent ways to select n cards in the game of SET.

The programs for A182240, there is no canonical definition to state claims against.
-/

/-! ## A182240.P12178022543800783313

`A147680(A203254(n))`
-/

namespace A182240.P12178022543800783313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147680 (A203254 n).toNat

end

end A182240.P12178022543800783313

/-! ## A182240.P10685644771652340905

`A061375(A226919(n)+A005041(n))`
-/

namespace A182240.P10685644771652340905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061375 (A226919 n + A005041 n).toNat

end

end A182240.P10685644771652340905

/-! ## A182240.P1686492317706280381

`A061375(A226919(n)+A161511(n))`
-/

namespace A182240.P1686492317706280381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061375 (A226919 n + A161511 n).toNat

end

end A182240.P1686492317706280381

/-! ## A182240.P4709786063558672140

`or(A025581(n), A106432(A351437(n)))`
-/

namespace A182240.P4709786063558672140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025581 n) (A106432 (A351437 n).toNat)

end

end A182240.P4709786063558672140

/-! ## A182240.P6558249142227510800

`or(A025581(n), A106432(A369073(n)))`
-/

namespace A182240.P6558249142227510800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025581 n) (A106432 (A369073 n).toNat)

end

end A182240.P6558249142227510800

/-!
# A182241: a(n) = A161151(2*n)/2.

The programs for A182241, the canonical program `A182241.P14117920830445222152` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182241 has offset 1).

The definition of A182241 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161151, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A182241.P14117920830445222152

`A161151(2*(n+1))/2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A182241

/-- `A161151(2*(n+1))/2` -/
def P14117920830445222152.Spec : Prop :=
  ∀ n, P14117920830445222152.a n = (A182241 (n + 1) : ℚ)

end A182241

/-! ## A182241.P4089732422370199462

`2^val(n+1, 2)*(2*n+3)`
-/

namespace A182241.P4089732422370199462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2 * (2 * n + 3)

end

end A182241.P4089732422370199462

namespace A182241

/-- `2^val(n+1, 2)*(2*n+3)` -/
def P4089732422370199462.Spec : Prop :=
  ∀ n, (P4089732422370199462.a n : ℤ) = A182241 (n + 1)

end A182241

/-! ## A182241.P12540537186119848228

`(3/2+n)*(xor(n, n+1)+1)`
-/

namespace A182241.P12540537186119848228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) / 2 + (n : ℚ)) * (Nat.xor n (n + 1) + 1 : ℚ)

end

end A182241.P12540537186119848228

namespace A182241

/-- `(3/2+n)*(xor(n, n+1)+1)` -/
def P12540537186119848228.Spec : Prop :=
  ∀ n, P12540537186119848228.a n = (A182241 (n + 1) : ℚ)

end A182241

/-! ## A182241.P10967459929574003702

`lcm(n+3+n, 2^val(n+1, 2))`
-/

namespace A182241.P10967459929574003702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 3 + n) (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A182241.P10967459929574003702

namespace A182241

/-- `lcm(n+3+n, 2^val(n+1, 2))` -/
def P10967459929574003702.Spec : Prop :=
  ∀ n, (P10967459929574003702.a n : ℤ) = A182241 (n + 1)

end A182241

/-! ## A182241.P11382663761741786688

`(2*n+3)*and(n+1, -(n+1))`
-/

namespace A182241.P11382663761741786688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

end

end A182241.P11382663761741786688

namespace A182241

/-- `(2*n+3)*and(n+1, -(n+1))` -/
def P11382663761741786688.Spec : Prop :=
  ∀ n, P11382663761741786688.a n = A182241 (n + 1)

end A182241

/-! ## A182241.P17793776924127711780

`lcm(2*n+3, or(n+1, -(n+1)))`
-/

namespace A182241.P17793776924127711780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 3 : ℤ) (Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)))

end

end A182241.P17793776924127711780

namespace A182241

/-- `lcm(2*n+3, or(n+1, -(n+1)))` -/
def P17793776924127711780.Spec : Prop :=
  ∀ n, (P17793776924127711780.a n : ℤ) = A182241 (n + 1)

end A182241

/-! ## A182241.P11410360326141827769

`(2*n+3)*(n+1-and(n, n+1))`
-/

namespace A182241.P11410360326141827769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ))

end

end A182241.P11410360326141827769

namespace A182241

/-- `(2*n+3)*(n+1-and(n, n+1))` -/
def P11410360326141827769.Spec : Prop :=
  ∀ n, P11410360326141827769.a n = A182241 (n + 1)

end A182241

/-! ## A182241.P8547412256622736160

`(2*n+3)*gcd(n+1, and(n, n+1))`
-/

namespace A182241.P8547412256622736160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 3) * Nat.gcd (n + 1) (Nat.land n (n + 1))

end

end A182241.P8547412256622736160

namespace A182241

/-- `(2*n+3)*gcd(n+1, and(n, n+1))` -/
def P8547412256622736160.Spec : Prop :=
  ∀ n, (P8547412256622736160.a n : ℤ) = A182241 (n + 1)

end A182241

/-! ## A182241.P8868947083149168238

`lcm(n+1-and(n, n+1), Δ[(n+1)²])`
-/

namespace A182241.P8868947083149168238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A182241.P8868947083149168238

namespace A182241

/-- `lcm(n+1-and(n, n+1), Δ[(n+1)²])` -/
def P8868947083149168238.Spec : Prop :=
  ∀ n, (P8868947083149168238.a n : ℤ) = A182241 (n + 1)

end A182241

/-! ## A182241.P15517247823891313165

`(2*n+3)*A006519(n+1)`
-/

namespace A182241.P15517247823891313165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * A006519 (n + 1)

end

end A182241.P15517247823891313165

namespace A182241

/-- `(2*n+3)*A006519(n+1)` -/
def P15517247823891313165.Spec : Prop :=
  ∀ n, P15517247823891313165.a n = A182241 (n + 1)

end A182241

/-! ## A182241.P7176859340794529187

`A006519(n+1)*A144396(n+1)`
-/

namespace A182241.P7176859340794529187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A144396 (n + 1)

end

end A182241.P7176859340794529187

namespace A182241

/-- `A006519(n+1)*A144396(n+1)` -/
def P7176859340794529187.Spec : Prop :=
  ∀ n, P7176859340794529187.a n = A182241 (n + 1)

end A182241

/-! ## A182241.P17266269420978147368

`(A086799(n+1)-n)*A144396(n+1)`
-/

namespace A182241.P17266269420978147368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A086799 (n + 1) - (n : ℤ)) * A144396 (n + 1)

end

end A182241.P17266269420978147368

namespace A182241

/-- `(A086799(n+1)-n)*A144396(n+1)` -/
def P17266269420978147368.Spec : Prop :=
  ∀ n, P17266269420978147368.a n = A182241 (n + 1)

end A182241

/-! ## A182241.P11498213555455477375

`A006519(n+1)*A060747(n+2)`
-/

namespace A182241.P11498213555455477375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A060747 (n + 2)

end

end A182241.P11498213555455477375

namespace A182241

/-- `A006519(n+1)*A060747(n+2)` -/
def P11498213555455477375.Spec : Prop :=
  ∀ n, P11498213555455477375.a n = A182241 (n + 1)

end A182241

/-! ## A182241.P7148771867110818351

`A220466(2*(n+1))`
-/

namespace A182241.P7148771867110818351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220466 (2 * (n + 1))

end

end A182241.P7148771867110818351

namespace A182241

/-- `A220466(2*(n+1))` -/
def P7148771867110818351.Spec : Prop :=
  ∀ n, P7148771867110818351.a n = A182241 (n + 1)

end A182241

/-! ## A182241.P3709465452498572018

`A160467(n+1)*A176743(2*n+1)`
-/

namespace A182241.P3709465452498572018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160467 (n + 1) * A176743 (2 * n + 1)

end

end A182241.P3709465452498572018

namespace A182241

/-- `A160467(n+1)*A176743(2*n+1)` -/
def P3709465452498572018.Spec : Prop :=
  ∀ n, P3709465452498572018.a n = A182241 (n + 1)

end A182241

/-! ## A182241.P1069096291783615717

`A004273(n+2)*A214546(2*n+1)`
-/

namespace A182241.P1069096291783615717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 2) * A214546 (2 * n + 1)

end

end A182241.P1069096291783615717

namespace A182241

/-- `A004273(n+2)*A214546(2*n+1)` -/
def P1069096291783615717.Spec : Prop :=
  ∀ n, P1069096291783615717.a n = A182241 (n + 1)

end A182241

/-! ## A182241.P7745698702723382947

`A145051(2*(n+1))*A160467(2*(n+1))`
-/

namespace A182241.P7745698702723382947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145051 (2 * (n + 1)) * A160467 (2 * (n + 1))

end

end A182241.P7745698702723382947

namespace A182241

/-- `A145051(2*(n+1))*A160467(2*(n+1))` -/
def P7745698702723382947.Spec : Prop :=
  ∀ n, P7745698702723382947.a n = A182241 (n + 1)

end A182241

/-! ## A182241.P7178407644937490078

`A253145(2*n+1)/A000265(2*(n+1))`
-/

namespace A182241.P7178407644937490078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253145 (2 * n + 1) : ℚ) / (A000265 (2 * (n + 1)) : ℚ)

end

end A182241.P7178407644937490078

namespace A182241

/-- `A253145(2*n+1)/A000265(2*(n+1))` -/
def P7178407644937490078.Spec : Prop :=
  ∀ n, P7178407644937490078.a n = (A182241 (n + 1) : ℚ)

end A182241

/-! ## A182241.P13503127552657899770

`A045896(2*n+1)/A259445(2*(n+1))`
-/

namespace A182241.P13503127552657899770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045896 (2 * n + 1) : ℚ) / (A259445 (2 * (n + 1)) : ℚ)

end

end A182241.P13503127552657899770

namespace A182241

/-- `A045896(2*n+1)/A259445(2*(n+1))` -/
def P13503127552657899770.Spec : Prop :=
  ∀ n, P13503127552657899770.a n = (A182241 (n + 1) : ℚ)

end A182241

/-! ## A182241.P10428350589043548693

`A255932(n+1)%A069993(n+1)`
-/

namespace A182241.P10428350589043548693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255932 (n + 1)) (A069993 (n + 1))

end

end A182241.P10428350589043548693

namespace A182241

/-- `A255932(n+1)%A069993(n+1)` -/
def P10428350589043548693.Spec : Prop :=
  ∀ n, P10428350589043548693.a n = A182241 (n + 1)

end A182241

/-!
# A182242: a(0)=0, a(n) = (a(n-1) + n) AND n.

The programs for A182242, the canonical program `A182242.P9966922301474617426` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182242 has offset 0).

The definition of A182242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182242.P9966922301474617426

`and(n, a(n-1)+n)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182242

/-- `and(n, a(n-1)+n)` -/
def P9966922301474617426.Spec : Prop :=
  ∀ n, (P9966922301474617426.a n : ℤ) = A182242 n

theorem P9966922301474617426.correct : P9966922301474617426.Spec := by
  intro n
  simp only [A182242]

end A182242

/-! ## A182242.P15597974147043568625

`and(n, n-floor(-a(n-1)))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A182242.P15597974147043568625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land (n : ℤ) ((n : ℤ) - (-a (n - 1)))

end

end A182242.P15597974147043568625

namespace A182242

/-- `and(n, n-floor(-a(n-1)))` -/
def P15597974147043568625.Spec : Prop :=
  ∀ n, P15597974147043568625.a n = A182242 n

end A182242

/-! ## A182242.P14900562904184162704

`and(n, n-ceil(-a(n-1)))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A182242.P14900562904184162704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land (n : ℤ) ((n : ℤ) - (-a (n - 1)))

end

end A182242.P14900562904184162704

namespace A182242

/-- `and(n, n-ceil(-a(n-1)))` -/
def P14900562904184162704.Spec : Prop :=
  ∀ n, P14900562904184162704.a n = A182242 n

end A182242

/-! ## A182242.P3383048520522348544

`and(n, n-round(-a(n-1)))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A182242.P3383048520522348544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land (n : ℤ) ((n : ℤ) - (-a (n - 1)))

end

end A182242.P3383048520522348544

namespace A182242

/-- `and(n, n-round(-a(n-1)))` -/
def P3383048520522348544.Spec : Prop :=
  ∀ n, P3383048520522348544.a n = A182242 n

end A182242

/-! ## A182242.P15483502451818996123

`and(n, 2*n-(n-a(n-1)))` with `a(0)=0`
-/

namespace A182242.P15483502451818996123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land (n : ℤ) ((2 * n : ℤ) - ((n : ℤ) - a (n - 1)))

end

end A182242.P15483502451818996123

namespace A182242

/-- `and(n, 2*n-(n-a(n-1)))` -/
def P15483502451818996123.Spec : Prop :=
  ∀ n, P15483502451818996123.a n = A182242 n

end A182242

/-!
# A182243: a(0)=0, a(n) = (a(n-1) AND n) + n.

The programs for A182243, the canonical program `A182243.P7882863632922903586` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182243 has offset 0).

The definition of A182243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182243.P7882863632922903586

`and(n, a(n-1))+n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182243

/-- `and(n, a(n-1))+n` -/
def P7882863632922903586.Spec : Prop :=
  ∀ n, (P7882863632922903586.a n : ℤ) = A182243 n

theorem P7882863632922903586.correct : P7882863632922903586.Spec := by
  intro n
  simp only [A182243]

end A182243

/-! ## A182243.P8240282602429401878

`2*n-(n-and(n, a(n-1)))` with `a(0)=0`
-/

namespace A182243.P8240282602429401878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n : ℤ) - ((n : ℤ) - Int.land (n : ℤ) (a (n - 1)))

end

end A182243.P8240282602429401878

namespace A182243

/-- `2*n-(n-and(n, a(n-1)))` -/
def P8240282602429401878.Spec : Prop :=
  ∀ n, P8240282602429401878.a n = A182243 n

end A182243

/-! ## A182243.P10923007895905915362

`or(-(n+1), a(n-1))+2*n+1` with `a(0)=0`
-/

namespace A182243.P10923007895905915362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (-(n + 1 : ℤ)) (a (n - 1)) + (2 * n + 1 : ℤ)

end

end A182243.P10923007895905915362

namespace A182243

/-- `or(-(n+1), a(n-1))+2*n+1` -/
def P10923007895905915362.Spec : Prop :=
  ∀ n, P10923007895905915362.a n = A182243 n

end A182243

/-! ## A182243.P4742200010677805792

`2*n+a(n-1)-or(n, a(n-1))` with `a(0)=0`
-/

namespace A182243.P4742200010677805792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n : ℤ) + (a (n - 1) - Int.lor (n : ℤ) (a (n - 1)))

end

end A182243.P4742200010677805792

namespace A182243

/-- `2*n+a(n-1)-or(n, a(n-1))` -/
def P4742200010677805792.Spec : Prop :=
  ∀ n, P4742200010677805792.a n = A182243 n

end A182243

/-! ## A182243.P521242608917847631

`2*n-(or(n, a(n-1))-a(n-1))` with `a(0)=0`
-/

namespace A182243.P521242608917847631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n : ℤ) - (Int.lor (n : ℤ) (a (n - 1)) - a (n - 1))

end

end A182243.P521242608917847631

namespace A182243

/-- `2*n-(or(n, a(n-1))-a(n-1))` -/
def P521242608917847631.Spec : Prop :=
  ∀ n, P521242608917847631.a n = A182243 n

end A182243

/-!
# A182244: Sum of all parts of the modular table of partitions of A135010 with n regions.

The programs for A182244, there is no canonical definition to state claims against.
-/

/-! ## A182244.P6327211383685827435

`∑[A186412(n+1)]`
-/

namespace A182244.P6327211383685827435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182244.P6327211383685827435

/-! ## A182244.P3380816743153159935

`A182276(n+1)+A182181(n+1)`
-/

namespace A182244.P3380816743153159935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182276 (n + 1) + A182181 (n + 1)

end

end A182244.P3380816743153159935

/-! ## A182244.P13159495537406601582

`A186412(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A182244.P13159495537406601582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A186412 (n + 1) + a (A023443 n).toNat

end

end A182244.P13159495537406601582

/-! ## A182244.P10880829084783641766

`A182276(n+1)+∑[A194446(n+1)]`
-/

namespace A182244.P10880829084783641766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182276 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182244.P10880829084783641766

/-! ## A182244.P5261446363238531445

`A186412(n+1)+a(A000027(n+1)-2)` with `a(0)=1`
-/

namespace A182244.P5261446363238531445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A186412 (n + 1) + a (A000027 (n + 1) - 2).toNat

end

end A182244.P5261446363238531445

/-! ## A182244.P10826145596007425547

`a(n-1)+A186412(n+1)%A250120(n)` with `a(0)=1`
-/

namespace A182244.P10826145596007425547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A186412 (n + 1)) (A250120 n)

end

end A182244.P10826145596007425547

/-! ## A182244.P18111058968724270541

`A182276(n+1)+∑[1-A210451(n+1)+n]`
-/

namespace A182244.P18111058968724270541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A210451 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182276 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182244.P18111058968724270541

/-! ## A182244.P14047203358842625692

`A182276(n+1)+∑[n-A023443(A210451(n+1))]`
-/

namespace A182244.P14047203358842625692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A210451 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182276 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182244.P14047203358842625692

/-! ## A182244.P10187367395437040420

`A182276(n+1)+A182727(n+1)-∑[A194447(n+1)]`
-/

namespace A182244.P10187367395437040420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182276 (n + 1) + (A182727 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182244.P10187367395437040420

/-! ## A182244.P6491988805928319776

`∑[Δ[A210990(n)]-A207779(n+1)]`
-/

namespace A182244.P6491988805928319776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210990 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A207779 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182244.P6491988805928319776

/-!
# A182246: Integers n such that A186053(n) does not equal A002024(n) + A182298(A025581(n)).

The programs for A182246, there is no canonical definition to state claims against.
-/

/-! ## A182246.P7077052591486650724

`∩[A102827(n), A182245(n+1)]`
-/

namespace A182246.P7077052591486650724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102827 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182246.P7077052591486650724

/-! ## A182246.P15112154677251458784

`∩[A076564(n+1), A182245(n+1)]`
-/

namespace A182246.P15112154677251458784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076564 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182246.P15112154677251458784

/-! ## A182246.P6408618362259196214

`∩[A182245(n+1), A196736(n+1)]`
-/

namespace A182246.P6408618362259196214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182246.P6408618362259196214

/-! ## A182246.P7969178510354453886

`∩[A182245(n+1), A242455(n+1)]`
-/

namespace A182246.P7969178510354453886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182246.P7969178510354453886

/-! ## A182246.P11353756358159763742

`∩[A182245(n+1), A289995(n+1)]`
-/

namespace A182246.P11353756358159763742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182246.P11353756358159763742

/-!
# A182247: a(0)=0, a(n) = (a(n-1) + n) OR n.

The programs for A182247, the canonical program `A182247.P8286994167445659724` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182247 has offset 0).

The definition of A182247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182247.P8286994167445659724

`or(n, a(n-1)+n)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182247

/-- `or(n, a(n-1)+n)` -/
def P8286994167445659724.Spec : Prop :=
  ∀ n, (P8286994167445659724.a n : ℤ) = A182247 n

theorem P8286994167445659724.correct : P8286994167445659724.Spec := by
  intro n
  simp only [A182247]

end A182247

/-! ## A182247.P16764233327562852515

`or(n, n-floor(-a(n-1)))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A182247.P16764233327562852515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (n : ℤ) ((n : ℤ) - (-a (n - 1)))

end

end A182247.P16764233327562852515

namespace A182247

/-- `or(n, n-floor(-a(n-1)))` -/
def P16764233327562852515.Spec : Prop :=
  ∀ n, P16764233327562852515.a n = A182247 n

end A182247

/-! ## A182247.P12500183475057941137

`or(n, n-ceil(-a(n-1)))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A182247.P12500183475057941137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (n : ℤ) ((n : ℤ) - (-a (n - 1)))

end

end A182247.P12500183475057941137

namespace A182247

/-- `or(n, n-ceil(-a(n-1)))` -/
def P12500183475057941137.Spec : Prop :=
  ∀ n, P12500183475057941137.a n = A182247 n

end A182247

/-! ## A182247.P12448325448667150354

`or(n, n-round(-a(n-1)))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A182247.P12448325448667150354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (n : ℤ) ((n : ℤ) - (-a (n - 1)))

end

end A182247.P12448325448667150354

namespace A182247

/-- `or(n, n-round(-a(n-1)))` -/
def P12448325448667150354.Spec : Prop :=
  ∀ n, P12448325448667150354.a n = A182247 n

end A182247

/-! ## A182247.P2555794677932869233

`or(n, 2*n-(n-a(n-1)))` with `a(0)=0`
-/

namespace A182247.P2555794677932869233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (n : ℤ) ((2 * n : ℤ) - ((n : ℤ) - a (n - 1)))

end

end A182247.P2555794677932869233

namespace A182247

/-- `or(n, 2*n-(n-a(n-1)))` -/
def P2555794677932869233.Spec : Prop :=
  ∀ n, P2555794677932869233.a n = A182247 n

end A182247

/-! ## A182247.P17362242215001949687

`or(n, abs(char[1]-a(n-1)-n))` with `a(0)=0`
-/

namespace A182247.P17362242215001949687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (n : ℤ) |((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 1) - (n : ℤ)|

end

end A182247.P17362242215001949687

namespace A182247

/-- `or(n, abs(char[1]-a(n-1)-n))` -/
def P17362242215001949687.Spec : Prop :=
  ∀ n, P17362242215001949687.a n = A182247 n

end A182247

/-! ## A182247.P2189528586843754279

`or(n-(char[1]-a(n-1)), A028310(n))` with `a(0)=0`
-/

namespace A182247.P2189528586843754279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor ((n : ℤ) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 1))) (A028310 n)

end

end A182247.P2189528586843754279

namespace A182247

/-- `or(n-(char[1]-a(n-1)), A028310(n))` -/
def P2189528586843754279.Spec : Prop :=
  ∀ n, P2189528586843754279.a n = A182247 n

end A182247

/-!
# A182248: a(0)=0, a(n) = (a(n-1) OR n) + n.

The programs for A182248, the canonical program `A182248.P8686712559823793262` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182248 has offset 0).

The definition of A182248 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182248.P8686712559823793262

`or(a(n-1), n)+n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182248

/-- `or(a(n-1), n)+n` -/
def P8686712559823793262.Spec : Prop :=
  ∀ n, (P8686712559823793262.a n : ℤ) = A182248 n

theorem P8686712559823793262.correct : P8686712559823793262.Spec := by
  intro n
  simp only [A182248]

end A182248

/-! ## A182248.P7941914747392394126

`2*n-(n-or(n, a(n-1)))` with `a(0)=0`
-/

namespace A182248.P7941914747392394126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n : ℤ) - ((n : ℤ) - Int.lor (n : ℤ) (a (n - 1)))

end

end A182248.P7941914747392394126

namespace A182248

/-- `2*n-(n-or(n, a(n-1)))` -/
def P7941914747392394126.Spec : Prop :=
  ∀ n, P7941914747392394126.a n = A182248 n

end A182248

/-! ## A182248.P15691316665259242467

`and(-(n+1), a(n-1))+2*n` with `a(0)=0`
-/

namespace A182248.P15691316665259242467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land (-(n + 1 : ℤ)) (a (n - 1)) + (2 * n : ℤ)

end

end A182248.P15691316665259242467

namespace A182248

/-- `and(-(n+1), a(n-1))+2*n` -/
def P15691316665259242467.Spec : Prop :=
  ∀ n, P15691316665259242467.a n = A182248 n

end A182248

/-! ## A182248.P16423555186395004626

`2*n+a(n-1)-and(n, a(n-1))` with `a(0)=0`
-/

namespace A182248.P16423555186395004626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n : ℤ) + (a (n - 1) - Int.land (n : ℤ) (a (n - 1)))

end

end A182248.P16423555186395004626

namespace A182248

/-- `2*n+a(n-1)-and(n, a(n-1))` -/
def P16423555186395004626.Spec : Prop :=
  ∀ n, P16423555186395004626.a n = A182248 n

end A182248

/-! ## A182248.P18186935954874473741

`2*n-(and(n, a(n-1))-a(n-1))` with `a(0)=0`
-/

namespace A182248.P18186935954874473741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n : ℤ) - (Int.land (n : ℤ) (a (n - 1)) - a (n - 1))

end

end A182248.P18186935954874473741

namespace A182248

/-- `2*n-(and(n, a(n-1))-a(n-1))` -/
def P18186935954874473741.Spec : Prop :=
  ∀ n, P18186935954874473741.a n = A182248 n

end A182248

/-!
# A182249: a(0)=0, a(n) = (a(n-1) * n) OR n.

The programs for A182249, there is no canonical definition to state claims against.
-/

/-! ## A182249.P7828146756032240929

`or(n, n*a(n-1))` with `a(0)=0`
-/

namespace A182249.P7828146756032240929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor n (n * a (n - 1))

end

end A182249.P7828146756032240929

/-! ## A182249.P4393005629918689806

`or(n, a(n-1)/tan(acot(n)))` with `a(0)=0`
-/

namespace A182249.P4393005629918689806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (n : ℤ) (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / Real.tan (SequenceMachineLib.acot (n : ℝ))))

end

end A182249.P4393005629918689806

/-! ## A182249.P3594441904599358978

`or(n, a(n-1)/cot(atan(n)))` with `a(0)=0`
-/

namespace A182249.P3594441904599358978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (n : ℤ) (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / Real.cot (Real.arctan (n : ℝ))))

end

end A182249.P3594441904599358978

/-! ## A182249.P14388857662637703385

`or(n, a(n-1)/n^(-1))` with `a(0)=0`
-/

namespace A182249.P14388857662637703385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (n : ℤ) (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (n : ℚ) ^ (-1 : ℤ)))

end

end A182249.P14388857662637703385

/-! ## A182249.P11021888531262726449

`and(n*a(n-1), -(n+1))+n` with `a(0)=0`
-/

namespace A182249.P11021888531262726449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land ((n : ℤ) * a (n - 1)) (-(n + 1 : ℤ)) + (n : ℤ)

end

end A182249.P11021888531262726449

/-! ## A182249.P1759302550829404593

`or(n, floor(n*a(floor(n²/(n+1)))))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A182249.P1759302550829404593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor n (n * a ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat)

end

end A182249.P1759302550829404593

/-! ## A182249.P12119728356998077640

`or(n, lcm(n, n*a(ratio[3*(-1)^n]+n)))` with `a(0)=0`
-/

namespace A182249.P12119728356998077640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (-1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor n (Nat.lcm n (n * a (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) + (n : ℚ))).toNat))

end

end A182249.P12119728356998077640

/-! ## A182249.P5602227311720934097

`or(n*a(xor(-1, -n)), A028310(n))` with `a(0)=0`
-/

namespace A182249.P5602227311720934097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor ((n : ℤ) * a (Int.xor (-1) (-(n : ℤ))).toNat) (A028310 n)

end

end A182249.P5602227311720934097

/-! ## A182249.P189274390628183352

`or(n*a(xor(-1, -n)), A233583(n+1))` with `a(0)=0, a(1)=1`
-/

namespace A182249.P189274390628183352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.lor ((n : ℤ) * a (Int.xor (-1) (-(n : ℤ))).toNat) (A233583 (n + 1))

end

end A182249.P189274390628183352

/-! ## A182249.P9930266861066614440

`A182250(n)-2*A000142(n)`
-/

namespace A182249.P9930266861066614440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182250 n - 2 * A000142 n

end

end A182249.P9930266861066614440

/-!
# A182250: a(0)=2, a(n) = (a(n-1) * n) OR n.

The programs for A182250, there is no canonical definition to state claims against.
-/

/-! ## A182250.P6625898699846785453

`or(n, n*a(n-1))` with `a(0)=2`
-/

namespace A182250.P6625898699846785453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lor n (n * a (n - 1))

end

end A182250.P6625898699846785453

/-! ## A182250.P17495915478891709454

`or(n, a(n-1)/tan(acot(n)))` with `a(0)=2`
-/

namespace A182250.P17495915478891709454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor (n : ℤ) (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / Real.tan (SequenceMachineLib.acot (n : ℝ))))

end

end A182250.P17495915478891709454

/-! ## A182250.P5008154529339089669

`or(n, a(n-1)/cot(atan(n)))` with `a(0)=2`
-/

namespace A182250.P5008154529339089669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor (n : ℤ) (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / Real.cot (Real.arctan (n : ℝ))))

end

end A182250.P5008154529339089669

/-! ## A182250.P9094742801062626720

`or(n, a(n-1)/n^(-1))` with `a(0)=2`
-/

namespace A182250.P9094742801062626720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor (n : ℤ) (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (n : ℚ) ^ (-1 : ℤ)))

end

end A182250.P9094742801062626720

/-! ## A182250.P12052666396055944598

`or(n, floor(n*a(xor(-n, -1))))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A182250.P12052666396055944598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lor n (n * a (Int.xor (-(n : ℤ)) (-1)).toNat)

end

end A182250.P12052666396055944598

/-! ## A182250.P9290726235196156600

`and(n*a(n-1), -(n+1))+n` with `a(0)=2`
-/

namespace A182250.P9290726235196156600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.land ((n : ℤ) * a (n - 1)) (-(n + 1 : ℤ)) + (n : ℤ)

end

end A182250.P9290726235196156600

/-! ## A182250.P9581340048414999871

`or(n, floor(n*a(floor(n²/(n+1)))))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A182250.P9581340048414999871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lor n (n * a ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat)

end

end A182250.P9581340048414999871

/-! ## A182250.P8226462229491824562

`or(n, lcm(n, n*a(ratio[3*(-1)^n]+n)))` with `a(0)=2`
-/

namespace A182250.P8226462229491824562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (-1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lor n (Nat.lcm n (n * a (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) + (n : ℚ))).toNat))

end

end A182250.P8226462229491824562

/-! ## A182250.P18377077947522467884

`or(n*a(xor(-1, -n)), A028310(n))` with `a(0)=2`
-/

namespace A182250.P18377077947522467884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor ((n : ℤ) * a (Int.xor (-1) (-(n : ℤ))).toNat) (A028310 n)

end

end A182250.P18377077947522467884

/-! ## A182250.P14572894367690119211

`A182249(n)+2*A000142(n)`
-/

namespace A182250.P14572894367690119211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182249 n + 2 * A000142 n

end

end A182250.P14572894367690119211

/-!
# A182251: a(0) = 0, a(n) = (a(n-1) OR n) * n.

The programs for A182251, there is no canonical definition to state claims against.
-/

/-! ## A182251.P3986055311984474653

`n*or(n, a(n-1))` with `a(0)=0`
-/

namespace A182251.P3986055311984474653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * Nat.lor n (a (n - 1))

end

end A182251.P3986055311984474653

/-! ## A182251.P13036939601128163217

`or(n, a(n-1))/tan(acot(n))` with `a(0)=0`
-/

namespace A182251.P13036939601128163217
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  (Int.lor (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℝ) / Real.tan (SequenceMachineLib.acot (n : ℝ))

end

end A182251.P13036939601128163217

/-! ## A182251.P16815310934621128004

`or(n, a(n-1))/n^-1` with `a(0)=0`
-/

namespace A182251.P16815310934621128004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (Int.lor (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) / (n : ℚ) ^ (-1 : ℤ)

end

end A182251.P16815310934621128004

/-! ## A182251.P7916663380612110359

`n*(and(-(n+1), a(n-1))+n)` with `a(0)=0`
-/

namespace A182251.P7916663380612110359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (Int.land (-(n + 1 : ℤ)) (a (n - 1)) + (n : ℤ))

end

end A182251.P7916663380612110359

/-! ## A182251.P14173186899916456471

`n*(a(n-1)-(and(n, a(n-1))-n))` with `a(0)=0`
-/

namespace A182251.P14173186899916456471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (a (n - 1) - (Int.land (n : ℤ) (a (n - 1)) - (n : ℤ)))

end

end A182251.P14173186899916456471

/-! ## A182251.P10632726467941357552

`A182252(n)%∏[A233583(n+1)]`
-/

namespace A182251.P10632726467941357552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182252 n) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A182251.P10632726467941357552

/-!
# A182252: a(0)=4, a(n) = (a(n-1) OR n) * n.

The programs for A182252, there is no canonical definition to state claims against.
-/

/-! ## A182252.P282244762036071975

`n*or(n, a(n-1))` with `a(0)=4`
-/

namespace A182252.P282244762036071975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  n * Nat.lor n (a (n - 1))

end

end A182252.P282244762036071975

/-! ## A182252.P14779464708244685915

`or(n, a(n-1))/tan(acot(n))` with `a(0)=4`
-/

namespace A182252.P14779464708244685915
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [4] fun n a =>
  (Int.lor (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℝ) / Real.tan (SequenceMachineLib.acot (n : ℝ))

end

end A182252.P14779464708244685915

/-! ## A182252.P5827894504423899532

`or(n, a(n-1))/n^-1` with `a(0)=4`
-/

namespace A182252.P5827894504423899532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  (Int.lor (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) / (n : ℚ) ^ (-1 : ℤ)

end

end A182252.P5827894504423899532

/-! ## A182252.P10314816645408034163

`n*(and(-(n+1), a(n-1))+n)` with `a(0)=4`
-/

namespace A182252.P10314816645408034163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (n : ℤ) * (Int.land (-(n + 1 : ℤ)) (a (n - 1)) + (n : ℤ))

end

end A182252.P10314816645408034163

/-! ## A182252.P13726355044688453172

`n*(a(n-1)-(and(n, a(n-1))-n))` with `a(0)=4`
-/

namespace A182252.P13726355044688453172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (n : ℤ) * (a (n - 1) - (Int.land (n : ℤ) (a (n - 1)) - (n : ℤ)))

end

end A182252.P13726355044688453172

/-! ## A182252.P16942817988242803268

`n*or(n, abs(a(A023443(n))))` with `a(0)=4`
-/

namespace A182252.P16942817988242803268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  n * Nat.lor n (a (A023443 n).toNat)

end

end A182252.P16942817988242803268

/-!
# A182253: Nonprime numbers n such that n^2 + n + 1 is prime.

The programs for A182253, there is no canonical definition to state claims against.
-/

/-! ## A182253.P533016046053923507

`filter[A002384(n+1), A005171(#)]`
-/

namespace A182253.P533016046053923507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A182253.P533016046053923507

/-! ## A182253.P9822522447274564453

`∩[A002384(n+1), A018252(n+1)]`
-/

namespace A182253.P9822522447274564453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182253.P9822522447274564453

/-! ## A182253.P4777509283132207938

`∩[A002384(n+1), A141468(n+1)]`
-/

namespace A182253.P4777509283132207938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182253.P4777509283132207938

/-! ## A182253.P9821003620005056574

`∩[A002384(n+1), A139118(n+1)]`
-/

namespace A182253.P9821003620005056574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182253.P9821003620005056574

/-! ## A182253.P17774253957583823419

`∩[A002384(n+1), A056653(n+1)]`
-/

namespace A182253.P17774253957583823419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182253.P17774253957583823419

/-! ## A182253.P18434449278147240317

`record[A214059(A002808(n+1))]`
-/

namespace A182253.P18434449278147240317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214059 (A002808 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182253.P18434449278147240317

/-! ## A182253.P1480488268060875120

`record[A214059(A018252(n+1))]`
-/

namespace A182253.P1480488268060875120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214059 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182253.P1480488268060875120

/-! ## A182253.P3982928458734027533

`record[A288469(A002384(n+1))]`
-/

namespace A182253.P3982928458734027533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288469 (A002384 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182253.P3982928458734027533

/-! ## A182253.P14303679146921484307

`eq[log2(A289356(n)), A055672(n)]`
-/

namespace A182253.P14303679146921484307
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A289356 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A182253.P14303679146921484307

/-! ## A182253.P12087731558787277096

`eq[1, A289356(n)+A055671(n)]`
-/

namespace A182253.P12087731558787277096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 n + A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182253.P12087731558787277096

/-! ## A182253.P6205425318711217961

`eq[(1-A105700(n))², A289356(n)]`
-/

namespace A182253.P6205425318711217961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A105700 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182253.P6205425318711217961

/-! ## A182253.P17236318445364469356

`record[A214059(n+1)%A151800(n)]`
-/

namespace A182253.P17236318445364469356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214059 (n + 1)) (A151800 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182253.P17236318445364469356

/-! ## A182253.P3441856438243673138

`record[A005171(n+1)*A214059(n+1)]`
-/

namespace A182253.P3441856438243673138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A214059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182253.P3441856438243673138

/-! ## A182253.P8238115136863006264

`record[A214059(n+1)/A014973(n+1)]`
-/

namespace A182253.P8238115136863006264
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214059 (n + 1) : ℚ) / (A014973 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182253.P8238115136863006264

/-! ## A182253.P12720704814872340712

`record[A214059(comp[A000040(n+1)-1]+1)]`
-/

namespace A182253.P12720704814872340712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214059 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182253.P12720704814872340712

/-! ## A182253.P6833967395841053988

`eq[A005128(A289356(n)), A055671(n)]`
-/

namespace A182253.P6833967395841053988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 (A289356 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182253.P6833967395841053988

/-! ## A182253.P4260815548421614561

`eq[A055672(A055672(n)+2), A289356(n)]`
-/

namespace A182253.P4260815548421614561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (A055672 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182253.P4260815548421614561

/-! ## A182253.P18168806014302112013

`floor(sqrt(A185632(n+1)))`
-/

namespace A182253.P18168806014302112013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A185632 (n + 1))

end

end A182253.P18168806014302112013

/-! ## A182253.P8096632684662953371

`record[A214059(comp[A348470(n+1)-1]+1)]`
-/

namespace A182253.P8096632684662953371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348470 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214059 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182253.P8096632684662953371

/-!
# A182254: a(n) = primorial(n) mod n!.

The programs for A182254, there is no canonical definition to state claims against.
-/

/-! ## A182254.P11186364717089628274

`A002110(n)%n!`
-/

namespace A182254.P11186364717089628274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002110 n) (Nat.factorial n : ℤ)

end

end A182254.P11186364717089628274

/-! ## A182254.P4070874125588072650

`A096334(∑[n])%n!`
-/

namespace A182254.P4070874125588072650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096334 (∑ j ∈ Finset.range (n + 1), f1 j)) (Nat.factorial n : ℤ)

end

end A182254.P4070874125588072650

/-! ## A182254.P954433431674113765

`∏[A008578(n+1)]%n!`
-/

namespace A182254.P954433431674113765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (Nat.factorial n : ℤ)

end

end A182254.P954433431674113765

/-! ## A182254.P7911289634092018347

`∏[A015919(n+1)]%n!`
-/

namespace A182254.P7911289634092018347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (Nat.factorial n : ℤ)

end

end A182254.P7911289634092018347

/-! ## A182254.P6188898729387356022

`record[A108951(n+1)]%n!`
-/

namespace A182254.P6188898729387356022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (Nat.factorial n : ℤ)

end

end A182254.P6188898729387356022

/-! ## A182254.P14199915546941122958

`∏[record[A006530(n+1)]]%n!`
-/

namespace A182254.P14199915546941122958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (Nat.factorial n : ℤ)

end

end A182254.P14199915546941122958

/-! ## A182254.P16812415826587433768

`∏[record[A020639(n+1)]]%n!`
-/

namespace A182254.P16812415826587433768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (Nat.factorial n : ℤ)

end

end A182254.P16812415826587433768

/-! ## A182254.P15226678321314069568

`∏[∏{d}[comp[A018252(n+1)], #]]%n!`
-/

namespace A182254.P15226678321314069568
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) % Nat.factorial n

end

end A182254.P15226678321314069568

/-! ## A182254.P3751573006500951585

`∏[lt[A001222(n+1), 2]+1]%n!`
-/

namespace A182254.P3751573006500951585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) % Nat.factorial n

end

end A182254.P3751573006500951585

/-! ## A182254.P5600773264091383754

`A002110(n)-A000142(n)*A135568(n)`
-/

namespace A182254.P5600773264091383754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n - A000142 n * A135568 n

end

end A182254.P5600773264091383754

/-!
# A182256: a(n) = 2^n - 2*n*A000048(n).

The programs for A182256, the canonical program `A182256.P11479187978899896629` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182256 has offset 0).

The definition of A182256 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000048, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A182256.P11479187978899896629

`2^n-2*n*A000048(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A182256

/-- `2^n-2*n*A000048(n)` -/
def P11479187978899896629.Spec : Prop :=
  ∀ n, P11479187978899896629.a n = A182256 n

theorem P11479187978899896629.correct : P11479187978899896629.Spec := by
  intro n
  simp only [A182256]

end A182256

/-! ## A182256.P11249276295839238715

`2*A011782(n)-A045663(n)`
-/

namespace A182256.P11249276295839238715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011782 n - A045663 n

end

end A182256.P11249276295839238715

namespace A182256

/-- `2*A011782(n)-A045663(n)` -/
def P11249276295839238715.Spec : Prop :=
  ∀ n, P11249276295839238715.a n = A182256 n

end A182256

/-! ## A182256.P10231433391801590034

`lcm(2, A000079(n))-A045663(n)`
-/

namespace A182256.P10231433391801590034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A000079 n) : ℤ) - A045663 n

end

end A182256.P10231433391801590034

namespace A182256

/-- `lcm(2, A000079(n))-A045663(n)` -/
def P10231433391801590034.Spec : Prop :=
  ∀ n, P10231433391801590034.a n = A182256 n

end A182256

/-! ## A182256.P6900882188507115561

`A000051(n)-or(1, A045663(n))`
-/

namespace A182256.P6900882188507115561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - Int.lor 1 (A045663 n)

end

end A182256.P6900882188507115561

namespace A182256

/-- `A000051(n)-or(1, A045663(n))` -/
def P6900882188507115561.Spec : Prop :=
  ∀ n, P6900882188507115561.a n = A182256 n

end A182256

/-! ## A182256.P11446041717617298282

`and(-A045663(n), A100371(n+1))`
-/

namespace A182256.P11446041717617298282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A045663 n) (A100371 (n + 1))

end

end A182256.P11446041717617298282

namespace A182256

/-- `and(-A045663(n), A100371(n+1))` -/
def P11446041717617298282.Spec : Prop :=
  ∀ n, P11446041717617298282.a n = A182256 n

end A182256

/-! ## A182256.P8924426694280453270

`A000079(n)-A000048(n)*A005843(n)`
-/

namespace A182256.P8924426694280453270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A000048 n * A005843 n

end

end A182256.P8924426694280453270

namespace A182256

/-- `A000079(n)-A000048(n)*A005843(n)` -/
def P8924426694280453270.Spec : Prop :=
  ∀ n, P8924426694280453270.a n = A182256 n

end A182256

/-! ## A182256.P6785475530569415248

`Δ[A083318(n)]-A045663(n)`
-/

namespace A182256.P6785475530569415248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A045663 n

end

end A182256.P6785475530569415248

namespace A182256

/-- `Δ[A083318(n)]-A045663(n)` -/
def P6785475530569415248.Spec : Prop :=
  ∀ n, P6785475530569415248.a n = A182256 n

end A182256

/-!
# A182259: Rectangular array: R(k,n) = number of ordered triples (w,x,y) with all terms in {1,...,n} and 2w^k<=x^k+y

The programs for A182259, there is no canonical definition to state claims against.
-/

/-! ## A182259.P14483070330115211276

`A004736(n+1)^3-A211808(n+1)`
-/

namespace A182259.P14483070330115211276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) ^ 3 - A211808 (n + 1)

end

end A182259.P14483070330115211276

/-! ## A182259.P10747236930373951979

`A000578(A004736(n+1))-A211808(n+1)`
-/

namespace A182259.P10747236930373951979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A004736 (n + 1)).toNat - A211808 (n + 1)

end

end A182259.P10747236930373951979

/-! ## A182259.P4396156330465728665

`A000578(A025581(n)+1)-A211808(n+1)`
-/

namespace A182259.P4396156330465728665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A025581 n + 1).toNat - A211808 (n + 1)

end

end A182259.P4396156330465728665

/-! ## A182259.P3080757368267382304

`A211802(n+1)+A211805(n+1)-A211808(n+1)`
-/

namespace A182259.P3080757368267382304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211802 (n + 1) + (A211805 (n + 1) - A211808 (n + 1))

end

end A182259.P3080757368267382304

/-! ## A182259.P334121896998373643

`A000578(A004736(n+1))%A211808(A000027(n+1))`
-/

namespace A182259.P334121896998373643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 (A004736 (n + 1)).toNat) (A211808 (A000027 (n + 1)).toNat)

end

end A182259.P334121896998373643

/-! ## A182259.P13319677066171487771

`A048763(A211790(n+1))-A211808(n+1)`
-/

namespace A182259.P13319677066171487771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (A211790 (n + 1)).toNat - A211808 (n + 1)

end

end A182259.P13319677066171487771

/-! ## A182259.P14484614721131651057

`A048763(A211796(n+1))-A211808(n+1)`
-/

namespace A182259.P14484614721131651057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (A211796 (n + 1)).toNat - A211808 (n + 1)

end

end A182259.P14484614721131651057

/-! ## A182259.P8763102307375594107

`A211790(n+1)+A211793(n+1)-A211808(n+1)`
-/

namespace A182259.P8763102307375594107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211790 (n + 1) + (A211793 (n + 1) - A211808 (n + 1))

end

end A182259.P8763102307375594107

/-! ## A182259.P2965055630012384135

`A211796(n+1)+A211799(n+1)-A211808(n+1)`
-/

namespace A182259.P2965055630012384135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211796 (n + 1) + (A211799 (n + 1) - A211808 (n + 1))

end

end A182259.P2965055630012384135

/-!
# A182260: Number of ordered triples (w,x,y) with all terms in {1,...,n} and 2w

The programs for A182260, the canonical program `A182260.P9548971289536187844` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182260 has offset 1).

The definition of A182260 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182260.P9548971289536187844

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=3, a(2)=11, a(3)=28, a(4)=56`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182260

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P9548971289536187844.Spec : Prop :=
  ∀ n, P9548971289536187844.a n = A182260 (n + 1)

theorem P9548971289536187844.correct : P9548971289536187844.Spec := by
  intro n
  simp only [A182260, Nat.add_sub_cancel]

end A182260

/-! ## A182260.P14773466816909940313

`∑[round((3*n+1)²/6)]`
-/

namespace A182260.P14773466816909940313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((3 * n + 1) ^ 2 : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182260.P14773466816909940313

namespace A182260

/-- `∑[round((3*n+1)²/6)]` -/
def P14773466816909940313.Spec : Prop :=
  ∀ n, P14773466816909940313.a n = A182260 (n + 1)

end A182260

/-! ## A182260.P18106088297706306190

`∑[n]+Δ[or(1, n^4)]/8`
-/

namespace A182260.P18106088297706306190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ) / 8

end

end A182260.P18106088297706306190

namespace A182260

/-- `∑[n]+Δ[or(1, n^4)]/8` -/
def P18106088297706306190.Spec : Prop :=
  ∀ n, P18106088297706306190.a n = (A182260 (n + 1) : ℚ)

end A182260

/-! ## A182260.P9770267204916676480

`round(lcm(2*n+1, (n+1)²)/4)`
-/

namespace A182260.P9770267204916676480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lcm (2 * n + 1) ((n + 1) ^ 2) : ℚ) / 4)

end

end A182260.P9770267204916676480

namespace A182260

/-- `round(lcm(2*n+1, (n+1)²)/4)` -/
def P9770267204916676480.Spec : Prop :=
  ∀ n, P9770267204916676480.a n = A182260 (n + 1)

end A182260

/-! ## A182260.P4217448902854757507

`∑[∑[a(n-2)+6]]-1` with `a(0)=1, a(1)=2, a(2)=5, a(3)=9`
-/

namespace A182260.P4217448902854757507
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5, 9] fun n f2 =>
  f2 (n - 2) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A182260.P4217448902854757507

namespace A182260

/-- `∑[∑[a(n-2)+6]]-1` -/
def P4217448902854757507.Spec : Prop :=
  ∀ n, P4217448902854757507.a n = A182260 (n + 1)

end A182260

/-! ## A182260.P10299189461674084656

`round((2*n+1)*record[((n-1)/2)²])`
-/

namespace A182260.P10299189461674084656
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1 : ℚ) / 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A182260.P10299189461674084656

namespace A182260

/-- `round((2*n+1)*record[((n-1)/2)²])` -/
def P10299189461674084656.Spec : Prop :=
  ∀ n, P10299189461674084656.a n = A182260 (n + 1)

end A182260

/-! ## A182260.P2785157990993791094

`(n+1)*n²-a(n-1)+n` with `a(0)=0`
-/

namespace A182260.P2785157990993791094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n + 1) * n ^ 2 : ℤ) - a (n - 1) + (n : ℤ)

end

end A182260.P2785157990993791094

namespace A182260

/-- `(n+1)*n²-a(n-1)+n` -/
def P2785157990993791094.Spec : Prop :=
  ∀ n, P2785157990993791094.a n = A182260 (n + 1)

end A182260

/-! ## A182260.P1832485595697650083

`lcm(n+1, n²)+n-a(n-1)` with `a(0)=0`
-/

namespace A182260.P1832485595697650083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.lcm (n + 1) (n ^ 2) : ℤ) + ((n : ℤ) - a (n - 1))

end

end A182260.P1832485595697650083

namespace A182260

/-- `lcm(n+1, n²)+n-a(n-1)` -/
def P1832485595697650083.Spec : Prop :=
  ∀ n, P1832485595697650083.a n = A182260 (n + 1)

end A182260

/-! ## A182260.P14058289185295169391

`2*n*∑[n]-(a(n-1)-n)` with `a(0)=0`
-/

namespace A182260.P14058289185295169391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((2 * n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (a (n - 1) - (n : ℤ))

end

end A182260.P14058289185295169391

namespace A182260

/-- `2*n*∑[n]-(a(n-1)-n)` -/
def P14058289185295169391.Spec : Prop :=
  ∀ n, P14058289185295169391.a n = A182260 (n + 1)

end A182260

/-! ## A182260.P14949924723713226653

`n*(n*(n+1)+1)-a(n-1)` with `a(0)=0`
-/

namespace A182260.P14949924723713226653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n * (n * (n + 1) + 1) : ℤ) - a (n - 1)

end

end A182260.P14949924723713226653

namespace A182260

/-- `n*(n*(n+1)+1)-a(n-1)` -/
def P14949924723713226653.Spec : Prop :=
  ∀ n, P14949924723713226653.a n = A182260 (n + 1)

end A182260

/-! ## A182260.P12969059652385140205

`floor((2*n+1)*(C(n+1, n)/2)²)`
-/

namespace A182260.P12969059652385140205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℚ) * ((Nat.choose (n + 1) n : ℚ) / 2) ^ 2⌋

end

end A182260.P12969059652385140205

namespace A182260

/-- `floor((2*n+1)*(C(n+1, n)/2)²)` -/
def P12969059652385140205.Spec : Prop :=
  ∀ n, P12969059652385140205.a n = A182260 (n + 1)

end A182260

/-! ## A182260.P4456288609586287345

`(n+1)/n^(-2)+n-a(n-1)` with `a(0)=0`
-/

namespace A182260.P4456288609586287345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n + 1 : ℚ) / (n : ℚ) ^ (-2 : ℤ) + ((n : ℚ) - a (n - 1))

end

end A182260.P4456288609586287345

namespace A182260

/-- `(n+1)/n^(-2)+n-a(n-1)` -/
def P4456288609586287345.Spec : Prop :=
  ∀ n, P4456288609586287345.a n = (A182260 (n + 1) : ℚ)

end A182260

/-! ## A182260.P1991930966494834744

`floor((2*n+1)*((n+1)/gcd(2, 2*n))²)`
-/

namespace A182260.P1991930966494834744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℚ) * ((n + 1 : ℚ) / (Nat.gcd 2 (2 * n) : ℚ)) ^ 2⌋

end

end A182260.P1991930966494834744

namespace A182260

/-- `floor((2*n+1)*((n+1)/gcd(2, 2*n))²)` -/
def P1991930966494834744.Spec : Prop :=
  ∀ n, P1991930966494834744.a n = A182260 (n + 1)

end A182260

/-! ## A182260.P4221304234224763284

`∑[A227017(n+1)]-1`
-/

namespace A182260.P4221304234224763284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A182260.P4221304234224763284

namespace A182260

/-- `∑[A227017(n+1)]-1` -/
def P4221304234224763284.Spec : Prop :=
  ∀ n, P4221304234224763284.a n = A182260 (n + 1)

end A182260

/-! ## A182260.P9674942480850127267

`∑[n]+2*A019298(n)`
-/

namespace A182260.P9674942480850127267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2 * A019298 n

end

end A182260.P9674942480850127267

namespace A182260

/-- `∑[n]+2*A019298(n)` -/
def P9674942480850127267.Spec : Prop :=
  ∀ n, P9674942480850127267.a n = A182260 (n + 1)

end A182260

/-! ## A182260.P18335044750499097687

`∑[n]+A212960(n)/2`
-/

namespace A182260.P18335044750499097687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (A212960 n : ℚ) / 2

end

end A182260.P18335044750499097687

namespace A182260

/-- `∑[n]+A212960(n)/2` -/
def P18335044750499097687.Spec : Prop :=
  ∀ n, P18335044750499097687.a n = (A182260 (n + 1) : ℚ)

end A182260

/-! ## A182260.P18247939401206339126

`∑[n]+A212684(n)+n`
-/

namespace A182260.P18247939401206339126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A212684 n + (n : ℤ))

end

end A182260.P18247939401206339126

namespace A182260

/-- `∑[n]+A212684(n)+n` -/
def P18247939401206339126.Spec : Prop :=
  ∀ n, P18247939401206339126.a n = A182260 (n + 1)

end A182260

/-! ## A182260.P6796371854312243785

`(n+1)^3-A055232(n)`
-/

namespace A182260.P6796371854312243785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A055232 n

end

end A182260.P6796371854312243785

namespace A182260

/-- `(n+1)^3-A055232(n)` -/
def P6796371854312243785.Spec : Prop :=
  ∀ n, P6796371854312243785.a n = A182260 (n + 1)

end A182260

/-! ## A182260.P16240511519643359755

`∑[A238410(n+1)]+∑[n]`
-/

namespace A182260.P16240511519643359755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238410 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A182260.P16240511519643359755

namespace A182260

/-- `∑[A238410(n+1)]+∑[n]` -/
def P16240511519643359755.Spec : Prop :=
  ∀ n, P16240511519643359755.a n = A182260 (n + 1)

end A182260

/-! ## A182260.P12893430820733595021

`floor((n+1)²*A005408(n)/4)`
-/

namespace A182260.P12893430820733595021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 1) ^ 2 : ℤ) * A005408 n : ℚ) / 4⌋

end

end A182260.P12893430820733595021

namespace A182260

/-- `floor((n+1)²*A005408(n)/4)` -/
def P12893430820733595021.Spec : Prop :=
  ∀ n, P12893430820733595021.a n = A182260 (n + 1)

end A182260

/-!
# A182261: Numbers n such that n^2 + {1,3,7} are semiprimes.

The programs for A182261, there is no canonical definition to state claims against.
-/

/-! ## A182261.P11360895438164136785

`A272305(A030682(n+1)+17)`
-/

namespace A182261.P11360895438164136785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272305 (A030682 (n + 1) + 17).toNat

end

end A182261.P11360895438164136785

/-!
# A182262: Least prime p that 6^n - p is prime.

The programs for A182262, there is no canonical definition to state claims against.
-/

/-! ## A182262.P12601710689905899132

`A104117(A200809(n+1))+A013607(n+1)`
-/

namespace A182262.P12601710689905899132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104117 (A200809 (n + 1)).toNat + A013607 (n + 1)

end

end A182262.P12601710689905899132

/-! ## A182262.P12689391371348224970

`A020639(A013607(n+1)*A236457(n+1))`
-/

namespace A182262.P12689391371348224970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A013607 (n + 1) * A236457 (n + 1)).toNat

end

end A182262.P12689391371348224970

/-! ## A182262.P5035374211346996147

`A013607(n+1)+A000122(A000041(2*n+1))`
-/

namespace A182262.P5035374211346996147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013607 (n + 1) + A000122 (A000041 (2 * n + 1)).toNat

end

end A182262.P5035374211346996147

/-! ## A182262.P8132054157699258987

`A006530(A013607(n+1)*A013610(2*(n+1)))`
-/

namespace A182262.P8132054157699258987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A013607 (n + 1) * A013610 (2 * (n + 1))).toNat

end

end A182262.P8132054157699258987

/-! ## A182262.P15735660196831990450

`A013607(n+1)+A000122(A033908(2*n+3))`
-/

namespace A182262.P15735660196831990450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013607 (n + 1) + A000122 (A033908 (2 * n + 3)).toNat

end

end A182262.P15735660196831990450

/-!
# A182263: G.f. satisfies: A(x) = 1 + Sum_{n>=1} x^n/n! * d^n/dx^n x*A(x)^2.

The programs for A182263, there is no canonical definition to state claims against.
-/

/-! ## A182263.P1459729803696389202

`A037458(∏[A078406(n)])`
-/

namespace A182263.P1459729803696389202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037458 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A182263.P1459729803696389202

/-!
# A182264: G.f. satisfies: A(x) = 1 + Sum_{n>=1} x^n/n! * d^n/dx^n x*A(x)^n.

The programs for A182264, there is no canonical definition to state claims against.
-/

/-! ## A182264.P15713436896794371821

`xor(3, A179740(3*a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A182264.P15713436896794371821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.xor 3 (A179740 (3 * a (n - 1)).toNat)

end

end A182264.P15713436896794371821

/-!
# A182265: Number of primes p < 10^n such that 4*p+1 is also prime.

The programs for A182265, there is no canonical definition to state claims against.
-/

/-! ## A182265.P14852492072150404290

`A130571(n+1)+A007095(A319425(n))`
-/

namespace A182265.P14852492072150404290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130571 (n + 1) + A007095 (A319425 (n + 12)).toNat

end

end A182265.P14852492072150404290

/-!
# A182267: G.f. satisfies: A(x) = (1+x*A(x))*(1+x^2*A(x)^2)*(1+x^3*A(x)).

The programs for A182267, there is no canonical definition to state claims against.
-/

/-! ## A182267.P15861954195443938155

`A256502(A053254(∑[2*n]))`
-/

namespace A182267.P15861954195443938155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A053254 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A182267.P15861954195443938155

/-! ## A182267.P8898647762412694589

`A050296(ceil(sqrt(A340333(2*(n+1)))))`
-/

namespace A182267.P8898647762412694589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 ⌈Real.sqrt (A340333 (2 * (n + 1)) : ℝ)⌉.toNat

end

end A182267.P8898647762412694589

/-! ## A182267.P6165491580383410430

`A050296(round(sqrt(A340333(2*(n+1)))))`
-/

namespace A182267.P6165491580383410430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (SequenceMachineLib.roundAway (Real.sqrt (A340333 (2 * (n + 1)) : ℝ))).toNat

end

end A182267.P6165491580383410430

/-! ## A182267.P2882189510713015604

`A080791(A086853(n))+A000108(n)`
-/

namespace A182267.P2882189510713015604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A086853 n).toNat + A000108 n

end

end A182267.P2882189510713015604

/-!
# A182268: Denominator of Euler(n, 3/14).

The programs for A182268, there is no canonical definition to state claims against.
-/

/-! ## A182268.P7334849484658474819

`7^n*A011782(xor(1, n))`
-/

namespace A182268.P7334849484658474819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * A011782 (Nat.xor 1 n)

end

end A182268.P7334849484658474819

/-! ## A182268.P5693690869429318105

`A156359(n)/A000034(round(acot(n)+n))`
-/

namespace A182268.P5693690869429318105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156359 n : ℚ) / (A000034 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat : ℚ)

end

end A182268.P5693690869429318105

/-! ## A182268.P12632968428545341370

`A000420(n)*A011782(A004442(n))`
-/

namespace A182268.P12632968428545341370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n * A011782 (A004442 n).toNat

end

end A182268.P12632968428545341370

/-! ## A182268.P7569593194205862794

`record[7^A215590(n+1)]*A011782(A004442(n))`
-/

namespace A182268.P7569593194205862794
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A215590 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * (A011782 (A004442 n).toNat : ℚ)

end

end A182268.P7569593194205862794

/-! ## A182268.P2436347261548260880

`7^n*A011262(ceil(2^(n-1)))`
-/

namespace A182268.P2436347261548260880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * A011262 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A182268.P2436347261548260880

/-!
# A182269: Number of representations of n as a sum of products of pairs of positive integers, considered to be equivalent when terms or factors are reordered.

The programs for A182269, there is no canonical definition to state claims against.
-/

/-! ## A182269.P951575557939704049

`A327690(n)+A058276(A187829(n+2))`
-/

namespace A182269.P951575557939704049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327690 n + A058276 (A187829 (n + 2)).toNat

end

end A182269.P951575557939704049

/-! ## A182269.P9385733650599676251

`A327690(n)+A178798(A039900(n))`
-/

namespace A182269.P9385733650599676251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327690 n + A178798 (A039900 n).toNat

end

end A182269.P9385733650599676251

/-! ## A182269.P4914842695023556461

`A327690(n)+A072401(A316961(n))`
-/

namespace A182269.P4914842695023556461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327690 n + A072401 (A316961 n).toNat

end

end A182269.P4914842695023556461

/-! ## A182269.P9778865863566637820

`A327690(n)+A178798(A326978(n))`
-/

namespace A182269.P9778865863566637820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327690 n + A178798 (A326978 n).toNat

end

end A182269.P9778865863566637820

/-! ## A182269.P15520191565220841879

`A003056(A316961(n))-A064459(n)`
-/

namespace A182269.P15520191565220841879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A316961 n).toNat - A064459 n

end

end A182269.P15520191565220841879

/-!
# A182270: Number of representations of n as a sum of products of pairs of integers larger than 1, considered to be equivalent when terms or factors are reordered.

The programs for A182270, there is no canonical definition to state claims against.
-/

/-! ## A182270.P5803109048059875340

`A212215(n)+A103675(A249699(n))`
-/

namespace A182270.P5803109048059875340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212215 n + A103675 (A249699 n).toNat

end

end A182270.P5803109048059875340

/-! ## A182270.P10186439202279564018

`A042974(A279286(n+1))*A212215(n)`
-/

namespace A182270.P10186439202279564018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042974 (A279286 (n + 1)).toNat * A212215 n

end

end A182270.P10186439202279564018

/-! ## A182270.P15646860839847467908

`A212215(n)+A010054(A191892(3*n+4))`
-/

namespace A182270.P15646860839847467908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212215 n + A010054 (A191892 (3 * n + 4)).toNat

end

end A182270.P15646860839847467908

/-! ## A182270.P12711232226294531190

`A067693(A321375(2*n)²)`
-/

namespace A182270.P12711232226294531190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067693 (A321375 (2 * n) ^ 2).toNat

end

end A182270.P12711232226294531190

/-! ## A182270.P12341054018832371072

`A212215(n)*A301957(A000079(n))`
-/

namespace A182270.P12341054018832371072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212215 n * A301957 (A000079 n).toNat

end

end A182270.P12341054018832371072

/-!
# A182275: Number of ways of dividing an n X n square into rectangles of integer side lengths.

The programs for A182275, there is no canonical definition to state claims against.
-/

/-! ## A182275.P13302491000813306931

`A333476(∑[n]+n)`
-/

namespace A182275.P13302491000813306931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333476 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A182275.P13302491000813306931

/-! ## A182275.P11268997505726489340

`gcd(A010894(n), A333476(A000096(n)))`
-/

namespace A182275.P11268997505726489340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010894 (n + 21)) (A333476 (A000096 n).toNat)

end

end A182275.P11268997505726489340

/-! ## A182275.P5222573110112850591

`A007318(and(1, -n))*A333476(A000096(n))`
-/

namespace A182275.P5222573110112850591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A333476 (A000096 n).toNat

end

end A182275.P5222573110112850591

/-! ## A182275.P3609383387414764719

`floor(A333476(A000096(n))+A228814(n+1)/28)`
-/

namespace A182275.P3609383387414764719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A333476 (A000096 n).toNat : ℚ) + (A228814 (n + 1) : ℚ) / 28⌋

end

end A182275.P3609383387414764719

/-! ## A182275.P5058024858243520816

`A116694((1-n)²+n²)`
-/

namespace A182275.P5058024858243520816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116694 ((1 - (n : ℤ)) ^ 2 + (n ^ 2 : ℤ)).toNat

end

end A182275.P5058024858243520816

/-!
# A182276: Sum of all parts minus the total number of parts of the modular table of partitions with n regions.

The programs for A182276, there is no canonical definition to state claims against.
-/

/-! ## A182276.P3025078925791876101

`A182244(n+1)-A182181(n+1)`
-/

namespace A182276.P3025078925791876101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182244 (n + 1) - A182181 (n + 1)

end

end A182276.P3025078925791876101

/-! ## A182276.P4240959996308658457

`∑[A186412(n+1)]-A182181(n+1)`
-/

namespace A182276.P4240959996308658457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A182181 (n + 1)

end

end A182276.P4240959996308658457

/-! ## A182276.P11693041143219488274

`A182244(n+1)-∑[A194446(n+1)]`
-/

namespace A182276.P11693041143219488274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182244 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182276.P11693041143219488274

/-! ## A182276.P4344495526789493063

`∑[A186412(n+1)-A194446(n+1)]`
-/

namespace A182276.P4344495526789493063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186412 (n + 1) - A194446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182276.P4344495526789493063

/-! ## A182276.P17953992644344814693

`A182244(n+1)-∑[1-A210451(n+1)+n]`
-/

namespace A182276.P17953992644344814693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A210451 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182244 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182276.P17953992644344814693

/-! ## A182276.P17752177032431420337

`A210990(n+1)-(A182727(n+1)+A182181(n+1))-A182181(n+1)`
-/

namespace A182276.P17752177032431420337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210990 (n + 1) - (A182727 (n + 1) + A182181 (n + 1)) - A182181 (n + 1)

end

end A182276.P17752177032431420337

/-!
# A182277: Quartan semiprimes: semiprimes of the form x^4 + y^4, x>0, y>0.

The programs for A182277, there is no canonical definition to state claims against.
-/

/-! ## A182277.P6033085494222670100

`∩[A003336(n+1), A397070(n+1)]`
-/

namespace A182277.P6033085494222670100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182277.P6033085494222670100

/-! ## A182277.P2380892007148460682

`filter[A003336(n+1), A354927(#)]`
-/

namespace A182277.P2380892007148460682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A182277.P2380892007148460682

/-! ## A182277.P9030984499312936695

`filter[A003336(n+1), A374471(#)]`
-/

namespace A182277.P9030984499312936695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374471 (f1 j).toNat = 1) n)

end

end A182277.P9030984499312936695

/-! ## A182277.P6424228381400923674

`filter[A088687(n+1), A354927(#)]`
-/

namespace A182277.P6424228381400923674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A182277.P6424228381400923674

/-! ## A182277.P8818430410909361882

`filter[A088687(n+1), A373481(#)]`
-/

namespace A182277.P8818430410909361882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A182277.P8818430410909361882

/-!
# A182279: Numbers n such that 30n+{11, 13, 17, 19, 23} are 5 consecutive primes.

The programs for A182279, there is no canonical definition to state claims against.
-/

/-! ## A182279.P2698195365026980924

`floor(A178084(n+1)/3)`
-/

namespace A182279.P2698195365026980924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A178084 (n + 1) : ℚ) / 3⌋

end

end A182279.P2698195365026980924

/-! ## A182279.P16462695718598957469

`floor(A022006(n+2)/30)`
-/

namespace A182279.P16462695718598957469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A022006 (n + 2) : ℚ) / 30⌋

end

end A182279.P16462695718598957469

/-! ## A182279.P4838154872290757644

`ceil(A278400(gcd(n, n+1))+A022006(n+2)/30)`
-/

namespace A182279.P4838154872290757644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A278400 (Nat.gcd n (n + 1)) : ℚ) + (A022006 (n + 2) : ℚ) / 30⌉

end

end A182279.P4838154872290757644

/-! ## A182279.P105201872157356732

`ceil(A008683(A006512(n+1))+A178084(n+1)/3)`
-/

namespace A182279.P105201872157356732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008683 (A006512 (n + 1)).toNat : ℚ) + (A178084 (n + 1) : ℚ) / 3⌉

end

end A182279.P105201872157356732

/-! ## A182279.P16396281280577308093

`floor(A245304(n+2)/30)`
-/

namespace A182279.P16396281280577308093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A245304 (n + 2) : ℚ) / 30⌋

end

end A182279.P16396281280577308093

/-! ## A182279.P10279115703784181267

`(A245304(n+2)/A125855(n+2)*A007811(n+1)-1)/3`
-/

namespace A182279.P10279115703784181267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A245304 (n + 2) : ℚ) / (A125855 (n + 2) : ℚ) * (A007811 (n + 1) : ℚ) - 1) / 3

end

end A182279.P10279115703784181267

/-!
# A182280: a(n) = floor(a(n-1)/4)+a(n-2) with a(0)=3, a(1)=4.

The programs for A182280, the canonical program `A182280.P2637846377094842251` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182280 has offset 0).

The definition of A182280 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)/4)+a(n-2)` (program `A182280.P2637846377094842251`, by `A182280.P2637846377094842251.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182280.P2637846377094842251

`floor(a(n-1)/4)+a(n-2)` with `a(0)=3, a(1)=4`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182280

/-- `floor(a(n-1)/4)+a(n-2)` -/
def P2637846377094842251.Spec : Prop :=
  ∀ n, P2637846377094842251.a n = A182280 n

theorem P2637846377094842251.correct : P2637846377094842251.Spec := by
  intro n
  simp only [A182280]

end A182280

/-! ## A182280.P14844041534186767398

`a(n-2)-floor((3-a(n-1))/4)` with `a(0)=3, a(1)=4`
-/

namespace A182280.P14844041534186767398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 2) - ⌊(3 - a (n - 1) : ℚ) / 4⌋

end

end A182280.P14844041534186767398

namespace A182280

/-- `a(n-2)-floor((3-a(n-1))/4)` -/
def P14844041534186767398.Spec : Prop :=
  ∀ n, P14844041534186767398.a n = A182280 n

end A182280

/-! ## A182280.P4205090699780872928

`ceil(a(n-2)+(a(n-1)-3)/4)` with `a(0)=3, a(1)=4`
-/

namespace A182280.P4205090699780872928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  ⌈(a (n - 2) : ℚ) + (a (n - 1) - 3 : ℚ) / 4⌉

end

end A182280.P4205090699780872928

namespace A182280

/-- `ceil(a(n-2)+(a(n-1)-3)/4)` -/
def P4205090699780872928.Spec : Prop :=
  ∀ n, P4205090699780872928.a n = A182280 n

end A182280

/-! ## A182280.P6163479390349522333

`ceil(a(n-2)-(3-a(n-1))/4)` with `a(0)=3, a(1)=4`
-/

namespace A182280.P6163479390349522333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  ⌈(a (n - 2) : ℚ) - (3 - a (n - 1) : ℚ) / 4⌉

end

end A182280.P6163479390349522333

namespace A182280

/-- `ceil(a(n-2)-(3-a(n-1))/4)` -/
def P6163479390349522333.Spec : Prop :=
  ∀ n, P6163479390349522333.a n = A182280 n

end A182280

/-! ## A182280.P10565048800318363545

`a(n-2)+(a(n-1)-a(n-1)%4)/4` with `a(0)=3, a(1)=4`
-/

namespace A182280.P10565048800318363545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 2) + (a (n - 1) - (Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) 4 : ℚ)) / 4

end

end A182280.P10565048800318363545

namespace A182280

/-- `a(n-2)+(a(n-1)-a(n-1)%4)/4` -/
def P10565048800318363545.Spec : Prop :=
  ∀ n, P10565048800318363545.a n = (A182280 n : ℚ)

end A182280

/-! ## A182280.P16714060333577057133

`A002265(a(n-1))+a(n-2)` with `a(0)=3, a(1)=4`
-/

namespace A182280.P16714060333577057133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  A002265 (a (n - 1)).toNat + a (n - 2)

end

end A182280.P16714060333577057133

namespace A182280

/-- `A002265(a(n-1))+a(n-2)` -/
def P16714060333577057133.Spec : Prop :=
  ∀ n, P16714060333577057133.a n = A182280 n

end A182280

/-! ## A182280.P21485200899740604

`A004526(A004526(a(n-1)))+a(n-2)` with `a(0)=3, a(1)=4`
-/

namespace A182280.P21485200899740604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  A004526 (A004526 (a (n - 1)).toNat).toNat + a (n - 2)

end

end A182280.P21485200899740604

namespace A182280

/-- `A004526(A004526(a(n-1)))+a(n-2)` -/
def P21485200899740604.Spec : Prop :=
  ∀ n, P21485200899740604.a n = A182280 n

end A182280

/-! ## A182280.P11674477138528332585

`A123108(A123108(a(n-1)))+a(n-2)` with `a(0)=3, a(1)=4`
-/

namespace A182280.P11674477138528332585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  A123108 (A123108 (a (n - 1)).toNat).toNat + a (n - 2)

end

end A182280.P11674477138528332585

namespace A182280

/-- `A123108(A123108(a(n-1)))+a(n-2)` -/
def P11674477138528332585.Spec : Prop :=
  ∀ n, P11674477138528332585.a n = A182280 n

end A182280

/-!
# A182281: a(n) = floor(a(n-1)/3)+a(n-2) with a(0)=2, a(1)=3.

The programs for A182281, the canonical program `A182281.P10660450549736066797` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182281 has offset 0).

The definition of A182281 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)/3)+a(n-2)` (program `A182281.P10660450549736066797`, by `A182281.P10660450549736066797.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182281.P10660450549736066797

`floor(a(n-1)/3)+a(n-2)` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182281

/-- `floor(a(n-1)/3)+a(n-2)` -/
def P10660450549736066797.Spec : Prop :=
  ∀ n, P10660450549736066797.a n = A182281 n

theorem P10660450549736066797.correct : P10660450549736066797.Spec := by
  intro n
  simp only [A182281]

end A182281

/-! ## A182281.P7489794250258054455

`a(n-2)-floor((2-a(n-1))/3)` with `a(0)=2, a(1)=3`
-/

namespace A182281.P7489794250258054455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) - ⌊(2 - a (n - 1) : ℚ) / 3⌋

end

end A182281.P7489794250258054455

namespace A182281

/-- `a(n-2)-floor((2-a(n-1))/3)` -/
def P7489794250258054455.Spec : Prop :=
  ∀ n, P7489794250258054455.a n = A182281 n

end A182281

/-! ## A182281.P15906819288248699616

`ceil(a(n-2)+(a(n-1)-2)/3)` with `a(0)=2, a(1)=3`
-/

namespace A182281.P15906819288248699616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  ⌈(a (n - 2) : ℚ) + (a (n - 1) - 2 : ℚ) / 3⌉

end

end A182281.P15906819288248699616

namespace A182281

/-- `ceil(a(n-2)+(a(n-1)-2)/3)` -/
def P15906819288248699616.Spec : Prop :=
  ∀ n, P15906819288248699616.a n = A182281 n

end A182281

/-! ## A182281.P2169154722624357365

`ceil(a(n-2)-(2-a(n-1))/3)` with `a(0)=2, a(1)=3`
-/

namespace A182281.P2169154722624357365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  ⌈(a (n - 2) : ℚ) - (2 - a (n - 1) : ℚ) / 3⌉

end

end A182281.P2169154722624357365

namespace A182281

/-- `ceil(a(n-2)-(2-a(n-1))/3)` -/
def P2169154722624357365.Spec : Prop :=
  ∀ n, P2169154722624357365.a n = A182281 n

end A182281

/-! ## A182281.P14874871598954011937

`a(n-2)+(a(n-1)-a(n-1)%3)/3` with `a(0)=2, a(1)=3`
-/

namespace A182281.P14874871598954011937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) + (a (n - 1) - (Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) 3 : ℚ)) / 3

end

end A182281.P14874871598954011937

namespace A182281

/-- `a(n-2)+(a(n-1)-a(n-1)%3)/3` -/
def P14874871598954011937.Spec : Prop :=
  ∀ n, P14874871598954011937.a n = (A182281 n : ℚ)

end A182281

/-! ## A182281.P17798089641956911168

`A002264(a(n-1))+a(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A182281.P17798089641956911168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A002264 (a (n - 1)).toNat + a (n - 2)

end

end A182281.P17798089641956911168

namespace A182281

/-- `A002264(a(n-1))+a(n-2)` -/
def P17798089641956911168.Spec : Prop :=
  ∀ n, P17798089641956911168.a n = A182281 n

end A182281

/-! ## A182281.P3382454429316982147

`A008620(a(n-1))-(1-a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A182281.P3382454429316982147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A008620 (a (n - 1)).toNat - (1 - a (n - 2))

end

end A182281.P3382454429316982147

namespace A182281

/-- `A008620(a(n-1))-(1-a(n-2))` -/
def P3382454429316982147.Spec : Prop :=
  ∀ n, P3382454429316982147.a n = A182281 n

end A182281

/-!
# A182282: Numbers k such that 210*k+{11, 13, 17, 19, 23, 29} are 6 consecutive primes.

The programs for A182282, there is no canonical definition to state claims against.
-/

/-! ## A182282.P11513402569151261708

`floor(A178083(n+1)/21)`
-/

namespace A182282.P11513402569151261708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A178083 (n + 1) : ℚ) / 21⌋

end

end A182282.P11513402569151261708

/-! ## A182282.P4006666378535506498

`round(A178083(C(n+1, n))/21)`
-/

namespace A182282.P4006666378535506498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A178083 (Nat.choose (n + 1) n) : ℚ) / 21)

end

end A182282.P4006666378535506498

/-! ## A182282.P832804185632928080

`round(A178083(Δ[n²]-n)/21)`
-/

namespace A182282.P832804185632928080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A178083 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 21)

end

end A182282.P832804185632928080

/-! ## A182282.P12536174520132075952

`round(A000007(n+1)+A178083(n+1)/21)`
-/

namespace A182282.P12536174520132075952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000007 (n + 1) : ℚ) + (A178083 (n + 1) : ℚ) / 21)

end

end A182282.P12536174520132075952

/-! ## A182282.P7935206961741641500

`round(A000035(2*n)+A178083(n+1)/21)`
-/

namespace A182282.P7935206961741641500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000035 (2 * n) : ℚ) + (A178083 (n + 1) : ℚ) / 21)

end

end A182282.P7935206961741641500

/-! ## A182282.P13690963900019742274

`A008683(8*(n+1))+round(A178083(n+1)/21)`
-/

namespace A182282.P13690963900019742274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (8 * (n + 1)) + SequenceMachineLib.roundAway ((A178083 (n + 1) : ℚ) / 21)

end

end A182282.P13690963900019742274

/-! ## A182282.P7641851054677007669

`A000040(n+1)%2*round(A178083(n+1)/21)`
-/

namespace A182282.P7641851054677007669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * SequenceMachineLib.roundAway ((A178083 (n + 1) : ℚ) / 21)

end

end A182282.P7641851054677007669

/-! ## A182282.P17477051076497813457

`ceil(A178083(n+1)/21-A000041(C(2, n+2)))`
-/

namespace A182282.P17477051076497813457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A178083 (n + 1) : ℚ) / 21 - (A000041 (Nat.choose 2 (n + 2)) : ℚ)⌉

end

end A182282.P17477051076497813457

/-! ## A182282.P6062997259620307001

`ceil(A178083(n+1)/21-A000108(C(2, n+2)))`
-/

namespace A182282.P6062997259620307001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A178083 (n + 1) : ℚ) / 21 - (A000108 (Nat.choose 2 (n + 2)) : ℚ)⌉

end

end A182282.P6062997259620307001

/-! ## A182282.P8265400833891440300

`round(A178083(n+1)/21)*A000032((n+2)%(n+1))`
-/

namespace A182282.P8265400833891440300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A178083 (n + 1) : ℚ) / 21) * A000032 ((n + 2) % (n + 1))

end

end A182282.P8265400833891440300

/-! ## A182282.P3081270703599294149

`A007318(∑[n])*round(A178083(n+1)/21)`
-/

namespace A182282.P3081270703599294149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.roundAway ((A178083 (n + 1) : ℚ) / 21)

end

end A182282.P3081270703599294149

/-!
# A182284: Triangle read by rows: T(n,k) = number of parts in the k-th zone of the last section of the set of partitions of n.

The programs for A182284, there is no canonical definition to state claims against.
-/

/-! ## A182284.P5121135712202880479

`A109267(and(A176206(3*n+2), A259388(n+1)))`
-/

namespace A182284.P5121135712202880479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109267 (Int.land (A176206 (3 * n + 2)) (A259388 (n + 1))).toNat

end

end A182284.P5121135712202880479

/-! ## A182284.P13156456598791897119

`A158825(A176206(3*n+1))%A067539(2*(n+1))`
-/

namespace A182284.P13156456598791897119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158825 (A176206 (3 * n + 1)).toNat) (A067539 (2 * (n + 1)))

end

end A182284.P13156456598791897119

/-! ## A182284.P18388491771122556879

`gcd(A102481(n+1), A153901(n))`
-/

namespace A182284.P18388491771122556879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A102481 (n + 1)) (A153901 n)

end

end A182284.P18388491771122556879

/-! ## A182284.P625088117250033105

`gcd(A093873(n+1), A383974(n))`
-/

namespace A182284.P625088117250033105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A093873 (n + 1)) (A383974 n)

end

end A182284.P625088117250033105

/-!
# A182287: If n = p*10^i + q*10^(i-1) + r*10^(i-2) + ... in decimal notation, then a(n) = p!*10^i + q!*10^(i-1) + r!*10^(i-2)+ ... .

The programs for A182287, there is no canonical definition to state claims against.
-/

/-! ## A182287.P4413130385540428466

`A070565(n)+A175400(A004086(n))!`
-/

namespace A182287.P4413130385540428466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 n + (Nat.factorial (A175400 (A004086 n).toNat).toNat : ℤ)

end

end A182287.P4413130385540428466

/-! ## A182287.P9571057086610914419

`lcm(∏{digits}[n, #!], A292886(A351823(n)))`
-/

namespace A182287.P9571057086610914419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial x).prod : ℕ) : ℤ) (A292886 (A351823 n).toNat)

end

end A182287.P9571057086610914419

/-!
# A182288: Primes of form a^2+b^2 such that |a|+|b| is prime of the form 4k+3.

The programs for A182288, there is no canonical definition to state claims against.
-/

/-! ## A182288.P155180558999344657

`∩[A099332(n+1), A279393(n+1)]`
-/

namespace A182288.P155180558999344657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182288.P155180558999344657

/-! ## A182288.P7538745937493587946

`eq[1, A099379(A099380(n))]`
-/

namespace A182288.P7538745937493587946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099379 (A099380 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182288.P7538745937493587946

/-! ## A182288.P2715389426475506891

`eq[A035214(n), A099379(A099379(n))]`
-/

namespace A182288.P2715389426475506891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099379 (A099379 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182288.P2715389426475506891

/-! ## A182288.P15910235731771640384

`eq[A040484(n), A099379(A099379(n))]`
-/

namespace A182288.P15910235731771640384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040484 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099379 (A099379 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182288.P15910235731771640384

/-! ## A182288.P11286676381304748413

`eq[A099379(A099379(n)), A109007(n)]`
-/

namespace A182288.P11286676381304748413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099379 (A099379 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182288.P11286676381304748413

/-!
# A182290: Maximal number of connected graphs of order n having distinct numbers of spanning trees.

The programs for A182290, there is no canonical definition to state claims against.
-/

/-! ## A182290.P6148946836632970858

`A105659(A059221(n))`
-/

namespace A182290.P6148946836632970858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105659 (A059221 n).toNat

end

end A182290.P6148946836632970858

/-! ## A182290.P9413834412194135574

`A105659(A049075(n+1))`
-/

namespace A182290.P9413834412194135574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105659 (A049075 (n + 1)).toNat

end

end A182290.P9413834412194135574

/-! ## A182290.P9827019361103716427

`A105659(A052327(n+1))`
-/

namespace A182290.P9827019361103716427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105659 (A052327 (n + 1)).toNat

end

end A182290.P9827019361103716427

/-!
# A182294: Number of connected labeled graphs with n nodes and n+9 edges.

The programs for A182294, there is no canonical definition to state claims against.
-/

/-! ## A182294.P3155659355438481889

`C(∑[n], record[A320479(n)])`
-/

namespace A182294.P3155659355438481889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320479 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

end

end A182294.P3155659355438481889

/-! ## A182294.P16968278073532747342

`A187497(2*A058182(n))`
-/

namespace A182294.P16968278073532747342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187497 (2 * A058182 n).toNat

end

end A182294.P16968278073532747342

/-! ## A182294.P14029720808660264811

`C(A002260(A000272(n)), 5)`
-/

namespace A182294.P14029720808660264811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002260 (A000272 n).toNat).toNat 5

end

end A182294.P14029720808660264811

/-!
# A182297: Wieferich numbers (2): positive odd integers q such that q and (2^A002326((q-1)/2)-1)/q are not relatively prime.

The programs for A182297, there is no canonical definition to state claims against.
-/

/-! ## A182297.P8983479026166263364

`A005408(lt[A237292(n), n])`
-/

namespace A182297.P8983479026166263364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237292 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A182297.P8983479026166263364

/-! ## A182297.P13714176323151837262

`A144396(lt[A237292(n), n])`
-/

namespace A182297.P13714176323151837262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237292 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A182297.P13714176323151837262

/-! ## A182297.P2559995571495438503

`A267872(lt[A237292(n), n])`
-/

namespace A182297.P2559995571495438503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237292 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A182297.P2559995571495438503

/-! ## A182297.P5250225065633677596

`A267873(lt[A237292(n), n])`
-/

namespace A182297.P5250225065633677596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237292 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267873 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A182297.P5250225065633677596

/-! ## A182297.P2878663666354706618

`A267881(lt[A237292(n), n])`
-/

namespace A182297.P2878663666354706618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237292 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267881 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A182297.P2878663666354706618

/-! ## A182297.P3800968055816094006

`lt[A237292(A004526(n)), A093178(n)]`
-/

namespace A182297.P3800968055816094006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237292 (A004526 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A182297.P3800968055816094006

/-! ## A182297.P546813941732750690

`lt[A237292(A004526(n)), A105811(n)]`
-/

namespace A182297.P546813941732750690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237292 (A004526 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A182297.P546813941732750690

/-!
# A182298: Smallest complementary perimeter, as defined in the comments, among all sets of nonnegative integers whose volume (sum) is n.

The programs for A182298, there is no canonical definition to state claims against.
-/

/-! ## A182298.P14538588640808995926

`A186053(Δ[A008778(n)]+6)-(n+4)`
-/

namespace A182298.P14538588640808995926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186053 (f1 (n + 1) - f1 n + 6).toNat - (n + 4 : ℤ)

end

end A182298.P14538588640808995926

/-! ## A182298.P13636011648700435427

`A186053(Δ[A008778(n)]+6)%A023443(n+5)`
-/

namespace A182298.P13636011648700435427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186053 (f1 (n + 1) - f1 n + 6).toNat) (A023443 (n + 5))

end

end A182298.P13636011648700435427

/-! ## A182298.P11549639216871444743

`A186053(A001844(n))-Δ[n²]`
-/

namespace A182298.P11549639216871444743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186053 (A001844 n).toNat - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A182298.P11549639216871444743

/-! ## A182298.P10267901499698133953

`A186053(A001844(n))%A005408(n)`
-/

namespace A182298.P10267901499698133953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186053 (A001844 n).toNat) (A005408 n)

end

end A182298.P10267901499698133953

/-!
# A182299: Number of achiral simplicial 4-clusters with n cells.

The programs for A182299, there is no canonical definition to state claims against.
-/

/-! ## A182299.P11767807227699122506

`2*A182322(n+1)-A007175(n+1)`
-/

namespace A182299.P11767807227699122506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A182322 (n + 1) - A007175 (n + 1)

end

end A182299.P11767807227699122506

/-! ## A182299.P10985355470840204478

`A182322(n+1)-A369474(n+1)`
-/

namespace A182299.P10985355470840204478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182322 (n + 1) - A369474 (n + 1)

end

end A182299.P10985355470840204478

/-! ## A182299.P1658343583520975042

`A007175(n+1)-2*A369474(n+1)`
-/

namespace A182299.P1658343583520975042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007175 (n + 1) - 2 * A369474 (n + 1)

end

end A182299.P1658343583520975042

/-! ## A182299.P10097849972422984246

`A004277(A182322(n+1))-A007175(n+1)`
-/

namespace A182299.P10097849972422984246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A182322 (n + 1)).toNat - A007175 (n + 1)

end

end A182299.P10097849972422984246

