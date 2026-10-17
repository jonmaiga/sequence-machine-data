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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
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
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A014200: Number of solutions to x^2 + y^2 <= n, excluding (0,0), divided by 4.

The programs for A014200, the canonical program `A014200.P16970295702573526038` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014200 has offset 0).

The definition of A014200 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014198, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A014200.P16970295702573526038

`A014198(n)/4`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A014200

/-- `A014198(n)/4` -/
def P16970295702573526038.Spec : Prop :=
  ∀ n, P16970295702573526038.a n = (A014200 n : ℚ)

end A014200

/-! ## A014200.P1357002378171595946

`floor(A057655(n)/4)`
-/

namespace A014200.P1357002378171595946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057655 n : ℚ) / 4⌋

end

end A014200.P1357002378171595946

namespace A014200

/-- `floor(A057655(n)/4)` -/
def P1357002378171595946.Spec : Prop :=
  ∀ n, P1357002378171595946.a n = A014200 n

end A014200

/-! ## A014200.P9777324596449036289

`∑[∑{d}[n, A117569(#)]]`
-/

namespace A014200.P9777324596449036289
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A117569 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014200.P9777324596449036289

namespace A014200

/-- `∑[∑{d}[n, A117569(#)]]` -/
def P9777324596449036289.Spec : Prop :=
  ∀ n, P9777324596449036289.a n = A014200 n

end A014200

/-! ## A014200.P8155050590475515945

`(∑[A004018(n)]-1)/4`
-/

namespace A014200.P8155050590475515945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 4

end

end A014200.P8155050590475515945

namespace A014200

/-- `(∑[A004018(n)]-1)/4` -/
def P8155050590475515945.Spec : Prop :=
  ∀ n, P8155050590475515945.a n = (A014200 n : ℚ)

end A014200

/-! ## A014200.P11650061027356731047

`∑[A063725(n)]+floor(sqrt(n))`
-/

namespace A014200.P11650061027356731047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.sqrt n : ℤ)

end

end A014200.P11650061027356731047

namespace A014200

/-- `∑[A063725(n)]+floor(sqrt(n))` -/
def P11650061027356731047.Spec : Prop :=
  ∀ n, P11650061027356731047.a n = A014200 n

end A014200

/-! ## A014200.P18325883786983424060

`∑[A000925(n)-char[n²]]`
-/

namespace A014200.P18325883786983424060
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014200.P18325883786983424060

namespace A014200

/-- `∑[A000925(n)-char[n²]]` -/
def P18325883786983424060.Spec : Prop :=
  ∀ n, P18325883786983424060.a n = A014200 n

end A014200

/-! ## A014200.P18435584870823585679

`A224212(n)-∑[char[n²]]`
-/

namespace A014200.P18435584870823585679
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224212 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A014200.P18435584870823585679

namespace A014200

/-- `A224212(n)-∑[char[n²]]` -/
def P18435584870823585679.Spec : Prop :=
  ∀ n, P18435584870823585679.a n = A014200 n

end A014200

/-! ## A014200.P14301254757314813093

`A002654(n)+a(n-1)` with `a(0)=0`
-/

namespace A014200.P14301254757314813093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002654 n + a (n - 1)

end

end A014200.P14301254757314813093

namespace A014200

/-- `A002654(n)+a(n-1)` -/
def P14301254757314813093.Spec : Prop :=
  ∀ n, P14301254757314813093.a n = A014200 n

end A014200

/-! ## A014200.P7068397904973692060

`∑[A002265(A004018(n))]`
-/

namespace A014200.P7068397904973692060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A004018 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014200.P7068397904973692060

namespace A014200

/-- `∑[A002265(A004018(n))]` -/
def P7068397904973692060.Spec : Prop :=
  ∀ n, P7068397904973692060.a n = A014200 n

end A014200

/-! ## A014200.P10917017762138016431

`A237526(n)+A000196(n)`
-/

namespace A014200.P10917017762138016431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237526 n + A000196 n

end

end A014200.P10917017762138016431

namespace A014200

/-- `A237526(n)+A000196(n)` -/
def P10917017762138016431.Spec : Prop :=
  ∀ n, P10917017762138016431.a n = A014200 n

end A014200

/-! ## A014200.P8514413040838620856

`∑[A025426(2*n)+A025426(n)]`
-/

namespace A014200.P8514413040838620856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (2 * n) + A025426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014200.P8514413040838620856

namespace A014200

/-- `∑[A025426(2*n)+A025426(n)]` -/
def P8514413040838620856.Spec : Prop :=
  ∀ n, P8514413040838620856.a n = A014200 n

end A014200

/-! ## A014200.P5223027661307119732

`∑[n*A004018(n)/A008574(n)]`
-/

namespace A014200.P5223027661307119732
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A004018 n : ℚ) / (A008574 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014200.P5223027661307119732

namespace A014200

/-- `∑[n*A004018(n)/A008574(n)]` -/
def P5223027661307119732.Spec : Prop :=
  ∀ n, P5223027661307119732.a n = (A014200 n : ℚ)

end A014200

/-! ## A014200.P10685898879997194950

`∑[A002654(n+1)]-A002654(n+1)`
-/

namespace A014200.P10685898879997194950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002654 (n + 1)

end

end A014200.P10685898879997194950

namespace A014200

/-- `∑[A002654(n+1)]-A002654(n+1)` -/
def P10685898879997194950.Spec : Prop :=
  ∀ n, P10685898879997194950.a n = A014200 n

end A014200

/-! ## A014200.P940976135026207294

`(∑[A105673(n+1)]-A105673(n+1))/2`
-/

namespace A014200.P940976135026207294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105673 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A105673 (n + 1) : ℤ) : ℚ) / 2

end

end A014200.P940976135026207294

namespace A014200

/-- `(∑[A105673(n+1)]-A105673(n+1))/2` -/
def P940976135026207294.Spec : Prop :=
  ∀ n, P940976135026207294.a n = (A014200 n : ℚ)

end A014200

/-! ## A014200.P15130197624441981973

`A004524((A057655(n)+1)/2)`
-/

namespace A014200.P15130197624441981973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (SequenceMachineLib.roundAway ((A057655 n + 1 : ℚ) / 2)).toNat

end

end A014200.P15130197624441981973

namespace A014200

/-- `A004524((A057655(n)+1)/2)` -/
def P15130197624441981973.Spec : Prop :=
  ∀ n, P15130197624441981973.a n = A014200 n

end A014200

/-! ## A014200.P11876282757854891713

`(∑[A104794(2*n)]-1)/4`
-/

namespace A014200.P11876282757854891713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 4

end

end A014200.P11876282757854891713

namespace A014200

/-- `(∑[A104794(2*n)]-1)/4` -/
def P11876282757854891713.Spec : Prop :=
  ∀ n, P11876282757854891713.a n = (A014200 n : ℚ)

end A014200

/-! ## A014200.P17313517006472226557

`a(n-1)-A113652(2*n)` with `a(0)=0`
-/

namespace A014200.P17313517006472226557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - A113652 (2 * n)

end

end A014200.P17313517006472226557

namespace A014200

/-- `a(n-1)-A113652(2*n)` -/
def P17313517006472226557.Spec : Prop :=
  ∀ n, P17313517006472226557.a n = A014200 n

end A014200

/-! ## A014200.P4774585398866480514

`∑[A002654(A004277(n))]-1`
-/

namespace A014200.P4774585398866480514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014200.P4774585398866480514

namespace A014200

/-- `∑[A002654(A004277(n))]-1` -/
def P4774585398866480514.Spec : Prop :=
  ∀ n, P4774585398866480514.a n = A014200 n

end A014200

/-! ## A014200.P6463717294711062642

`∑[A025435(2*n)+A025435(n)]`
-/

namespace A014200.P6463717294711062642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (2 * n) + A025435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014200.P6463717294711062642

namespace A014200

/-- `∑[A025435(2*n)+A025435(n)]` -/
def P6463717294711062642.Spec : Prop :=
  ∀ n, P6463717294711062642.a n = A014200 n

end A014200

/-! ## A014200.P5566683196266182365

`A002265(A014198(n))`
-/

namespace A014200.P5566683196266182365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A014198 n).toNat

end

end A014200.P5566683196266182365

namespace A014200

/-- `A002265(A014198(n))` -/
def P5566683196266182365.Spec : Prop :=
  ∀ n, P5566683196266182365.a n = A014200 n

end A014200

/-!
# A014201: Number of solutions to x^2 + x*y + y^2 <= n excluding (0,0).

The programs for A014201, the canonical program `A014201.P10815389346971354780` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014201 has offset 0).

The definition of A014201 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038589, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A014201.P10815389346971354780

`A038589(n)-1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A014201

/-- `A038589(n)-1` -/
def P10815389346971354780.Spec : Prop :=
  ∀ n, P10815389346971354780.a n = A014201 n

theorem P10815389346971354780.correct : P10815389346971354780.Spec := by
  intro n
  simp only [A014201]

end A014201

/-! ## A014201.P16765500520724967296

`6*A014202(n)`
-/

namespace A014201.P16765500520724967296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A014202 n

end

end A014201.P16765500520724967296

namespace A014201

/-- `6*A014202(n)` -/
def P16765500520724967296.Spec : Prop :=
  ∀ n, P16765500520724967296.a n = A014201 n

end A014201

/-! ## A014201.P51994253665164504

`∑[A004016(n)]-1`
-/

namespace A014201.P51994253665164504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014201.P51994253665164504

namespace A014201

/-- `∑[A004016(n)]-1` -/
def P51994253665164504.Spec : Prop :=
  ∀ n, P51994253665164504.a n = A014201 n

end A014201

/-! ## A014201.P13564007678554247314

`∑[abs(A180318(n))]-1`
-/

namespace A014201.P13564007678554247314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A180318 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014201.P13564007678554247314

namespace A014201

/-- `∑[abs(A180318(n))]-1` -/
def P13564007678554247314.Spec : Prop :=
  ∀ n, P13564007678554247314.a n = A014201 n

end A014201

/-! ## A014201.P5096220960063316276

`∑[A033716(4*n)]-1`
-/

namespace A014201.P5096220960063316276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014201.P5096220960063316276

namespace A014201

/-- `∑[A033716(4*n)]-1` -/
def P5096220960063316276.Spec : Prop :=
  ∀ n, P5096220960063316276.a n = A014201 n

end A014201

/-! ## A014201.P2537234144018230266

`∑[A217220(4*n)]-1`
-/

namespace A014201.P2537234144018230266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217220 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014201.P2537234144018230266

namespace A014201

/-- `∑[A217220(4*n)]-1` -/
def P2537234144018230266.Spec : Prop :=
  ∀ n, P2537234144018230266.a n = A014201 n

end A014201

/-! ## A014201.P14733343552289503620

`A008588(A014202(n))`
-/

namespace A014201.P14733343552289503620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A014202 n).toNat

end

end A014201.P14733343552289503620

namespace A014201

/-- `A008588(A014202(n))` -/
def P14733343552289503620.Spec : Prop :=
  ∀ n, P14733343552289503620.a n = A014201 n

end A014201

/-! ## A014201.P13156104475860770037

`∑[A004016(n)%A322797(n+1)]`
-/

namespace A014201.P13156104475860770037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004016 n) (A322797 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014201.P13156104475860770037

namespace A014201

/-- `∑[A004016(n)%A322797(n+1)]` -/
def P13156104475860770037.Spec : Prop :=
  ∀ n, P13156104475860770037.a n = A014201 n

end A014201

/-! ## A014201.P12770485265097430250

`∑[lcm(A005928(n), A033716(n))]-1`
-/

namespace A014201.P12770485265097430250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005928 n) (A033716 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A014201.P12770485265097430250

namespace A014201

/-- `∑[lcm(A005928(n), A033716(n))]-1` -/
def P12770485265097430250.Spec : Prop :=
  ∀ n, P12770485265097430250.a n = A014201 n

end A014201

/-! ## A014201.P11991258432439129487

`∑[A004016(n)*A059841(A004016(n)²)]`
-/

namespace A014201.P11991258432439129487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n * A059841 (A004016 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014201.P11991258432439129487

namespace A014201

/-- `∑[A004016(n)*A059841(A004016(n)²)]` -/
def P11991258432439129487.Spec : Prop :=
  ∀ n, P11991258432439129487.a n = A014201 n

end A014201

/-! ## A014201.P6310208443290098826

`∑[A244339(2*n)]-1`
-/

namespace A014201.P6310208443290098826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244339 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014201.P6310208443290098826

namespace A014201

/-- `∑[A244339(2*n)]-1` -/
def P6310208443290098826.Spec : Prop :=
  ∀ n, P6310208443290098826.a n = A014201 n

end A014201

/-! ## A014201.P9051348181372790645

`∑[A253623(2*n)]-1`
-/

namespace A014201.P9051348181372790645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253623 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014201.P9051348181372790645

namespace A014201

/-- `∑[A253623(2*n)]-1` -/
def P9051348181372790645.Spec : Prop :=
  ∀ n, P9051348181372790645.a n = A014201 n

end A014201

/-! ## A014201.P15480077864326803146

`∑[A180318(4*n)]-1`
-/

namespace A014201.P15480077864326803146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180318 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014201.P15480077864326803146

namespace A014201

/-- `∑[A180318(4*n)]-1` -/
def P15480077864326803146.Spec : Prop :=
  ∀ n, P15480077864326803146.a n = A014201 n

end A014201

/-! ## A014201.P15130900430796009774

`∑[A033716(2*A022144(n))]`
-/

namespace A014201.P15130900430796009774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (2 * A022144 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014201.P15130900430796009774

namespace A014201

/-- `∑[A033716(2*A022144(n))]` -/
def P15130900430796009774.Spec : Prop :=
  ∀ n, P15130900430796009774.a n = A014201 n

end A014201

/-! ## A014201.P1595697878397498237

`∑[A005928(3*n)]-1`
-/

namespace A014201.P1595697878397498237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005928 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014201.P1595697878397498237

namespace A014201

/-- `∑[A005928(3*n)]-1` -/
def P1595697878397498237.Spec : Prop :=
  ∀ n, P1595697878397498237.a n = A014201 n

end A014201

/-! ## A014201.P11411332013471507999

`A004442(A038589(n))`
-/

namespace A014201.P11411332013471507999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A038589 n).toNat

end

end A014201.P11411332013471507999

namespace A014201

/-- `A004442(A038589(n))` -/
def P11411332013471507999.Spec : Prop :=
  ∀ n, P11411332013471507999.a n = A014201 n

end A014201

/-! ## A014201.P7063333935724894770

`3*A002264(∑[A004016(n)])`
-/

namespace A014201.P7063333935724894770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A014201.P7063333935724894770

namespace A014201

/-- `3*A002264(∑[A004016(n)])` -/
def P7063333935724894770.Spec : Prop :=
  ∀ n, P7063333935724894770.a n = A014201 n

end A014201

/-! ## A014201.P5478237596516590049

`A187307(A038589(n)+2)+A038589(n)`
-/

namespace A014201.P5478237596516590049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187307 (A038589 n + 2).toNat + A038589 n

end

end A014201.P5478237596516590049

namespace A014201

/-- `A187307(A038589(n)+2)+A038589(n)` -/
def P5478237596516590049.Spec : Prop :=
  ∀ n, P5478237596516590049.a n = A014201 n

end A014201

/-! ## A014201.P13074595250338400681

`∑[A115978(4*n)]-1`
-/

namespace A014201.P13074595250338400681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115978 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014201.P13074595250338400681

namespace A014201

/-- `∑[A115978(4*n)]-1` -/
def P13074595250338400681.Spec : Prop :=
  ∀ n, P13074595250338400681.a n = A014201 n

end A014201

/-! ## A014201.P14410493161735972259

`A244339(6*n)+a(n-1)` with `a(0)=0`
-/

namespace A014201.P14410493161735972259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A244339 (6 * n) + a (n - 1)

end

end A014201.P14410493161735972259

namespace A014201

/-- `A244339(6*n)+a(n-1)` -/
def P14410493161735972259.Spec : Prop :=
  ∀ n, P14410493161735972259.a n = A014201 n

end A014201

/-!
# A014202: Number of solutions to x^2 + x*y + y^2 <= n, excluding (0,0), divided by 6.

The programs for A014202, the canonical program `A014202.P4565710394663599738` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014202 has offset 0).

The definition of A014202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014202.P4565710394663599738

`∑[∑{d}[n, (#+1)%3-1]]`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014202

/-- `∑[∑{d}[n, (#+1)%3-1]]` -/
def P4565710394663599738.Spec : Prop :=
  ∀ n, P4565710394663599738.a n = A014202 n

theorem P4565710394663599738.correct : P4565710394663599738.Spec := by
  intro n
  simp only [A014202]

end A014202

/-! ## A014202.P1818391091655868273

`A014201(n)/6`
-/

namespace A014202.P1818391091655868273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014201 n : ℚ) / 6

end

end A014202.P1818391091655868273

namespace A014202

/-- `A014201(n)/6` -/
def P1818391091655868273.Spec : Prop :=
  ∀ n, P1818391091655868273.a n = (A014202 n : ℚ)

end A014202

/-! ## A014202.P15844575137844587252

`floor(A038589(n)/6)`
-/

namespace A014202.P15844575137844587252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038589 n : ℚ) / 6⌋

end

end A014202.P15844575137844587252

namespace A014202

/-- `floor(A038589(n)/6)` -/
def P15844575137844587252.Spec : Prop :=
  ∀ n, P15844575137844587252.a n = A014202 n

end A014202

/-! ## A014202.P2980805691856572842

`∑[floor(A004016(n)/6)]`
-/

namespace A014202.P2980805691856572842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004016 n : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014202.P2980805691856572842

namespace A014202

/-- `∑[floor(A004016(n)/6)]` -/
def P2980805691856572842.Spec : Prop :=
  ∀ n, P2980805691856572842.a n = A014202 n

end A014202

/-! ## A014202.P8012405666788262516

`A002324(n)+a(n-1)` with `a(0)=0`
-/

namespace A014202.P8012405666788262516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002324 n + a (n - 1)

end

end A014202.P8012405666788262516

namespace A014202

/-- `A002324(n)+a(n-1)` -/
def P8012405666788262516.Spec : Prop :=
  ∀ n, P8012405666788262516.a n = A014202 n

end A014202

/-! ## A014202.P3779049010530368527

`∑[A002324(abs(1-n)+1)]`
-/

namespace A014202.P3779049010530368527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014202.P3779049010530368527

namespace A014202

/-- `∑[A002324(abs(1-n)+1)]` -/
def P3779049010530368527.Spec : Prop :=
  ∀ n, P3779049010530368527.a n = A014202 n

end A014202

/-! ## A014202.P9155151224531437154

`A218442(n)-A218443(n)`
-/

namespace A014202.P9155151224531437154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218442 n - A218443 n

end

end A014202.P9155151224531437154

namespace A014202

/-- `A218442(n)-A218443(n)` -/
def P9155151224531437154.Spec : Prop :=
  ∀ n, P9155151224531437154.a n = A014202 n

end A014202

/-! ## A014202.P7525580330001865280

`∑[A002324(n+1)]-A002324(n+1)`
-/

namespace A014202.P7525580330001865280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002324 (n + 1)

end

end A014202.P7525580330001865280

namespace A014202

/-- `∑[A002324(n+1)]-A002324(n+1)` -/
def P7525580330001865280.Spec : Prop :=
  ∀ n, P7525580330001865280.a n = A014202 n

end A014202

/-! ## A014202.P2795172131056340253

`A008615(A014201(n))`
-/

namespace A014202.P2795172131056340253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A014201 n).toNat

end

end A014202.P2795172131056340253

namespace A014202

/-- `A008615(A014201(n))` -/
def P2795172131056340253.Spec : Prop :=
  ∀ n, P2795172131056340253.a n = A014202 n

end A014202

/-! ## A014202.P9307366620877537133

`A008612(A038589(n))`
-/

namespace A014202.P9307366620877537133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A038589 n).toNat

end

end A014202.P9307366620877537133

namespace A014202

/-- `A008612(A038589(n))` -/
def P9307366620877537133.Spec : Prop :=
  ∀ n, P9307366620877537133.a n = A014202 n

end A014202

/-! ## A014202.P12757676909414563792

`A002264(∑[A004016(n)])/2`
-/

namespace A014202.P12757676909414563792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2

end

end A014202.P12757676909414563792

namespace A014202

/-- `A002264(∑[A004016(n)])/2` -/
def P12757676909414563792.Spec : Prop :=
  ∀ n, P12757676909414563792.a n = (A014202 n : ℚ)

end A014202

/-!
# A014203: a(n) = Sum_{i,j,k in Z and i^2 + j^2 + k^2 <= n} i^2 + j^2 + k^2.

The programs for A014203, there is no canonical definition to state claims against.
-/

/-! ## A014203.P16168023033095580948

`∑[n*A005875(n)]`
-/

namespace A014203.P16168023033095580948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014203.P16168023033095580948

/-! ## A014203.P13703389093198092119

`∑[abs(n*A213384(n))]`
-/

namespace A014203.P13703389093198092119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A213384 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014203.P13703389093198092119

/-! ## A014203.P9354474349272344396

`∑[n*sqrt(A138202(n))]`
-/

namespace A014203.P9354474349272344396
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (A138202 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014203.P9354474349272344396

/-! ## A014203.P3724545488404095572

`∑[n*A084101(n)*A246631(n)]`
-/

namespace A014203.P3724545488404095572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A084101 n * A246631 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014203.P3724545488404095572

/-! ## A014203.P1726816666475402131

`∑[n*gcd(A000038(n), A213384(n))]`
-/

namespace A014203.P1726816666475402131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.gcd (A000038 n) (A213384 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014203.P1726816666475402131

/-! ## A014203.P2976950345751712547

`∑[n*A014455(2*n)]`
-/

namespace A014203.P2976950345751712547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014455 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014203.P2976950345751712547

/-! ## A014203.P6478252508800836451

`∑[n*A004015(2*n)]`
-/

namespace A014203.P6478252508800836451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004015 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014203.P6478252508800836451

/-! ## A014203.P8167010973883466905

`∑[n*3/A132429(n)*A319078(n)]`
-/

namespace A014203.P8167010973883466905
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (3 / (A132429 n : ℚ) * (A319078 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014203.P8167010973883466905

/-! ## A014203.P15767347744681124339

`∑[n*A132429(A263426(n+1))*A319078(n)]`
-/

namespace A014203.P15767347744681124339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A132429 (A263426 (n + 1)).toNat * A319078 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014203.P15767347744681124339

/-! ## A014203.P14392083483521730935

`∑[n*A004013(4*n)]`
-/

namespace A014203.P14392083483521730935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004013 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014203.P14392083483521730935

/-! ## A014203.P14430694953607257823

`∑[n*A213384(4*n)]`
-/

namespace A014203.P14430694953607257823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A213384 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014203.P14430694953607257823

/-! ## A014203.P7895889391490264565

`∑[n*A169783(4*n)]`
-/

namespace A014203.P7895889391490264565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A169783 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014203.P7895889391490264565

/-! ## A014203.P2925163867514492987

`∑[n*A212885(4*n)]`
-/

namespace A014203.P2925163867514492987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A212885 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014203.P2925163867514492987

/-! ## A014203.P12906741028677358920

`∑[n*A246631(4*n)]`
-/

namespace A014203.P12906741028677358920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A246631 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014203.P12906741028677358920

/-! ## A014203.P5338974578232905656

`∑[n*abs(A089804(5*n))]`
-/

namespace A014203.P5338974578232905656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * |A089804 (5 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014203.P5338974578232905656

/-! ## A014203.P7978895548855764377

`∑[n*A014457(A008590(n))]`
-/

namespace A014203.P7978895548855764377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014457 (A008590 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014203.P7978895548855764377

/-! ## A014203.P17603460735241557278

`∑[n*A319078(4*n)]`
-/

namespace A014203.P17603460735241557278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A319078 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014203.P17603460735241557278

/-!
# A014204: Inverse of 195th cyclotomic polynomial.

The programs for A014204, there is no canonical definition to state claims against.
-/

/-! ## A014204.P805311957696288066

`A014399(n)*A033999(n)`
-/

namespace A014204.P805311957696288066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014399 n * A033999 n

end

end A014204.P805311957696288066

/-!
# A014205: a(n) = (1/12)*(n+5)*(n+1)*n^2.

The programs for A014205, the canonical program `A014205.P14263160719969579565` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014205 has offset 0).

The definition of A014205 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014205.P2920649669101869256

`(n+5)*(n+1)*n²/12`
-/

namespace A014205.P2920649669101869256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 5) * ((n + 1) * n ^ 2) : ℚ) / 12

end

end A014205.P2920649669101869256

namespace A014205

/-- `(n+5)*(n+1)*n²/12` -/
def P2920649669101869256.Spec : Prop :=
  ∀ n, P2920649669101869256.a n = (A014205 n : ℚ)

end A014205

/-! ## A014205.P14263160719969579565

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=7, a(3)=24, a(4)=60`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014205

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P14263160719969579565.Spec : Prop :=
  ∀ n, P14263160719969579565.a n = A014205 n

theorem P14263160719969579565.correct : P14263160719969579565.Spec := by
  intro n
  simp only [A014205]

end A014205

/-! ## A014205.P12211441533582513906

`∑[∑[n²]+C(n, 2)]`
-/

namespace A014205.P12211441533582513906
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014205.P12211441533582513906

namespace A014205

/-- `∑[∑[n²]+C(n, 2)]` -/
def P12211441533582513906.Spec : Prop :=
  ∀ n, (P12211441533582513906.a n : ℤ) = A014205 n

end A014205

/-! ## A014205.P14180894870764652808

`∑[∑[lcm(n, n+1)]-n]`
-/

namespace A014205.P14180894870764652808
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014205.P14180894870764652808

namespace A014205

/-- `∑[∑[lcm(n, n+1)]-n]` -/
def P14180894870764652808.Spec : Prop :=
  ∀ n, P14180894870764652808.a n = A014205 n

end A014205

/-! ## A014205.P13950423898497629701

`∑[∑[∑[a(n-1)+2]]]` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A014205.P13950423898497629701
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n f3 =>
  f3 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014205.P13950423898497629701

namespace A014205

/-- `∑[∑[∑[a(n-1)+2]]]` -/
def P13950423898497629701.Spec : Prop :=
  ∀ n, (P13950423898497629701.a n : ℤ) = A014205 n

end A014205

/-! ## A014205.P8574856545330903103

`(C(n+3, 3)-(n+1))*n/2`
-/

namespace A014205.P8574856545330903103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 3) 3 : ℤ) - (n + 1 : ℤ) : ℚ) * ((n : ℚ) / 2)

end

end A014205.P8574856545330903103

namespace A014205

/-- `(C(n+3, 3)-(n+1))*n/2` -/
def P8574856545330903103.Spec : Prop :=
  ∀ n, P8574856545330903103.a n = (A014205 n : ℚ)

end A014205

/-! ## A014205.P11660499092807016791

`(n+3)/(n-1)*a(n-1)+n` with `a(0)=0, a(1)=1`
-/

namespace A014205.P11660499092807016791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n + 3 : ℚ) / ((n : ℤ) - 1 : ℚ) * a (n - 1) + (n : ℚ)

end

end A014205.P11660499092807016791

namespace A014205

/-- `(n+3)/(n-1)*a(n-1)+n` -/
def P11660499092807016791.Spec : Prop :=
  ∀ n, P11660499092807016791.a n = (A014205 n : ℚ)

end A014205

/-! ## A014205.P8395825027052021713

`a(n-1)-∑[∑[a(n-1)-2]]-n` with `a(0)=0`
-/

namespace A014205.P8395825027052021713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A014205.P8395825027052021713

namespace A014205

/-- `a(n-1)-∑[∑[a(n-1)-2]]-n` -/
def P8395825027052021713.Spec : Prop :=
  ∀ n, P8395825027052021713.a n = A014205 n

end A014205

/-! ## A014205.P16110488690615943256

`∑[A084990(n)]`
-/

namespace A014205.P16110488690615943256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014205.P16110488690615943256

namespace A014205

/-- `∑[A084990(n)]` -/
def P16110488690615943256.Spec : Prop :=
  ∀ n, P16110488690615943256.a n = A014205 n

end A014205

/-! ## A014205.P14881643124881272588

`∑[A064043(n)/3]`
-/

namespace A014205.P14881643124881272588
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064043 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014205.P14881643124881272588

namespace A014205

/-- `∑[A064043(n)/3]` -/
def P14881643124881272588.Spec : Prop :=
  ∀ n, P14881643124881272588.a n = (A014205 n : ℚ)

end A014205

/-! ## A014205.P8608267854604821878

`∑[n]²-A008911(n)`
-/

namespace A014205.P8608267854604821878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A008911 n

end

end A014205.P8608267854604821878

namespace A014205

/-- `∑[n]²-A008911(n)` -/
def P8608267854604821878.Spec : Prop :=
  ∀ n, P8608267854604821878.a n = A014205 n

end A014205

/-! ## A014205.P11944722502012198722

`∑[A064999(n)-(n+1)]`
-/

namespace A014205.P11944722502012198722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064999 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014205.P11944722502012198722

namespace A014205

/-- `∑[A064999(n)-(n+1)]` -/
def P11944722502012198722.Spec : Prop :=
  ∀ n, P11944722502012198722.a n = A014205 n

end A014205

/-! ## A014205.P2169613544442056674

`A033488(n)/2-∑[n]`
-/

namespace A014205.P2169613544442056674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033488 n : ℚ) / 2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A014205.P2169613544442056674

namespace A014205

/-- `A033488(n)/2-∑[n]` -/
def P2169613544442056674.Spec : Prop :=
  ∀ n, P2169613544442056674.a n = (A014205 n : ℚ)

end A014205

/-! ## A014205.P17415501737040195214

`A002415(n)+n*∑[n]`
-/

namespace A014205.P17415501737040195214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 n + ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A014205.P17415501737040195214

namespace A014205

/-- `A002415(n)+n*∑[n]` -/
def P17415501737040195214.Spec : Prop :=
  ∀ n, P17415501737040195214.a n = A014205 n

end A014205

/-! ## A014205.P9259169006910963304

`∑[A268684(n)]-∑[n]²`
-/

namespace A014205.P9259169006910963304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268684 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A014205.P9259169006910963304

namespace A014205

/-- `∑[A268684(n)]-∑[n]²` -/
def P9259169006910963304.Spec : Prop :=
  ∀ n, P9259169006910963304.a n = A014205 n

end A014205

/-! ## A014205.P4710703380906876702

`∑[A101986(n)]-∑[∑[n]]`
-/

namespace A014205.P4710703380906876702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101986 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A014205.P4710703380906876702

namespace A014205

/-- `∑[A101986(n)]-∑[∑[n]]` -/
def P4710703380906876702.Spec : Prop :=
  ∀ n, P4710703380906876702.a n = A014205 n

end A014205

/-! ## A014205.P2626274124376328060

`∑[A167875(n)]-(n+1)²`
-/

namespace A014205.P2626274124376328060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A014205.P2626274124376328060

namespace A014205

/-- `∑[A167875(n)]-(n+1)²` -/
def P2626274124376328060.Spec : Prop :=
  ∀ n, P2626274124376328060.a n = A014205 n

end A014205

/-! ## A014205.P5974091632346850823

`A014629(n+1)-n*(n+2)`
-/

namespace A014205.P5974091632346850823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014629 (n + 1) - (n * (n + 2) : ℤ)

end

end A014205.P5974091632346850823

namespace A014205

/-- `A014629(n+1)-n*(n+2)` -/
def P5974091632346850823.Spec : Prop :=
  ∀ n, P5974091632346850823.a n = A014205 n

end A014205

/-! ## A014205.P13317592681592507632

`A326247(n)+A000384(n)`
-/

namespace A014205.P13317592681592507632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326247 n + A000384 n

end

end A014205.P13317592681592507632

namespace A014205

/-- `A326247(n)+A000384(n)` -/
def P13317592681592507632.Spec : Prop :=
  ∀ n, P13317592681592507632.a n = A014205 n

end A014205

/-! ## A014205.P8140365891490623979

`A299120(n)+A108766(n)`
-/

namespace A014205.P8140365891490623979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299120 n + A108766 n

end

end A014205.P8140365891490623979

namespace A014205

/-- `A299120(n)+A108766(n)` -/
def P8140365891490623979.Spec : Prop :=
  ∀ n, P8140365891490623979.a n = A014205 n

end A014205

/-!
# A014206: a(n) = n^2 + n + 2.

The programs for A014206, the canonical program `A014206.P16931004624932520910` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014206 has offset 0).

The definition of A014206 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+n+2` (program `A014206.P16931004624932520910`, by `A014206.P16931004624932520910.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014206.P16931004624932520910

`n²+n+2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014206

/-- `n²+n+2` -/
def P16931004624932520910.Spec : Prop :=
  ∀ n, (P16931004624932520910.a n : ℤ) = A014206 n

theorem P16931004624932520910.correct : P16931004624932520910.Spec := by
  intro n
  simp only [A014206]

end A014206

/-! ## A014206.P1445989977940622053

`2*A000124(n)`
-/

namespace A014206.P1445989977940622053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000124 n

end

end A014206.P1445989977940622053

namespace A014206

/-- `2*A000124(n)` -/
def P1445989977940622053.Spec : Prop :=
  ∀ n, P1445989977940622053.a n = A014206 n

end A014206

/-! ## A014206.P18163492862016338061

`ceil(1/Δ[atan(n)])`
-/

namespace A014206.P18163492862016338061
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (f1 (n + 1) - f1 n)⌉

end

end A014206.P18163492862016338061

namespace A014206

/-- `ceil(1/Δ[atan(n)])` -/
def P18163492862016338061.Spec : Prop :=
  ∀ n, P18163492862016338061.a n = A014206 n

end A014206

/-! ## A014206.P4697572805434298052

`ceil(cot(sin(Δ[atan(n)])))`
-/

namespace A014206.P4697572805434298052
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (Real.sin (f1 (n + 1) - f1 n))⌉

end

end A014206.P4697572805434298052

namespace A014206

/-- `ceil(cot(sin(Δ[atan(n)])))` -/
def P4697572805434298052.Spec : Prop :=
  ∀ n, P4697572805434298052.a n = A014206 n

end A014206

/-! ## A014206.P18272895941230435794

`ceil(tan(acot(Δ[atan(n)])))`
-/

namespace A014206.P18272895941230435794
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (SequenceMachineLib.acot (f1 (n + 1) - f1 n))⌉

end

end A014206.P18272895941230435794

namespace A014206

/-- `ceil(tan(acot(Δ[atan(n)])))` -/
def P18272895941230435794.Spec : Prop :=
  ∀ n, P18272895941230435794.a n = A014206 n

end A014206

/-! ## A014206.P11187990172287406783

`ceil(cot(atan(Δ[atan(n)])))`
-/

namespace A014206.P11187990172287406783
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (Real.arctan (f1 (n + 1) - f1 n))⌉

end

end A014206.P11187990172287406783

namespace A014206

/-- `ceil(cot(atan(Δ[atan(n)])))` -/
def P11187990172287406783.Spec : Prop :=
  ∀ n, P11187990172287406783.a n = A014206 n

end A014206

/-! ## A014206.P4239738695976473554

`floor(cot(Δ[acot(acot(n))]))`
-/

namespace A014206.P4239738695976473554
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (f1 (n + 1) - f1 n)⌋

end

end A014206.P4239738695976473554

namespace A014206

/-- `floor(cot(Δ[acot(acot(n))]))` -/
def P4239738695976473554.Spec : Prop :=
  ∀ n, P4239738695976473554.a n = A014206 n

end A014206

/-! ## A014206.P17896298168682736421

`-2*xor(-1, ∑[n])`
-/

namespace A014206.P17896298168682736421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * Int.xor (-1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A014206.P17896298168682736421

namespace A014206

/-- `-2*xor(-1, ∑[n])` -/
def P17896298168682736421.Spec : Prop :=
  ∀ n, P17896298168682736421.a n = A014206 n

end A014206

/-! ## A014206.P14921407040492353612

`ceil(2*(∑[n]-cos(3)))`
-/

namespace A014206.P14921407040492353612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.cos (3 : ℝ))⌉

end

end A014206.P14921407040492353612

namespace A014206

/-- `ceil(2*(∑[n]-cos(3)))` -/
def P14921407040492353612.Spec : Prop :=
  ∀ n, P14921407040492353612.a n = A014206 n

end A014206

/-! ## A014206.P8091533794161217990

`round(2*(∑[n]-cos(3)))`
-/

namespace A014206.P8091533794161217990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.cos (3 : ℝ)))

end

end A014206.P8091533794161217990

namespace A014206

/-- `round(2*(∑[n]-cos(3)))` -/
def P8091533794161217990.Spec : Prop :=
  ∀ n, P8091533794161217990.a n = A014206 n

end A014206

/-! ## A014206.P18258444791530703806

`floor(2/acot(∑[n]+1))`
-/

namespace A014206.P18258444791530703806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℝ)⌋

end

end A014206.P18258444791530703806

namespace A014206

/-- `floor(2/acot(∑[n]+1))` -/
def P18258444791530703806.Spec : Prop :=
  ∀ n, P18258444791530703806.a n = A014206 n

end A014206

/-! ## A014206.P5556234913467641402

`∑[2*round(1/acot(n))]`
-/

namespace A014206.P5556234913467641402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014206.P5556234913467641402

namespace A014206

/-- `∑[2*round(1/acot(n))]` -/
def P5556234913467641402.Spec : Prop :=
  ∀ n, P5556234913467641402.a n = A014206 n

end A014206

/-! ## A014206.P4878600228689113043

`(A000217(n)+1)*2`
-/

namespace A014206.P4878600228689113043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 n + 1) * 2

end

end A014206.P4878600228689113043

namespace A014206

/-- `(A000217(n)+1)*2` -/
def P4878600228689113043.Spec : Prop :=
  ∀ n, P4878600228689113043.a n = A014206 n

end A014206

/-! ## A014206.P1919394789713929438

`2*A152947(n+2)`
-/

namespace A014206.P1919394789713929438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152947 (n + 2)

end

end A014206.P1919394789713929438

namespace A014206

/-- `2*A152947(n+2)` -/
def P1919394789713929438.Spec : Prop :=
  ∀ n, P1919394789713929438.a n = A014206 n

end A014206

/-!
# A014207: Inverse of 198th cyclotomic polynomial.

The programs for A014207, there is no canonical definition to state claims against.
-/

/-! ## A014207.P3370908203877050612

`A014141(A004396(n))`
-/

namespace A014207.P3370908203877050612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014141 (A004396 n).toNat

end

end A014207.P3370908203877050612

/-!
# A014208: Next prime after n-th Fibonacci number.

The programs for A014208, there is no canonical definition to state claims against.
-/

/-! ## A014208.P8121156037884658954

`A159978(C(2, n+2)+n)+A000045(A028310(n))`
-/

namespace A014208.P8121156037884658954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159978 (Nat.choose 2 (n + 2) + n) + A000045 (A028310 n).toNat

end

end A014208.P8121156037884658954

/-! ## A014208.P7725864567879677634

`A159978(A028310(n))+A000045(A028310(n))`
-/

namespace A014208.P7725864567879677634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159978 (A028310 n).toNat + A000045 (A028310 n).toNat

end

end A014208.P7725864567879677634

/-! ## A014208.P3801803919066254583

`A159978(A065033(2*n))+A000045(A065033(2*n))`
-/

namespace A014208.P3801803919066254583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159978 (A065033 (2 * n)).toNat + A000045 (A065033 (2 * n)).toNat

end

end A014208.P3801803919066254583

/-! ## A014208.P609638905349464296

`A159978(A000007(n)+n)+A000045(A000007(n)+n)`
-/

namespace A014208.P609638905349464296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159978 (A000007 n + (n : ℤ)).toNat + A000045 (A000007 n + (n : ℤ)).toNat

end

end A014208.P609638905349464296

/-! ## A014208.P8283006570034668784

`A151800(∑[a(n-1)-(1-a(n-2))]-n)` with `a(0)=0, a(1)=2`
-/

namespace A014208.P8283006570034668784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A014208.P8283006570034668784

/-!
# A014209: a(n) = n^2 + 3*n - 1.

The programs for A014209, the canonical program `A014209.P8391054817103649375` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014209 has offset 0).

The definition of A014209 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+3*n-1` (program `A014209.P8391054817103649375`, by `A014209.P8391054817103649375.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014209.P8391054817103649375

`n²+3*n-1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014209

/-- `n²+3*n-1` -/
def P8391054817103649375.Spec : Prop :=
  ∀ n, P8391054817103649375.a n = A014209 n

theorem P8391054817103649375.correct : P8391054817103649375.Spec := by
  intro n
  simp only [A014209]

end A014209

/-! ## A014209.P8343251746614376683

`record[n*(n-3)-1]`
-/

namespace A014209.P8343251746614376683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014209.P8343251746614376683

namespace A014209

/-- `record[n*(n-3)-1]` -/
def P8343251746614376683.Spec : Prop :=
  ∀ n, P8343251746614376683.a n = A014209 n

end A014209

/-! ## A014209.P9910674771661887720

`-or(1, -n*(n+3))`
-/

namespace A014209.P9910674771661887720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-(n * (n + 3) : ℤ))

end

end A014209.P9910674771661887720

namespace A014209

/-- `-or(1, -n*(n+3))` -/
def P9910674771661887720.Spec : Prop :=
  ∀ n, P9910674771661887720.a n = A014209 n

end A014209

/-! ## A014209.P17641773191062257254

`-xor(1, -n*(n+3))`
-/

namespace A014209.P17641773191062257254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-(n * (n + 3) : ℤ))

end

end A014209.P17641773191062257254

namespace A014209

/-- `-xor(1, -n*(n+3))` -/
def P17641773191062257254.Spec : Prop :=
  ∀ n, P17641773191062257254.a n = A014209 n

end A014209

/-! ## A014209.P1138485995398492233

`ceil(n/acot(n+3)-ϕ)`
-/

namespace A014209.P1138485995398492233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / SequenceMachineLib.acot (n + 3 : ℝ) - Real.goldenRatio⌉

end

end A014209.P1138485995398492233

namespace A014209

/-- `ceil(n/acot(n+3)-ϕ)` -/
def P1138485995398492233.Spec : Prop :=
  ∀ n, P1138485995398492233.a n = A014209 n

end A014209

/-! ## A014209.P11574635710699178910

`∑[a(n-1)+2]` with `a(0)=-1, a(1)=4`
-/

namespace A014209.P11574635710699178910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 4] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014209.P11574635710699178910

namespace A014209

/-- `∑[a(n-1)+2]` -/
def P11574635710699178910.Spec : Prop :=
  ∀ n, P11574635710699178910.a n = A014209 n

end A014209

/-! ## A014209.P7071114610179832594

`or(1, (n+1)²-2+n)`
-/

namespace A014209.P7071114610179832594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((n + 1) ^ 2 : ℤ) - 2 + (n : ℤ))

end

end A014209.P7071114610179832594

namespace A014209

/-- `or(1, (n+1)²-2+n)` -/
def P7071114610179832594.Spec : Prop :=
  ∀ n, P7071114610179832594.a n = A014209 n

end A014209

/-! ## A014209.P4950108561094428864

`xor(1, (n+1)²-3+n)`
-/

namespace A014209.P4950108561094428864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (((n + 1) ^ 2 : ℤ) - 3 + (n : ℤ))

end

end A014209.P4950108561094428864

namespace A014209

/-- `xor(1, (n+1)²-3+n)` -/
def P4950108561094428864.Spec : Prop :=
  ∀ n, P4950108561094428864.a n = A014209 n

end A014209

/-! ## A014209.P7872738382060682199

`-(5-record[(n-2)²]+n)`
-/

namespace A014209.P7872738382060682199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(5 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ))

end

end A014209.P7872738382060682199

namespace A014209

/-- `-(5-record[(n-2)²]+n)` -/
def P7872738382060682199.Spec : Prop :=
  ∀ n, P7872738382060682199.a n = A014209 n

end A014209

/-! ## A014209.P4915483786723537642

`floor((n+1)²-tan(1)+n)`
-/

namespace A014209.P4915483786723537642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℝ) - Real.tan (1 : ℝ) + (n : ℝ)⌋

end

end A014209.P4915483786723537642

namespace A014209

/-- `floor((n+1)²-tan(1)+n)` -/
def P4915483786723537642.Spec : Prop :=
  ∀ n, P4915483786723537642.a n = A014209 n

end A014209

/-! ## A014209.P18313588812112585278

`ceil(tan(2)+(n+1)²+n)`
-/

namespace A014209.P18313588812112585278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (2 : ℝ) + ((n + 1) ^ 2 : ℝ) + (n : ℝ)⌉

end

end A014209.P18313588812112585278

namespace A014209

/-- `ceil(tan(2)+(n+1)²+n)` -/
def P18313588812112585278.Spec : Prop :=
  ∀ n, P18313588812112585278.a n = A014209 n

end A014209

/-! ## A014209.P5096744992996214445

`round(tan(2)+(n+1)²+n)`
-/

namespace A014209.P5096744992996214445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (2 : ℝ) + ((n + 1) ^ 2 : ℝ) + (n : ℝ))

end

end A014209.P5096744992996214445

namespace A014209

/-- `round(tan(2)+(n+1)²+n)` -/
def P5096744992996214445.Spec : Prop :=
  ∀ n, P5096744992996214445.a n = A014209 n

end A014209

/-! ## A014209.P17052859041773488576

`floor((n+1)²-asin(1)+n)`
-/

namespace A014209.P17052859041773488576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℝ) - Real.arcsin (1 : ℝ) + (n : ℝ)⌋

end

end A014209.P17052859041773488576

namespace A014209

/-- `floor((n+1)²-asin(1)+n)` -/
def P17052859041773488576.Spec : Prop :=
  ∀ n, P17052859041773488576.a n = A014209 n

end A014209

/-! ## A014209.P1373964128497137645

`round((n+1)²-asin(1)+n)`
-/

namespace A014209.P1373964128497137645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℝ) - Real.arcsin (1 : ℝ) + (n : ℝ))

end

end A014209.P1373964128497137645

namespace A014209

/-- `round((n+1)²-asin(1)+n)` -/
def P1373964128497137645.Spec : Prop :=
  ∀ n, P1373964128497137645.a n = A014209 n

end A014209

/-! ## A014209.P885916592607365462

`floor((n+1)²-cosh(1)+n)`
-/

namespace A014209.P885916592607365462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℝ) - Real.cosh (1 : ℝ) + (n : ℝ)⌋

end

end A014209.P885916592607365462

namespace A014209

/-- `floor((n+1)²-cosh(1)+n)` -/
def P885916592607365462.Spec : Prop :=
  ∀ n, P885916592607365462.a n = A014209 n

end A014209

/-! ## A014209.P14956717463505926269

`floor((n+1)²-atan(2)+n)`
-/

namespace A014209.P14956717463505926269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℝ) - Real.arctan (2 : ℝ) + (n : ℝ)⌋

end

end A014209.P14956717463505926269

namespace A014209

/-- `floor((n+1)²-atan(2)+n)` -/
def P14956717463505926269.Spec : Prop :=
  ∀ n, P14956717463505926269.a n = A014209 n

end A014209

/-! ## A014209.P1964835703978796165

`floor((n+1)²-sinh(1)+n)`
-/

namespace A014209.P1964835703978796165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℝ) - Real.sinh (1 : ℝ) + (n : ℝ)⌋

end

end A014209.P1964835703978796165

namespace A014209

/-- `floor((n+1)²-sinh(1)+n)` -/
def P1964835703978796165.Spec : Prop :=
  ∀ n, P1964835703978796165.a n = A014209 n

end A014209

/-! ## A014209.P11806257877672303286

`round((n+1)²-cosh(1)+n)`
-/

namespace A014209.P11806257877672303286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℝ) - Real.cosh (1 : ℝ) + (n : ℝ))

end

end A014209.P11806257877672303286

namespace A014209

/-- `round((n+1)²-cosh(1)+n)` -/
def P11806257877672303286.Spec : Prop :=
  ∀ n, P11806257877672303286.a n = A014209 n

end A014209

/-!
# A014210: Next prime after 2^n.

The programs for A014210, the canonical program `A014210.P8900791388522812635` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014210 has offset 0).

The definition of A014210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014210.P5594246281989326947

`A203074(n+1)`
-/

namespace A014210.P5594246281989326947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203074 (n + 1)

end

end A014210.P5594246281989326947

namespace A014210

/-- `A203074(n+1)` -/
def P5594246281989326947.Spec : Prop :=
  ∀ n, P5594246281989326947.a n = A014210 n

end A014210

/-! ## A014210.P15951408250362301202

`A104080(n)+char[1]`
-/

namespace A014210.P15951408250362301202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104080 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A014210.P15951408250362301202

namespace A014210

/-- `A104080(n)+char[1]` -/
def P15951408250362301202.Spec : Prop :=
  ∀ n, P15951408250362301202.a n = A014210 n

end A014210

/-! ## A014210.P8900791388522812635

`A013597(n)+2^n`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A014210

/-- `A013597(n)+2^n` -/
def P8900791388522812635.Spec : Prop :=
  ∀ n, P8900791388522812635.a n = A014210 n

theorem P8900791388522812635.correct : P8900791388522812635.Spec := by
  intro n
  simp only [A014210]

end A014210

/-! ## A014210.P13929287817170428251

`record[A203074(abs(1-n))]`
-/

namespace A014210.P13929287817170428251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203074 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014210.P13929287817170428251

namespace A014210

/-- `record[A203074(abs(1-n))]` -/
def P13929287817170428251.Spec : Prop :=
  ∀ n, P13929287817170428251.a n = A014210 n

end A014210

/-! ## A014210.P4068873056606209649

`A037035(n)+A000051(n)`
-/

namespace A014210.P4068873056606209649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037035 n + A000051 n

end

end A014210.P4068873056606209649

namespace A014210

/-- `A037035(n)+A000051(n)` -/
def P4068873056606209649.Spec : Prop :=
  ∀ n, P4068873056606209649.a n = A014210 n

end A014210

/-! ## A014210.P15977783635321067763

`or(A000051(n), A104080(n))`
-/

namespace A014210.P15977783635321067763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000051 n) (A104080 n)

end

end A014210.P15977783635321067763

namespace A014210

/-- `or(A000051(n), A104080(n))` -/
def P15977783635321067763.Spec : Prop :=
  ∀ n, P15977783635321067763.a n = A014210 n

end A014210

/-! ## A014210.P16357225940722112807

`xor(A063524(n), A104080(n))`
-/

namespace A014210.P16357225940722112807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A104080 n)

end

end A014210.P16357225940722112807

namespace A014210

/-- `xor(A063524(n), A104080(n))` -/
def P16357225940722112807.Spec : Prop :=
  ∀ n, P16357225940722112807.a n = A014210 n

end A014210

/-! ## A014210.P11067343823527272904

`xor(A013597(n), A171559(n))`
-/

namespace A014210.P11067343823527272904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A013597 n) (A171559 n)

end

end A014210.P11067343823527272904

namespace A014210

/-- `xor(A013597(n), A171559(n))` -/
def P11067343823527272904.Spec : Prop :=
  ∀ n, P11067343823527272904.a n = A014210 n

end A014210

/-! ## A014210.P12338753649596326915

`A000225(n)+A013597(n)+1`
-/

namespace A014210.P12338753649596326915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A013597 n + 1)

end

end A014210.P12338753649596326915

namespace A014210

/-- `A000225(n)+A013597(n)+1` -/
def P12338753649596326915.Spec : Prop :=
  ∀ n, P12338753649596326915.a n = A014210 n

end A014210

/-! ## A014210.P16005082893369812854

`A000051(n)+A013597(n)-1`
-/

namespace A014210.P16005082893369812854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A013597 n - 1)

end

end A014210.P16005082893369812854

namespace A014210

/-- `A000051(n)+A013597(n)-1` -/
def P16005082893369812854.Spec : Prop :=
  ∀ n, P16005082893369812854.a n = A014210 n

end A014210

/-! ## A014210.P11963006698104162561

`A014211(n)-A037128(n)`
-/

namespace A014210.P11963006698104162561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014211 n - A037128 n

end

end A014210.P11963006698104162561

namespace A014210

/-- `A014211(n)-A037128(n)` -/
def P11963006698104162561.Spec : Prop :=
  ∀ n, P11963006698104162561.a n = A014210 n

end A014210

/-! ## A014210.P14660868120590346521

`A014211(n)-2*A037129(n)`
-/

namespace A014210.P14660868120590346521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014211 n - 2 * A037129 n

end

end A014210.P14660868120590346521

namespace A014210

/-- `A014211(n)-2*A037129(n)` -/
def P14660868120590346521.Spec : Prop :=
  ∀ n, P14660868120590346521.a n = A014210 n

end A014210

/-! ## A014210.P7337688880457704737

`A037127(n)-A037128(n)+A000225(n)+1`
-/

namespace A014210.P7337688880457704737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037127 n - A037128 n + (A000225 n + 1)

end

end A014210.P7337688880457704737

namespace A014210

/-- `A037127(n)-A037128(n)+A000225(n)+1` -/
def P7337688880457704737.Spec : Prop :=
  ∀ n, P7337688880457704737.a n = A014210 n

end A014210

/-! ## A014210.P3644845945967909469

`A104082(n)-A037130(n)`
-/

namespace A014210.P3644845945967909469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104082 n - A037130 n

end

end A014210.P3644845945967909469

namespace A014210

/-- `A104082(n)-A037130(n)` -/
def P3644845945967909469.Spec : Prop :=
  ∀ n, P3644845945967909469.a n = A014210 n

end A014210

/-!
# A014211: Next prime after 3^n.

The programs for A014211, the canonical program `A014211.P17006346503809986776` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014211 has offset 0).

The definition of A014211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014211.P15326406283530961017

`A037127(n)+2^n`
-/

namespace A014211.P15326406283530961017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037127 n + (2 ^ n : ℤ)

end

end A014211.P15326406283530961017

namespace A014211

/-- `A037127(n)+2^n` -/
def P15326406283530961017.Spec : Prop :=
  ∀ n, P15326406283530961017.a n = A014211 n

end A014211

/-! ## A014211.P2462962912148072432

`A013598(n)+3^n`
-/

namespace A014211.P2462962912148072432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013598 n + (3 ^ n : ℤ)

end

end A014211.P2462962912148072432

namespace A014211

/-- `A013598(n)+3^n` -/
def P2462962912148072432.Spec : Prop :=
  ∀ n, P2462962912148072432.a n = A014211 n

end A014211

/-! ## A014211.P18295959561054696343

`A037128(n)+A014210(n)`
-/

namespace A014211.P18295959561054696343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037128 n + A014210 n

end

end A014211.P18295959561054696343

namespace A014211

/-- `A037128(n)+A014210(n)` -/
def P18295959561054696343.Spec : Prop :=
  ∀ n, P18295959561054696343.a n = A014211 n

end A014211

/-! ## A014211.P13841880930680150874

`A000225(n)+A037127(n)+1`
-/

namespace A014211.P13841880930680150874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A037127 n + 1)

end

end A014211.P13841880930680150874

namespace A014211

/-- `A000225(n)+A037127(n)+1` -/
def P13841880930680150874.Spec : Prop :=
  ∀ n, P13841880930680150874.a n = A014211 n

end A014211

/-! ## A014211.P16113755341803377353

`A203074(n+1)+A037128(n)`
-/

namespace A014211.P16113755341803377353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203074 (n + 1) + A037128 n

end

end A014211.P16113755341803377353

namespace A014211

/-- `A203074(n+1)+A037128(n)` -/
def P16113755341803377353.Spec : Prop :=
  ∀ n, P16113755341803377353.a n = A014211 n

end A014211

/-! ## A014211.P3463141378676112040

`A014210(n)+2*A037129(n)`
-/

namespace A014211.P3463141378676112040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 n + 2 * A037129 n

end

end A014211.P3463141378676112040

namespace A014211

/-- `A014210(n)+2*A037129(n)` -/
def P3463141378676112040.Spec : Prop :=
  ∀ n, P3463141378676112040.a n = A014211 n

end A014211

/-! ## A014211.P15023766372521084659

`A056449(2*n)+A013598(n)`
-/

namespace A014211.P15023766372521084659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056449 (2 * n) + A013598 n

end

end A014211.P15023766372521084659

namespace A014211

/-- `A056449(2*n)+A013598(n)` -/
def P15023766372521084659.Spec : Prop :=
  ∀ n, P15023766372521084659.a n = A014211 n

end A014211

/-! ## A014211.P11672467867232817818

`A074323(2*n+1)+A037127(n)`
-/

namespace A014211.P11672467867232817818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (2 * n + 1) + A037127 n

end

end A014211.P11672467867232817818

namespace A014211

/-- `A074323(2*n+1)+A037127(n)` -/
def P11672467867232817818.Spec : Prop :=
  ∀ n, P11672467867232817818.a n = A014211 n

end A014211

/-! ## A014211.P17006346503809986776

`A104081(n)+A000038(A008611(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A014211

/-- `A104081(n)+A000038(A008611(n))` -/
def P17006346503809986776.Spec : Prop :=
  ∀ n, P17006346503809986776.a n = A014211 n

theorem P17006346503809986776.correct : P17006346503809986776.Spec := by
  intro n
  simp only [A014211]

end A014211

/-! ## A014211.P5586014981915787188

`A104081(n)+A000038(A062117(n+1))`
-/

namespace A014211.P5586014981915787188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104081 n + A000038 (A062117 (n + 1)).toNat

end

end A014211.P5586014981915787188

namespace A014211

/-- `A104081(n)+A000038(A062117(n+1))` -/
def P5586014981915787188.Spec : Prop :=
  ∀ n, P5586014981915787188.a n = A014211 n

end A014211

/-! ## A014211.P4633701023442614378

`A104081(n)+A104080(n)%A014210(n)`
-/

namespace A014211.P4633701023442614378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104081 n + Int.tmod (A104080 n) (A014210 n)

end

end A014211.P4633701023442614378

namespace A014211

/-- `A104081(n)+A104080(n)%A014210(n)` -/
def P4633701023442614378.Spec : Prop :=
  ∀ n, P4633701023442614378.a n = A014211 n

end A014211

/-! ## A014211.P11419828825586155099

`A104081(n)+A000038((1-n)²)`
-/

namespace A014211.P11419828825586155099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104081 n + A000038 ((1 - (n : ℤ)) ^ 2).toNat

end

end A014211.P11419828825586155099

namespace A014211

/-- `A104081(n)+A000038((1-n)²)` -/
def P11419828825586155099.Spec : Prop :=
  ∀ n, P11419828825586155099.a n = A014211 n

end A014211

/-!
# A014212: Inverse of 203rd cyclotomic polynomial.

The programs for A014212, there is no canonical definition to state claims against.
-/

/-! ## A014212.P7452617126021259223

`A014415(n)*A033999(n)`
-/

namespace A014212.P7452617126021259223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014415 n * A033999 n

end

end A014212.P7452617126021259223

/-!
# A014213: Floor((e/2)^n).

The programs for A014213, the canonical program `A014213.P1123960013551996487` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014213 has offset 0).

The definition of A014213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014213.P1123960013551996487

`floor(exp(n)/2^n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014213

/-- `floor(exp(n)/2^n)` -/
def P1123960013551996487.Spec : Prop :=
  ∀ n, P1123960013551996487.a n = A014213 n

theorem P1123960013551996487.correct : P1123960013551996487.Spec := by
  intro n
  simp only [A014213]

end A014213

/-! ## A014213.P16793051642904404719

`ceil(abs((2-exp(n)/A011782(n))/2))`
-/

namespace A014213.P16793051642904404719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(2 - Real.exp (n : ℝ) / (A011782 n : ℝ)) / 2|⌉

end

end A014213.P16793051642904404719

namespace A014213

/-- `ceil(abs((2-exp(n)/A011782(n))/2))` -/
def P16793051642904404719.Spec : Prop :=
  ∀ n, P16793051642904404719.a n = A014213 n

end A014213

/-!
# A014214: a(n) = floor((Pi/2)^n).

The programs for A014214, the canonical program `A014214.P4962312295054798132` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014214 has offset 0).

The definition of A014214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014214.P4962312295054798132

`floor(atan(A017755(n))^n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A014214

/-- `floor(atan(A017755(n))^n)` -/
def P4962312295054798132.Spec : Prop :=
  ∀ n, P4962312295054798132.a n = A014214 n

theorem P4962312295054798132.correct : P4962312295054798132.Spec := by
  intro n
  simp only [A014214]

end A014214

/-! ## A014214.P6494245090581238972

`floor(atan(A159641(n+1))^n)`
-/

namespace A014214.P6494245090581238972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A159641 (n + 1) : ℝ) ^ n⌋

end

end A014214.P6494245090581238972

namespace A014214

/-- `floor(atan(A159641(n+1))^n)` -/
def P6494245090581238972.Spec : Prop :=
  ∀ n, P6494245090581238972.a n = A014214 n

end A014214

/-! ## A014214.P4158020894126397567

`floor(atan(A123654(n+1))^n)`
-/

namespace A014214.P4158020894126397567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A123654 (n + 1) : ℝ) ^ n⌋

end

end A014214.P4158020894126397567

namespace A014214

/-- `floor(atan(A123654(n+1))^n)` -/
def P4158020894126397567.Spec : Prop :=
  ∀ n, P4158020894126397567.a n = A014214 n

end A014214

/-! ## A014214.P12046291685770335586

`floor(atan(A160206(n+1))^n)`
-/

namespace A014214.P12046291685770335586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A160206 (n + 1) : ℝ) ^ n⌋

end

end A014214.P12046291685770335586

namespace A014214

/-- `floor(atan(A160206(n+1))^n)` -/
def P12046291685770335586.Spec : Prop :=
  ∀ n, P12046291685770335586.a n = A014214 n

end A014214

/-! ## A014214.P15016573675229586235

`floor(sqrt(acos(0)^(2*n)))`
-/

namespace A014214.P15016573675229586235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.arccos (0 : ℝ) ^ (2 * n))⌋

end

end A014214.P15016573675229586235

namespace A014214

/-- `floor(sqrt(acos(0)^(2*n)))` -/
def P15016573675229586235.Spec : Prop :=
  ∀ n, P15016573675229586235.a n = A014214 n

end A014214

/-! ## A014214.P6043687498975961719

`floor(sqrt(asin(1)^(2*n)))`
-/

namespace A014214.P6043687498975961719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.arcsin (1 : ℝ) ^ (2 * n))⌋

end

end A014214.P6043687498975961719

namespace A014214

/-- `floor(sqrt(asin(1)^(2*n)))` -/
def P6043687498975961719.Spec : Prop :=
  ∀ n, P6043687498975961719.a n = A014214 n

end A014214

/-! ## A014214.P14515180888218942483

`floor(atan(exp(n+2))^n)`
-/

namespace A014214.P14515180888218942483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (Real.exp (n + 2 : ℝ)) ^ n⌋

end

end A014214.P14515180888218942483

namespace A014214

/-- `floor(atan(exp(n+2))^n)` -/
def P14515180888218942483.Spec : Prop :=
  ∀ n, P14515180888218942483.a n = A014214 n

end A014214

/-! ## A014214.P9445719790184058520

`floor(floor(π^n)/2^n)`
-/

namespace A014214.P9445719790184058520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊Real.pi ^ n⌋ : ℚ) / (2 ^ n : ℚ)⌋

end

end A014214.P9445719790184058520

namespace A014214

/-- `floor(floor(π^n)/2^n)` -/
def P9445719790184058520.Spec : Prop :=
  ∀ n, P9445719790184058520.a n = A014214 n

end A014214

/-! ## A014214.P16077713572025406527

`A007318(∑[n])*floor(acos(0)^n)`
-/

namespace A014214.P16077713572025406527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * ⌊Real.arccos (0 : ℝ) ^ n⌋

end

end A014214.P16077713572025406527

namespace A014214

/-- `A007318(∑[n])*floor(acos(0)^n)` -/
def P16077713572025406527.Spec : Prop :=
  ∀ n, P16077713572025406527.a n = A014214 n

end A014214

/-!
# A014215: [ sqrt(3/2)^n ].

The programs for A014215, the canonical program `A014215.P18170405714376576345` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014215 has offset 0).

The definition of A014215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014215.P18170405714376576345

`floor((3/2)^(n/2))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014215

/-- `floor((3/2)^(n/2))` -/
def P18170405714376576345.Spec : Prop :=
  ∀ n, P18170405714376576345.a n = A014215 n

theorem P18170405714376576345.correct : P18170405714376576345.Spec := by
  intro n
  simp only [A014215]

end A014215

/-! ## A014215.P16552939839358126169

`A033999(n)²*floor(sqrt(A002379(n)))`
-/

namespace A014215.P16552939839358126169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * Int.sqrt (A002379 n)

end

end A014215.P16552939839358126169

namespace A014215

/-- `A033999(n)²*floor(sqrt(A002379(n)))` -/
def P16552939839358126169.Spec : Prop :=
  ∀ n, P16552939839358126169.a n = A014215 n

end A014215

/-! ## A014215.P3959697626206774802

`A000007(n+1)+floor(sqrt(A002379(n)))`
-/

namespace A014215.P3959697626206774802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + Int.sqrt (A002379 n)

end

end A014215.P3959697626206774802

namespace A014215

/-- `A000007(n+1)+floor(sqrt(A002379(n)))` -/
def P3959697626206774802.Spec : Prop :=
  ∀ n, P3959697626206774802.a n = A014215 n

end A014215

/-! ## A014215.P1987938110725041935

`A000038(n+1)+floor(sqrt(A002379(n)))`
-/

namespace A014215.P1987938110725041935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + Int.sqrt (A002379 n)

end

end A014215.P1987938110725041935

namespace A014215

/-- `A000038(n+1)+floor(sqrt(A002379(n)))` -/
def P1987938110725041935.Spec : Prop :=
  ∀ n, P1987938110725041935.a n = A014215 n

end A014215

/-! ## A014215.P13333283545439664720

`A000035(4*n)+floor(sqrt(A002379(n)))`
-/

namespace A014215.P13333283545439664720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (4 * n) + Int.sqrt (A002379 n)

end

end A014215.P13333283545439664720

namespace A014215

/-- `A000035(4*n)+floor(sqrt(A002379(n)))` -/
def P13333283545439664720.Spec : Prop :=
  ∀ n, P13333283545439664720.a n = A014215 n

end A014215

/-! ## A014215.P13447048307503296379

`floor(sqrt(A002379(n)))+A008592(n)%2`
-/

namespace A014215.P13447048307503296379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002379 n) + Int.tmod (A008592 n) 2

end

end A014215.P13447048307503296379

namespace A014215

/-- `floor(sqrt(A002379(n)))+A008592(n)%2` -/
def P13447048307503296379.Spec : Prop :=
  ∀ n, P13447048307503296379.a n = A014215 n

end A014215

/-! ## A014215.P9116861554115521834

`A000007(n+2)+floor(root(A002379(n), 2))`
-/

namespace A014215.P9116861554115521834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 2) + ⌊(A002379 n : ℝ) ^ (1 / (2 : ℝ))⌋

end

end A014215.P9116861554115521834

namespace A014215

/-- `A000007(n+2)+floor(root(A002379(n), 2))` -/
def P9116861554115521834.Spec : Prop :=
  ∀ n, P9116861554115521834.a n = A014215 n

end A014215

/-! ## A014215.P669280765978356387

`floor(sqrt(A002379(n)))*A033999(2*(n+1))`
-/

namespace A014215.P669280765978356387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002379 n) * A033999 (2 * (n + 1))

end

end A014215.P669280765978356387

namespace A014215

/-- `floor(sqrt(A002379(n)))*A033999(2*(n+1))` -/
def P669280765978356387.Spec : Prop :=
  ∀ n, P669280765978356387.a n = A014215 n

end A014215

/-! ## A014215.P13574851662704774411

`A044744(n+1)%2*floor(sqrt(A002379(n)))`
-/

namespace A014215.P13574851662704774411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044744 (n + 1)) 2 * Int.sqrt (A002379 n)

end

end A014215.P13574851662704774411

namespace A014215

/-- `A044744(n+1)%2*floor(sqrt(A002379(n)))` -/
def P13574851662704774411.Spec : Prop :=
  ∀ n, P13574851662704774411.a n = A014215 n

end A014215

/-! ## A014215.P16847061679937693547

`floor(sqrt(A002379(n)))^(A000040(n+1)%2)`
-/

namespace A014215.P16847061679937693547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.sqrt (A002379 n) : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A014215.P16847061679937693547

namespace A014215

/-- `floor(sqrt(A002379(n)))^(A000040(n+1)%2)` -/
def P16847061679937693547.Spec : Prop :=
  ∀ n, P16847061679937693547.a n = (A014215 n : ℚ)

end A014215

/-! ## A014215.P4713807945078456408

`floor(root(A002379(n), 2))%A000211(n)`
-/

namespace A014215.P4713807945078456408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A002379 n : ℝ) ^ (1 / (2 : ℝ))⌋ (A000211 n)

end

end A014215.P4713807945078456408

namespace A014215

/-- `floor(root(A002379(n), 2))%A000211(n)` -/
def P4713807945078456408.Spec : Prop :=
  ∀ n, P4713807945078456408.a n = A014215 n

end A014215

/-! ## A014215.P7575355393097274041

`floor(sqrt(A002379(n)))%A288465(n)`
-/

namespace A014215.P7575355393097274041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A002379 n)) (A288465 n)

end

end A014215.P7575355393097274041

namespace A014215

/-- `floor(sqrt(A002379(n)))%A288465(n)` -/
def P7575355393097274041.Spec : Prop :=
  ∀ n, P7575355393097274041.a n = A014215 n

end A014215

/-! ## A014215.P5735708215728607925

`floor(sqrt(A002379(n)))+n%A137735(n²)`
-/

namespace A014215.P5735708215728607925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002379 n) + Int.tmod (n : ℤ) (A137735 (n ^ 2))

end

end A014215.P5735708215728607925

namespace A014215

/-- `floor(sqrt(A002379(n)))+n%A137735(n²)` -/
def P5735708215728607925.Spec : Prop :=
  ∀ n, P5735708215728607925.a n = A014215 n

end A014215

/-!
# A014216: a(n) = floor(log(5)^n).

The programs for A014216, the canonical program `A014216.P11212349450566910747` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014216 has offset 0).

The definition of A014216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014216.P11212349450566910747

`floor(sqrt(log(5)^(2*n)))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014216

/-- `floor(sqrt(log(5)^(2*n)))` -/
def P11212349450566910747.Spec : Prop :=
  ∀ n, P11212349450566910747.a n = A014216 n

theorem P11212349450566910747.correct : P11212349450566910747.Spec := by
  intro n
  simp only [A014216]

end A014216

/-! ## A014216.P3539643467624246136

`A249728(A034943(n+1))`
-/

namespace A014216.P3539643467624246136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (A034943 (n + 1)).toNat

end

end A014216.P3539643467624246136

namespace A014216

/-- `A249728(A034943(n+1))` -/
def P3539643467624246136.Spec : Prop :=
  ∀ n, P3539643467624246136.a n = A014216 n

end A014216

/-! ## A014216.P1781287510147908313

`A001462(or(A213623(n), A317792(n)))`
-/

namespace A014216.P1781287510147908313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Int.lor (A213623 n) (A317792 n)).toNat

end

end A014216.P1781287510147908313

namespace A014216

/-- `A001462(or(A213623(n), A317792(n)))` -/
def P1781287510147908313.Spec : Prop :=
  ∀ n, P1781287510147908313.a n = A014216 n

end A014216

/-! ## A014216.P5462315327436486679

`A001462(or(A293553(n), A317792(n)))`
-/

namespace A014216.P5462315327436486679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Int.lor (A293553 n) (A317792 n)).toNat

end

end A014216.P5462315327436486679

namespace A014216

/-- `A001462(or(A293553(n), A317792(n)))` -/
def P5462315327436486679.Spec : Prop :=
  ∀ n, P5462315327436486679.a n = A014216 n

end A014216

/-! ## A014216.P7344523004400490109

`A001462(xor(A293553(n), A317792(n)))`
-/

namespace A014216.P7344523004400490109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Int.xor (A293553 n) (A317792 n)).toNat

end

end A014216.P7344523004400490109

namespace A014216

/-- `A001462(xor(A293553(n), A317792(n)))` -/
def P7344523004400490109.Spec : Prop :=
  ∀ n, P7344523004400490109.a n = A014216 n

end A014216

/-!
# A014217: a(n) = floor(phi^n), where phi = (1+sqrt(5))/2 is the golden ratio.

The programs for A014217, the canonical program `A014217.P8659512784406286938` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014217 has offset 0).

The definition of A014217 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014217.P8782411837018165011

`a(n-1)+a(n-2)+(1-(-1)^n)/2` with `a(0)=1, a(1)=1`
-/

namespace A014217.P8782411837018165011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - 2) + (1 - (-1) ^ n : ℚ) / 2

end

end A014217.P8782411837018165011

namespace A014217

/-- `a(n-1)+a(n-2)+(1-(-1)^n)/2` -/
def P8782411837018165011.Spec : Prop :=
  ∀ n, P8782411837018165011.a n = (A014217 n : ℚ)

end A014217

/-! ## A014217.P14394122361926254656

`A000032(n)-(1+(-1)^n)/2`
-/

namespace A014217.P14394122361926254656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 n : ℚ) - (1 + (-1) ^ n : ℚ) / 2

end

end A014217.P14394122361926254656

namespace A014217

/-- `A000032(n)-(1+(-1)^n)/2` -/
def P14394122361926254656.Spec : Prop :=
  ∀ n, P14394122361926254656.a n = (A014217 n : ℚ)

end A014217

/-! ## A014217.P8659512784406286938

`a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014217

/-- `a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` -/
def P8659512784406286938.Spec : Prop :=
  ∀ n, P8659512784406286938.a n = A014217 n

theorem P8659512784406286938.correct : P8659512784406286938.Spec := by
  intro n
  simp only [A014217]

end A014217

/-! ## A014217.P5537215320261772554

`a(n-1)+a(n-2)+n%2` with `a(0)=1, a(1)=1`
-/

namespace A014217.P5537215320261772554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (a (n - 2) + n % 2)

end

end A014217.P5537215320261772554

namespace A014217

/-- `a(n-1)+a(n-2)+n%2` -/
def P5537215320261772554.Spec : Prop :=
  ∀ n, (P5537215320261772554.a n : ℤ) = A014217 n

end A014217

/-! ## A014217.P7185971296077975336

`and(1, n)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A014217.P7185971296077975336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.land 1 n + (a (n - 1) + a (n - 2))

end

end A014217.P7185971296077975336

namespace A014217

/-- `and(1, n)+a(n-1)+a(n-2)` -/
def P7185971296077975336.Spec : Prop :=
  ∀ n, (P7185971296077975336.a n : ℤ) = A014217 n

end A014217

/-! ## A014217.P17965547754156222776

`2*a(n-2)+a(n-3)+1` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A014217.P17965547754156222776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  2 * a (n - 2) + (a (n - 3) + 1)

end

end A014217.P17965547754156222776

namespace A014217

/-- `2*a(n-2)+a(n-3)+1` -/
def P17965547754156222776.Spec : Prop :=
  ∀ n, (P17965547754156222776.a n : ℤ) = A014217 n

end A014217

/-! ## A014217.P17938455472495509322

`2-gcd(2, n)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A014217.P17938455472495509322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 - (Nat.gcd 2 n : ℤ) + (a (n - 1) + a (n - 2))

end

end A014217.P17938455472495509322

namespace A014217

/-- `2-gcd(2, n)+a(n-1)+a(n-2)` -/
def P17938455472495509322.Spec : Prop :=
  ∀ n, P17938455472495509322.a n = A014217 n

end A014217

/-! ## A014217.P15239616618281424855

`a(n-1)-((2-n)%2-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A014217.P15239616618281424855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - (Int.tmod (2 - (n : ℤ)) 2 - a (n - 2))

end

end A014217.P15239616618281424855

namespace A014217

/-- `a(n-1)-((2-n)%2-a(n-2))` -/
def P15239616618281424855.Spec : Prop :=
  ∀ n, P15239616618281424855.a n = A014217 n

end A014217

/-! ## A014217.P5352930594669423526

`a(n-2)+1+a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A014217.P5352930594669423526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 2) + 1 + (a (n - 2) + a (n - 3))

end

end A014217.P5352930594669423526

namespace A014217

/-- `a(n-2)+1+a(n-2)+a(n-3)` -/
def P5352930594669423526.Spec : Prop :=
  ∀ n, (P5352930594669423526.a n : ℤ) = A014217 n

end A014217

/-! ## A014217.P3722106223719369963

`((-1)^(1+n)-1)/2+((1-sqrt(5))/2)^n+((1+sqrt(5))/2)^n`
-/

namespace A014217.P3722106223719369963
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((-1) ^ (1 + n) - 1 : ℚ) / 2 : ℝ) + ((1 - Real.sqrt (5 : ℝ)) / 2) ^ n + ((1 + Real.sqrt (5 : ℝ)) / 2) ^ n

end

end A014217.P3722106223719369963

namespace A014217

/-- `((-1)^(1+n)-1)/2+((1-sqrt(5))/2)^n+((1+sqrt(5))/2)^n` -/
def P3722106223719369963.Spec : Prop :=
  ∀ n, P3722106223719369963.a n = (A014217 n : ℝ)

end A014217

/-! ## A014217.P14303603741881811348

`A192660(2*n)`
-/

namespace A014217.P14303603741881811348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192660 (2 * n)

end

end A014217.P14303603741881811348

namespace A014217

/-- `A192660(2*n)` -/
def P14303603741881811348.Spec : Prop :=
  ∀ n, P14303603741881811348.a n = A014217 n

end A014217

/-! ## A014217.P15989946970308530950

`∑[A181716(abs(1-n))]`
-/

namespace A014217.P15989946970308530950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181716 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014217.P15989946970308530950

namespace A014217

/-- `∑[A181716(abs(1-n))]` -/
def P15989946970308530950.Spec : Prop :=
  ∀ n, P15989946970308530950.a n = A014217 n

end A014217

/-! ## A014217.P12068148205892325552

`A154699(xor(1, n))`
-/

namespace A014217.P12068148205892325552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154699 (Nat.xor 1 n)

end

end A014217.P12068148205892325552

namespace A014217

/-- `A154699(xor(1, n))` -/
def P12068148205892325552.Spec : Prop :=
  ∀ n, P12068148205892325552.a n = A014217 n

end A014217

/-! ## A014217.P13769151216177571401

`A154699(A004442(n))`
-/

namespace A014217.P13769151216177571401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154699 (A004442 n).toNat

end

end A014217.P13769151216177571401

namespace A014217

/-- `A154699(A004442(n))` -/
def P13769151216177571401.Spec : Prop :=
  ∀ n, P13769151216177571401.a n = A014217 n

end A014217

/-! ## A014217.P11979542915195021022

`Δ[A000032(n+1)-A004526(n+1)]`
-/

namespace A014217.P11979542915195021022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - A004526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014217.P11979542915195021022

namespace A014217

/-- `Δ[A000032(n+1)-A004526(n+1)]` -/
def P11979542915195021022.Spec : Prop :=
  ∀ n, P11979542915195021022.a n = A014217 n

end A014217

/-! ## A014217.P878048532122536072

`Δ[A000032(n+1)-A008619(n+1)]`
-/

namespace A014217.P878048532122536072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - A008619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014217.P878048532122536072

namespace A014217

/-- `Δ[A000032(n+1)-A008619(n+1)]` -/
def P878048532122536072.Spec : Prop :=
  ∀ n, P878048532122536072.a n = A014217 n

end A014217

/-! ## A014217.P5209403289591416932

`Δ[A000032(n+1)-A123108(n+1)]`
-/

namespace A014217.P5209403289591416932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - A123108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014217.P5209403289591416932

namespace A014217

/-- `Δ[A000032(n+1)-A123108(n+1)]` -/
def P5209403289591416932.Spec : Prop :=
  ∀ n, P5209403289591416932.a n = A014217 n

end A014217

/-! ## A014217.P5776714926955205219

`A088859(n)%A052531(n)`
-/

namespace A014217.P5776714926955205219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088859 n) (A052531 n)

end

end A014217.P5776714926955205219

namespace A014217

/-- `A088859(n)%A052531(n)` -/
def P5776714926955205219.Spec : Prop :=
  ∀ n, P5776714926955205219.a n = A014217 n

end A014217

/-! ## A014217.P5103407609060148460

`floor(sqrt(A005248(n)))`
-/

namespace A014217.P5103407609060148460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A005248 n)

end

end A014217.P5103407609060148460

namespace A014217

/-- `floor(sqrt(A005248(n)))` -/
def P5103407609060148460.Spec : Prop :=
  ∀ n, P5103407609060148460.a n = A014217 n

end A014217

/-!
# A014218: Inverse of 209th cyclotomic polynomial.

The programs for A014218, there is no canonical definition to state claims against.
-/

/-! ## A014218.P205549077278474813

`A014427(n)*A033999(n)`
-/

namespace A014218.P205549077278474813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014427 n * A033999 n

end

end A014218.P205549077278474813

/-!
# A014219: Inverse of 210th cyclotomic polynomial.

The programs for A014219, there is no canonical definition to state claims against.
-/

/-! ## A014219.P16090810638270543348

`(-1)^n*A014114(n)`
-/

namespace A014219.P16090810638270543348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A014114 n

end

end A014219.P16090810638270543348

/-!
# A014220: Next prime after n^3.

The programs for A014220, the canonical program `A014220.P16701128890246734141` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014220 has offset 0).

The definition of A014220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014220.P16701128890246734141

`A121842(n)+n^3`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A014220

/-- `A121842(n)+n^3` -/
def P16701128890246734141.Spec : Prop :=
  ∀ n, P16701128890246734141.a n = A014220 n

theorem P16701128890246734141.correct : P16701128890246734141.Spec := by
  intro n
  simp only [A014220]

end A014220

/-! ## A014220.P9879603106062443575

`A034262(n)+A121842(n)-n`
-/

namespace A014220.P9879603106062443575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034262 n + (A121842 n - (n : ℤ))

end

end A014220.P9879603106062443575

namespace A014220

/-- `A034262(n)+A121842(n)-n` -/
def P9879603106062443575.Spec : Prop :=
  ∀ n, P9879603106062443575.a n = A014220 n

end A014220

/-! ## A014220.P7817723690644444679

`gcd(A121842(n)+n*n², A000038(n))`
-/

namespace A014220.P7817723690644444679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A121842 n + (n * n ^ 2 : ℤ)) (A000038 n)

end

end A014220.P7817723690644444679

namespace A014220

/-- `gcd(A121842(n)+n*n², A000038(n))` -/
def P7817723690644444679.Spec : Prop :=
  ∀ n, (P7817723690644444679.a n : ℤ) = A014220 n

end A014220

/-! ## A014220.P12945296018290080307

`A000038(n+1)+A121842(n)+n*n²`
-/

namespace A014220.P12945296018290080307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + (A121842 n + (n * n ^ 2 : ℤ))

end

end A014220.P12945296018290080307

namespace A014220

/-- `A000038(n+1)+A121842(n)+n*n²` -/
def P12945296018290080307.Spec : Prop :=
  ∀ n, P12945296018290080307.a n = A014220 n

end A014220

/-! ## A014220.P5625956805322201729

`A028310(A121842(n))+A000578(n)`
-/

namespace A014220.P5625956805322201729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A121842 n).toNat + A000578 n

end

end A014220.P5625956805322201729

namespace A014220

/-- `A028310(A121842(n))+A000578(n)` -/
def P5625956805322201729.Spec : Prop :=
  ∀ n, P5625956805322201729.a n = A014220 n

end A014220

/-! ## A014220.P6016262574260225139

`(A121842(n)+n*n²)*A010051(A000040(n+1))`
-/

namespace A014220.P6016262574260225139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A121842 n + (n * n ^ 2 : ℤ)) * A010051 (A000040 (n + 1)).toNat

end

end A014220.P6016262574260225139

namespace A014220

/-- `(A121842(n)+n*n²)*A010051(A000040(n+1))` -/
def P6016262574260225139.Spec : Prop :=
  ∀ n, P6016262574260225139.a n = A014220 n

end A014220

/-! ## A014220.P15062327544674611621

`(A121842(n)+n*n²)*A001222(A007521(n+1))`
-/

namespace A014220.P15062327544674611621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A121842 n + (n * n ^ 2 : ℤ)) * A001222 (A007521 (n + 1)).toNat

end

end A014220.P15062327544674611621

namespace A014220

/-- `(A121842(n)+n*n²)*A001222(A007521(n+1))` -/
def P15062327544674611621.Spec : Prop :=
  ∀ n, P15062327544674611621.a n = A014220 n

end A014220

/-! ## A014220.P6184985356481171524

`A340959(∑[n+2]+5)`
-/

namespace A014220.P6184985356481171524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340959 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A014220.P6184985356481171524

namespace A014220

/-- `A340959(∑[n+2]+5)` -/
def P6184985356481171524.Spec : Prop :=
  ∀ n, P6184985356481171524.a n = A014220 n

end A014220

/-!
# A014221: a(n+1) = 2^a(n) with a(-1) = 0.

The programs for A014221, there is no canonical definition to state claims against.
-/

/-! ## A014221.P6278304298943723895

`2^a(n-1)` with `a(0)=0`
-/

namespace A014221.P6278304298943723895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 ^ a (n - 1)

end

end A014221.P6278304298943723895

/-!
# A014222: a(0) = 0; thereafter a(n+1) = 3^a(n).

The programs for A014222, there is no canonical definition to state claims against.
-/

/-! ## A014222.P10448833964306253043

`3^a(n-1)` with `a(0)=0`
-/

namespace A014222.P10448833964306253043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  3 ^ a (n - 1)

end

end A014222.P10448833964306253043

/-!
# A014223: Odd primes such that (3p+1)/2 and 3p+4 are also prime.

The programs for A014223, there is no canonical definition to state claims against.
-/

/-! ## A014223.P14611386635928911657

`p?[A038536(n+1)]`
-/

namespace A014223.P14611386635928911657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A014223.P14611386635928911657

/-! ## A014223.P16418653760997523529

`p?[floor(2*A034937(n+1)/3)]`
-/

namespace A014223.P16418653760997523529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * A034937 (n + 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A014223.P16418653760997523529

/-! ## A014223.P12648937604771421549

`∩[A023209(n+1), A038536(n+1)]`
-/

namespace A014223.P12648937604771421549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014223.P12648937604771421549

/-! ## A014223.P6834689979453080677

`∩[A002145(n+1), A038536(n+1)]`
-/

namespace A014223.P6834689979453080677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014223.P6834689979453080677

/-! ## A014223.P12706541904945035799

`∩[A038536(n+1), A045326(n+1)]`
-/

namespace A014223.P12706541904945035799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014223.P12706541904945035799

/-! ## A014223.P1411126901288963443

`∩[A038536(n+1), A085760(n+1)]`
-/

namespace A014223.P1411126901288963443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014223.P1411126901288963443

/-! ## A014223.P3938445324012213279

`∩[A038536(n+1), A197504(n+1)]`
-/

namespace A014223.P3938445324012213279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014223.P3938445324012213279

/-! ## A014223.P3201613211718860865

`∩[A038536(n+1), A332555(n+1)]`
-/

namespace A014223.P3201613211718860865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014223.P3201613211718860865

/-! ## A014223.P11704040030064460171

`∩[A038536(n+1), A285015(n+1)]`
-/

namespace A014223.P11704040030064460171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014223.P11704040030064460171

/-! ## A014223.P282515978496203280

`∩[A038536(n+1), A385221(n+1)]`
-/

namespace A014223.P282515978496203280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014223.P282515978496203280

/-! ## A014223.P13483236506030646242

`∩[A038536(n+1), A049098(n+1)]`
-/

namespace A014223.P13483236506030646242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014223.P13483236506030646242

/-! ## A014223.P16746692905873138729

`∩[A038536(n+1), A140409(n+1)]`
-/

namespace A014223.P16746692905873138729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014223.P16746692905873138729

/-! ## A014223.P1354411943026190483

`∩[A038536(n+1), A045394(n+1)]`
-/

namespace A014223.P1354411943026190483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014223.P1354411943026190483

/-! ## A014223.P581841857363586341

`∩[A038536(n+1), A045404(n+1)]`
-/

namespace A014223.P581841857363586341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014223.P581841857363586341

/-! ## A014223.P14445111835187140737

`∩[A038536(n+1), A301590(n+1)]`
-/

namespace A014223.P14445111835187140737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014223.P14445111835187140737

/-! ## A014223.P1934929756572290379

`∩[A023209(n+1), A034934(n+1)]`
-/

namespace A014223.P1934929756572290379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014223.P1934929756572290379

/-! ## A014223.P1310962294576237180

`∩[A038536(n+1), A040116(n+1)]`
-/

namespace A014223.P1310962294576237180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014223.P1310962294576237180

/-! ## A014223.P10553369375540497259

`∩[A038536(n+1), A045323(n+1)]`
-/

namespace A014223.P10553369375540497259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014223.P10553369375540497259

/-! ## A014223.P227167275817232084

`∩[A038536(n+1), A045405(n+1)]`
-/

namespace A014223.P227167275817232084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014223.P227167275817232084

/-!
# A014224: Numbers k such that 3^k - 2 is prime.

The programs for A014224, there is no canonical definition to state claims against.
-/

/-! ## A014224.P6227309804272541809

`eq[2, A013604(n+1)]+1`
-/

namespace A014224.P6227309804272541809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013604 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A014224.P6227309804272541809

/-! ## A014224.P16736239658502180613

`eq[2, A013604(A028310(n))]`
-/

namespace A014224.P16736239658502180613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013604 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014224.P16736239658502180613

/-! ## A014224.P14011569288973334914

`A020725(eq[2, A013604(n+1)])`
-/

namespace A014224.P14011569288973334914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013604 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014224.P14011569288973334914

/-! ## A014224.P12222950275576142474

`eq[2, A013604(A004277(n)-n)]`
-/

namespace A014224.P12222950275576142474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013604 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014224.P12222950275576142474

/-! ## A014224.P1524414617073586883

`lt[A095303(n+1), 4]+1`
-/

namespace A014224.P1524414617073586883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095303 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A014224.P1524414617073586883

/-!
# A014226: Inverse of 217th cyclotomic polynomial.

The programs for A014226, there is no canonical definition to state claims against.
-/

/-! ## A014226.P8934612262092756403

`A014443(n)*A033999(n)`
-/

namespace A014226.P8934612262092756403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014443 n * A033999 n

end

end A014226.P8934612262092756403

/-!
# A014227: Minimal number of initial pieces needed to reach level n in the Solitaire Army game on a hexagonal lattice (a finite sequence).

The programs for A014227, there is no canonical definition to state claims against.
-/

/-! ## A014227.P4777994756302301509

`∑[A026730(A089880(n))]`
-/

namespace A014227.P4777994756302301509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026730 (A089880 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014227.P4777994756302301509

/-! ## A014227.P3103571588875349835

`∑[A032228(A094660(n))]`
-/

namespace A014227.P3103571588875349835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032228 (A094660 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014227.P3103571588875349835

/-! ## A014227.P16939298952425424189

`∑[A062996(A172383(n))]`
-/

namespace A014227.P16939298952425424189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062996 (A172383 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014227.P16939298952425424189

/-! ## A014227.P798395341131399017

`A319725(∑[A172383(n)])`
-/

namespace A014227.P798395341131399017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319725 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A014227.P798395341131399017

/-!
# A014228: Product of 3 successive Catalan numbers.

The programs for A014228, there is no canonical definition to state claims against.
-/

/-! ## A014228.P8687937185073652946

`2*A014231(n)`
-/

namespace A014228.P8687937185073652946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014231 n

end

end A014228.P8687937185073652946

/-! ## A014228.P11268930732664072060

`A000108(n)*A005568(n+1)`
-/

namespace A014228.P11268930732664072060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A005568 (n + 1)

end

end A014228.P11268930732664072060

/-! ## A014228.P9384250166203248650

`A000108(n+1)*A342288(n)`
-/

namespace A014228.P9384250166203248650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A342288 n

end

end A014228.P9384250166203248650

/-! ## A014228.P6336003604517361601

`abs(A005568(n+1)*A168491(n))`
-/

namespace A014228.P6336003604517361601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005568 (n + 1) * A168491 n|

end

end A014228.P6336003604517361601

/-! ## A014228.P1203518099839407909

`∏[A120588(n+3)/A120588(n)]`
-/

namespace A014228.P1203518099839407909
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120588 (n + 3) : ℚ) / (A120588 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A014228.P1203518099839407909

/-! ## A014228.P11829731812203313191

`2*A000356(n+1)*A000108(n)`
-/

namespace A014228.P11829731812203313191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000356 (n + 1) * A000108 n

end

end A014228.P11829731812203313191

/-! ## A014228.P5670060661120468661

`A005568(n+1)*A028303(2*n)`
-/

namespace A014228.P5670060661120468661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005568 (n + 1) * A028303 (2 * n)

end

end A014228.P5670060661120468661

/-! ## A014228.P16223627037320424934

`A005568(n+1)*A126120(2*n)`
-/

namespace A014228.P16223627037320424934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005568 (n + 1) * A126120 (2 * n)

end

end A014228.P16223627037320424934

/-! ## A014228.P5696331496003177823

`A000108(n+2)*A005817(2*n)`
-/

namespace A014228.P5696331496003177823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 2) * A005817 (2 * n)

end

end A014228.P5696331496003177823

/-! ## A014228.P17541309716732400974

`A000108(n+2)*A302093(2*n)`
-/

namespace A014228.P17541309716732400974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 2) * A302093 (2 * n)

end

end A014228.P17541309716732400974

/-!
# A014229: Inverse of 220th cyclotomic polynomial.

The programs for A014229, there is no canonical definition to state claims against.
-/

/-! ## A014229.P1941403616781019753

`A014119(A004525(n))*A059841(n)`
-/

namespace A014229.P1941403616781019753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014119 (A004525 n).toNat * A059841 n

end

end A014229.P1941403616781019753

/-!
# A014230: Inverse of 221st cyclotomic polynomial.

The programs for A014230, there is no canonical definition to state claims against.
-/

/-! ## A014230.P16252099651503528181

`(xor(1, n)-n)*A014451(n)`
-/

namespace A014230.P16252099651503528181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 1 n : ℤ) - (n : ℤ)) * A014451 n

end

end A014230.P16252099651503528181

/-!
# A014231: (Product of 3 successive Catalan numbers)/2.

The programs for A014231, there is no canonical definition to state claims against.
-/

/-! ## A014231.P4071595795132305725

`A014228(n)/2`
-/

namespace A014231.P4071595795132305725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014228 n : ℚ) / 2

end

end A014231.P4071595795132305725

/-! ## A014231.P15282196398193551013

`A000108(n)*A000356(n+1)`
-/

namespace A014231.P15282196398193551013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000356 (n + 1)

end

end A014231.P15282196398193551013

/-! ## A014231.P13461968675882017930

`A000356(n+1)*A028303(2*n)`
-/

namespace A014231.P13461968675882017930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000356 (n + 1) * A028303 (2 * n)

end

end A014231.P13461968675882017930

/-! ## A014231.P3770739132305225361

`A000356(n+1)*A028304(2*n)`
-/

namespace A014231.P3770739132305225361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000356 (n + 1) * A028304 (2 * n)

end

end A014231.P3770739132305225361

/-! ## A014231.P9945893370728212806

`A000356(n+1)*A126120(2*n)`
-/

namespace A014231.P9945893370728212806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000356 (n + 1) * A126120 (2 * n)

end

end A014231.P9945893370728212806

/-! ## A014231.P1478065565108400634

`A000356(n+1)*A208355(2*n)`
-/

namespace A014231.P1478065565108400634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000356 (n + 1) * A208355 (2 * n)

end

end A014231.P1478065565108400634

/-! ## A014231.P16573546521051613659

`A028303(2*n)/2*A005568(n+1)`
-/

namespace A014231.P16573546521051613659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028303 (2 * n) : ℚ) / 2 * (A005568 (n + 1) : ℚ)

end

end A014231.P16573546521051613659

/-! ## A014231.P8975128264826125094

`A126120(2*n)/2*A005568(n+1)`
-/

namespace A014231.P8975128264826125094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126120 (2 * n) : ℚ) / 2 * (A005568 (n + 1) : ℚ)

end

end A014231.P8975128264826125094

/-! ## A014231.P16582653566205749896

`A000984(n)/(n+1)*A000356(n+1)`
-/

namespace A014231.P16582653566205749896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (n + 1 : ℚ) * (A000356 (n + 1) : ℚ)

end

end A014231.P16582653566205749896

/-! ## A014231.P7219947245059288161

`A007318(∑[4*n])/(n+1)*A000356(n+1)`
-/

namespace A014231.P7219947245059288161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ) * (A000356 (n + 1) : ℚ)

end

end A014231.P7219947245059288161

/-!
# A014232: Primes of the form 3^k - 2.

The programs for A014232, there is no canonical definition to state claims against.
-/

/-! ## A014232.P8149831927051565204

`3^A014224(n+1)-2`
-/

namespace A014232.P8149831927051565204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A014224 (n + 1) : ℤ) - 2

end

end A014232.P8149831927051565204

/-! ## A014232.P17933720807820401737

`A058481(A014224(n+1))`
-/

namespace A014232.P17933720807820401737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058481 (A014224 (n + 1)).toNat

end

end A014232.P17933720807820401737

/-! ## A014232.P3457223890992203385

`A080798(eq[2, A013604(n+1)]+1)`
-/

namespace A014232.P3457223890992203385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013604 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080798 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A014232.P3457223890992203385

/-! ## A014232.P13931522129517171578

`A058481(eq[3, A245516(n+1)]+1)`
-/

namespace A014232.P13931522129517171578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058481 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A014232.P13931522129517171578

/-! ## A014232.P7766961873926942772

`A080798(A014224(2*n+1-n))`
-/

namespace A014232.P7766961873926942772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080798 (A014224 (2 * n + 1 - n)).toNat

end

end A014232.P7766961873926942772

/-!
# A014233: Smallest odd number for which Miller-Rabin primality test on bases <= n-th prime does not reveal compositeness.

The programs for A014233, there is no canonical definition to state claims against.
-/

/-! ## A014233.P15723553482784870815

`A006945(n+2)`
-/

namespace A014233.P15723553482784870815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006945 (n + 2)

end

end A014233.P15723553482784870815

/-! ## A014233.P9351938126555791864

`∏{e}[A020707(n), A006945(#)]`
-/

namespace A014233.P9351938126555791864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A006945 (Nat.factorization (f1 n).natAbs p)

end

end A014233.P9351938126555791864

/-!
# A014234: Largest prime <= 2^n.

The programs for A014234, there is no canonical definition to state claims against.
-/

/-! ## A014234.P13196923641863526747

`A133225(Δ[n²])`
-/

namespace A014234.P13196923641863526747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133225 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A014234.P13196923641863526747

/-! ## A014234.P10929105889211600337

`2^(n+1)-A013603(n+1)`
-/

namespace A014234.P10929105889211600337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A013603 (n + 1)

end

end A014234.P10929105889211600337

/-! ## A014234.P15073406290768907699

`A104080(n+1)-A058249(n+1)`
-/

namespace A014234.P15073406290768907699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104080 (n + 1) - A058249 (n + 1)

end

end A014234.P15073406290768907699

/-! ## A014234.P15926147764619923621

`A198633(n)-or(1, A013603(n+1))`
-/

namespace A014234.P15926147764619923621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n - Int.lor 1 (A013603 (n + 1))

end

end A014234.P15926147764619923621

/-! ## A014234.P16313649370528936993

`A014210(n+1)-(A013603(n+1)+A013597(n+1))`
-/

namespace A014234.P16313649370528936993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 (n + 1) - (A013603 (n + 1) + A013597 (n + 1))

end

end A014234.P16313649370528936993

/-! ## A014234.P16998881033390641475

`A059959(n+1)+A117387(n+1)-A013603(n+1)`
-/

namespace A014234.P16998881033390641475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059959 (n + 1) + (A117387 (n + 1) - A013603 (n + 1))

end

end A014234.P16998881033390641475

/-! ## A014234.P6451203640804554350

`A092507(n+1)-A104080(n+1)`
-/

namespace A014234.P6451203640804554350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092507 (n + 1) - A104080 (n + 1)

end

end A014234.P6451203640804554350

/-! ## A014234.P10195137060388954421

`A341339(∑[n]+2)`
-/

namespace A014234.P10195137060388954421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341339 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A014234.P10195137060388954421

/-! ## A014234.P1507810200888350114

`record[A341339(n+2)]`
-/

namespace A014234.P1507810200888350114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341339 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014234.P1507810200888350114

/-!
# A014235: Number of n X n matrices with entries 0 and 1 and no 2 X 2 submatrix of form [ 1 1; 1 0 ].

The programs for A014235, there is no canonical definition to state claims against.
-/

/-! ## A014235.P17711565385702452700

`A325256(ceil(2^(n-1))+ceil(ϕ*n))`
-/

namespace A014235.P17711565385702452700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325256 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ + ⌈Real.goldenRatio * (n : ℝ)⌉).toNat

end

end A014235.P17711565385702452700

/-!
# A014236: Expansion of g.f.: 2*x*(1-x)/((1-2*x)*(1-2*x^2)).

The programs for A014236, the canonical program `A014236.P17094772218880202125` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014236 has offset 0).

The definition of A014236 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014236.P17094772218880202125

`2*A007179(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014236

/-- `2*A007179(n)` -/
def P17094772218880202125.Spec : Prop :=
  ∀ n, P17094772218880202125.a n = A014236 n

theorem P17094772218880202125.correct : P17094772218880202125.Spec := by
  intro n
  simp only [A014236]

end A014236

/-! ## A014236.P5504648860667408426

`2*a(n-1)+2*a(n-2)-4*a(n-3)` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A014236.P5504648860667408426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - 4 * a (n - 3)

end

end A014236.P5504648860667408426

namespace A014236

/-- `2*a(n-1)+2*a(n-2)-4*a(n-3)` -/
def P5504648860667408426.Spec : Prop :=
  ∀ n, P5504648860667408426.a n = A014236 n

end A014236

/-! ## A014236.P15953167377625101405

`∑[2*a(n-2)]+2^n` with `a(0)=-1, a(1)=1`
-/

namespace A014236.P15953167377625101405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 ^ n : ℤ)

end

end A014236.P15953167377625101405

namespace A014236

/-- `∑[2*a(n-2)]+2^n` -/
def P15953167377625101405.Spec : Prop :=
  ∀ n, P15953167377625101405.a n = A014236 n

end A014236

/-! ## A014236.P18162057011976510239

`2^n-∑[2*a(n-2)]` with `a(0)=1, a(1)=-1`
-/

namespace A014236.P18162057011976510239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014236.P18162057011976510239

namespace A014236

/-- `2^n-∑[2*a(n-2)]` -/
def P18162057011976510239.Spec : Prop :=
  ∀ n, P18162057011976510239.a n = A014236 n

end A014236

/-! ## A014236.P4834274843231622275

`2*(a(n-2)+2^(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A014236.P4834274843231622275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 * (a (n - 2) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

end

end A014236.P4834274843231622275

namespace A014236

/-- `2*(a(n-2)+2^(n-2))` -/
def P4834274843231622275.Spec : Prop :=
  ∀ n, P4834274843231622275.a n = (A014236 n : ℚ)

end A014236

/-! ## A014236.P17465644698617872833

`2^n-A077957(n)`
-/

namespace A014236.P17465644698617872833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A077957 n

end

end A014236.P17465644698617872833

namespace A014236

/-- `2^n-A077957(n)` -/
def P17465644698617872833.Spec : Prop :=
  ∀ n, P17465644698617872833.a n = A014236 n

end A014236

/-! ## A014236.P17457125691833294905

`2^n-A131575(n+1)`
-/

namespace A014236.P17457125691833294905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A131575 (n + 1)

end

end A014236.P17457125691833294905

namespace A014236

/-- `2^n-A131575(n+1)` -/
def P17457125691833294905.Spec : Prop :=
  ∀ n, P17457125691833294905.a n = A014236 n

end A014236

/-! ## A014236.P18145480301928881403

`a(n-1)+2*A113980(n)` with `a(0)=0`
-/

namespace A014236.P18145480301928881403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 2 * A113980 n

end

end A014236.P18145480301928881403

namespace A014236

/-- `a(n-1)+2*A113980(n)` -/
def P18145480301928881403.Spec : Prop :=
  ∀ n, P18145480301928881403.a n = A014236 n

end A014236

/-! ## A014236.P1636379911177379910

`A079285(n)+A008466(n)`
-/

namespace A014236.P1636379911177379910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079285 n + A008466 n

end

end A014236.P1636379911177379910

namespace A014236

/-- `A079285(n)+A008466(n)` -/
def P1636379911177379910.Spec : Prop :=
  ∀ n, P1636379911177379910.a n = A014236 n

end A014236

/-! ## A014236.P11182160867212136532

`A097038(n)+A001045(n)`
-/

namespace A014236.P11182160867212136532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097038 n + A001045 n

end

end A014236.P11182160867212136532

namespace A014236

/-- `A097038(n)+A001045(n)` -/
def P11182160867212136532.Spec : Prop :=
  ∀ n, P11182160867212136532.a n = A014236 n

end A014236

/-! ## A014236.P8922743002325899628

`A005126(n)-A016724(n)`
-/

namespace A014236.P8922743002325899628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005126 n - A016724 n

end

end A014236.P8922743002325899628

namespace A014236

/-- `A005126(n)-A016724(n)` -/
def P8922743002325899628.Spec : Prop :=
  ∀ n, P8922743002325899628.a n = A014236 n

end A014236

/-! ## A014236.P14149105852961485047

`A000051(n)-A052552(n)`
-/

namespace A014236.P14149105852961485047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A052552 n

end

end A014236.P14149105852961485047

namespace A014236

/-- `A000051(n)-A052552(n)` -/
def P14149105852961485047.Spec : Prop :=
  ∀ n, P14149105852961485047.a n = A014236 n

end A014236

/-! ## A014236.P7277875882072511707

`A051437(n)-A016116(n)`
-/

namespace A014236.P7277875882072511707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051437 n - A016116 n

end

end A014236.P7277875882072511707

namespace A014236

/-- `A051437(n)-A016116(n)` -/
def P7277875882072511707.Spec : Prop :=
  ∀ n, P7277875882072511707.a n = A014236 n

end A014236

/-! ## A014236.P17462062212421464624

`A084221(n)-A079102(n)`
-/

namespace A014236.P17462062212421464624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084221 n - A079102 n

end

end A014236.P17462062212421464624

namespace A014236

/-- `A084221(n)-A079102(n)` -/
def P17462062212421464624.Spec : Prop :=
  ∀ n, P17462062212421464624.a n = A014236 n

end A014236

/-! ## A014236.P9393473792825916005

`A000079(n)+1-A052552(n)`
-/

namespace A014236.P9393473792825916005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (1 - A052552 n)

end

end A014236.P9393473792825916005

namespace A014236

/-- `A000079(n)+1-A052552(n)` -/
def P9393473792825916005.Spec : Prop :=
  ∀ n, P9393473792825916005.a n = A014236 n

end A014236

/-! ## A014236.P14527663082393451932

`A000225(n)+1-A077957(n)`
-/

namespace A014236.P14527663082393451932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A077957 n)

end

end A014236.P14527663082393451932

namespace A014236

/-- `A000225(n)+1-A077957(n)` -/
def P14527663082393451932.Spec : Prop :=
  ∀ n, P14527663082393451932.a n = A014236 n

end A014236

/-! ## A014236.P11387573814602365229

`A000225(n)+2-A052552(n)`
-/

namespace A014236.P11387573814602365229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (2 - A052552 n)

end

end A014236.P11387573814602365229

namespace A014236

/-- `A000225(n)+2-A052552(n)` -/
def P11387573814602365229.Spec : Prop :=
  ∀ n, P11387573814602365229.a n = A014236 n

end A014236

/-! ## A014236.P15160490016742791716

`A016116(n)*A106624(n+1)`
-/

namespace A014236.P15160490016742791716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A106624 (n + 1)

end

end A014236.P15160490016742791716

namespace A014236

/-- `A016116(n)*A106624(n+1)` -/
def P15160490016742791716.Spec : Prop :=
  ∀ n, P15160490016742791716.a n = A014236 n

end A014236

/-! ## A014236.P2209879735631575149

`A005418(n+2)-A135530(n)`
-/

namespace A014236.P2209879735631575149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 2) - A135530 n

end

end A014236.P2209879735631575149

namespace A014236

/-- `A005418(n+2)-A135530(n)` -/
def P2209879735631575149.Spec : Prop :=
  ∀ n, P2209879735631575149.a n = A014236 n

end A014236

/-!
# A014237: a(n) = (n-th prime) - (n-th nonprime).

The programs for A014237, the canonical program `A014237.P11822810703592861988` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014237 has offset 1).

The definition of A014237 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A014237.P11822810703592861988

`A000040(n+1)-A018252(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A014237

/-- `A000040(n+1)-A018252(n+1)` -/
def P11822810703592861988.Spec : Prop :=
  ∀ n, P11822810703592861988.a n = A014237 (n + 1)

theorem P11822810703592861988.correct : P11822810703592861988.Spec := by
  intro n
  simp only [A014237, Nat.add_sub_cancel]

end A014237

/-! ## A014237.P5912115562327915054

`A014689(n+1)-A073425(n)`
-/

namespace A014237.P5912115562327915054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) - A073425 n

end

end A014237.P5912115562327915054

namespace A014237

/-- `A014689(n+1)-A073425(n)` -/
def P5912115562327915054.Spec : Prop :=
  ∀ n, P5912115562327915054.a n = A014237 (n + 1)

end A014237

/-! ## A014237.P14053078618978424504

`p?[A259153(n)]-Δ[A051349(n)]`
-/

namespace A014237.P14053078618978424504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (f2 (n + 1) - f2 n)

end

end A014237.P14053078618978424504

namespace A014237

/-- `p?[A259153(n)]-Δ[A051349(n)]` -/
def P14053078618978424504.Spec : Prop :=
  ∀ n, P14053078618978424504.a n = A014237 (n + 1)

end A014237

/-! ## A014237.P14877807152690647641

`Δ[A007504(n)]-A018252(n+1)`
-/

namespace A014237.P14877807152690647641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A018252 (n + 1)

end

end A014237.P14877807152690647641

namespace A014237

/-- `Δ[A007504(n)]-A018252(n+1)` -/
def P14877807152690647641.Spec : Prop :=
  ∀ n, P14877807152690647641.a n = A014237 (n + 1)

end A014237

/-! ## A014237.P10600033042491721109

`A000040(n+1)-Δ[A051349(n)]`
-/

namespace A014237.P10600033042491721109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (f1 (n + 1) - f1 n)

end

end A014237.P10600033042491721109

namespace A014237

/-- `A000040(n+1)-Δ[A051349(n)]` -/
def P10600033042491721109.Spec : Prop :=
  ∀ n, P10600033042491721109.a n = A014237 (n + 1)

end A014237

/-! ## A014237.P12469689977687879205

`Δ[A007504(n)]-A141468(n+2)`
-/

namespace A014237.P12469689977687879205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A141468 (n + 2)

end

end A014237.P12469689977687879205

namespace A014237

/-- `Δ[A007504(n)]-A141468(n+2)` -/
def P12469689977687879205.Spec : Prop :=
  ∀ n, P12469689977687879205.a n = A014237 (n + 1)

end A014237

/-! ## A014237.P4230581378316510077

`p?[A259153(n)]-A018252(n+1)`
-/

namespace A014237.P4230581378316510077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A018252 (n + 1)

end

end A014237.P4230581378316510077

namespace A014237

/-- `p?[A259153(n)]-A018252(n+1)` -/
def P4230581378316510077.Spec : Prop :=
  ∀ n, P4230581378316510077.a n = A014237 (n + 1)

end A014237

/-! ## A014237.P13221972477770378014

`A065310(n+1)+A038529(n+1)`
-/

namespace A014237.P13221972477770378014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065310 (n + 1) + A038529 (n + 1)

end

end A014237.P13221972477770378014

namespace A014237

/-- `A065310(n+1)+A038529(n+1)` -/
def P13221972477770378014.Spec : Prop :=
  ∀ n, P13221972477770378014.a n = A014237 (n + 1)

end A014237

/-! ## A014237.P10605277229655170559

`A100484(n+1)-A022797(n+1)`
-/

namespace A014237.P10605277229655170559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A022797 (n + 1)

end

end A014237.P10605277229655170559

namespace A014237

/-- `A100484(n+1)-A022797(n+1)` -/
def P10605277229655170559.Spec : Prop :=
  ∀ n, P10605277229655170559.a n = A014237 (n + 1)

end A014237

/-! ## A014237.P7610931461862222474

`A065890(n+1)+1-A073425(n)`
-/

namespace A014237.P7610931461862222474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (n + 1) + (1 - A073425 n)

end

end A014237.P7610931461862222474

namespace A014237

/-- `A065890(n+1)+1-A073425(n)` -/
def P7610931461862222474.Spec : Prop :=
  ∀ n, P7610931461862222474.a n = A014237 (n + 1)

end A014237

/-! ## A014237.P17810750189353420568

`A022797(n+1)-A139270(n+1)`
-/

namespace A014237.P17810750189353420568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022797 (n + 1) - A139270 (n + 1)

end

end A014237.P17810750189353420568

namespace A014237

/-- `A022797(n+1)-A139270(n+1)` -/
def P17810750189353420568.Spec : Prop :=
  ∀ n, P17810750189353420568.a n = A014237 (n + 1)

end A014237

/-! ## A014237.P11738609365076165572

`A014688(n+1)-A171504(n+1)`
-/

namespace A014237.P11738609365076165572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - A171504 (n + 1)

end

end A014237.P11738609365076165572

namespace A014237

/-- `A014688(n+1)-A171504(n+1)` -/
def P11738609365076165572.Spec : Prop :=
  ∀ n, P11738609365076165572.a n = A014237 (n + 1)

end A014237

/-! ## A014237.P7421214196019354122

`A161671(n+1)-A054546(n+1)`
-/

namespace A014237.P7421214196019354122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161671 (n + 1) - A054546 (n + 1)

end

end A014237.P7421214196019354122

namespace A014237

/-- `A161671(n+1)-A054546(n+1)` -/
def P7421214196019354122.Spec : Prop :=
  ∀ n, P7421214196019354122.a n = A014237 (n + 1)

end A014237

/-! ## A014237.P5400781156883256516

`A134591(n+1)-A163249(n+1)`
-/

namespace A014237.P5400781156883256516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134591 (n + 1) - A163249 (n + 1)

end

end A014237.P5400781156883256516

namespace A014237

/-- `A134591(n+1)-A163249(n+1)` -/
def P5400781156883256516.Spec : Prop :=
  ∀ n, P5400781156883256516.a n = A014237 (n + 1)

end A014237

/-! ## A014237.P15970766400220653088

`A000040(n+1)-A141468(n+2)`
-/

namespace A014237.P15970766400220653088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A141468 (n + 2)

end

end A014237.P15970766400220653088

namespace A014237

/-- `A000040(n+1)-A141468(n+2)` -/
def P15970766400220653088.Spec : Prop :=
  ∀ n, P15970766400220653088.a n = A014237 (n + 1)

end A014237

/-! ## A014237.P14378562561781143663

`A006093(n+1)-(A073425(n)+n)`
-/

namespace A014237.P14378562561781143663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - (A073425 n + (n : ℤ))

end

end A014237.P14378562561781143663

namespace A014237

/-- `A006093(n+1)-(A073425(n)+n)` -/
def P14378562561781143663.Spec : Prop :=
  ∀ n, P14378562561781143663.a n = A014237 (n + 1)

end A014237

/-! ## A014237.P6687357438458898256

`sqrt(A001248(n+1))-A018252(n+1)`
-/

namespace A014237.P6687357438458898256
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) - (A018252 (n + 1) : ℝ)

end

end A014237.P6687357438458898256

namespace A014237

/-- `sqrt(A001248(n+1))-A018252(n+1)` -/
def P6687357438458898256.Spec : Prop :=
  ∀ n, P6687357438458898256.a n = (A014237 (n + 1) : ℝ)

end A014237

/-! ## A014237.P6156381885205113702

`A000040(n+1)-sqrt(A062312(n+1))`
-/

namespace A014237.P6156381885205113702
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℝ) - Real.sqrt (A062312 (n + 1) : ℝ)

end

end A014237.P6156381885205113702

namespace A014237

/-- `A000040(n+1)-sqrt(A062312(n+1))` -/
def P6156381885205113702.Spec : Prop :=
  ∀ n, P6156381885205113702.a n = (A014237 (n + 1) : ℝ)

end A014237

/-! ## A014237.P15857339904414039892

`A000040(n+1)-∑[A054546(n+1)]`
-/

namespace A014237.P15857339904414039892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014237.P15857339904414039892

namespace A014237

/-- `A000040(n+1)-∑[A054546(n+1)]` -/
def P15857339904414039892.Spec : Prop :=
  ∀ n, P15857339904414039892.a n = A014237 (n + 1)

end A014237

/-! ## A014237.P7844284186840957438

`∑[A054541(n+1)]-A018252(n+1)`
-/

namespace A014237.P7844284186840957438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A018252 (n + 1)

end

end A014237.P7844284186840957438

namespace A014237

/-- `∑[A054541(n+1)]-A018252(n+1)` -/
def P7844284186840957438.Spec : Prop :=
  ∀ n, P7844284186840957438.a n = A014237 (n + 1)

end A014237

/-!
# A014238: a(n) = (n-th number that is 1 or prime) - (n-th composite number).

The programs for A014238, the canonical program `A014238.P784091901909873668` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014238 has offset 1).

The definition of A014238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014238.P4589094560965463952

`A028815(n)-A079696(n+1)`
-/

namespace A014238.P4589094560965463952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - A079696 (n + 1)

end

end A014238.P4589094560965463952

namespace A014238

/-- `A028815(n)-A079696(n+1)` -/
def P4589094560965463952.Spec : Prop :=
  ∀ n, P4589094560965463952.a n = A014238 (n + 1)

end A014238

/-! ## A014238.P15162447249199043330

`A038529(n+1)-A075526(n)`
-/

namespace A014238.P15162447249199043330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038529 (n + 1) - A075526 n

end

end A014238.P15162447249199043330

namespace A014238

/-- `A038529(n+1)-A075526(n)` -/
def P15162447249199043330.Spec : Prop :=
  ∀ n, P15162447249199043330.a n = A014238 (n + 1)

end A014238

/-! ## A014238.P6812025304671104206

`A008578(n+1)-Δ[A053767(n)]`
-/

namespace A014238.P6812025304671104206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - (f1 (n + 1) - f1 n)

end

end A014238.P6812025304671104206

namespace A014238

/-- `A008578(n+1)-Δ[A053767(n)]` -/
def P6812025304671104206.Spec : Prop :=
  ∀ n, P6812025304671104206.a n = A014238 (n + 1)

end A014238

/-! ## A014238.P965895144710264203

`A008578(n+1)-comp[A351078(n)]`
-/

namespace A014238.P965895144710264203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A014238.P965895144710264203

namespace A014238

/-- `A008578(n+1)-comp[A351078(n)]` -/
def P965895144710264203.Spec : Prop :=
  ∀ n, P965895144710264203.a n = A014238 (n + 1)

end A014238

/-! ## A014238.P784091901909873668

`A008578(n+1)-A002808(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A014238

/-- `A008578(n+1)-A002808(n+1)` -/
def P784091901909873668.Spec : Prop :=
  ∀ n, P784091901909873668.a n = A014238 (n + 1)

theorem P784091901909873668.correct : P784091901909873668.Spec := by
  intro n
  simp only [A014238, Nat.add_sub_cancel]

end A014238

/-! ## A014238.P14304202880240189837

`A001747(n+1)-A022798(n+1)`
-/

namespace A014238.P14304202880240189837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1) - A022798 (n + 1)

end

end A014238.P14304202880240189837

namespace A014238

/-- `A001747(n+1)-A022798(n+1)` -/
def P14304202880240189837.Spec : Prop :=
  ∀ n, P14304202880240189837.a n = A014238 (n + 1)

end A014238

/-! ## A014238.P10683464361110443620

`A028815(n)-(A002808(n+1)+1)`
-/

namespace A014238.P10683464361110443620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - (A002808 (n + 1) + 1)

end

end A014238.P10683464361110443620

namespace A014238

/-- `A028815(n)-(A002808(n+1)+1)` -/
def P10683464361110443620.Spec : Prop :=
  ∀ n, P10683464361110443620.a n = A014238 (n + 1)

end A014238

/-! ## A014238.P6272372301559958330

`A162177(n+1)-A073169(n+1)`
-/

namespace A014238.P6272372301559958330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162177 (n + 1) - A073169 (n + 1)

end

end A014238.P6272372301559958330

namespace A014238

/-- `A162177(n+1)-A073169(n+1)` -/
def P6272372301559958330.Spec : Prop :=
  ∀ n, P6272372301559958330.a n = A014238 (n + 1)

end A014238

/-! ## A014238.P3110231079000650162

`A090178(n+1)-A161537(n+1)`
-/

namespace A014238.P3110231079000650162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090178 (n + 1) - A161537 (n + 1)

end

end A014238.P3110231079000650162

namespace A014238

/-- `A090178(n+1)-A161537(n+1)` -/
def P3110231079000650162.Spec : Prop :=
  ∀ n, P3110231079000650162.a n = A014238 (n + 1)

end A014238

/-! ## A014238.P6642934957463071731

`A022798(n+1)-A282671(n+1)`
-/

namespace A014238.P6642934957463071731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022798 (n + 1) - A282671 (n + 1)

end

end A014238.P6642934957463071731

namespace A014238

/-- `A022798(n+1)-A282671(n+1)` -/
def P6642934957463071731.Spec : Prop :=
  ∀ n, P6642934957463071731.a n = A014238 (n + 1)

end A014238

/-! ## A014238.P8887531544704475330

`A008578(n+1)-A018252(n+2)`
-/

namespace A014238.P8887531544704475330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - A018252 (n + 2)

end

end A014238.P8887531544704475330

namespace A014238

/-- `A008578(n+1)-A018252(n+2)` -/
def P8887531544704475330.Spec : Prop :=
  ∀ n, P8887531544704475330.a n = A014238 (n + 1)

end A014238

/-! ## A014238.P8644461660383134616

`A028815(n)-(A072668(n+1)+2)`
-/

namespace A014238.P8644461660383134616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - (A072668 (n + 1) + 2)

end

end A014238.P8644461660383134616

namespace A014238

/-- `A028815(n)-(A072668(n+1)+2)` -/
def P8644461660383134616.Spec : Prop :=
  ∀ n, P8644461660383134616.a n = A014238 (n + 1)

end A014238

/-! ## A014238.P18131838388384391467

`A008578(n+1)-A141468(n+3)`
-/

namespace A014238.P18131838388384391467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - A141468 (n + 3)

end

end A014238.P18131838388384391467

namespace A014238

/-- `A008578(n+1)-A141468(n+3)` -/
def P18131838388384391467.Spec : Prop :=
  ∀ n, P18131838388384391467.a n = A014238 (n + 1)

end A014238

/-! ## A014238.P14496151178702558701

`A008578(n+1)-comp[A158611(n+1)]`
-/

namespace A014238.P14496151178702558701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A014238.P14496151178702558701

namespace A014238

/-- `A008578(n+1)-comp[A158611(n+1)]` -/
def P14496151178702558701.Spec : Prop :=
  ∀ n, P14496151178702558701.a n = A014238 (n + 1)

end A014238

/-! ## A014238.P1549011848749029543

`A008578(n+1)-(A072668(n+1)+1)`
-/

namespace A014238.P1549011848749029543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - (A072668 (n + 1) + 1)

end

end A014238.P1549011848749029543

namespace A014238

/-- `A008578(n+1)-(A072668(n+1)+1)` -/
def P1549011848749029543.Spec : Prop :=
  ∀ n, P1549011848749029543.a n = A014238 (n + 1)

end A014238

/-! ## A014238.P12826030248407307362

`A008578(n+1)+1-A079696(n+1)`
-/

namespace A014238.P12826030248407307362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + (1 - A079696 (n + 1))

end

end A014238.P12826030248407307362

namespace A014238

/-- `A008578(n+1)+1-A079696(n+1)` -/
def P12826030248407307362.Spec : Prop :=
  ∀ n, P12826030248407307362.a n = A014238 (n + 1)

end A014238

/-! ## A014238.P15859771035418452144

`A022798(n+1)-2*A002808(n+1)`
-/

namespace A014238.P15859771035418452144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022798 (n + 1) - 2 * A002808 (n + 1)

end

end A014238.P15859771035418452144

namespace A014238

/-- `A022798(n+1)-2*A002808(n+1)` -/
def P15859771035418452144.Spec : Prop :=
  ∀ n, P15859771035418452144.a n = A014238 (n + 1)

end A014238

/-! ## A014238.P16226433364713038642

`2*A008578(n+1)-A022798(n+1)`
-/

namespace A014238.P16226433364713038642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008578 (n + 1) - A022798 (n + 1)

end

end A014238.P16226433364713038642

namespace A014238

/-- `2*A008578(n+1)-A022798(n+1)` -/
def P16226433364713038642.Spec : Prop :=
  ∀ n, P16226433364713038642.a n = A014238 (n + 1)

end A014238

/-! ## A014238.P17219507043254553836

`A001747(n+1)/2-A002808(n+1)`
-/

namespace A014238.P17219507043254553836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (n + 1) : ℚ) / 2 - (A002808 (n + 1) : ℚ)

end

end A014238.P17219507043254553836

namespace A014238

/-- `A001747(n+1)/2-A002808(n+1)` -/
def P17219507043254553836.Spec : Prop :=
  ∀ n, P17219507043254553836.a n = (A014238 (n + 1) : ℚ)

end A014238

/-! ## A014238.P13388948914755258860

`A167136(n+1)-(A002808(n+1)+n)`
-/

namespace A014238.P13388948914755258860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167136 (n + 1) - (A002808 (n + 1) + (n : ℤ))

end

end A014238.P13388948914755258860

namespace A014238

/-- `A167136(n+1)-(A002808(n+1)+n)` -/
def P13388948914755258860.Spec : Prop :=
  ∀ n, P13388948914755258860.a n = A014238 (n + 1)

end A014238

/-!
# A014239: Inverse of 230th cyclotomic polynomial.

The programs for A014239, there is no canonical definition to state claims against.
-/

/-! ## A014239.P11469144301473720866

`A014124(n)*A033999(n)`
-/

namespace A014239.P11469144301473720866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014124 n * A033999 n

end

end A014239.P11469144301473720866

/-!
# A014240: Inverse of 231st cyclotomic polynomial.

The programs for A014240, there is no canonical definition to state claims against.
-/

/-! ## A014240.P10734934586794938695

`A014471(n)*A033999(n)`
-/

namespace A014240.P10734934586794938695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014471 n * A033999 n

end

end A014240.P10734934586794938695

/-!
# A014241: a(n) = ((n+1)-st Fibonacci number) - (n-th non-Fibonacci number).

The programs for A014241, the canonical program `A014241.P6351505731176248955` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014241 has offset 1).

The definition of A014241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014241.P13472875991888328175

`A000045(n+2)-comp[A000045(n)]`
-/

namespace A014241.P13472875991888328175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A014241.P13472875991888328175

namespace A014241

/-- `A000045(n+2)-comp[A000045(n)]` -/
def P13472875991888328175.Spec : Prop :=
  ∀ n, P13472875991888328175.a n = A014241 (n + 1)

end A014241

/-! ## A014241.P9462111857630747934

`A212804(n+3)-comp[A212804(n)]`
-/

namespace A014241.P9462111857630747934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 3) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A014241.P9462111857630747934

namespace A014241

/-- `A212804(n+3)-comp[A212804(n)]` -/
def P9462111857630747934.Spec : Prop :=
  ∀ n, P9462111857630747934.a n = A014241 (n + 1)

end A014241

/-! ## A014241.P6351505731176248955

`A000045(n+2)-A001690(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014241

/-- `A000045(n+2)-A001690(n+1)` -/
def P6351505731176248955.Spec : Prop :=
  ∀ n, P6351505731176248955.a n = A014241 (n + 1)

theorem P6351505731176248955.correct : P6351505731176248955.Spec := by
  intro n
  simp only [A014241, Nat.add_sub_cancel]

end A014241

/-! ## A014241.P12575287162308495022

`A000071(n+2)-comp[A000071(n+1)]`
-/

namespace A014241.P12575287162308495022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A014241.P12575287162308495022

namespace A014241

/-- `A000071(n+2)-comp[A000071(n+1)]` -/
def P12575287162308495022.Spec : Prop :=
  ∀ n, P12575287162308495022.a n = A014241 (n + 1)

end A014241

/-! ## A014241.P13887469379423127791

`A053602(2*n+1)-comp[A053602(n)]`
-/

namespace A014241.P13887469379423127791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A014241.P13887469379423127791

namespace A014241

/-- `A053602(2*n+1)-comp[A053602(n)]` -/
def P13887469379423127791.Spec : Prop :=
  ∀ n, P13887469379423127791.a n = A014241 (n + 1)

end A014241

/-! ## A014241.P6808286078644976919

`A103609(2*(n+2))-comp[A103609(n)]`
-/

namespace A014241.P6808286078644976919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * (n + 2)) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A014241.P6808286078644976919

namespace A014241

/-- `A103609(2*(n+2))-comp[A103609(n)]` -/
def P6808286078644976919.Spec : Prop :=
  ∀ n, P6808286078644976919.a n = A014241 (n + 1)

end A014241

/-! ## A014241.P12255428895329839773

`A339572(2*n)-comp[A339572(2*n)]`
-/

namespace A014241.P12255428895329839773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339572 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339572 (2 * n) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A014241.P12255428895329839773

namespace A014241

/-- `A339572(2*n)-comp[A339572(2*n)]` -/
def P12255428895329839773.Spec : Prop :=
  ∀ n, P12255428895329839773.a n = A014241 (n + 1)

end A014241

/-! ## A014241.P10834071617957500088

`A105800(2*(n+2))-A001690(n+1)`
-/

namespace A014241.P10834071617957500088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105800 (2 * (n + 2)) - A001690 (n + 1)

end

end A014241.P10834071617957500088

namespace A014241

/-- `A105800(2*(n+2))-A001690(n+1)` -/
def P10834071617957500088.Spec : Prop :=
  ∀ n, P10834071617957500088.a n = A014241 (n + 1)

end A014241

/-! ## A014241.P15262302192457190439

`A001060(n)-A023484(n)`
-/

namespace A014241.P15262302192457190439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001060 n - A023484 n

end

end A014241.P15262302192457190439

namespace A014241

/-- `A001060(n)-A023484(n)` -/
def P15262302192457190439.Spec : Prop :=
  ∀ n, P15262302192457190439.a n = A014241 (n + 1)

end A014241

/-! ## A014241.P15705450571979258775

`A020701(n)-A023483(n+1)`
-/

namespace A014241.P15705450571979258775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n - A023483 (n + 1)

end

end A014241.P15705450571979258775

namespace A014241

/-- `A020701(n)-A023483(n+1)` -/
def P15705450571979258775.Spec : Prop :=
  ∀ n, P15705450571979258775.a n = A014241 (n + 1)

end A014241

/-! ## A014241.P16094045558689849402

`A014242(n+2)-A020695(n)`
-/

namespace A014241.P16094045558689849402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014242 (n + 2) - A020695 n

end

end A014241.P16094045558689849402

namespace A014241

/-- `A014242(n+2)-A020695(n)` -/
def P16094045558689849402.Spec : Prop :=
  ∀ n, P16094045558689849402.a n = A014241 (n + 1)

end A014241

/-! ## A014241.P13920219646476328753

`∑[A023488(n)-A023485(n+1)]`
-/

namespace A014241.P13920219646476328753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023488 n - A023485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014241.P13920219646476328753

namespace A014241

/-- `∑[A023488(n)-A023485(n+1)]` -/
def P13920219646476328753.Spec : Prop :=
  ∀ n, P13920219646476328753.a n = A014241 (n + 1)

end A014241

/-! ## A014241.P1428769787892800665

`A020695(n+1)-A023483(n+1)`
-/

namespace A014241.P1428769787892800665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (n + 1) - A023483 (n + 1)

end

end A014241.P1428769787892800665

namespace A014241

/-- `A020695(n+1)-A023483(n+1)` -/
def P1428769787892800665.Spec : Prop :=
  ∀ n, P1428769787892800665.a n = A014241 (n + 1)

end A014241

/-! ## A014241.P5553323835902778538

`A000045(n+1)+A000285(n)-A023484(n)`
-/

namespace A014241.P5553323835902778538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A000285 n - A023484 n)

end

end A014241.P5553323835902778538

namespace A014241

/-- `A000045(n+1)+A000285(n)-A023484(n)` -/
def P5553323835902778538.Spec : Prop :=
  ∀ n, P5553323835902778538.a n = A014241 (n + 1)

end A014241

/-! ## A014241.P5941220955592279428

`A023486(n)-(A023483(n+1)+A001690(n+1))`
-/

namespace A014241.P5941220955592279428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023486 n - (A023483 (n + 1) + A001690 (n + 1))

end

end A014241.P5941220955592279428

namespace A014241

/-- `A023486(n)-(A023483(n+1)+A001690(n+1))` -/
def P5941220955592279428.Spec : Prop :=
  ∀ n, P5941220955592279428.a n = A014241 (n + 1)

end A014241

/-! ## A014241.P11076509419529548996

`A022800(n+2)-(A023483(n+1)+A001690(n+1))`
-/

namespace A014241.P11076509419529548996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022800 (n + 2) - (A023483 (n + 1) + A001690 (n + 1))

end

end A014241.P11076509419529548996

namespace A014241

/-- `A022800(n+2)-(A023483(n+1)+A001690(n+1))` -/
def P11076509419529548996.Spec : Prop :=
  ∀ n, P11076509419529548996.a n = A014241 (n + 1)

end A014241

/-! ## A014241.P1669702022707431550

`A023483(n+2)-(A023483(n+1)+A001690(n+2))`
-/

namespace A014241.P1669702022707431550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023483 (n + 2) - (A023483 (n + 1) + A001690 (n + 2))

end

end A014241.P1669702022707431550

namespace A014241

/-- `A023483(n+2)-(A023483(n+1)+A001690(n+2))` -/
def P1669702022707431550.Spec : Prop :=
  ∀ n, P1669702022707431550.a n = A014241 (n + 1)

end A014241

/-! ## A014241.P17025399468644973703

`A078642(n+1)-A023485(n+1)`
-/

namespace A014241.P17025399468644973703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078642 (n + 1) - A023485 (n + 1)

end

end A014241.P17025399468644973703

namespace A014241

/-- `A078642(n+1)-A023485(n+1)` -/
def P17025399468644973703.Spec : Prop :=
  ∀ n, P17025399468644973703.a n = A014241 (n + 1)

end A014241

/-! ## A014241.P13555843437608452100

`A020695(n+1)+A020695(n+1)-A023488(n+1)`
-/

namespace A014241.P13555843437608452100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (n + 1) + (A020695 (n + 1) - A023488 (n + 1))

end

end A014241.P13555843437608452100

namespace A014241

/-- `A020695(n+1)+A020695(n+1)-A023488(n+1)` -/
def P13555843437608452100.Spec : Prop :=
  ∀ n, P13555843437608452100.a n = A014241 (n + 1)

end A014241

/-! ## A014241.P8341989214285363174

`A000285(n+2)-A023487(n)`
-/

namespace A014241.P8341989214285363174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 (n + 2) - A023487 n

end

end A014241.P8341989214285363174

namespace A014241

/-- `A000285(n+2)-A023487(n)` -/
def P8341989214285363174.Spec : Prop :=
  ∀ n, P8341989214285363174.a n = A014241 (n + 1)

end A014241

/-!
# A014242: (n-th Fibonacci number that is not 1) - (n-th number that is 1 or not a Fibonacci number).

The programs for A014242, the canonical program `A014242.P916885412522519883` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014242 has offset 1).

The definition of A014242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014242.P916885412522519883

`A000071(n+3)-comp[A000071(n+3)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014242

/-- `A000071(n+3)-comp[A000071(n+3)]` -/
def P916885412522519883.Spec : Prop :=
  ∀ n, P916885412522519883.a n = A014242 (n + 1)

theorem P916885412522519883.correct : P916885412522519883.Spec := by
  intro n
  simp only [A014242, Nat.add_sub_cancel]

end A014242

/-! ## A014242.P4150053473850581041

`∑[A000045(n+1)]-comp[∑[A000045(n+1)]]`
-/

namespace A014242.P4150053473850581041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

end

end A014242.P4150053473850581041

namespace A014242

/-- `∑[A000045(n+1)]-comp[∑[A000045(n+1)]]` -/
def P4150053473850581041.Spec : Prop :=
  ∀ n, P4150053473850581041.a n = A014242 (n + 1)

end A014242

/-! ## A014242.P6939203890288322950

`A020712(n)-A023488(n)`
-/

namespace A014242.P6939203890288322950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 n - A023488 n

end

end A014242.P6939203890288322950

namespace A014242

/-- `A020712(n)-A023488(n)` -/
def P6939203890288322950.Spec : Prop :=
  ∀ n, P6939203890288322950.a n = A014242 (n + 1)

end A014242

/-! ## A014242.P1731668462255183360

`A020695(n+2)-A023488(n)`
-/

namespace A014242.P1731668462255183360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (n + 2) - A023488 n

end

end A014242.P1731668462255183360

namespace A014242

/-- `A020695(n+2)-A023488(n)` -/
def P1731668462255183360.Spec : Prop :=
  ∀ n, P1731668462255183360.a n = A014242 (n + 1)

end A014242

/-! ## A014242.P6191125395589305995

`A078642(n+1)-A022800(n+1)`
-/

namespace A014242.P6191125395589305995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078642 (n + 1) - A022800 (n + 1)

end

end A014242.P6191125395589305995

namespace A014242

/-- `A078642(n+1)-A022800(n+1)` -/
def P6191125395589305995.Spec : Prop :=
  ∀ n, P6191125395589305995.a n = A014242 (n + 1)

end A014242

/-! ## A014242.P11203195695780027905

`A020701(n)+A020701(n)-A023489(n+1)`
-/

namespace A014242.P11203195695780027905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n + (A020701 n - A023489 (n + 1))

end

end A014242.P11203195695780027905

namespace A014242

/-- `A020701(n)+A020701(n)-A023489(n+1)` -/
def P11203195695780027905.Spec : Prop :=
  ∀ n, P11203195695780027905.a n = A014242 (n + 1)

end A014242

/-! ## A014242.P3000179652386222479

`A023488(n+1)-(A023488(n)+A001690(n+1))`
-/

namespace A014242.P3000179652386222479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023488 (n + 1) - (A023488 n + A001690 (n + 1))

end

end A014242.P3000179652386222479

namespace A014242

/-- `A023488(n+1)-(A023488(n)+A001690(n+1))` -/
def P3000179652386222479.Spec : Prop :=
  ∀ n, P3000179652386222479.a n = A014242 (n + 1)

end A014242

/-! ## A014242.P8197861039155490009

`A090991(n+1)-A023489(n+1)`
-/

namespace A014242.P8197861039155490009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090991 (n + 1) - A023489 (n + 1)

end

end A014242.P8197861039155490009

namespace A014242

/-- `A090991(n+1)-A023489(n+1)` -/
def P8197861039155490009.Spec : Prop :=
  ∀ n, P8197861039155490009.a n = A014242 (n + 1)

end A014242

/-! ## A014242.P11728031178097822906

`2*A020701(n)-A023489(n+1)`
-/

namespace A014242.P11728031178097822906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020701 n - A023489 (n + 1)

end

end A014242.P11728031178097822906

namespace A014242

/-- `2*A020701(n)-A023489(n+1)` -/
def P11728031178097822906.Spec : Prop :=
  ∀ n, P11728031178097822906.a n = A014242 (n + 1)

end A014242

/-! ## A014242.P11180300424713975017

`2*A000045(n+4)-A023489(n+1)`
-/

namespace A014242.P11180300424713975017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (n + 4) - A023489 (n + 1)

end

end A014242.P11180300424713975017

namespace A014242

/-- `2*A000045(n+4)-A023489(n+1)` -/
def P11180300424713975017.Spec : Prop :=
  ∀ n, P11180300424713975017.a n = A014242 (n + 1)

end A014242

/-!
# A014243: a(n) = ((n+1)-st Lucas number) - (n-th non-Lucas number).

The programs for A014243, the canonical program `A014243.P1883141854948449702` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014243 has offset 1).

The definition of A014243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014243.P4267779412180644665

`A000032(n+2)-A057854(n+1)`
-/

namespace A014243.P4267779412180644665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 2) - A057854 (n + 1)

end

end A014243.P4267779412180644665

namespace A014243

/-- `A000032(n+2)-A057854(n+1)` -/
def P4267779412180644665.Spec : Prop :=
  ∀ n, P4267779412180644665.a n = A014243 (n + 1)

end A014243

/-! ## A014243.P724798693328874046

`A000204(n+2)-A057854(n+1)`
-/

namespace A014243.P724798693328874046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 2) - A057854 (n + 1)

end

end A014243.P724798693328874046

namespace A014243

/-- `A000204(n+2)-A057854(n+1)` -/
def P724798693328874046.Spec : Prop :=
  ∀ n, P724798693328874046.a n = A014243 (n + 1)

end A014243

/-! ## A014243.P1883141854948449702

`A000032(n+2)-A090946(n+3)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014243

/-- `A000032(n+2)-A090946(n+3)` -/
def P1883141854948449702.Spec : Prop :=
  ∀ n, P1883141854948449702.a n = A014243 (n + 1)

theorem P1883141854948449702.correct : P1883141854948449702.Spec := by
  intro n
  simp only [A014243, Nat.add_sub_cancel]

end A014243

/-! ## A014243.P2089368383215579266

`A000204(n+2)-A090946(n+3)`
-/

namespace A014243.P2089368383215579266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 2) - A090946 (n + 3)

end

end A014243.P2089368383215579266

namespace A014243

/-- `A000204(n+2)-A090946(n+3)` -/
def P2089368383215579266.Spec : Prop :=
  ∀ n, P2089368383215579266.a n = A014243 (n + 1)

end A014243

/-! ## A014243.P6284387749644205528

`A280699(2*(n+2))-A057854(n+1)`
-/

namespace A014243.P6284387749644205528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280699 (2 * (n + 2)) - A057854 (n + 1)

end

end A014243.P6284387749644205528

namespace A014243

/-- `A280699(2*(n+2))-A057854(n+1)` -/
def P6284387749644205528.Spec : Prop :=
  ∀ n, P6284387749644205528.a n = A014243 (n + 1)

end A014243

/-! ## A014243.P17014316093370854998

`A099925(n+1)+A099925(n)-A057854(n+1)`
-/

namespace A014243.P17014316093370854998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099925 (n + 1) + (A099925 n - A057854 (n + 1))

end

end A014243.P17014316093370854998

namespace A014243

/-- `A099925(n+1)+A099925(n)-A057854(n+1)` -/
def P17014316093370854998.Spec : Prop :=
  ∀ n, P17014316093370854998.a n = A014243 (n + 1)

end A014243

/-! ## A014243.P2918620267781670081

`A023493(n)-(A090946(n+2)+A057854(n+1))`
-/

namespace A014243.P2918620267781670081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023493 n - (A090946 (n + 2) + A057854 (n + 1))

end

end A014243.P2918620267781670081

namespace A014243

/-- `A023493(n)-(A090946(n+2)+A057854(n+1))` -/
def P2918620267781670081.Spec : Prop :=
  ∀ n, P2918620267781670081.a n = A014243 (n + 1)

end A014243

/-! ## A014243.P6662610231298255841

`A022801(n+2)-(A057854(n+1)+A057854(n+1))`
-/

namespace A014243.P6662610231298255841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022801 (n + 2) - (A057854 (n + 1) + A057854 (n + 1))

end

end A014243.P6662610231298255841

namespace A014243

/-- `A022801(n+2)-(A057854(n+1)+A057854(n+1))` -/
def P6662610231298255841.Spec : Prop :=
  ∀ n, P6662610231298255841.a n = A014243 (n + 1)

end A014243

/-! ## A014243.P12609887785685492903

`A000204(n+2)+A000204(n+2)-A022801(n+2)`
-/

namespace A014243.P12609887785685492903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 2) + (A000204 (n + 2) - A022801 (n + 2))

end

end A014243.P12609887785685492903

namespace A014243

/-- `A000204(n+2)+A000204(n+2)-A022801(n+2)` -/
def P12609887785685492903.Spec : Prop :=
  ∀ n, P12609887785685492903.a n = A014243 (n + 1)

end A014243

/-! ## A014243.P15126218115055322813

`2*A000204(n+2)-A022801(n+2)`
-/

namespace A014243.P15126218115055322813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000204 (n + 2) - A022801 (n + 2)

end

end A014243.P15126218115055322813

namespace A014243

/-- `2*A000204(n+2)-A022801(n+2)` -/
def P15126218115055322813.Spec : Prop :=
  ∀ n, P15126218115055322813.a n = A014243 (n + 1)

end A014243

/-! ## A014243.P10116820132999830643

`A023495(n)-(A057854(n+1)+A022801(n+1))`
-/

namespace A014243.P10116820132999830643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023495 n - (A057854 (n + 1) + A022801 (n + 1))

end

end A014243.P10116820132999830643

namespace A014243

/-- `A023495(n)-(A057854(n+1)+A022801(n+1))` -/
def P10116820132999830643.Spec : Prop :=
  ∀ n, P10116820132999830643.a n = A014243 (n + 1)

end A014243

/-! ## A014243.P2935176858539708336

`A000285(n+1)-(A057854(n+1)+A000045(n+1))`
-/

namespace A014243.P2935176858539708336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 (n + 1) - (A057854 (n + 1) + A000045 (n + 1))

end

end A014243.P2935176858539708336

namespace A014243

/-- `A000285(n+1)-(A057854(n+1)+A000045(n+1))` -/
def P2935176858539708336.Spec : Prop :=
  ∀ n, P2935176858539708336.a n = A014243 (n + 1)

end A014243

/-! ## A014243.P15294959488946034092

`A000204(n+4)-A023493(n+1)`
-/

namespace A014243.P15294959488946034092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 4) - A023493 (n + 1)

end

end A014243.P15294959488946034092

namespace A014243

/-- `A000204(n+4)-A023493(n+1)` -/
def P15294959488946034092.Spec : Prop :=
  ∀ n, P15294959488946034092.a n = A014243 (n + 1)

end A014243

/-! ## A014243.P15411171262414512830

`A023497(n+1)-(A023491(n+1)+A023490(n))`
-/

namespace A014243.P15411171262414512830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023497 (n + 1) - (A023491 (n + 1) + A023490 n)

end

end A014243.P15411171262414512830

namespace A014243

/-- `A023497(n+1)-(A023491(n+1)+A023490(n))` -/
def P15411171262414512830.Spec : Prop :=
  ∀ n, P15411171262414512830.a n = A014243 (n + 1)

end A014243

/-! ## A014243.P6373883780134100063

`A023495(n+1)-(A057854(n+1)+A023493(n+1))`
-/

namespace A014243.P6373883780134100063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023495 (n + 1) - (A057854 (n + 1) + A023493 (n + 1))

end

end A014243.P6373883780134100063

namespace A014243

/-- `A023495(n+1)-(A057854(n+1)+A023493(n+1))` -/
def P6373883780134100063.Spec : Prop :=
  ∀ n, P6373883780134100063.a n = A014243 (n + 1)

end A014243

/-! ## A014243.P6251284831071013023

`A023497(n+1)-(A022801(n+1)+A022801(n+2))`
-/

namespace A014243.P6251284831071013023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023497 (n + 1) - (A022801 (n + 1) + A022801 (n + 2))

end

end A014243.P6251284831071013023

namespace A014243

/-- `A023497(n+1)-(A022801(n+1)+A022801(n+2))` -/
def P6251284831071013023.Spec : Prop :=
  ∀ n, P6251284831071013023.a n = A014243 (n + 1)

end A014243

/-! ## A014243.P16574390676843012364

`A206417(n+2)-(A206417(n+1)+A057854(n+1))`
-/

namespace A014243.P16574390676843012364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206417 (n + 2) - (A206417 (n + 1) + A057854 (n + 1))

end

end A014243.P16574390676843012364

namespace A014243

/-- `A206417(n+2)-(A206417(n+1)+A057854(n+1))` -/
def P16574390676843012364.Spec : Prop :=
  ∀ n, P16574390676843012364.a n = A014243 (n + 1)

end A014243

/-! ## A014243.P11742022745459283457

`A022388(n+1)-(A023495(n+1)+A000204(n+2))`
-/

namespace A014243.P11742022745459283457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022388 (n + 1) - (A023495 (n + 1) + A000204 (n + 2))

end

end A014243.P11742022745459283457

namespace A014243

/-- `A022388(n+1)-(A023495(n+1)+A000204(n+2))` -/
def P11742022745459283457.Spec : Prop :=
  ∀ n, P11742022745459283457.a n = A014243 (n + 1)

end A014243

/-!
# A014244: (n-th Lucas number that is not 1) - (n-th number that is 1 or not a Lucas number).

The programs for A014244, the canonical program `A014244.P4790413058910627537` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014244 has offset 1).

The definition of A014244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014244.P10991504389029959319

`A288219(n)-A090946(n+1)`
-/

namespace A014244.P10991504389029959319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288219 n - A090946 (n + 1)

end

end A014244.P10991504389029959319

namespace A014244

/-- `A288219(n)-A090946(n+1)` -/
def P10991504389029959319.Spec : Prop :=
  ∀ n, P10991504389029959319.a n = A014244 (n + 1)

end A014244

/-! ## A014244.P4790413058910627537

`A288219(n)-comp[A000204(n+1)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014244

/-- `A288219(n)-comp[A000204(n+1)]` -/
def P4790413058910627537.Spec : Prop :=
  ∀ n, P4790413058910627537.a n = A014244 (n + 1)

theorem P4790413058910627537.correct : P4790413058910627537.Spec := by
  intro n
  simp only [A014244, Nat.add_sub_cancel]

end A014244

/-! ## A014244.P9703727575748666735

`∑[A000032(n)]-comp[∑[A000032(n)]]`
-/

namespace A014244.P9703727575748666735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

end

end A014244.P9703727575748666735

namespace A014244

/-- `∑[A000032(n)]-comp[∑[A000032(n)]]` -/
def P9703727575748666735.Spec : Prop :=
  ∀ n, P9703727575748666735.a n = A014244 (n + 1)

end A014244

/-! ## A014244.P1203346100619019

`A001610(n+1)-comp[A001610(n+1)]`
-/

namespace A014244.P1203346100619019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A014244.P1203346100619019

namespace A014244

/-- `A001610(n+1)-comp[A001610(n+1)]` -/
def P1203346100619019.Spec : Prop :=
  ∀ n, P1203346100619019.a n = A014244 (n + 1)

end A014244

/-! ## A014244.P8355204692006114507

`A000204(n+2)+A000204(n+2)-A022802(n+1)`
-/

namespace A014244.P8355204692006114507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 2) + (A000204 (n + 2) - A022802 (n + 1))

end

end A014244.P8355204692006114507

namespace A014244

/-- `A000204(n+2)+A000204(n+2)-A022802(n+1)` -/
def P8355204692006114507.Spec : Prop :=
  ∀ n, P8355204692006114507.a n = A014244 (n + 1)

end A014244

/-! ## A014244.P18430699536213195690

`A022112(n+1)-A022802(n+1)`
-/

namespace A014244.P18430699536213195690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 (n + 1) - A022802 (n + 1)

end

end A014244.P18430699536213195690

namespace A014244

/-- `A022112(n+1)-A022802(n+1)` -/
def P18430699536213195690.Spec : Prop :=
  ∀ n, P18430699536213195690.a n = A014244 (n + 1)

end A014244

/-! ## A014244.P6005838892809266587

`A288219(n+2)-A023497(n)`
-/

namespace A014244.P6005838892809266587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288219 (n + 2) - A023497 n

end

end A014244.P6005838892809266587

namespace A014244

/-- `A288219(n+2)-A023497(n)` -/
def P6005838892809266587.Spec : Prop :=
  ∀ n, P6005838892809266587.a n = A014244 (n + 1)

end A014244

/-! ## A014244.P8895812466196300252

`A000204(n+4)-A023497(n)`
-/

namespace A014244.P8895812466196300252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 4) - A023497 n

end

end A014244.P8895812466196300252

namespace A014244

/-- `A000204(n+4)-A023497(n)` -/
def P8895812466196300252.Spec : Prop :=
  ∀ n, P8895812466196300252.a n = A014244 (n + 1)

end A014244

/-! ## A014244.P11141117786841267402

`A023497(n+1)-(A090946(n+2)+A023497(n))`
-/

namespace A014244.P11141117786841267402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023497 (n + 1) - (A090946 (n + 2) + A023497 n)

end

end A014244.P11141117786841267402

namespace A014244

/-- `A023497(n+1)-(A090946(n+2)+A023497(n))` -/
def P11141117786841267402.Spec : Prop :=
  ∀ n, P11141117786841267402.a n = A014244 (n + 1)

end A014244

/-!
# A014245: a(n) = (n-th term of Beatty sequence for (3+sqrt(3))/2) - (n-th term of Beatty sequence for sqrt(3)).

The programs for A014245, the canonical program `A014245.P12017052875388720201` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014245 has offset 1).

The definition of A014245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014245.P16586447520806838271

`ceil(floor((n+1)*(3-sqrt(3)))/2)`
-/

namespace A014245.P16586447520806838271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌊(n + 1 : ℝ) * (3 - Real.sqrt (3 : ℝ))⌋ : ℚ) / 2⌉

end

end A014245.P16586447520806838271

namespace A014245

/-- `ceil(floor((n+1)*(3-sqrt(3)))/2)` -/
def P16586447520806838271.Spec : Prop :=
  ∀ n, P16586447520806838271.a n = A014245 (n + 1)

end A014245

/-! ## A014245.P12017052875388720201

`floor(∑[n+1]/(n+1-a(n-1)/3))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014245

/-- `floor(∑[n+1]/(n+1-a(n-1)/3))` -/
def P12017052875388720201.Spec : Prop :=
  ∀ n, P12017052875388720201.a n = A014245 (n + 1)

theorem P12017052875388720201.correct : P12017052875388720201.Spec := by
  intro n
  simp only [A014245, Nat.add_sub_cancel]

end A014245

/-! ## A014245.P6993929959089084717

`A189407(n+1)-n`
-/

namespace A014245.P6993929959089084717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189407 (n + 1) - (n : ℤ)

end

end A014245.P6993929959089084717

namespace A014245

/-- `A189407(n+1)-n` -/
def P6993929959089084717.Spec : Prop :=
  ∀ n, P6993929959089084717.a n = A014245 (n + 1)

end A014245

/-! ## A014245.P16029488362571758295

`∑[1-char[A003511(2*n+1)]]`
-/

namespace A014245.P16029488362571758295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (2 * n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014245.P16029488362571758295

namespace A014245

/-- `∑[1-char[A003511(2*n+1)]]` -/
def P16029488362571758295.Spec : Prop :=
  ∀ n, P16029488362571758295.a n = A014245 (n + 1)

end A014245

/-! ## A014245.P16815852473852468391

`floor((4*(n+1)+n+1)%A003512(n+1)/2)`
-/

namespace A014245.P16815852473852468391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.tmod (4 * (n + 1) + (n + 1) : ℤ) (A003512 (n + 1)) : ℚ) / 2⌋

end

end A014245.P16815852473852468391

namespace A014245

/-- `floor((4*(n+1)+n+1)%A003512(n+1)/2)` -/
def P16815852473852468391.Spec : Prop :=
  ∀ n, P16815852473852468391.a n = A014245 (n + 1)

end A014245

/-! ## A014245.P12401990171060353844

`A054406(n+1)-∑[A080757(n)]`
-/

namespace A014245.P12401990171060353844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080757 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014245.P12401990171060353844

namespace A014245

/-- `A054406(n+1)-∑[A080757(n)]` -/
def P12401990171060353844.Spec : Prop :=
  ∀ n, P12401990171060353844.a n = A014245 (n + 1)

end A014245

/-! ## A014245.P5184637358485300399

`A054406(n+1)-A022838(n+1)`
-/

namespace A014245.P5184637358485300399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1) - A022838 (n + 1)

end

end A014245.P5184637358485300399

namespace A014245

/-- `A054406(n+1)-A022838(n+1)` -/
def P5184637358485300399.Spec : Prop :=
  ∀ n, P5184637358485300399.a n = A014245 (n + 1)

end A014245

/-! ## A014245.P12887062099805487864

`A182777(n+1)-A074065(n+1)`
-/

namespace A014245.P12887062099805487864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182777 (n + 1) - A074065 (n + 1)

end

end A014245.P12887062099805487864

namespace A014245

/-- `A182777(n+1)-A074065(n+1)` -/
def P12887062099805487864.Spec : Prop :=
  ∀ n, P12887062099805487864.a n = A014245 (n + 1)

end A014245

/-! ## A014245.P10769986146064565388

`A189406(n+1)%A054088(n+1)`
-/

namespace A014245.P10769986146064565388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189406 (n + 1)) (A054088 (n + 1))

end

end A014245.P10769986146064565388

namespace A014245

/-- `A189406(n+1)%A054088(n+1)` -/
def P10769986146064565388.Spec : Prop :=
  ∀ n, P10769986146064565388.a n = A014245 (n + 1)

end A014245

/-! ## A014245.P3201740893822920958

`A003511(n+1)+∑[1-A080757(n)]`
-/

namespace A014245.P3201740893822920958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A080757 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014245.P3201740893822920958

namespace A014245

/-- `A003511(n+1)+∑[1-A080757(n)]` -/
def P3201740893822920958.Spec : Prop :=
  ∀ n, P3201740893822920958.a n = A014245 (n + 1)

end A014245

/-! ## A014245.P17570190273985987621

`A022805(n+1)-2*A022838(n+1)`
-/

namespace A014245.P17570190273985987621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022805 (n + 1) - 2 * A022838 (n + 1)

end

end A014245.P17570190273985987621

namespace A014245

/-- `A022805(n+1)-2*A022838(n+1)` -/
def P17570190273985987621.Spec : Prop :=
  ∀ n, P17570190273985987621.a n = A014245 (n + 1)

end A014245

/-! ## A014245.P6992991746262443066

`2*A054406(n+1)-A022805(n+1)`
-/

namespace A014245.P6992991746262443066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054406 (n + 1) - A022805 (n + 1)

end

end A014245.P6992991746262443066

namespace A014245

/-- `2*A054406(n+1)-A022805(n+1)` -/
def P6992991746262443066.Spec : Prop :=
  ∀ n, P6992991746262443066.a n = A014245 (n + 1)

end A014245

/-! ## A014245.P10297589157787099753

`A188070(n+1)-A022838(n+1)+n`
-/

namespace A014245.P10297589157787099753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188070 (n + 1) - A022838 (n + 1) + (n : ℤ)

end

end A014245.P10297589157787099753

namespace A014245

/-- `A188070(n+1)-A022838(n+1)+n` -/
def P10297589157787099753.Spec : Prop :=
  ∀ n, P10297589157787099753.a n = A014245 (n + 1)

end A014245

/-! ## A014245.P144223609867581586

`n+1-A004526(A022838(n+1)-n)`
-/

namespace A014245.P144223609867581586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A004526 (A022838 (n + 1) - (n : ℤ)).toNat

end

end A014245.P144223609867581586

namespace A014245

/-- `n+1-A004526(A022838(n+1)-n)` -/
def P144223609867581586.Spec : Prop :=
  ∀ n, P144223609867581586.a n = A014245 (n + 1)

end A014245

/-! ## A014245.P16913307268940052227

`A003511(n+1)+∑[2-A007538(n+1)]`
-/

namespace A014245.P16913307268940052227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A007538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014245.P16913307268940052227

namespace A014245

/-- `A003511(n+1)+∑[2-A007538(n+1)]` -/
def P16913307268940052227.Spec : Prop :=
  ∀ n, P16913307268940052227.a n = A014245 (n + 1)

end A014245

/-! ## A014245.P9193330648887584489

`A188070(n+1)-A215781(n+1)`
-/

namespace A014245.P9193330648887584489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188070 (n + 1) - A215781 (n + 1)

end

end A014245.P9193330648887584489

namespace A014245

/-- `A188070(n+1)-A215781(n+1)` -/
def P9193330648887584489.Spec : Prop :=
  ∀ n, P9193330648887584489.a n = A014245 (n + 1)

end A014245

/-! ## A014245.P11552753151221833407

`A004526(A182777(n+1)-1)+1`
-/

namespace A014245.P11552753151221833407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A182777 (n + 1) - 1).toNat + 1

end

end A014245.P11552753151221833407

namespace A014245

/-- `A004526(A182777(n+1)-1)+1` -/
def P11552753151221833407.Spec : Prop :=
  ∀ n, P11552753151221833407.a n = A014245 (n + 1)

end A014245

/-! ## A014245.P15228612083006736501

`A065033(A182777(n+1))`
-/

namespace A014245.P15228612083006736501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A182777 (n + 1)).toNat

end

end A014245.P15228612083006736501

namespace A014245

/-- `A065033(A182777(n+1))` -/
def P15228612083006736501.Spec : Prop :=
  ∀ n, P15228612083006736501.a n = A014245 (n + 1)

end A014245

/-! ## A014245.P1600382612774719105

`A004526(∑[3-A080757(n)])`
-/

namespace A014245.P1600382612774719105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A080757 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A014245.P1600382612774719105

namespace A014245

/-- `A004526(∑[3-A080757(n)])` -/
def P1600382612774719105.Spec : Prop :=
  ∀ n, P1600382612774719105.a n = A014245 (n + 1)

end A014245

/-!
# A014246: a(n) = (n-th term of Beatty sequence for e) - (n-th term of Beatty sequence for e/(e-1)).

The programs for A014246, the canonical program `A014246.P10682755400879158977` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014246 has offset 1).

The definition of A014246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014246.P10682755400879158977

`A022843(n+1)-comp[A022843(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014246

/-- `A022843(n+1)-comp[A022843(n)]` -/
def P10682755400879158977.Spec : Prop :=
  ∀ n, P10682755400879158977.a n = A014246 (n + 1)

theorem P10682755400879158977.correct : P10682755400879158977.Spec := by
  intro n
  simp only [A014246, Nat.add_sub_cancel]

end A014246

/-! ## A014246.P5358610291870056200

`A022843(n+1)-A054385(n+1)`
-/

namespace A014246.P5358610291870056200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n + 1) - A054385 (n + 1)

end

end A014246.P5358610291870056200

namespace A014246

/-- `A022843(n+1)-A054385(n+1)` -/
def P5358610291870056200.Spec : Prop :=
  ∀ n, P5358610291870056200.a n = A014246 (n + 1)

end A014246

/-! ## A014246.P1616085341149386435

`A000572(n+1)-A292664(n+1)`
-/

namespace A014246.P1616085341149386435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000572 (n + 1) - A292664 (n + 1)

end

end A014246.P1616085341149386435

namespace A014246

/-- `A000572(n+1)-A292664(n+1)` -/
def P1616085341149386435.Spec : Prop :=
  ∀ n, P1616085341149386435.a n = A014246 (n + 1)

end A014246

/-! ## A014246.P13240660963261005135

`∑[A276859(n+1)]-A054385(n+1)`
-/

namespace A014246.P13240660963261005135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A054385 (n + 1)

end

end A014246.P13240660963261005135

namespace A014246

/-- `∑[A276859(n+1)]-A054385(n+1)` -/
def P13240660963261005135.Spec : Prop :=
  ∀ n, P13240660963261005135.a n = A014246 (n + 1)

end A014246

/-! ## A014246.P16075655378992692850

`A184589(n+1)-comp[A184589(n+1)]`
-/

namespace A014246.P16075655378992692850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184589 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184589 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A014246.P16075655378992692850

namespace A014246

/-- `A184589(n+1)-comp[A184589(n+1)]` -/
def P16075655378992692850.Spec : Prop :=
  ∀ n, P16075655378992692850.a n = A014246 (n + 1)

end A014246

/-! ## A014246.P10589713843459111395

`A022806(n+1)-2*A054385(n+1)`
-/

namespace A014246.P10589713843459111395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022806 (n + 1) - 2 * A054385 (n + 1)

end

end A014246.P10589713843459111395

namespace A014246

/-- `A022806(n+1)-2*A054385(n+1)` -/
def P10589713843459111395.Spec : Prop :=
  ∀ n, P10589713843459111395.a n = A014246 (n + 1)

end A014246

/-! ## A014246.P10888618359565202275

`A022843(n+1)+A022843(n+1)-A022806(n+1)`
-/

namespace A014246.P10888618359565202275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n + 1) + (A022843 (n + 1) - A022806 (n + 1))

end

end A014246.P10888618359565202275

namespace A014246

/-- `A022843(n+1)+A022843(n+1)-A022806(n+1)` -/
def P10888618359565202275.Spec : Prop :=
  ∀ n, P10888618359565202275.a n = A014246 (n + 1)

end A014246

/-! ## A014246.P15040103995971564812

`A121384(n+1)-(A054385(n+1)+1)`
-/

namespace A014246.P15040103995971564812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121384 (n + 1) - (A054385 (n + 1) + 1)

end

end A014246.P15040103995971564812

namespace A014246

/-- `A121384(n+1)-(A054385(n+1)+1)` -/
def P15040103995971564812.Spec : Prop :=
  ∀ n, P15040103995971564812.a n = A014246 (n + 1)

end A014246

/-! ## A014246.P7044347951534090573

`A276853(n+1)-(A054385(n+1)+A022852(n+1))`
-/

namespace A014246.P7044347951534090573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276853 (n + 1) - (A054385 (n + 1) + A022852 (n + 1))

end

end A014246.P7044347951534090573

namespace A014246

/-- `A276853(n+1)-(A054385(n+1)+A022852(n+1))` -/
def P7044347951534090573.Spec : Prop :=
  ∀ n, P7044347951534090573.a n = A014246 (n + 1)

end A014246

/-! ## A014246.P14410536845646292990

`record[A108599(n+1)]-A054385(n+1)`
-/

namespace A014246.P14410536845646292990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A054385 (n + 1)

end

end A014246.P14410536845646292990

namespace A014246

/-- `record[A108599(n+1)]-A054385(n+1)` -/
def P14410536845646292990.Spec : Prop :=
  ∀ n, P14410536845646292990.a n = A014246 (n + 1)

end A014246

/-! ## A014246.P7047156949796790600

`A054385(A000210(n+1))+1-A054385(n+1)`
-/

namespace A014246.P7047156949796790600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (A000210 (n + 1)).toNat + (1 - A054385 (n + 1))

end

end A014246.P7047156949796790600

namespace A014246

/-- `A054385(A000210(n+1))+1-A054385(n+1)` -/
def P7047156949796790600.Spec : Prop :=
  ∀ n, P7047156949796790600.a n = A014246 (n + 1)

end A014246

/-! ## A014246.P12620368920576478646

`A000210(n+1)+Δ[A002378(n)]-A292664(n+1)`
-/

namespace A014246.P12620368920576478646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000210 (n + 1) + (f1 (n + 1) - f1 n - A292664 (n + 1))

end

end A014246.P12620368920576478646

namespace A014246

/-- `A000210(n+1)+Δ[A002378(n)]-A292664(n+1)` -/
def P12620368920576478646.Spec : Prop :=
  ∀ n, P12620368920576478646.a n = A014246 (n + 1)

end A014246

/-!
# A014247: Inverse of 238th cyclotomic polynomial.

The programs for A014247, there is no canonical definition to state claims against.
-/

/-! ## A014247.P8411440690914926996

`A014128(n)*A033999(n)`
-/

namespace A014247.P8411440690914926996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014128 n * A033999 n

end

end A014247.P8411440690914926996

/-!
# A014248: a(n) = b(n) - c(n) where b(n) = [ n*(sqrt(2)+sqrt(3)) ] and c(n) is the n-th number not in sequence b( ).

The programs for A014248, the canonical program `A014248.P196610579621516592` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014248 has offset 1).

The definition of A014248 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110117, A110118, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A014248.P196610579621516592

`A110117(n+1)-A110118(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014248

/-- `A110117(n+1)-A110118(n+1)` -/
def P196610579621516592.Spec : Prop :=
  ∀ n, P196610579621516592.a n = A014248 (n + 1)

theorem P196610579621516592.correct : P196610579621516592.Spec := by
  intro n
  simp only [A014248, Nat.add_sub_cancel]

end A014248

/-! ## A014248.P8995165004604358161

`∑[A276870(n+1)]-A110118(n+1)`
-/

namespace A014248.P8995165004604358161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A110118 (n + 1)

end

end A014248.P8995165004604358161

namespace A014248

/-- `∑[A276870(n+1)]-A110118(n+1)` -/
def P8995165004604358161.Spec : Prop :=
  ∀ n, P8995165004604358161.a n = A014248 (n + 1)

end A014248

/-! ## A014248.P11296004926081438031

`A187385(n+1)-(A110118(n+1)+n+1)`
-/

namespace A014248.P11296004926081438031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187385 (n + 1) - (A110118 (n + 1) + (n + 1 : ℤ))

end

end A014248.P11296004926081438031

namespace A014248

/-- `A187385(n+1)-(A110118(n+1)+n+1)` -/
def P11296004926081438031.Spec : Prop :=
  ∀ n, P11296004926081438031.a n = A014248 (n + 1)

end A014248

/-! ## A014248.P15148668357138401676

`A189527(n+1)-(A187386(n+1)+A110118(n+1))`
-/

namespace A014248.P15148668357138401676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189527 (n + 1) - (A187386 (n + 1) + A110118 (n + 1))

end

end A014248.P15148668357138401676

namespace A014248

/-- `A189527(n+1)-(A187386(n+1)+A110118(n+1))` -/
def P15148668357138401676.Spec : Prop :=
  ∀ n, P15148668357138401676.a n = A014248 (n + 1)

end A014248

/-! ## A014248.P16852858194136299885

`record[A110119(n+1)-(n+1)]`
-/

namespace A014248.P16852858194136299885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110119 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014248.P16852858194136299885

namespace A014248

/-- `record[A110119(n+1)-(n+1)]` -/
def P16852858194136299885.Spec : Prop :=
  ∀ n, P16852858194136299885.a n = A014248 (n + 1)

end A014248

/-! ## A014248.P14868464888683173452

`∑[A276870(n+1)]-A138251(n+1)`
-/

namespace A014248.P14868464888683173452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A138251 (n + 1)

end

end A014248.P14868464888683173452

namespace A014248

/-- `∑[A276870(n+1)]-A138251(n+1)` -/
def P14868464888683173452.Spec : Prop :=
  ∀ n, P14868464888683173452.a n = A014248 (n + 1)

end A014248

/-!
# A014249: a(n) = b(n) - c(n) where b(n) = [n*sqrt(2)] + [n*sqrt(3)] and c(n) is the n-th number not in sequence b.

The programs for A014249, the canonical program `A014249.P16072168961144745307` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014249 has offset 1).

The definition of A014249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014249.P16072168961144745307

`A329791(n+1)-comp[A329791(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014249

/-- `A329791(n+1)-comp[A329791(n)]` -/
def P16072168961144745307.Spec : Prop :=
  ∀ n, P16072168961144745307.a n = A014249 (n + 1)

theorem P16072168961144745307.correct : P16072168961144745307.Spec := by
  intro n
  simp only [A014249, Nat.add_sub_cancel]

end A014249

/-! ## A014249.P17246968806906763470

`A330113(A054088(n+1))-A182773(n+1)`
-/

namespace A014249.P17246968806906763470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330113 (A054088 (n + 1)).toNat - A182773 (n + 1)

end

end A014249.P17246968806906763470

namespace A014249

/-- `A330113(A054088(n+1))-A182773(n+1)` -/
def P17246968806906763470.Spec : Prop :=
  ∀ n, P17246968806906763470.a n = A014249 (n + 1)

end A014249

/-! ## A014249.P11649782607001765404

`A003152(n+1)-A188093(A072828(n+1))`
-/

namespace A014249.P11649782607001765404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1) - A188093 (A072828 (n + 1)).toNat

end

end A014249.P11649782607001765404

namespace A014249

/-- `A003152(n+1)-A188093(A072828(n+1))` -/
def P11649782607001765404.Spec : Prop :=
  ∀ n, P11649782607001765404.a n = A014249 (n + 1)

end A014249

/-! ## A014249.P8368568751229097172

`A106701(A008864(2*n+3))+A083026(n+1)`
-/

namespace A014249.P8368568751229097172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106701 (A008864 (2 * n + 3)).toNat + A083026 (n + 1)

end

end A014249.P8368568751229097172

namespace A014249

/-- `A106701(A008864(2*n+3))+A083026(n+1)` -/
def P8368568751229097172.Spec : Prop :=
  ∀ n, P8368568751229097172.a n = A014249 (n + 1)

end A014249

/-!
# A014250: a(n) = b(n) - c(n) where b(n) = [ (3/2)^n ] and c(n) is the n-th number not in sequence b.

The programs for A014250, there is no canonical definition to state claims against.
-/

/-! ## A014250.P4813328721923648942

`A002379(n+1)+A002379(n+1)-A022808(n+1)`
-/

namespace A014250.P4813328721923648942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 (n + 1) + (A002379 (n + 1) - A022808 (n + 1))

end

end A014250.P4813328721923648942

/-!
# A014251: a(n) = b(n) - c(n) where b(n) is the n-th Fibonacci number greater than 2 and c(n) is the n-th number not in sequence b( ).

The programs for A014251, the canonical program `A014251.P12711182458160669696` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014251 has offset 1).

The definition of A014251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014251.P12711182458160669696

`A000071(n+4)-comp[A000071(n+4)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014251

/-- `A000071(n+4)-comp[A000071(n+4)]` -/
def P12711182458160669696.Spec : Prop :=
  ∀ n, P12711182458160669696.a n = A014251 (n + 1)

theorem P12711182458160669696.correct : P12711182458160669696.Spec := by
  intro n
  simp only [A014251, Nat.add_sub_cancel]

end A014251

/-! ## A014251.P6517622050092515185

`A339572(2*(n+2))-comp[A339572(2*(n+2))]`
-/

namespace A014251.P6517622050092515185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339572 (2 * (n + 2))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339572 (2 * (n + 2)) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A014251.P6517622050092515185

namespace A014251

/-- `A339572(2*(n+2))-comp[A339572(2*(n+2))]` -/
def P6517622050092515185.Spec : Prop :=
  ∀ n, P6517622050092515185.a n = A014251 (n + 1)

end A014251

/-! ## A014251.P10159393877779566884

`A020701(n)+A020701(n)-A022809(n+1)`
-/

namespace A014251.P10159393877779566884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n + (A020701 n - A022809 (n + 1))

end

end A014251.P10159393877779566884

namespace A014251

/-- `A020701(n)+A020701(n)-A022809(n+1)` -/
def P10159393877779566884.Spec : Prop :=
  ∀ n, P10159393877779566884.a n = A014251 (n + 1)

end A014251

/-! ## A014251.P13415072556289366508

`A090991(n+1)-A022809(n+1)`
-/

namespace A014251.P13415072556289366508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090991 (n + 1) - A022809 (n + 1)

end

end A014251.P13415072556289366508

namespace A014251

/-- `A090991(n+1)-A022809(n+1)` -/
def P13415072556289366508.Spec : Prop :=
  ∀ n, P13415072556289366508.a n = A014251 (n + 1)

end A014251

/-! ## A014251.P7231303132141715788

`2*A020701(n)-A022809(n+1)`
-/

namespace A014251.P7231303132141715788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020701 n - A022809 (n + 1)

end

end A014251.P7231303132141715788

namespace A014251

/-- `2*A020701(n)-A022809(n+1)` -/
def P7231303132141715788.Spec : Prop :=
  ∀ n, P7231303132141715788.a n = A014251 (n + 1)

end A014251

/-! ## A014251.P9479880598070331082

`(A090991(n+1)%A022809(n+1))%A020701(n)`
-/

namespace A014251.P9479880598070331082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A090991 (n + 1)) (A022809 (n + 1))) (A020701 n)

end

end A014251.P9479880598070331082

namespace A014251

/-- `(A090991(n+1)%A022809(n+1))%A020701(n)` -/
def P9479880598070331082.Spec : Prop :=
  ∀ n, P9479880598070331082.a n = A014251 (n + 1)

end A014251

/-! ## A014251.P1948915125401809934

`Δ[A090991(n+2)]%A022809(n+1)`
-/

namespace A014251.P1948915125401809934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090991 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A022809 (n + 1))

end

end A014251.P1948915125401809934

namespace A014251

/-- `Δ[A090991(n+2)]%A022809(n+1)` -/
def P1948915125401809934.Spec : Prop :=
  ∀ n, P1948915125401809934.a n = A014251 (n + 1)

end A014251

/-!
# A014252: a(n) = b(n) - c(n) where b(n) is the n-th Lucas number greater than 3 and c(n) is the n-th number not in sequence b( ).

The programs for A014252, the canonical program `A014252.P854871451725317973` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014252 has offset 1).

The definition of A014252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014252.P854871451725317973

`A001610(n+2)-comp[A001610(n+2)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014252

/-- `A001610(n+2)-comp[A001610(n+2)]` -/
def P854871451725317973.Spec : Prop :=
  ∀ n, P854871451725317973.a n = A014252 (n + 1)

theorem P854871451725317973.correct : P854871451725317973.Spec := by
  intro n
  simp only [A014252, Nat.add_sub_cancel]

end A014252

/-! ## A014252.P4419598170460208201

`A122194(2*n+1)-comp[A122194(2*n+1)]`
-/

namespace A014252.P4419598170460208201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122194 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122194 (2 * n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A014252.P4419598170460208201

namespace A014252

/-- `A122194(2*n+1)-comp[A122194(2*n+1)]` -/
def P4419598170460208201.Spec : Prop :=
  ∀ n, P4419598170460208201.a n = A014252 (n + 1)

end A014252

/-! ## A014252.P13996294707361360686

`A020701(n)+A020701(n)-A023500(n)`
-/

namespace A014252.P13996294707361360686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n + (A020701 n - A023500 n)

end

end A014252.P13996294707361360686

namespace A014252

/-- `A020701(n)+A020701(n)-A023500(n)` -/
def P13996294707361360686.Spec : Prop :=
  ∀ n, P13996294707361360686.a n = A014252 (n + 1)

end A014252

/-! ## A014252.P13390786181295809114

`A090991(n+1)-A023500(n)`
-/

namespace A014252.P13390786181295809114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090991 (n + 1) - A023500 n

end

end A014252.P13390786181295809114

namespace A014252

/-- `A090991(n+1)-A023500(n)` -/
def P13390786181295809114.Spec : Prop :=
  ∀ n, P13390786181295809114.a n = A014252 (n + 1)

end A014252

/-! ## A014252.P486945358211776190

`A000285(n+2)-A023499(n)`
-/

namespace A014252.P486945358211776190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 (n + 2) - A023499 n

end

end A014252.P486945358211776190

namespace A014252

/-- `A000285(n+2)-A023499(n)` -/
def P486945358211776190.Spec : Prop :=
  ∀ n, P486945358211776190.a n = A014252 (n + 1)

end A014252

/-! ## A014252.P16447355631221330422

`A078642(n+2)-A023500(n)`
-/

namespace A014252.P16447355631221330422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078642 (n + 2) - A023500 n

end

end A014252.P16447355631221330422

namespace A014252

/-- `A078642(n+2)-A023500(n)` -/
def P16447355631221330422.Spec : Prop :=
  ∀ n, P16447355631221330422.a n = A014252 (n + 1)

end A014252

/-! ## A014252.P8566492895087719278

`2*A020701(n)-A023500(n)`
-/

namespace A014252.P8566492895087719278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020701 n - A023500 n

end

end A014252.P8566492895087719278

namespace A014252

/-- `2*A020701(n)-A023500(n)` -/
def P8566492895087719278.Spec : Prop :=
  ∀ n, P8566492895087719278.a n = A014252 (n + 1)

end A014252

/-! ## A014252.P345475452831150349

`A053311(n)+4-A023499(n)`
-/

namespace A014252.P345475452831150349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053311 n + 4 - A023499 n

end

end A014252.P345475452831150349

namespace A014252

/-- `A053311(n)+4-A023499(n)` -/
def P345475452831150349.Spec : Prop :=
  ∀ n, P345475452831150349.a n = A014252 (n + 1)

end A014252

/-!
# A014253: a(n) = b(n)^2, where b(n) = b(n-1)^2 + b(n-2)^2 (A000283).

The programs for A014253, the canonical program `A014253.P7556689016093228005` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014253 has offset 0).

The definition of A014253 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014253.P7556689016093228005

`(a(n-1)+a(n-2))²` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014253

/-- `(a(n-1)+a(n-2))²` -/
def P7556689016093228005.Spec : Prop :=
  ∀ n, (P7556689016093228005.a n : ℤ) = A014253 n

theorem P7556689016093228005.correct : P7556689016093228005.Spec := by
  intro n
  simp only [A014253]

end A014253

/-! ## A014253.P1325855519121237132

`(a(n-1)+a(n-2))^2` with `a(0)=0, a(1)=1`
-/

namespace A014253.P1325855519121237132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) + a (n - 2)) ^ 2

end

end A014253.P1325855519121237132

namespace A014253

/-- `(a(n-1)+a(n-2))^2` -/
def P1325855519121237132.Spec : Prop :=
  ∀ n, (P1325855519121237132.a n : ℤ) = A014253 n

theorem P1325855519121237132.correct : P1325855519121237132.Spec := by
  intro n
  simp only [A014253, Nat.add_sub_cancel, A014253.P1325855519121237132.a, A014253.P7556689016093228005.a, SequenceMachineLib.memo_apply]

end A014253

/-! ## A014253.P16638028209932623321

`(a(n-1)-floor(-a(n-2)))²` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A014253.P16638028209932623321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) - (-a (n - 2))) ^ 2

end

end A014253.P16638028209932623321

namespace A014253

/-- `(a(n-1)-floor(-a(n-2)))²` -/
def P16638028209932623321.Spec : Prop :=
  ∀ n, P16638028209932623321.a n = A014253 n

end A014253

/-! ## A014253.P15083266326749018389

`(a(n-1)-ceil(-a(n-2)))²` with `a(0)=0, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A014253.P15083266326749018389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) - (-a (n - 2))) ^ 2

end

end A014253.P15083266326749018389

namespace A014253

/-- `(a(n-1)-ceil(-a(n-2)))²` -/
def P15083266326749018389.Spec : Prop :=
  ∀ n, P15083266326749018389.a n = A014253 n

end A014253

/-! ## A014253.P9963433338881562506

`(a(n-1)-round(-a(n-2)))²` with `a(0)=0, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A014253.P9963433338881562506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) - (-a (n - 2))) ^ 2

end

end A014253.P9963433338881562506

namespace A014253

/-- `(a(n-1)-round(-a(n-2)))²` -/
def P9963433338881562506.Spec : Prop :=
  ∀ n, P9963433338881562506.a n = A014253 n

end A014253

/-!
# A014255: Expansion of (1+2*x+3*x^2)/((1-x)*(1-x^2)^2).

The programs for A014255, the canonical program `A014255.P16343201079077533956` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014255 has offset 0).

The definition of A014255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014255.P16343201079077533956

`∑[n*gcd(2, n)+1]`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014255

/-- `∑[n*gcd(2, n)+1]` -/
def P16343201079077533956.Spec : Prop :=
  ∀ n, (P16343201079077533956.a n : ℤ) = A014255 n

theorem P16343201079077533956.correct : P16343201079077533956.Spec := by
  intro n
  simp only [A014255]

end A014255

/-! ## A014255.P8648979858773720203

`∑[C(or(1, n), n)+n]`
-/

namespace A014255.P8648979858773720203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n) n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014255.P8648979858773720203

namespace A014255

/-- `∑[C(or(1, n), n)+n]` -/
def P8648979858773720203.Spec : Prop :=
  ∀ n, (P8648979858773720203.a n : ℤ) = A014255 n

end A014255

/-! ## A014255.P2432413430920342624

`∑[n*(2-n%2)+1]`
-/

namespace A014255.P2432413430920342624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - ((n % 2 : ℕ) : ℤ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014255.P2432413430920342624

namespace A014255

/-- `∑[n*(2-n%2)+1]` -/
def P2432413430920342624.Spec : Prop :=
  ∀ n, P2432413430920342624.a n = A014255 n

end A014255

/-! ## A014255.P2777424700831929632

`(n+1)²-ceil(n/2)²`
-/

namespace A014255.P2777424700831929632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ⌈(n : ℚ) / 2⌉ ^ 2

end

end A014255.P2777424700831929632

namespace A014255

/-- `(n+1)²-ceil(n/2)²` -/
def P2777424700831929632.Spec : Prop :=
  ∀ n, P2777424700831929632.a n = A014255 n

end A014255

/-! ## A014255.P9606114686021391590

`∑[gcd(n+1, and(1, n))+n]`
-/

namespace A014255.P9606114686021391590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (Nat.land 1 n) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014255.P9606114686021391590

namespace A014255

/-- `∑[gcd(n+1, and(1, n))+n]` -/
def P9606114686021391590.Spec : Prop :=
  ∀ n, (P9606114686021391590.a n : ℤ) = A014255 n

end A014255

/-! ## A014255.P6266962206209427739

`∑[xor(1, a(n-2)+3)]` with `a(0)=1, a(1)=2`
-/

namespace A014255.P6266962206209427739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  Nat.xor 1 (f1 (n - 2) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014255.P6266962206209427739

namespace A014255

/-- `∑[xor(1, a(n-2)+3)]` -/
def P6266962206209427739.Spec : Prop :=
  ∀ n, (P6266962206209427739.a n : ℤ) = A014255 n

end A014255

/-! ## A014255.P12934861398677914684

`floor(∑[lcm(2, n+1)-1/2])`
-/

namespace A014255.P12934861398677914684
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 1) : ℚ) - (1 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A014255.P12934861398677914684

namespace A014255

/-- `floor(∑[lcm(2, n+1)-1/2])` -/
def P12934861398677914684.Spec : Prop :=
  ∀ n, P12934861398677914684.a n = A014255 n

end A014255

/-! ## A014255.P7145328518536969031

`∑[n*((n+1)%2+1)+1]`
-/

namespace A014255.P7145328518536969031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((n + 1) % 2 + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014255.P7145328518536969031

namespace A014255

/-- `∑[n*((n+1)%2+1)+1]` -/
def P7145328518536969031.Spec : Prop :=
  ∀ n, (P7145328518536969031.a n : ℤ) = A014255 n

end A014255

/-! ## A014255.P14167254045899905284

`floor(∑[3-a(n-1)]²/3)` with `a(0)=2`
-/

namespace A014255.P14167254045899905284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 3⌋

end

end A014255.P14167254045899905284

namespace A014255

/-- `floor(∑[3-a(n-1)]²/3)` -/
def P14167254045899905284.Spec : Prop :=
  ∀ n, P14167254045899905284.a n = A014255 n

end A014255

/-! ## A014255.P2566491905952730180

`∑[n*and(1, n+1)+n+1]`
-/

namespace A014255.P2566491905952730180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 1 (n + 1) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014255.P2566491905952730180

namespace A014255

/-- `∑[n*and(1, n+1)+n+1]` -/
def P2566491905952730180.Spec : Prop :=
  ∀ n, (P2566491905952730180.a n : ℤ) = A014255 n

end A014255

/-! ## A014255.P13830241552412421463

`∑[(n+1)^((n+5)%2)+n]`
-/

namespace A014255.P13830241552412421463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ ((n + 5) % 2) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014255.P13830241552412421463

namespace A014255

/-- `∑[(n+1)^((n+5)%2)+n]` -/
def P13830241552412421463.Spec : Prop :=
  ∀ n, (P13830241552412421463.a n : ℤ) = A014255 n

end A014255

/-! ## A014255.P13123814572432515459

`∑[(n+1)^and(1, n+1)+n]`
-/

namespace A014255.P13123814572432515459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.land 1 (n + 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014255.P13123814572432515459

namespace A014255

/-- `∑[(n+1)^and(1, n+1)+n]` -/
def P13123814572432515459.Spec : Prop :=
  ∀ n, (P13123814572432515459.a n : ℤ) = A014255 n

end A014255

/-! ## A014255.P2075457627602273454

`∑[gcd(1-(n+1)², n²)+1]`
-/

namespace A014255.P2075457627602273454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - ((n + 1) ^ 2 : ℤ)) (n ^ 2 : ℤ) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014255.P2075457627602273454

namespace A014255

/-- `∑[gcd(1-(n+1)², n²)+1]` -/
def P2075457627602273454.Spec : Prop :=
  ∀ n, (P2075457627602273454.a n : ℤ) = A014255 n

end A014255

/-! ## A014255.P641730681588529957

`∑[lcm(n, and(1, n+1))+n+1]`
-/

namespace A014255.P641730681588529957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (Nat.land 1 (n + 1)) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014255.P641730681588529957

namespace A014255

/-- `∑[lcm(n, and(1, n+1))+n+1]` -/
def P641730681588529957.Spec : Prop :=
  ∀ n, (P641730681588529957.a n : ℤ) = A014255 n

end A014255

/-! ## A014255.P339154476348929976

`∑[C(n+1, and(1, n+1))+n]`
-/

namespace A014255.P339154476348929976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (Nat.land 1 (n + 1)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014255.P339154476348929976

namespace A014255

/-- `∑[C(n+1, and(1, n+1))+n]` -/
def P339154476348929976.Spec : Prop :=
  ∀ n, (P339154476348929976.a n : ℤ) = A014255 n

end A014255

/-! ## A014255.P109539706745834746

`∑[∑[gcd(4, 2*n)-a(n-1)]]` with `a(0)=1`
-/

namespace A014255.P109539706745834746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (Nat.gcd 4 (2 * n) : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014255.P109539706745834746

namespace A014255

/-- `∑[∑[gcd(4, 2*n)-a(n-1)]]` -/
def P109539706745834746.Spec : Prop :=
  ∀ n, P109539706745834746.a n = A014255 n

end A014255

/-! ## A014255.P16578797300287168473

`floor((n+1)/4*∑[5/a(n-1)])` with `a(0)=5`
-/

namespace A014255.P16578797300287168473
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [5] fun n f1 =>
  5 / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 4 * (∑ j ∈ Finset.range (n + 1), f1 j)⌋

end

end A014255.P16578797300287168473

namespace A014255

/-- `floor((n+1)/4*∑[5/a(n-1)])` -/
def P16578797300287168473.Spec : Prop :=
  ∀ n, P16578797300287168473.a n = A014255 n

end A014255

/-! ## A014255.P8273344157371056214

`floor(∑[a(n-2)+6]-a(n-1))` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A014255.P8273344157371056214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 2) + 6

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A014255.P8273344157371056214

namespace A014255

/-- `floor(∑[a(n-2)+6]-a(n-1))` -/
def P8273344157371056214.Spec : Prop :=
  ∀ n, P8273344157371056214.a n = A014255 n

end A014255

/-! ## A014255.P15122352982353668668

`∑[∑[6-a(n-1)]-a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A014255.P15122352982353668668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  6 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014255.P15122352982353668668

namespace A014255

/-- `∑[∑[6-a(n-1)]-a(n-1)]` -/
def P15122352982353668668.Spec : Prop :=
  ∀ n, P15122352982353668668.a n = A014255 n

end A014255

/-!
# A014256: Inverse of 247th cyclotomic polynomial.

The programs for A014256, there is no canonical definition to state claims against.
-/

/-! ## A014256.P18407158668457123984

`A014503(n)*A033999(n)`
-/

namespace A014256.P18407158668457123984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014503 n * A033999 n

end

end A014256.P18407158668457123984

/-!
# A014257: Product of digits of 2^n.

The programs for A014257, the canonical program `A014257.P6327875538245484556` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014257 has offset 0).

The definition of A014257 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014257.P6327875538245484556

`∏{digits}[2^n, #]`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014257

/-- `∏{digits}[2^n, #]` -/
def P6327875538245484556.Spec : Prop :=
  ∀ n, (P6327875538245484556.a n : ℤ) = A014257 n

theorem P6327875538245484556.correct : P6327875538245484556.Spec := by
  intro n
  simp only [A014257]

end A014257

/-!
# A014258: Iccanobif numbers: add previous two terms and reverse the sum, starting with 0, 1.

The programs for A014258, there is no canonical definition to state claims against.
-/

/-! ## A014258.P18351531933497062834

`A001129(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A014258.P18351531933497062834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001129 (n + 1) - a (n - 1)

end

end A014258.P18351531933497062834

/-! ## A014258.P9676533216909312316

`A004086(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A014258.P9676533216909312316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A004086 (a (n - 1) + a (n - 2)).toNat

end

end A014258.P9676533216909312316

/-! ## A014258.P6240856739444463540

`A004086(a(n-1)-floor(-a(n-2)))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A014258.P6240856739444463540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A004086 (a (n - 1) - (-a (n - 2))).toNat

end

end A014258.P6240856739444463540

/-! ## A014258.P5462936550334861523

`A004086(a(n-1)-ceil(-a(n-2)))` with `a(0)=0, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A014258.P5462936550334861523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A004086 (a (n - 1) - (-a (n - 2))).toNat

end

end A014258.P5462936550334861523

/-! ## A014258.P1913497644563837939

`A004086(a(n-1)-round(-a(n-2)))` with `a(0)=0, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A014258.P1913497644563837939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A004086 (a (n - 1) - (-a (n - 2))).toNat

end

end A014258.P1913497644563837939

/-!
# A014259: Iccanobif numbers: add reversal of a(n-1) to a(n-2).

The programs for A014259, there is no canonical definition to state claims against.
-/

/-! ## A014259.P12815031203550630649

`A004086(a(n-1))+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A014259.P12815031203550630649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A004086 (a (n - 1)).toNat + a (n - 2)

end

end A014259.P12815031203550630649

/-! ## A014259.P14920586038267171989

`A001129(n)-A210709(3*n+2)`
-/

namespace A014259.P14920586038267171989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001129 n - A210709 (3 * n + 2)

end

end A014259.P14920586038267171989

/-! ## A014259.P7653962641420958765

`A001129(n)-A066087(A352853(n))`
-/

namespace A014259.P7653962641420958765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001129 n - A066087 (A352853 n).toNat

end

end A014259.P7653962641420958765

/-! ## A014259.P8769201295242464231

`A004093(5*A014258(n))-A210709(A040976(n+1)+2)`
-/

namespace A014259.P8769201295242464231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004093 (5 * A014258 n).toNat - A210709 (A040976 (n + 1) + 2).toNat

end

end A014259.P8769201295242464231

/-!
# A014260: Iccanobif numbers: add a(n-1) to reversal of a(n-2).

The programs for A014260, there is no canonical definition to state claims against.
-/

/-! ## A014260.P8642360280583836245

`A004086(a(n-2))+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A014260.P8642360280583836245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A004086 (a (n - 2)).toNat + a (n - 1)

end

end A014260.P8642360280583836245

/-! ## A014260.P14539615700510066981

`A210709(3*n+2)+A000045(n)`
-/

namespace A014260.P14539615700510066981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210709 (3 * n + 2) + A000045 n

end

end A014260.P14539615700510066981

/-! ## A014260.P6554912883110330947

`∑[A004091(A020951(10*2^n-9))]`
-/

namespace A014260.P6554912883110330947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004091 (A020951 (10 * 2 ^ n - 9)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014260.P6554912883110330947

/-! ## A014260.P6040631074640552463

`A038760(A010551(n))+A000045(n)`
-/

namespace A014260.P6040631074640552463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038760 (A010551 n).toNat + A000045 n

end

end A014260.P6040631074640552463

/-! ## A014260.P16799494122292795562

`A083929(A210326(n+1))+A000045(n)`
-/

namespace A014260.P16799494122292795562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083929 (A210326 (n + 1)).toNat + A000045 n

end

end A014260.P16799494122292795562

/-!
# A014261: Numbers that contain odd digits only.

The programs for A014261, there is no canonical definition to state claims against.
-/

/-! ## A014261.P352981192676223461

`A164898(n)+a(n-1)` with `a(0)=1`
-/

namespace A014261.P352981192676223461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A164898 n + a (n - 1)

end

end A014261.P352981192676223461

/-! ## A014261.P15216265648126713273

`∪[A030096(n+1), A320062(n+1)]`
-/

namespace A014261.P15216265648126713273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014261.P15216265648126713273

/-! ## A014261.P3182115796659778894

`∪[A062086(n+1), A320062(n+1)]`
-/

namespace A014261.P3182115796659778894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014261.P3182115796659778894

/-! ## A014261.P13180961656359840016

`A275776(Δ[n²])`
-/

namespace A014261.P13180961656359840016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275776 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A014261.P13180961656359840016

/-! ## A014261.P8528647136144091977

`record[A275776(n+1)-A007814(n+1)]`
-/

namespace A014261.P8528647136144091977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275776 (n + 1) - A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014261.P8528647136144091977

/-! ## A014261.P4859105328206296344

`A275776(2*n+1)+A000122(A056608(n+1))`
-/

namespace A014261.P4859105328206296344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275776 (2 * n + 1) + A000122 (A056608 (n + 1)).toNat

end

end A014261.P4859105328206296344

/-! ## A014261.P9543688581517017838

`A275812(A007913(n+1))+A275776(2*n+1)`
-/

namespace A014261.P9543688581517017838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275812 (A007913 (n + 1)).toNat + A275776 (2 * n + 1)

end

end A014261.P9543688581517017838

/-! ## A014261.P8690852225228645306

`filter[A275776(2*n+1), A035263(#)]`
-/

namespace A014261.P8690852225228645306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275776 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A014261.P8690852225228645306

/-! ## A014261.P14136915369624651734

`filter[A275776(2*n+1), A039982(#)]`
-/

namespace A014261.P14136915369624651734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275776 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A014261.P14136915369624651734

/-! ## A014261.P8301593911376249131

`filter[A275776(2*n+1), A093719(#)]`
-/

namespace A014261.P8301593911376249131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275776 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A014261.P8301593911376249131

/-! ## A014261.P15325170557046957357

`filter[A275776(2*n+1), A098725(#)]`
-/

namespace A014261.P15325170557046957357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275776 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A014261.P15325170557046957357

/-! ## A014261.P8916932993593474660

`filter[A275776(2*n+1), A105234(#)]`
-/

namespace A014261.P8916932993593474660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275776 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A014261.P8916932993593474660

/-! ## A014261.P8851886418316901082

`filter[A275776(2*n+1), A115971(#)]`
-/

namespace A014261.P8851886418316901082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275776 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A014261.P8851886418316901082

/-! ## A014261.P14585393373688904461

`filter[A275776(2*n+1), A127254(#)]`
-/

namespace A014261.P14585393373688904461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275776 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A127254 (f1 j).toNat = 1) n)

end

end A014261.P14585393373688904461

/-! ## A014261.P14621296629638463342

`filter[A275776(2*n+1), A152822(#)]`
-/

namespace A014261.P14621296629638463342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275776 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A014261.P14621296629638463342

/-! ## A014261.P16611207461779658514

`filter[A275776(2*n+1), A166486(#)]`
-/

namespace A014261.P16611207461779658514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275776 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A014261.P16611207461779658514

/-! ## A014261.P2655568442026968387

`filter[A275776(2*n+1), A168185(#)]`
-/

namespace A014261.P2655568442026968387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275776 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A014261.P2655568442026968387

/-! ## A014261.P15373878202199962384

`A275776(2*n+1)*A275811(A275804(2*(n+2)))`
-/

namespace A014261.P15373878202199962384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275776 (2 * n + 1) * A275811 (A275804 (2 * (n + 2))).toNat

end

end A014261.P15373878202199962384

/-! ## A014261.P984723278938002705

`lt[sqrt(A073053(n)), 8]`
-/

namespace A014261.P984723278938002705
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A073053 n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A014261.P984723278938002705

/-! ## A014261.P15038652203235885902

`∩[2*n+1, A059708(n+1)]`
-/

namespace A014261.P15038652203235885902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014261.P15038652203235885902

/-!
# A014262: Inverse of 253rd cyclotomic polynomial.

The programs for A014262, there is no canonical definition to state claims against.
-/

/-! ## A014262.P14245957877526922311

`A014515(n)*A033999(n)`
-/

namespace A014262.P14245957877526922311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014515 n * A033999 n

end

end A014262.P14245957877526922311

/-!
# A014263: Numbers that contain even digits only.

The programs for A014263, the canonical program `A014263.P10138940668023476278` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014263 has offset 1).

The definition of A014263 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007091, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A014263.P10138940668023476278

`2*A007091(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A014263

/-- `2*A007091(n)` -/
def P10138940668023476278.Spec : Prop :=
  ∀ n, P10138940668023476278.a n = A014263 (n + 1)

theorem P10138940668023476278.correct : P10138940668023476278.Spec := by
  intro n
  simp only [A014263, Nat.add_sub_cancel]

end A014263

/-! ## A014263.P727587986196672779

`A007091(A005843(n)/2)+A007091(n)`
-/

namespace A014263.P727587986196672779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A007091 n

end

end A014263.P727587986196672779

namespace A014263

/-- `A007091(A005843(n)/2)+A007091(n)` -/
def P727587986196672779.Spec : Prop :=
  ∀ n, P727587986196672779.a n = A014263 (n + 1)

end A014263

/-! ## A014263.P15635481740165335428

`A007091(n)+A007091(n)%A036689(n+1)`
-/

namespace A014263.P15635481740165335428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n + Int.tmod (A007091 n) (A036689 (n + 1))

end

end A014263.P15635481740165335428

namespace A014263

/-- `A007091(n)+A007091(n)%A036689(n+1)` -/
def P15635481740165335428.Spec : Prop :=
  ∀ n, P15635481740165335428.a n = A014263 (n + 1)

end A014263

/-! ## A014263.P10518606916741999070

`A024657(2*n)`
-/

namespace A014263.P10518606916741999070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 (2 * n)

end

end A014263.P10518606916741999070

namespace A014263

/-- `A024657(2*n)` -/
def P10518606916741999070.Spec : Prop :=
  ∀ n, P10518606916741999070.a n = A014263 (n + 1)

end A014263

/-! ## A014263.P4615699352496103384

`A024657(Δ[n²])-1`
-/

namespace A014263.P4615699352496103384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A014263.P4615699352496103384

namespace A014263

/-- `A024657(Δ[n²])-1` -/
def P4615699352496103384.Spec : Prop :=
  ∀ n, P4615699352496103384.a n = A014263 (n + 1)

end A014263

/-! ## A014263.P13594724535258101994

`2*A007092(A037465(n))`
-/

namespace A014263.P13594724535258101994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007092 (A037465 n).toNat

end

end A014263.P13594724535258101994

namespace A014263

/-- `2*A007092(A037465(n))` -/
def P13594724535258101994.Spec : Prop :=
  ∀ n, P13594724535258101994.a n = A014263 (n + 1)

end A014263

/-! ## A014263.P2726112217661170697

`A276138(A037465(n)+1)`
-/

namespace A014263.P2726112217661170697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276138 (A037465 n + 1).toNat

end

end A014263.P2726112217661170697

namespace A014263

/-- `A276138(A037465(n)+1)` -/
def P2726112217661170697.Spec : Prop :=
  ∀ n, P2726112217661170697.a n = A014263 (n + 1)

end A014263

/-! ## A014263.P15914247252173311426

`2*A007093(A037466(n))`
-/

namespace A014263.P15914247252173311426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007093 (A037466 n).toNat

end

end A014263.P15914247252173311426

namespace A014263

/-- `2*A007093(A037466(n))` -/
def P15914247252173311426.Spec : Prop :=
  ∀ n, P15914247252173311426.a n = A014263 (n + 1)

end A014263

/-! ## A014263.P5161902917509890714

`A007091(n)+A007091(n)/A277543(A277550(n+1))`
-/

namespace A014263.P5161902917509890714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007091 n : ℚ) + (A007091 n : ℚ) / (A277543 (A277550 (n + 1)).toNat : ℚ)

end

end A014263.P5161902917509890714

namespace A014263

/-- `A007091(n)+A007091(n)/A277543(A277550(n+1))` -/
def P5161902917509890714.Spec : Prop :=
  ∀ n, P5161902917509890714.a n = (A014263 (n + 1) : ℚ)

end A014263

/-! ## A014263.P17400524903393090311

`2*A007094(A037467(n))`
-/

namespace A014263.P17400524903393090311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007094 (A037467 n).toNat

end

end A014263.P17400524903393090311

namespace A014263

/-- `2*A007094(A037467(n))` -/
def P17400524903393090311.Spec : Prop :=
  ∀ n, P17400524903393090311.a n = A014263 (n + 1)

end A014263

/-! ## A014263.P3301664619874457220

`2*A007095(A037468(n))`
-/

namespace A014263.P3301664619874457220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007095 (A037468 n).toNat

end

end A014263.P3301664619874457220

namespace A014263

/-- `2*A007095(A037468(n))` -/
def P3301664619874457220.Spec : Prop :=
  ∀ n, P3301664619874457220.a n = A014263 (n + 1)

end A014263

/-! ## A014263.P7977481422464159728

`∩[A179082(n+1), A024657(n)]`
-/

namespace A014263.P7977481422464159728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014263.P7977481422464159728

namespace A014263

/-- `∩[A179082(n+1), A024657(n)]` -/
def P7977481422464159728.Spec : Prop :=
  ∀ n, (P7977481422464159728.a n : ℤ) = A014263 (n + 1)

end A014263

/-! ## A014263.P10471744039488814959

`∩[A059708(n+1), A179082(n+1)]`
-/

namespace A014263.P10471744039488814959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014263.P10471744039488814959

namespace A014263

/-- `∩[A059708(n+1), A179082(n+1)]` -/
def P10471744039488814959.Spec : Prop :=
  ∀ n, (P10471744039488814959.a n : ℤ) = A014263 (n + 1)

end A014263

/-! ## A014263.P13457328336375983823

`A118757(A118758(A024657(n+n)))`
-/

namespace A014263.P13457328336375983823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118757 (A118758 (A024657 (n + n)).toNat).toNat

end

end A014263.P13457328336375983823

namespace A014263

/-- `A118757(A118758(A024657(n+n)))` -/
def P13457328336375983823.Spec : Prop :=
  ∀ n, P13457328336375983823.a n = A014263 (n + 1)

end A014263

/-! ## A014263.P1404222986991193115

`∩[A039123(n+1), A169884(n+1)]`
-/

namespace A014263.P1404222986991193115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014263.P1404222986991193115

namespace A014263

/-- `∩[A039123(n+1), A169884(n+1)]` -/
def P1404222986991193115.Spec : Prop :=
  ∀ n, (P1404222986991193115.a n : ℤ) = A014263 (n + 1)

end A014263

/-! ## A014263.P6544769818917982229

`eq[A171797(n), A308003(n)]`
-/

namespace A014263.P6544769818917982229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171797 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308003 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014263.P6544769818917982229

namespace A014263

/-- `eq[A171797(n), A308003(n)]` -/
def P6544769818917982229.Spec : Prop :=
  ∀ n, (P6544769818917982229.a n : ℤ) = A014263 (n + 1)

end A014263

/-! ## A014263.P4186617506171862451

`∩[A039127(n+1), A276138(n+1)]`
-/

namespace A014263.P4186617506171862451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014263.P4186617506171862451

namespace A014263

/-- `∩[A039127(n+1), A276138(n+1)]` -/
def P4186617506171862451.Spec : Prop :=
  ∀ n, (P4186617506171862451.a n : ℤ) = A014263 (n + 1)

end A014263

/-! ## A014263.P12036776953498453389

`∩[A039136(n+1), A169884(n+1)]`
-/

namespace A014263.P12036776953498453389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014263.P12036776953498453389

namespace A014263

/-- `∩[A039136(n+1), A169884(n+1)]` -/
def P12036776953498453389.Spec : Prop :=
  ∀ n, (P12036776953498453389.a n : ℤ) = A014263 (n + 1)

end A014263

/-! ## A014263.P9725837841540762060

`∩[A039140(n+1), A276138(n+1)]`
-/

namespace A014263.P9725837841540762060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014263.P9725837841540762060

namespace A014263

/-- `∩[A039140(n+1), A276138(n+1)]` -/
def P9725837841540762060.Spec : Prop :=
  ∀ n, (P9725837841540762060.a n : ℤ) = A014263 (n + 1)

end A014263

/-! ## A014263.P13362844715533741093

`∩[A039147(n+1), A169884(n+1)]`
-/

namespace A014263.P13362844715533741093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014263.P13362844715533741093

namespace A014263

/-- `∩[A039147(n+1), A169884(n+1)]` -/
def P13362844715533741093.Spec : Prop :=
  ∀ n, (P13362844715533741093.a n : ℤ) = A014263 (n + 1)

end A014263

/-!
# A014264: Inverse of 255th cyclotomic polynomial.

The programs for A014264, there is no canonical definition to state claims against.
-/

/-! ## A014264.P3589527537813915983

`A014519(n)*A033999(n)`
-/

namespace A014264.P3589527537813915983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014519 n * A033999 n

end

end A014264.P3589527537813915983

/-!
# A014265: Number of trees on n nodes with forbidden limbs.

The programs for A014265, there is no canonical definition to state claims against.
-/

/-! ## A014265.P17166195886550430332

`A014266(n)-char[8]`
-/

namespace A014265.P17166195886550430332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014266 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A014265.P17166195886550430332

/-! ## A014265.P6259981889198709641

`A014268(A014303(n+3))+A014266(n)`
-/

namespace A014265.P6259981889198709641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014268 (A014303 (n + 3)).toNat + A014266 n

end

end A014265.P6259981889198709641

/-! ## A014265.P7609445991428769460

`A014268(A014302(n+4))+A014266(n)`
-/

namespace A014265.P7609445991428769460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014268 (A014302 (n + 4)).toNat + A014266 n

end

end A014265.P7609445991428769460

/-! ## A014265.P13044636950307433954

`A014275(A025475(3*n+4))+A014266(n)`
-/

namespace A014265.P13044636950307433954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014275 (A025475 (3 * n + 4)).toNat + A014266 n

end

end A014265.P13044636950307433954

/-! ## A014265.P10581817374431245760

`A014317(A014172(n))+A014266(n)`
-/

namespace A014265.P10581817374431245760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014317 (A014172 n).toNat + A014266 n

end

end A014265.P10581817374431245760

/-!
# A014266: Number of trees on n nodes with forbidden limbs.

The programs for A014266, there is no canonical definition to state claims against.
-/

/-! ## A014266.P17843027036385940442

`A014265(n)+char[8]`
-/

namespace A014266.P17843027036385940442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014265 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A014266.P17843027036385940442

/-! ## A014266.P9535341438418708933

`A025468(A000015(n+1))+A014265(n)`
-/

namespace A014266.P9535341438418708933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 (A000015 (n + 1)).toNat + A014265 n

end

end A014266.P9535341438418708933

/-! ## A014266.P8739415637295458723

`A025468(∑[2*A235592(n+1)]+2)+A014265(n)`
-/

namespace A014266.P8739415637295458723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A235592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat + A014265 n

end

end A014266.P8739415637295458723

/-! ## A014266.P13948456821329414123

`A025468(A172186(∑[n]+1))+A014265(n)`
-/

namespace A014266.P13948456821329414123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 (A172186 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat + A014265 n

end

end A014266.P13948456821329414123

/-! ## A014266.P17153888923289674057

`A025468(∑[A328747(n+3)]+2)+A014265(n)`
-/

namespace A014266.P17153888923289674057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328747 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat + A014265 n

end

end A014266.P17153888923289674057

/-!
# A014267: Number of rooted trees on n nodes with forbidden limbs.

The programs for A014267, there is no canonical definition to state claims against.
-/

/-! ## A014267.P1854455943390406242

`A058386(∑[A287377(n)])`
-/

namespace A014267.P1854455943390406242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058386 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A014267.P1854455943390406242

/-! ## A014267.P1250840453752326219

`A035084(A032555(n+1))`
-/

namespace A014267.P1250840453752326219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035084 (A032555 (n + 1)).toNat

end

end A014267.P1250840453752326219

/-! ## A014267.P1966925099291293611

`A035084(A032557(n+1))`
-/

namespace A014267.P1966925099291293611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035084 (A032557 (n + 1)).toNat

end

end A014267.P1966925099291293611

/-! ## A014267.P14409560551934054037

`A035084(A032559(n+1))`
-/

namespace A014267.P14409560551934054037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035084 (A032559 (n + 1)).toNat

end

end A014267.P14409560551934054037

/-! ## A014267.P218039566899181844

`A035084(A032563(n+1))`
-/

namespace A014267.P218039566899181844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035084 (A032563 (n + 1)).toNat

end

end A014267.P218039566899181844

/-!
# A014268: Inverse of 259th cyclotomic polynomial.

The programs for A014268, there is no canonical definition to state claims against.
-/

/-! ## A014268.P13216878465582396795

`A014527(n)*A033999(n)`
-/

namespace A014268.P13216878465582396795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014527 n * A033999 n

end

end A014268.P13216878465582396795

/-!
# A014269: Inverse of 260th cyclotomic polynomial.

The programs for A014269, there is no canonical definition to state claims against.
-/

/-! ## A014269.P11796903919681800065

`A014139(A004525(n))%A010127(n)`
-/

namespace A014269.P11796903919681800065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014139 (A004525 n).toNat) (A010127 n)

end

end A014269.P11796903919681800065

/-!
# A014270: Number of trees on n nodes with forbidden limbs.

The programs for A014270, there is no canonical definition to state claims against.
-/

/-! ## A014270.P15931316889777877596

`A230772(A330053(n)+A319755(n))`
-/

namespace A014270.P15931316889777877596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230772 (A330053 n + A319755 n).toNat

end

end A014270.P15931316889777877596

/-! ## A014270.P3099522538752778170

`A051889(A081150(n)+1)-A340998(n²)`
-/

namespace A014270.P3099522538752778170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A081150 n + 1).toNat - A340998 (n ^ 2 + 140)

end

end A014270.P3099522538752778170

/-! ## A014270.P5433195751146082233

`A261906(A036650(n))-1-A340998(n²)`
-/

namespace A014270.P5433195751146082233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261906 (A036650 n).toNat - 1 - A340998 (n ^ 2 + 140)

end

end A014270.P5433195751146082233

/-! ## A014270.P5270612161169051296

`A309589(A045761(n))`
-/

namespace A014270.P5270612161169051296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309589 (A045761 n).toNat

end

end A014270.P5270612161169051296

/-! ## A014270.P12873071737098980879

`A350634(A000055(n))%(2^n)`
-/

namespace A014270.P12873071737098980879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350634 (A000055 n).toNat) (2 ^ n : ℤ)

end

end A014270.P12873071737098980879

/-!
# A014271: Number of trees on n nodes with forbidden limbs.

The programs for A014271, there is no canonical definition to state claims against.
-/

/-! ## A014271.P17664889360560499622

`A003074(∑[∑[A149734(n)]])`
-/

namespace A014271.P17664889360560499622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149734 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003074 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A014271.P17664889360560499622

/-! ## A014271.P9236786001940082761

`∑[A165190(∑[A122450(n)])]`
-/

namespace A014271.P9236786001940082761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122450 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014271.P9236786001940082761

/-! ## A014271.P15131496216877466541

`∑[A143093(n)]-A024581(n)`
-/

namespace A014271.P15131496216877466541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A024581 n

end

end A014271.P15131496216877466541

/-!
# A014272: Number of trees on n nodes with forbidden limbs.

The programs for A014272, there is no canonical definition to state claims against.
-/

/-! ## A014272.P7903742208990684868

`A085857(A382613(n+1))`
-/

namespace A014272.P7903742208990684868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085857 (A382613 (n + 1)).toNat

end

end A014272.P7903742208990684868

/-! ## A014272.P6420781872718695264

`A051162(∑[char[4*n]]*A324263(n+1))`
-/

namespace A014272.P6420781872718695264
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A324263 (n + 1)).toNat

end

end A014272.P6420781872718695264

/-! ## A014272.P9415788154088248952

`A008618(A315828(n)+A003693(n+1))`
-/

namespace A014272.P9415788154088248952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A315828 n + A003693 (n + 1)).toNat

end

end A014272.P9415788154088248952

/-! ## A014272.P15192153999946094565

`A008618(A336377(n+1)+A001353(n))`
-/

namespace A014272.P15192153999946094565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A336377 (n + 1) + A001353 n).toNat

end

end A014272.P15192153999946094565

/-!
# A014273: Number of trees on n nodes with forbidden limbs.

The programs for A014273, there is no canonical definition to state claims against.
-/

/-! ## A014273.P4316019405151319339

`Δ[Δ[A220658(A328429(n))]]`
-/

namespace A014273.P4316019405151319339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (A328429 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014273.P4316019405151319339

/-! ## A014273.P4649654491919221840

`A054899(A140413(n)+A022131(n))`
-/

namespace A014273.P4649654491919221840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A140413 n + A022131 n).toNat

end

end A014273.P4649654491919221840

/-! ## A014273.P15403698199386858438

`A034010(n+1)-A093555(A002355(n))`
-/

namespace A014273.P15403698199386858438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034010 (n + 1) - A093555 (A002355 n).toNat

end

end A014273.P15403698199386858438

/-!
# A014274: Number of trees on n nodes with forbidden limbs.

The programs for A014274, there is no canonical definition to state claims against.
-/

/-! ## A014274.P11556747029058623664

`A081386(A192126(n))-char[∑[n-1]]`
-/

namespace A014274.P11556747029058623664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081386 (A192126 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A014274.P11556747029058623664

/-! ## A014274.P1568760111499787768

`A081386(A000110(n))-A047998(n)`
-/

namespace A014274.P1568760111499787768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081386 (A000110 n).toNat - A047998 n

end

end A014274.P1568760111499787768

/-! ## A014274.P9882264807858067626

`A107590(n)-A051731(A154638(n))`
-/

namespace A014274.P9882264807858067626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107590 n - A051731 (A154638 n).toNat

end

end A014274.P9882264807858067626

/-! ## A014274.P4569329890076875213

`A050296(A054846(n!))-A337165(n+2)`
-/

namespace A014274.P4569329890076875213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (A054846 (Nat.factorial n)).toNat - A337165 (n + 2)

end

end A014274.P4569329890076875213

/-!
# A014275: Inverse of 266th cyclotomic polynomial.

The programs for A014275, there is no canonical definition to state claims against.
-/

/-! ## A014275.P10571716931377277473

`(-1)^n*A014142(n)`
-/

namespace A014275.P10571716931377277473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A014142 n

end

end A014275.P10571716931377277473

/-!
# A014276: Number of directed rooted trees on n nodes with forbidden limbs.

The programs for A014276, there is no canonical definition to state claims against.
-/

/-! ## A014276.P5360599212150113670

`A242249(eq[A181644(n), A233583(n+1)])`
-/

namespace A014276.P5360599212150113670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181644 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A014276.P5360599212150113670

/-! ## A014276.P11547240374838452686

`A006964(A338882(n))%A006966(3*n+1)`
-/

namespace A014276.P11547240374838452686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006964 (A338882 n).toNat) (A006966 (3 * n + 1))

end

end A014276.P11547240374838452686

/-!
# A014278: Number of trees on n nodes with 3 forbidden limbs of size 4, 5 and 6.

The programs for A014278, there is no canonical definition to state claims against.
-/

/-! ## A014278.P2623025046504553360

`A175857(ceil((n-1)*a(n-1)/floor(n/2)))` with `a(0)=0, a(1)=1`
-/

namespace A014278.P2623025046504553360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A175857 ⌈((n : ℤ) - 1 : ℚ) * ((a (n - 1) : ℚ) / (⌊(n : ℚ) / 2⌋ : ℚ))⌉.toNat

end

end A014278.P2623025046504553360

/-! ## A014278.P17627425605233712057

`A175857(round((n-1)*a(n-1)/floor(n/2)))` with `a(0)=0, a(1)=1`
-/

namespace A014278.P17627425605233712057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A175857 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) * ((a (n - 1) : ℚ) / (⌊(n : ℚ) / 2⌋ : ℚ)))).toNat

end

end A014278.P17627425605233712057

/-! ## A014278.P1589405247324298759

`A000196(xor(∑[n], A014337(n)))`
-/

namespace A014278.P1589405247324298759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A014337 n)).toNat

end

end A014278.P1589405247324298759

/-! ## A014278.P14109118618962719789

`A135660(A007116(n)+A000225(n))`
-/

namespace A014278.P14109118618962719789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A007116 n + A000225 n).toNat

end

end A014278.P14109118618962719789

/-! ## A014278.P3938838760375340161

`A330015(A001405(n)+A000120(n))`
-/

namespace A014278.P3938838760375340161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330015 (A001405 n + A000120 n).toNat

end

end A014278.P3938838760375340161

/-!
# A014280: Number of trees on n nodes with 3 forbidden limbs of size 4, 5 and 6.

The programs for A014280, there is no canonical definition to state claims against.
-/

/-! ## A014280.P12376897778080433495

`∑[A024327(A000111(n))-char[2]]+n`
-/

namespace A014280.P12376897778080433495
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024327 (A000111 n).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A014280.P12376897778080433495

/-! ## A014280.P769478663979054857

`ceil(sqrt(A001183(n+1)/13))`
-/

namespace A014280.P769478663979054857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A001183 (n + 1) : ℚ) / 13 : ℝ)⌉

end

end A014280.P769478663979054857

/-! ## A014280.P1011311702885805809

`A004489(A124421(n+1))`
-/

namespace A014280.P1011311702885805809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004489 (A124421 (n + 1)).toNat

end

end A014280.P1011311702885805809

/-! ## A014280.P14493602443934337388

`A000196(Δ[A353287(n)]+1)`
-/

namespace A014280.P14493602443934337388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353287 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (f1 (n + 1) - f1 n + 1).toNat

end

end A014280.P14493602443934337388

/-! ## A014280.P7682088861118576731

`A122921(A216332(n+1)-1)`
-/

namespace A014280.P7682088861118576731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A216332 (n + 1) - 1).toNat

end

end A014280.P7682088861118576731

/-!
# A014282: Inverse of 273rd cyclotomic polynomial.

The programs for A014282, there is no canonical definition to state claims against.
-/

/-! ## A014282.P4610325735303050097

`A014555(n)*A033999(n)`
-/

namespace A014282.P4610325735303050097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014555 n * A033999 n

end

end A014282.P4610325735303050097

/-!
# A014283: a(n) = Fibonacci(n) - n^2.

The programs for A014283, the canonical program `A014283.P17219958316013531777` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014283 has offset 0).

The definition of A014283 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014283.P17219958316013531777

`A000045(n)-A000290(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014283

/-- `A000045(n)-A000290(n)` -/
def P17219958316013531777.Spec : Prop :=
  ∀ n, P17219958316013531777.a n = A014283 n

theorem P17219958316013531777.correct : P17219958316013531777.Spec := by
  intro n
  simp only [A014283]

end A014283

/-! ## A014283.P4294100445851864800

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=0, a(1)=0, a(2)=-3, a(3)=-7, a(4)=-13`
-/

namespace A014283.P4294100445851864800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, -3, -7, -13] fun n a =>
  4 * a (n - 1) - 5 * a (n - 2) + a (n - 3) + 2 * a (n - 4) - a (n - 5)

end

end A014283.P4294100445851864800

namespace A014283

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P4294100445851864800.Spec : Prop :=
  ∀ n, P4294100445851864800.a n = A014283 n

end A014283

/-! ## A014283.P3230592525798056430

`∑[a(n-1)+a(n-2)]-n²` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A014283.P3230592525798056430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n ^ 2 : ℤ)

end

end A014283.P3230592525798056430

namespace A014283

/-- `∑[a(n-1)+a(n-2)]-n²` -/
def P3230592525798056430.Spec : Prop :=
  ∀ n, P3230592525798056430.a n = A014283 n

end A014283

/-! ## A014283.P2038993612748837946

`∑[A210673(n)-n]`
-/

namespace A014283.P2038993612748837946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210673 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014283.P2038993612748837946

namespace A014283

/-- `∑[A210673(n)-n]` -/
def P2038993612748837946.Spec : Prop :=
  ∀ n, P2038993612748837946.a n = A014283 n

end A014283

/-! ## A014283.P10242813014516269723

`abs(A236191(n))-n²`
-/

namespace A014283.P10242813014516269723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236191 n| - (n ^ 2 : ℤ)

end

end A014283.P10242813014516269723

namespace A014283

/-- `abs(A236191(n))-n²` -/
def P10242813014516269723.Spec : Prop :=
  ∀ n, P10242813014516269723.a n = A014283 n

end A014283

/-! ## A014283.P8546534185837146149

`A001611(n)-(n²+1)`
-/

namespace A014283.P8546534185837146149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - (n ^ 2 + 1 : ℤ)

end

end A014283.P8546534185837146149

namespace A014283

/-- `A001611(n)-(n²+1)` -/
def P8546534185837146149.Spec : Prop :=
  ∀ n, P8546534185837146149.a n = A014283 n

end A014283

/-! ## A014283.P13731801089415628588

`A212804(n+1)-n²`
-/

namespace A014283.P13731801089415628588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) - (n ^ 2 : ℤ)

end

end A014283.P13731801089415628588

namespace A014283

/-- `A212804(n+1)-n²` -/
def P13731801089415628588.Spec : Prop :=
  ∀ n, P13731801089415628588.a n = A014283 n

end A014283

/-! ## A014283.P14190136319250519272

`A157725(n)-(n²+2)`
-/

namespace A014283.P14190136319250519272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 n - (n ^ 2 + 2 : ℤ)

end

end A014283.P14190136319250519272

namespace A014283

/-- `A157725(n)-(n²+2)` -/
def P14190136319250519272.Spec : Prop :=
  ∀ n, P14190136319250519272.a n = A014283 n

end A014283

/-! ## A014283.P1609064063164477850

`A103609(2*n)-n²`
-/

namespace A014283.P1609064063164477850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n) - (n ^ 2 : ℤ)

end

end A014283.P1609064063164477850

namespace A014283

/-- `A103609(2*n)-n²` -/
def P1609064063164477850.Spec : Prop :=
  ∀ n, P1609064063164477850.a n = A014283 n

end A014283

/-! ## A014283.P8483835926296845553

`A157726(n)-3-n²`
-/

namespace A014283.P8483835926296845553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 n - 3 - (n ^ 2 : ℤ)

end

end A014283.P8483835926296845553

namespace A014283

/-- `A157726(n)-3-n²` -/
def P8483835926296845553.Spec : Prop :=
  ∀ n, P8483835926296845553.a n = A014283 n

end A014283

/-! ## A014283.P18413860347971076598

`A160536(n)-2*n²`
-/

namespace A014283.P18413860347971076598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160536 n - (2 * n ^ 2 : ℤ)

end

end A014283.P18413860347971076598

namespace A014283

/-- `A160536(n)-2*n²` -/
def P18413860347971076598.Spec : Prop :=
  ∀ n, P18413860347971076598.a n = A014283 n

end A014283

/-! ## A014283.P9902046779001227350

`A157727(n)-4-n²`
-/

namespace A014283.P9902046779001227350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157727 n - 4 - (n ^ 2 : ℤ)

end

end A014283.P9902046779001227350

namespace A014283

/-- `A157727(n)-4-n²` -/
def P9902046779001227350.Spec : Prop :=
  ∀ n, P9902046779001227350.a n = A014283 n

end A014283

/-! ## A014283.P1413359885263613207

`A157729(n)-5-n²`
-/

namespace A014283.P1413359885263613207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157729 n - 5 - (n ^ 2 : ℤ)

end

end A014283.P1413359885263613207

namespace A014283

/-- `A157729(n)-5-n²` -/
def P1413359885263613207.Spec : Prop :=
  ∀ n, P1413359885263613207.a n = A014283 n

end A014283

/-! ## A014283.P4269421498000556444

`A002062(n)-∑[2*n]`
-/

namespace A014283.P4269421498000556444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A014283.P4269421498000556444

namespace A014283

/-- `A002062(n)-∑[2*n]` -/
def P4269421498000556444.Spec : Prop :=
  ∀ n, P4269421498000556444.a n = A014283 n

end A014283

/-! ## A014283.P18219618965728367020

`A065220(n)+n-n²`
-/

namespace A014283.P18219618965728367020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + ((n : ℤ) - (n ^ 2 : ℤ))

end

end A014283.P18219618965728367020

namespace A014283

/-- `A065220(n)+n-n²` -/
def P18219618965728367020.Spec : Prop :=
  ∀ n, P18219618965728367020.a n = A014283 n

end A014283

/-! ## A014283.P12065570328642570364

`A129982(2*n+1)-n²`
-/

namespace A014283.P12065570328642570364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129982 (2 * n + 1) - (n ^ 2 : ℤ)

end

end A014283.P12065570328642570364

namespace A014283

/-- `A129982(2*n+1)-n²` -/
def P12065570328642570364.Spec : Prop :=
  ∀ n, P12065570328642570364.a n = A014283 n

end A014283

/-! ## A014283.P6443389968832905887

`A000045(2*n-n)-∑[2*n]+n`
-/

namespace A014283.P6443389968832905887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n - n) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n : ℤ)

end

end A014283.P6443389968832905887

namespace A014283

/-- `A000045(2*n-n)-∑[2*n]+n` -/
def P6443389968832905887.Spec : Prop :=
  ∀ n, P6443389968832905887.a n = A014283 n

end A014283

/-! ## A014283.P18152013696801614161

`A212272(n)-A011379(n)`
-/

namespace A014283.P18152013696801614161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212272 n - A011379 n

end

end A014283.P18152013696801614161

namespace A014283

/-- `A212272(n)-A011379(n)` -/
def P18152013696801614161.Spec : Prop :=
  ∀ n, P18152013696801614161.a n = A014283 n

end A014283

/-! ## A014283.P15517579497321932495

`A157727(n)-A087475(n)`
-/

namespace A014283.P15517579497321932495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157727 n - A087475 n

end

end A014283.P15517579497321932495

namespace A014283

/-- `A157727(n)-A087475(n)` -/
def P15517579497321932495.Spec : Prop :=
  ∀ n, P15517579497321932495.a n = A014283 n

end A014283

/-!
# A014284: Partial sums of primes, if 1 is regarded as a prime (as it was until quite recently, see A008578).

The programs for A014284, the canonical program `A014284.P16560659510973334811` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014284 has offset 1).

The definition of A014284 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A014284.P16560659510973334811

`A007504(n)+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A014284

/-- `A007504(n)+1` -/
def P16560659510973334811.Spec : Prop :=
  ∀ n, P16560659510973334811.a n = A014284 (n + 1)

theorem P16560659510973334811.correct : P16560659510973334811.Spec := by
  intro n
  simp only [A014284, Nat.add_sub_cancel]

end A014284

/-! ## A014284.P14628912018497555871

`∑[A008578(n+1)]`
-/

namespace A014284.P14628912018497555871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014284.P14628912018497555871

namespace A014284

/-- `∑[A008578(n+1)]` -/
def P14628912018497555871.Spec : Prop :=
  ∀ n, P14628912018497555871.a n = A014284 (n + 1)

end A014284

/-! ## A014284.P9141258762085289289

`∑[A028815(n)-1]`
-/

namespace A014284.P9141258762085289289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014284.P9141258762085289289

namespace A014284

/-- `∑[A028815(n)-1]` -/
def P9141258762085289289.Spec : Prop :=
  ∀ n, P9141258762085289289.a n = A014284 (n + 1)

end A014284

/-! ## A014284.P14039079296411164373

`A036439(n+1)-1`
-/

namespace A014284.P14039079296411164373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (n + 1) - 1

end

end A014284.P14039079296411164373

namespace A014284

/-- `A036439(n+1)-1` -/
def P14039079296411164373.Spec : Prop :=
  ∀ n, P14039079296411164373.a n = A014284 (n + 1)

end A014284

/-! ## A014284.P9588658882884719992

`A227547(n+1)-2`
-/

namespace A014284.P9588658882884719992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227547 (n + 1) - 2

end

end A014284.P9588658882884719992

namespace A014284

/-- `A227547(n+1)-2` -/
def P9588658882884719992.Spec : Prop :=
  ∀ n, P9588658882884719992.a n = A014284 (n + 1)

end A014284

/-! ## A014284.P10301432779869776747

`A110895(n+1)-n`
-/

namespace A014284.P10301432779869776747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110895 (n + 1) - (n : ℤ)

end

end A014284.P10301432779869776747

namespace A014284

/-- `A110895(n+1)-n` -/
def P10301432779869776747.Spec : Prop :=
  ∀ n, P10301432779869776747.a n = A014284 (n + 1)

end A014284

/-! ## A014284.P8489845446425724047

`∑[sqrt(A280076(n+1))]`
-/

namespace A014284.P8489845446425724047
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A280076 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014284.P8489845446425724047

namespace A014284

/-- `∑[sqrt(A280076(n+1))]` -/
def P8489845446425724047.Spec : Prop :=
  ∀ n, P8489845446425724047.a n = (A014284 (n + 1) : ℝ)

end A014284

/-! ## A014284.P7120793316974786154

`∑[A182986(n+1)]+1`
-/

namespace A014284.P7120793316974786154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A014284.P7120793316974786154

namespace A014284

/-- `∑[A182986(n+1)]+1` -/
def P7120793316974786154.Spec : Prop :=
  ∀ n, P7120793316974786154.a n = A014284 (n + 1)

end A014284

/-! ## A014284.P10005992778859056487

`∑[A001747(n+1)/2]`
-/

namespace A014284.P10005992778859056487
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014284.P10005992778859056487

namespace A014284

/-- `∑[A001747(n+1)/2]` -/
def P10005992778859056487.Spec : Prop :=
  ∀ n, P10005992778859056487.a n = (A014284 (n + 1) : ℚ)

end A014284

/-! ## A014284.P3039506425359644121

`∑[A112773(n+1)/3]`
-/

namespace A014284.P3039506425359644121
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112773 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014284.P3039506425359644121

namespace A014284

/-- `∑[A112773(n+1)/3]` -/
def P3039506425359644121.Spec : Prop :=
  ∀ n, P3039506425359644121.a n = (A014284 (n + 1) : ℚ)

end A014284

/-! ## A014284.P10448981159269461603

`∑[A167136(n+1)-n]`
-/

namespace A014284.P10448981159269461603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167136 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014284.P10448981159269461603

namespace A014284

/-- `∑[A167136(n+1)-n]` -/
def P10448981159269461603.Spec : Prop :=
  ∀ n, P10448981159269461603.a n = A014284 (n + 1)

end A014284

/-! ## A014284.P14439898541037816741

`∑[A299763(n+1)]-n`
-/

namespace A014284.P14439898541037816741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A014284.P14439898541037816741

namespace A014284

/-- `∑[A299763(n+1)]-n` -/
def P14439898541037816741.Spec : Prop :=
  ∀ n, P14439898541037816741.a n = A014284 (n + 1)

end A014284

/-! ## A014284.P18183547548072881472

`a(n-1)+A000040(n)` with `a(0)=1`
-/

namespace A014284.P18183547548072881472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000040 n

end

end A014284.P18183547548072881472

namespace A014284

/-- `a(n-1)+A000040(n)` -/
def P18183547548072881472.Spec : Prop :=
  ∀ n, P18183547548072881472.a n = A014284 (n + 1)

end A014284

/-! ## A014284.P12002252899923960691

`A006005(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A014284.P12002252899923960691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A006005 n + a (n - 1)

end

end A014284.P12002252899923960691

namespace A014284

/-- `A006005(n)+a(n-1)` -/
def P12002252899923960691.Spec : Prop :=
  ∀ n, P12002252899923960691.a n = A014284 (n + 1)

end A014284

/-! ## A014284.P6096879235697122794

`∑[A162177(n+1)+n+1]`
-/

namespace A014284.P6096879235697122794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162177 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014284.P6096879235697122794

namespace A014284

/-- `∑[A162177(n+1)+n+1]` -/
def P6096879235697122794.Spec : Prop :=
  ∀ n, P6096879235697122794.a n = A014284 (n + 1)

end A014284

/-! ## A014284.P6376274711596569483

`∑[A090178(n+1)-(n+1)]`
-/

namespace A014284.P6376274711596569483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090178 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014284.P6376274711596569483

namespace A014284

/-- `∑[A090178(n+1)-(n+1)]` -/
def P6376274711596569483.Spec : Prop :=
  ∀ n, P6376274711596569483.a n = A014284 (n + 1)

end A014284

/-! ## A014284.P18116227684700045517

`∑[A164931(n+1)/(n+1)]`
-/

namespace A014284.P18116227684700045517
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164931 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014284.P18116227684700045517

namespace A014284

/-- `∑[A164931(n+1)/(n+1)]` -/
def P18116227684700045517.Spec : Prop :=
  ∀ n, P18116227684700045517.a n = (A014284 (n + 1) : ℚ)

end A014284

/-! ## A014284.P9054799373728246747

`a(n-1)+A006093(n)+1` with `a(0)=1`
-/

namespace A014284.P9054799373728246747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A006093 n + 1)

end

end A014284.P9054799373728246747

namespace A014284

/-- `a(n-1)+A006093(n)+1` -/
def P9054799373728246747.Spec : Prop :=
  ∀ n, P9054799373728246747.a n = A014284 (n + 1)

end A014284

/-! ## A014284.P15022887467326209209

`a(n-1)+A014689(n)+n` with `a(0)=1`
-/

namespace A014284.P15022887467326209209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A014689 n + (n : ℤ))

end

end A014284.P15022887467326209209

namespace A014284

/-- `a(n-1)+A014689(n)+n` -/
def P15022887467326209209.Spec : Prop :=
  ∀ n, P15022887467326209209.a n = A014284 (n + 1)

end A014284

/-! ## A014284.P11309674581847041463

`∑[A000040(C(2, n+2)+n)]-1`
-/

namespace A014284.P11309674581847041463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.choose 2 (n + 2) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014284.P11309674581847041463

namespace A014284

/-- `∑[A000040(C(2, n+2)+n)]-1` -/
def P11309674581847041463.Spec : Prop :=
  ∀ n, P11309674581847041463.a n = A014284 (n + 1)

end A014284

/-!
# A014285: a(n) = Sum_{j=1..n} j*prime(j).

The programs for A014285, the canonical program `A014285.P2422315619309490149` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014285 has offset 1).

The definition of A014285 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014285.P1021090831907668082

`∑[A033286(n+1)]`
-/

namespace A014285.P1021090831907668082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014285.P1021090831907668082

namespace A014285

/-- `∑[A033286(n+1)]` -/
def P1021090831907668082.Spec : Prop :=
  ∀ n, P1021090831907668082.a n = A014285 (n + 1)

end A014285

/-! ## A014285.P7687093249069927247

`∑[∑[A090942(n+1)]]`
-/

namespace A014285.P7687093249069927247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090942 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014285.P7687093249069927247

namespace A014285

/-- `∑[∑[A090942(n+1)]]` -/
def P7687093249069927247.Spec : Prop :=
  ∀ n, P7687093249069927247.a n = A014285 (n + 1)

end A014285

/-! ## A014285.P16605007274131618041

`∑[A083723(n+1)-n]`
-/

namespace A014285.P16605007274131618041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083723 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014285.P16605007274131618041

namespace A014285

/-- `∑[A083723(n+1)-n]` -/
def P16605007274131618041.Spec : Prop :=
  ∀ n, P16605007274131618041.a n = A014285 (n + 1)

end A014285

/-! ## A014285.P1575691910813651630

`∑[(n+1)*Δ[A007504(n)]]`
-/

namespace A014285.P1575691910813651630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014285.P1575691910813651630

namespace A014285

/-- `∑[(n+1)*Δ[A007504(n)]]` -/
def P1575691910813651630.Spec : Prop :=
  ∀ n, P1575691910813651630.a n = A014285 (n + 1)

end A014285

/-! ## A014285.P2422315619309490149

`∑[(n+1)*A000040(n+1)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014285

/-- `∑[(n+1)*A000040(n+1)]` -/
def P2422315619309490149.Spec : Prop :=
  ∀ n, P2422315619309490149.a n = A014285 (n + 1)

theorem P2422315619309490149.correct : P2422315619309490149.Spec := by
  intro n
  simp only [A014285, Nat.add_sub_cancel]

end A014285

/-! ## A014285.P1308839359898787397

`∑[A356868(n+1)/(n+1)]`
-/

namespace A014285.P1308839359898787397
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356868 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014285.P1308839359898787397

namespace A014285

/-- `∑[A356868(n+1)/(n+1)]` -/
def P1308839359898787397.Spec : Prop :=
  ∀ n, P1308839359898787397.a n = (A014285 (n + 1) : ℚ)

end A014285

/-! ## A014285.P15901850677807729957

`∑[(n+1)*(A040976(n+1)+2)]`
-/

namespace A014285.P15901850677807729957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A040976 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014285.P15901850677807729957

namespace A014285

/-- `∑[(n+1)*(A040976(n+1)+2)]` -/
def P15901850677807729957.Spec : Prop :=
  ∀ n, P15901850677807729957.a n = A014285 (n + 1)

end A014285

/-! ## A014285.P2219115138946766694

`a(n-1)+(n+1)*A000040(C(n+1, n))` with `a(0)=2`
-/

namespace A014285.P2219115138946766694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (n + 1 : ℤ) * A000040 (Nat.choose (n + 1) n)

end

end A014285.P2219115138946766694

namespace A014285

/-- `a(n-1)+(n+1)*A000040(C(n+1, n))` -/
def P2219115138946766694.Spec : Prop :=
  ∀ n, P2219115138946766694.a n = A014285 (n + 1)

end A014285

/-! ## A014285.P675187129441840197

`∑[lcm(2*n-(n-1), A000040(2*n-(n-1)))]`
-/

namespace A014285.P675187129441840197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((2 * n : ℤ) - ((n : ℤ) - 1)) (A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014285.P675187129441840197

namespace A014285

/-- `∑[lcm(2*n-(n-1), A000040(2*n-(n-1)))]` -/
def P675187129441840197.Spec : Prop :=
  ∀ n, (P675187129441840197.a n : ℤ) = A014285 (n + 1)

end A014285

/-! ## A014285.P17321024933650023738

`a(n-1)+(n+1)*A000040(2*n+1-n)` with `a(0)=2`
-/

namespace A014285.P17321024933650023738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (n + 1 : ℤ) * A000040 (2 * n + 1 - n)

end

end A014285.P17321024933650023738

namespace A014285

/-- `a(n-1)+(n+1)*A000040(2*n+1-n)` -/
def P17321024933650023738.Spec : Prop :=
  ∀ n, P17321024933650023738.a n = A014285 (n + 1)

end A014285

/-! ## A014285.P4700231486177604610

`A062020(n+1)+A014148(n+1)`
-/

namespace A014285.P4700231486177604610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062020 (n + 1) + A014148 (n + 1)

end

end A014285.P4700231486177604610

namespace A014285

/-- `A062020(n+1)+A014148(n+1)` -/
def P4700231486177604610.Spec : Prop :=
  ∀ n, P4700231486177604610.a n = A014285 (n + 1)

end A014285

/-! ## A014285.P15256662858166175001

`A162867(n+1)-A014148(n+1)`
-/

namespace A014285.P15256662858166175001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162867 (n + 1) - A014148 (n + 1)

end

end A014285.P15256662858166175001

namespace A014285

/-- `A162867(n+1)-A014148(n+1)` -/
def P15256662858166175001.Spec : Prop :=
  ∀ n, P15256662858166175001.a n = A014285 (n + 1)

end A014285

/-! ## A014285.P10784921761851061937

`A306834(n+1)*A309036(n+1)`
-/

namespace A014285.P10784921761851061937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306834 (n + 1) * A309036 (n + 1)

end

end A014285.P10784921761851061937

namespace A014285

/-- `A306834(n+1)*A309036(n+1)` -/
def P10784921761851061937.Spec : Prop :=
  ∀ n, P10784921761851061937.a n = A014285 (n + 1)

end A014285

/-! ## A014285.P4263146035908737691

`∑[A152535(n+1)+∑[A000040(n+1)]]`
-/

namespace A014285.P4263146035908737691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152535 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014285.P4263146035908737691

namespace A014285

/-- `∑[A152535(n+1)+∑[A000040(n+1)]]` -/
def P4263146035908737691.Spec : Prop :=
  ∀ n, P4263146035908737691.a n = A014285 (n + 1)

end A014285

/-! ## A014285.P2611605894739177427

`A007504(n+1)+A167214(n+1)-A014148(n+1)`
-/

namespace A014285.P2611605894739177427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) + (A167214 (n + 1) - A014148 (n + 1))

end

end A014285.P2611605894739177427

namespace A014285

/-- `A007504(n+1)+A167214(n+1)-A014148(n+1)` -/
def P2611605894739177427.Spec : Prop :=
  ∀ n, P2611605894739177427.a n = A014285 (n + 1)

end A014285

/-! ## A014285.P10917512912673243289

`A014148(n+1)+A167214(n+1)-A023662(n+1)`
-/

namespace A014285.P10917512912673243289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014148 (n + 1) + (A167214 (n + 1) - A023662 (n + 1))

end

end A014285.P10917512912673243289

namespace A014285

/-- `A014148(n+1)+A167214(n+1)-A023662(n+1)` -/
def P10917512912673243289.Spec : Prop :=
  ∀ n, P10917512912673243289.a n = A014285 (n + 1)

end A014285

/-! ## A014285.P8210582887809479289

`A014148(n+1)+A316322(n+1)-A167214(n+1)`
-/

namespace A014285.P8210582887809479289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014148 (n + 1) + (A316322 (n + 1) - A167214 (n + 1))

end

end A014285.P8210582887809479289

namespace A014285

/-- `A014148(n+1)+A316322(n+1)-A167214(n+1)` -/
def P8210582887809479289.Spec : Prop :=
  ∀ n, P8210582887809479289.a n = A014285 (n + 1)

end A014285

/-! ## A014285.P4588451291081545145

`A007504(n+1)*A306834(n+1)/A307716(n+1)`
-/

namespace A014285.P4588451291081545145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) * A306834 (n + 1) : ℚ) / (A307716 (n + 1) : ℚ)

end

end A014285.P4588451291081545145

namespace A014285

/-- `A007504(n+1)*A306834(n+1)/A307716(n+1)` -/
def P4588451291081545145.Spec : Prop :=
  ∀ n, P4588451291081545145.a n = (A014285 (n + 1) : ℚ)

end A014285

/-! ## A014285.P17131655759655484468

`∑[A083726(n+1)-(n+1)]`
-/

namespace A014285.P17131655759655484468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083726 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014285.P17131655759655484468

namespace A014285

/-- `∑[A083726(n+1)-(n+1)]` -/
def P17131655759655484468.Spec : Prop :=
  ∀ n, P17131655759655484468.a n = A014285 (n + 1)

end A014285

/-! ## A014285.P15604944238851220318

`∑[(n+1)*A008578(n+2)]`
-/

namespace A014285.P15604944238851220318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014285.P15604944238851220318

namespace A014285

/-- `∑[(n+1)*A008578(n+2)]` -/
def P15604944238851220318.Spec : Prop :=
  ∀ n, P15604944238851220318.a n = A014285 (n + 1)

end A014285

/-!
# A014286: a(n) = Sum_{j=0..n} j*Fibonacci(j).

The programs for A014286, the canonical program `A014286.P3857901398610574397` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014286 has offset 0).

The definition of A014286 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014286.P3857901398610574397

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)+2` with `a(0)=0, a(1)=1, a(2)=3, a(3)=9`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014286

/-- `2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)+2` -/
def P3857901398610574397.Spec : Prop :=
  ∀ n, P3857901398610574397.a n = A014286 n

theorem P3857901398610574397.correct : P3857901398610574397.Spec := by
  intro n
  simp only [A014286]

end A014286

/-! ## A014286.P16192037397265673724

`∑[n*Δ[a(n-2)+a(n-1)]]` with `a(0)=1, a(1)=1`
-/

namespace A014286.P16192037397265673724
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (n - 2) + f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014286.P16192037397265673724

namespace A014286

/-- `∑[n*Δ[a(n-2)+a(n-1)]]` -/
def P16192037397265673724.Spec : Prop :=
  ∀ n, P16192037397265673724.a n = A014286 n

end A014286

/-! ## A014286.P9032907651613140942

`∑[n*∑[a(n-1)+a(n-2)]]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A014286.P9032907651613140942
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f2 =>
  f2 (n - 1) + f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014286.P9032907651613140942

namespace A014286

/-- `∑[n*∑[a(n-1)+a(n-2)]]` -/
def P9032907651613140942.Spec : Prop :=
  ∀ n, (P9032907651613140942.a n : ℤ) = A014286 n

end A014286

/-! ## A014286.P734001739462953081

`∑[A045925(n)]`
-/

namespace A014286.P734001739462953081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014286.P734001739462953081

namespace A014286

/-- `∑[A045925(n)]` -/
def P734001739462953081.Spec : Prop :=
  ∀ n, P734001739462953081.a n = A014286 n

end A014286

/-! ## A014286.P10347546347987388043

`∑[n*A000045(n)]`
-/

namespace A014286.P10347546347987388043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014286.P10347546347987388043

namespace A014286

/-- `∑[n*A000045(n)]` -/
def P10347546347987388043.Spec : Prop :=
  ∀ n, P10347546347987388043.a n = A014286 n

end A014286

/-! ## A014286.P18377765230797674599

`∑[abs(n*A236191(n))]`
-/

namespace A014286.P18377765230797674599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A236191 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014286.P18377765230797674599

namespace A014286

/-- `∑[abs(n*A236191(n))]` -/
def P18377765230797674599.Spec : Prop :=
  ∀ n, P18377765230797674599.a n = A014286 n

end A014286

/-! ## A014286.P14820187153532212480

`∑[abs(n*A333378(n))]`
-/

namespace A014286.P14820187153532212480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A333378 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014286.P14820187153532212480

namespace A014286

/-- `∑[abs(n*A333378(n))]` -/
def P14820187153532212480.Spec : Prop :=
  ∀ n, P14820187153532212480.a n = A014286 n

end A014286

/-! ## A014286.P1313555343860091126

`∑[n*A212804(n+1)]`
-/

namespace A014286.P1313555343860091126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A212804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014286.P1313555343860091126

namespace A014286

/-- `∑[n*A212804(n+1)]` -/
def P1313555343860091126.Spec : Prop :=
  ∀ n, P1313555343860091126.a n = A014286 n

end A014286

/-! ## A014286.P9643229776549823481

`∑[n*A324969(n+1)]`
-/

namespace A014286.P9643229776549823481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A324969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014286.P9643229776549823481

namespace A014286

/-- `∑[n*A324969(n+1)]` -/
def P9643229776549823481.Spec : Prop :=
  ∀ n, P9643229776549823481.a n = A014286 n

end A014286

/-! ## A014286.P11493014739153250325

`∑[n*(A001611(n)-1)]`
-/

namespace A014286.P11493014739153250325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A001611 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014286.P11493014739153250325

namespace A014286

/-- `∑[n*(A001611(n)-1)]` -/
def P11493014739153250325.Spec : Prop :=
  ∀ n, P11493014739153250325.a n = A014286 n

end A014286

/-! ## A014286.P162632557639383425

`∑[n*(A157725(n)-2)]`
-/

namespace A014286.P162632557639383425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A157725 n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014286.P162632557639383425

namespace A014286

/-- `∑[n*(A157725(n)-2)]` -/
def P162632557639383425.Spec : Prop :=
  ∀ n, P162632557639383425.a n = A014286 n

end A014286

/-! ## A014286.P4341122196580636518

`∑[n*A053602(2*n)]`
-/

namespace A014286.P4341122196580636518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A053602 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014286.P4341122196580636518

namespace A014286

/-- `∑[n*A053602(2*n)]` -/
def P4341122196580636518.Spec : Prop :=
  ∀ n, P4341122196580636518.a n = A014286 n

end A014286

/-! ## A014286.P17025401545240995708

`∑[n*A103609(2*n)]`
-/

namespace A014286.P17025401545240995708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A103609 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014286.P17025401545240995708

namespace A014286

/-- `∑[n*A103609(2*n)]` -/
def P17025401545240995708.Spec : Prop :=
  ∀ n, P17025401545240995708.a n = A014286 n

end A014286

/-! ## A014286.P7789576762367431351

`∑[n*A302126(2*n)]`
-/

namespace A014286.P7789576762367431351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A302126 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014286.P7789576762367431351

namespace A014286

/-- `∑[n*A302126(2*n)]` -/
def P7789576762367431351.Spec : Prop :=
  ∀ n, P7789576762367431351.a n = A014286 n

end A014286

/-! ## A014286.P12927627476217835948

`∑[n/2*A055389(n)]`
-/

namespace A014286.P12927627476217835948
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A055389 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014286.P12927627476217835948

namespace A014286

/-- `∑[n/2*A055389(n)]` -/
def P12927627476217835948.Spec : Prop :=
  ∀ n, P12927627476217835948.a n = (A014286 n : ℚ)

end A014286

/-! ## A014286.P13458989463709846593

`∑[n*(A065220(n)+n)]`
-/

namespace A014286.P13458989463709846593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A065220 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014286.P13458989463709846593

namespace A014286

/-- `∑[n*(A065220(n)+n)]` -/
def P13458989463709846593.Spec : Prop :=
  ∀ n, P13458989463709846593.a n = A014286 n

end A014286

/-! ## A014286.P2816123473780507849

`∑[n*(A002062(n)-n)]`
-/

namespace A014286.P2816123473780507849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A002062 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014286.P2816123473780507849

namespace A014286

/-- `∑[n*(A002062(n)-n)]` -/
def P2816123473780507849.Spec : Prop :=
  ∀ n, P2816123473780507849.a n = A014286 n

end A014286

/-! ## A014286.P13512465375527688104

`∑[n*Δ[A000071(n+1)]]`
-/

namespace A014286.P13512465375527688104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014286.P13512465375527688104

namespace A014286

/-- `∑[n*Δ[A000071(n+1)]]` -/
def P13512465375527688104.Spec : Prop :=
  ∀ n, P13512465375527688104.a n = A014286 n

end A014286

/-!
# A014288: a(n) = floor(Sum_{k=0..n} k!/2), or floor( A003422(n+1)/2 ).

The programs for A014288, the canonical program `A014288.P13511112629114015342` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014288 has offset 0).

The definition of A014288 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014288.P7463772890984290759

`(n+1)*a(n-1)-n*a(n-2)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A014288.P7463772890984290759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  (n + 1 : ℤ) * a (n - 1) - (n : ℤ) * a (n - 2)

end

end A014288.P7463772890984290759

namespace A014288

/-- `(n+1)*a(n-1)-n*a(n-2)` -/
def P7463772890984290759.Spec : Prop :=
  ∀ n, P7463772890984290759.a n = A014288 n

end A014288

/-! ## A014288.P13511112629114015342

`floor(A003422(n+1)/2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014288

/-- `floor(A003422(n+1)/2)` -/
def P13511112629114015342.Spec : Prop :=
  ∀ n, P13511112629114015342.a n = A014288 n

theorem P13511112629114015342.correct : P13511112629114015342.Spec := by
  intro n
  simp only [A014288]

end A014288

/-! ## A014288.P4598078672267183934

`∑[∏[gcd(n, C(2, n))]]-1`
-/

namespace A014288.P4598078672267183934
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.choose 2 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A014288.P4598078672267183934

namespace A014288

/-- `∑[∏[gcd(n, C(2, n))]]-1` -/
def P4598078672267183934.Spec : Prop :=
  ∀ n, P4598078672267183934.a n = A014288 n

end A014288

/-! ## A014288.P7869989057164276167

`∑[n*a(n-1)]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A014288.P7869989057164276167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014288.P7869989057164276167

namespace A014288

/-- `∑[n*a(n-1)]` -/
def P7869989057164276167.Spec : Prop :=
  ∀ n, (P7869989057164276167.a n : ℤ) = A014288 n

end A014288

/-! ## A014288.P17933402000343674645

`∑[∏[n^(1-C(2, n))]]-1`
-/

namespace A014288.P17933402000343674645
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (1 - (Nat.choose 2 n : ℤ) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014288.P17933402000343674645

namespace A014288

/-- `∑[∏[n^(1-C(2, n))]]-1` -/
def P17933402000343674645.Spec : Prop :=
  ∀ n, P17933402000343674645.a n = (A014288 n : ℚ)

end A014288

/-! ## A014288.P17587054692070381387

`∑[∏[n^ceil(tanh(n-2))]]-1`
-/

namespace A014288.P17587054692070381387
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (⌈Real.tanh ((n : ℤ) - 2 : ℝ)⌉ : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014288.P17587054692070381387

namespace A014288

/-- `∑[∏[n^ceil(tanh(n-2))]]-1` -/
def P17587054692070381387.Spec : Prop :=
  ∀ n, P17587054692070381387.a n = (A014288 n : ℚ)

end A014288

/-! ## A014288.P9994800722746095130

`∑[a(n-1)/tan(acot(n))]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A014288.P9994800722746095130
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  f1 (n - 1) / Real.tan (SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014288.P9994800722746095130

namespace A014288

/-- `∑[a(n-1)/tan(acot(n))]` -/
def P9994800722746095130.Spec : Prop :=
  ∀ n, P9994800722746095130.a n = (A014288 n : ℝ)

end A014288

/-! ## A014288.P9478203949214115188

`∑[a(n-1)/cot(atan(n))]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A014288.P9478203949214115188
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  f1 (n - 1) / Real.cot (Real.arctan (n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014288.P9478203949214115188

namespace A014288

/-- `∑[a(n-1)/cot(atan(n))]` -/
def P9478203949214115188.Spec : Prop :=
  ∀ n, P9478203949214115188.a n = (A014288 n : ℝ)

end A014288

/-! ## A014288.P15402995623749435137

`∑[∏[n^round(n/(n+3))]]-1`
-/

namespace A014288.P15402995623749435137
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (SequenceMachineLib.roundAway ((n : ℚ) / (n + 3 : ℚ)) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014288.P15402995623749435137

namespace A014288

/-- `∑[∏[n^round(n/(n+3))]]-1` -/
def P15402995623749435137.Spec : Prop :=
  ∀ n, P15402995623749435137.a n = (A014288 n : ℚ)

end A014288

/-! ## A014288.P12313406229091378861

`∑[a(n-1)/n^(-1)]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A014288.P12313406229091378861
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  f1 (n - 1) / (n : ℚ) ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014288.P12313406229091378861

namespace A014288

/-- `∑[a(n-1)/n^(-1)]` -/
def P12313406229091378861.Spec : Prop :=
  ∀ n, P12313406229091378861.a n = (A014288 n : ℚ)

end A014288

/-!
# A014289: Inverse of 280th cyclotomic polynomial.

The programs for A014289, there is no canonical definition to state claims against.
-/

/-! ## A014289.P4664145501206202487

`A014149(A004525(n))`
-/

namespace A014289.P4664145501206202487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014149 (A004525 n).toNat

end

end A014289.P4664145501206202487

/-!
# A014291: Imaginary Rabbits: imaginary part of a(0)=i; a(1)=-i; a(n) = a(n-1) + i*a(n-2), with i = sqrt(-1).

The programs for A014291, the canonical program `A014291.P10377581712199427629` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014291 has offset 0).

The definition of A014291 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014291.P10377581712199427629

`2*a(n-1)-a(n-2)-a(n-4)` with `a(0)=1, a(1)=-1, a(2)=-1, a(3)=-1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014291

/-- `2*a(n-1)-a(n-2)-a(n-4)` -/
def P10377581712199427629.Spec : Prop :=
  ∀ n, P10377581712199427629.a n = A014291 n

theorem P10377581712199427629.correct : P10377581712199427629.Spec := by
  intro n
  simp only [A014291]

end A014291

/-! ## A014291.P11845097829950156569

`Δ[A104862(n)]-A104862(n)`
-/

namespace A014291.P11845097829950156569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A104862 n

end

end A014291.P11845097829950156569

namespace A014291

/-- `Δ[A104862(n)]-A104862(n)` -/
def P11845097829950156569.Spec : Prop :=
  ∀ n, P11845097829950156569.a n = A014291 n

end A014291

/-! ## A014291.P14437639039559101056

`A104862(n+1)-2*A104862(n)`
-/

namespace A014291.P14437639039559101056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104862 (n + 1) - 2 * A104862 n

end

end A014291.P14437639039559101056

namespace A014291

/-- `A104862(n+1)-2*A104862(n)` -/
def P14437639039559101056.Spec : Prop :=
  ∀ n, P14437639039559101056.a n = A014291 n

end A014291

/-! ## A014291.P7316027755415815295

`Δ[-A058184(n+1)]`
-/

namespace A014291.P7316027755415815295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A058184 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014291.P7316027755415815295

namespace A014291

/-- `Δ[-A058184(n+1)]` -/
def P7316027755415815295.Spec : Prop :=
  ∀ n, P7316027755415815295.a n = A014291 n

end A014291

/-! ## A014291.P17891008451480911041

`Δ[Δ[n-∑[A058184(n)]]]`
-/

namespace A014291.P17891008451480911041
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058184 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014291.P17891008451480911041

namespace A014291

/-- `Δ[Δ[n-∑[A058184(n)]]]` -/
def P17891008451480911041.Spec : Prop :=
  ∀ n, P17891008451480911041.a n = A014291 n

end A014291

/-! ## A014291.P98148133346270838

`Δ[Δ[A014292(n)]-A014292(n)]`
-/

namespace A014291.P98148133346270838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014292 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A014292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014291.P98148133346270838

namespace A014291

/-- `Δ[Δ[A014292(n)]-A014292(n)]` -/
def P98148133346270838.Spec : Prop :=
  ∀ n, P98148133346270838.a n = A014291 n

end A014291

/-! ## A014291.P9763443514624827426

`A058184(n+1)-A058184(n+2)`
-/

namespace A014291.P9763443514624827426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058184 (n + 1) - A058184 (n + 2)

end

end A014291.P9763443514624827426

namespace A014291

/-- `A058184(n+1)-A058184(n+2)` -/
def P9763443514624827426.Spec : Prop :=
  ∀ n, P9763443514624827426.a n = A014291 n

end A014291

/-! ## A014291.P8164671989778052693

`Δ[Δ[Δ[A058184(n+3)]]]`
-/

namespace A014291.P8164671989778052693
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058184 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014291.P8164671989778052693

namespace A014291

/-- `Δ[Δ[Δ[A058184(n+3)]]]` -/
def P8164671989778052693.Spec : Prop :=
  ∀ n, P8164671989778052693.a n = A014291 n

end A014291

/-!
# A014292: a(n) = 2*a(n-1) - a(n-2) - a(n-4) with a(0) = a(1) = 0, a(2) = 1, a(3) = 2.

The programs for A014292, the canonical program `A014292.P3835518828606182572` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014292 has offset 0).

The definition of A014292 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-a(n-2)-a(n-4)` (program `A014292.P3835518828606182572`, by `A014292.P3835518828606182572.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014292.P3835518828606182572

`2*a(n-1)-a(n-2)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014292

/-- `2*a(n-1)-a(n-2)-a(n-4)` -/
def P3835518828606182572.Spec : Prop :=
  ∀ n, P3835518828606182572.a n = A014292 n

theorem P3835518828606182572.correct : P3835518828606182572.Spec := by
  intro n
  simp only [A014292]

end A014292

/-! ## A014292.P1440047367208874357

`a(n-1)-(a(n-2)-(a(n-1)-a(n-4)))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A014292.P1440047367208874357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 2] fun n a =>
  a (n - 1) - (a (n - 2) - (a (n - 1) - a (n - 4)))

end

end A014292.P1440047367208874357

namespace A014292

/-- `a(n-1)-(a(n-2)-(a(n-1)-a(n-4)))` -/
def P1440047367208874357.Spec : Prop :=
  ∀ n, P1440047367208874357.a n = A014292 n

theorem P1440047367208874357.correct : P1440047367208874357.Spec := by
  intro n
  simp only [A014292, Nat.add_sub_cancel, A014292.P1440047367208874357.a, A014292.P3835518828606182572.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A014292

/-! ## A014292.P12060454180389272990

`A104862(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A014292.P12060454180389272990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A104862 (n - 1) + a (n - 1)

end

end A014292.P12060454180389272990

namespace A014292

/-- `A104862(n-1)+a(n-1)` -/
def P12060454180389272990.Spec : Prop :=
  ∀ n, P12060454180389272990.a n = A014292 n

end A014292

/-! ## A014292.P11893383412494415125

`∑[A104862(n)]-A104862(n)`
-/

namespace A014292.P11893383412494415125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A104862 n

end

end A014292.P11893383412494415125

namespace A014292

/-- `∑[A104862(n)]-A104862(n)` -/
def P11893383412494415125.Spec : Prop :=
  ∀ n, P11893383412494415125.a n = A014292 n

end A014292

/-! ## A014292.P17473042304798554928

`a(n-1)+a(n-1)-A058184(n)` with `a(0)=0`
-/

namespace A014292.P17473042304798554928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (a (n - 1) - A058184 n)

end

end A014292.P17473042304798554928

namespace A014292

/-- `a(n-1)+a(n-1)-A058184(n)` -/
def P17473042304798554928.Spec : Prop :=
  ∀ n, P17473042304798554928.a n = A014292 n

end A014292

/-! ## A014292.P13456260952326762573

`Δ[-A104862(n+2)]`
-/

namespace A014292.P13456260952326762573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A104862 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014292.P13456260952326762573

namespace A014292

/-- `Δ[-A104862(n+2)]` -/
def P13456260952326762573.Spec : Prop :=
  ∀ n, P13456260952326762573.a n = A014292 n

end A014292

/-! ## A014292.P4082176695400462398

`A104862(n+2)-A104862(n+3)`
-/

namespace A014292.P4082176695400462398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104862 (n + 2) - A104862 (n + 3)

end

end A014292.P4082176695400462398

namespace A014292

/-- `A104862(n+2)-A104862(n+3)` -/
def P4082176695400462398.Spec : Prop :=
  ∀ n, P4082176695400462398.a n = A014292 n

end A014292

/-!
# A014293: a(n) = n^(n+1) - n + 1.

The programs for A014293, there is no canonical definition to state claims against.
-/

/-! ## A014293.P17316297279282321254

`n^(n+1)+1-n`
-/

namespace A014293.P17316297279282321254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ (n + 1) : ℤ) + (1 - (n : ℤ))

end

end A014293.P17316297279282321254

/-! ## A014293.P11757643039443681813

`or(1, n*(n^n-1))`
-/

namespace A014293.P11757643039443681813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) * ((n ^ n : ℤ) - 1))

end

end A014293.P11757643039443681813

/-! ## A014293.P12844355702864547979

`xor(1, n*(n^n-1))`
-/

namespace A014293.P12844355702864547979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) * ((n ^ n : ℤ) - 1))

end

end A014293.P12844355702864547979

/-! ## A014293.P9974748583661793677

`ceil(record[(n-2)^(n-1)]-(n-1))`
-/

namespace A014293.P9974748583661793677
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((n : ℤ) - 1 : ℚ)⌉

end

end A014293.P9974748583661793677

/-! ## A014293.P477342740311342420

`round(record[(n-2)^(n-1)]-(n-1))`
-/

namespace A014293.P477342740311342420
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((n : ℤ) - 1 : ℚ))

end

end A014293.P477342740311342420

/-! ## A014293.P4611534741449553054

`floor(record[(n-3)^(n-2)]-(n-1))`
-/

namespace A014293.P4611534741449553054
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((n : ℤ) - 1 : ℚ)⌋

end

end A014293.P4611534741449553054

/-! ## A014293.P1450187721050413502

`abs(n-A110567(n))`
-/

namespace A014293.P1450187721050413502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A110567 n|

end

end A014293.P1450187721050413502

/-! ## A014293.P9239382281634923171

`abs(A065440(n+1)+1-n)`
-/

namespace A014293.P9239382281634923171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A065440 (n + 1) + (1 - (n : ℤ))|

end

end A014293.P9239382281634923171

/-! ## A014293.P15399462311161792664

`abs(n*A000312(n)+1-n)`
-/

namespace A014293.P15399462311161792664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A000312 n + 1 - (n : ℤ)|

end

end A014293.P15399462311161792664

/-! ## A014293.P11877245530424518051

`abs(n*A028310(n)^n-abs(1-n))`
-/

namespace A014293.P11877245530424518051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) * A028310 n ^ n - |1 - (n : ℤ)|)|

end

end A014293.P11877245530424518051

/-!
# A014294: Inverse of 285th cyclotomic polynomial.

The programs for A014294, there is no canonical definition to state claims against.
-/

/-! ## A014294.P7663628353057660887

`A014579(n)*A033999(n)`
-/

namespace A014294.P7663628353057660887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014579 n * A033999 n

end

end A014294.P7663628353057660887

/-!
# A014295: Inverse of 286th cyclotomic polynomial.

The programs for A014295, there is no canonical definition to state claims against.
-/

/-! ## A014295.P5018395536059175997

`A014152(n)*A033999(n)`
-/

namespace A014295.P5018395536059175997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014152 n * A033999 n

end

end A014295.P5018395536059175997

/-!
# A014296: Inverse of 287th cyclotomic polynomial.

The programs for A014296, there is no canonical definition to state claims against.
-/

/-! ## A014296.P7442750179389615811

`A014583(n)*A033999(n)`
-/

namespace A014296.P7442750179389615811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014583 n * A033999 n

end

end A014296.P7442750179389615811

/-!
# A014297: a(n) = n! * C(n+2, 2) * 2^(n+1).

The programs for A014297, the canonical program `A014297.P1191720558314754847` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014297 has offset 0).

The definition of A014297 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014297.P1191720558314754847

`2^n*(n+2)!`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014297

/-- `2^n*(n+2)!` -/
def P1191720558314754847.Spec : Prop :=
  ∀ n, (P1191720558314754847.a n : ℤ) = A014297 n

theorem P1191720558314754847.correct : P1191720558314754847.Spec := by
  intro n
  simp only [A014297]

end A014297

/-! ## A014297.P5828719872482919757

`2*A051578(n)`
-/

namespace A014297.P5828719872482919757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051578 n

end

end A014297.P5828719872482919757

namespace A014297

/-- `2*A051578(n)` -/
def P5828719872482919757.Spec : Prop :=
  ∀ n, P5828719872482919757.a n = A014297 n

end A014297

/-! ## A014297.P2512636971626195476

`∏[2*(n+2)]/2`
-/

namespace A014297.P2512636971626195476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A014297.P2512636971626195476

namespace A014297

/-- `∏[2*(n+2)]/2` -/
def P2512636971626195476.Spec : Prop :=
  ∀ n, P2512636971626195476.a n = (A014297 n : ℚ)

end A014297

/-! ## A014297.P17479950446491797200

`∏[a(n-1)+2]` with `a(0)=2, a(1)=6`
-/

namespace A014297.P17479950446491797200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 6] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A014297.P17479950446491797200

namespace A014297

/-- `∏[a(n-1)+2]` -/
def P17479950446491797200.Spec : Prop :=
  ∀ n, (P17479950446491797200.a n : ℤ) = A014297 n

end A014297

/-! ## A014297.P12571373924558329634

`lcm(2, 2^n*∏[n+2])`
-/

namespace A014297.P12571373924558329634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (2 ^ n * (∏ j ∈ Finset.range (n + 1), f1 j))

end

end A014297.P12571373924558329634

namespace A014297

/-- `lcm(2, 2^n*∏[n+2])` -/
def P12571373924558329634.Spec : Prop :=
  ∀ n, (P12571373924558329634.a n : ℤ) = A014297 n

end A014297

/-! ## A014297.P3630908591064594039

`∏[(n+2)*gcd(2, 4^n)]`
-/

namespace A014297.P3630908591064594039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.gcd 2 (4 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A014297.P3630908591064594039

namespace A014297

/-- `∏[(n+2)*gcd(2, 4^n)]` -/
def P3630908591064594039.Spec : Prop :=
  ∀ n, (P3630908591064594039.a n : ℤ) = A014297 n

end A014297

/-! ## A014297.P11121090888152430737

`floor((n+2)!/2^-n)`
-/

namespace A014297.P11121090888152430737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial (n + 2) : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)⌋

end

end A014297.P11121090888152430737

namespace A014297

/-- `floor((n+2)!/2^-n)` -/
def P11121090888152430737.Spec : Prop :=
  ∀ n, P11121090888152430737.a n = A014297 n

end A014297

/-! ## A014297.P16578579642879356660

`ceil((n+2)!/2^-n)`
-/

namespace A014297.P16578579642879356660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial (n + 2) : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)⌉

end

end A014297.P16578579642879356660

namespace A014297

/-- `ceil((n+2)!/2^-n)` -/
def P16578579642879356660.Spec : Prop :=
  ∀ n, P16578579642879356660.a n = A014297 n

end A014297

/-! ## A014297.P9106160781497453121

`round((n+2)!/2^-n)`
-/

namespace A014297.P9106160781497453121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial (n + 2) : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ))

end

end A014297.P9106160781497453121

namespace A014297

/-- `round((n+2)!/2^-n)` -/
def P9106160781497453121.Spec : Prop :=
  ∀ n, P9106160781497453121.a n = A014297 n

end A014297

/-! ## A014297.P1585625024111465130

`∏[(n+2)*ceil(atan(n+1))]`
-/

namespace A014297.P1585625024111465130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * ⌈Real.arctan (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A014297.P1585625024111465130

namespace A014297

/-- `∏[(n+2)*ceil(atan(n+1))]` -/
def P1585625024111465130.Spec : Prop :=
  ∀ n, P1585625024111465130.a n = A014297 n

end A014297

/-!
# A014298: a(n) = 2^n * (3n)! / (2n+1)!.

The programs for A014298, the canonical program `A014298.P6934900401611836865` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014298 has offset 0).

The definition of A014298 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014298.P6934900401611836865

`2^n*(3*n)!/(2*n+1)!`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014298

/-- `2^n*(3*n)!/(2*n+1)!` -/
def P6934900401611836865.Spec : Prop :=
  ∀ n, P6934900401611836865.a n = (A014298 n : ℚ)

end A014298

/-! ## A014298.P5315206768193637254

`n!*A153231(n)`
-/

namespace A014298.P5315206768193637254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A153231 n

end

end A014298.P5315206768193637254

namespace A014298

/-- `n!*A153231(n)` -/
def P5315206768193637254.Spec : Prop :=
  ∀ n, P5315206768193637254.a n = A014298 n

end A014298

/-! ## A014298.P10641523526339933186

`(n+1)!*A000309(n)`
-/

namespace A014298.P10641523526339933186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A000309 n

end

end A014298.P10641523526339933186

namespace A014298

/-- `(n+1)!*A000309(n)` -/
def P10641523526339933186.Spec : Prop :=
  ∀ n, P10641523526339933186.a n = A014298 n

end A014298

/-! ## A014298.P7242146111333832235

`∏[floor(2/acot(n))]*A001764(n)`
-/

namespace A014298.P7242146111333832235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A001764 n

end

end A014298.P7242146111333832235

namespace A014298

/-- `∏[floor(2/acot(n))]*A001764(n)` -/
def P7242146111333832235.Spec : Prop :=
  ∀ n, P7242146111333832235.a n = A014298 n

end A014298

/-! ## A014298.P16281171274109658221

`C(3*n, n)/(2*n+1)*∏[A004277(n)]`
-/

namespace A014298.P16281171274109658221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n : ℚ) / (2 * n + 1 : ℚ) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A014298.P16281171274109658221

namespace A014298

/-- `C(3*n, n)/(2*n+1)*∏[A004277(n)]` -/
def P16281171274109658221.Spec : Prop :=
  ∀ n, P16281171274109658221.a n = (A014298 n : ℚ)

end A014298

/-!
# A014299: Inverse of 290th cyclotomic polynomial.

The programs for A014299, there is no canonical definition to state claims against.
-/

/-! ## A014299.P16325032121024957025

`(-1)^n*A014154(n)`
-/

namespace A014299.P16325032121024957025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A014154 n

end

end A014299.P16325032121024957025

