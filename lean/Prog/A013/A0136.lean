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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C008
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A013600: a(n) = nextprime(6^n)-6^n.

The programs for A013600, the canonical program `A013600.P6360817973615106358` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013600 has offset 0).

The definition of A013600 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063766, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A013600.P6360817973615106358

`A063766(n)-6^n`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A013600

/-- `A063766(n)-6^n` -/
def P6360817973615106358.Spec : Prop :=
  ∀ n, P6360817973615106358.a n = A013600 n

theorem P6360817973615106358.correct : P6360817973615106358.Spec := by
  intro n
  simp only [A013600]

end A013600

/-! ## A013600.P9846501200896681579

`abs(A000400(n)-A063766(n))`
-/

namespace A013600.P9846501200896681579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000400 n - A063766 n|

end

end A013600.P9846501200896681579

namespace A013600

/-- `abs(A000400(n)-A063766(n))` -/
def P9846501200896681579.Spec : Prop :=
  ∀ n, P9846501200896681579.a n = A013600 n

end A013600

/-! ## A013600.P10845170883392803037

`and(A063766(n), A134062(n))+1`
-/

namespace A013600.P10845170883392803037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063766 n) (A134062 n) + 1

end

end A013600.P10845170883392803037

namespace A013600

/-- `and(A063766(n), A134062(n))+1` -/
def P10845170883392803037.Spec : Prop :=
  ∀ n, P10845170883392803037.a n = A013600 n

end A013600

/-! ## A013600.P5970514160886961161

`A028310(A063766(n)%(2^n))`
-/

namespace A013600.P5970514160886961161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A063766 n) (2 ^ n : ℤ)).toNat

end

end A013600.P5970514160886961161

namespace A013600

/-- `A028310(A063766(n)%(2^n))` -/
def P5970514160886961161.Spec : Prop :=
  ∀ n, P5970514160886961161.a n = A013600 n

end A013600

/-! ## A013600.P16715457012854362543

`A028310(A063766(n)-A000400(n))`
-/

namespace A013600.P16715457012854362543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A063766 n - A000400 n).toNat

end

end A013600.P16715457012854362543

namespace A013600

/-- `A028310(A063766(n)-A000400(n))` -/
def P16715457012854362543.Spec : Prop :=
  ∀ n, P16715457012854362543.a n = A013600 n

end A013600

/-! ## A013600.P9428362150881041323

`A029579(A063766(n)-A000400(n))`
-/

namespace A013600.P9428362150881041323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A063766 n - A000400 n).toNat

end

end A013600.P9428362150881041323

namespace A013600

/-- `A029579(A063766(n)-A000400(n))` -/
def P9428362150881041323.Spec : Prop :=
  ∀ n, P9428362150881041323.a n = A013600 n

end A013600

/-! ## A013600.P17370377453140557870

`A004442(A063766(n)-A062394(n))`
-/

namespace A013600.P17370377453140557870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A063766 n - A062394 n).toNat

end

end A013600.P17370377453140557870

namespace A013600

/-- `A004442(A063766(n)-A062394(n))` -/
def P17370377453140557870.Spec : Prop :=
  ∀ n, P17370377453140557870.a n = A013600 n

end A013600

/-! ## A013600.P9748869108398559194

`A109613(A063766(n)%A000079(n))`
-/

namespace A013600.P9748869108398559194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (Int.tmod (A063766 n) (A000079 n)).toNat

end

end A013600.P9748869108398559194

namespace A013600

/-- `A109613(A063766(n)%A000079(n))` -/
def P9748869108398559194.Spec : Prop :=
  ∀ n, P9748869108398559194.a n = A013600 n

end A013600

/-! ## A013600.P8677201794891165933

`A028310(and(A000225(n), A063766(n)))`
-/

namespace A013600.P8677201794891165933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.land (A000225 n) (A063766 n)).toNat

end

end A013600.P8677201794891165933

namespace A013600

/-- `A028310(and(A000225(n), A063766(n)))` -/
def P8677201794891165933.Spec : Prop :=
  ∀ n, P8677201794891165933.a n = A013600 n

end A013600

/-! ## A013600.P2840874874494350652

`A029579(and(A000225(n), A063766(n)))`
-/

namespace A013600.P2840874874494350652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (Int.land (A000225 n) (A063766 n)).toNat

end

end A013600.P2840874874494350652

namespace A013600

/-- `A029579(and(A000225(n), A063766(n)))` -/
def P2840874874494350652.Spec : Prop :=
  ∀ n, P2840874874494350652.a n = A013600 n

end A013600

/-! ## A013600.P8845069051485035288

`A109613(and(A000225(n), A063766(n)))`
-/

namespace A013600.P8845069051485035288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (Int.land (A000225 n) (A063766 n)).toNat

end

end A013600.P8845069051485035288

namespace A013600

/-- `A109613(and(A000225(n), A063766(n)))` -/
def P8845069051485035288.Spec : Prop :=
  ∀ n, P8845069051485035288.a n = A013600 n

end A013600

/-! ## A013600.P5629849229771756745

`A004442(and(A063766(n), A134062(n)))`
-/

namespace A013600.P5629849229771756745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (Int.land (A063766 n) (A134062 n)).toNat

end

end A013600.P5629849229771756745

namespace A013600

/-- `A004442(and(A063766(n), A134062(n)))` -/
def P5629849229771756745.Spec : Prop :=
  ∀ n, P5629849229771756745.a n = A013600 n

end A013600

/-! ## A013600.P1734426240948865409

`A029579(and(A063766(n), A153894(n)))`
-/

namespace A013600.P1734426240948865409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (Int.land (A063766 n) (A153894 n)).toNat

end

end A013600.P1734426240948865409

namespace A013600

/-- `A029579(and(A063766(n), A153894(n)))` -/
def P1734426240948865409.Spec : Prop :=
  ∀ n, P1734426240948865409.a n = A013600 n

end A013600

/-!
# A013601: a(n) = nextprime(7^n)-7^n.

The programs for A013601, there is no canonical definition to state claims against.
-/

/-! ## A013601.P9456437353249019697

`A063767(n)-7^n`
-/

namespace A013601.P9456437353249019697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063767 n - (7 ^ n : ℤ)

end

end A013601.P9456437353249019697

/-! ## A013601.P17359019679525390476

`A063767(n)%A103458(n)+1`
-/

namespace A013601.P17359019679525390476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063767 n) (A103458 n) + 1

end

end A013601.P17359019679525390476

/-!
# A013602: a(n) = nextprime(4^n)-4^n.

The programs for A013602, the canonical program `A013602.P10366200212724924736` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013602 has offset 0).

The definition of A013602 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013597, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A013602.P10366200212724924736

`A013597(2*n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A013602

/-- `A013597(2*n)` -/
def P10366200212724924736.Spec : Prop :=
  ∀ n, P10366200212724924736.a n = A013602 n

theorem P10366200212724924736.correct : P10366200212724924736.Spec := by
  intro n
  simp only [A013602]

end A013602

/-! ## A013602.P11890284542146453691

`A104082(n)-A000302(n)`
-/

namespace A013602.P11890284542146453691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104082 n - A000302 n

end

end A013602.P11890284542146453691

namespace A013602

/-- `A104082(n)-A000302(n)` -/
def P11890284542146453691.Spec : Prop :=
  ∀ n, P11890284542146453691.a n = A013602 n

end A013602

/-! ## A013602.P6373282856147953195

`or(1, A013597(n+n))`
-/

namespace A013602.P6373282856147953195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A013597 (n + n))

end

end A013602.P6373282856147953195

namespace A013602

/-- `or(1, A013597(n+n))` -/
def P6373282856147953195.Spec : Prop :=
  ∀ n, P6373282856147953195.a n = A013602 n

end A013602

/-! ## A013602.P14417129440371635077

`A092131(2*gcd(n, A008574(n)))`
-/

namespace A013602.P14417129440371635077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092131 (2 * Int.gcd (n : ℤ) (A008574 n))

end

end A013602.P14417129440371635077

namespace A013602

/-- `A092131(2*gcd(n, A008574(n)))` -/
def P14417129440371635077.Spec : Prop :=
  ∀ n, P14417129440371635077.a n = A013602 n

end A013602

/-! ## A013602.P5941115173046761838

`or(1, A092131(A008486(n)-n))`
-/

namespace A013602.P5941115173046761838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A092131 (A008486 n - (n : ℤ)).toNat)

end

end A013602.P5941115173046761838

namespace A013602

/-- `or(1, A092131(A008486(n)-n))` -/
def P5941115173046761838.Spec : Prop :=
  ∀ n, P5941115173046761838.a n = A013602 n

end A013602

/-! ## A013602.P18445581375127323026

`A013597(n+n)/A001221(A007918(n))`
-/

namespace A013602.P18445581375127323026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013597 (n + n) : ℚ) / (A001221 (A007918 n).toNat : ℚ)

end

end A013602.P18445581375127323026

namespace A013602

/-- `A013597(n+n)/A001221(A007918(n))` -/
def P18445581375127323026.Spec : Prop :=
  ∀ n, P18445581375127323026.a n = (A013602 n : ℚ)

end A013602

/-! ## A013602.P16898995914985955593

`A013597(n+n)%A076336(A013597(n))`
-/

namespace A013602.P16898995914985955593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013597 (n + n)) (A076336 (A013597 n).toNat)

end

end A013602.P16898995914985955593

namespace A013602

/-- `A013597(n+n)%A076336(A013597(n))` -/
def P16898995914985955593.Spec : Prop :=
  ∀ n, P16898995914985955593.a n = A013602 n

end A013602

/-! ## A013602.P11365204367127918064

`A092131(2*A233583(n+1))`
-/

namespace A013602.P11365204367127918064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092131 (2 * A233583 (n + 1)).toNat

end

end A013602.P11365204367127918064

namespace A013602

/-- `A092131(2*A233583(n+1))` -/
def P11365204367127918064.Spec : Prop :=
  ∀ n, P11365204367127918064.a n = A013602 n

end A013602

/-! ## A013602.P3382764642598769249

`A037035(2*n)+1`
-/

namespace A013602.P3382764642598769249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037035 (2 * n) + 1

end

end A013602.P3382764642598769249

namespace A013602

/-- `A037035(2*n)+1` -/
def P3382764642598769249.Spec : Prop :=
  ∀ n, P3382764642598769249.a n = A013602 n

theorem P3382764642598769249.correct : P3382764642598769249.Spec := by
  intro n
  simp only [A013602, Nat.add_sub_cancel, A013602.P3382764642598769249.a, A013602.P10366200212724924736.a, A013597, A013597.P2064454081418839404.a, A037035, A037035.P15953228204083907658.a, A013632, A013632.P6559946879985956067.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013602

/-! ## A013602.P13899718601865866149

`A004442(A037035(2*n))`
-/

namespace A013602.P13899718601865866149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A037035 (2 * n)).toNat

end

end A013602.P13899718601865866149

namespace A013602

/-- `A004442(A037035(2*n))` -/
def P13899718601865866149.Spec : Prop :=
  ∀ n, P13899718601865866149.a n = A013602 n

end A013602

/-! ## A013602.P13865442977176437441

`A104082(n)-A000079(n)²`
-/

namespace A013602.P13865442977176437441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104082 n - A000079 n ^ 2

end

end A013602.P13865442977176437441

namespace A013602

/-- `A104082(n)-A000079(n)²` -/
def P13865442977176437441.Spec : Prop :=
  ∀ n, P13865442977176437441.a n = A013602 n

end A013602

/-! ## A013602.P9899415982902044479

`A104082(n)-A000079(2*n)`
-/

namespace A013602.P9899415982902044479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104082 n - A000079 (2 * n)

end

end A013602.P9899415982902044479

namespace A013602

/-- `A104082(n)-A000079(2*n)` -/
def P9899415982902044479.Spec : Prop :=
  ∀ n, P9899415982902044479.a n = A013602 n

end A013602

/-! ## A013602.P3757648161963653491

`A104082(n)-A011782(n+1)²`
-/

namespace A013602.P3757648161963653491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104082 n - A011782 (n + 1) ^ 2

end

end A013602.P3757648161963653491

namespace A013602

/-- `A104082(n)-A011782(n+1)²` -/
def P3757648161963653491.Spec : Prop :=
  ∀ n, P3757648161963653491.a n = A013602 n

end A013602

/-! ## A013602.P6631767983311397877

`A014210(2*n)-A000079(n)²`
-/

namespace A013602.P6631767983311397877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 (2 * n) - A000079 n ^ 2

end

end A013602.P6631767983311397877

namespace A013602

/-- `A014210(2*n)-A000079(n)²` -/
def P6631767983311397877.Spec : Prop :=
  ∀ n, P6631767983311397877.a n = A013602 n

theorem P6631767983311397877.correct : P6631767983311397877.Spec := by
  intro n
  simp only [A013602, Nat.add_sub_cancel, A013602.P6631767983311397877.a, A013602.P10366200212724924736.a, A000079, A000079.P10855139691139572931.a, A013597, A013597.P2064454081418839404.a, A014210, A014210.P8900791388522812635.a, A013632, A013632.P6559946879985956067.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013602

/-! ## A013602.P8153878516660110408

`A104080(2*n)-A000079(n)²`
-/

namespace A013602.P8153878516660110408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104080 (2 * n) - A000079 n ^ 2

end

end A013602.P8153878516660110408

namespace A013602

/-- `A104080(2*n)-A000079(n)²` -/
def P8153878516660110408.Spec : Prop :=
  ∀ n, P8153878516660110408.a n = A013602 n

end A013602

/-! ## A013602.P10940407346406638711

`A104082(n)-A011782(2*n+1)`
-/

namespace A013602.P10940407346406638711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104082 n - A011782 (2 * n + 1)

end

end A013602.P10940407346406638711

namespace A013602

/-- `A104082(n)-A011782(2*n+1)` -/
def P10940407346406638711.Spec : Prop :=
  ∀ n, P10940407346406638711.a n = A013602 n

end A013602

/-! ## A013602.P8653652082214242764

`A014210(2*n)-A000079(2*n)`
-/

namespace A013602.P8653652082214242764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 (2 * n) - A000079 (2 * n)

end

end A013602.P8653652082214242764

namespace A013602

/-- `A014210(2*n)-A000079(2*n)` -/
def P8653652082214242764.Spec : Prop :=
  ∀ n, P8653652082214242764.a n = A013602 n

theorem P8653652082214242764.correct : P8653652082214242764.Spec := by
  intro n
  simp only [A013602, Nat.add_sub_cancel, A013602.P8653652082214242764.a, A013602.P10366200212724924736.a, A000079, A000079.P10855139691139572931.a, A013597, A013597.P2064454081418839404.a, A014210, A014210.P8900791388522812635.a, A013632, A013632.P6559946879985956067.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013602

/-! ## A013602.P15202292861510852092

`A104080(2*n)-A000079(2*n)`
-/

namespace A013602.P15202292861510852092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104080 (2 * n) - A000079 (2 * n)

end

end A013602.P15202292861510852092

namespace A013602

/-- `A104080(2*n)-A000079(2*n)` -/
def P15202292861510852092.Spec : Prop :=
  ∀ n, P15202292861510852092.a n = A013602 n

end A013602

/-! ## A013602.P1843133812957571913

`A014210(2*n)-A016116(4*n)`
-/

namespace A013602.P1843133812957571913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 (2 * n) - A016116 (4 * n)

end

end A013602.P1843133812957571913

namespace A013602

/-- `A014210(2*n)-A016116(4*n)` -/
def P1843133812957571913.Spec : Prop :=
  ∀ n, P1843133812957571913.a n = A013602 n

end A013602

/-!
# A013603: Difference between 2^n and the nearest prime less than or equal to 2^n.

The programs for A013603, the canonical program `A013603.P6161341145836320004` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013603 has offset 1).

The definition of A013603 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A013603.P6161341145836320004

`2^(n+1)-A000040(A000720(2^(n+1)))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A013603

/-- `2^(n+1)-A000040(A000720(2^(n+1)))` -/
def P6161341145836320004.Spec : Prop :=
  ∀ n, P6161341145836320004.a n = A013603 (n + 1)

theorem P6161341145836320004.correct : P6161341145836320004.Spec := by
  intro n
  simp only [A013603, Nat.add_sub_cancel]

end A013603

/-! ## A013603.P14403191406318797445

`2^(n+1)-A007917(2^(n+1))`
-/

namespace A013603.P14403191406318797445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A007917 (2 ^ (n + 1))

end

end A013603.P14403191406318797445

namespace A013603

/-- `2^(n+1)-A007917(2^(n+1))` -/
def P14403191406318797445.Spec : Prop :=
  ∀ n, P14403191406318797445.a n = A013603 (n + 1)

end A013603

/-! ## A013603.P14309672763259961831

`A058249(n+1)-A092131(n+1)`
-/

namespace A013603.P14309672763259961831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058249 (n + 1) - A092131 (n + 1)

end

end A013603.P14309672763259961831

namespace A013603

/-- `A058249(n+1)-A092131(n+1)` -/
def P14309672763259961831.Spec : Prop :=
  ∀ n, P14309672763259961831.a n = A013603 (n + 1)

theorem P14309672763259961831.correct : P14309672763259961831.Spec := by
  intro n
  simp only [A013603, Nat.add_sub_cancel, A013603.P14309672763259961831.a, A013603.P6161341145836320004.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A058249, A058249.P13656201722121013867.a, A092131, A092131.P9669914762726222244.a, A000079, A000079.P10855139691139572931.a, A007920, A007920.P3719263903022372137.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A013603

/-! ## A013603.P3594912008876458378

`A058249(n+1)-A013597(n+1)%(n+1)²`
-/

namespace A013603.P3594912008876458378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058249 (n + 1) - Int.tmod (A013597 (n + 1)) ((n + 1) ^ 2 : ℤ)

end

end A013603.P3594912008876458378

namespace A013603

/-- `A058249(n+1)-A013597(n+1)%(n+1)²` -/
def P3594912008876458378.Spec : Prop :=
  ∀ n, P3594912008876458378.a n = A013603 (n + 1)

end A013603

/-! ## A013603.P12205444292589794597

`2^(n+1)-A014234(n+1)`
-/

namespace A013603.P12205444292589794597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A014234 (n + 1)

end

end A013603.P12205444292589794597

namespace A013603

/-- `2^(n+1)-A014234(n+1)` -/
def P12205444292589794597.Spec : Prop :=
  ∀ n, P12205444292589794597.a n = A013603 (n + 1)

end A013603

/-! ## A013603.P12210809452084540286

`A000225(n+1)+1-A014234(n+1)`
-/

namespace A013603.P12210809452084540286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + (1 - A014234 (n + 1))

end

end A013603.P12210809452084540286

namespace A013603

/-- `A000225(n+1)+1-A014234(n+1)` -/
def P12210809452084540286.Spec : Prop :=
  ∀ n, P12210809452084540286.a n = A013603 (n + 1)

end A013603

/-! ## A013603.P9467142530950254448

`A000079(n+1)-A133225(2*n+1)`
-/

namespace A013603.P9467142530950254448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A133225 (2 * n + 1)

end

end A013603.P9467142530950254448

namespace A013603

/-- `A000079(n+1)-A133225(2*n+1)` -/
def P9467142530950254448.Spec : Prop :=
  ∀ n, P9467142530950254448.a n = A013603 (n + 1)

end A013603

/-! ## A013603.P6096781687167872938

`A017910(2*(n+1))-A133225(2*n+1)`
-/

namespace A013603.P6096781687167872938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 (2 * (n + 1)) - A133225 (2 * n + 1)

end

end A013603.P6096781687167872938

namespace A013603

/-- `A017910(2*(n+1))-A133225(2*n+1)` -/
def P6096781687167872938.Spec : Prop :=
  ∀ n, P6096781687167872938.a n = A013603 (n + 1)

end A013603

/-! ## A013603.P7661868658217679455

`A014210(n+1)-(A014234(n+1)+A013597(n+1))`
-/

namespace A013603.P7661868658217679455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 (n + 1) - (A014234 (n + 1) + A013597 (n + 1))

end

end A013603.P7661868658217679455

namespace A013603

/-- `A014210(n+1)-(A014234(n+1)+A013597(n+1))` -/
def P7661868658217679455.Spec : Prop :=
  ∀ n, P7661868658217679455.a n = A013603 (n + 1)

end A013603

/-! ## A013603.P4857554782097673962

`A104080(n+1)-(A092131(n+1)+A014234(n+1))`
-/

namespace A013603.P4857554782097673962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104080 (n + 1) - (A092131 (n + 1) + A014234 (n + 1))

end

end A013603.P4857554782097673962

namespace A013603

/-- `A104080(n+1)-(A092131(n+1)+A014234(n+1))` -/
def P4857554782097673962.Spec : Prop :=
  ∀ n, P4857554782097673962.a n = A013603 (n + 1)

end A013603

/-!
# A013604: a(n) = 3^n - prevprime(3^n), where prevprime(x) is the largest prime < x.

The programs for A013604, there is no canonical definition to state claims against.
-/

/-! ## A013604.P13271270525799368309

`A028310(3^(n+1)-A104088(n+1))`
-/

namespace A013604.P13271270525799368309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((3 ^ (n + 1) : ℤ) - A104088 (n + 1)).toNat

end

end A013604.P13271270525799368309

/-! ## A013604.P16663976686827025869

`A028310(A000244(n+1)%A104088(n+1))`
-/

namespace A013604.P16663976686827025869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A000244 (n + 1)) (A104088 (n + 1))).toNat

end

end A013604.P16663976686827025869

/-! ## A013604.P1843147721117629777

`A000244(n)-A104088(n+1)%A000244(n)`
-/

namespace A013604.P1843147721117629777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - Int.tmod (A104088 (n + 1)) (A000244 n)

end

end A013604.P1843147721117629777

/-! ## A013604.P7847124678656314742

`A028310(A056449(2*(n+1))%A104088(n+1))`
-/

namespace A013604.P7847124678656314742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A056449 (2 * (n + 1))) (A104088 (n + 1))).toNat

end

end A013604.P7847124678656314742

/-! ## A013604.P1284729042142621570

`A000244(and(1, A000040(n+1))+n)%A104088(n+1)`
-/

namespace A013604.P1284729042142621570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000244 (Int.land 1 (A000040 (n + 1)) + (n : ℤ)).toNat) (A104088 (n + 1))

end

end A013604.P1284729042142621570

/-!
# A013605: a(n) = 5^n-prevprime(5^n).

The programs for A013605, there is no canonical definition to state claims against.
-/

/-! ## A013605.P6519732795560745697

`abs(A013599(n+1)-A338419(n+1))`
-/

namespace A013605.P6519732795560745697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A013599 (n + 1) - A338419 (n + 1)|

end

end A013605.P6519732795560745697

/-!
# A013606: a(n) = 4^n - prevprime(4^n).

The programs for A013606, the canonical program `A013606.P5531938547174120995` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013606 has offset 1).

The definition of A013606 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A013606.P5531938547174120995

`A000302(n+1)-A104089(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A013606

/-- `A000302(n+1)-A104089(n+1)` -/
def P5531938547174120995.Spec : Prop :=
  ∀ n, P5531938547174120995.a n = A013606 (n + 1)

theorem P5531938547174120995.correct : P5531938547174120995.Spec := by
  intro n
  simp only [A013606, Nat.add_sub_cancel]

end A013606

/-! ## A013606.P17780540083196781801

`A013603(2*(n+1))`
-/

namespace A013606.P17780540083196781801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013603 (2 * (n + 1))

end

end A013606.P17780540083196781801

namespace A013606

/-- `A013603(2*(n+1))` -/
def P17780540083196781801.Spec : Prop :=
  ∀ n, P17780540083196781801.a n = A013606 (n + 1)

end A013606

/-! ## A013606.P2121236942628333340

`A000265(A013603(n+2+n))`
-/

namespace A013606.P2121236942628333340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A013603 (n + 2 + n)).toNat

end

end A013606.P2121236942628333340

namespace A013606

/-- `A000265(A013603(n+2+n))` -/
def P2121236942628333340.Spec : Prop :=
  ∀ n, P2121236942628333340.a n = A013606 (n + 1)

end A013606

/-! ## A013606.P16694228684666924168

`or(A000007(n), A013603(n+2+n))`
-/

namespace A013606.P16694228684666924168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A013603 (n + 2 + n))

end

end A013606.P16694228684666924168

namespace A013606

/-- `or(A000007(n), A013603(n+2+n))` -/
def P16694228684666924168.Spec : Prop :=
  ∀ n, P16694228684666924168.a n = A013606 (n + 1)

end A013606

/-! ## A013606.P16921087672544410692

`or(A013603(n+2+n), A014306(n))`
-/

namespace A013606.P16921087672544410692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A013603 (n + 2 + n)) (A014306 n)

end

end A013606.P16921087672544410692

namespace A013606

/-- `or(A013603(n+2+n), A014306(n))` -/
def P16921087672544410692.Spec : Prop :=
  ∀ n, P16921087672544410692.a n = A013606 (n + 1)

end A013606

/-! ## A013606.P4330360748064211896

`or(Δ[A003056(n)], A013603(n+2+n))`
-/

namespace A013606.P4330360748064211896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A013603 (n + 2 + n))

end

end A013606.P4330360748064211896

namespace A013606

/-- `or(Δ[A003056(n)], A013603(n+2+n))` -/
def P4330360748064211896.Spec : Prop :=
  ∀ n, P4330360748064211896.a n = A013606 (n + 1)

end A013606

/-! ## A013606.P16249398613460566902

`A058249(2*(n+1))-A013602(n+1)`
-/

namespace A013606.P16249398613460566902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058249 (2 * (n + 1)) - A013602 (n + 1)

end

end A013606.P16249398613460566902

namespace A013606

/-- `A058249(2*(n+1))-A013602(n+1)` -/
def P16249398613460566902.Spec : Prop :=
  ∀ n, P16249398613460566902.a n = A013606 (n + 1)

end A013606

/-! ## A013606.P7354291691905238118

`or(Δ[A066490(n+1)], A013603(n+2+n))`
-/

namespace A013606.P7354291691905238118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A013603 (n + 2 + n))

end

end A013606.P7354291691905238118

namespace A013606

/-- `or(Δ[A066490(n+1)], A013603(n+2+n))` -/
def P7354291691905238118.Spec : Prop :=
  ∀ n, P7354291691905238118.a n = A013606 (n + 1)

end A013606

/-! ## A013606.P8478027740771076680

`A058249(2*(n+1))-A013597(2*(n+1))`
-/

namespace A013606.P8478027740771076680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058249 (2 * (n + 1)) - A013597 (2 * (n + 1))

end

end A013606.P8478027740771076680

namespace A013606

/-- `A058249(2*(n+1))-A013597(2*(n+1))` -/
def P8478027740771076680.Spec : Prop :=
  ∀ n, P8478027740771076680.a n = A013606 (n + 1)

end A013606

/-! ## A013606.P9691297026475319530

`A058249(2*(n+1))-A092131(2*(n+1))`
-/

namespace A013606.P9691297026475319530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058249 (2 * (n + 1)) - A092131 (2 * (n + 1))

end

end A013606.P9691297026475319530

namespace A013606

/-- `A058249(2*(n+1))-A092131(2*(n+1))` -/
def P9691297026475319530.Spec : Prop :=
  ∀ n, P9691297026475319530.a n = A013606 (n + 1)

end A013606

/-! ## A013606.P16949885935414367696

`A013603(Δ[A014206(n)])%A014206(n)`
-/

namespace A013606.P16949885935414367696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013603 (f1 (n + 1) - f1 n).toNat) (A014206 n)

end

end A013606.P16949885935414367696

namespace A013606

/-- `A013603(Δ[A014206(n)])%A014206(n)` -/
def P16949885935414367696.Spec : Prop :=
  ∀ n, P16949885935414367696.a n = A013606 (n + 1)

end A013606

/-! ## A013606.P9227369224032179233

`A252736(A008578(n+2))+A013603(n+2+n)`
-/

namespace A013606.P9227369224032179233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A008578 (n + 2)).toNat + A013603 (n + 2 + n)

end

end A013606.P9227369224032179233

namespace A013606

/-- `A252736(A008578(n+2))+A013603(n+2+n)` -/
def P9227369224032179233.Spec : Prop :=
  ∀ n, P9227369224032179233.a n = A013606 (n + 1)

end A013606

/-! ## A013606.P8302370460949964481

`2*A004171(n)-A104089(n+1)`
-/

namespace A013606.P8302370460949964481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004171 n - A104089 (n + 1)

end

end A013606.P8302370460949964481

namespace A013606

/-- `2*A004171(n)-A104089(n+1)` -/
def P8302370460949964481.Spec : Prop :=
  ∀ n, P8302370460949964481.a n = A013606 (n + 1)

end A013606

/-! ## A013606.P518625328376130444

`A000079(n+1)²-A104089(n+1)`
-/

namespace A013606.P518625328376130444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) ^ 2 - A104089 (n + 1)

end

end A013606.P518625328376130444

namespace A013606

/-- `A000079(n+1)²-A104089(n+1)` -/
def P518625328376130444.Spec : Prop :=
  ∀ n, P518625328376130444.a n = A013606 (n + 1)

end A013606

/-! ## A013606.P8624635204937505104

`A000079(n+1)²-A014234(2*(n+1))`
-/

namespace A013606.P8624635204937505104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) ^ 2 - A014234 (2 * (n + 1))

end

end A013606.P8624635204937505104

namespace A013606

/-- `A000079(n+1)²-A014234(2*(n+1))` -/
def P8624635204937505104.Spec : Prop :=
  ∀ n, P8624635204937505104.a n = A013606 (n + 1)

end A013606

/-! ## A013606.P18217838400524342407

`2*A000079(2*n+1)-A014234(2*(n+1))`
-/

namespace A013606.P18217838400524342407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 (2 * n + 1) - A014234 (2 * (n + 1))

end

end A013606.P18217838400524342407

namespace A013606

/-- `2*A000079(2*n+1)-A014234(2*(n+1))` -/
def P18217838400524342407.Spec : Prop :=
  ∀ n, P18217838400524342407.a n = A013606 (n + 1)

end A013606

/-!
# A013607: a(n) = 6^n-prevprime(6^n).

The programs for A013607, there is no canonical definition to state claims against.
-/

/-! ## A013607.P9179434372152110083

`A000400(n+1)-A104091(n+1)`
-/

namespace A013607.P9179434372152110083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (n + 1) - A104091 (n + 1)

end

end A013607.P9179434372152110083

/-! ## A013607.P16848372834360668289

`A338376(n+1)-A013600(n+1)`
-/

namespace A013607.P16848372834360668289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338376 (n + 1) - A013600 (n + 1)

end

end A013607.P16848372834360668289

/-! ## A013607.P458894525895343555

`Δ[Δ[A094259(n)]]%A104091(n+1)`
-/

namespace A013607.P458894525895343555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094259 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A104091 (n + 1))

end

end A013607.P458894525895343555

/-! ## A013607.P15466776938272880122

`A063766(n+1)-A104091(n+1)-A013600(n+1)`
-/

namespace A013607.P15466776938272880122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063766 (n + 1) - A104091 (n + 1) - A013600 (n + 1)

end

end A013607.P15466776938272880122

/-! ## A013607.P15749500085157456635

`A109375(A182262(n+1))`
-/

namespace A013607.P15749500085157456635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109375 (A182262 (n + 1)).toNat

end

end A013607.P15749500085157456635

/-!
# A013609: Triangle of coefficients in expansion of (1+2*x)^n.

The programs for A013609, the canonical program `A013609.P14824901554590578180` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013609 has offset 0).

The definition of A013609 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A013609.P14824901554590578180

`2*T(n-1,k-1)+T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013609

/-- `2*T(n-1,k-1)+T(n-1,k)` -/
def P14824901554590578180.Spec : Prop :=
  ∀ n, (P14824901554590578180.a n : ℤ) = A013609 n

theorem P14824901554590578180.correct : P14824901554590578180.Spec := by
  intro n
  simp only [A013609]

end A013609

/-! ## A013609.P2939869487688352993

`2^col(n)*C(row(n), col(n))`
-/

namespace A013609.P2939869487688352993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.triCol n * Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n)

end

end A013609.P2939869487688352993

namespace A013609

/-- `2^col(n)*C(row(n), col(n))` -/
def P2939869487688352993.Spec : Prop :=
  ∀ n, (P2939869487688352993.a n : ℤ) = A013609 n

end A013609

/-! ## A013609.P9786407291562393876

`T(n-1,k-1)+T(n-1,k)+T(n-1,k-1)` with `a(0)=1`
-/

namespace A013609.P9786407291562393876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n

end

end A013609.P9786407291562393876

namespace A013609

/-- `T(n-1,k-1)+T(n-1,k)+T(n-1,k-1)` -/
def P9786407291562393876.Spec : Prop :=
  ∀ n, (P9786407291562393876.a n : ℤ) = A013609 n

theorem P9786407291562393876.correct : P9786407291562393876.Spec := by
  intro n
  simp only [A013609, Nat.add_sub_cancel, A013609.P9786407291562393876.a, A013609.P14824901554590578180.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A013609

/-! ## A013609.P2612108034755165179

`abs(A303872(n))`
-/

namespace A013609.P2612108034755165179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A303872 n|

end

end A013609.P2612108034755165179

namespace A013609

/-- `abs(A303872(n))` -/
def P2612108034755165179.Spec : Prop :=
  ∀ n, P2612108034755165179.a n = A013609 n

end A013609

/-! ## A013609.P8876387105413458152

`A120909(n+1)/3`
-/

namespace A013609.P8876387105413458152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120909 (n + 1) : ℚ) / 3

end

end A013609.P8876387105413458152

namespace A013609

/-- `A120909(n+1)/3` -/
def P8876387105413458152.Spec : Prop :=
  ∀ n, P8876387105413458152.a n = (A013609 n : ℚ)

theorem P8876387105413458152.correct : P8876387105413458152.Spec := by
  intro n
  simp only [A013609, Nat.add_sub_cancel, A013609.P8876387105413458152.a, A013609.P14824901554590578180.a, A120909, A120909.P4196849936456534046.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013609

/-! ## A013609.P4532293646678038527

`ceil(A210196(n+1)/2)`
-/

namespace A013609.P4532293646678038527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A210196 (n + 1) : ℚ) / 2⌉

end

end A013609.P4532293646678038527

namespace A013609

/-- `ceil(A210196(n+1)/2)` -/
def P4532293646678038527.Spec : Prop :=
  ∀ n, P4532293646678038527.a n = A013609 n

end A013609

/-! ## A013609.P17710448280346047966

`A182059(n)+A073424(n)`
-/

namespace A013609.P17710448280346047966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182059 n + A073424 n

end

end A013609.P17710448280346047966

namespace A013609

/-- `A182059(n)+A073424(n)` -/
def P17710448280346047966.Spec : Prop :=
  ∀ n, P17710448280346047966.a n = A013609 n

end A013609

/-! ## A013609.P6787070295813656186

`A154690(n)-A038207(n)`
-/

namespace A013609.P6787070295813656186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154690 n - A038207 n

end

end A013609.P6787070295813656186

namespace A013609

/-- `A154690(n)-A038207(n)` -/
def P6787070295813656186.Spec : Prop :=
  ∀ n, P6787070295813656186.a n = A013609 n

end A013609

/-! ## A013609.P8535619279575218406

`A007318(n)*A059268(n)`
-/

namespace A013609.P8535619279575218406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A059268 n

end

end A013609.P8535619279575218406

namespace A013609

/-- `A007318(n)*A059268(n)` -/
def P8535619279575218406.Spec : Prop :=
  ∀ n, P8535619279575218406.a n = A013609 n

end A013609

/-! ## A013609.P14037842060330825759

`A082137(n)*A238303(n)`
-/

namespace A013609.P14037842060330825759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082137 n * A238303 n

end

end A013609.P14037842060330825759

namespace A013609

/-- `A082137(n)*A238303(n)` -/
def P14037842060330825759.Spec : Prop :=
  ∀ n, P14037842060330825759.a n = A013609 n

end A013609

/-! ## A013609.P3113405817692278575

`A124927(n)*A232089(n)`
-/

namespace A013609.P3113405817692278575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 n * A232089 n

end

end A013609.P3113405817692278575

namespace A013609

/-- `A124927(n)*A232089(n)` -/
def P3113405817692278575.Spec : Prop :=
  ∀ n, P3113405817692278575.a n = A013609 n

end A013609

/-! ## A013609.P16390915426837423799

`A097807(n)*A303872(n)`
-/

namespace A013609.P16390915426837423799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A303872 n

end

end A013609.P16390915426837423799

namespace A013609

/-- `A097807(n)*A303872(n)` -/
def P16390915426837423799.Spec : Prop :=
  ∀ n, P16390915426837423799.a n = A013609 n

end A013609

/-! ## A013609.P824741854513750582

`A013611(n)/A059268(n)`
-/

namespace A013609.P824741854513750582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013611 n : ℚ) / (A059268 n : ℚ)

end

end A013609.P824741854513750582

namespace A013609

/-- `A013611(n)/A059268(n)` -/
def P824741854513750582.Spec : Prop :=
  ∀ n, P824741854513750582.a n = (A013609 n : ℚ)

end A013609

/-! ## A013609.P12650768928048144140

`A038208(n)/A130321(n)`
-/

namespace A013609.P12650768928048144140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038208 n : ℚ) / (A130321 n : ℚ)

end

end A013609.P12650768928048144140

namespace A013609

/-- `A038208(n)/A130321(n)` -/
def P12650768928048144140.Spec : Prop :=
  ∀ n, P12650768928048144140.a n = (A013609 n : ℚ)

end A013609

/-! ## A013609.P16557662237615032691

`A038220(n)/A140303(n)`
-/

namespace A013609.P16557662237615032691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038220 n : ℚ) / (A140303 n : ℚ)

end

end A013609.P16557662237615032691

namespace A013609

/-- `A038220(n)/A140303(n)` -/
def P16557662237615032691.Spec : Prop :=
  ∀ n, P16557662237615032691.a n = (A013609 n : ℚ)

end A013609

/-! ## A013609.P7229284420371542980

`gcd(A038208(n), A038220(n))`
-/

namespace A013609.P7229284420371542980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038208 n) (A038220 n)

end

end A013609.P7229284420371542980

namespace A013609

/-- `gcd(A038208(n), A038220(n))` -/
def P7229284420371542980.Spec : Prop :=
  ∀ n, (P7229284420371542980.a n : ℤ) = A013609 n

end A013609

/-! ## A013609.P14339645878346656517

`gcd(A073423(n), A182059(n))`
-/

namespace A013609.P14339645878346656517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073423 n) (A182059 n)

end

end A013609.P14339645878346656517

namespace A013609

/-- `gcd(A073423(n), A182059(n))` -/
def P14339645878346656517.Spec : Prop :=
  ∀ n, (P14339645878346656517.a n : ℤ) = A013609 n

end A013609

/-! ## A013609.P17370335126598809639

`gcd(A000038(n), A303872(n))`
-/

namespace A013609.P17370335126598809639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A303872 n)

end

end A013609.P17370335126598809639

namespace A013609

/-- `gcd(A000038(n), A303872(n))` -/
def P17370335126598809639.Spec : Prop :=
  ∀ n, (P17370335126598809639.a n : ℤ) = A013609 n

end A013609

/-! ## A013609.P17872799888892531823

`lcm(A006466(n), A303872(n))`
-/

namespace A013609.P17872799888892531823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006466 n) (A303872 n)

end

end A013609.P17872799888892531823

namespace A013609

/-- `lcm(A006466(n), A303872(n))` -/
def P17872799888892531823.Spec : Prop :=
  ∀ n, (P17872799888892531823.a n : ℤ) = A013609 n

end A013609

/-! ## A013609.P15990983612573468303

`abs(A059268(n)*A108086(n))`
-/

namespace A013609.P15990983612573468303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A059268 n * A108086 n|

end

end A013609.P15990983612573468303

namespace A013609

/-- `abs(A059268(n)*A108086(n))` -/
def P15990983612573468303.Spec : Prop :=
  ∀ n, P15990983612573468303.a n = A013609 n

end A013609

/-!
# A013610: Triangle of coefficients in expansion of (1+3*x)^n.

The programs for A013610, the canonical program `A013610.P10799143111782411430` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013610 has offset 0).

The definition of A013610 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A013610.P10799143111782411430

`3*T(n-1,k-1)+T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013610

/-- `3*T(n-1,k-1)+T(n-1,k)` -/
def P10799143111782411430.Spec : Prop :=
  ∀ n, (P10799143111782411430.a n : ℤ) = A013610 n

theorem P10799143111782411430.correct : P10799143111782411430.Spec := by
  intro n
  simp only [A013610]

end A013610

/-! ## A013610.P1915097073213877886

`3^col(n)*C(row(n), col(n))`
-/

namespace A013610.P1915097073213877886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.triCol n * Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n)

end

end A013610.P1915097073213877886

namespace A013610

/-- `3^col(n)*C(row(n), col(n))` -/
def P1915097073213877886.Spec : Prop :=
  ∀ n, (P1915097073213877886.a n : ℤ) = A013610 n

end A013610

/-! ## A013610.P17414288292013921065

`A182042(n)+A073424(n)`
-/

namespace A013610.P17414288292013921065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182042 n + A073424 n

end

end A013610.P17414288292013921065

namespace A013610

/-- `A182042(n)+A073424(n)` -/
def P17414288292013921065.Spec : Prop :=
  ∀ n, P17414288292013921065.a n = A013610 n

end A013610

/-! ## A013610.P12922359300948855758

`A013620(n)/A130321(n)`
-/

namespace A013610.P12922359300948855758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013620 n : ℚ) / (A130321 n : ℚ)

end

end A013610.P12922359300948855758

namespace A013610

/-- `A013620(n)/A130321(n)` -/
def P12922359300948855758.Spec : Prop :=
  ∀ n, P12922359300948855758.a n = (A013610 n : ℚ)

end A013610

/-! ## A013610.P12964424195705865986

`gcd(A073423(n), A182042(n))`
-/

namespace A013610.P12964424195705865986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073423 n) (A182042 n)

end

end A013610.P12964424195705865986

namespace A013610

/-- `gcd(A073423(n), A182042(n))` -/
def P12964424195705865986.Spec : Prop :=
  ∀ n, (P12964424195705865986.a n : ℤ) = A013610 n

end A013610

/-! ## A013610.P7026648510307163727

`A182042(n*(1-A010054(n)))`
-/

namespace A013610.P7026648510307163727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182042 ((n : ℤ) * (1 - A010054 n)).toNat

end

end A013610.P7026648510307163727

namespace A013610

/-- `A182042(n*(1-A010054(n)))` -/
def P7026648510307163727.Spec : Prop :=
  ∀ n, P7026648510307163727.a n = A013610 n

end A013610

/-! ## A013610.P14923575854434374183

`A182042(n*(1-A073423(n)))`
-/

namespace A013610.P14923575854434374183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182042 ((n : ℤ) * (1 - A073423 n)).toNat

end

end A013610.P14923575854434374183

namespace A013610

/-- `A182042(n*(1-A073423(n)))` -/
def P14923575854434374183.Spec : Prop :=
  ∀ n, P14923575854434374183.a n = A013610 n

end A013610

/-! ## A013610.P1299601050168796166

`A182042(n*(1-A073424(n)))`
-/

namespace A013610.P1299601050168796166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182042 ((n : ℤ) * (1 - A073424 n)).toNat

end

end A013610.P1299601050168796166

namespace A013610

/-- `A182042(n*(1-A073424(n)))` -/
def P1299601050168796166.Spec : Prop :=
  ∀ n, P1299601050168796166.a n = A013610 n

end A013610

/-! ## A013610.P16504714966188850441

`2*A193722(n)-A038763(n)`
-/

namespace A013610.P16504714966188850441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193722 n - A038763 n

end

end A013610.P16504714966188850441

namespace A013610

/-- `2*A193722(n)-A038763(n)` -/
def P16504714966188850441.Spec : Prop :=
  ∀ n, P16504714966188850441.a n = A013610 n

end A013610

/-! ## A013610.P14988709388944164896

`A000244(A002262(n))*A007318(n)`
-/

namespace A013610.P14988709388944164896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A002262 n).toNat * A007318 n

end

end A013610.P14988709388944164896

namespace A013610

/-- `A000244(A002262(n))*A007318(n)` -/
def P14988709388944164896.Spec : Prop :=
  ∀ n, P14988709388944164896.a n = A013610 n

end A013610

/-! ## A013610.P1060416440438681772

`ceil(A134059(n)/3)*A000244(A002262(n))`
-/

namespace A013610.P1060416440438681772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134059 n : ℚ) / 3⌉ * A000244 (A002262 n).toNat

end

end A013610.P1060416440438681772

namespace A013610

/-- `ceil(A134059(n)/3)*A000244(A002262(n))` -/
def P1060416440438681772.Spec : Prop :=
  ∀ n, P1060416440438681772.a n = A013610 n

end A013610

/-! ## A013610.P16652853938936614162

`(A285118(n)+A285116(n))*A000244(A002262(n))`
-/

namespace A013610.P16652853938936614162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285118 n + A285116 n) * A000244 (A002262 n).toNat

end

end A013610.P16652853938936614162

namespace A013610

/-- `(A285118(n)+A285116(n))*A000244(A002262(n))` -/
def P16652853938936614162.Spec : Prop :=
  ∀ n, P16652853938936614162.a n = A013610 n

end A013610

/-! ## A013610.P11773506928413746621

`A326822(n+1)+A182042(n)`
-/

namespace A013610.P11773506928413746621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326822 (n + 1) + A182042 n

end

end A013610.P11773506928413746621

namespace A013610

/-- `A326822(n+1)+A182042(n)` -/
def P11773506928413746621.Spec : Prop :=
  ∀ n, P11773506928413746621.a n = A013610 n

end A013610

/-! ## A013610.P17946943749601161895

`A027465(A061579(n))`
-/

namespace A013610.P17946943749601161895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 (A061579 n).toNat

end

end A013610.P17946943749601161895

namespace A013610

/-- `A027465(A061579(n))` -/
def P17946943749601161895.Spec : Prop :=
  ∀ n, P17946943749601161895.a n = A013610 n

end A013610

/-! ## A013610.P1959664744426569185

`A038221(n)/A140303(n)`
-/

namespace A013610.P1959664744426569185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038221 n : ℚ) / (A140303 n : ℚ)

end

end A013610.P1959664744426569185

namespace A013610

/-- `A038221(n)/A140303(n)` -/
def P1959664744426569185.Spec : Prop :=
  ∀ n, P1959664744426569185.a n = (A013610 n : ℚ)

end A013610

/-! ## A013610.P10470893794459189133

`gcd(A013620(n), A038221(n))`
-/

namespace A013610.P10470893794459189133
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013620 n) (A038221 n)

end

end A013610.P10470893794459189133

namespace A013610

/-- `gcd(A013620(n), A038221(n))` -/
def P10470893794459189133.Spec : Prop :=
  ∀ n, (P10470893794459189133.a n : ℤ) = A013610 n

end A013610

/-! ## A013610.P5537224735467653950

`A013613(n)/A059268(n)`
-/

namespace A013610.P5537224735467653950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013613 n : ℚ) / (A059268 n : ℚ)

end

end A013610.P5537224735467653950

namespace A013610

/-- `A013613(n)/A059268(n)` -/
def P5537224735467653950.Spec : Prop :=
  ∀ n, P5537224735467653950.a n = (A013610 n : ℚ)

end A013610

/-! ## A013610.P6274381084089875575

`A013613(n)/A000079(A002262(n))`
-/

namespace A013610.P6274381084089875575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013613 n : ℚ) / (A000079 (A002262 n).toNat : ℚ)

end

end A013610.P6274381084089875575

namespace A013610

/-- `A013613(n)/A000079(A002262(n))` -/
def P6274381084089875575.Spec : Prop :=
  ∀ n, P6274381084089875575.a n = (A013610 n : ℚ)

end A013610

/-! ## A013610.P13912185293958611545

`A038233(n)/A262616(n)`
-/

namespace A013610.P13912185293958611545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038233 n : ℚ) / (A262616 n : ℚ)

end

end A013610.P13912185293958611545

namespace A013610

/-- `A038233(n)/A262616(n)` -/
def P13912185293958611545.Spec : Prop :=
  ∀ n, P13912185293958611545.a n = (A013610 n : ℚ)

end A013610

/-! ## A013610.P14657818955604245374

`A038233(n)/A130321(n)²`
-/

namespace A013610.P14657818955604245374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038233 n : ℚ) / (A130321 n ^ 2 : ℚ)

end

end A013610.P14657818955604245374

namespace A013610

/-- `A038233(n)/A130321(n)²` -/
def P14657818955604245374.Spec : Prop :=
  ∀ n, P14657818955604245374.a n = (A013610 n : ℚ)

end A013610

/-!
# A013611: Triangle of coefficients in expansion of (1+4*x)^n.

The programs for A013611, the canonical program `A013611.P10607227293910931863` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013611 has offset 0).

The definition of A013611 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A013611.P10607227293910931863

`4*T(n-1,k-1)+T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013611

/-- `4*T(n-1,k-1)+T(n-1,k)` -/
def P10607227293910931863.Spec : Prop :=
  ∀ n, (P10607227293910931863.a n : ℤ) = A013611 n

theorem P10607227293910931863.correct : P10607227293910931863.Spec := by
  intro n
  simp only [A013611]

end A013611

/-! ## A013611.P1816030503760857548

`4^col(n)*C(row(n), col(n))`
-/

namespace A013611.P1816030503760857548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ SequenceMachineLib.triCol n * Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n)

end

end A013611.P1816030503760857548

namespace A013611

/-- `4^col(n)*C(row(n), col(n))` -/
def P1816030503760857548.Spec : Prop :=
  ∀ n, (P1816030503760857548.a n : ℤ) = A013611 n

end A013611

/-! ## A013611.P15972288200952015443

`A013609(n)*A059268(n)`
-/

namespace A013611.P15972288200952015443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A059268 n

end

end A013611.P15972288200952015443

namespace A013611

/-- `A013609(n)*A059268(n)` -/
def P15972288200952015443.Spec : Prop :=
  ∀ n, P15972288200952015443.a n = A013611 n

end A013611

/-! ## A013611.P3710320655422942483

`A059268(n)²*A007318(n)`
-/

namespace A013611.P3710320655422942483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A007318 n

end

end A013611.P3710320655422942483

namespace A013611

/-- `A059268(n)²*A007318(n)` -/
def P3710320655422942483.Spec : Prop :=
  ∀ n, P3710320655422942483.a n = A013611 n

end A013611

/-! ## A013611.P5705845246381432071

`A210196(n+1)*A232089(n)`
-/

namespace A013611.P5705845246381432071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210196 (n + 1) * A232089 n

end

end A013611.P5705845246381432071

namespace A013611

/-- `A210196(n+1)*A232089(n)` -/
def P5705845246381432071.Spec : Prop :=
  ∀ n, P5705845246381432071.a n = A013611 n

end A013611

/-! ## A013611.P18242771440034302121

`abs(A059268(n)²*A108086(n))`
-/

namespace A013611.P18242771440034302121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A059268 n ^ 2 * A108086 n|

end

end A013611.P18242771440034302121

namespace A013611

/-- `abs(A059268(n)²*A108086(n))` -/
def P18242771440034302121.Spec : Prop :=
  ∀ n, P18242771440034302121.a n = A013611 n

end A013611

/-! ## A013611.P13721853240421807712

`abs(A059268(n)²*A130595(n))`
-/

namespace A013611.P13721853240421807712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A059268 n ^ 2 * A130595 n|

end

end A013611.P13721853240421807712

namespace A013611

/-- `abs(A059268(n)²*A130595(n))` -/
def P13721853240421807712.Spec : Prop :=
  ∀ n, P13721853240421807712.a n = A013611 n

end A013611

/-! ## A013611.P14461925511596016927

`A059268(n)²*sqrt(A008459(n))`
-/

namespace A013611.P14461925511596016927
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A059268 n ^ 2 : ℝ) * Real.sqrt (A008459 n : ℝ)

end

end A013611.P14461925511596016927

namespace A013611

/-- `A059268(n)²*sqrt(A008459(n))` -/
def P14461925511596016927.Spec : Prop :=
  ∀ n, P14461925511596016927.a n = (A013611 n : ℝ)

end A013611

/-! ## A013611.P4578594417990819851

`A059268(n)²*Δ[A102363(n)]`
-/

namespace A013611.P4578594417990819851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * (f1 (n + 1) - f1 n)

end

end A013611.P4578594417990819851

namespace A013611

/-- `A059268(n)²*Δ[A102363(n)]` -/
def P4578594417990819851.Spec : Prop :=
  ∀ n, P4578594417990819851.a n = A013611 n

end A013611

/-! ## A013611.P4123644694952964899

`(A014473(n)+1)*A059268(n)²`
-/

namespace A013611.P4123644694952964899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A059268 n ^ 2

end

end A013611.P4123644694952964899

namespace A013611

/-- `(A014473(n)+1)*A059268(n)²` -/
def P4123644694952964899.Spec : Prop :=
  ∀ n, P4123644694952964899.a n = A013611 n

end A013611

/-! ## A013611.P12963048508720156188

`A028326(n)/2*A059268(n)²`
-/

namespace A013611.P12963048508720156188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A059268 n ^ 2 : ℚ)

end

end A013611.P12963048508720156188

namespace A013611

/-- `A028326(n)/2*A059268(n)²` -/
def P12963048508720156188.Spec : Prop :=
  ∀ n, P12963048508720156188.a n = (A013611 n : ℚ)

end A013611

/-! ## A013611.P17130371271790417925

`A000079(A002262(n))²*A007318(n)`
-/

namespace A013611.P17130371271790417925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat ^ 2 * A007318 n

end

end A013611.P17130371271790417925

namespace A013611

/-- `A000079(A002262(n))²*A007318(n)` -/
def P17130371271790417925.Spec : Prop :=
  ∀ n, P17130371271790417925.a n = A013611 n

end A013611

/-! ## A013611.P9918925438690352971

`A000079(2*A002262(n))*A007318(n)`
-/

namespace A013611.P9918925438690352971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * A002262 n).toNat * A007318 n

end

end A013611.P9918925438690352971

namespace A013611

/-- `A000079(2*A002262(n))*A007318(n)` -/
def P9918925438690352971.Spec : Prop :=
  ∀ n, P9918925438690352971.a n = A013611 n

end A013611

/-! ## A013611.P2130321447209564886

`A013609(n)*A016116(2*A002262(n))`
-/

namespace A013611.P2130321447209564886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A016116 (2 * A002262 n).toNat

end

end A013611.P2130321447209564886

namespace A013611

/-- `A013609(n)*A016116(2*A002262(n))` -/
def P2130321447209564886.Spec : Prop :=
  ∀ n, P2130321447209564886.a n = A013611 n

end A013611

/-! ## A013611.P2256702521839621405

`A013609(n)/A007318(n)*A013609(n)`
-/

namespace A013611.P2256702521839621405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n : ℚ) / (A007318 n : ℚ) * (A013609 n : ℚ)

end

end A013611.P2256702521839621405

namespace A013611

/-- `A013609(n)/A007318(n)*A013609(n)` -/
def P2256702521839621405.Spec : Prop :=
  ∀ n, P2256702521839621405.a n = (A013611 n : ℚ)

end A013611

/-! ## A013611.P6148480499710966278

`A209757(n+1)/A110813(n)*A013609(n)`
-/

namespace A013611.P6148480499710966278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209757 (n + 1) : ℚ) / (A110813 n : ℚ) * (A013609 n : ℚ)

end

end A013611.P6148480499710966278

namespace A013611

/-- `A209757(n+1)/A110813(n)*A013609(n)` -/
def P6148480499710966278.Spec : Prop :=
  ∀ n, P6148480499710966278.a n = (A013611 n : ℚ)

end A013611

/-! ## A013611.P8658024664051116032

`A007318(n)/(A309873(n+1)/A059268(n))²`
-/

namespace A013611.P8658024664051116032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / ((A309873 (n + 1) : ℚ) / (A059268 n : ℚ)) ^ 2

end

end A013611.P8658024664051116032

namespace A013611

/-- `A007318(n)/(A309873(n+1)/A059268(n))²` -/
def P8658024664051116032.Spec : Prop :=
  ∀ n, P8658024664051116032.a n = (A013611 n : ℚ)

end A013611

/-! ## A013611.P3980311934752518172

`A000079(A002260(n+1)-1)²*ceil(A135089(n)/5)`
-/

namespace A013611.P3980311934752518172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002260 (n + 1) - 1).toNat ^ 2 * ⌈(A135089 n : ℚ) / 5⌉

end

end A013611.P3980311934752518172

namespace A013611

/-- `A000079(A002260(n+1)-1)²*ceil(A135089(n)/5)` -/
def P3980311934752518172.Spec : Prop :=
  ∀ n, P3980311934752518172.a n = A013611 n

end A013611

/-! ## A013611.P5316768004487879600

`A038231(A061579(n))`
-/

namespace A013611.P5316768004487879600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038231 (A061579 n).toNat

end

end A013611.P5316768004487879600

namespace A013611

/-- `A038231(A061579(n))` -/
def P5316768004487879600.Spec : Prop :=
  ∀ n, P5316768004487879600.a n = A013611 n

end A013611

/-! ## A013611.P13059330546631250791

`A038231(A038722(n+1)-1)`
-/

namespace A013611.P13059330546631250791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038231 (A038722 (n + 1) - 1).toNat

end

end A013611.P13059330546631250791

namespace A013611

/-- `A038231(A038722(n+1)-1)` -/
def P13059330546631250791.Spec : Prop :=
  ∀ n, P13059330546631250791.a n = A013611 n

end A013611

/-!
# A013612: Triangle of coefficients in expansion of (1+5x)^n.

The programs for A013612, the canonical program `A013612.P15260993261497830762` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013612 has offset 0).

The definition of A013612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8621 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013612.P18070381666722737

`5*T(n-1,k-1)+T(n-1,k)` with `a(0)=1`
-/

namespace A013612.P18070381666722737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 * SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n

end

end A013612.P18070381666722737

namespace A013612

/-- `5*T(n-1,k-1)+T(n-1,k)` -/
def P18070381666722737.Spec : Prop :=
  ∀ n, (P18070381666722737.a n : ℤ) = A013612 n

end A013612

/-! ## A013612.P15260993261497830762

`5^A002262(n)*A007318(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A013612

/-- `5^A002262(n)*A007318(n)` -/
def P15260993261497830762.Spec : Prop :=
  ∀ n, P15260993261497830762.a n = (A013612 n : ℚ)

end A013612

/-! ## A013612.P16740561644734216999

`A038243(A061579(n))`
-/

namespace A013612.P16740561644734216999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 (A061579 n).toNat

end

end A013612.P16740561644734216999

namespace A013612

/-- `A038243(A061579(n))` -/
def P16740561644734216999.Spec : Prop :=
  ∀ n, P16740561644734216999.a n = A013612 n

end A013612

/-! ## A013612.P8276507643187002579

`A038243(∑[A010054(n)]²-(n+1))`
-/

namespace A013612.P8276507643187002579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1 : ℤ)).toNat

end

end A013612.P8276507643187002579

namespace A013612

/-- `A038243(∑[A010054(n)]²-(n+1))` -/
def P8276507643187002579.Spec : Prop :=
  ∀ n, P8276507643187002579.a n = A013612 n

end A013612

/-! ## A013612.P13759379720868665555

`A038243(A002024(n+1)²-(n+1))`
-/

namespace A013612.P13759379720868665555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A013612.P13759379720868665555

namespace A013612

/-- `A038243(A002024(n+1)²-(n+1))` -/
def P13759379720868665555.Spec : Prop :=
  ∀ n, P13759379720868665555.a n = A013612 n

end A013612

/-! ## A013612.P15636288838068398869

`A013621(n)/A130321(n)`
-/

namespace A013612.P15636288838068398869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013621 n : ℚ) / (A130321 n : ℚ)

end

end A013612.P15636288838068398869

namespace A013612

/-- `A013621(n)/A130321(n)` -/
def P15636288838068398869.Spec : Prop :=
  ∀ n, P15636288838068398869.a n = (A013612 n : ℚ)

end A013612

/-! ## A013612.P11270560775013833728

`A013622(n)/A140303(n)`
-/

namespace A013612.P11270560775013833728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013622 n : ℚ) / (A140303 n : ℚ)

end

end A013612.P11270560775013833728

namespace A013612

/-- `A013622(n)/A140303(n)` -/
def P11270560775013833728.Spec : Prop :=
  ∀ n, P11270560775013833728.a n = (A013612 n : ℚ)

end A013612

/-! ## A013612.P13416157538477506284

`gcd(A013621(n), A013622(n))`
-/

namespace A013612.P13416157538477506284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013621 n) (A013622 n)

end

end A013612.P13416157538477506284

namespace A013612

/-- `gcd(A013621(n), A013622(n))` -/
def P13416157538477506284.Spec : Prop :=
  ∀ n, (P13416157538477506284.a n : ℤ) = A013612 n

end A013612

/-! ## A013612.P14017431464631189401

`A013628(n)/A262616(n)`
-/

namespace A013612.P14017431464631189401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013628 n : ℚ) / (A262616 n : ℚ)

end

end A013612.P14017431464631189401

namespace A013612

/-- `A013628(n)/A262616(n)` -/
def P14017431464631189401.Spec : Prop :=
  ∀ n, P14017431464631189401.a n = (A013612 n : ℚ)

end A013612

/-! ## A013612.P4077201825256513397

`A013628(n)/A130321(n)²`
-/

namespace A013612.P4077201825256513397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013628 n : ℚ) / (A130321 n ^ 2 : ℚ)

end

end A013612.P4077201825256513397

namespace A013612

/-- `A013628(n)/A130321(n)²` -/
def P4077201825256513397.Spec : Prop :=
  ∀ n, P4077201825256513397.a n = (A013612 n : ℚ)

end A013612

/-! ## A013612.P7038563075163256447

`A013621(n)/A013628(n)*A013621(n)`
-/

namespace A013612.P7038563075163256447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013621 n : ℚ) / (A013628 n : ℚ) * (A013621 n : ℚ)

end

end A013612.P7038563075163256447

namespace A013612

/-- `A013621(n)/A013628(n)*A013621(n)` -/
def P7038563075163256447.Spec : Prop :=
  ∀ n, P7038563075163256447.a n = (A013612 n : ℚ)

end A013612

/-! ## A013612.P17409800104512314399

`gcd(A013628(n), A038247(n))`
-/

namespace A013612.P17409800104512314399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013628 n) (A038247 n)

end

end A013612.P17409800104512314399

namespace A013612

/-- `gcd(A013628(n), A038247(n))` -/
def P17409800104512314399.Spec : Prop :=
  ∀ n, (P17409800104512314399.a n : ℤ) = A013612 n

end A013612

/-! ## A013612.P2960656599365523650

`A013617(n)/A059268(n)`
-/

namespace A013612.P2960656599365523650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013617 n : ℚ) / (A059268 n : ℚ)

end

end A013612.P2960656599365523650

namespace A013612

/-- `A013617(n)/A059268(n)` -/
def P2960656599365523650.Spec : Prop :=
  ∀ n, P2960656599365523650.a n = (A013612 n : ℚ)

end A013612

/-! ## A013612.P13198241364188109962

`A038216(n)/A137688(n)`
-/

namespace A013612.P13198241364188109962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038216 n : ℚ) / (A137688 n : ℚ)

end

end A013612.P13198241364188109962

namespace A013612

/-- `A038216(n)/A137688(n)` -/
def P13198241364188109962.Spec : Prop :=
  ∀ n, P13198241364188109962.a n = (A013612 n : ℚ)

end A013612

/-! ## A013612.P4130797787718155839

`gcd(A038216(n), A038271(n))`
-/

namespace A013612.P4130797787718155839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038216 n) (A038271 n)

end

end A013612.P4130797787718155839

namespace A013612

/-- `gcd(A038216(n), A038271(n))` -/
def P4130797787718155839.Spec : Prop :=
  ∀ n, (P4130797787718155839.a n : ℤ) = A013612 n

end A013612

/-! ## A013612.P9274220715875989976

`A038228(n)/A175840(n)`
-/

namespace A013612.P9274220715875989976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038228 n : ℚ) / (A175840 n : ℚ)

end

end A013612.P9274220715875989976

namespace A013612

/-- `A038228(n)/A175840(n)` -/
def P9274220715875989976.Spec : Prop :=
  ∀ n, P9274220715875989976.a n = (A013612 n : ℚ)

end A013612

/-! ## A013612.P17162894629962526943

`A038283(n)/(A130321(n)²*A130321(n))`
-/

namespace A013612.P17162894629962526943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038283 n : ℚ) / (A130321 n ^ 2 * A130321 n : ℚ)

end

end A013612.P17162894629962526943

namespace A013612

/-- `A038283(n)/(A130321(n)²*A130321(n))` -/
def P17162894629962526943.Spec : Prop :=
  ∀ n, P17162894629962526943.a n = (A013612 n : ℚ)

end A013612

/-! ## A013612.P13898003010910244973

`gcd(A038240(n), A038295(n))`
-/

namespace A013612.P13898003010910244973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038240 n) (A038295 n)

end

end A013612.P13898003010910244973

namespace A013612

/-- `gcd(A038240(n), A038295(n))` -/
def P13898003010910244973.Spec : Prop :=
  ∀ n, (P13898003010910244973.a n : ℤ) = A013612 n

end A013612

/-! ## A013612.P17211005559788992139

`A038295(n)/A140303(n)²`
-/

namespace A013612.P17211005559788992139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038295 n : ℚ) / (A140303 n ^ 2 : ℚ)

end

end A013612.P17211005559788992139

namespace A013612

/-- `A038295(n)/A140303(n)²` -/
def P17211005559788992139.Spec : Prop :=
  ∀ n, P17211005559788992139.a n = (A013612 n : ℚ)

end A013612

/-! ## A013612.P2061232424045436306

`gcd(A038228(n), A038319(n))`
-/

namespace A013612.P2061232424045436306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038228 n) (A038319 n)

end

end A013612.P2061232424045436306

namespace A013612

/-- `gcd(A038228(n), A038319(n))` -/
def P2061232424045436306.Spec : Prop :=
  ∀ n, (P2061232424045436306.a n : ℤ) = A013612 n

end A013612

/-!
# A013613: Triangle of coefficients in expansion of (1+6x)^n.

The programs for A013613, the canonical program `A013613.P7409468563020744688` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013613 has offset 0).

The definition of A013613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7358 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013613.P16813887670107745879

`6*T(n-1,k-1)+T(n-1,k)` with `a(0)=1`
-/

namespace A013613.P16813887670107745879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  6 * SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n

end

end A013613.P16813887670107745879

namespace A013613

/-- `6*T(n-1,k-1)+T(n-1,k)` -/
def P16813887670107745879.Spec : Prop :=
  ∀ n, (P16813887670107745879.a n : ℤ) = A013613 n

end A013613

/-! ## A013613.P7409468563020744688

`A013610(n)*A059268(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A013613

/-- `A013610(n)*A059268(n)` -/
def P7409468563020744688.Spec : Prop :=
  ∀ n, P7409468563020744688.a n = A013613 n

theorem P7409468563020744688.correct : P7409468563020744688.Spec := by
  intro n
  simp only [A013613]

end A013613

/-! ## A013613.P2857389197761683399

`lcm(A013609(n), A013610(n))`
-/

namespace A013613.P2857389197761683399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013609 n) (A013610 n)

end

end A013613.P2857389197761683399

namespace A013613

/-- `lcm(A013609(n), A013610(n))` -/
def P2857389197761683399.Spec : Prop :=
  ∀ n, (P2857389197761683399.a n : ℤ) = A013613 n

end A013613

/-! ## A013613.P7294766184875060167

`A013609(n)/A007318(n)*A013610(n)`
-/

namespace A013613.P7294766184875060167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n : ℚ) / (A007318 n : ℚ) * (A013610 n : ℚ)

end

end A013613.P7294766184875060167

namespace A013613

/-- `A013609(n)/A007318(n)*A013610(n)` -/
def P7294766184875060167.Spec : Prop :=
  ∀ n, P7294766184875060167.a n = (A013613 n : ℚ)

end A013613

/-! ## A013613.P5810112901522494948

`A013610(n)/A013609(n)*A013611(n)`
-/

namespace A013613.P5810112901522494948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013610 n : ℚ) / (A013609 n : ℚ) * (A013611 n : ℚ)

end

end A013613.P5810112901522494948

namespace A013613

/-- `A013610(n)/A013609(n)*A013611(n)` -/
def P5810112901522494948.Spec : Prop :=
  ∀ n, P5810112901522494948.a n = (A013613 n : ℚ)

end A013613

/-! ## A013613.P4795462275130476831

`A013610(n)/A038220(n)*A038222(n)`
-/

namespace A013613.P4795462275130476831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013610 n : ℚ) / (A038220 n : ℚ) * (A038222 n : ℚ)

end

end A013613.P4795462275130476831

namespace A013613

/-- `A013610(n)/A038220(n)*A038222(n)` -/
def P4795462275130476831.Spec : Prop :=
  ∀ n, P4795462275130476831.a n = (A013613 n : ℚ)

end A013613

/-! ## A013613.P10033345621459115209

`A038255(∑[char[∑[n]]]²-(n+1))`
-/

namespace A013613.P10033345621459115209
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038255 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A013613.P10033345621459115209

namespace A013613

/-- `A038255(∑[char[∑[n]]]²-(n+1))` -/
def P10033345621459115209.Spec : Prop :=
  ∀ n, P10033345621459115209.a n = A013613 n

end A013613

/-! ## A013613.P17767363726881119331

`A038212(n)/A130321(n)`
-/

namespace A013613.P17767363726881119331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038212 n : ℚ) / (A130321 n : ℚ)

end

end A013613.P17767363726881119331

namespace A013613

/-- `A038212(n)/A130321(n)` -/
def P17767363726881119331.Spec : Prop :=
  ∀ n, P17767363726881119331.a n = (A013613 n : ℚ)

end A013613

/-! ## A013613.P9016480815240634360

`A013609(n)²/A038220(n)*A098355(n)`
-/

namespace A013613.P9016480815240634360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n ^ 2 : ℚ) / (A038220 n : ℚ) * (A098355 n : ℚ)

end

end A013613.P9016480815240634360

namespace A013613

/-- `A013609(n)²/A038220(n)*A098355(n)` -/
def P9016480815240634360.Spec : Prop :=
  ∀ n, P9016480815240634360.a n = (A013613 n : ℚ)

end A013613

/-! ## A013613.P6721880474427514916

`A038224(n)/A140303(n)`
-/

namespace A013613.P6721880474427514916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038224 n : ℚ) / (A140303 n : ℚ)

end

end A013613.P6721880474427514916

namespace A013613

/-- `A038224(n)/A140303(n)` -/
def P6721880474427514916.Spec : Prop :=
  ∀ n, P6721880474427514916.a n = (A013613 n : ℚ)

end A013613

/-! ## A013613.P13448669122899144896

`gcd(A038212(n), A038224(n))`
-/

namespace A013613.P13448669122899144896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038212 n) (A038224 n)

end

end A013613.P13448669122899144896

namespace A013613

/-- `gcd(A038212(n), A038224(n))` -/
def P13448669122899144896.Spec : Prop :=
  ∀ n, (P13448669122899144896.a n : ℤ) = A013613 n

end A013613

/-! ## A013613.P5738248212767460596

`A038236(n)/A262616(n)`
-/

namespace A013613.P5738248212767460596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038236 n : ℚ) / (A262616 n : ℚ)

end

end A013613.P5738248212767460596

namespace A013613

/-- `A038236(n)/A262616(n)` -/
def P5738248212767460596.Spec : Prop :=
  ∀ n, P5738248212767460596.a n = (A013613 n : ℚ)

end A013613

/-! ## A013613.P4228373910657745974

`A038236(n)/A130321(n)²`
-/

namespace A013613.P4228373910657745974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038236 n : ℚ) / (A130321 n ^ 2 : ℚ)

end

end A013613.P4228373910657745974

namespace A013613

/-- `A038236(n)/A130321(n)²` -/
def P4228373910657745974.Spec : Prop :=
  ∀ n, P4228373910657745974.a n = (A013613 n : ℚ)

end A013613

/-! ## A013613.P16848986853391007885

`A013619(n)/A059268(n)`
-/

namespace A013613.P16848986853391007885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013619 n : ℚ) / (A059268 n : ℚ)

end

end A013613.P16848986853391007885

namespace A013613

/-- `A013619(n)/A059268(n)` -/
def P16848986853391007885.Spec : Prop :=
  ∀ n, P16848986853391007885.a n = (A013613 n : ℚ)

end A013613

/-! ## A013613.P14606393909481647388

`gcd(A038236(n), A038272(n))`
-/

namespace A013613.P14606393909481647388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038236 n) (A038272 n)

end

end A013613.P14606393909481647388

namespace A013613

/-- `gcd(A038236(n), A038272(n))` -/
def P14606393909481647388.Spec : Prop :=
  ∀ n, (P14606393909481647388.a n : ℤ) = A013613 n

end A013613

/-! ## A013613.P6483000806863074531

`A038218(n)/A137688(n)`
-/

namespace A013613.P6483000806863074531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038218 n : ℚ) / (A137688 n : ℚ)

end

end A013613.P6483000806863074531

namespace A013613

/-- `A038218(n)/A137688(n)` -/
def P6483000806863074531.Spec : Prop :=
  ∀ n, P6483000806863074531.a n = (A013613 n : ℚ)

end A013613

/-! ## A013613.P2563825972287064302

`gcd(A038218(n), A038248(n))`
-/

namespace A013613.P2563825972287064302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038218 n) (A038248 n)

end

end A013613.P2563825972287064302

namespace A013613

/-- `gcd(A038218(n), A038248(n))` -/
def P2563825972287064302.Spec : Prop :=
  ∀ n, (P2563825972287064302.a n : ℤ) = A013613 n

end A013613

/-! ## A013613.P11578993916466159965

`A038284(n)/(A130321(n)²*A130321(n))`
-/

namespace A013613.P11578993916466159965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038284 n : ℚ) / (A130321 n ^ 2 * A130321 n : ℚ)

end

end A013613.P11578993916466159965

namespace A013613

/-- `A038284(n)/(A130321(n)²*A130321(n))` -/
def P11578993916466159965.Spec : Prop :=
  ∀ n, P11578993916466159965.a n = (A013613 n : ℚ)

end A013613

/-! ## A013613.P15127476894189189092

`A038230(n)/A175840(n)`
-/

namespace A013613.P15127476894189189092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038230 n : ℚ) / (A175840 n : ℚ)

end

end A013613.P15127476894189189092

namespace A013613

/-- `A038230(n)/A175840(n)` -/
def P15127476894189189092.Spec : Prop :=
  ∀ n, P15127476894189189092.a n = (A013613 n : ℚ)

end A013613

/-! ## A013613.P2249239155024100893

`gcd(A038284(n), A038296(n))`
-/

namespace A013613.P2249239155024100893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038284 n) (A038296 n)

end

end A013613.P2249239155024100893

namespace A013613

/-- `gcd(A038284(n), A038296(n))` -/
def P2249239155024100893.Spec : Prop :=
  ∀ n, (P2249239155024100893.a n : ℤ) = A013613 n

end A013613

/-!
# A013614: Triangle of coefficients in expansion of (1+7x)^n.

The programs for A013614, the canonical program `A013614.P2472947764433084484` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013614 has offset 0).

The definition of A013614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6423 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013614.P6079824723491879588

`7*T(n-1,k-1)+T(n-1,k)` with `a(0)=1`
-/

namespace A013614.P6079824723491879588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  7 * SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n

end

end A013614.P6079824723491879588

namespace A013614

/-- `7*T(n-1,k-1)+T(n-1,k)` -/
def P6079824723491879588.Spec : Prop :=
  ∀ n, (P6079824723491879588.a n : ℤ) = A013614 n

end A013614

/-! ## A013614.P2472947764433084484

`A000420(A002262(n))*A007318(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A013614

/-- `A000420(A002262(n))*A007318(n)` -/
def P2472947764433084484.Spec : Prop :=
  ∀ n, P2472947764433084484.a n = A013614 n

theorem P2472947764433084484.correct : P2472947764433084484.Spec := by
  intro n
  simp only [A013614]

end A013614

/-! ## A013614.P8863054014675228083

`(A014473(n)+1)*A000420(A002262(n))`
-/

namespace A013614.P8863054014675228083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A000420 (A002262 n).toNat

end

end A013614.P8863054014675228083

namespace A013614

/-- `(A014473(n)+1)*A000420(A002262(n))` -/
def P8863054014675228083.Spec : Prop :=
  ∀ n, P8863054014675228083.a n = A013614 n

theorem P8863054014675228083.correct : P8863054014675228083.Spec := by
  intro n
  simp only [A013614, Nat.add_sub_cancel, A013614.P8863054014675228083.a, A013614.P2472947764433084484.a, A000420, A000420.P3695589171832359676.a, A002262, A002262.P17823619022233514403.a, A007318, A007318.P11755526479805562006.a, A014473, A014473.P9301799580602651200.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A013614

/-! ## A013614.P5293208193004574260

`A027466(∑[char[∑[n]]]²-(n+1))`
-/

namespace A013614.P5293208193004574260
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A013614.P5293208193004574260

namespace A013614

/-- `A027466(∑[char[∑[n]]]²-(n+1))` -/
def P5293208193004574260.Spec : Prop :=
  ∀ n, P5293208193004574260.a n = A013614 n

end A013614

/-! ## A013614.P14628253265804587617

`A013623(n)/A130321(n)`
-/

namespace A013614.P14628253265804587617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013623 n : ℚ) / (A130321 n : ℚ)

end

end A013614.P14628253265804587617

namespace A013614

/-- `A013623(n)/A130321(n)` -/
def P14628253265804587617.Spec : Prop :=
  ∀ n, P14628253265804587617.a n = (A013614 n : ℚ)

end A013614

/-! ## A013614.P11847919016545769770

`A013624(n)/A140303(n)`
-/

namespace A013614.P11847919016545769770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013624 n : ℚ) / (A140303 n : ℚ)

end

end A013614.P11847919016545769770

namespace A013614

/-- `A013624(n)/A140303(n)` -/
def P11847919016545769770.Spec : Prop :=
  ∀ n, P11847919016545769770.a n = (A013614 n : ℚ)

end A013614

/-! ## A013614.P17581528939349008879

`gcd(A013623(n), A013624(n))`
-/

namespace A013614.P17581528939349008879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013623 n) (A013624 n)

end

end A013614.P17581528939349008879

namespace A013614

/-- `gcd(A013623(n), A013624(n))` -/
def P17581528939349008879.Spec : Prop :=
  ∀ n, (P17581528939349008879.a n : ℤ) = A013614 n

end A013614

/-! ## A013614.P12644528878416668527

`A013625(n)/A262616(n)`
-/

namespace A013614.P12644528878416668527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013625 n : ℚ) / (A262616 n : ℚ)

end

end A013614.P12644528878416668527

namespace A013614

/-- `A013625(n)/A262616(n)` -/
def P12644528878416668527.Spec : Prop :=
  ∀ n, P12644528878416668527.a n = (A013614 n : ℚ)

end A013614

/-! ## A013614.P2026520247738009178

`A013625(n)/A130321(n)²`
-/

namespace A013614.P2026520247738009178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013625 n : ℚ) / (A130321 n ^ 2 : ℚ)

end

end A013614.P2026520247738009178

namespace A013614

/-- `A013625(n)/A130321(n)²` -/
def P2026520247738009178.Spec : Prop :=
  ∀ n, P2026520247738009178.a n = (A013614 n : ℚ)

end A013614

/-! ## A013614.P7235394782341146458

`A013623(n)/A013625(n)*A013623(n)`
-/

namespace A013614.P7235394782341146458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013623 n : ℚ) / (A013625 n : ℚ) * (A013623 n : ℚ)

end

end A013614.P7235394782341146458

namespace A013614

/-- `A013623(n)/A013625(n)*A013623(n)` -/
def P7235394782341146458.Spec : Prop :=
  ∀ n, P7235394782341146458.a n = (A013614 n : ℚ)

end A013614

/-! ## A013614.P9317819737730942931

`gcd(A013625(n), A013626(n))`
-/

namespace A013614.P9317819737730942931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013625 n) (A013626 n)

end

end A013614.P9317819737730942931

namespace A013614

/-- `gcd(A013625(n), A013626(n))` -/
def P9317819737730942931.Spec : Prop :=
  ∀ n, (P9317819737730942931.a n : ℤ) = A013614 n

end A013614

/-! ## A013614.P10181271979987829396

`gcd(A013627(n), A038273(n))`
-/

namespace A013614.P10181271979987829396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013627 n) (A038273 n)

end

end A013614.P10181271979987829396

namespace A013614

/-- `gcd(A013627(n), A038273(n))` -/
def P10181271979987829396.Spec : Prop :=
  ∀ n, (P10181271979987829396.a n : ℤ) = A013614 n

end A013614

/-! ## A013614.P10410068258540396198

`A038285(n)/(A130321(n)²*A130321(n))`
-/

namespace A013614.P10410068258540396198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038285 n : ℚ) / (A130321 n ^ 2 * A130321 n : ℚ)

end

end A013614.P10410068258540396198

namespace A013614

/-- `A038285(n)/(A130321(n)²*A130321(n))` -/
def P10410068258540396198.Spec : Prop :=
  ∀ n, P10410068258540396198.a n = (A013614 n : ℚ)

end A013614

/-! ## A013614.P7698165798653367879

`gcd(A038285(n), A038297(n))`
-/

namespace A013614.P7698165798653367879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038285 n) (A038297 n)

end

end A013614.P7698165798653367879

namespace A013614

/-- `gcd(A038285(n), A038297(n))` -/
def P7698165798653367879.Spec : Prop :=
  ∀ n, (P7698165798653367879.a n : ℤ) = A013614 n

end A013614

/-! ## A013614.P4861732343655286030

`A038297(n)/A140303(n)²`
-/

namespace A013614.P4861732343655286030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038297 n : ℚ) / (A140303 n ^ 2 : ℚ)

end

end A013614.P4861732343655286030

namespace A013614

/-- `A038297(n)/A140303(n)²` -/
def P4861732343655286030.Spec : Prop :=
  ∀ n, P4861732343655286030.a n = (A013614 n : ℚ)

end A013614

/-! ## A013614.P933536962503324164

`gcd(A038309(n), A038321(n))`
-/

namespace A013614.P933536962503324164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038309 n) (A038321 n)

end

end A013614.P933536962503324164

namespace A013614

/-- `gcd(A038309(n), A038321(n))` -/
def P933536962503324164.Spec : Prop :=
  ∀ n, (P933536962503324164.a n : ℤ) = A013614 n

end A013614

/-! ## A013614.P10149214464932121589

`A013623(n)²/A013625(n)`
-/

namespace A013614.P10149214464932121589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013623 n ^ 2 : ℚ) / (A013625 n : ℚ)

end

end A013614.P10149214464932121589

namespace A013614

/-- `A013623(n)²/A013625(n)` -/
def P10149214464932121589.Spec : Prop :=
  ∀ n, P10149214464932121589.a n = (A013614 n : ℚ)

end A013614

/-! ## A013614.P3714078324258958978

`A007318(n)*A166661(A059268(n))`
-/

namespace A013614.P3714078324258958978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A166661 (A059268 n).toNat

end

end A013614.P3714078324258958978

namespace A013614

/-- `A007318(n)*A166661(A059268(n))` -/
def P3714078324258958978.Spec : Prop :=
  ∀ n, P3714078324258958978.a n = A013614 n

end A013614

/-!
# A013615: Triangle of coefficients in expansion of (1+8x)^n.

The programs for A013615, the canonical program `A013615.P5041340170745269079` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013615 has offset 0).

The definition of A013615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5763 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013615.P12414792735968663270

`8*T(n-1,k-1)+T(n-1,k)` with `a(0)=1`
-/

namespace A013615.P12414792735968663270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  8 * SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n

end

end A013615.P12414792735968663270

namespace A013615

/-- `8*T(n-1,k-1)+T(n-1,k)` -/
def P12414792735968663270.Spec : Prop :=
  ∀ n, (P12414792735968663270.a n : ℤ) = A013615 n

end A013615

/-! ## A013615.P5041340170745269079

`A013611(n)*A059268(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A013615

/-- `A013611(n)*A059268(n)` -/
def P5041340170745269079.Spec : Prop :=
  ∀ n, P5041340170745269079.a n = A013615 n

theorem P5041340170745269079.correct : P5041340170745269079.Spec := by
  intro n
  simp only [A013615]

end A013615

/-! ## A013615.P7467321600019750515

`A059268(n)²*A013609(n)`
-/

namespace A013615.P7467321600019750515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A013609 n

end

end A013615.P7467321600019750515

namespace A013615

/-- `A059268(n)²*A013609(n)` -/
def P7467321600019750515.Spec : Prop :=
  ∀ n, P7467321600019750515.a n = A013615 n

end A013615

/-! ## A013615.P9425913027354237581

`A001018(A002262(n))*A007318(n)`
-/

namespace A013615.P9425913027354237581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 (A002262 n).toNat * A007318 n

end

end A013615.P9425913027354237581

namespace A013615

/-- `A001018(A002262(n))*A007318(n)` -/
def P9425913027354237581.Spec : Prop :=
  ∀ n, P9425913027354237581.a n = A013615 n

end A013615

/-! ## A013615.P17977596756705346162

`A013611(n)/A013609(n)*A013611(n)`
-/

namespace A013615.P17977596756705346162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013611 n : ℚ) / (A013609 n : ℚ) * (A013611 n : ℚ)

end

end A013615.P17977596756705346162

namespace A013615

/-- `A013611(n)/A013609(n)*A013611(n)` -/
def P17977596756705346162.Spec : Prop :=
  ∀ n, P17977596756705346162.a n = (A013615 n : ℚ)

end A013615

/-! ## A013615.P8546268724762119254

`A013611(n)/A038220(n)*A038222(n)`
-/

namespace A013615.P8546268724762119254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013611 n : ℚ) / (A038220 n : ℚ) * (A038222 n : ℚ)

end

end A013615.P8546268724762119254

namespace A013615

/-- `A013611(n)/A038220(n)*A038222(n)` -/
def P8546268724762119254.Spec : Prop :=
  ∀ n, P8546268724762119254.a n = (A013615 n : ℚ)

end A013615

/-! ## A013615.P7657686384851330223

`A007318(n)*A059268(n)*A059268(n)²`
-/

namespace A013615.P7657686384851330223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A059268 n * A059268 n ^ 2

end

end A013615.P7657686384851330223

namespace A013615

/-- `A007318(n)*A059268(n)*A059268(n)²` -/
def P7657686384851330223.Spec : Prop :=
  ∀ n, P7657686384851330223.a n = A013615 n

end A013615

/-! ## A013615.P5388101757357869153

`(A013609(n)/A007318(n))²*A013609(n)`
-/

namespace A013615.P5388101757357869153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A013609 n : ℚ) / (A007318 n : ℚ)) ^ 2 * (A013609 n : ℚ)

end

end A013615.P5388101757357869153

namespace A013615

/-- `(A013609(n)/A007318(n))²*A013609(n)` -/
def P5388101757357869153.Spec : Prop :=
  ∀ n, P5388101757357869153.a n = (A013615 n : ℚ)

end A013615

/-! ## A013615.P8908986948832282759

`A036565(A112367(n))*A038231(A061579(n))`
-/

namespace A013615.P8908986948832282759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036565 (A112367 n).toNat * A038231 (A061579 n).toNat

end

end A013615.P8908986948832282759

namespace A013615

/-- `A036565(A112367(n))*A038231(A061579(n))` -/
def P8908986948832282759.Spec : Prop :=
  ∀ n, P8908986948832282759.a n = A013615 n

end A013615

/-! ## A013615.P2896656322781846440

`A038279(∑[char[∑[n]]]²-(n+1))`
-/

namespace A013615.P2896656322781846440
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038279 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A013615.P2896656322781846440

namespace A013615

/-- `A038279(∑[char[∑[n]]]²-(n+1))` -/
def P2896656322781846440.Spec : Prop :=
  ∀ n, P2896656322781846440.a n = A013615 n

end A013615

/-! ## A013615.P11049601133694803707

`A038214(n)/A130321(n)`
-/

namespace A013615.P11049601133694803707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038214 n : ℚ) / (A130321 n : ℚ)

end

end A013615.P11049601133694803707

namespace A013615

/-- `A038214(n)/A130321(n)` -/
def P11049601133694803707.Spec : Prop :=
  ∀ n, P11049601133694803707.a n = (A013615 n : ℚ)

end A013615

/-! ## A013615.P17961225234544605394

`A038226(n)/A140303(n)`
-/

namespace A013615.P17961225234544605394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038226 n : ℚ) / (A140303 n : ℚ)

end

end A013615.P17961225234544605394

namespace A013615

/-- `A038226(n)/A140303(n)` -/
def P17961225234544605394.Spec : Prop :=
  ∀ n, P17961225234544605394.a n = (A013615 n : ℚ)

end A013615

/-! ## A013615.P6860347219482939333

`gcd(A038214(n), A038226(n))`
-/

namespace A013615.P6860347219482939333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038214 n) (A038226 n)

end

end A013615.P6860347219482939333

namespace A013615

/-- `gcd(A038214(n), A038226(n))` -/
def P6860347219482939333.Spec : Prop :=
  ∀ n, (P6860347219482939333.a n : ℤ) = A013615 n

end A013615

/-! ## A013615.P1550696247165680640

`A038238(n)/A262616(n)`
-/

namespace A013615.P1550696247165680640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038238 n : ℚ) / (A262616 n : ℚ)

end

end A013615.P1550696247165680640

namespace A013615

/-- `A038238(n)/A262616(n)` -/
def P1550696247165680640.Spec : Prop :=
  ∀ n, P1550696247165680640.a n = (A013615 n : ℚ)

end A013615

/-! ## A013615.P4028963861331723801

`A038238(n)/A130321(n)²`
-/

namespace A013615.P4028963861331723801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038238 n : ℚ) / (A130321 n ^ 2 : ℚ)

end

end A013615.P4028963861331723801

namespace A013615

/-- `A038238(n)/A130321(n)²` -/
def P4028963861331723801.Spec : Prop :=
  ∀ n, P4028963861331723801.a n = (A013615 n : ℚ)

end A013615

/-! ## A013615.P6088062035758298826

`gcd(A038238(n), A038250(n))`
-/

namespace A013615.P6088062035758298826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038238 n) (A038250 n)

end

end A013615.P6088062035758298826

namespace A013615

/-- `gcd(A038238(n), A038250(n))` -/
def P6088062035758298826.Spec : Prop :=
  ∀ n, (P6088062035758298826.a n : ℤ) = A013615 n

end A013615

/-! ## A013615.P44454997751088640

`gcd(A038262(n), A038274(n))`
-/

namespace A013615.P44454997751088640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038262 n) (A038274 n)

end

end A013615.P44454997751088640

namespace A013615

/-- `gcd(A038262(n), A038274(n))` -/
def P44454997751088640.Spec : Prop :=
  ∀ n, (P44454997751088640.a n : ℤ) = A013615 n

end A013615

/-! ## A013615.P1364825410347713312

`A038286(n)/(A130321(n)²*A130321(n))`
-/

namespace A013615.P1364825410347713312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038286 n : ℚ) / (A130321 n ^ 2 * A130321 n : ℚ)

end

end A013615.P1364825410347713312

namespace A013615

/-- `A038286(n)/(A130321(n)²*A130321(n))` -/
def P1364825410347713312.Spec : Prop :=
  ∀ n, P1364825410347713312.a n = (A013615 n : ℚ)

end A013615

/-! ## A013615.P15294331292659923706

`gcd(A038286(n), A038298(n))`
-/

namespace A013615.P15294331292659923706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038286 n) (A038298 n)

end

end A013615.P15294331292659923706

namespace A013615

/-- `gcd(A038286(n), A038298(n))` -/
def P15294331292659923706.Spec : Prop :=
  ∀ n, (P15294331292659923706.a n : ℤ) = A013615 n

end A013615

/-! ## A013615.P721529254075772751

`A038298(n)/A140303(n)²`
-/

namespace A013615.P721529254075772751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038298 n : ℚ) / (A140303 n ^ 2 : ℚ)

end

end A013615.P721529254075772751

namespace A013615

/-- `A038298(n)/A140303(n)²` -/
def P721529254075772751.Spec : Prop :=
  ∀ n, P721529254075772751.a n = (A013615 n : ℚ)

end A013615

/-!
# A013616: Triangle of coefficients in expansion of (1+9x)^n.

The programs for A013616, the canonical program `A013616.P12238347047684720050` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013616 has offset 0).

The definition of A013616 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013616.P8663800641918824651

`9*T(n-1,k-1)+T(n-1,k)` with `a(0)=1`
-/

namespace A013616.P8663800641918824651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  9 * SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n

end

end A013616.P8663800641918824651

namespace A013616

/-- `9*T(n-1,k-1)+T(n-1,k)` -/
def P8663800641918824651.Spec : Prop :=
  ∀ n, (P8663800641918824651.a n : ℤ) = A013616 n

end A013616

/-! ## A013616.P16021588877648508534

`9^A002262(n)*A007318(n)`
-/

namespace A013616.P16021588877648508534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ (A002262 n : ℤ) * (A007318 n : ℚ)

end

end A013616.P16021588877648508534

namespace A013616

/-- `9^A002262(n)*A007318(n)` -/
def P16021588877648508534.Spec : Prop :=
  ∀ n, P16021588877648508534.a n = (A013616 n : ℚ)

end A013616

/-! ## A013616.P12238347047684720050

`A001019(A002262(n))*A007318(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A013616

/-- `A001019(A002262(n))*A007318(n)` -/
def P12238347047684720050.Spec : Prop :=
  ∀ n, P12238347047684720050.a n = A013616 n

theorem P12238347047684720050.correct : P12238347047684720050.Spec := by
  intro n
  simp only [A013616]

end A013616

/-! ## A013616.P18323898851539160859

`A000244(2*A002262(n))*A007318(n)`
-/

namespace A013616.P18323898851539160859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (2 * A002262 n).toNat * A007318 n

end

end A013616.P18323898851539160859

namespace A013616

/-- `A000244(2*A002262(n))*A007318(n)` -/
def P18323898851539160859.Spec : Prop :=
  ∀ n, P18323898851539160859.a n = A013616 n

end A013616

/-! ## A013616.P12083120614195282058

`A013610(n)/A007318(n)*A013610(n)`
-/

namespace A013616.P12083120614195282058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013610 n : ℚ) / (A007318 n : ℚ) * (A013610 n : ℚ)

end

end A013616.P12083120614195282058

namespace A013616

/-- `A013610(n)/A007318(n)*A013610(n)` -/
def P12083120614195282058.Spec : Prop :=
  ∀ n, P12083120614195282058.a n = (A013616 n : ℚ)

end A013616

/-! ## A013616.P13086259342564808082

`A013613(n)/A013611(n)*A013613(n)`
-/

namespace A013616.P13086259342564808082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013613 n : ℚ) / (A013611 n : ℚ) * (A013613 n : ℚ)

end

end A013616.P13086259342564808082

namespace A013616

/-- `A013613(n)/A013611(n)*A013613(n)` -/
def P13086259342564808082.Spec : Prop :=
  ∀ n, P13086259342564808082.a n = (A013616 n : ℚ)

end A013616

/-! ## A013616.P13335042876064314491

`(A013610(n)/A013609(n))²*A013611(n)`
-/

namespace A013616.P13335042876064314491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A013610 n : ℚ) / (A013609 n : ℚ)) ^ 2 * (A013611 n : ℚ)

end

end A013616.P13335042876064314491

namespace A013616

/-- `(A013610(n)/A013609(n))²*A013611(n)` -/
def P13335042876064314491.Spec : Prop :=
  ∀ n, P13335042876064314491.a n = (A013616 n : ℚ)

end A013616

/-! ## A013616.P2511810278165239539

`A038291(A061579(n))`
-/

namespace A013616.P2511810278165239539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038291 (A061579 n).toNat

end

end A013616.P2511810278165239539

namespace A013616

/-- `A038291(A061579(n))` -/
def P2511810278165239539.Spec : Prop :=
  ∀ n, P2511810278165239539.a n = A013616 n

end A013616

/-! ## A013616.P14951134325196932131

`A038215(n)/A130321(n)`
-/

namespace A013616.P14951134325196932131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038215 n : ℚ) / (A130321 n : ℚ)

end

end A013616.P14951134325196932131

namespace A013616

/-- `A038215(n)/A130321(n)` -/
def P14951134325196932131.Spec : Prop :=
  ∀ n, P14951134325196932131.a n = (A013616 n : ℚ)

end A013616

/-! ## A013616.P12781506300868796503

`A038227(n)/A140303(n)`
-/

namespace A013616.P12781506300868796503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038227 n : ℚ) / (A140303 n : ℚ)

end

end A013616.P12781506300868796503

namespace A013616

/-- `A038227(n)/A140303(n)` -/
def P12781506300868796503.Spec : Prop :=
  ∀ n, P12781506300868796503.a n = (A013616 n : ℚ)

end A013616

/-! ## A013616.P16233922738373480376

`gcd(A038215(n), A038227(n))`
-/

namespace A013616.P16233922738373480376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038215 n) (A038227 n)

end

end A013616.P16233922738373480376

namespace A013616

/-- `gcd(A038215(n), A038227(n))` -/
def P16233922738373480376.Spec : Prop :=
  ∀ n, (P16233922738373480376.a n : ℤ) = A013616 n

end A013616

/-! ## A013616.P16454033353129725414

`A038239(n)/A262616(n)`
-/

namespace A013616.P16454033353129725414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038239 n : ℚ) / (A262616 n : ℚ)

end

end A013616.P16454033353129725414

namespace A013616

/-- `A038239(n)/A262616(n)` -/
def P16454033353129725414.Spec : Prop :=
  ∀ n, P16454033353129725414.a n = (A013616 n : ℚ)

end A013616

/-! ## A013616.P10562557719217982656

`A038239(n)/A130321(n)²`
-/

namespace A013616.P10562557719217982656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038239 n : ℚ) / (A130321 n ^ 2 : ℚ)

end

end A013616.P10562557719217982656

namespace A013616

/-- `A038239(n)/A130321(n)²` -/
def P10562557719217982656.Spec : Prop :=
  ∀ n, P10562557719217982656.a n = (A013616 n : ℚ)

end A013616

/-! ## A013616.P14283203525448463751

`gcd(A038239(n), A038251(n))`
-/

namespace A013616.P14283203525448463751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038239 n) (A038251 n)

end

end A013616.P14283203525448463751

namespace A013616

/-- `gcd(A038239(n), A038251(n))` -/
def P14283203525448463751.Spec : Prop :=
  ∀ n, (P14283203525448463751.a n : ℤ) = A013616 n

end A013616

/-! ## A013616.P1426125164862196389

`A013610(n)²/A007318(n)`
-/

namespace A013616.P1426125164862196389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013610 n ^ 2 : ℚ) / (A007318 n : ℚ)

end

end A013616.P1426125164862196389

namespace A013616

/-- `A013610(n)²/A007318(n)` -/
def P1426125164862196389.Spec : Prop :=
  ∀ n, P1426125164862196389.a n = (A013616 n : ℚ)

end A013616

/-! ## A013616.P17477123169319096255

`A013610(n)²/(A014473(n)+1)`
-/

namespace A013616.P17477123169319096255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013610 n ^ 2 : ℚ) / (A014473 n + 1 : ℚ)

end

end A013616.P17477123169319096255

namespace A013616

/-- `A013610(n)²/(A014473(n)+1)` -/
def P17477123169319096255.Spec : Prop :=
  ∀ n, P17477123169319096255.a n = (A013616 n : ℚ)

end A013616

/-! ## A013616.P2590973099385491807

`gcd(A038263(n), A038275(n))`
-/

namespace A013616.P2590973099385491807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038263 n) (A038275 n)

end

end A013616.P2590973099385491807

namespace A013616

/-- `gcd(A038263(n), A038275(n))` -/
def P2590973099385491807.Spec : Prop :=
  ∀ n, (P2590973099385491807.a n : ℤ) = A013616 n

end A013616

/-! ## A013616.P4570486260478394080

`A038287(n)/(A130321(n)²*A130321(n))`
-/

namespace A013616.P4570486260478394080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038287 n : ℚ) / (A130321 n ^ 2 * A130321 n : ℚ)

end

end A013616.P4570486260478394080

namespace A013616

/-- `A038287(n)/(A130321(n)²*A130321(n))` -/
def P4570486260478394080.Spec : Prop :=
  ∀ n, P4570486260478394080.a n = (A013616 n : ℚ)

end A013616

/-! ## A013616.P15000494716618564296

`gcd(A038287(n), A038299(n))`
-/

namespace A013616.P15000494716618564296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038287 n) (A038299 n)

end

end A013616.P15000494716618564296

namespace A013616

/-- `gcd(A038287(n), A038299(n))` -/
def P15000494716618564296.Spec : Prop :=
  ∀ n, (P15000494716618564296.a n : ℤ) = A013616 n

end A013616

/-! ## A013616.P5628436551861263781

`A038299(n)/A140303(n)²`
-/

namespace A013616.P5628436551861263781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038299 n : ℚ) / (A140303 n ^ 2 : ℚ)

end

end A013616.P5628436551861263781

namespace A013616

/-- `A038299(n)/A140303(n)²` -/
def P5628436551861263781.Spec : Prop :=
  ∀ n, P5628436551861263781.a n = (A013616 n : ℚ)

end A013616

/-!
# A013617: Triangle of coefficients in expansion of (1+10x)^n.

The programs for A013617, the canonical program `A013617.P9066571055645517890` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013617 has offset 0).

The definition of A013617 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4840 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013617.P8076148765213929886

`10*T(n-1,k-1)+T(n-1,k)` with `a(0)=1`
-/

namespace A013617.P8076148765213929886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  10 * SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n

end

end A013617.P8076148765213929886

namespace A013617

/-- `10*T(n-1,k-1)+T(n-1,k)` -/
def P8076148765213929886.Spec : Prop :=
  ∀ n, (P8076148765213929886.a n : ℤ) = A013617 n

end A013617

/-! ## A013617.P11991788345622553850

`A013612(n)*A059268(n)`
-/

namespace A013617.P11991788345622553850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 n * A059268 n

end

end A013617.P11991788345622553850

namespace A013617

/-- `A013612(n)*A059268(n)` -/
def P11991788345622553850.Spec : Prop :=
  ∀ n, P11991788345622553850.a n = A013617 n

end A013617

/-! ## A013617.P13913896197660521629

`lcm(A013609(n), A013612(n))`
-/

namespace A013617.P13913896197660521629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013609 n) (A013612 n)

end

end A013617.P13913896197660521629

namespace A013617

/-- `lcm(A013609(n), A013612(n))` -/
def P13913896197660521629.Spec : Prop :=
  ∀ n, (P13913896197660521629.a n : ℤ) = A013617 n

end A013617

/-! ## A013617.P9066571055645517890

`A007318(n)*A011557(A002262(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A013617

/-- `A007318(n)*A011557(A002262(n))` -/
def P9066571055645517890.Spec : Prop :=
  ∀ n, P9066571055645517890.a n = A013617 n

theorem P9066571055645517890.correct : P9066571055645517890.Spec := by
  intro n
  simp only [A013617]

end A013617

/-! ## A013617.P16277356195785220234

`A038243(A061579(n))*A059268(n)`
-/

namespace A013617.P16277356195785220234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 (A061579 n).toNat * A059268 n

end

end A013617.P16277356195785220234

namespace A013617

/-- `A038243(A061579(n))*A059268(n)` -/
def P16277356195785220234.Spec : Prop :=
  ∀ n, P16277356195785220234.a n = A013617 n

end A013617

/-! ## A013617.P16419901516675419051

`ceil(A134059(n)/3)*A011557(A002262(n))`
-/

namespace A013617.P16419901516675419051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134059 n : ℚ) / 3⌉ * A011557 (A002262 n).toNat

end

end A013617.P16419901516675419051

namespace A013617

/-- `ceil(A134059(n)/3)*A011557(A002262(n))` -/
def P16419901516675419051.Spec : Prop :=
  ∀ n, P16419901516675419051.a n = A013617 n

end A013617

/-! ## A013617.P2529683598945925660

`ceil(A135087(n)/4)*A011557(A002262(n))`
-/

namespace A013617.P2529683598945925660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135087 n : ℚ) / 4⌉ * A011557 (A002262 n).toNat

end

end A013617.P2529683598945925660

namespace A013617

/-- `ceil(A135087(n)/4)*A011557(A002262(n))` -/
def P2529683598945925660.Spec : Prop :=
  ∀ n, P2529683598945925660.a n = A013617 n

end A013617

/-! ## A013617.P7678129740936678538

`ceil(A135089(n)/5)*A011557(A002262(n))`
-/

namespace A013617.P7678129740936678538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135089 n : ℚ) / 5⌉ * A011557 (A002262 n).toNat

end

end A013617.P7678129740936678538

namespace A013617

/-- `ceil(A135089(n)/5)*A011557(A002262(n))` -/
def P7678129740936678538.Spec : Prop :=
  ∀ n, P7678129740936678538.a n = A013617 n

end A013617

/-! ## A013617.P16606034441810344148

`A134059(A028310(n))/3*A011557(A002262(n))`
-/

namespace A013617.P16606034441810344148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134059 (A028310 n).toNat : ℚ) / 3 * (A011557 (A002262 n).toNat : ℚ)

end

end A013617.P16606034441810344148

namespace A013617

/-- `A134059(A028310(n))/3*A011557(A002262(n))` -/
def P16606034441810344148.Spec : Prop :=
  ∀ n, P16606034441810344148.a n = (A013617 n : ℚ)

end A013617

/-! ## A013617.P4369764393211619242

`A038303(∑[char[∑[n]]]²-(n+1))`
-/

namespace A013617.P4369764393211619242
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038303 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A013617.P4369764393211619242

namespace A013617

/-- `A038303(∑[char[∑[n]]]²-(n+1))` -/
def P4369764393211619242.Spec : Prop :=
  ∀ n, P4369764393211619242.a n = A013617 n

end A013617

/-! ## A013617.P13280686760750141373

`A038216(n)/A130321(n)`
-/

namespace A013617.P13280686760750141373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038216 n : ℚ) / (A130321 n : ℚ)

end

end A013617.P13280686760750141373

namespace A013617

/-- `A038216(n)/A130321(n)` -/
def P13280686760750141373.Spec : Prop :=
  ∀ n, P13280686760750141373.a n = (A013617 n : ℚ)

end A013617

/-! ## A013617.P5413656237292807741

`A038228(n)/A140303(n)`
-/

namespace A013617.P5413656237292807741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038228 n : ℚ) / (A140303 n : ℚ)

end

end A013617.P5413656237292807741

namespace A013617

/-- `A038228(n)/A140303(n)` -/
def P5413656237292807741.Spec : Prop :=
  ∀ n, P5413656237292807741.a n = (A013617 n : ℚ)

end A013617

/-! ## A013617.P18237020253535040758

`gcd(A038216(n), A038228(n))`
-/

namespace A013617.P18237020253535040758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038216 n) (A038228 n)

end

end A013617.P18237020253535040758

namespace A013617

/-- `gcd(A038216(n), A038228(n))` -/
def P18237020253535040758.Spec : Prop :=
  ∀ n, (P18237020253535040758.a n : ℤ) = A013617 n

end A013617

/-! ## A013617.P1373495683349548693

`A038240(n)/A262616(n)`
-/

namespace A013617.P1373495683349548693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038240 n : ℚ) / (A262616 n : ℚ)

end

end A013617.P1373495683349548693

namespace A013617

/-- `A038240(n)/A262616(n)` -/
def P1373495683349548693.Spec : Prop :=
  ∀ n, P1373495683349548693.a n = (A013617 n : ℚ)

end A013617

/-! ## A013617.P1815193319407115164

`A038240(n)/A130321(n)²`
-/

namespace A013617.P1815193319407115164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038240 n : ℚ) / (A130321 n ^ 2 : ℚ)

end

end A013617.P1815193319407115164

namespace A013617

/-- `A038240(n)/A130321(n)²` -/
def P1815193319407115164.Spec : Prop :=
  ∀ n, P1815193319407115164.a n = (A013617 n : ℚ)

end A013617

/-! ## A013617.P11772261862230199380

`A038216(n)/A038240(n)*A038216(n)`
-/

namespace A013617.P11772261862230199380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038216 n : ℚ) / (A038240 n : ℚ) * (A038216 n : ℚ)

end

end A013617.P11772261862230199380

namespace A013617

/-- `A038216(n)/A038240(n)*A038216(n)` -/
def P11772261862230199380.Spec : Prop :=
  ∀ n, P11772261862230199380.a n = (A013617 n : ℚ)

end A013617

/-! ## A013617.P15387185202493148522

`gcd(A038240(n), A038252(n))`
-/

namespace A013617.P15387185202493148522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038240 n) (A038252 n)

end

end A013617.P15387185202493148522

namespace A013617

/-- `gcd(A038240(n), A038252(n))` -/
def P15387185202493148522.Spec : Prop :=
  ∀ n, (P15387185202493148522.a n : ℤ) = A013617 n

end A013617

/-! ## A013617.P5680458269165375099

`gcd(A038264(n), A038276(n))`
-/

namespace A013617.P5680458269165375099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038264 n) (A038276 n)

end

end A013617.P5680458269165375099

namespace A013617

/-- `gcd(A038264(n), A038276(n))` -/
def P5680458269165375099.Spec : Prop :=
  ∀ n, (P5680458269165375099.a n : ℤ) = A013617 n

end A013617

/-! ## A013617.P14629220561087217919

`A038288(n)/(A130321(n)²*A130321(n))`
-/

namespace A013617.P14629220561087217919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038288 n : ℚ) / (A130321 n ^ 2 * A130321 n : ℚ)

end

end A013617.P14629220561087217919

namespace A013617

/-- `A038288(n)/(A130321(n)²*A130321(n))` -/
def P14629220561087217919.Spec : Prop :=
  ∀ n, P14629220561087217919.a n = (A013617 n : ℚ)

end A013617

/-! ## A013617.P1751357242615308610

`gcd(A038288(n), A038300(n))`
-/

namespace A013617.P1751357242615308610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038288 n) (A038300 n)

end

end A013617.P1751357242615308610

namespace A013617

/-- `gcd(A038288(n), A038300(n))` -/
def P1751357242615308610.Spec : Prop :=
  ∀ n, (P1751357242615308610.a n : ℤ) = A013617 n

end A013617

/-!
# A013618: Triangle of coefficients in expansion of (1+11x)^n.

The programs for A013618, the canonical program `A013618.P387738794400138058` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013618 has offset 0).

The definition of A013618 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4547 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013618.P16913022543494122237

`T(n-1,k)+11*T(n-1,k-1)` with `a(0)=1`
-/

namespace A013618.P16913022543494122237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + 11 * SequenceMachineLib.triUpLeft a n

end

end A013618.P16913022543494122237

namespace A013618

/-- `T(n-1,k)+11*T(n-1,k-1)` -/
def P16913022543494122237.Spec : Prop :=
  ∀ n, (P16913022543494122237.a n : ℤ) = A013618 n

end A013618

/-! ## A013618.P387738794400138058

`A001020(A002262(n))*A007318(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A013618

/-- `A001020(A002262(n))*A007318(n)` -/
def P387738794400138058.Spec : Prop :=
  ∀ n, P387738794400138058.a n = A013618 n

theorem P387738794400138058.correct : P387738794400138058.Spec := by
  intro n
  simp only [A013618]

end A013618

/-! ## A013618.P5710149860159353905

`A038315(A061579(n))`
-/

namespace A013618.P5710149860159353905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038315 (A061579 n).toNat

end

end A013618.P5710149860159353905

namespace A013618

/-- `A038315(A061579(n))` -/
def P5710149860159353905.Spec : Prop :=
  ∀ n, P5710149860159353905.a n = A013618 n

end A013618

/-! ## A013618.P6162490701988559661

`A038217(n)/A130321(n)`
-/

namespace A013618.P6162490701988559661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038217 n : ℚ) / (A130321 n : ℚ)

end

end A013618.P6162490701988559661

namespace A013618

/-- `A038217(n)/A130321(n)` -/
def P6162490701988559661.Spec : Prop :=
  ∀ n, P6162490701988559661.a n = (A013618 n : ℚ)

end A013618

/-! ## A013618.P151786463035043144

`A038229(n)/A140303(n)`
-/

namespace A013618.P151786463035043144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038229 n : ℚ) / (A140303 n : ℚ)

end

end A013618.P151786463035043144

namespace A013618

/-- `A038229(n)/A140303(n)` -/
def P151786463035043144.Spec : Prop :=
  ∀ n, P151786463035043144.a n = (A013618 n : ℚ)

end A013618

/-! ## A013618.P8884393312484844707

`gcd(A038217(n), A038229(n))`
-/

namespace A013618.P8884393312484844707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038217 n) (A038229 n)

end

end A013618.P8884393312484844707

namespace A013618

/-- `gcd(A038217(n), A038229(n))` -/
def P8884393312484844707.Spec : Prop :=
  ∀ n, (P8884393312484844707.a n : ℤ) = A013618 n

end A013618

/-! ## A013618.P15322250921065371017

`A038241(n)/A262616(n)`
-/

namespace A013618.P15322250921065371017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038241 n : ℚ) / (A262616 n : ℚ)

end

end A013618.P15322250921065371017

namespace A013618

/-- `A038241(n)/A262616(n)` -/
def P15322250921065371017.Spec : Prop :=
  ∀ n, P15322250921065371017.a n = (A013618 n : ℚ)

end A013618

/-! ## A013618.P5531490991397641099

`A038241(n)/A130321(n)²`
-/

namespace A013618.P5531490991397641099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038241 n : ℚ) / (A130321 n ^ 2 : ℚ)

end

end A013618.P5531490991397641099

namespace A013618

/-- `A038241(n)/A130321(n)²` -/
def P5531490991397641099.Spec : Prop :=
  ∀ n, P5531490991397641099.a n = (A013618 n : ℚ)

end A013618

/-! ## A013618.P12975341436037607228

`A038217(n)/A038241(n)*A038217(n)`
-/

namespace A013618.P12975341436037607228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038217 n : ℚ) / (A038241 n : ℚ) * (A038217 n : ℚ)

end

end A013618.P12975341436037607228

namespace A013618

/-- `A038217(n)/A038241(n)*A038217(n)` -/
def P12975341436037607228.Spec : Prop :=
  ∀ n, P12975341436037607228.a n = (A013618 n : ℚ)

end A013618

/-! ## A013618.P14150649022041987513

`gcd(A038241(n), A038253(n))`
-/

namespace A013618.P14150649022041987513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038241 n) (A038253 n)

end

end A013618.P14150649022041987513

namespace A013618

/-- `gcd(A038241(n), A038253(n))` -/
def P14150649022041987513.Spec : Prop :=
  ∀ n, (P14150649022041987513.a n : ℤ) = A013618 n

end A013618

/-! ## A013618.P17644587078759317153

`gcd(A038265(n), A038277(n))`
-/

namespace A013618.P17644587078759317153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038265 n) (A038277 n)

end

end A013618.P17644587078759317153

namespace A013618

/-- `gcd(A038265(n), A038277(n))` -/
def P17644587078759317153.Spec : Prop :=
  ∀ n, (P17644587078759317153.a n : ℤ) = A013618 n

end A013618

/-! ## A013618.P5899318128202393271

`A038289(n)/(A130321(n)²*A130321(n))`
-/

namespace A013618.P5899318128202393271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038289 n : ℚ) / (A130321 n ^ 2 * A130321 n : ℚ)

end

end A013618.P5899318128202393271

namespace A013618

/-- `A038289(n)/(A130321(n)²*A130321(n))` -/
def P5899318128202393271.Spec : Prop :=
  ∀ n, P5899318128202393271.a n = (A013618 n : ℚ)

end A013618

/-! ## A013618.P15290179672791309049

`gcd(A038289(n), A038301(n))`
-/

namespace A013618.P15290179672791309049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038289 n) (A038301 n)

end

end A013618.P15290179672791309049

namespace A013618

/-- `gcd(A038289(n), A038301(n))` -/
def P15290179672791309049.Spec : Prop :=
  ∀ n, (P15290179672791309049.a n : ℤ) = A013618 n

end A013618

/-! ## A013618.P17985428009904766329

`A038301(n)/A140303(n)²`
-/

namespace A013618.P17985428009904766329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038301 n : ℚ) / (A140303 n ^ 2 : ℚ)

end

end A013618.P17985428009904766329

namespace A013618

/-- `A038301(n)/A140303(n)²` -/
def P17985428009904766329.Spec : Prop :=
  ∀ n, P17985428009904766329.a n = (A013618 n : ℚ)

end A013618

/-! ## A013618.P9551676369565319576

`gcd(A038313(n), A038325(n))`
-/

namespace A013618.P9551676369565319576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038313 n) (A038325 n)

end

end A013618.P9551676369565319576

namespace A013618

/-- `gcd(A038313(n), A038325(n))` -/
def P9551676369565319576.Spec : Prop :=
  ∀ n, (P9551676369565319576.a n : ℤ) = A013618 n

end A013618

/-! ## A013618.P9686769648285081832

`A038217(n)²/A038241(n)`
-/

namespace A013618.P9686769648285081832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038217 n ^ 2 : ℚ) / (A038241 n : ℚ)

end

end A013618.P9686769648285081832

namespace A013618

/-- `A038217(n)²/A038241(n)` -/
def P9686769648285081832.Spec : Prop :=
  ∀ n, P9686769648285081832.a n = (A013618 n : ℚ)

end A013618

/-! ## A013618.P17949512256023655387

`A007318(n)*A033047(A059268(n))`
-/

namespace A013618.P17949512256023655387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A033047 (A059268 n).toNat

end

end A013618.P17949512256023655387

namespace A013618

/-- `A007318(n)*A033047(A059268(n))` -/
def P17949512256023655387.Spec : Prop :=
  ∀ n, P17949512256023655387.a n = A013618 n

end A013618

/-!
# A013619: Triangle of coefficients in expansion of (1+12x)^n.

The programs for A013619, the canonical program `A013619.P11563524332984274693` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013619 has offset 0).

The definition of A013619 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4266 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013619.P11563524332984274693

`A013613(n)*A059268(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A013619

/-- `A013613(n)*A059268(n)` -/
def P11563524332984274693.Spec : Prop :=
  ∀ n, P11563524332984274693.a n = A013619 n

theorem P11563524332984274693.correct : P11563524332984274693.Spec := by
  intro n
  simp only [A013619]

end A013619

/-! ## A013619.P15072387501342077012

`lcm(A013610(n), A013611(n))`
-/

namespace A013619.P15072387501342077012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013610 n) (A013611 n)

end

end A013619.P15072387501342077012

namespace A013619

/-- `lcm(A013610(n), A013611(n))` -/
def P15072387501342077012.Spec : Prop :=
  ∀ n, (P15072387501342077012.a n : ℤ) = A013619 n

end A013619

/-! ## A013619.P6480976281263153842

`A059268(n)²*A013610(n)`
-/

namespace A013619.P6480976281263153842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A013610 n

end

end A013619.P6480976281263153842

namespace A013619

/-- `A059268(n)²*A013610(n)` -/
def P6480976281263153842.Spec : Prop :=
  ∀ n, P6480976281263153842.a n = A013619 n

theorem P6480976281263153842.correct : P6480976281263153842.Spec := by
  intro n
  simp only [A013619, Nat.add_sub_cancel, A013619.P6480976281263153842.a, A013619.P11563524332984274693.a, A013610, A013610.P10799143111782411430.a, A013613, A013613.P7409468563020744688.a, A059268, A059268.P15217573790077737885.a, A018900, A018900.P2868698677378612256.a, A140513, A140513.P13579608035938851890.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, A137688, A137688.P9746695207037186753.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A013619

/-! ## A013619.P16782433525810136616

`A001021(A002262(n))*A007318(n)`
-/

namespace A013619.P16782433525810136616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001021 (A002262 n).toNat * A007318 n

end

end A013619.P16782433525810136616

namespace A013619

/-- `A001021(A002262(n))*A007318(n)` -/
def P16782433525810136616.Spec : Prop :=
  ∀ n, P16782433525810136616.a n = A013619 n

end A013619

/-! ## A013619.P8775588858012032051

`A000079(A002262(n))*A013613(n)`
-/

namespace A013619.P8775588858012032051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A013613 n

end

end A013619.P8775588858012032051

namespace A013619

/-- `A000079(A002262(n))*A013613(n)` -/
def P8775588858012032051.Spec : Prop :=
  ∀ n, P8775588858012032051.a n = A013619 n

end A013619

/-! ## A013619.P13484927680738655354

`(A013609(n)/A007318(n))²*A013610(n)`
-/

namespace A013619.P13484927680738655354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A013609 n : ℚ) / (A007318 n : ℚ)) ^ 2 * (A013610 n : ℚ)

end

end A013619.P13484927680738655354

namespace A013619

/-- `(A013609(n)/A007318(n))²*A013610(n)` -/
def P13484927680738655354.Spec : Prop :=
  ∀ n, P13484927680738655354.a n = (A013619 n : ℚ)

end A013619

/-! ## A013619.P413006064844402794

`(A013611(n)/A013609(n))²*A013610(n)`
-/

namespace A013619.P413006064844402794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A013611 n : ℚ) / (A013609 n : ℚ)) ^ 2 * (A013610 n : ℚ)

end

end A013619.P413006064844402794

namespace A013619

/-- `(A013611(n)/A013609(n))²*A013610(n)` -/
def P413006064844402794.Spec : Prop :=
  ∀ n, P413006064844402794.a n = (A013619 n : ℚ)

end A013619

/-! ## A013619.P17951679793916056200

`(A038222(n)/A038220(n))²*A013610(n)`
-/

namespace A013619.P17951679793916056200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038222 n : ℚ) / (A038220 n : ℚ)) ^ 2 * (A013610 n : ℚ)

end

end A013619.P17951679793916056200

namespace A013619

/-- `(A038222(n)/A038220(n))²*A013610(n)` -/
def P17951679793916056200.Spec : Prop :=
  ∀ n, P17951679793916056200.a n = (A013619 n : ℚ)

end A013619

/-! ## A013619.P8186004365474383074

`A038327(A061579(n))`
-/

namespace A013619.P8186004365474383074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038327 (A061579 n).toNat

end

end A013619.P8186004365474383074

namespace A013619

/-- `A038327(A061579(n))` -/
def P8186004365474383074.Spec : Prop :=
  ∀ n, P8186004365474383074.a n = A013619 n

end A013619

/-! ## A013619.P11748789712511529485

`A038218(n)/A130321(n)`
-/

namespace A013619.P11748789712511529485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038218 n : ℚ) / (A130321 n : ℚ)

end

end A013619.P11748789712511529485

namespace A013619

/-- `A038218(n)/A130321(n)` -/
def P11748789712511529485.Spec : Prop :=
  ∀ n, P11748789712511529485.a n = (A013619 n : ℚ)

end A013619

/-! ## A013619.P9922664712540452917

`A038230(n)/A140303(n)`
-/

namespace A013619.P9922664712540452917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038230 n : ℚ) / (A140303 n : ℚ)

end

end A013619.P9922664712540452917

namespace A013619

/-- `A038230(n)/A140303(n)` -/
def P9922664712540452917.Spec : Prop :=
  ∀ n, P9922664712540452917.a n = (A013619 n : ℚ)

end A013619

/-! ## A013619.P15605217378548578742

`gcd(A038218(n), A038230(n))`
-/

namespace A013619.P15605217378548578742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038218 n) (A038230 n)

end

end A013619.P15605217378548578742

namespace A013619

/-- `gcd(A038218(n), A038230(n))` -/
def P15605217378548578742.Spec : Prop :=
  ∀ n, (P15605217378548578742.a n : ℤ) = A013619 n

end A013619

/-! ## A013619.P6662245466107430267

`A038242(n)/A262616(n)`
-/

namespace A013619.P6662245466107430267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038242 n : ℚ) / (A262616 n : ℚ)

end

end A013619.P6662245466107430267

namespace A013619

/-- `A038242(n)/A262616(n)` -/
def P6662245466107430267.Spec : Prop :=
  ∀ n, P6662245466107430267.a n = (A013619 n : ℚ)

end A013619

/-! ## A013619.P16319450694410042505

`A038242(n)/A130321(n)²`
-/

namespace A013619.P16319450694410042505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038242 n : ℚ) / (A130321 n ^ 2 : ℚ)

end

end A013619.P16319450694410042505

namespace A013619

/-- `A038242(n)/A130321(n)²` -/
def P16319450694410042505.Spec : Prop :=
  ∀ n, P16319450694410042505.a n = (A013619 n : ℚ)

end A013619

/-! ## A013619.P17129645287948241780

`A038218(n)/A038242(n)*A038218(n)`
-/

namespace A013619.P17129645287948241780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038218 n : ℚ) / (A038242 n : ℚ) * (A038218 n : ℚ)

end

end A013619.P17129645287948241780

namespace A013619

/-- `A038218(n)/A038242(n)*A038218(n)` -/
def P17129645287948241780.Spec : Prop :=
  ∀ n, P17129645287948241780.a n = (A013619 n : ℚ)

end A013619

/-! ## A013619.P11106842272212742

`gcd(A038242(n), A038254(n))`
-/

namespace A013619.P11106842272212742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038242 n) (A038254 n)

end

end A013619.P11106842272212742

namespace A013619

/-- `gcd(A038242(n), A038254(n))` -/
def P11106842272212742.Spec : Prop :=
  ∀ n, (P11106842272212742.a n : ℤ) = A013619 n

end A013619

/-! ## A013619.P8281884387063816078

`gcd(A038266(n), A038278(n))`
-/

namespace A013619.P8281884387063816078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038266 n) (A038278 n)

end

end A013619.P8281884387063816078

namespace A013619

/-- `gcd(A038266(n), A038278(n))` -/
def P8281884387063816078.Spec : Prop :=
  ∀ n, (P8281884387063816078.a n : ℤ) = A013619 n

end A013619

/-! ## A013619.P15062912977745409928

`A038290(n)/(A130321(n)²*A130321(n))`
-/

namespace A013619.P15062912977745409928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038290 n : ℚ) / (A130321 n ^ 2 * A130321 n : ℚ)

end

end A013619.P15062912977745409928

namespace A013619

/-- `A038290(n)/(A130321(n)²*A130321(n))` -/
def P15062912977745409928.Spec : Prop :=
  ∀ n, P15062912977745409928.a n = (A013619 n : ℚ)

end A013619

/-! ## A013619.P17138934348031886166

`gcd(A038290(n), A038302(n))`
-/

namespace A013619.P17138934348031886166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038290 n) (A038302 n)

end

end A013619.P17138934348031886166

namespace A013619

/-- `gcd(A038290(n), A038302(n))` -/
def P17138934348031886166.Spec : Prop :=
  ∀ n, (P17138934348031886166.a n : ℤ) = A013619 n

end A013619

/-! ## A013619.P9437562889355647755

`A038302(n)/A140303(n)²`
-/

namespace A013619.P9437562889355647755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038302 n : ℚ) / (A140303 n ^ 2 : ℚ)

end

end A013619.P9437562889355647755

namespace A013619

/-- `A038302(n)/A140303(n)²` -/
def P9437562889355647755.Spec : Prop :=
  ∀ n, P9437562889355647755.a n = (A013619 n : ℚ)

end A013619

/-!
# A013620: Triangle of coefficients in expansion of (2+3x)^n.

The programs for A013620, the canonical program `A013620.P18211303655879049424` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013620 has offset 0).

The definition of A013620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013620.P3921431980618146620

`2*T(n-1,k)+3*T(n-1,k-1)` with `a(0)=1`
-/

namespace A013620.P3921431980618146620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * SequenceMachineLib.triUp a n + 3 * SequenceMachineLib.triUpLeft a n

end

end A013620.P3921431980618146620

namespace A013620

/-- `2*T(n-1,k)+3*T(n-1,k-1)` -/
def P3921431980618146620.Spec : Prop :=
  ∀ n, (P3921431980618146620.a n : ℤ) = A013620 n

end A013620

/-! ## A013620.P324281499391367624

`abs(A317498(n))`
-/

namespace A013620.P324281499391367624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A317498 n|

end

end A013620.P324281499391367624

namespace A013620

/-- `abs(A317498(n))` -/
def P324281499391367624.Spec : Prop :=
  ∀ n, P324281499391367624.a n = A013620 n

end A013620

/-! ## A013620.P7390520878356111101

`A154692(n)-A038220(n)`
-/

namespace A013620.P7390520878356111101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154692 n - A038220 n

end

end A013620.P7390520878356111101

namespace A013620

/-- `A154692(n)-A038220(n)` -/
def P7390520878356111101.Spec : Prop :=
  ∀ n, P7390520878356111101.a n = A013620 n

end A013620

/-! ## A013620.P18211303655879049424

`A007318(n)*A036561(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A013620

/-- `A007318(n)*A036561(n)` -/
def P18211303655879049424.Spec : Prop :=
  ∀ n, P18211303655879049424.a n = A013620 n

theorem P18211303655879049424.correct : P18211303655879049424.Spec := by
  intro n
  simp only [A013620]

end A013620

/-! ## A013620.P16398760628934064698

`A013610(n)*A130321(n)`
-/

namespace A013620.P16398760628934064698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 n * A130321 n

end

end A013620.P16398760628934064698

namespace A013620

/-- `A013610(n)*A130321(n)` -/
def P16398760628934064698.Spec : Prop :=
  ∀ n, P16398760628934064698.a n = A013620 n

end A013620

/-! ## A013620.P10934553358227665254

`A124928(n)*A153279(n)`
-/

namespace A013620.P10934553358227665254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124928 n * A153279 n

end

end A013620.P10934553358227665254

namespace A013620

/-- `A124928(n)*A153279(n)` -/
def P10934553358227665254.Spec : Prop :=
  ∀ n, P10934553358227665254.a n = A013620 n

end A013620

/-! ## A013620.P17664811004346541132

`A097807(n)*A317498(n)`
-/

namespace A013620.P17664811004346541132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A317498 n

end

end A013620.P17664811004346541132

namespace A013620

/-- `A097807(n)*A317498(n)` -/
def P17664811004346541132.Spec : Prop :=
  ∀ n, P17664811004346541132.a n = A013620 n

end A013620

/-! ## A013620.P15211041237150852761

`gcd(A000038(n), A317498(n))`
-/

namespace A013620.P15211041237150852761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A317498 n)

end

end A013620.P15211041237150852761

namespace A013620

/-- `gcd(A000038(n), A317498(n))` -/
def P15211041237150852761.Spec : Prop :=
  ∀ n, (P15211041237150852761.a n : ℤ) = A013620 n

end A013620

/-! ## A013620.P10181792331554383061

`lcm(A013610(n), A038207(n))`
-/

namespace A013620.P10181792331554383061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013610 n) (A038207 n)

end

end A013620.P10181792331554383061

namespace A013620

/-- `lcm(A013610(n), A038207(n))` -/
def P10181792331554383061.Spec : Prop :=
  ∀ n, (P10181792331554383061.a n : ℤ) = A013620 n

end A013620

/-! ## A013620.P3097510176899401265

`lcm(A007318(n), A317498(n))`
-/

namespace A013620.P3097510176899401265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A317498 n)

end

end A013620.P3097510176899401265

namespace A013620

/-- `lcm(A007318(n), A317498(n))` -/
def P3097510176899401265.Spec : Prop :=
  ∀ n, (P3097510176899401265.a n : ℤ) = A013620 n

end A013620

/-! ## A013620.P11648619693282491139

`(A230445(n)+1)*A007318(n)`
-/

namespace A013620.P11648619693282491139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A230445 n + 1) * A007318 n

end

end A013620.P11648619693282491139

namespace A013620

/-- `(A230445(n)+1)*A007318(n)` -/
def P11648619693282491139.Spec : Prop :=
  ∀ n, P11648619693282491139.a n = A013620 n

end A013620

/-! ## A013620.P2170401128551657216

`A028326(n)/2*A036561(n)`
-/

namespace A013620.P2170401128551657216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A036561 n : ℚ)

end

end A013620.P2170401128551657216

namespace A013620

/-- `A028326(n)/2*A036561(n)` -/
def P2170401128551657216.Spec : Prop :=
  ∀ n, P2170401128551657216.a n = (A013620 n : ℚ)

theorem P2170401128551657216.correct : P2170401128551657216.Spec := by
  intro n
  simp only [A013620, Nat.add_sub_cancel, A013620.P2170401128551657216.a, A013620.P18211303655879049424.a, A007318, A007318.P11755526479805562006.a, A028326, A028326.P7676793339942299677.a, A036561, A036561.P7490084913005378529.a, A002260, A002260.P9170571874073898642.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A013620

/-! ## A013620.P8167964115396046044

`A013610(n)*A059268(A061579(n))`
-/

namespace A013620.P8167964115396046044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 n * A059268 (A061579 n).toNat

end

end A013620.P8167964115396046044

namespace A013620

/-- `A013610(n)*A059268(A061579(n))` -/
def P8167964115396046044.Spec : Prop :=
  ∀ n, P8167964115396046044.a n = A013620 n

end A013620

/-! ## A013620.P4976520953043501157

`A013610(n)/A007318(n)*A038207(n)`
-/

namespace A013620.P4976520953043501157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013610 n : ℚ) / (A007318 n : ℚ) * (A038207 n : ℚ)

end

end A013620.P4976520953043501157

namespace A013620

/-- `A013610(n)/A007318(n)*A038207(n)` -/
def P4976520953043501157.Spec : Prop :=
  ∀ n, P4976520953043501157.a n = (A013620 n : ℚ)

end A013620

/-! ## A013620.P10211511665546643312

`A038220(A061579(n))`
-/

namespace A013620.P10211511665546643312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038220 (A061579 n).toNat

end

end A013620.P10211511665546643312

namespace A013620

/-- `A038220(A061579(n))` -/
def P10211511665546643312.Spec : Prop :=
  ∀ n, P10211511665546643312.a n = A013620 n

end A013620

/-! ## A013620.P12847183006358441693

`A038220(A038722(n+1)-1)`
-/

namespace A013620.P12847183006358441693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038220 (A038722 (n + 1) - 1).toNat

end

end A013620.P12847183006358441693

namespace A013620

/-- `A038220(A038722(n+1)-1)` -/
def P12847183006358441693.Spec : Prop :=
  ∀ n, P12847183006358441693.a n = A013620 n

end A013620

/-! ## A013620.P7072644015570253831

`A038233(n)/A130321(n)`
-/

namespace A013620.P7072644015570253831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038233 n : ℚ) / (A130321 n : ℚ)

end

end A013620.P7072644015570253831

namespace A013620

/-- `A038233(n)/A130321(n)` -/
def P7072644015570253831.Spec : Prop :=
  ∀ n, P7072644015570253831.a n = (A013620 n : ℚ)

end A013620

/-! ## A013620.P2128418023906847826

`A013613(n)/A038220(n)*A038255(n)`
-/

namespace A013620.P2128418023906847826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013613 n : ℚ) / (A038220 n : ℚ) * (A038255 n : ℚ)

end

end A013620.P2128418023906847826

namespace A013620

/-- `A013613(n)/A038220(n)*A038255(n)` -/
def P2128418023906847826.Spec : Prop :=
  ∀ n, P2128418023906847826.a n = (A013620 n : ℚ)

end A013620

/-! ## A013620.P17477303900695781907

`A007318(n)*A003586(A247714(n))`
-/

namespace A013620.P17477303900695781907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A003586 (A247714 n).toNat

end

end A013620.P17477303900695781907

namespace A013620

/-- `A007318(n)*A003586(A247714(n))` -/
def P17477303900695781907.Spec : Prop :=
  ∀ n, P17477303900695781907.a n = A013620 n

end A013620

/-! ## A013620.P16234988799547553389

`A038212(n)/A059268(n)`
-/

namespace A013620.P16234988799547553389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038212 n : ℚ) / (A059268 n : ℚ)

end

end A013620.P16234988799547553389

namespace A013620

/-- `A038212(n)/A059268(n)` -/
def P16234988799547553389.Spec : Prop :=
  ∀ n, P16234988799547553389.a n = (A013620 n : ℚ)

end A013620

/-!
# A013621: Triangle of coefficients in expansion of (2+5x)^n.

The programs for A013621, the canonical program `A013621.P15224404741451774442` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013621 has offset 0).

The definition of A013621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7340 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013621.P3814101765363004893

`5*T(n-1,k-1)+2*T(n-1,k)` with `a(0)=1`
-/

namespace A013621.P3814101765363004893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 * SequenceMachineLib.triUpLeft a n + 2 * SequenceMachineLib.triUp a n

end

end A013621.P3814101765363004893

namespace A013621

/-- `5*T(n-1,k-1)+2*T(n-1,k)` -/
def P3814101765363004893.Spec : Prop :=
  ∀ n, (P3814101765363004893.a n : ℤ) = A013621 n

end A013621

/-! ## A013621.P15224404741451774442

`A013612(n)*A130321(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A013621

/-- `A013612(n)*A130321(n)` -/
def P15224404741451774442.Spec : Prop :=
  ∀ n, P15224404741451774442.a n = A013621 n

theorem P15224404741451774442.correct : P15224404741451774442.Spec := by
  intro n
  simp only [A013621]

end A013621

/-! ## A013621.P164502548392790373

`lcm(A013612(n), A038207(n))`
-/

namespace A013621.P164502548392790373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013612 n) (A038207 n)

end

end A013621.P164502548392790373

namespace A013621

/-- `lcm(A013612(n), A038207(n))` -/
def P164502548392790373.Spec : Prop :=
  ∀ n, (P164502548392790373.a n : ℤ) = A013621 n

end A013621

/-! ## A013621.P12755693994043699721

`5^A002262(n)*A038207(n)`
-/

namespace A013621.P12755693994043699721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A002262 n : ℤ) * (A038207 n : ℚ)

end

end A013621.P12755693994043699721

namespace A013621

/-- `5^A002262(n)*A038207(n)` -/
def P12755693994043699721.Spec : Prop :=
  ∀ n, P12755693994043699721.a n = (A013621 n : ℚ)

end A013621

/-! ## A013621.P1974109532601599299

`A013612(n)/A007318(n)*A038207(n)`
-/

namespace A013621.P1974109532601599299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013612 n : ℚ) / (A007318 n : ℚ) * (A038207 n : ℚ)

end

end A013621.P1974109532601599299

namespace A013621

/-- `A013612(n)/A007318(n)*A038207(n)` -/
def P1974109532601599299.Spec : Prop :=
  ∀ n, P1974109532601599299.a n = (A013621 n : ℚ)

end A013621

/-! ## A013621.P2777735478756595684

`A038243(A061579(n))*A059268(A061579(n))`
-/

namespace A013621.P2777735478756595684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 (A061579 n).toNat * A059268 (A061579 n).toNat

end

end A013621.P2777735478756595684

namespace A013621

/-- `A038243(A061579(n))*A059268(A061579(n))` -/
def P2777735478756595684.Spec : Prop :=
  ∀ n, P2777735478756595684.a n = A013621 n

end A013621

/-! ## A013621.P3298154601730188980

`A038244(A061579(n))`
-/

namespace A013621.P3298154601730188980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038244 (A061579 n).toNat

end

end A013621.P3298154601730188980

namespace A013621

/-- `A038244(A061579(n))` -/
def P3298154601730188980.Spec : Prop :=
  ∀ n, P3298154601730188980.a n = A013621 n

end A013621

/-! ## A013621.P7869631404889342324

`A013628(n)/A130321(n)`
-/

namespace A013621.P7869631404889342324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013628 n : ℚ) / (A130321 n : ℚ)

end

end A013621.P7869631404889342324

namespace A013621

/-- `A013628(n)/A130321(n)` -/
def P7869631404889342324.Spec : Prop :=
  ∀ n, P7869631404889342324.a n = (A013621 n : ℚ)

end A013621

/-! ## A013621.P10045262709144272755

`A007318(n)*A232646(n+1)`
-/

namespace A013621.P10045262709144272755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A232646 (n + 1)

end

end A013621.P10045262709144272755

namespace A013621

/-- `A007318(n)*A232646(n+1)` -/
def P10045262709144272755.Spec : Prop :=
  ∀ n, P10045262709144272755.a n = A013621 n

end A013621

/-! ## A013621.P2803498091151686715

`A038259(n)/A140303(n)`
-/

namespace A013621.P2803498091151686715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038259 n : ℚ) / (A140303 n : ℚ)

end

end A013621.P2803498091151686715

namespace A013621

/-- `A038259(n)/A140303(n)` -/
def P2803498091151686715.Spec : Prop :=
  ∀ n, P2803498091151686715.a n = (A013621 n : ℚ)

end A013621

/-! ## A013621.P6167943579958703317

`gcd(A013628(n), A038259(n))`
-/

namespace A013621.P6167943579958703317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013628 n) (A038259 n)

end

end A013621.P6167943579958703317

namespace A013621

/-- `gcd(A013628(n), A038259(n))` -/
def P6167943579958703317.Spec : Prop :=
  ∀ n, (P6167943579958703317.a n : ℤ) = A013621 n

end A013621

/-! ## A013621.P18185385886671657505

`A007318(n)/A027465(n)*A038259(n)`
-/

namespace A013621.P18185385886671657505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A027465 n : ℚ) * (A038259 n : ℚ)

end

end A013621.P18185385886671657505

namespace A013621

/-- `A007318(n)/A027465(n)*A038259(n)` -/
def P18185385886671657505.Spec : Prop :=
  ∀ n, P18185385886671657505.a n = (A013621 n : ℚ)

end A013621

/-! ## A013621.P7609573708200929021

`A038216(n)/A059268(n)`
-/

namespace A013621.P7609573708200929021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038216 n : ℚ) / (A059268 n : ℚ)

end

end A013621.P7609573708200929021

namespace A013621

/-- `A038216(n)/A059268(n)` -/
def P7609573708200929021.Spec : Prop :=
  ∀ n, P7609573708200929021.a n = (A013621 n : ℚ)

end A013621

/-! ## A013621.P2764558547937292492

`A038283(n)/A262616(n)`
-/

namespace A013621.P2764558547937292492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038283 n : ℚ) / (A262616 n : ℚ)

end

end A013621.P2764558547937292492

namespace A013621

/-- `A038283(n)/A262616(n)` -/
def P2764558547937292492.Spec : Prop :=
  ∀ n, P2764558547937292492.a n = (A013621 n : ℚ)

end A013621

/-! ## A013621.P12262154898375307450

`A038283(n)/A130321(n)²`
-/

namespace A013621.P12262154898375307450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038283 n : ℚ) / (A130321 n ^ 2 : ℚ)

end

end A013621.P12262154898375307450

namespace A013621

/-- `A038283(n)/A130321(n)²` -/
def P12262154898375307450.Spec : Prop :=
  ∀ n, P12262154898375307450.a n = (A013621 n : ℚ)

end A013621

/-! ## A013621.P2228254338797127252

`A038240(n)/A137688(n)`
-/

namespace A013621.P2228254338797127252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038240 n : ℚ) / (A137688 n : ℚ)

end

end A013621.P2228254338797127252

namespace A013621

/-- `A038240(n)/A137688(n)` -/
def P2228254338797127252.Spec : Prop :=
  ∀ n, P2228254338797127252.a n = (A013621 n : ℚ)

end A013621

/-! ## A013621.P9882268521720324462

`gcd(A038216(n), A038307(n))`
-/

namespace A013621.P9882268521720324462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038216 n) (A038307 n)

end

end A013621.P9882268521720324462

namespace A013621

/-- `gcd(A038216(n), A038307(n))` -/
def P9882268521720324462.Spec : Prop :=
  ∀ n, (P9882268521720324462.a n : ℤ) = A013621 n

end A013621

/-! ## A013621.P6305746834812574059

`A013612(n)/A027466(n)*A147716(n)`
-/

namespace A013621.P6305746834812574059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013612 n : ℚ) / (A027466 n : ℚ) * (A147716 n : ℚ)

end

end A013621.P6305746834812574059

namespace A013621

/-- `A013612(n)/A027466(n)*A147716(n)` -/
def P6305746834812574059.Spec : Prop :=
  ∀ n, P6305746834812574059.a n = (A013621 n : ℚ)

end A013621

/-! ## A013621.P10596485162411507878

`A038264(n)/A175840(n)`
-/

namespace A013621.P10596485162411507878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038264 n : ℚ) / (A175840 n : ℚ)

end

end A013621.P10596485162411507878

namespace A013621

/-- `A038264(n)/A175840(n)` -/
def P10596485162411507878.Spec : Prop :=
  ∀ n, P10596485162411507878.a n = (A013621 n : ℚ)

end A013621

/-!
# A013622: Triangle of coefficients in expansion of (3+5x)^n.

The programs for A013622, the canonical program `A013622.P17777939334217247743` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013622 has offset 0).

The definition of A013622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6397 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013622.P17777939334217247743

`A007318(n)*A120027(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A013622

/-- `A007318(n)*A120027(n)` -/
def P17777939334217247743.Spec : Prop :=
  ∀ n, P17777939334217247743.a n = A013622 n

theorem P17777939334217247743.correct : P17777939334217247743.Spec := by
  intro n
  simp only [A013622]

end A013622

/-! ## A013622.P13309802517336241742

`A013612(n)*A140303(n)`
-/

namespace A013622.P13309802517336241742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 n * A140303 n

end

end A013622.P13309802517336241742

namespace A013622

/-- `A013612(n)*A140303(n)` -/
def P13309802517336241742.Spec : Prop :=
  ∀ n, P13309802517336241742.a n = A013622 n

end A013622

/-! ## A013622.P14726835684642167616

`lcm(A013612(n), A027465(n))`
-/

namespace A013622.P14726835684642167616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013612 n) (A027465 n)

end

end A013622.P14726835684642167616

namespace A013622

/-- `lcm(A013612(n), A027465(n))` -/
def P14726835684642167616.Spec : Prop :=
  ∀ n, (P14726835684642167616.a n : ℤ) = A013622 n

end A013622

/-! ## A013622.P3211033615974156986

`3^A025581(n)*A013612(n)`
-/

namespace A013622.P3211033615974156986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A025581 n : ℤ) * (A013612 n : ℚ)

end

end A013622.P3211033615974156986

namespace A013622

/-- `3^A025581(n)*A013612(n)` -/
def P3211033615974156986.Spec : Prop :=
  ∀ n, P3211033615974156986.a n = (A013622 n : ℚ)

end A013622

/-! ## A013622.P5257178312656292400

`A013612(n)/A007318(n)*A027465(n)`
-/

namespace A013622.P5257178312656292400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013612 n : ℚ) / (A007318 n : ℚ) * (A027465 n : ℚ)

end

end A013622.P5257178312656292400

namespace A013622

/-- `A013612(n)/A007318(n)*A027465(n)` -/
def P5257178312656292400.Spec : Prop :=
  ∀ n, P5257178312656292400.a n = (A013622 n : ℚ)

end A013622

/-! ## A013622.P458023794580674534

`A013612(n)/A038207(n)*A038255(n)`
-/

namespace A013622.P458023794580674534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013612 n : ℚ) / (A038207 n : ℚ) * (A038255 n : ℚ)

end

end A013622.P458023794580674534

namespace A013622

/-- `A013612(n)/A038207(n)*A038255(n)` -/
def P458023794580674534.Spec : Prop :=
  ∀ n, P458023794580674534.a n = (A013622 n : ℚ)

end A013622

/-! ## A013622.P17904876261306301787

`A013620(n)/A036561(n)*A120027(n)`
-/

namespace A013622.P17904876261306301787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013620 n : ℚ) / (A036561 n : ℚ) * (A120027 n : ℚ)

end

end A013622.P17904876261306301787

namespace A013622

/-- `A013620(n)/A036561(n)*A120027(n)` -/
def P17904876261306301787.Spec : Prop :=
  ∀ n, P17904876261306301787.a n = (A013622 n : ℚ)

end A013622

/-! ## A013622.P5312273662385546281

`3^(A004736(n+1)-1)*5^(A002260(n+1)-1)*A007318(n)`
-/

namespace A013622.P5312273662385546281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A004736 (n + 1) - 1 : ℤ) * (5 : ℚ) ^ (A002260 (n + 1) - 1 : ℤ) * (A007318 n : ℚ)

end

end A013622.P5312273662385546281

namespace A013622

/-- `3^(A004736(n+1)-1)*5^(A002260(n+1)-1)*A007318(n)` -/
def P5312273662385546281.Spec : Prop :=
  ∀ n, P5312273662385546281.a n = (A013622 n : ℚ)

end A013622

/-! ## A013622.P2501817765274040689

`A038245(A061579(n))`
-/

namespace A013622.P2501817765274040689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038245 (A061579 n).toNat

end

end A013622.P2501817765274040689

namespace A013622

/-- `A038245(A061579(n))` -/
def P2501817765274040689.Spec : Prop :=
  ∀ n, P2501817765274040689.a n = A013622 n

end A013622

/-! ## A013622.P10517511449169678500

`A038259(n)/A130321(n)`
-/

namespace A013622.P10517511449169678500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038259 n : ℚ) / (A130321 n : ℚ)

end

end A013622.P10517511449169678500

namespace A013622

/-- `A038259(n)/A130321(n)` -/
def P10517511449169678500.Spec : Prop :=
  ∀ n, P10517511449169678500.a n = (A013622 n : ℚ)

end A013622

/-! ## A013622.P11205865437868824926

`A038259(n)/2^A025581(n)`
-/

namespace A013622.P11205865437868824926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038259 n : ℚ) / (2 : ℚ) ^ (A025581 n : ℤ)

end

end A013622.P11205865437868824926

namespace A013622

/-- `A038259(n)/2^A025581(n)` -/
def P11205865437868824926.Spec : Prop :=
  ∀ n, P11205865437868824926.a n = (A013622 n : ℚ)

end A013622

/-! ## A013622.P13620558566977874500

`A038228(n)/A059268(n)`
-/

namespace A013622.P13620558566977874500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038228 n : ℚ) / (A059268 n : ℚ)

end

end A013622.P13620558566977874500

namespace A013622

/-- `A038228(n)/A059268(n)` -/
def P13620558566977874500.Spec : Prop :=
  ∀ n, P13620558566977874500.a n = (A013622 n : ℚ)

end A013622

/-! ## A013622.P13694336515885279461

`A038295(n)/A140303(n)`
-/

namespace A013622.P13694336515885279461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038295 n : ℚ) / (A140303 n : ℚ)

end

end A013622.P13694336515885279461

namespace A013622

/-- `A038295(n)/A140303(n)` -/
def P13694336515885279461.Spec : Prop :=
  ∀ n, P13694336515885279461.a n = (A013622 n : ℚ)

end A013622

/-! ## A013622.P12423800297973002284

`gcd(A038228(n), A038295(n))`
-/

namespace A013622.P12423800297973002284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038228 n) (A038295 n)

end

end A013622.P12423800297973002284

namespace A013622

/-- `gcd(A038228(n), A038295(n))` -/
def P12423800297973002284.Spec : Prop :=
  ∀ n, (P12423800297973002284.a n : ℤ) = A013622 n

end A013622

/-! ## A013622.P13261202957174243380

`A038264(n)/A137688(n)`
-/

namespace A013622.P13261202957174243380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038264 n : ℚ) / (A137688 n : ℚ)

end

end A013622.P13261202957174243380

namespace A013622

/-- `A038264(n)/A137688(n)` -/
def P13261202957174243380.Spec : Prop :=
  ∀ n, P13261202957174243380.a n = (A013622 n : ℚ)

end A013622

/-! ## A013622.P1103852325480839216

`A013612(n)/A038243(n)*A027467(n)`
-/

namespace A013622.P1103852325480839216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013612 n : ℚ) / (A038243 n : ℚ) * (A027467 n : ℚ)

end

end A013622.P1103852325480839216

namespace A013622

/-- `A013612(n)/A038243(n)*A027467(n)` -/
def P1103852325480839216.Spec : Prop :=
  ∀ n, P1103852325480839216.a n = (A013622 n : ℚ)

end A013622

/-! ## A013622.P11089547155502078771

`A038331(n)/A262616(n)`
-/

namespace A013622.P11089547155502078771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038331 n : ℚ) / (A262616 n : ℚ)

end

end A013622.P11089547155502078771

namespace A013622

/-- `A038331(n)/A262616(n)` -/
def P11089547155502078771.Spec : Prop :=
  ∀ n, P11089547155502078771.a n = (A013622 n : ℚ)

end A013622

/-! ## A013622.P11054198737430952143

`A038331(n)/A130321(n)²`
-/

namespace A013622.P11054198737430952143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038331 n : ℚ) / (A130321 n ^ 2 : ℚ)

end

end A013622.P11054198737430952143

namespace A013622

/-- `A038331(n)/A130321(n)²` -/
def P11054198737430952143.Spec : Prop :=
  ∀ n, P11054198737430952143.a n = (A013622 n : ℚ)

end A013622

/-! ## A013622.P5561709695091802083

`A038300(n)/A175840(n)`
-/

namespace A013622.P5561709695091802083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038300 n : ℚ) / (A175840 n : ℚ)

end

end A013622.P5561709695091802083

namespace A013622

/-- `A038300(n)/A175840(n)` -/
def P5561709695091802083.Spec : Prop :=
  ∀ n, P5561709695091802083.a n = (A013622 n : ℚ)

end A013622

/-! ## A013622.P15099454134263027205

`gcd(A038259(n)²/A013628(n), A038259(n))`
-/

namespace A013622.P15099454134263027205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A038259 n ^ 2 : ℚ) / (A013628 n : ℚ))) (A038259 n)

end

end A013622.P15099454134263027205

namespace A013622

/-- `gcd(A038259(n)²/A013628(n), A038259(n))` -/
def P15099454134263027205.Spec : Prop :=
  ∀ n, (P15099454134263027205.a n : ℤ) = A013622 n

end A013622

/-!
# A013623: Triangle of coefficients in expansion of (2 + 7*x)^n.

The programs for A013623, the canonical program `A013623.P10183538247220725976` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013623 has offset 0).

The definition of A013623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5751 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013623.P7737713949920727928

`A007318(n)*A036565(n)`
-/

namespace A013623.P7737713949920727928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A036565 n

end

end A013623.P7737713949920727928

namespace A013623

/-- `A007318(n)*A036565(n)` -/
def P7737713949920727928.Spec : Prop :=
  ∀ n, P7737713949920727928.a n = A013623 n

theorem P7737713949920727928.correct : P7737713949920727928.Spec := by
  intro n
  simp only [A013623, Nat.add_sub_cancel, A013623.P7737713949920727928.a, A013623.P10183538247220725976.a, A007318, A007318.P11755526479805562006.a, A013614, A013614.P2472947764433084484.a, A036565, A036565.P6808793362176662829.a, A130321, A130321.P54397649261359622.a, A000420, A000420.P3695589171832359676.a, A002262, A002262.P17823619022233514403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A013623

/-! ## A013623.P10183538247220725976

`A013614(n)*A130321(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A013623

/-- `A013614(n)*A130321(n)` -/
def P10183538247220725976.Spec : Prop :=
  ∀ n, P10183538247220725976.a n = A013623 n

theorem P10183538247220725976.correct : P10183538247220725976.Spec := by
  intro n
  simp only [A013623]

end A013623

/-! ## A013623.P511673008345024286

`lcm(A013614(n), A038207(n))`
-/

namespace A013623.P511673008345024286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013614 n) (A038207 n)

end

end A013623.P511673008345024286

namespace A013623

/-- `lcm(A013614(n), A038207(n))` -/
def P511673008345024286.Spec : Prop :=
  ∀ n, (P511673008345024286.a n : ℤ) = A013623 n

end A013623

/-! ## A013623.P11570459163297854345

`sqrt(A008459(n))*A036565(n)`
-/

namespace A013623.P11570459163297854345
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A036565 n : ℝ)

end

end A013623.P11570459163297854345

namespace A013623

/-- `sqrt(A008459(n))*A036565(n)` -/
def P11570459163297854345.Spec : Prop :=
  ∀ n, P11570459163297854345.a n = (A013623 n : ℝ)

end A013623

/-! ## A013623.P11759683735060471831

`Δ[A102363(n)]*A036565(n)`
-/

namespace A013623.P11759683735060471831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A036565 n

end

end A013623.P11759683735060471831

namespace A013623

/-- `Δ[A102363(n)]*A036565(n)` -/
def P11759683735060471831.Spec : Prop :=
  ∀ n, P11759683735060471831.a n = A013623 n

end A013623

/-! ## A013623.P16110281299189029518

`A013614(n)/A007318(n)*A038207(n)`
-/

namespace A013623.P16110281299189029518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013614 n : ℚ) / (A007318 n : ℚ) * (A038207 n : ℚ)

end

end A013623.P16110281299189029518

namespace A013623

/-- `A013614(n)/A007318(n)*A038207(n)` -/
def P16110281299189029518.Spec : Prop :=
  ∀ n, P16110281299189029518.a n = (A013623 n : ℚ)

end A013623

/-! ## A013623.P16068754361880660678

`A038268(A061579(n))`
-/

namespace A013623.P16068754361880660678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038268 (A061579 n).toNat

end

end A013623.P16068754361880660678

namespace A013623

/-- `A038268(A061579(n))` -/
def P16068754361880660678.Spec : Prop :=
  ∀ n, P16068754361880660678.a n = A013623 n

end A013623

/-! ## A013623.P16712970827849171903

`A013625(n)/A130321(n)`
-/

namespace A013623.P16712970827849171903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013625 n : ℚ) / (A130321 n : ℚ)

end

end A013623.P16712970827849171903

namespace A013623

/-- `A013625(n)/A130321(n)` -/
def P16712970827849171903.Spec : Prop :=
  ∀ n, P16712970827849171903.a n = (A013623 n : ℚ)

end A013623

/-! ## A013623.P8960769755607478155

`A013627(n)/A140303(n)`
-/

namespace A013623.P8960769755607478155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013627 n : ℚ) / (A140303 n : ℚ)

end

end A013623.P8960769755607478155

namespace A013623

/-- `A013627(n)/A140303(n)` -/
def P8960769755607478155.Spec : Prop :=
  ∀ n, P8960769755607478155.a n = (A013623 n : ℚ)

end A013623

/-! ## A013623.P8306013844948438265

`gcd(A013625(n), A013627(n))`
-/

namespace A013623.P8306013844948438265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013625 n) (A013627 n)

end

end A013623.P8306013844948438265

namespace A013623

/-- `gcd(A013625(n), A013627(n))` -/
def P8306013844948438265.Spec : Prop :=
  ∀ n, (P8306013844948438265.a n : ℤ) = A013623 n

end A013623

/-! ## A013623.P11461482508421997946

`A038285(n)/A262616(n)`
-/

namespace A013623.P11461482508421997946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038285 n : ℚ) / (A262616 n : ℚ)

end

end A013623.P11461482508421997946

namespace A013623

/-- `A038285(n)/A262616(n)` -/
def P11461482508421997946.Spec : Prop :=
  ∀ n, P11461482508421997946.a n = (A013623 n : ℚ)

end A013623

/-! ## A013623.P15708286515191675069

`A038285(n)/A130321(n)²`
-/

namespace A013623.P15708286515191675069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038285 n : ℚ) / (A130321 n ^ 2 : ℚ)

end

end A013623.P15708286515191675069

namespace A013623

/-- `A038285(n)/A130321(n)²` -/
def P15708286515191675069.Spec : Prop :=
  ∀ n, P15708286515191675069.a n = (A013623 n : ℚ)

end A013623

/-! ## A013623.P17908667971641094410

`gcd(A038285(n), A038309(n))`
-/

namespace A013623.P17908667971641094410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038285 n) (A038309 n)

end

end A013623.P17908667971641094410

namespace A013623

/-- `gcd(A038285(n), A038309(n))` -/
def P17908667971641094410.Spec : Prop :=
  ∀ n, (P17908667971641094410.a n : ℤ) = A013623 n

end A013623

/-!
# A013624: Triangle of coefficients in expansion of (3+7x)^n.

The programs for A013624, the canonical program `A013624.P5198726075486126688` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013624 has offset 0).

The definition of A013624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5315 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013624.P5198726075486126688

`A013614(n)*A140303(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A013624

/-- `A013614(n)*A140303(n)` -/
def P5198726075486126688.Spec : Prop :=
  ∀ n, P5198726075486126688.a n = A013624 n

theorem P5198726075486126688.correct : P5198726075486126688.Spec := by
  intro n
  simp only [A013624]

end A013624

/-! ## A013624.P12745599559941603789

`lcm(A013614(n), A027465(n))`
-/

namespace A013624.P12745599559941603789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013614 n) (A027465 n)

end

end A013624.P12745599559941603789

namespace A013624

/-- `lcm(A013614(n), A027465(n))` -/
def P12745599559941603789.Spec : Prop :=
  ∀ n, (P12745599559941603789.a n : ℤ) = A013624 n

end A013624

/-! ## A013624.P9931839924445953567

`A000420(A002262(n))*A027465(n)`
-/

namespace A013624.P9931839924445953567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (A002262 n).toNat * A027465 n

end

end A013624.P9931839924445953567

namespace A013624

/-- `A000420(A002262(n))*A027465(n)` -/
def P9931839924445953567.Spec : Prop :=
  ∀ n, P9931839924445953567.a n = A013624 n

end A013624

/-! ## A013624.P16102839272424968904

`A000244(A025581(n))*A013614(n)`
-/

namespace A013624.P16102839272424968904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A025581 n).toNat * A013614 n

end

end A013624.P16102839272424968904

namespace A013624

/-- `A000244(A025581(n))*A013614(n)` -/
def P16102839272424968904.Spec : Prop :=
  ∀ n, P16102839272424968904.a n = A013624 n

end A013624

/-! ## A013624.P3965194090423673739

`A038269(A061579(n))`
-/

namespace A013624.P3965194090423673739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038269 (A061579 n).toNat

end

end A013624.P3965194090423673739

namespace A013624

/-- `A038269(A061579(n))` -/
def P3965194090423673739.Spec : Prop :=
  ∀ n, P3965194090423673739.a n = A013624 n

end A013624

/-! ## A013624.P18214372085019764388

`A013627(n)/A130321(n)`
-/

namespace A013624.P18214372085019764388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013627 n : ℚ) / (A130321 n : ℚ)

end

end A013624.P18214372085019764388

namespace A013624

/-- `A013627(n)/A130321(n)` -/
def P18214372085019764388.Spec : Prop :=
  ∀ n, P18214372085019764388.a n = (A013624 n : ℚ)

end A013624

/-! ## A013624.P15113882597744138881

`A038297(n)/A140303(n)`
-/

namespace A013624.P15113882597744138881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038297 n : ℚ) / (A140303 n : ℚ)

end

end A013624.P15113882597744138881

namespace A013624

/-- `A038297(n)/A140303(n)` -/
def P15113882597744138881.Spec : Prop :=
  ∀ n, P15113882597744138881.a n = (A013624 n : ℚ)

end A013624

/-! ## A013624.P16404668818917785427

`gcd(A013627(n), A038297(n))`
-/

namespace A013624.P16404668818917785427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013627 n) (A038297 n)

end

end A013624.P16404668818917785427

namespace A013624

/-- `gcd(A013627(n), A038297(n))` -/
def P16404668818917785427.Spec : Prop :=
  ∀ n, (P16404668818917785427.a n : ℤ) = A013624 n

end A013624

/-! ## A013624.P11034165462194565715

`A038333(n)/A262616(n)`
-/

namespace A013624.P11034165462194565715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038333 n : ℚ) / (A262616 n : ℚ)

end

end A013624.P11034165462194565715

namespace A013624

/-- `A038333(n)/A262616(n)` -/
def P11034165462194565715.Spec : Prop :=
  ∀ n, P11034165462194565715.a n = (A013624 n : ℚ)

end A013624

/-! ## A013624.P8475813318662172571

`A038333(n)/A130321(n)²`
-/

namespace A013624.P8475813318662172571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038333 n : ℚ) / (A130321 n ^ 2 : ℚ)

end

end A013624.P8475813318662172571

namespace A013624

/-- `A038333(n)/A130321(n)²` -/
def P8475813318662172571.Spec : Prop :=
  ∀ n, P8475813318662172571.a n = (A013624 n : ℚ)

end A013624

/-! ## A013624.P8799794138371789082

`A013627(n)²/lcm(A013627(n), A038231(n))`
-/

namespace A013624.P8799794138371789082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013627 n ^ 2 : ℚ) / (Int.lcm (A013627 n) (A038231 n) : ℚ)

end

end A013624.P8799794138371789082

namespace A013624

/-- `A013627(n)²/lcm(A013627(n), A038231(n))` -/
def P8799794138371789082.Spec : Prop :=
  ∀ n, P8799794138371789082.a n = (A013624 n : ℚ)

end A013624

/-!
# A013625: Triangle of coefficients in expansion of (4+7x)^n.

The programs for A013625, the canonical program `A013625.P14020138275572852531` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013625 has offset 0).

The definition of A013625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4904 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013625.P3883662008090185006

`A036565(n)*A038207(n)`
-/

namespace A013625.P3883662008090185006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036565 n * A038207 n

end

end A013625.P3883662008090185006

namespace A013625

/-- `A036565(n)*A038207(n)` -/
def P3883662008090185006.Spec : Prop :=
  ∀ n, P3883662008090185006.a n = A013625 n

end A013625

/-! ## A013625.P14020138275572852531

`A013623(n)*A130321(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A013625

/-- `A013623(n)*A130321(n)` -/
def P14020138275572852531.Spec : Prop :=
  ∀ n, P14020138275572852531.a n = A013625 n

theorem P14020138275572852531.correct : P14020138275572852531.Spec := by
  intro n
  simp only [A013625]

end A013625

/-! ## A013625.P4072049036272160300

`A013614(n)*A262616(n)`
-/

namespace A013625.P4072049036272160300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013614 n * A262616 n

end

end A013625.P4072049036272160300

namespace A013625

/-- `A013614(n)*A262616(n)` -/
def P4072049036272160300.Spec : Prop :=
  ∀ n, P4072049036272160300.a n = A013625 n

end A013625

/-! ## A013625.P6095366334374255892

`lcm(A013614(n), A038231(n))`
-/

namespace A013625.P6095366334374255892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013614 n) (A038231 n)

end

end A013625.P6095366334374255892

namespace A013625

/-- `lcm(A013614(n), A038231(n))` -/
def P6095366334374255892.Spec : Prop :=
  ∀ n, (P6095366334374255892.a n : ℤ) = A013625 n

end A013625

/-! ## A013625.P9050006357762824214

`A130321(n)²*A013614(n)`
-/

namespace A013625.P9050006357762824214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A013614 n

end

end A013625.P9050006357762824214

namespace A013625

/-- `A130321(n)²*A013614(n)` -/
def P9050006357762824214.Spec : Prop :=
  ∀ n, P9050006357762824214.a n = A013625 n

theorem P9050006357762824214.correct : P9050006357762824214.Spec := by
  intro n
  simp only [A013625, Nat.add_sub_cancel, A013625.P9050006357762824214.a, A013625.P14020138275572852531.a, A013614, A013614.P2472947764433084484.a, A013623, A013623.P10183538247220725976.a, A130321, A130321.P54397649261359622.a, A000420, A000420.P3695589171832359676.a, A002262, A002262.P17823619022233514403.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A013625

/-! ## A013625.P5577520642231568891

`A013623(n)/A013614(n)*A013623(n)`
-/

namespace A013625.P5577520642231568891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013623 n : ℚ) / (A013614 n : ℚ) * (A013623 n : ℚ)

end

end A013625.P5577520642231568891

namespace A013625

/-- `A013623(n)/A013614(n)*A013623(n)` -/
def P5577520642231568891.Spec : Prop :=
  ∀ n, P5577520642231568891.a n = (A013625 n : ℚ)

end A013625

/-! ## A013625.P3710970917493610722

`(A038207(n)/A007318(n))²*A013614(n)`
-/

namespace A013625.P3710970917493610722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038207 n : ℚ) / (A007318 n : ℚ)) ^ 2 * (A013614 n : ℚ)

end

end A013625.P3710970917493610722

namespace A013625

/-- `(A038207(n)/A007318(n))²*A013614(n)` -/
def P3710970917493610722.Spec : Prop :=
  ∀ n, P3710970917493610722.a n = (A013625 n : ℚ)

end A013625

/-! ## A013625.P6747045630558945376

`A038270(A061579(n))`
-/

namespace A013625.P6747045630558945376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038270 (A061579 n).toNat

end

end A013625.P6747045630558945376

namespace A013625

/-- `A038270(A061579(n))` -/
def P6747045630558945376.Spec : Prop :=
  ∀ n, P6747045630558945376.a n = A013625 n

end A013625

/-! ## A013625.P5389939914823827275

`A038270(A038722(n+1)-1)`
-/

namespace A013625.P5389939914823827275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038270 (A038722 (n + 1) - 1).toNat

end

end A013625.P5389939914823827275

namespace A013625

/-- `A038270(A038722(n+1)-1)` -/
def P5389939914823827275.Spec : Prop :=
  ∀ n, P5389939914823827275.a n = A013625 n

end A013625

/-! ## A013625.P15831384013511735390

`A038270(A093995(n+1)-(n+1))`
-/

namespace A013625.P15831384013511735390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038270 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A013625.P15831384013511735390

namespace A013625

/-- `A038270(A093995(n+1)-(n+1))` -/
def P15831384013511735390.Spec : Prop :=
  ∀ n, P15831384013511735390.a n = A013625 n

end A013625

/-! ## A013625.P15362638897387051678

`A038285(n)/A130321(n)`
-/

namespace A013625.P15362638897387051678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038285 n : ℚ) / (A130321 n : ℚ)

end

end A013625.P15362638897387051678

namespace A013625

/-- `A038285(n)/A130321(n)` -/
def P15362638897387051678.Spec : Prop :=
  ∀ n, P15362638897387051678.a n = (A013625 n : ℚ)

end A013625

/-! ## A013625.P6737557515912598965

`A007318(n)/A038207(n)*A038285(n)`
-/

namespace A013625.P6737557515912598965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A038207 n : ℚ) * (A038285 n : ℚ)

end

end A013625.P6737557515912598965

namespace A013625

/-- `A007318(n)/A038207(n)*A038285(n)` -/
def P6737557515912598965.Spec : Prop :=
  ∀ n, P6737557515912598965.a n = (A013625 n : ℚ)

end A013625

/-! ## A013625.P8514825352758527448

`A013627(n)/A038297(n)*A013627(n)`
-/

namespace A013625.P8514825352758527448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013627 n : ℚ) / (A038297 n : ℚ) * (A013627 n : ℚ)

end

end A013625.P8514825352758527448

namespace A013625

/-- `A013627(n)/A038297(n)*A013627(n)` -/
def P8514825352758527448.Spec : Prop :=
  ∀ n, P8514825352758527448.a n = (A013625 n : ℚ)

end A013625

/-! ## A013625.P16340014441555076200

`A038333(n)/A140303(n)`
-/

namespace A013625.P16340014441555076200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038333 n : ℚ) / (A140303 n : ℚ)

end

end A013625.P16340014441555076200

namespace A013625

/-- `A038333(n)/A140303(n)` -/
def P16340014441555076200.Spec : Prop :=
  ∀ n, P16340014441555076200.a n = (A013625 n : ℚ)

end A013625

/-! ## A013625.P5453194762348383217

`gcd(A038285(n), A038333(n))`
-/

namespace A013625.P5453194762348383217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038285 n) (A038333 n)

end

end A013625.P5453194762348383217

namespace A013625

/-- `gcd(A038285(n), A038333(n))` -/
def P5453194762348383217.Spec : Prop :=
  ∀ n, (P5453194762348383217.a n : ℤ) = A013625 n

end A013625

/-! ## A013625.P1244738364699924650

`A013623(n)²/A013614(n)`
-/

namespace A013625.P1244738364699924650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013623 n ^ 2 : ℚ) / (A013614 n : ℚ)

end

end A013625.P1244738364699924650

namespace A013625

/-- `A013623(n)²/A013614(n)` -/
def P1244738364699924650.Spec : Prop :=
  ∀ n, P1244738364699924650.a n = (A013625 n : ℚ)

end A013625

/-! ## A013625.P11060335570858864733

`A013623(n)²/gcd(A013623(n), A013624(n))`
-/

namespace A013625.P11060335570858864733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013623 n ^ 2 : ℚ) / (Int.gcd (A013623 n) (A013624 n) : ℚ)

end

end A013625.P11060335570858864733

namespace A013625

/-- `A013623(n)²/gcd(A013623(n), A013624(n))` -/
def P11060335570858864733.Spec : Prop :=
  ∀ n, P11060335570858864733.a n = (A013625 n : ℚ)

end A013625

/-! ## A013625.P13104381721034356436

`A013627(n)²/A038297(n)`
-/

namespace A013625.P13104381721034356436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013627 n ^ 2 : ℚ) / (A038297 n : ℚ)

end

end A013625.P13104381721034356436

namespace A013625

/-- `A013627(n)²/A038297(n)` -/
def P13104381721034356436.Spec : Prop :=
  ∀ n, P13104381721034356436.a n = (A013625 n : ℚ)

end A013625

/-!
# A013626: Triangle of coefficients in expansion of (5+7x)^n.

The programs for A013626, the canonical program `A013626.P7478277466104224450` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013626 has offset 0).

The definition of A013626 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4514 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013626.P7478277466104224450

`lcm(A013614(n), A038243(n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A013626

/-- `lcm(A013614(n), A038243(n))` -/
def P7478277466104224450.Spec : Prop :=
  ∀ n, (P7478277466104224450.a n : ℤ) = A013626 n

theorem P7478277466104224450.correct : P7478277466104224450.Spec := by
  intro n
  simp only [A013626]

end A013626

/-! ## A013626.P11904022908112239844

`A038271(A061579(n))`
-/

namespace A013626.P11904022908112239844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038271 (A061579 n).toNat

end

end A013626.P11904022908112239844

namespace A013626

/-- `A038271(A061579(n))` -/
def P11904022908112239844.Spec : Prop :=
  ∀ n, P11904022908112239844.a n = A013626 n

end A013626

/-! ## A013626.P13055158797410942027

`A038271(A114327(n)+n)`
-/

namespace A013626.P13055158797410942027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038271 (A114327 n + (n : ℤ)).toNat

end

end A013626.P13055158797410942027

namespace A013626

/-- `A038271(A114327(n)+n)` -/
def P13055158797410942027.Spec : Prop :=
  ∀ n, P13055158797410942027.a n = A013626 n

end A013626

/-! ## A013626.P11555409069110761720

`A038271(∑[A198954(n)-1])`
-/

namespace A013626.P11555409069110761720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038271 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A013626.P11555409069110761720

namespace A013626

/-- `A038271(∑[A198954(n)-1])` -/
def P11555409069110761720.Spec : Prop :=
  ∀ n, P11555409069110761720.a n = A013626 n

end A013626

/-! ## A013626.P6649065344269996633

`A038271(A038722(n+1)-1)`
-/

namespace A013626.P6649065344269996633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038271 (A038722 (n + 1) - 1).toNat

end

end A013626.P6649065344269996633

namespace A013626

/-- `A038271(A038722(n+1)-1)` -/
def P6649065344269996633.Spec : Prop :=
  ∀ n, P6649065344269996633.a n = A013626 n

end A013626

/-! ## A013626.P4760494193026021383

`A038271(A002024(n+1)²-n-1)`
-/

namespace A013626.P4760494193026021383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038271 (A002024 (n + 1) ^ 2 - (n : ℤ) - 1).toNat

end

end A013626.P4760494193026021383

namespace A013626

/-- `A038271(A002024(n+1)²-n-1)` -/
def P4760494193026021383.Spec : Prop :=
  ∀ n, P4760494193026021383.a n = A013626 n

end A013626

/-! ## A013626.P10401761218324746984

`A038309(n)/A130321(n)`
-/

namespace A013626.P10401761218324746984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038309 n : ℚ) / (A130321 n : ℚ)

end

end A013626.P10401761218324746984

namespace A013626

/-- `A038309(n)/A130321(n)` -/
def P10401761218324746984.Spec : Prop :=
  ∀ n, P10401761218324746984.a n = (A013626 n : ℚ)

end A013626

/-! ## A013626.P5419490194327983291

`A007318(n)*A166660(A036561(n))`
-/

namespace A013626.P5419490194327983291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A166660 (A036561 n).toNat

end

end A013626.P5419490194327983291

namespace A013626

/-- `A007318(n)*A166660(A036561(n))` -/
def P5419490194327983291.Spec : Prop :=
  ∀ n, P5419490194327983291.a n = A013626 n

end A013626

/-!
# A013627: Triangle of coefficients in expansion of (6+7x)^n.

The programs for A013627, the canonical program `A013627.P4308516248732266953` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013627 has offset 0).

The definition of A013627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4230 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013627.P11367264366424645235

`A027465(n)*A036565(n)`
-/

namespace A013627.P11367264366424645235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 n * A036565 n

end

end A013627.P11367264366424645235

namespace A013627

/-- `A027465(n)*A036565(n)` -/
def P11367264366424645235.Spec : Prop :=
  ∀ n, P11367264366424645235.a n = A013627 n

end A013627

/-! ## A013627.P4308516248732266953

`A013624(n)*A130321(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A013627

/-- `A013624(n)*A130321(n)` -/
def P4308516248732266953.Spec : Prop :=
  ∀ n, P4308516248732266953.a n = A013627 n

theorem P4308516248732266953.correct : P4308516248732266953.Spec := by
  intro n
  simp only [A013627]

end A013627

/-! ## A013627.P16050536853474884609

`A013623(n)*A140303(n)`
-/

namespace A013627.P16050536853474884609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013623 n * A140303 n

end

end A013627.P16050536853474884609

namespace A013627

/-- `A013623(n)*A140303(n)` -/
def P16050536853474884609.Spec : Prop :=
  ∀ n, P16050536853474884609.a n = A013627 n

theorem P16050536853474884609.correct : P16050536853474884609.Spec := by
  intro n
  simp only [A013627, Nat.add_sub_cancel, A013627.P16050536853474884609.a, A013627.P4308516248732266953.a, A013623, A013623.P10183538247220725976.a, A013624, A013624.P5198726075486126688.a, A130321, A130321.P54397649261359622.a, A140303, A140303.P8111893884846108163.a, A000244, A000244.P17162167222172810417.a, A013614, A013614.P2472947764433084484.a, A000420, A000420.P3695589171832359676.a, A002262, A002262.P17823619022233514403.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A013627

/-! ## A013627.P8164426788816315901

`lcm(A013623(n), A013624(n))`
-/

namespace A013627.P8164426788816315901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013623 n) (A013624 n)

end

end A013627.P8164426788816315901

namespace A013627

/-- `lcm(A013623(n), A013624(n))` -/
def P8164426788816315901.Spec : Prop :=
  ∀ n, (P8164426788816315901.a n : ℤ) = A013627 n

end A013627

/-! ## A013627.P6345088692973834265

`lcm(A013614(n), A038255(n))`
-/

namespace A013627.P6345088692973834265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013614 n) (A038255 n)

end

end A013627.P6345088692973834265

namespace A013627

/-- `lcm(A013614(n), A038255(n))` -/
def P6345088692973834265.Spec : Prop :=
  ∀ n, (P6345088692973834265.a n : ℤ) = A013627 n

end A013627

/-! ## A013627.P10760821872464250665

`A038272(A061579(n))`
-/

namespace A013627.P10760821872464250665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038272 (A061579 n).toNat

end

end A013627.P10760821872464250665

namespace A013627

/-- `A038272(A061579(n))` -/
def P10760821872464250665.Spec : Prop :=
  ∀ n, P10760821872464250665.a n = A013627 n

end A013627

/-! ## A013627.P12271866799914157552

`A038333(n)/A130321(n)`
-/

namespace A013627.P12271866799914157552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038333 n : ℚ) / (A130321 n : ℚ)

end

end A013627.P12271866799914157552

namespace A013627

/-- `A038333(n)/A130321(n)` -/
def P12271866799914157552.Spec : Prop :=
  ∀ n, P12271866799914157552.a n = (A013627 n : ℚ)

end A013627

/-! ## A013627.P18142056291872073230

`gcd(A038333(n)²/A038285(n), A038333(n))`
-/

namespace A013627.P18142056291872073230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A038333 n ^ 2 : ℚ) / (A038285 n : ℚ))) (A038333 n)

end

end A013627.P18142056291872073230

namespace A013627

/-- `gcd(A038333(n)²/A038285(n), A038333(n))` -/
def P18142056291872073230.Spec : Prop :=
  ∀ n, (P18142056291872073230.a n : ℤ) = A013627 n

end A013627

/-!
# A013628: Triangle of coefficients in expansion of (4 + 5*x)^n.

The programs for A013628, the canonical program `A013628.P5912449761623070188` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013628 has offset 0).

The definition of A013628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5728 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013628.P5912449761623070188

`A013621(n)*A130321(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A013628

/-- `A013621(n)*A130321(n)` -/
def P5912449761623070188.Spec : Prop :=
  ∀ n, P5912449761623070188.a n = A013628 n

theorem P5912449761623070188.correct : P5912449761623070188.Spec := by
  intro n
  simp only [A013628]

end A013628

/-! ## A013628.P12597456324654123863

`A013612(n)*A262616(n)`
-/

namespace A013628.P12597456324654123863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 n * A262616 n

end

end A013628.P12597456324654123863

namespace A013628

/-- `A013612(n)*A262616(n)` -/
def P12597456324654123863.Spec : Prop :=
  ∀ n, P12597456324654123863.a n = A013628 n

end A013628

/-! ## A013628.P3451665476346276374

`lcm(A013612(n), A038231(n))`
-/

namespace A013628.P3451665476346276374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013612 n) (A038231 n)

end

end A013628.P3451665476346276374

namespace A013628

/-- `lcm(A013612(n), A038231(n))` -/
def P3451665476346276374.Spec : Prop :=
  ∀ n, (P3451665476346276374.a n : ℤ) = A013628 n

end A013628

/-! ## A013628.P15519894699764879662

`A130321(n)²*A013612(n)`
-/

namespace A013628.P15519894699764879662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A013612 n

end

end A013628.P15519894699764879662

namespace A013628

/-- `A130321(n)²*A013612(n)` -/
def P15519894699764879662.Spec : Prop :=
  ∀ n, P15519894699764879662.a n = A013628 n

theorem P15519894699764879662.correct : P15519894699764879662.Spec := by
  intro n
  simp only [A013628, Nat.add_sub_cancel, A013628.P15519894699764879662.a, A013628.P5912449761623070188.a, A013612, A013612.P15260993261497830762.a, A013621, A013621.P15224404741451774442.a, A130321, A130321.P54397649261359622.a, A002262, A002262.P17823619022233514403.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A013628

/-! ## A013628.P12340105852173279172

`A013621(n)/A013612(n)*A013621(n)`
-/

namespace A013628.P12340105852173279172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013621 n : ℚ) / (A013612 n : ℚ) * (A013621 n : ℚ)

end

end A013628.P12340105852173279172

namespace A013628

/-- `A013621(n)/A013612(n)*A013621(n)` -/
def P12340105852173279172.Spec : Prop :=
  ∀ n, P12340105852173279172.a n = (A013628 n : ℚ)

end A013628

/-! ## A013628.P16363204560088750401

`(A038207(n)/A007318(n))²*A013612(n)`
-/

namespace A013628.P16363204560088750401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038207 n : ℚ) / (A007318 n : ℚ)) ^ 2 * (A013612 n : ℚ)

end

end A013628.P16363204560088750401

namespace A013628

/-- `(A038207(n)/A007318(n))²*A013612(n)` -/
def P16363204560088750401.Spec : Prop :=
  ∀ n, P16363204560088750401.a n = (A013628 n : ℚ)

end A013628

/-! ## A013628.P3424243114606359425

`A038246(A061579(n))`
-/

namespace A013628.P3424243114606359425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038246 (A061579 n).toNat

end

end A013628.P3424243114606359425

namespace A013628

/-- `A038246(A061579(n))` -/
def P3424243114606359425.Spec : Prop :=
  ∀ n, P3424243114606359425.a n = A013628 n

end A013628

/-! ## A013628.P17792597172342759485

`A038207(n)*A232646(n+1)`
-/

namespace A013628.P17792597172342759485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n * A232646 (n + 1)

end

end A013628.P17792597172342759485

namespace A013628

/-- `A038207(n)*A232646(n+1)` -/
def P17792597172342759485.Spec : Prop :=
  ∀ n, P17792597172342759485.a n = A013628 n

end A013628

/-! ## A013628.P6792463203162583116

`A038283(n)/A130321(n)`
-/

namespace A013628.P6792463203162583116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038283 n : ℚ) / (A130321 n : ℚ)

end

end A013628.P6792463203162583116

namespace A013628

/-- `A038283(n)/A130321(n)` -/
def P6792463203162583116.Spec : Prop :=
  ∀ n, P6792463203162583116.a n = (A013628 n : ℚ)

end A013628

/-! ## A013628.P8320559238456718750

`A038240(n)/A059268(n)`
-/

namespace A013628.P8320559238456718750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038240 n : ℚ) / (A059268 n : ℚ)

end

end A013628.P8320559238456718750

namespace A013628

/-- `A038240(n)/A059268(n)` -/
def P8320559238456718750.Spec : Prop :=
  ∀ n, P8320559238456718750.a n = (A013628 n : ℚ)

end A013628

/-! ## A013628.P14120345617747758442

`(A147716(n)/A027466(n))²*A013612(n)`
-/

namespace A013628.P14120345617747758442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A147716 n : ℚ) / (A027466 n : ℚ)) ^ 2 * (A013612 n : ℚ)

end

end A013628.P14120345617747758442

namespace A013628

/-- `(A147716(n)/A027466(n))²*A013612(n)` -/
def P14120345617747758442.Spec : Prop :=
  ∀ n, P14120345617747758442.a n = (A013628 n : ℚ)

end A013628

/-! ## A013628.P5492916453961777131

`A038331(n)/A140303(n)`
-/

namespace A013628.P5492916453961777131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038331 n : ℚ) / (A140303 n : ℚ)

end

end A013628.P5492916453961777131

namespace A013628

/-- `A038331(n)/A140303(n)` -/
def P5492916453961777131.Spec : Prop :=
  ∀ n, P5492916453961777131.a n = (A013628 n : ℚ)

end A013628

/-! ## A013628.P4421002835023674508

`gcd(A038240(n), A038331(n))`
-/

namespace A013628.P4421002835023674508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038240 n) (A038331 n)

end

end A013628.P4421002835023674508

namespace A013628

/-- `gcd(A038240(n), A038331(n))` -/
def P4421002835023674508.Spec : Prop :=
  ∀ n, (P4421002835023674508.a n : ℤ) = A013628 n

end A013628

/-! ## A013628.P12667067766144900262

`A038288(n)/A137688(n)`
-/

namespace A013628.P12667067766144900262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038288 n : ℚ) / (A137688 n : ℚ)

end

end A013628.P12667067766144900262

namespace A013628

/-- `A038288(n)/A137688(n)` -/
def P12667067766144900262.Spec : Prop :=
  ∀ n, P12667067766144900262.a n = (A013628 n : ℚ)

end A013628

/-! ## A013628.P15193083193987815070

`A038336(n)/A175840(n)`
-/

namespace A013628.P15193083193987815070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038336 n : ℚ) / (A175840 n : ℚ)

end

end A013628.P15193083193987815070

namespace A013628

/-- `A038336(n)/A175840(n)` -/
def P15193083193987815070.Spec : Prop :=
  ∀ n, P15193083193987815070.a n = (A013628 n : ℚ)

end A013628

/-! ## A013628.P20812417609381908

`A013621(n)²/A013612(n)`
-/

namespace A013628.P20812417609381908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013621 n ^ 2 : ℚ) / (A013612 n : ℚ)

end

end A013628.P20812417609381908

namespace A013628

/-- `A013621(n)²/A013612(n)` -/
def P20812417609381908.Spec : Prop :=
  ∀ n, P20812417609381908.a n = (A013628 n : ℚ)

end A013628

/-! ## A013628.P17785377636172848450

`A013621(n)²/gcd(A013621(n), A013622(n))`
-/

namespace A013628.P17785377636172848450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013621 n ^ 2 : ℚ) / (Int.gcd (A013621 n) (A013622 n) : ℚ)

end

end A013628.P17785377636172848450

namespace A013628

/-- `A013621(n)²/gcd(A013621(n), A013622(n))` -/
def P17785377636172848450.Spec : Prop :=
  ∀ n, P17785377636172848450.a n = (A013628 n : ℚ)

end A013628

/-!
# A013629: Floor of imaginary parts of nontrivial zeros of Riemann zeta function.

The programs for A013629, there is no canonical definition to state claims against.
-/

/-! ## A013629.P15185480684170089862

`A092783(n+1)-1`
-/

namespace A013629.P15185480684170089862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092783 (n + 1) - 1

end

end A013629.P15185480684170089862

/-! ## A013629.P9797767739386788541

`comp[A135297(n+1)+n]-n`
-/

namespace A013629.P9797767739386788541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135297 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A013629.P9797767739386788541

/-! ## A013629.P11941457682608275289

`A023443(A092783(n+1))`
-/

namespace A013629.P11941457682608275289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A092783 (n + 1)).toNat

end

end A013629.P11941457682608275289

/-! ## A013629.P4203445981697869920

`floor(A342756(n+1)/A000040(n+1))`
-/

namespace A013629.P4203445981697869920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A342756 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌋

end

end A013629.P4203445981697869920

/-! ## A013629.P1732714217781432711

`A130595(A322313(2*n+5))+A092783(n+1)`
-/

namespace A013629.P1732714217781432711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (A322313 (2 * n + 5)).toNat + A092783 (n + 1)

end

end A013629.P1732714217781432711

/-! ## A013629.P2969550676093347442

`floor(A342756(n+1)/A008578(n+2))`
-/

namespace A013629.P2969550676093347442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A342756 (n + 1) : ℚ) / (A008578 (n + 2) : ℚ)⌋

end

end A013629.P2969550676093347442

/-! ## A013629.P15437421112081598685

`A162512(A151800(n))+A092783(n+1)`
-/

namespace A013629.P15437421112081598685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162512 (A151800 n).toNat + A092783 (n + 1)

end

end A013629.P15437421112081598685

/-! ## A013629.P9454044643245822831

`floor(A342756(n+1)/p?[A344180(n)])`
-/

namespace A013629.P9454044643245822831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A342756 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)⌋

end

end A013629.P9454044643245822831

/-! ## A013629.P14298645001597124239

`floor(A342756(n+1)/p?[A004280(n+1)])`
-/

namespace A013629.P14298645001597124239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A342756 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)⌋

end

end A013629.P14298645001597124239

/-! ## A013629.P8476880342769407509

`floor(A342756(n+1)/p?[A060000(n+1)])`
-/

namespace A013629.P8476880342769407509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A342756 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)⌋

end

end A013629.P8476880342769407509

/-! ## A013629.P7989304839371558250

`A162512(p?[A092783(n+1)])+A092783(n+1)`
-/

namespace A013629.P7989304839371558250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162512 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A092783 (n + 1)

end

end A013629.P7989304839371558250

/-! ## A013629.P9336805182624405791

`floor(A342756(n+1)/p?[A057979(n)])`
-/

namespace A013629.P9336805182624405791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A342756 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)⌋

end

end A013629.P9336805182624405791

/-!
# A013632: Difference between n and the next prime greater than n.

The programs for A013632, the canonical program `A013632.P6559946879985956067` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013632 has offset 0).

The definition of A013632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013632.P15669299687152687265

`A151800(n)-n`
-/

namespace A013632.P15669299687152687265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n - (n : ℤ)

end

end A013632.P15669299687152687265

namespace A013632

/-- `A151800(n)-n` -/
def P15669299687152687265.Spec : Prop :=
  ∀ n, P15669299687152687265.a n = A013632 n

end A013632

/-! ## A013632.P4611541916654120803

`Δ[A117842(n)]-n`
-/

namespace A013632.P4611541916654120803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A013632.P4611541916654120803

namespace A013632

/-- `Δ[A117842(n)]-n` -/
def P4611541916654120803.Spec : Prop :=
  ∀ n, P4611541916654120803.a n = A013632 n

end A013632

/-! ## A013632.P16959129715618496654

`A007920(n+1)+1`
-/

namespace A013632.P16959129715618496654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (n + 1) + 1

end

end A013632.P16959129715618496654

namespace A013632

/-- `A007920(n+1)+1` -/
def P16959129715618496654.Spec : Prop :=
  ∀ n, P16959129715618496654.a n = A013632 n

end A013632

/-! ## A013632.P16985156035749782308

`A007918(n+1)-n`
-/

namespace A013632.P16985156035749782308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (n + 1) - (n : ℤ)

end

end A013632.P16985156035749782308

namespace A013632

/-- `A007918(n+1)-n` -/
def P16985156035749782308.Spec : Prop :=
  ∀ n, P16985156035749782308.a n = A013632 n

end A013632

/-! ## A013632.P2014102648268979327

`A013634(n)-2*n`
-/

namespace A013632.P2014102648268979327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 n - (2 * n : ℤ)

end

end A013632.P2014102648268979327

namespace A013632

/-- `A013634(n)-2*n` -/
def P2014102648268979327.Spec : Prop :=
  ∀ n, P2014102648268979327.a n = A013632 n

end A013632

/-! ## A013632.P8205309074831964230

`sqrt(A069549(n+1))-n`
-/

namespace A013632.P8205309074831964230
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A069549 (n + 1) : ℝ) - (n : ℝ)

end

end A013632.P8205309074831964230

namespace A013632

/-- `sqrt(A069549(n+1))-n` -/
def P8205309074831964230.Spec : Prop :=
  ∀ n, P8205309074831964230.a n = (A013632 n : ℝ)

end A013632

/-! ## A013632.P10948858296122800679

`A308046(n+1)/2+1`
-/

namespace A013632.P10948858296122800679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308046 (n + 1) : ℚ) / 2 + 1

end

end A013632.P10948858296122800679

namespace A013632

/-- `A308046(n+1)/2+1` -/
def P10948858296122800679.Spec : Prop :=
  ∀ n, P10948858296122800679.a n = (A013632 n : ℚ)

end A013632

/-! ## A013632.P11489938163205601370

`A053024(n+1)/(n+1)-n`
-/

namespace A013632.P11489938163205601370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053024 (n + 1) : ℚ) / (n + 1 : ℚ) - (n : ℚ)

end

end A013632.P11489938163205601370

namespace A013632

/-- `A053024(n+1)/(n+1)-n` -/
def P11489938163205601370.Spec : Prop :=
  ∀ n, P11489938163205601370.a n = (A013632 n : ℚ)

end A013632

/-! ## A013632.P6559946879985956067

`A000040(A230980(n)+1)-n`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A013632

/-- `A000040(A230980(n)+1)-n` -/
def P6559946879985956067.Spec : Prop :=
  ∀ n, P6559946879985956067.a n = A013632 n

theorem P6559946879985956067.correct : P6559946879985956067.Spec := by
  intro n
  simp only [A013632]

end A013632

/-! ## A013632.P10623496239093760025

`A006530(A013634(n)-n)-n`
-/

namespace A013632.P10623496239093760025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A013634 n - (n : ℤ)).toNat - (n : ℤ)

end

end A013632.P10623496239093760025

namespace A013632

/-- `A006530(A013634(n)-n)-n` -/
def P10623496239093760025.Spec : Prop :=
  ∀ n, P10623496239093760025.a n = A013632 n

end A013632

/-! ## A013632.P15636694789115854948

`A020639(A013634(n)-n)-n`
-/

namespace A013632.P15636694789115854948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A013634 n - (n : ℤ)).toNat - (n : ℤ)

end

end A013632.P15636694789115854948

namespace A013632

/-- `A020639(A013634(n)-n)-n` -/
def P15636694789115854948.Spec : Prop :=
  ∀ n, P15636694789115854948.a n = A013632 n

end A013632

/-! ## A013632.P8329063436246799418

`A000040(A064427(n+1)-n)-n`
-/

namespace A013632.P8329063436246799418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A064427 (n + 1) - (n : ℤ)).toNat - (n : ℤ)

end

end A013632.P8329063436246799418

namespace A013632

/-- `A000040(A064427(n+1)-n)-n` -/
def P8329063436246799418.Spec : Prop :=
  ∀ n, P8329063436246799418.a n = A013632 n

end A013632

/-! ## A013632.P8047910792900190651

`A000040(∑[char[comp[A018252(n+1)]]])-n`
-/

namespace A013632.P8047910792900190651
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A013632.P8047910792900190651

namespace A013632

/-- `A000040(∑[char[comp[A018252(n+1)]]])-n` -/
def P8047910792900190651.Spec : Prop :=
  ∀ n, P8047910792900190651.a n = A013632 n

end A013632

/-! ## A013632.P15739229211650804138

`A000040(∑[char[A000040(n+1)]]+1)-n`
-/

namespace A013632.P15739229211650804138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - (n : ℤ)

end

end A013632.P15739229211650804138

namespace A013632

/-- `A000040(∑[char[A000040(n+1)]]+1)-n` -/
def P15739229211650804138.Spec : Prop :=
  ∀ n, P15739229211650804138.a n = A013632 n

end A013632

/-! ## A013632.P7844581650606415499

`A040976(∑[char[A006530(2*(n+1))]]+1)+2-n`
-/

namespace A013632.P7844581650606415499
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 2 - (n : ℤ)

end

end A013632.P7844581650606415499

namespace A013632

/-- `A040976(∑[char[A006530(2*(n+1))]]+1)+2-n` -/
def P7844581650606415499.Spec : Prop :=
  ∀ n, P7844581650606415499.a n = A013632 n

end A013632

/-! ## A013632.P5097688988300896597

`A002260(A151800(n)+A004736(n+1))`
-/

namespace A013632.P5097688988300896597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A151800 n + A004736 (n + 1)).toNat

end

end A013632.P5097688988300896597

namespace A013632

/-- `A002260(A151800(n)+A004736(n+1))` -/
def P5097688988300896597.Spec : Prop :=
  ∀ n, P5097688988300896597.a n = A013632 n

end A013632

/-! ## A013632.P17587426026888536210

`A014963(A013634(n)-n)-n`
-/

namespace A013632.P17587426026888536210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A013634 n - (n : ℤ)).toNat - (n : ℤ)

end

end A013632.P17587426026888536210

namespace A013632

/-- `A014963(A013634(n)-n)-n` -/
def P17587426026888536210.Spec : Prop :=
  ∀ n, P17587426026888536210.a n = A013632 n

end A013632

/-! ## A013632.P3520616279722135707

`A000040(∑[char[A075860(n+1)]])-n`
-/

namespace A013632.P3520616279722135707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075860 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A013632.P3520616279722135707

namespace A013632

/-- `A000040(∑[char[A075860(n+1)]])-n` -/
def P3520616279722135707.Spec : Prop :=
  ∀ n, P3520616279722135707.a n = A013632 n

end A013632

/-!
# A013633: nextprime(n) - prevprime(n).

The programs for A013633, the canonical program `A013633.P247593154449879367` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013633 has offset 3).

The definition of A013633 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A013633.P247593154449879367

`A007918(n+4)-A007917(n+2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A013633

/-- `A007918(n+4)-A007917(n+2)` -/
def P247593154449879367.Spec : Prop :=
  ∀ n, P247593154449879367.a n = A013633 (n + 3)

theorem P247593154449879367.correct : P247593154449879367.Spec := by
  intro n
  simp only [A013633, Nat.add_sub_cancel]

end A013633

/-! ## A013633.P11356302110926362651

`A151800(n+3)-A007917(n+2)`
-/

namespace A013633.P11356302110926362651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 3) - A007917 (n + 2)

end

end A013633.P11356302110926362651

namespace A013633

/-- `A151800(n+3)-A007917(n+2)` -/
def P11356302110926362651.Spec : Prop :=
  ∀ n, P11356302110926362651.a n = A013633 (n + 3)

end A013633

/-! ## A013633.P11598438572516579541

`A096500(n+2)+A001223(A000720(n+2))`
-/

namespace A013633.P11598438572516579541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096500 (n + 2) + A001223 (A000720 (n + 2)).toNat

end

end A013633.P11598438572516579541

namespace A013633

/-- `A096500(n+2)+A001223(A000720(n+2))` -/
def P11598438572516579541.Spec : Prop :=
  ∀ n, P11598438572516579541.a n = A013633 (n + 3)

end A013633

/-! ## A013633.P596287933094246078

`A096501(A151800(n+2))+A096500(n+2)`
-/

namespace A013633.P596287933094246078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (A151800 (n + 2)).toNat + A096500 (n + 2)

end

end A013633.P596287933094246078

namespace A013633

/-- `A096501(A151800(n+2))+A096500(n+2)` -/
def P596287933094246078.Spec : Prop :=
  ∀ n, P596287933094246078.a n = A013633 (n + 3)

end A013633

/-! ## A013633.P9605476878168878987

`A096501(n+3)+A001223(A000720(n+3))`
-/

namespace A013633.P9605476878168878987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (n + 3) + A001223 (A000720 (n + 3)).toNat

end

end A013633.P9605476878168878987

namespace A013633

/-- `A096501(n+3)+A001223(A000720(n+3))` -/
def P9605476878168878987.Spec : Prop :=
  ∀ n, P9605476878168878987.a n = A013633 (n + 3)

end A013633

/-! ## A013633.P4655774110813708174

`A096501(n+3)+A096501(A151800(n+3))`
-/

namespace A013633.P4655774110813708174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (n + 3) + A096501 (A151800 (n + 3)).toNat

end

end A013633.P4655774110813708174

namespace A013633

/-- `A096501(n+3)+A096501(A151800(n+3))` -/
def P4655774110813708174.Spec : Prop :=
  ∀ n, P4655774110813708174.a n = A013633 (n + 3)

end A013633

/-! ## A013633.P10833962574046233843

`A013638(n+3)/A007917(n+2)-A007917(n+2)`
-/

namespace A013633.P10833962574046233843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013638 (n + 3) : ℚ) / (A007917 (n + 2) : ℚ) - (A007917 (n + 2) : ℚ)

end

end A013633.P10833962574046233843

namespace A013633

/-- `A013638(n+3)/A007917(n+2)-A007917(n+2)` -/
def P10833962574046233843.Spec : Prop :=
  ∀ n, P10833962574046233843.a n = (A013633 (n + 3) : ℚ)

end A013633

/-! ## A013633.P4297646989710491570

`A049711(n+3)+A013632(n+3)`
-/

namespace A013633.P4297646989710491570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (n + 3) + A013632 (n + 3)

end

end A013633.P4297646989710491570

namespace A013633

/-- `A049711(n+3)+A013632(n+3)` -/
def P4297646989710491570.Spec : Prop :=
  ∀ n, P4297646989710491570.a n = A013633 (n + 3)

end A013633

/-! ## A013633.P1084306694828433009

`A151800(n+3)-A064989(A151800(n+2))`
-/

namespace A013633.P1084306694828433009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 3) - A064989 (A151800 (n + 2)).toNat

end

end A013633.P1084306694828433009

namespace A013633

/-- `A151800(n+3)-A064989(A151800(n+2))` -/
def P1084306694828433009.Spec : Prop :=
  ∀ n, P1084306694828433009.a n = A013633 (n + 3)

end A013633

/-! ## A013633.P5646016067628368357

`A049087(A013638(n+3))`
-/

namespace A013633.P5646016067628368357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049087 (A013638 (n + 3)).toNat

end

end A013633.P5646016067628368357

namespace A013633

/-- `A049087(A013638(n+3))` -/
def P5646016067628368357.Spec : Prop :=
  ∀ n, P5646016067628368357.a n = A013633 (n + 3)

end A013633

/-!
# A013634: a(n) = nextprime(n) + n.

The programs for A013634, the canonical program `A013634.P1496314925931275042` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013634 has offset 0).

The definition of A013634 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A013634.P1496314925931275042

`A151800(n)+n`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A013634

/-- `A151800(n)+n` -/
def P1496314925931275042.Spec : Prop :=
  ∀ n, P1496314925931275042.a n = A013634 n

theorem P1496314925931275042.correct : P1496314925931275042.Spec := by
  intro n
  simp only [A013634]

end A013634

/-! ## A013634.P15950520706159696987

`Δ[A117842(n)]+n`
-/

namespace A013634.P15950520706159696987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A013634.P15950520706159696987

namespace A013634

/-- `Δ[A117842(n)]+n` -/
def P15950520706159696987.Spec : Prop :=
  ∀ n, P15950520706159696987.a n = A013634 n

end A013634

/-! ## A013634.P8488303653854609503

`A007918(n+1)+n`
-/

namespace A013634.P8488303653854609503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (n + 1) + (n : ℤ)

end

end A013634.P8488303653854609503

namespace A013634

/-- `A007918(n+1)+n` -/
def P8488303653854609503.Spec : Prop :=
  ∀ n, P8488303653854609503.a n = A013634 n

end A013634

/-! ## A013634.P13299126309474785994

`A013632(n)+2*n`
-/

namespace A013634.P13299126309474785994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n + (2 * n : ℤ)

end

end A013634.P13299126309474785994

namespace A013634

/-- `A013632(n)+2*n` -/
def P13299126309474785994.Spec : Prop :=
  ∀ n, P13299126309474785994.a n = A013634 n

end A013634

/-! ## A013634.P16996036356567314725

`sqrt(A069549(n+1))+n`
-/

namespace A013634.P16996036356567314725
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A069549 (n + 1) : ℝ) + (n : ℝ)

end

end A013634.P16996036356567314725

namespace A013634

/-- `sqrt(A069549(n+1))+n` -/
def P16996036356567314725.Spec : Prop :=
  ∀ n, P16996036356567314725.a n = (A013634 n : ℝ)

end A013634

/-! ## A013634.P2478349134068816201

`A007920(n+1)+Δ[n²]`
-/

namespace A013634.P2478349134068816201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A013634.P2478349134068816201

namespace A013634

/-- `A007920(n+1)+Δ[n²]` -/
def P2478349134068816201.Spec : Prop :=
  ∀ n, P2478349134068816201.a n = A013634 n

theorem P2478349134068816201.correct : P2478349134068816201.Spec := by
  intro n
  simp only [A013634, Nat.add_sub_cancel, A013634.P2478349134068816201.f1, A013634.P2478349134068816201.a, A013634.P1496314925931275042.a, A007920, A007920.P3719263903022372137.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013634

/-! ## A013634.P10137650890076210481

`A053024(n+1)/(n+1)+n`
-/

namespace A013634.P10137650890076210481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053024 (n + 1) : ℚ) / (n + 1 : ℚ) + (n : ℚ)

end

end A013634.P10137650890076210481

namespace A013634

/-- `A053024(n+1)/(n+1)+n` -/
def P10137650890076210481.Spec : Prop :=
  ∀ n, P10137650890076210481.a n = (A013634 n : ℚ)

end A013634

/-! ## A013634.P4917239567731308811

`A000040(A230980(n)+1)+n`
-/

namespace A013634.P4917239567731308811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A230980 n + 1).toNat + (n : ℤ)

end

end A013634.P4917239567731308811

namespace A013634

/-- `A000040(A230980(n)+1)+n` -/
def P4917239567731308811.Spec : Prop :=
  ∀ n, P4917239567731308811.a n = A013634 n

end A013634

/-! ## A013634.P7974499548596492350

`2*A151800(n)-A013632(n)`
-/

namespace A013634.P7974499548596492350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151800 n - A013632 n

end

end A013634.P7974499548596492350

namespace A013634

/-- `2*A151800(n)-A013632(n)` -/
def P7974499548596492350.Spec : Prop :=
  ∀ n, P7974499548596492350.a n = A013634 n

end A013634

/-! ## A013634.P2668124294825935659

`A006530(A013632(n)+n)+n`
-/

namespace A013634.P2668124294825935659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A013632 n + (n : ℤ)).toNat + (n : ℤ)

end

end A013634.P2668124294825935659

namespace A013634

/-- `A006530(A013632(n)+n)+n` -/
def P2668124294825935659.Spec : Prop :=
  ∀ n, P2668124294825935659.a n = A013634 n

end A013634

/-! ## A013634.P1520753218839992484

`A020639(A013632(n)+n)+n`
-/

namespace A013634.P1520753218839992484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A013632 n + (n : ℤ)).toNat + (n : ℤ)

end

end A013634.P1520753218839992484

namespace A013634

/-- `A020639(A013632(n)+n)+n` -/
def P1520753218839992484.Spec : Prop :=
  ∀ n, P1520753218839992484.a n = A013634 n

end A013634

/-! ## A013634.P15062296119324154287

`n-(A001489(n)-A013632(n))`
-/

namespace A013634.P15062296119324154287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A001489 n - A013632 n)

end

end A013634.P15062296119324154287

namespace A013634

/-- `n-(A001489(n)-A013632(n))` -/
def P15062296119324154287.Spec : Prop :=
  ∀ n, P15062296119324154287.a n = A013634 n

end A013634

/-! ## A013634.P13042998289660737360

`A005843(n)-(n-A151800(n))`
-/

namespace A013634.P13042998289660737360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A151800 n)

end

end A013634.P13042998289660737360

namespace A013634

/-- `A005843(n)-(n-A151800(n))` -/
def P13042998289660737360.Spec : Prop :=
  ∀ n, P13042998289660737360.a n = A013634 n

theorem P13042998289660737360.correct : P13042998289660737360.Spec := by
  intro n
  simp only [A013634, Nat.add_sub_cancel, A013634.P13042998289660737360.a, A013634.P1496314925931275042.a, A005843, A005843.P3167286115683555970.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013634

/-! ## A013634.P7013564454644252719

`A000040(A064427(n+1)-n)+n`
-/

namespace A013634.P7013564454644252719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A064427 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A013634.P7013564454644252719

namespace A013634

/-- `A000040(A064427(n+1)-n)+n` -/
def P7013564454644252719.Spec : Prop :=
  ∀ n, P7013564454644252719.a n = A013634 n

end A013634

/-! ## A013634.P17875917434557565025

`A053024(n+1)+n-A013636(n)`
-/

namespace A013634.P17875917434557565025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053024 (n + 1) + ((n : ℤ) - A013636 n)

end

end A013634.P17875917434557565025

namespace A013634

/-- `A053024(n+1)+n-A013636(n)` -/
def P17875917434557565025.Spec : Prop :=
  ∀ n, P17875917434557565025.a n = A013634 n

end A013634

/-! ## A013634.P17440516163123081193

`A000040(∑[char[comp[A018252(n+1)]]])+n`
-/

namespace A013634.P17440516163123081193
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A013634.P17440516163123081193

namespace A013634

/-- `A000040(∑[char[comp[A018252(n+1)]]])+n` -/
def P17440516163123081193.Spec : Prop :=
  ∀ n, P17440516163123081193.a n = A013634 n

end A013634

/-! ## A013634.P1907273412035110488

`A000040(∑[char[A000040(n+1)]]+1)+n`
-/

namespace A013634.P1907273412035110488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + (n : ℤ)

end

end A013634.P1907273412035110488

namespace A013634

/-- `A000040(∑[char[A000040(n+1)]]+1)+n` -/
def P1907273412035110488.Spec : Prop :=
  ∀ n, P1907273412035110488.a n = A013634 n

end A013634

/-! ## A013634.P15543877456767205468

`A014963(A013632(n)+n)+n`
-/

namespace A013634.P15543877456767205468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A013632 n + (n : ℤ)).toNat + (n : ℤ)

end

end A013634.P15543877456767205468

namespace A013634

/-- `A014963(A013632(n)+n)+n` -/
def P15543877456767205468.Spec : Prop :=
  ∀ n, P15543877456767205468.a n = A013634 n

end A013634

/-! ## A013634.P18282832883778822598

`A000040(∑[char[A075860(n+1)]])+n`
-/

namespace A013634.P18282832883778822598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075860 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A013634.P18282832883778822598

namespace A013634

/-- `A000040(∑[char[A075860(n+1)]])+n` -/
def P18282832883778822598.Spec : Prop :=
  ∀ n, P18282832883778822598.a n = A013634 n

end A013634

/-!
# A013635: a(n) = prevprime(n) + n.

The programs for A013635, the canonical program `A013635.P11014015188186242465` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013635 has offset 3).

The definition of A013635 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A013635.P11014015188186242465

`A007917(n+2)+n+3`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A013635

/-- `A007917(n+2)+n+3` -/
def P11014015188186242465.Spec : Prop :=
  ∀ n, P11014015188186242465.a n = A013635 (n + 3)

theorem P11014015188186242465.correct : P11014015188186242465.Spec := by
  intro n
  simp only [A013635, Nat.add_sub_cancel]

end A013635

/-! ## A013635.P13704112913376471262

`∑[A096501(n+2)+1]`
-/

namespace A013635.P13704112913376471262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013635.P13704112913376471262

namespace A013635

/-- `∑[A096501(n+2)+1]` -/
def P13704112913376471262.Spec : Prop :=
  ∀ n, P13704112913376471262.a n = A013635 (n + 3)

end A013635

/-! ## A013635.P13523106596704552271

`comp[A007918(n)-2+n]+2`
-/

namespace A013635.P13523106596704552271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n - 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A013635.P13523106596704552271

namespace A013635

/-- `comp[A007918(n)-2+n]+2` -/
def P13523106596704552271.Spec : Prop :=
  ∀ n, (P13523106596704552271.a n : ℤ) = A013635 (n + 3)

end A013635

/-! ## A013635.P7318477586492384032

`comp[A151800(n)-2+n]+3`
-/

namespace A013635.P7318477586492384032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n - 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3

end

end A013635.P7318477586492384032

namespace A013635

/-- `comp[A151800(n)-2+n]+3` -/
def P7318477586492384032.Spec : Prop :=
  ∀ n, (P7318477586492384032.a n : ℤ) = A013635 (n + 3)

end A013635

/-! ## A013635.P11476008313519572017

`2*(n+3)-A175851(n+2)`
-/

namespace A013635.P11476008313519572017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 3) : ℤ) - A175851 (n + 2)

end

end A013635.P11476008313519572017

namespace A013635

/-- `2*(n+3)-A175851(n+2)` -/
def P11476008313519572017.Spec : Prop :=
  ∀ n, P11476008313519572017.a n = A013635 (n + 3)

end A013635

/-! ## A013635.P11572421707706147003

`2*(n+3)-A049711(n+3)`
-/

namespace A013635.P11572421707706147003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 3) : ℤ) - A049711 (n + 3)

end

end A013635.P11572421707706147003

namespace A013635

/-- `2*(n+3)-A049711(n+3)` -/
def P11572421707706147003.Spec : Prop :=
  ∀ n, P11572421707706147003.a n = A013635 (n + 3)

end A013635

/-! ## A013635.P11895679120556638895

`3*(n+3)-A033557(n+3)`
-/

namespace A013635.P11895679120556638895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 3) : ℤ) - A033557 (n + 3)

end

end A013635.P11895679120556638895

namespace A013635

/-- `3*(n+3)-A033557(n+3)` -/
def P11895679120556638895.Spec : Prop :=
  ∀ n, P11895679120556638895.a n = A013635 (n + 3)

end A013635

/-! ## A013635.P15061824773520935217

`A013637(n+3)/(n+3)+n+3`
-/

namespace A013635.P15061824773520935217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013637 (n + 3) : ℚ) / (n + 3 : ℚ) + (n + 3 : ℚ)

end

end A013635.P15061824773520935217

namespace A013635

/-- `A013637(n+3)/(n+3)+n+3` -/
def P15061824773520935217.Spec : Prop :=
  ∀ n, P15061824773520935217.a n = (A013635 (n + 3) : ℚ)

end A013635

/-! ## A013635.P6742245436269728278

`A020742(n)-A308050(n+4)`
-/

namespace A013635.P6742245436269728278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n - A308050 (n + 4)

end

end A013635.P6742245436269728278

namespace A013635

/-- `A020742(n)-A308050(n+4)` -/
def P6742245436269728278.Spec : Prop :=
  ∀ n, P6742245436269728278.a n = A013635 (n + 3)

end A013635

/-! ## A013635.P4087399967633114799

`A052147(A000720(n+2))+n+1`
-/

namespace A013635.P4087399967633114799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (A000720 (n + 2)).toNat + (n + 1 : ℤ)

end

end A013635.P4087399967633114799

namespace A013635

/-- `A052147(A000720(n+2))+n+1` -/
def P4087399967633114799.Spec : Prop :=
  ∀ n, P4087399967633114799.a n = A013635 (n + 3)

theorem P4087399967633114799.correct : P4087399967633114799.Spec := by
  intro n
  simp only [A013635, Nat.add_sub_cancel, A013635.P4087399967633114799.a, A013635.P11014015188186242465.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A007917, A007917.P1836476777957611455.a, A052147, A052147.P15217781913070555828.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A013635

/-! ## A013635.P3535642755921944138

`A326041(A151800(n+2))+n+2`
-/

namespace A013635.P3535642755921944138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326041 (A151800 (n + 2)).toNat + (n + 2 : ℤ)

end

end A013635.P3535642755921944138

namespace A013635

/-- `A326041(A151800(n+2))+n+2` -/
def P3535642755921944138.Spec : Prop :=
  ∀ n, P3535642755921944138.a n = A013635 (n + 3)

end A013635

/-! ## A013635.P10064079676926258349

`A000040(∑[C(2, A000005(n+2))])+3+n`
-/

namespace A013635.P10064079676926258349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000005 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j) + 3 + (n : ℤ)

end

end A013635.P10064079676926258349

namespace A013635

/-- `A000040(∑[C(2, A000005(n+2))])+3+n` -/
def P10064079676926258349.Spec : Prop :=
  ∀ n, P10064079676926258349.a n = A013635 (n + 3)

end A013635

/-! ## A013635.P16719919460310973913

`A000040(∑[char[A000040(n+1)-2]])+3+n`
-/

namespace A013635.P16719919460310973913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j) + 3 + (n : ℤ)

end

end A013635.P16719919460310973913

namespace A013635

/-- `A000040(∑[char[A000040(n+1)-2]])+3+n` -/
def P16719919460310973913.Spec : Prop :=
  ∀ n, P16719919460310973913.a n = A013635 (n + 3)

end A013635

/-! ## A013635.P16912161859255112244

`2*n+5-A064722(n+2)`
-/

namespace A013635.P16912161859255112244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 5 : ℤ) - A064722 (n + 2)

end

end A013635.P16912161859255112244

namespace A013635

/-- `2*n+5-A064722(n+2)` -/
def P16912161859255112244.Spec : Prop :=
  ∀ n, P16912161859255112244.a n = A013635 (n + 3)

end A013635

/-! ## A013635.P4449417064917241978

`A008578(A036234(n+2))+n+3`
-/

namespace A013635.P4449417064917241978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A036234 (n + 2)).toNat + (n + 3 : ℤ)

end

end A013635.P4449417064917241978

namespace A013635

/-- `A008578(A036234(n+2))+n+3` -/
def P4449417064917241978.Spec : Prop :=
  ∀ n, P4449417064917241978.a n = A013635 (n + 3)

end A013635

/-! ## A013635.P10992710977318477365

`A103517(n+1)+2-A175851(n+2)`
-/

namespace A013635.P10992710977318477365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (n + 1) + (2 - A175851 (n + 2))

end

end A013635.P10992710977318477365

namespace A013635

/-- `A103517(n+1)+2-A175851(n+2)` -/
def P10992710977318477365.Spec : Prop :=
  ∀ n, P10992710977318477365.a n = A013635 (n + 3)

end A013635

/-! ## A013635.P10473190708941970659

`A144396(n+2)+1-A175851(n+2)`
-/

namespace A013635.P10473190708941970659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 2) + (1 - A175851 (n + 2))

end

end A013635.P10473190708941970659

namespace A013635

/-- `A144396(n+2)+1-A175851(n+2)` -/
def P10473190708941970659.Spec : Prop :=
  ∀ n, P10473190708941970659.a n = A013635 (n + 3)

end A013635

/-! ## A013635.P3148405746912410974

`A008864(A230980(n+2))+n+2`
-/

namespace A013635.P3148405746912410974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A230980 (n + 2)).toNat + (n + 2 : ℤ)

end

end A013635.P3148405746912410974

namespace A013635

/-- `A008864(A230980(n+2))+n+2` -/
def P3148405746912410974.Spec : Prop :=
  ∀ n, P3148405746912410974.a n = A013635 (n + 3)

end A013635

/-!
# A013636: a(n) = n*nextprime(n).

The programs for A013636, the canonical program `A013636.P11460064888098733582` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013636 has offset 0).

The definition of A013636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013636.P10417881675720030682

`n*A151800(n)`
-/

namespace A013636.P10417881675720030682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A151800 n

end

end A013636.P10417881675720030682

namespace A013636

/-- `n*A151800(n)` -/
def P10417881675720030682.Spec : Prop :=
  ∀ n, P10417881675720030682.a n = A013636 n

end A013636

/-! ## A013636.P17740074679283144188

`n*Δ[A117842(n)]`
-/

namespace A013636.P17740074679283144188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A013636.P17740074679283144188

namespace A013636

/-- `n*Δ[A117842(n)]` -/
def P17740074679283144188.Spec : Prop :=
  ∀ n, P17740074679283144188.a n = A013636 n

end A013636

/-! ## A013636.P8999394501390882331

`n*A007918(n+1)`
-/

namespace A013636.P8999394501390882331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007918 (n + 1)

end

end A013636.P8999394501390882331

namespace A013636

/-- `n*A007918(n+1)` -/
def P8999394501390882331.Spec : Prop :=
  ∀ n, P8999394501390882331.a n = A013636 n

end A013636

/-! ## A013636.P2654065809967062238

`n*(A013632(n)+n)`
-/

namespace A013636.P2654065809967062238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A013632 n + (n : ℤ))

end

end A013636.P2654065809967062238

namespace A013636

/-- `n*(A013632(n)+n)` -/
def P2654065809967062238.Spec : Prop :=
  ∀ n, P2654065809967062238.a n = A013636 n

end A013636

/-! ## A013636.P10927233686866400431

`n*(A013634(n)-n)`
-/

namespace A013636.P10927233686866400431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A013634 n - (n : ℤ))

end

end A013636.P10927233686866400431

namespace A013636

/-- `n*(A013634(n)-n)` -/
def P10927233686866400431.Spec : Prop :=
  ∀ n, P10927233686866400431.a n = A013636 n

end A013636

/-! ## A013636.P7602943942715767653

`n*sqrt(A069549(n+1))`
-/

namespace A013636.P7602943942715767653
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (A069549 (n + 1) : ℝ)

end

end A013636.P7602943942715767653

namespace A013636

/-- `n*sqrt(A069549(n+1))` -/
def P7602943942715767653.Spec : Prop :=
  ∀ n, P7602943942715767653.a n = (A013636 n : ℝ)

end A013636

/-! ## A013636.P11460064888098733582

`n*A000040(∑[C(∑{p}[n, #], n)])`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A013636

/-- `n*A000040(∑[C(∑{p}[n, #], n)])` -/
def P11460064888098733582.Spec : Prop :=
  ∀ n, P11460064888098733582.a n = A013636 n

theorem P11460064888098733582.correct : P11460064888098733582.Spec := by
  intro n
  simp only [A013636]

end A013636

/-! ## A013636.P17690986484695575982

`n*(A007920(n+1)+1+n)`
-/

namespace A013636.P17690986484695575982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A007920 (n + 1) + 1 + (n : ℤ))

end

end A013636.P17690986484695575982

namespace A013636

/-- `n*(A007920(n+1)+1+n)` -/
def P17690986484695575982.Spec : Prop :=
  ∀ n, P17690986484695575982.a n = A013636 n

end A013636

/-! ## A013636.P15576601817176890539

`n/(n+1)*A053024(n+1)`
-/

namespace A013636.P15576601817176890539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 1 : ℚ) * (A053024 (n + 1) : ℚ)

end

end A013636.P15576601817176890539

namespace A013636

/-- `n/(n+1)*A053024(n+1)` -/
def P15576601817176890539.Spec : Prop :=
  ∀ n, P15576601817176890539.a n = (A013636 n : ℚ)

end A013636

/-! ## A013636.P10743473552018411716

`lcm(A038608(n), A151800(n))`
-/

namespace A013636.P10743473552018411716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038608 n) (A151800 n)

end

end A013636.P10743473552018411716

namespace A013636

/-- `lcm(A038608(n), A151800(n))` -/
def P10743473552018411716.Spec : Prop :=
  ∀ n, (P10743473552018411716.a n : ℤ) = A013636 n

end A013636

/-! ## A013636.P2805065759675564261

`A053024(n+1)-A151800(n)`
-/

namespace A013636.P2805065759675564261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053024 (n + 1) - A151800 n

end

end A013636.P2805065759675564261

namespace A013636

/-- `A053024(n+1)-A151800(n)` -/
def P2805065759675564261.Spec : Prop :=
  ∀ n, P2805065759675564261.a n = A013636 n

end A013636

/-! ## A013636.P9762571254509497823

`n*A000040(A230980(n)+1)`
-/

namespace A013636.P9762571254509497823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000040 (A230980 n + 1).toNat

end

end A013636.P9762571254509497823

namespace A013636

/-- `n*A000040(A230980(n)+1)` -/
def P9762571254509497823.Spec : Prop :=
  ∀ n, P9762571254509497823.a n = A013636 n

end A013636

/-! ## A013636.P12328080017066778388

`lcm(n, A006530(A013632(n)+n))`
-/

namespace A013636.P12328080017066778388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A006530 (A013632 n + (n : ℤ)).toNat)

end

end A013636.P12328080017066778388

namespace A013636

/-- `lcm(n, A006530(A013632(n)+n))` -/
def P12328080017066778388.Spec : Prop :=
  ∀ n, (P12328080017066778388.a n : ℤ) = A013636 n

end A013636

/-! ## A013636.P16113443213630386914

`n*A000040(A064427(n+1)-n)`
-/

namespace A013636.P16113443213630386914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000040 (A064427 (n + 1) - (n : ℤ)).toNat

end

end A013636.P16113443213630386914

namespace A013636

/-- `n*A000040(A064427(n+1)-n)` -/
def P16113443213630386914.Spec : Prop :=
  ∀ n, P16113443213630386914.a n = A013636 n

end A013636

/-! ## A013636.P3759050971472185603

`n*A000040(∑[char[comp[A018252(n+1)]]])`
-/

namespace A013636.P3759050971472185603
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A013636.P3759050971472185603

namespace A013636

/-- `n*A000040(∑[char[comp[A018252(n+1)]]])` -/
def P3759050971472185603.Spec : Prop :=
  ∀ n, P3759050971472185603.a n = A013636 n

end A013636

/-! ## A013636.P12962079643018352151

`n*A000040(∑[char[A000040(n+1)]]+1)`
-/

namespace A013636.P12962079643018352151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A013636.P12962079643018352151

namespace A013636

/-- `n*A000040(∑[char[A000040(n+1)]]+1)` -/
def P12962079643018352151.Spec : Prop :=
  ∀ n, P12962079643018352151.a n = A013636 n

end A013636

/-! ## A013636.P18149340611280350366

`n*A000040(∑[char[A075860(n+1)]])`
-/

namespace A013636.P18149340611280350366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075860 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A013636.P18149340611280350366

namespace A013636

/-- `n*A000040(∑[char[A075860(n+1)]])` -/
def P18149340611280350366.Spec : Prop :=
  ∀ n, P18149340611280350366.a n = A013636 n

end A013636

/-! ## A013636.P6190607867407288942

`n*A308052(Δ[n²])`
-/

namespace A013636.P6190607867407288942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A308052 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013636.P6190607867407288942

namespace A013636

/-- `n*A308052(Δ[n²])` -/
def P6190607867407288942.Spec : Prop :=
  ∀ n, P6190607867407288942.a n = A013636 n

end A013636

/-! ## A013636.P6324108941224471022

`n*A097246(A308052(2*n+1))`
-/

namespace A013636.P6324108941224471022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A097246 (A308052 (2 * n + 1)).toNat

end

end A013636.P6324108941224471022

namespace A013636

/-- `n*A097246(A308052(2*n+1))` -/
def P6324108941224471022.Spec : Prop :=
  ∀ n, P6324108941224471022.a n = A013636 n

end A013636

/-!
# A013637: n*prevprime(n).

The programs for A013637, the canonical program `A013637.P17117425938026762676` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013637 has offset 3).

The definition of A013637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013637.P17117425938026762676

`A007917(n+2)*(n+3)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A013637

/-- `A007917(n+2)*(n+3)` -/
def P17117425938026762676.Spec : Prop :=
  ∀ n, P17117425938026762676.a n = A013637 (n + 3)

theorem P17117425938026762676.correct : P17117425938026762676.Spec := by
  intro n
  simp only [A013637, Nat.add_sub_cancel]

end A013637

/-! ## A013637.P6516056796817610604

`(n+3)*(n+3-A175851(n+2))`
-/

namespace A013637.P6516056796817610604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * ((n + 3 : ℤ) - A175851 (n + 2))

end

end A013637.P6516056796817610604

namespace A013637

/-- `(n+3)*(n+3-A175851(n+2))` -/
def P6516056796817610604.Spec : Prop :=
  ∀ n, P6516056796817610604.a n = A013637 (n + 3)

end A013637

/-! ## A013637.P2283055348970116986

`(n+3)*(A013635(n+3)-(n+3))`
-/

namespace A013637.P2283055348970116986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (A013635 (n + 3) - (n + 3 : ℤ))

end

end A013637.P2283055348970116986

namespace A013637

/-- `(n+3)*(A013635(n+3)-(n+3))` -/
def P2283055348970116986.Spec : Prop :=
  ∀ n, P2283055348970116986.a n = A013637 (n + 3)

theorem P2283055348970116986.correct : P2283055348970116986.Spec := by
  intro n
  simp only [A013637, Nat.add_sub_cancel, A013637.P2283055348970116986.a, A013637.P17117425938026762676.a, A007917, A007917.P1836476777957611455.a, A013635, A013635.P11014015188186242465.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A013637

/-! ## A013637.P10190956505498078437

`(n+3)*(n+3-A049711(n+3))`
-/

namespace A013637.P10190956505498078437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * ((n + 3 : ℤ) - A049711 (n + 3))

end

end A013637.P10190956505498078437

namespace A013637

/-- `(n+3)*(n+3-A049711(n+3))` -/
def P10190956505498078437.Spec : Prop :=
  ∀ n, P10190956505498078437.a n = A013637 (n + 3)

end A013637

/-! ## A013637.P12339522855577697038

`(n+3)*A000040(A000720(n+2))`
-/

namespace A013637.P12339522855577697038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A000040 (A000720 (n + 2)).toNat

end

end A013637.P12339522855577697038

namespace A013637

/-- `(n+3)*A000040(A000720(n+2))` -/
def P12339522855577697038.Spec : Prop :=
  ∀ n, P12339522855577697038.a n = A013637 (n + 3)

theorem P12339522855577697038.correct : P12339522855577697038.Spec := by
  intro n
  simp only [A013637, Nat.add_sub_cancel, A013637.P12339522855577697038.a, A013637.P17117425938026762676.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A007917, A007917.P1836476777957611455.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A013637

/-! ## A013637.P8101396574427005782

`(n+3)*A000040(∑[A010051(n+2)])`
-/

namespace A013637.P8101396574427005782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A013637.P8101396574427005782

namespace A013637

/-- `(n+3)*A000040(∑[A010051(n+2)])` -/
def P8101396574427005782.Spec : Prop :=
  ∀ n, P8101396574427005782.a n = A013637 (n + 3)

end A013637

/-! ## A013637.P3951325553332904117

`(n+3)*A000040(∑[char[A040976(n+1)]])`
-/

namespace A013637.P3951325553332904117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A013637.P3951325553332904117

namespace A013637

/-- `(n+3)*A000040(∑[char[A040976(n+1)]])` -/
def P3951325553332904117.Spec : Prop :=
  ∀ n, P3951325553332904117.a n = A013637 (n + 3)

end A013637

/-! ## A013637.P17837637571861981863

`(n+3)*A000040(∑[C(2, A000005(n+2))])`
-/

namespace A013637.P17837637571861981863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000005 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A013637.P17837637571861981863

namespace A013637

/-- `(n+3)*A000040(∑[C(2, A000005(n+2))])` -/
def P17837637571861981863.Spec : Prop :=
  ∀ n, P17837637571861981863.a n = A013637 (n + 3)

end A013637

/-! ## A013637.P13948756181441645401

`A064924(n+2)+(A064924(n+2)/A049711(n+3))²`
-/

namespace A013637.P13948756181441645401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064924 (n + 2) : ℚ) + ((A064924 (n + 2) : ℚ) / (A049711 (n + 3) : ℚ)) ^ 2

end

end A013637.P13948756181441645401

namespace A013637

/-- `A064924(n+2)+(A064924(n+2)/A049711(n+3))²` -/
def P13948756181441645401.Spec : Prop :=
  ∀ n, P13948756181441645401.a n = (A013637 (n + 3) : ℚ)

end A013637

/-! ## A013637.P5669753094141658877

`(n+3)*A008578(A036234(n+2))`
-/

namespace A013637.P5669753094141658877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A008578 (A036234 (n + 2)).toNat

end

end A013637.P5669753094141658877

namespace A013637

/-- `(n+3)*A008578(A036234(n+2))` -/
def P5669753094141658877.Spec : Prop :=
  ∀ n, P5669753094141658877.a n = A013637 (n + 3)

end A013637

/-! ## A013637.P11073497783031641830

`(n+3)*A000040(Δ[A046992(n+1)])`
-/

namespace A013637.P11073497783031641830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A000040 (f1 (n + 1) - f1 n).toNat

end

end A013637.P11073497783031641830

namespace A013637

/-- `(n+3)*A000040(Δ[A046992(n+1)])` -/
def P11073497783031641830.Spec : Prop :=
  ∀ n, P11073497783031641830.a n = A013637 (n + 3)

end A013637

/-! ## A013637.P4615245636065637932

`(n+3)*A000040(A230980(n+2))`
-/

namespace A013637.P4615245636065637932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A000040 (A230980 (n + 2)).toNat

end

end A013637.P4615245636065637932

namespace A013637

/-- `(n+3)*A000040(A230980(n+2))` -/
def P4615245636065637932.Spec : Prop :=
  ∀ n, P4615245636065637932.a n = A013637 (n + 3)

end A013637

/-! ## A013637.P1249507973946346786

`(n+3)*A064989(A151800(n+2))`
-/

namespace A013637.P1249507973946346786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A064989 (A151800 (n + 2)).toNat

end

end A013637.P1249507973946346786

namespace A013637

/-- `(n+3)*A064989(A151800(n+2))` -/
def P1249507973946346786.Spec : Prop :=
  ∀ n, P1249507973946346786.a n = A013637 (n + 3)

end A013637

/-! ## A013637.P17646470769396356163

`(n+3)*A055377(2*(n+2))`
-/

namespace A013637.P17646470769396356163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A055377 (2 * (n + 2))

end

end A013637.P17646470769396356163

namespace A013637

/-- `(n+3)*A055377(2*(n+2))` -/
def P17646470769396356163.Spec : Prop :=
  ∀ n, P17646470769396356163.a n = A013637 (n + 3)

end A013637

/-! ## A013637.P14599638546975186358

`A180107(A013635(n+3))`
-/

namespace A013637.P14599638546975186358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180107 (A013635 (n + 3)).toNat

end

end A013637.P14599638546975186358

namespace A013637

/-- `A180107(A013635(n+3))` -/
def P14599638546975186358.Spec : Prop :=
  ∀ n, P14599638546975186358.a n = A013637 (n + 3)

end A013637

/-! ## A013637.P2553682506280140153

`(n+3)*A136548(n+3)`
-/

namespace A013637.P2553682506280140153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A136548 (n + 3)

end

end A013637.P2553682506280140153

namespace A013637

/-- `(n+3)*A136548(n+3)` -/
def P2553682506280140153.Spec : Prop :=
  ∀ n, P2553682506280140153.a n = A013637 (n + 3)

end A013637

/-! ## A013637.P855865667278269316

`(n+3)*A006530(A064924(n+2))`
-/

namespace A013637.P855865667278269316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A006530 (A064924 (n + 2)).toNat

end

end A013637.P855865667278269316

namespace A013637

/-- `(n+3)*A006530(A064924(n+2))` -/
def P855865667278269316.Spec : Prop :=
  ∀ n, P855865667278269316.a n = A013637 (n + 3)

end A013637

/-!
# A013638: a(n) = prevprime(n)*nextprime(n).

The programs for A013638, the canonical program `A013638.P16465662460005604629` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013638 has offset 3).

The definition of A013638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013638.P16120281402231896453

`(n+3)²-A056140(n+3)`
-/

namespace A013638.P16120281402231896453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) - A056140 (n + 3)

end

end A013638.P16120281402231896453

namespace A013638

/-- `(n+3)²-A056140(n+3)` -/
def P16120281402231896453.Spec : Prop :=
  ∀ n, P16120281402231896453.a n = A013638 (n + 3)

theorem P16120281402231896453.correct : P16120281402231896453.Spec := by
  intro n
  simp only [A013638, Nat.add_sub_cancel, A013638.P16120281402231896453.a, A013638.P16465662460005604629.a, A007917, A007917.P1836476777957611455.a, A056140, A056140.P5331885712081055835.a, A151800, A151800.P4570031678714564115.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000290, A000290.P12206242496348924484.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A013638

/-! ## A013638.P16465662460005604629

`A007917(n+2)*A151800(n+3)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A013638

/-- `A007917(n+2)*A151800(n+3)` -/
def P16465662460005604629.Spec : Prop :=
  ∀ n, P16465662460005604629.a n = A013638 (n + 3)

theorem P16465662460005604629.correct : P16465662460005604629.Spec := by
  intro n
  simp only [A013638, Nat.add_sub_cancel]

end A013638

/-! ## A013638.P1684227166933807528

`A007917(n+2)*A007918(A007917(n+3)+1)`
-/

namespace A013638.P1684227166933807528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (n + 2) * A007918 (A007917 (n + 3) + 1).toNat

end

end A013638.P1684227166933807528

namespace A013638

/-- `A007917(n+2)*A007918(A007917(n+3)+1)` -/
def P1684227166933807528.Spec : Prop :=
  ∀ n, P1684227166933807528.a n = A013638 (n + 3)

end A013638

/-! ## A013638.P17301665169080695516

`A030664(n+3)-A056141(n+3)`
-/

namespace A013638.P17301665169080695516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030664 (n + 3) - A056141 (n + 3)

end

end A013638.P17301665169080695516

namespace A013638

/-- `A030664(n+3)-A056141(n+3)` -/
def P17301665169080695516.Spec : Prop :=
  ∀ n, P17301665169080695516.a n = A013638 (n + 3)

end A013638

/-! ## A013638.P11478033993415934318

`A007917(n+2)*A007918(n+4)`
-/

namespace A013638.P11478033993415934318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (n + 2) * A007918 (n + 4)

end

end A013638.P11478033993415934318

namespace A013638

/-- `A007917(n+2)*A007918(n+4)` -/
def P11478033993415934318.Spec : Prop :=
  ∀ n, P11478033993415934318.a n = A013638 (n + 3)

end A013638

/-! ## A013638.P746625776659537068

`A064989(A151800(n+2))*A151800(n+3)`
-/

namespace A013638.P746625776659537068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A151800 (n + 2)).toNat * A151800 (n + 3)

end

end A013638.P746625776659537068

namespace A013638

/-- `A064989(A151800(n+2))*A151800(n+3)` -/
def P746625776659537068.Spec : Prop :=
  ∀ n, P746625776659537068.a n = A013638 (n + 3)

end A013638

/-!
# A013642: Numbers k such that the continued fraction for sqrt(k) has period 2.

The programs for A013642, there is no canonical definition to state claims against.
-/

/-! ## A013642.P1113130602961691280

`eq[2, A003285(n+1)]+1`
-/

namespace A013642.P1113130602961691280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A013642.P1113130602961691280

/-! ## A013642.P4680244999548680182

`eq[2, A097853(n+1)]+1`
-/

namespace A013642.P4680244999548680182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A013642.P4680244999548680182

/-! ## A013642.P10039747385279276650

`eq[3, A067280(n+1)]+1`
-/

namespace A013642.P10039747385279276650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067280 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A013642.P10039747385279276650

/-! ## A013642.P3343236852266897862

`record[n/a(A003285(n))]` with `a(0)=3, a(1)=2`
-/

namespace A013642.P3343236852266897862
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  (n : ℚ) / f1 (A003285 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013642.P3343236852266897862

/-! ## A013642.P5257156863093944013

`lt[xor(2, A003285(n+2)), 1]+2`
-/

namespace A013642.P5257156863093944013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A003285 (n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A013642.P5257156863093944013

/-! ## A013642.P1868108425774773093

`eq[2, A003285(A028310(n))]`
-/

namespace A013642.P1868108425774773093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A013642.P1868108425774773093

/-! ## A013642.P291416361052506362

`A020725(eq[2, A003285(n+1)])`
-/

namespace A013642.P291416361052506362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A013642.P291416361052506362

/-! ## A013642.P1612014834262541124

`A065475(eq[2, A003285(n+1)])`
-/

namespace A013642.P1612014834262541124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A013642.P1612014834262541124

/-! ## A013642.P8679729745180843020

`A114637(eq[2, A003285(n+1)])`
-/

namespace A013642.P8679729745180843020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A013642.P8679729745180843020

/-! ## A013642.P16001613582034990226

`A020725(eq[2, A097853(n+1)])`
-/

namespace A013642.P16001613582034990226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A013642.P16001613582034990226

/-! ## A013642.P5071329509096450746

`A065475(eq[2, A097853(n+1)])`
-/

namespace A013642.P5071329509096450746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A013642.P5071329509096450746

/-! ## A013642.P9329673477256494454

`eq[2, A003285(A000007(n)+n)]`
-/

namespace A013642.P9329673477256494454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A013642.P9329673477256494454

/-! ## A013642.P18399718680070583387

`eq[2, A003285(A000038(n)+n)]`
-/

namespace A013642.P18399718680070583387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A013642.P18399718680070583387

/-! ## A013642.P18277893395488073523

`eq[2, A003285(A010052(n)+n)]`
-/

namespace A013642.P18277893395488073523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A010052 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A013642.P18277893395488073523

/-! ## A013642.P16680727140143179103

`eq[2, A097853(A000007(n)+n)]`
-/

namespace A013642.P16680727140143179103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A013642.P16680727140143179103

/-! ## A013642.P1528319840847318468

`eq[(n/a(A003285(n)))², A000290(n)]` with `a(0)=3, a(1)=2`
-/

namespace A013642.P1528319840847318468
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  ((n : ℚ) / f1 (A003285 n).toNat) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A013642.P1528319840847318468

/-! ## A013642.P14596099586557719078

`A344180(eq[2, A003285(A344180(n))])`
-/

namespace A013642.P14596099586557719078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A013642.P14596099586557719078

/-! ## A013642.P3559765019972202083

`eq[2, A003285(A065033(2*n))]`
-/

namespace A013642.P3559765019972202083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A013642.P3559765019972202083

/-! ## A013642.P3431649272694702364

`eq[2, A003285(A123108(2*n))]`
-/

namespace A013642.P3431649272694702364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A013642.P3431649272694702364

/-! ## A013642.P11391813254344682588

`eq[2, A003285(A112689(A008458(n)))]`
-/

namespace A013642.P11391813254344682588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A112689 (A008458 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A013642.P11391813254344682588

/-!
# A013643: Numbers k such that the continued fraction for sqrt(k) has period 3.

The programs for A013643, there is no canonical definition to state claims against.
-/

/-! ## A013643.P13226037617216686645

`eq[3, A003285(A028310(n))]`
-/

namespace A013643.P13226037617216686645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A013643.P13226037617216686645

/-! ## A013643.P15565621820413013525

`A004482(eq[3, A003285(n+1)])`
-/

namespace A013643.P15565621820413013525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A013643.P15565621820413013525

/-! ## A013643.P9115101783589899593

`A011760(eq[3, A003285(n+1)])`
-/

namespace A013643.P9115101783589899593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A013643.P9115101783589899593

/-! ## A013643.P435682620843378621

`A020725(eq[3, A003285(n+1)])`
-/

namespace A013643.P435682620843378621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A013643.P435682620843378621

/-! ## A013643.P6952237181478275974

`A065475(eq[3, A003285(n+1)])`
-/

namespace A013643.P6952237181478275974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A013643.P6952237181478275974

/-!
# A013644: Numbers k such that the continued fraction for sqrt(k) has period 4.

The programs for A013644, there is no canonical definition to state claims against.
-/

/-! ## A013644.P14867772965431272893

`eq[4, A003285(n+1)]+1`
-/

namespace A013644.P14867772965431272893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A013644.P14867772965431272893

/-! ## A013644.P5422677392194960531

`eq[n, n-a(A003285(n))]` with `a(0)=4`
-/

namespace A013644.P5422677392194960531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  (n : ℤ) - f2 (A003285 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A013644.P5422677392194960531

/-! ## A013644.P17735631446078531156

`eq[4, A003285(A028310(n))]`
-/

namespace A013644.P17735631446078531156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A013644.P17735631446078531156

/-! ## A013644.P13388409918928421441

`A020725(eq[2, A097853(n+1)-2])`
-/

namespace A013644.P13388409918928421441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A013644.P13388409918928421441

/-! ## A013644.P15623923836302627646

`A065475(eq[2, A097853(n+1)-2])`
-/

namespace A013644.P15623923836302627646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A013644.P15623923836302627646

/-! ## A013644.P2901457355730161019

`A020725(eq[2, A097853(n+1)/2])`
-/

namespace A013644.P2901457355730161019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097853 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A013644.P2901457355730161019

/-! ## A013644.P2709261613191873478

`A065475(eq[2, A097853(n+1)/2])`
-/

namespace A013644.P2709261613191873478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097853 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A013644.P2709261613191873478

/-! ## A013644.P1598764720262589941

`eq[4, A003285(A060000(n+1))]`
-/

namespace A013644.P1598764720262589941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A013644.P1598764720262589941

/-! ## A013644.P17812185140541829366

`eq[A003285(A065033(2*n)), 4]`
-/

namespace A013644.P17812185140541829366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A065033 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A013644.P17812185140541829366

/-! ## A013644.P12872176717337606969

`eq[4, A003285(A233583(n+1))]`
-/

namespace A013644.P12872176717337606969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A013644.P12872176717337606969

/-!
# A013645: Values of k at which the period of the continued fraction for sqrt(k) sets a new record.

The programs for A013645, there is no canonical definition to state claims against.
-/

/-! ## A013645.P11616459186234304616

`A013646(record[A003285(n+1)])`
-/

namespace A013645.P11616459186234304616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A013645.P11616459186234304616

/-! ## A013645.P13227764829266923906

`A013646(record[A067280(n+1)-1])`
-/

namespace A013645.P13227764829266923906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067280 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A013645.P13227764829266923906

/-! ## A013645.P7136792383932611503

`A013646(record[A097853(n+1)%(n+1)])`
-/

namespace A013645.P7136792383932611503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097853 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A013645.P7136792383932611503

/-! ## A013645.P4869762901672117468

`A013646(record[A056926(n)*A097853(n+1)])`
-/

namespace A013645.P4869762901672117468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 n * A097853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A013645.P4869762901672117468

/-! ## A013645.P8123592356520692562

`A013646(record[A057427(n)*A097853(n+1)])`
-/

namespace A013645.P8123592356520692562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A097853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A013645.P8123592356520692562

/-! ## A013645.P13351788300758581702

`A013646(record[A013943(n+1)%A013646(n)])`
-/

namespace A013645.P13351788300758581702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013943 (n + 1)) (A013646 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A013645.P13351788300758581702

/-! ## A013645.P7456093232968470073

`A013646(record[A028833(n+1)+A028832(n+1)])`
-/

namespace A013645.P7456093232968470073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028833 (n + 1) + A028832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A013645.P7456093232968470073

/-! ## A013645.P15175512204898459850

`A013646(record[A049240(n+1)*A097853(n+1)])`
-/

namespace A013645.P15175512204898459850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (n + 1) * A097853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A013645.P15175512204898459850

/-!
# A013646: Least m such that the continued fraction for sqrt(m) has period n.

The programs for A013646, there is no canonical definition to state claims against.
-/

/-! ## A013646.P4371699948455556581

`A091449(∑[n])`
-/

namespace A013646.P4371699948455556581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091449 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A013646.P4371699948455556581

/-! ## A013646.P11225317973719509383

`A091450(∑[n+1])`
-/

namespace A013646.P11225317973719509383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091450 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A013646.P11225317973719509383

/-! ## A013646.P2952568846786816044

`A091449(n*(n+1)/2)%(n²+(n²+2)²)`
-/

namespace A013646.P2952568846786816044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091449 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat) (n ^ 2 + (n ^ 2 + 2) ^ 2 : ℤ)

end

end A013646.P2952568846786816044

/-! ## A013646.P5744865039766839115

`A091449(n*(n+1)/2)+A087666(3*(n+3))`
-/

namespace A013646.P5744865039766839115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091449 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat + A087666 (3 * (n + 3))

end

end A013646.P5744865039766839115

/-!
# A013647: Numbers k such that the period of the continued fraction for sqrt(k) contains no 1's.

The programs for A013647, there is no canonical definition to state claims against.
-/

/-! ## A013647.P11224432941146746623

`record[gcd(A000037(n+1), A099725(n+1))]`
-/

namespace A013647.P11224432941146746623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000037 (n + 1)) (A099725 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013647.P11224432941146746623

/-! ## A013647.P14777372329720451282

`lt[1, A276689(n)]`
-/

namespace A013647.P14777372329720451282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276689 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A013647.P14777372329720451282

/-! ## A013647.P9876524880992190697

`eq[A000038(n), A130706(A276689(n))]`
-/

namespace A013647.P9876524880992190697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (A276689 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A013647.P9876524880992190697

/-! ## A013647.P5137624987619951933

`eq[A040002(n), A113311(A276689(n))]`
-/

namespace A013647.P5137624987619951933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113311 (A276689 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A013647.P5137624987619951933

/-! ## A013647.P13954077733884442366

`eq[A113311(n+1), A113311(A276689(n))]`
-/

namespace A013647.P13954077733884442366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113311 (A276689 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A013647.P13954077733884442366

/-! ## A013647.P10960906799741363681

`eq[A130706(n+1), A130706(A276689(n))]`
-/

namespace A013647.P10960906799741363681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (A276689 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A013647.P10960906799741363681

/-! ## A013647.P17044952280374094426

`eq[2*A130706(n), A130706(A276689(n))]`
-/

namespace A013647.P17044952280374094426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (A276689 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A013647.P17044952280374094426

/-! ## A013647.P6281632520724133222

`eq[2, A276689(A276689(n)²-A276689(n))]`
-/

namespace A013647.P6281632520724133222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276689 (A276689 n ^ 2 - A276689 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A013647.P6281632520724133222

/-!
# A013648: Numbers k such that the periodic part of the continued fraction for sqrt(k) contains a single 1.

The programs for A013648, there is no canonical definition to state claims against.
-/

/-! ## A013648.P10714997671821175190

`∑[(2*n+3)%(A090790(n+1)+2)]`
-/

namespace A013648.P10714997671821175190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n + 3 : ℤ) (A090790 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013648.P10714997671821175190

/-! ## A013648.P13717075681484530254

`(n+2)²-A048996(A014378(n))`
-/

namespace A013648.P13717075681484530254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A048996 (A014378 n).toNat

end

end A013648.P13717075681484530254

/-! ## A013648.P12858725754703884937

`(n+2)²-A030239(A326292(3*n))`
-/

namespace A013648.P12858725754703884937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A030239 (A326292 (3 * n)).toNat

end

end A013648.P12858725754703884937

/-! ## A013648.P4220255485782118301

`eq[gcd(11, A299514(n+1)), A007913(n+1)]`
-/

namespace A013648.P4220255485782118301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 11 (A299514 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A013648.P4220255485782118301

/-! ## A013648.P6696714013952172318

`∑[(2*n+3)%A009056(A090790(n+1))]`
-/

namespace A013648.P6696714013952172318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n + 3 : ℤ) (A009056 (A090790 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013648.P6696714013952172318

/-!
# A013649: Numbers k such that the period of the continued fraction for sqrt(k) contains exactly two 1's.

The programs for A013649, there is no canonical definition to state claims against.
-/

/-! ## A013649.P4805616505377992891

`∩[A013651(n+1), comp[A013652(n+1)]]`
-/

namespace A013649.P4805616505377992891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013651 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013652 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A013649.P4805616505377992891

/-!
# A013651: Numbers k such that the period of the continued fraction for sqrt(k) contains at least two 1's.

The programs for A013651, there is no canonical definition to state claims against.
-/

/-! ## A013651.P10034724037273946018

`∪[A013649(n+1), A013652(n+1)]`
-/

namespace A013651.P10034724037273946018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A013651.P10034724037273946018

/-! ## A013651.P17193936502740278669

`eq[A033999(A125518(n+1)), A276689(n)]`
-/

namespace A013651.P17193936502740278669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A125518 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276689 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A013651.P17193936502740278669

/-! ## A013651.P10521610413717354631

`lt[A115327(A276689(n)), A096492(n+1)]`
-/

namespace A013651.P10521610413717354631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115327 (A276689 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096492 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A013651.P10521610413717354631

/-! ## A013651.P783202018656695311

`eq[A028832(n+1)*A276689(n), A096492(n+1)]`
-/

namespace A013651.P783202018656695311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028832 (n + 1) * A276689 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096492 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A013651.P783202018656695311

/-! ## A013651.P11356823988093284190

`eq[Δ[A097448(n)], A276689(n)]`
-/

namespace A013651.P11356823988093284190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097448 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276689 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A013651.P11356823988093284190

/-!
# A013652: Numbers k such that the period of the continued fraction for sqrt(k) contains at least three 1's.

The programs for A013652, there is no canonical definition to state claims against.
-/

/-! ## A013652.P16219349408197813652

`∩[comp[A013649(n+1)], A013651(n+1)]`
-/

namespace A013652.P16219349408197813652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013649 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A013652.P16219349408197813652

/-!
# A013653: Numbers k such that the period of the continued fraction for sqrt(k) contains exactly two 1's and they are not consecutive.

The programs for A013653, there is no canonical definition to state claims against.
-/

/-! ## A013653.P2057573169397754631

`∩[A013649(n+1), A013657(n+1)]`
-/

namespace A013653.P2057573169397754631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A013653.P2057573169397754631

/-! ## A013653.P3881003736542966277

`∩[A013657(n+1), A225387(n+1)]`
-/

namespace A013653.P3881003736542966277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A013653.P3881003736542966277

/-! ## A013653.P16218178587538626139

`∩[A013657(n+1), A227760(n+1)]`
-/

namespace A013653.P16218178587538626139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A013653.P16218178587538626139

/-! ## A013653.P15573289559508828503

`∩[A013657(n+1), A345921(n+1)]`
-/

namespace A013653.P15573289559508828503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A013653.P15573289559508828503

/-! ## A013653.P9737532376002659655

`∩[A013657(n+1), A139143(n+1)]`
-/

namespace A013653.P9737532376002659655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A013653.P9737532376002659655

/-!
# A013654: Positive nonsquare integers k such that each term of the regular continued fraction of sqrt(k) divides k.

The programs for A013654, the canonical program `A013654.P5500145216791519722` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013654 has offset 1).

The definition of A013654 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A013654.P5500145216791519722

`(n+1)*(n+2+(1+(-1)^(n+1))/2)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013654

/-- `(n+1)*(n+2+(1+(-1)^(n+1))/2)` -/
def P5500145216791519722.Spec : Prop :=
  ∀ n, P5500145216791519722.a n = (A013654 (n + 1) : ℚ)

end A013654

/-! ## A013654.P13474077576637628730

`∑[Δ[n*or(1, n)]+1]`
-/

namespace A013654.P13474077576637628730
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013654.P13474077576637628730

namespace A013654

/-- `∑[Δ[n*or(1, n)]+1]` -/
def P13474077576637628730.Spec : Prop :=
  ∀ n, P13474077576637628730.a n = A013654 (n + 1)

end A013654

/-! ## A013654.P3831987795071867509

`∑[∑[∑[ogf((2+6x)/(1+2x+x^2))]]]`
-/

namespace A013654.P3831987795071867509
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 6] [1, 2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013654.P3831987795071867509

namespace A013654

/-- `∑[∑[∑[ogf((2+6x)/(1+2x+x^2))]]]` -/
def P3831987795071867509.Spec : Prop :=
  ∀ n, P3831987795071867509.a n = A013654 (n + 1)

end A013654

/-! ## A013654.P4312038314627909998

`ogf((2+6x)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A013654.P4312038314627909998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 6] [1, -1, -2, 2, 1, -1] n

end

end A013654.P4312038314627909998

namespace A013654

/-- `ogf((2+6x)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P4312038314627909998.Spec : Prop :=
  ∀ n, P4312038314627909998.a n = A013654 (n + 1)

end A013654

/-! ## A013654.P11680780658127304340

`∏{d}[5-a(n-1), #+n]` with `a(0)=2`
-/

namespace A013654.P11680780658127304340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, (d + n)

end

end A013654.P11680780658127304340

namespace A013654

/-- `∏{d}[5-a(n-1), #+n]` -/
def P11680780658127304340.Spec : Prop :=
  ∀ n, (P11680780658127304340.a n : ℤ) = A013654 (n + 1)

end A013654

/-! ## A013654.P18407321305586206426

`∑[2*(n+2)-Δ[lcm(2, n)]]`
-/

namespace A013654.P18407321305586206426
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013654.P18407321305586206426

namespace A013654

/-- `∑[2*(n+2)-Δ[lcm(2, n)]]` -/
def P18407321305586206426.Spec : Prop :=
  ∀ n, P18407321305586206426.a n = A013654 (n + 1)

end A013654

/-! ## A013654.P13883908153474858393

`(n+2)²-gcd(n+2, and(1, n))`
-/

namespace A013654.P13883908153474858393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - (Nat.gcd (n + 2) (Nat.land 1 n) : ℤ)

end

end A013654.P13883908153474858393

namespace A013654

/-- `(n+2)²-gcd(n+2, and(1, n))` -/
def P13883908153474858393.Spec : Prop :=
  ∀ n, P13883908153474858393.a n = A013654 (n + 1)

end A013654

/-! ## A013654.P10201786851741198331

`∑[Δ[n*gcd(2, n)]+2*n+1]`
-/

namespace A013654.P10201786851741198331
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013654.P10201786851741198331

namespace A013654

/-- `∑[Δ[n*gcd(2, n)]+2*n+1]` -/
def P10201786851741198331.Spec : Prop :=
  ∀ n, P10201786851741198331.a n = A013654 (n + 1)

end A013654

/-! ## A013654.P6832785240610240664

`floor((n+1)*∑[2-a(n-1)])` with `a(0)=2, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A013654.P6832785240610240664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A013654.P6832785240610240664

namespace A013654

/-- `floor((n+1)*∑[2-a(n-1)])` -/
def P6832785240610240664.Spec : Prop :=
  ∀ n, P6832785240610240664.a n = A013654 (n + 1)

end A013654

/-! ## A013654.P8133610409220067021

`∑[a(n-2)+8]-a(n-1)` with `a(0)=2, a(1)=8`
-/

namespace A013654.P8133610409220067021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 8] fun n f1 =>
  f1 (n - 2) + 8

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A013654.P8133610409220067021

namespace A013654

/-- `∑[a(n-2)+8]-a(n-1)` -/
def P8133610409220067021.Spec : Prop :=
  ∀ n, P8133610409220067021.a n = A013654 (n + 1)

end A013654

/-! ## A013654.P17279085232624483614

`(n+2)²-(n+2)^((n+1)%2)`
-/

namespace A013654.P17279085232624483614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - ((n + 2) ^ ((n + 1) % 2) : ℤ)

end

end A013654.P17279085232624483614

namespace A013654

/-- `(n+2)²-(n+2)^((n+1)%2)` -/
def P17279085232624483614.Spec : Prop :=
  ∀ n, P17279085232624483614.a n = A013654 (n + 1)

end A013654

/-! ## A013654.P1977163153620667778

`(n+2)²-(n+2)^and(1, n+1)`
-/

namespace A013654.P1977163153620667778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - ((n + 2) ^ Nat.land 1 (n + 1) : ℤ)

end

end A013654.P1977163153620667778

namespace A013654

/-- `(n+2)²-(n+2)^and(1, n+1)` -/
def P1977163153620667778.Spec : Prop :=
  ∀ n, P1977163153620667778.a n = A013654 (n + 1)

end A013654

/-! ## A013654.P13879030663402530520

`(n+2)²-C(n+2, and(1, n+1))`
-/

namespace A013654.P13879030663402530520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - (Nat.choose (n + 2) (Nat.land 1 (n + 1)) : ℤ)

end

end A013654.P13879030663402530520

namespace A013654

/-- `(n+2)²-C(n+2, and(1, n+1))` -/
def P13879030663402530520.Spec : Prop :=
  ∀ n, P13879030663402530520.a n = A013654 (n + 1)

end A013654

/-! ## A013654.P13404652579111882532

`(n+2)²-C(n+2, or(1, n+1))`
-/

namespace A013654.P13404652579111882532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - (Nat.choose (n + 2) (Nat.lor 1 (n + 1)) : ℤ)

end

end A013654.P13404652579111882532

namespace A013654

/-- `(n+2)²-C(n+2, or(1, n+1))` -/
def P13404652579111882532.Spec : Prop :=
  ∀ n, P13404652579111882532.a n = A013654 (n + 1)

end A013654

/-! ## A013654.P1248971943481585003

`∑[∑[8-a(n-1)]-a(n-1)]` with `a(0)=2`
-/

namespace A013654.P1248971943481585003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  8 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013654.P1248971943481585003

namespace A013654

/-- `∑[∑[8-a(n-1)]-a(n-1)]` -/
def P1248971943481585003.Spec : Prop :=
  ∀ n, P1248971943481585003.a n = A013654 (n + 1)

end A013654

/-! ## A013654.P2614705833568244693

`gcd(1-n², (n+1)²)+(n+1)²`
-/

namespace A013654.P2614705833568244693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n ^ 2 : ℤ)) ((n + 1) ^ 2 : ℤ) + (n + 1) ^ 2

end

end A013654.P2614705833568244693

namespace A013654

/-- `gcd(1-n², (n+1)²)+(n+1)²` -/
def P2614705833568244693.Spec : Prop :=
  ∀ n, (P2614705833568244693.a n : ℤ) = A013654 (n + 1)

end A013654

/-! ## A013654.P12379315077201769256

`lcm(n+1, and(1, n))+lcm(n+1, n+2)`
-/

namespace A013654.P12379315077201769256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (Nat.land 1 n) + Nat.lcm (n + 1) (n + 2)

end

end A013654.P12379315077201769256

namespace A013654

/-- `lcm(n+1, and(1, n))+lcm(n+1, n+2)` -/
def P12379315077201769256.Spec : Prop :=
  ∀ n, (P12379315077201769256.a n : ℤ) = A013654 (n + 1)

end A013654

/-! ## A013654.P9730746921790343865

`(n+2)²-C(a(n-1)/n, n+1)` with `a(0)=2`
-/

namespace A013654.P9730746921790343865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ((n + 2) ^ 2 : ℤ) - (Nat.choose (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (n : ℚ))).toNat (n + 1) : ℤ)

end

end A013654.P9730746921790343865

namespace A013654

/-- `(n+2)²-C(a(n-1)/n, n+1)` -/
def P9730746921790343865.Spec : Prop :=
  ∀ n, P9730746921790343865.a n = A013654 (n + 1)

end A013654

/-! ## A013654.P14854957752517618181

`(gcd(n+3, n+1)+n)*(n+1)+n+1`
-/

namespace A013654.P14854957752517618181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 3) (n + 1) + n) * (n + 1) + (n + 1)

end

end A013654.P14854957752517618181

namespace A013654

/-- `(gcd(n+3, n+1)+n)*(n+1)+n+1` -/
def P14854957752517618181.Spec : Prop :=
  ∀ n, (P14854957752517618181.a n : ℤ) = A013654 (n + 1)

end A013654

/-! ## A013654.P11632643514505352499

`∑[2*A064455(n+1)]`
-/

namespace A013654.P11632643514505352499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013654.P11632643514505352499

namespace A013654

/-- `∑[2*A064455(n+1)]` -/
def P11632643514505352499.Spec : Prop :=
  ∀ n, P11632643514505352499.a n = A013654 (n + 1)

end A013654

/-!
# A013655: a(n) = F(n+1) + L(n), where F(n) and L(n) are Fibonacci and Lucas numbers, respectively.

The programs for A013655, the canonical program `A013655.P8111097168935384148` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013655 has offset 0).

The definition of A013655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A013655.P8111097168935384148

`a(n-1)+a(n-2)` with `a(0)=3, a(1)=2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013655

/-- `a(n-1)+a(n-2)` -/
def P8111097168935384148.Spec : Prop :=
  ∀ n, (P8111097168935384148.a n : ℤ) = A013655 n

theorem P8111097168935384148.correct : P8111097168935384148.Spec := by
  intro n
  simp only [A013655]

end A013655

/-! ## A013655.P14337794254683780065

`A000045(n+1)+A000032(n)`
-/

namespace A013655.P14337794254683780065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + A000032 n

end

end A013655.P14337794254683780065

namespace A013655

/-- `A000045(n+1)+A000032(n)` -/
def P14337794254683780065.Spec : Prop :=
  ∀ n, P14337794254683780065.a n = A013655 n

end A013655

/-! ## A013655.P12638872333766085104

`ogf((-3+x)/(-1+x+x^2))`
-/

namespace A013655.P12638872333766085104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1] [1, -1, -1] n

end

end A013655.P12638872333766085104

namespace A013655

/-- `ogf((-3+x)/(-1+x+x^2))` -/
def P12638872333766085104.Spec : Prop :=
  ∀ n, P12638872333766085104.a n = A013655 n

end A013655

/-! ## A013655.P6852372700167486170

`a(n-1)-floor(-a(n-2))` with `a(0)=3, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A013655.P6852372700167486170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A013655.P6852372700167486170

namespace A013655

/-- `a(n-1)-floor(-a(n-2))` -/
def P6852372700167486170.Spec : Prop :=
  ∀ n, P6852372700167486170.a n = A013655 n

end A013655

/-! ## A013655.P8417064053877666798

`a(n-1)-ceil(-a(n-2))` with `a(0)=3, a(1)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A013655.P8417064053877666798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A013655.P8417064053877666798

namespace A013655

/-- `a(n-1)-ceil(-a(n-2))` -/
def P8417064053877666798.Spec : Prop :=
  ∀ n, P8417064053877666798.a n = A013655 n

end A013655

/-! ## A013655.P7814676896816805169

`a(n-1)-round(-a(n-2))` with `a(0)=3, a(1)=2`

`round` is left out, it is the identity on integers.
-/

namespace A013655.P7814676896816805169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A013655.P7814676896816805169

namespace A013655

/-- `a(n-1)-round(-a(n-2))` -/
def P7814676896816805169.Spec : Prop :=
  ∀ n, P7814676896816805169.a n = A013655 n

end A013655

/-! ## A013655.P4144807087180847814

`abs(Δ[a(n-2)-a(n-1)])` with `a(0)=4, a(1)=1`
-/

namespace A013655.P4144807087180847814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A013655.P4144807087180847814

namespace A013655

/-- `abs(Δ[a(n-2)-a(n-1)])` -/
def P4144807087180847814.Spec : Prop :=
  ∀ n, P4144807087180847814.a n = A013655 n

end A013655

/-! ## A013655.P2144050582204172087

`a(n-1)-(char[1]-a(n-2))` with `a(0)=3, a(1)=2`
-/

namespace A013655.P2144050582204172087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))

end

end A013655.P2144050582204172087

namespace A013655

/-- `a(n-1)-(char[1]-a(n-2))` -/
def P2144050582204172087.Spec : Prop :=
  ∀ n, P2144050582204172087.a n = A013655 n

end A013655

/-! ## A013655.P5603253032231855183

`1-floor(1-a(n-1)-a(n-2))` with `a(0)=3, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A013655.P5603253032231855183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  1 - (1 - a (n - 1) - a (n - 2))

end

end A013655.P5603253032231855183

namespace A013655

/-- `1-floor(1-a(n-1)-a(n-2))` -/
def P5603253032231855183.Spec : Prop :=
  ∀ n, P5603253032231855183.a n = A013655 n

end A013655

/-! ## A013655.P8453203326210917168

`2-(4/2-a(n-1)-a(n-2))` with `a(0)=3, a(1)=2`
-/

namespace A013655.P8453203326210917168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 2] fun n a =>
  2 - ((4 : ℚ) / 2 - a (n - 1) - a (n - 2))

end

end A013655.P8453203326210917168

namespace A013655

/-- `2-(4/2-a(n-1)-a(n-2))` -/
def P8453203326210917168.Spec : Prop :=
  ∀ n, P8453203326210917168.a n = (A013655 n : ℚ)

end A013655

/-! ## A013655.P15852890261006773026

`A013915(n)-n`
-/

namespace A013655.P15852890261006773026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013915 n - (n : ℤ)

end

end A013655.P15852890261006773026

namespace A013655

/-- `A013915(n)-n` -/
def P15852890261006773026.Spec : Prop :=
  ∀ n, P15852890261006773026.a n = A013655 n

theorem P15852890261006773026.correct : P15852890261006773026.Spec := by
  intro n
  simp only [A013655, Nat.add_sub_cancel, A013655.P15852890261006773026.a, A013655.P8111097168935384148.a, A013915, A013915.P5526775988631183026.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013655

/-! ## A013655.P6579032182156485052

`abs(A396201(n+1))`
-/

namespace A013655.P6579032182156485052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A396201 (n + 1)|

end

end A013655.P6579032182156485052

namespace A013655

/-- `abs(A396201(n+1))` -/
def P6579032182156485052.Spec : Prop :=
  ∀ n, P6579032182156485052.a n = A013655 n

end A013655

/-! ## A013655.P12125442929996148820

`A187890(n+2)-1`
-/

namespace A013655.P12125442929996148820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187890 (n + 2) - 1

end

end A013655.P12125442929996148820

namespace A013655

/-- `A187890(n+2)-1` -/
def P12125442929996148820.Spec : Prop :=
  ∀ n, P12125442929996148820.a n = A013655 n

end A013655

/-! ## A013655.P6507603116853124594

`A052959(n)+A014217(n)`
-/

namespace A013655.P6507603116853124594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052959 n + A014217 n

end

end A013655.P6507603116853124594

namespace A013655

/-- `A052959(n)+A014217(n)` -/
def P6507603116853124594.Spec : Prop :=
  ∀ n, P6507603116853124594.a n = A013655 n

end A013655

/-! ## A013655.P4810300949696279682

`A104449(n)+A000045(n)`
-/

namespace A013655.P4810300949696279682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 n + A000045 n

end

end A013655.P4810300949696279682

namespace A013655

/-- `A104449(n)+A000045(n)` -/
def P4810300949696279682.Spec : Prop :=
  ∀ n, P4810300949696279682.a n = A013655 n

end A013655

/-! ## A013655.P4476044623322738985

`A152163(n)+A020695(n)`
-/

namespace A013655.P4476044623322738985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A020695 n

end

end A013655.P4476044623322738985

namespace A013655

/-- `A152163(n)+A020695(n)` -/
def P4476044623322738985.Spec : Prop :=
  ∀ n, P4476044623322738985.a n = A013655 n

end A013655

/-! ## A013655.P9033514094069915996

`A000032(n)+∑[A212804(n)]`
-/

namespace A013655.P9033514094069915996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013655.P9033514094069915996

namespace A013655

/-- `A000032(n)+∑[A212804(n)]` -/
def P9033514094069915996.Spec : Prop :=
  ∀ n, P9033514094069915996.a n = A013655 n

end A013655

/-! ## A013655.P2281903635069057283

`A001612(n)+A000071(n+1)`
-/

namespace A013655.P2281903635069057283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n + A000071 (n + 1)

end

end A013655.P2281903635069057283

namespace A013655

/-- `A001612(n)+A000071(n+1)` -/
def P2281903635069057283.Spec : Prop :=
  ∀ n, P2281903635069057283.a n = A013655 n

end A013655

/-! ## A013655.P4770125972467005476

`A098600(n)+A007492(n+1)`
-/

namespace A013655.P4770125972467005476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098600 n + A007492 (n + 1)

end

end A013655.P4770125972467005476

namespace A013655

/-- `A098600(n)+A007492(n+1)` -/
def P4770125972467005476.Spec : Prop :=
  ∀ n, P4770125972467005476.a n = A013655 n

end A013655

/-! ## A013655.P5166784892843577706

`A099925(n)+A008346(n+1)`
-/

namespace A013655.P5166784892843577706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099925 n + A008346 (n + 1)

end

end A013655.P5166784892843577706

namespace A013655

/-- `A099925(n)+A008346(n+1)` -/
def P5166784892843577706.Spec : Prop :=
  ∀ n, P5166784892843577706.a n = A013655 n

end A013655

/-!
# A013656: a(n) = n*(9*n-2).

The programs for A013656, the canonical program `A013656.P11559324039876728310` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013656 has offset 0).

The definition of A013656 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(9*n-2)` (program `A013656.P11559324039876728310`, by `A013656.P11559324039876728310.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013656.P11559324039876728310

`n*(9*n-2)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013656

/-- `n*(9*n-2)` -/
def P11559324039876728310.Spec : Prop :=
  ∀ n, P11559324039876728310.a n = A013656 n

theorem P11559324039876728310.correct : P11559324039876728310.Spec := by
  intro n
  simp only [A013656]

end A013656

/-! ## A013656.P3887370042102511605

`C(4*n, 2)+n²`
-/

namespace A013656.P3887370042102511605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (4 * n) 2 + n ^ 2

end

end A013656.P3887370042102511605

namespace A013656

/-- `C(4*n, 2)+n²` -/
def P3887370042102511605.Spec : Prop :=
  ∀ n, (P3887370042102511605.a n : ℤ) = A013656 n

theorem P3887370042102511605.correct : P3887370042102511605.Spec := by
  intro n
  simp only [A013656, Nat.add_sub_cancel, A013656.P3887370042102511605.a, A013656.P11559324039876728310.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A013656

/-! ## A013656.P12053749376588953130

`∑[a(n-1)+18]` with `a(0)=0, a(1)=7`
-/

namespace A013656.P12053749376588953130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013656.P12053749376588953130

namespace A013656

/-- `∑[a(n-1)+18]` -/
def P12053749376588953130.Spec : Prop :=
  ∀ n, (P12053749376588953130.a n : ℤ) = A013656 n

end A013656

/-! ## A013656.P13176527474442706610

`2*C(3*n, 2)+n`
-/

namespace A013656.P13176527474442706610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (3 * n) 2 + n

end

end A013656.P13176527474442706610

namespace A013656

/-- `2*C(3*n, 2)+n` -/
def P13176527474442706610.Spec : Prop :=
  ∀ n, (P13176527474442706610.a n : ℤ) = A013656 n

theorem P13176527474442706610.correct : P13176527474442706610.Spec := by
  intro n
  simp only [A013656, Nat.add_sub_cancel, A013656.P13176527474442706610.a, A013656.P11559324039876728310.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A013656

/-! ## A013656.P2018264559721706058

`11-∑[a(n-1)-18]` with `a(0)=11`
-/

namespace A013656.P2018264559721706058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [11] fun n f1 =>
  f1 (n - 1) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013656.P2018264559721706058

namespace A013656

/-- `11-∑[a(n-1)-18]` -/
def P2018264559721706058.Spec : Prop :=
  ∀ n, P2018264559721706058.a n = A013656 n

end A013656

/-! ## A013656.P10271560643769703293

`∑[ogf((6x+10x^2)/(1-2x+x^2))]+n²`
-/

namespace A013656.P10271560643769703293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 10] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A013656.P10271560643769703293

namespace A013656

/-- `∑[ogf((6x+10x^2)/(1-2x+x^2))]+n²` -/
def P10271560643769703293.Spec : Prop :=
  ∀ n, P10271560643769703293.a n = A013656 n

end A013656

/-! ## A013656.P6547654381936314542

`3*∑[ogf((2x+4x^2)/(1-2x+x^2))]+n`
-/

namespace A013656.P6547654381936314542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A013656.P6547654381936314542

namespace A013656

/-- `3*∑[ogf((2x+4x^2)/(1-2x+x^2))]+n` -/
def P6547654381936314542.Spec : Prop :=
  ∀ n, P6547654381936314542.a n = A013656 n

end A013656

/-! ## A013656.P9159594270493763683

`∑[ogf((9x+9x^2)/(1-2x+x^2))]-n-n`
-/

namespace A013656.P9159594270493763683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 9, 9] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) - (n : ℤ)

end

end A013656.P9159594270493763683

namespace A013656

/-- `∑[ogf((9x+9x^2)/(1-2x+x^2))]-n-n` -/
def P9159594270493763683.Spec : Prop :=
  ∀ n, P9159594270493763683.a n = A013656 n

end A013656

/-! ## A013656.P11063035074886581233

`A152743(n)+n`
-/

namespace A013656.P11063035074886581233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152743 n + (n : ℤ)

end

end A013656.P11063035074886581233

namespace A013656

/-- `A152743(n)+n` -/
def P11063035074886581233.Spec : Prop :=
  ∀ n, P11063035074886581233.a n = A013656 n

theorem P11063035074886581233.correct : P11063035074886581233.Spec := by
  intro n
  simp only [A013656, Nat.add_sub_cancel, A013656.P11063035074886581233.a, A013656.P11559324039876728310.a, A152743, A152743.P11194544778889005777.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013656

/-! ## A013656.P2558936619137631344

`A014635(n)+n²`
-/

namespace A013656.P2558936619137631344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014635 n + (n ^ 2 : ℤ)

end

end A013656.P2558936619137631344

namespace A013656

/-- `A014635(n)+n²` -/
def P2558936619137631344.Spec : Prop :=
  ∀ n, P2558936619137631344.a n = A013656 n

theorem P2558936619137631344.correct : P2558936619137631344.Spec := by
  intro n
  simp only [A013656, Nat.add_sub_cancel, A013656.P2558936619137631344.a, A013656.P11559324039876728310.a, A014635, A014635.P12617269699985302371.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013656

/-! ## A013656.P15043018008629137436

`2*A062741(n)+n`
-/

namespace A013656.P15043018008629137436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062741 n + (n : ℤ)

end

end A013656.P15043018008629137436

namespace A013656

/-- `2*A062741(n)+n` -/
def P15043018008629137436.Spec : Prop :=
  ∀ n, P15043018008629137436.a n = A013656 n

end A013656

/-! ## A013656.P15032264598045658245

`A016766(n)-2*n`
-/

namespace A013656.P15032264598045658245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016766 n - (2 * n : ℤ)

end

end A013656.P15032264598045658245

namespace A013656

/-- `A016766(n)-2*n` -/
def P15032264598045658245.Spec : Prop :=
  ∀ n, P15032264598045658245.a n = A013656 n

theorem P15032264598045658245.correct : P15032264598045658245.Spec := by
  intro n
  simp only [A013656, Nat.add_sub_cancel, A013656.P15032264598045658245.a, A013656.P11559324039876728310.a, A016766, A016766.P3834823630241441293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013656

/-! ## A013656.P12869042118324127058

`2*A022266(n)-n`
-/

namespace A013656.P12869042118324127058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022266 n - (n : ℤ)

end

end A013656.P12869042118324127058

namespace A013656

/-- `2*A022266(n)-n` -/
def P12869042118324127058.Spec : Prop :=
  ∀ n, P12869042118324127058.a n = A013656 n

end A013656

/-! ## A013656.P7232169048702374520

`3*A049450(n)+n`
-/

namespace A013656.P7232169048702374520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A049450 n + (n : ℤ)

end

end A013656.P7232169048702374520

namespace A013656

/-- `3*A049450(n)+n` -/
def P7232169048702374520.Spec : Prop :=
  ∀ n, P7232169048702374520.a n = A013656 n

theorem P7232169048702374520.correct : P7232169048702374520.Spec := by
  intro n
  simp only [A013656, Nat.add_sub_cancel, A013656.P7232169048702374520.a, A013656.P11559324039876728310.a, A049450, A049450.P1815257678583562472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013656

/-! ## A013656.P13604126887497858855

`A153792(n)/2+n`
-/

namespace A013656.P13604126887497858855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153792 n : ℚ) / 2 + (n : ℚ)

end

end A013656.P13604126887497858855

namespace A013656

/-- `A153792(n)/2+n` -/
def P13604126887497858855.Spec : Prop :=
  ∀ n, P13604126887497858855.a n = (A013656 n : ℚ)

theorem P13604126887497858855.correct : P13604126887497858855.Spec := by
  intro n
  simp only [A013656, Nat.add_sub_cancel, A013656.P13604126887497858855.a, A013656.P11559324039876728310.a, A153792, A153792.P13758873412561183293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013656

/-! ## A013656.P8079348984160811714

`A152751(n)+4*n`
-/

namespace A013656.P8079348984160811714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152751 n + (4 * n : ℤ)

end

end A013656.P8079348984160811714

namespace A013656

/-- `A152751(n)+4*n` -/
def P8079348984160811714.Spec : Prop :=
  ∀ n, P8079348984160811714.a n = A013656 n

theorem P8079348984160811714.correct : P8079348984160811714.Spec := by
  intro n
  simp only [A013656, Nat.add_sub_cancel, A013656.P8079348984160811714.a, A013656.P11559324039876728310.a, A152751, A152751.P17200692832550794912.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013656

/-! ## A013656.P542582910625294432

`A147296(n)-4*n`
-/

namespace A013656.P542582910625294432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147296 n - (4 * n : ℤ)

end

end A013656.P542582910625294432

namespace A013656

/-- `A147296(n)-4*n` -/
def P542582910625294432.Spec : Prop :=
  ∀ n, P542582910625294432.a n = A013656 n

theorem P542582910625294432.correct : P542582910625294432.Spec := by
  intro n
  simp only [A013656, Nat.add_sub_cancel, A013656.P542582910625294432.a, A013656.P11559324039876728310.a, A147296, A147296.P3605709138452781436.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013656

/-! ## A013656.P5836121735429341922

`A152995(n)+5*n`
-/

namespace A013656.P5836121735429341922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152995 n + (5 * n : ℤ)

end

end A013656.P5836121735429341922

namespace A013656

/-- `A152995(n)+5*n` -/
def P5836121735429341922.Spec : Prop :=
  ∀ n, P5836121735429341922.a n = A013656 n

theorem P5836121735429341922.correct : P5836121735429341922.Spec := by
  intro n
  simp only [A013656, Nat.add_sub_cancel, A013656.P5836121735429341922.a, A013656.P11559324039876728310.a, A152995, A152995.P15675158223399843988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013656

/-! ## A013656.P6074506428757720250

`A045945(n)-5*n`
-/

namespace A013656.P6074506428757720250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045945 n - (5 * n : ℤ)

end

end A013656.P6074506428757720250

namespace A013656

/-- `A045945(n)-5*n` -/
def P6074506428757720250.Spec : Prop :=
  ∀ n, P6074506428757720250.a n = A013656 n

theorem P6074506428757720250.correct : P6074506428757720250.Spec := by
  intro n
  simp only [A013656, Nat.add_sub_cancel, A013656.P6074506428757720250.a, A013656.P11559324039876728310.a, A045945, A045945.P14001929662270589613.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013656

/-! ## A013656.P9261185741681552612

`A247792(n)-Δ[n²]`
-/

namespace A013656.P9261185741681552612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247792 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A013656.P9261185741681552612

namespace A013656

/-- `A247792(n)-Δ[n²]` -/
def P9261185741681552612.Spec : Prop :=
  ∀ n, P9261185741681552612.a n = A013656 n

theorem P9261185741681552612.correct : P9261185741681552612.Spec := by
  intro n
  simp only [A013656, Nat.add_sub_cancel, A013656.P9261185741681552612.f1, A013656.P9261185741681552612.a, A013656.P11559324039876728310.a, A247792, A247792.P16742175569055729181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013656

/-!
# A013658: Discriminants of imaginary quadratic fields with class number 4 (negated).

The programs for A013658, there is no canonical definition to state claims against.
-/

/-! ## A013658.P8428889947635691351

`eq[4, A191410(A028310(n))]`
-/

namespace A013658.P8428889947635691351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A013658.P8428889947635691351

/-! ## A013658.P4826371253427745141

`A020725(eq[4, A191410(n+1)])`
-/

namespace A013658.P4826371253427745141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A013658.P4826371253427745141

/-! ## A013658.P5693105200953307570

`A056699(eq[4, A191410(n+1)])`
-/

namespace A013658.P5693105200953307570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A013658.P5693105200953307570

/-! ## A013658.P12853799246769542949

`A063660(eq[4, A191410(n+1)])`
-/

namespace A013658.P12853799246769542949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A013658.P12853799246769542949

/-! ## A013658.P14623978544682082785

`A153152(eq[4, A191410(n+1)])`
-/

namespace A013658.P14623978544682082785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A013658.P14623978544682082785

/-! ## A013658.P16889562145577357933

`eq[4, A191410(A123108(2*n))]`
-/

namespace A013658.P16889562145577357933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A013658.P16889562145577357933

/-! ## A013658.P5982974441437179574

`A003657(eq[4, A006641(n+1)]+1)`
-/

namespace A013658.P5982974441437179574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003657 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A013658.P5982974441437179574

/-! ## A013658.P17082656575469161814

`A011760(eq[2, A191410(n+1)-2])`
-/

namespace A013658.P17082656575469161814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A013658.P17082656575469161814

/-! ## A013658.P11375811996869011792

`A065475(eq[2, A191410(n+1)-2])`
-/

namespace A013658.P11375811996869011792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A013658.P11375811996869011792

/-! ## A013658.P2706855746128173292

`A011760(eq[2, A191410(n+1)/2])`
-/

namespace A013658.P2706855746128173292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191410 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A013658.P2706855746128173292

/-!
# A013697: Second term in continued fraction for zeta(n).

The programs for A013697, there is no canonical definition to state claims against.
-/

/-! ## A013697.P8005021300857108592

`∪[A190297(n+1), A190584(n+1)]`
-/

namespace A013697.P8005021300857108592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A013697.P8005021300857108592

/-! ## A013697.P4622584234314661149

`A004277(A038360(n+3))-A171905(n+1)`
-/

namespace A013697.P4622584234314661149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A038360 (n + 3)).toNat - A171905 (n + 1)

end

end A013697.P4622584234314661149

/-! ## A013697.P17372018265506021127

`A317137(A372239(n))`
-/

namespace A013697.P17372018265506021127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317137 (A372239 n).toNat

end

end A013697.P17372018265506021127

/-!
# A013698: a(n) = binomial(3*n+2, n-1).

The programs for A013698, the canonical program `A013698.P15280929727491949304` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013698 has offset 1).

The definition of A013698 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(3*(n+1)+2, n)` (program `A013698.P15280929727491949304`, by `A013698.P15280929727491949304.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013698.P15280929727491949304

`C(3*(n+1)+2, n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013698

/-- `C(3*(n+1)+2, n)` -/
def P15280929727491949304.Spec : Prop :=
  ∀ n, (P15280929727491949304.a n : ℤ) = A013698 (n + 1)

theorem P15280929727491949304.correct : P15280929727491949304.Spec := by
  intro n
  simp only [A013698, Nat.add_sub_cancel]

end A013698

/-! ## A013698.P1407703900620963464

`A262394(n+2)-A001764(n+2)`
-/

namespace A013698.P1407703900620963464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262394 (n + 2) - A001764 (n + 2)

end

end A013698.P1407703900620963464

namespace A013698

/-- `A262394(n+2)-A001764(n+2)` -/
def P1407703900620963464.Spec : Prop :=
  ∀ n, P1407703900620963464.a n = A013698 (n + 1)

end A013698

/-! ## A013698.P4899792754956159623

`A004319(n+2)-A025174(n+2)`
-/

namespace A013698.P4899792754956159623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004319 (n + 2) - A025174 (n + 2)

end

end A013698.P4899792754956159623

namespace A013698

/-- `A004319(n+2)-A025174(n+2)` -/
def P4899792754956159623.Spec : Prop :=
  ∀ n, P4899792754956159623.a n = A013698 (n + 1)

end A013698

/-! ## A013698.P16601887689739991421

`A045721(n+2)-A227726(n+2)`
-/

namespace A013698.P16601887689739991421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045721 (n + 2) - A227726 (n + 2)

end

end A013698.P16601887689739991421

namespace A013698

/-- `A045721(n+2)-A227726(n+2)` -/
def P16601887689739991421.Spec : Prop :=
  ∀ n, P16601887689739991421.a n = A013698 (n + 1)

end A013698

/-! ## A013698.P17567402091325475047

`A004319(n+2)-A127040(2*(n+1))`
-/

namespace A013698.P17567402091325475047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004319 (n + 2) - A127040 (2 * (n + 1))

end

end A013698.P17567402091325475047

namespace A013698

/-- `A004319(n+2)-A127040(2*(n+1))` -/
def P17567402091325475047.Spec : Prop :=
  ∀ n, P17567402091325475047.a n = A013698 (n + 1)

end A013698

/-! ## A013698.P3077264269495926971

`A004319(n+2)-A099578(2*n+3)`
-/

namespace A013698.P3077264269495926971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004319 (n + 2) - A099578 (2 * n + 3)

end

end A013698.P3077264269495926971

namespace A013698

/-- `A004319(n+2)-A099578(2*n+3)` -/
def P3077264269495926971.Spec : Prop :=
  ∀ n, P3077264269495926971.a n = A013698 (n + 1)

end A013698

/-! ## A013698.P1238456927845959183

`A127040(2*n+3)-A025174(n+2)`
-/

namespace A013698.P1238456927845959183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127040 (2 * n + 3) - A025174 (n + 2)

end

end A013698.P1238456927845959183

namespace A013698

/-- `A127040(2*n+3)-A025174(n+2)` -/
def P1238456927845959183.Spec : Prop :=
  ∀ n, P1238456927845959183.a n = A013698 (n + 1)

end A013698

/-! ## A013698.P12228385457425210951

`A127040(2*n+3)-A127040(2*(n+1))`
-/

namespace A013698.P12228385457425210951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127040 (2 * n + 3) - A127040 (2 * (n + 1))

end

end A013698.P12228385457425210951

namespace A013698

/-- `A127040(2*n+3)-A127040(2*(n+1))` -/
def P12228385457425210951.Spec : Prop :=
  ∀ n, P12228385457425210951.a n = A013698 (n + 1)

end A013698

/-! ## A013698.P6935338520818955992

`A264772(A000096(n+4)+6)`
-/

namespace A013698.P6935338520818955992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264772 (A000096 (n + 4) + 6).toNat

end

end A013698.P6935338520818955992

namespace A013698

/-- `A264772(A000096(n+4)+6)` -/
def P6935338520818955992.Spec : Prop :=
  ∀ n, P6935338520818955992.a n = A013698 (n + 1)

end A013698

/-! ## A013698.P10327726163554611250

`A243662(∑[n+1]+2)`
-/

namespace A013698.P10327726163554611250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243662 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A013698.P10327726163554611250

namespace A013698

/-- `A243662(∑[n+1]+2)` -/
def P10327726163554611250.Spec : Prop :=
  ∀ n, P10327726163554611250.a n = A013698 (n + 1)

end A013698

/-! ## A013698.P270518923601275533

`record[gcd(1-A323224(n), A243662(n+1))]`
-/

namespace A013698.P270518923601275533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A323224 n) (A243662 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013698.P270518923601275533

namespace A013698

/-- `record[gcd(1-A323224(n), A243662(n+1))]` -/
def P270518923601275533.Spec : Prop :=
  ∀ n, (P270518923601275533.a n : ℤ) = A013698 (n + 1)

end A013698

/-! ## A013698.P9296965358434753895

`record[gcd(A243662(n+3), A323224(n+1))]`
-/

namespace A013698.P9296965358434753895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A243662 (n + 3)) (A323224 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013698.P9296965358434753895

namespace A013698

/-- `record[gcd(A243662(n+3), A323224(n+1))]` -/
def P9296965358434753895.Spec : Prop :=
  ∀ n, (P9296965358434753895.a n : ℤ) = A013698 (n + 1)

end A013698

/-! ## A013698.P616016259675449947

`record[C(abs(1-3*n), Δ[n²])]`
-/

namespace A013698.P616016259675449947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |1 - (3 * n : ℤ)|.toNat ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013698.P616016259675449947

namespace A013698

/-- `record[C(abs(1-3*n), Δ[n²])]` -/
def P616016259675449947.Spec : Prop :=
  ∀ n, (P616016259675449947.a n : ℤ) = A013698 (n + 1)

end A013698

/-! ## A013698.P17215800270880755503

`A102537(∑[n+2])`
-/

namespace A013698.P17215800270880755503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102537 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A013698.P17215800270880755503

namespace A013698

/-- `A102537(∑[n+2])` -/
def P17215800270880755503.Spec : Prop :=
  ∀ n, P17215800270880755503.a n = A013698 (n + 1)

end A013698

/-! ## A013698.P8360859490637629727

`record[A102537(A254047(n+2)-1)]`
-/

namespace A013698.P8360859490637629727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102537 (A254047 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013698.P8360859490637629727

namespace A013698

/-- `record[A102537(A254047(n+2)-1)]` -/
def P8360859490637629727.Spec : Prop :=
  ∀ n, P8360859490637629727.a n = A013698 (n + 1)

end A013698

/-!
# A013699: Degree of variety K_{2,n}^2.

The programs for A013699, there is no canonical definition to state claims against.
-/

/-! ## A013699.P4057110046366130021

`record[A080934(∑[n]+(2*n)²)]`
-/

namespace A013699.P4057110046366130021
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 (∑ j ∈ Finset.range (n + 1), f2 j + (2 * n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013699.P4057110046366130021

/-! ## A013699.P1630576825780566630

`A080934(A022267(n+2))`
-/

namespace A013699.P1630576825780566630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 (A022267 (n + 2)).toNat

end

end A013699.P1630576825780566630

/-! ## A013699.P16856916774406158470

`A080934(eq[7, A286156(n+1)])`
-/

namespace A013699.P16856916774406158470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A013699.P16856916774406158470

/-! ## A013699.P8219636146252817927

`A082635(A167614(n+1))`
-/

namespace A013699.P8219636146252817927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082635 (A167614 (n + 1)).toNat

end

end A013699.P8219636146252817927

