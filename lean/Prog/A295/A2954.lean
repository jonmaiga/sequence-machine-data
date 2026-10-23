import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A295400: Numbers k such that 3*10^k - 23 is prime.

The programs for A295400, there is no canonical definition to state claims against.
-/

/-! ## A295400.P18212269002348999164

`A319995(A054487(n))+A090748(n+1)`
-/

namespace A295400.P18212269002348999164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319995 (A054487 n).toNat + A090748 (n + 1)

end

end A295400.P18212269002348999164

/-!
# A295402: Numbers k such that (28*10^k + 701)/9 is prime.

The programs for A295402, there is no canonical definition to state claims against.
-/

/-! ## A295402.P16630986493912174168

`eq[A001065(2*n+3), A325466(A320509(n+2))]`
-/

namespace A295402.P16630986493912174168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325466 (A320509 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295402.P16630986493912174168

/-!
# A295403: Numbers k such that (41*10^k - 383)/9 is prime.

The programs for A295403, there is no canonical definition to state claims against.
-/

/-! ## A295403.P9876347009071497622

`A061091(A061956(n+1))`
-/

namespace A295403.P9876347009071497622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061091 (A061956 (n + 1)).toNat

end

end A295403.P9876347009071497622

/-! ## A295403.P1721561731921595598

`A318317(A066380(n))%A331943(n+5)`
-/

namespace A295403.P1721561731921595598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318317 (A066380 n).toNat) (A331943 (n + 5))

end

end A295403.P1721561731921595598

/-!
# A295405: a(n) = 1 if n^2+1 is prime, 0 otherwise.

The programs for A295405, the canonical program `A295405.P6236039691485213771` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295405 has offset 1).

The definition of A295405 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A295405.P6236039691485213771

`A010051(A002522(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A295405

/-- `A010051(A002522(n+1))` -/
def P6236039691485213771.Spec : Prop :=
  ∀ n, P6236039691485213771.a n = A295405 (n + 1)

theorem P6236039691485213771.correct : P6236039691485213771.Spec := by
  intro n
  simp only [A295405, Nat.add_sub_cancel]

end A295405

/-! ## A295405.P5166129954834015048

`char[A089593(n+1)]`
-/

namespace A295405.P5166129954834015048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A295405.P5166129954834015048

namespace A295405

/-- `char[A089593(n+1)]` -/
def P5166129954834015048.Spec : Prop :=
  ∀ n, (P5166129954834015048.a n : ℤ) = A295405 (n + 1)

end A295405

/-! ## A295405.P105940205396094448

`C(2, A193432(n+1))`
-/

namespace A295405.P105940205396094448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A193432 (n + 1)).toNat

end

end A295405.P105940205396094448

namespace A295405

/-- `C(2, A193432(n+1))` -/
def P105940205396094448.Spec : Prop :=
  ∀ n, (P105940205396094448.a n : ℤ) = A295405 (n + 1)

end A295405

/-! ## A295405.P2143694548487682519

`C(2, A252096(n+1))`
-/

namespace A295405.P2143694548487682519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A252096 (n + 1)).toNat

end

end A295405.P2143694548487682519

namespace A295405

/-- `C(2, A252096(n+1))` -/
def P2143694548487682519.Spec : Prop :=
  ∀ n, (P2143694548487682519.a n : ℤ) = A295405 (n + 1)

end A295405

/-! ## A295405.P11110847792934503326

`C(2, A278162(n+1))`
-/

namespace A295405.P11110847792934503326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A278162 (n + 1)).toNat

end

end A295405.P11110847792934503326

namespace A295405

/-- `C(2, A278162(n+1))` -/
def P11110847792934503326.Spec : Prop :=
  ∀ n, (P11110847792934503326.a n : ℤ) = A295405 (n + 1)

end A295405

/-! ## A295405.P8757749428746665783

`round(acot(A053000(n+1)))`
-/

namespace A295405.P8757749428746665783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A053000 (n + 1) : ℝ))

end

end A295405.P8757749428746665783

namespace A295405

/-- `round(acot(A053000(n+1)))` -/
def P8757749428746665783.Spec : Prop :=
  ∀ n, P8757749428746665783.a n = A295405 (n + 1)

end A295405

/-! ## A295405.P5001991599012944923

`round(acot(A193330(n+1)))`
-/

namespace A295405.P5001991599012944923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A193330 (n + 1) : ℝ))

end

end A295405.P5001991599012944923

namespace A295405

/-- `round(acot(A193330(n+1)))` -/
def P5001991599012944923.Spec : Prop :=
  ∀ n, P5001991599012944923.a n = A295405 (n + 1)

end A295405

/-! ## A295405.P14626113109853474304

`floor(1/A035092(n+1))`
-/

namespace A295405.P14626113109853474304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A035092 (n + 1) : ℚ)⌋

end

end A295405.P14626113109853474304

namespace A295405

/-- `floor(1/A035092(n+1))` -/
def P14626113109853474304.Spec : Prop :=
  ∀ n, P14626113109853474304.a n = A295405 (n + 1)

end A295405

/-! ## A295405.P8568607208659855771

`floor(1/A060272(n+1))`
-/

namespace A295405.P8568607208659855771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A060272 (n + 1) : ℚ)⌋

end

end A295405.P8568607208659855771

namespace A295405

/-- `floor(1/A060272(n+1))` -/
def P8568607208659855771.Spec : Prop :=
  ∀ n, P8568607208659855771.a n = A295405 (n + 1)

end A295405

/-! ## A295405.P9764427215167036909

`floor(1/A069003(n+1))`
-/

namespace A295405.P9764427215167036909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A069003 (n + 1) : ℚ)⌋

end

end A295405.P9764427215167036909

namespace A295405

/-- `floor(1/A069003(n+1))` -/
def P9764427215167036909.Spec : Prop :=
  ∀ n, P9764427215167036909.a n = A295405 (n + 1)

end A295405

/-! ## A295405.P677828096629989094

`floor(1/A128428(n+1))`
-/

namespace A295405.P677828096629989094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A128428 (n + 1) : ℚ)⌋

end

end A295405.P677828096629989094

namespace A295405

/-- `floor(1/A128428(n+1))` -/
def P677828096629989094.Spec : Prop :=
  ∀ n, P677828096629989094.a n = A295405 (n + 1)

end A295405

/-! ## A295405.P16308802490463669768

`floor(1/A147810(n+1))`
-/

namespace A295405.P16308802490463669768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A147810 (n + 1) : ℚ)⌋

end

end A295405.P16308802490463669768

namespace A295405

/-- `floor(1/A147810(n+1))` -/
def P16308802490463669768.Spec : Prop :=
  ∀ n, P16308802490463669768.a n = A295405 (n + 1)

end A295405

/-! ## A295405.P16444729078419218527

`floor(1/A152823(n+1))`
-/

namespace A295405.P16444729078419218527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A152823 (n + 1) : ℚ)⌋

end

end A295405.P16444729078419218527

namespace A295405

/-- `floor(1/A152823(n+1))` -/
def P16444729078419218527.Spec : Prop :=
  ∀ n, P16444729078419218527.a n = A295405 (n + 1)

end A295405

/-! ## A295405.P4057153219714689168

`floor(1/A194039(n+1))`
-/

namespace A295405.P4057153219714689168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A194039 (n + 1) : ℚ)⌋

end

end A295405.P4057153219714689168

namespace A295405

/-- `floor(1/A194039(n+1))` -/
def P4057153219714689168.Spec : Prop :=
  ∀ n, P4057153219714689168.a n = A295405 (n + 1)

end A295405

/-! ## A295405.P12678714314097748528

`char[A005574(n+1)-1]`
-/

namespace A295405.P12678714314097748528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A295405.P12678714314097748528

namespace A295405

/-- `char[A005574(n+1)-1]` -/
def P12678714314097748528.Spec : Prop :=
  ∀ n, (P12678714314097748528.a n : ℤ) = A295405 (n + 1)

end A295405

/-! ## A295405.P4494171315396126474

`C(A247339(n+1), n+1)`
-/

namespace A295405.P4494171315396126474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A247339 (n + 1)).toNat (n + 1)

end

end A295405.P4494171315396126474

namespace A295405

/-- `C(A247339(n+1), n+1)` -/
def P4494171315396126474.Spec : Prop :=
  ∀ n, (P4494171315396126474.a n : ℤ) = A295405 (n + 1)

end A295405

/-! ## A295405.P14226169101378467721

`A000007(A147809(n+1))`
-/

namespace A295405.P14226169101378467721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A147809 (n + 1)).toNat

end

end A295405.P14226169101378467721

namespace A295405

/-- `A000007(A147809(n+1))` -/
def P14226169101378467721.Spec : Prop :=
  ∀ n, P14226169101378467721.a n = A295405 (n + 1)

end A295405

/-! ## A295405.P10825238146732419958

`A049084(A193432(n+1))`
-/

namespace A295405.P10825238146732419958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A193432 (n + 1)).toNat

end

end A295405.P10825238146732419958

namespace A295405

/-- `A049084(A193432(n+1))` -/
def P10825238146732419958.Spec : Prop :=
  ∀ n, P10825238146732419958.a n = A295405 (n + 1)

end A295405

/-! ## A295405.P16696646615611870315

`A000007(A249122(n+1))`
-/

namespace A295405.P16696646615611870315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A249122 (n + 1)).toNat

end

end A295405.P16696646615611870315

namespace A295405

/-- `A000007(A249122(n+1))` -/
def P16696646615611870315.Spec : Prop :=
  ∀ n, P16696646615611870315.a n = A295405 (n + 1)

end A295405

/-! ## A295405.P14106311583993774579

`A000007(A261609(n+1))`
-/

namespace A295405.P14106311583993774579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A261609 (n + 1)).toNat

end

end A295405.P14106311583993774579

namespace A295405

/-- `A000007(A261609(n+1))` -/
def P14106311583993774579.Spec : Prop :=
  ∀ n, P14106311583993774579.a n = A295405 (n + 1)

end A295405

/-!
# A295410: Number of n X n 0..1 arrays with each 1 horizontally or vertically adjacent to 1, 2 or 3 1's.

The programs for A295410, there is no canonical definition to state claims against.
-/

/-! ## A295410.P13412088189785836754

`A295416(∑[4*n]+1)`
-/

namespace A295410.P13412088189785836754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295416 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A295410.P13412088189785836754

/-! ## A295410.P16556432371542438334

`record[A003982(n)*A295416(n+1)]`
-/

namespace A295410.P16556432371542438334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A295416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295410.P16556432371542438334

/-! ## A295410.P16600766049604146624

`A007318(C(n, 2))*A295416(A001844(n))`
-/

namespace A295410.P16600766049604146624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A295416 (A001844 n).toNat

end

end A295410.P16600766049604146624

/-! ## A295410.P10333764357733117729

`A000041(C(2, n+2))*A295416(A001844(n))`
-/

namespace A295410.P10333764357733117729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A295416 (A001844 n).toNat

end

end A295410.P10333764357733117729

/-! ## A295410.P5243129154393273578

`A000045(gcd(n, n+1))*A295416(A001844(n))`
-/

namespace A295410.P5243129154393273578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) * A295416 (A001844 n).toNat

end

end A295410.P5243129154393273578

/-!
# A295411: Number of n X 3 0..1 arrays with each 1 horizontally or vertically adjacent to 1, 2 or 3 1s.

The programs for A295411, there is no canonical definition to state claims against.
-/

/-! ## A295411.P8464911310364464145

`A295416(∑[n+2]+4)`
-/

namespace A295411.P8464911310364464145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295416 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A295411.P8464911310364464145

/-! ## A295411.P5989275043653878390

`lcm((-1)^n, A295416(A167614(n+1)))`
-/

namespace A295411.P5989275043653878390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A295416 (A167614 (n + 1)).toNat)

end

end A295411.P5989275043653878390

/-! ## A295411.P816860080551254296

`A295416(A167614(n+1))+A025466(n)`
-/

namespace A295411.P816860080551254296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295416 (A167614 (n + 1)).toNat + A025466 n

end

end A295411.P816860080551254296

/-! ## A295411.P9063912323776833541

`A295416(A167614(n+1))+A025469(n)`
-/

namespace A295411.P9063912323776833541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295416 (A167614 (n + 1)).toNat + A025469 n

end

end A295411.P9063912323776833541

/-! ## A295411.P16881932965280829003

`A015970(n)*A295416(A167614(n+1))`
-/

namespace A295411.P16881932965280829003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 n * A295416 (A167614 (n + 1)).toNat

end

end A295411.P16881932965280829003

/-!
# A295412: Number of nX4 0..1 arrays with each 1 horizontally or vertically adjacent to 1, 2 or 3 1s.

The programs for A295412, there is no canonical definition to state claims against.
-/

/-! ## A295412.P7728387492373743280

`A295416(A374004(n+1))`
-/

namespace A295412.P7728387492373743280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295416 (A374004 (n + 1)).toNat

end

end A295412.P7728387492373743280

/-! ## A295412.P17148788000676207071

`A295416(A141214(n)+7)`
-/

namespace A295412.P17148788000676207071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295416 (A141214 n + 7).toNat

end

end A295412.P17148788000676207071

/-! ## A295412.P9203845658751549990

`A295416(A052905(n)+9)`
-/

namespace A295412.P9203845658751549990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295416 (A052905 n + 9).toNat

end

end A295412.P9203845658751549990

/-! ## A295412.P11232014135278816456

`A295416(A055999(n)+10)`
-/

namespace A295412.P11232014135278816456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295416 (A055999 n + 10).toNat

end

end A295412.P11232014135278816456

/-! ## A295412.P16198296296804409276

`A295416(A167614(n+2)+1)`
-/

namespace A295412.P16198296296804409276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295416 (A167614 (n + 2) + 1).toNat

end

end A295412.P16198296296804409276

/-!
# A295413: Number of nX5 0..1 arrays with each 1 horizontally or vertically adjacent to 1, 2 or 3 1s.

The programs for A295413, there is no canonical definition to state claims against.
-/

/-! ## A295413.P17164068897564022938

`A295416(A374005(n+1))`
-/

namespace A295413.P17164068897564022938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295416 (A374005 (n + 1)).toNat

end

end A295413.P17164068897564022938

/-! ## A295413.P16016837946018946373

`A295416(A167499(n+3))`
-/

namespace A295413.P16016837946018946373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295416 (A167499 (n + 3)).toNat

end

end A295413.P16016837946018946373

/-! ## A295413.P37006023086105030

`A295416(A155212(n)+13)`
-/

namespace A295413.P37006023086105030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295416 (A155212 n + 13).toNat

end

end A295413.P37006023086105030

/-! ## A295413.P16811537462234097417

`A295416(A056000(n)+15)`
-/

namespace A295413.P16811537462234097417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295416 (A056000 n + 15).toNat

end

end A295413.P16811537462234097417

/-! ## A295413.P8628276990317390545

`A295416(Δ[A264443(n)])`
-/

namespace A295413.P8628276990317390545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295416 (f1 (n + 1) - f1 n).toNat

end

end A295413.P8628276990317390545

/-!
# A295414: Number of nX6 0..1 arrays with each 1 horizontally or vertically adjacent to 1, 2 or 3 1s.

The programs for A295414, there is no canonical definition to state claims against.
-/

/-! ## A295414.P18090826604805869663

`A295416(A374007(n+1))`
-/

namespace A295414.P18090826604805869663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295416 (A374007 (n + 1)).toNat

end

end A295414.P18090826604805869663

/-! ## A295414.P17126046559444610666

`A295416(A167614(n+4)+3)`
-/

namespace A295414.P17126046559444610666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295416 (A167614 (n + 4) + 3).toNat

end

end A295414.P17126046559444610666

/-! ## A295414.P9707926690161282909

`A295416(eq[7, A131818(n+1)])`
-/

namespace A295414.P9707926690161282909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295416 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295414.P9707926690161282909

/-! ## A295414.P427916554162346386

`A295416(A052905(n+3))`
-/

namespace A295414.P427916554162346386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295416 (A052905 (n + 3)).toNat

end

end A295414.P427916554162346386

/-! ## A295414.P16889515529632786102

`A295416(eq[3, A219347(n)])`
-/

namespace A295414.P16889515529632786102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295416 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295414.P16889515529632786102

/-!
# A295415: Number of n X 7 0..1 arrays with each 1 horizontally or vertically adjacent to 1, 2 or 3 1's.

The programs for A295415, there is no canonical definition to state claims against.
-/

/-! ## A295415.P14353972731836509661

`A295416(A374008(n+1))`
-/

namespace A295415.P14353972731836509661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295416 (A374008 (n + 1)).toNat

end

end A295415.P14353972731836509661

/-! ## A295415.P2464336268458393532

`A295416(eq[8, A131818(n+1)])`
-/

namespace A295415.P2464336268458393532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295416 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295415.P2464336268458393532

/-! ## A295415.P13685628465270094786

`A295416(A055999(n+4))`
-/

namespace A295415.P13685628465270094786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295416 (A055999 (n + 4)).toNat

end

end A295415.P13685628465270094786

/-! ## A295415.P4939875851220941994

`A295416(eq[4, A219347(n)])`
-/

namespace A295415.P4939875851220941994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295416 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295415.P4939875851220941994

/-! ## A295415.P14375757625486642158

`A295416(eq[6, A193592(n)])`
-/

namespace A295415.P14375757625486642158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295416 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295415.P14375757625486642158

/-!
# A295417: Self-inverse permutation of natural numbers: in prime factorization of n replace each positive prime exponent e with max + min - e, where max = A051903(n) and min = A051904(n).

The programs for A295417, the canonical program `A295417.P6181509996075692878` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295417 has offset 1).

The definition of A295417 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A051903, A051904, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A295417.P6181509996075692878

`A007947(n+1)^(A051903(n+1)+A051904(n+1))/(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A295417

/-- `A007947(n+1)^(A051903(n+1)+A051904(n+1))/(n+1)` -/
def P6181509996075692878.Spec : Prop :=
  ∀ n, P6181509996075692878.a n = (A295417 (n + 1) : ℚ)

end A295417

/-! ## A295417.P14401800153582913195

`A062759(n+1)*A066636(n+1)`
-/

namespace A295417.P14401800153582913195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062759 (n + 1) * A066636 (n + 1)

end

end A295417.P14401800153582913195

namespace A295417

/-- `A062759(n+1)*A066636(n+1)` -/
def P14401800153582913195.Spec : Prop :=
  ∀ n, P14401800153582913195.a n = A295417 (n + 1)

end A295417

/-! ## A295417.P17949926034391706725

`A304768(n+1)*A354090(n+1)`
-/

namespace A295417.P17949926034391706725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304768 (n + 1) * A354090 (n + 1)

end

end A295417.P17949926034391706725

namespace A295417

/-- `A304768(n+1)*A354090(n+1)` -/
def P17949926034391706725.Spec : Prop :=
  ∀ n, P17949926034391706725.a n = A295417 (n + 1)

end A295417

/-! ## A295417.P10023053267436442992

`A066638(n+1)/A062760(n+1)`
-/

namespace A295417.P10023053267436442992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066638 (n + 1) : ℚ) / (A062760 (n + 1) : ℚ)

end

end A295417.P10023053267436442992

namespace A295417

/-- `A066638(n+1)/A062760(n+1)` -/
def P10023053267436442992.Spec : Prop :=
  ∀ n, P10023053267436442992.a n = (A295417 (n + 1) : ℚ)

end A295417

/-! ## A295417.P17466633747313575790

`(n+1)/A062760(n+1)*A066636(n+1)`
-/

namespace A295417.P17466633747313575790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A062760 (n + 1) : ℚ) * (A066636 (n + 1) : ℚ)

end

end A295417.P17466633747313575790

namespace A295417

/-- `(n+1)/A062760(n+1)*A066636(n+1)` -/
def P17466633747313575790.Spec : Prop :=
  ∀ n, P17466633747313575790.a n = (A295417 (n + 1) : ℚ)

end A295417

/-! ## A295417.P2085936554265043158

`A007947(n+1)*A066638(n+1)/A304776(n+1)`
-/

namespace A295417.P2085936554265043158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) * A066638 (n + 1) : ℚ) / (A304776 (n + 1) : ℚ)

end

end A295417.P2085936554265043158

namespace A295417

/-- `A007947(n+1)*A066638(n+1)/A304776(n+1)` -/
def P2085936554265043158.Spec : Prop :=
  ∀ n, P2085936554265043158.a n = (A295417 (n + 1) : ℚ)

end A295417

/-! ## A295417.P7138607298753156679

`A066636(n+1)*A066638(n+1)/A373703(n+1)`
-/

namespace A295417.P7138607298753156679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066636 (n + 1) * A066638 (n + 1) : ℚ) / (A373703 (n + 1) : ℚ)

end

end A295417.P7138607298753156679

namespace A295417

/-- `A066636(n+1)*A066638(n+1)/A373703(n+1)` -/
def P7138607298753156679.Spec : Prop :=
  ∀ n, P7138607298753156679.a n = (A295417 (n + 1) : ℚ)

end A295417

/-! ## A295417.P16219623070168694198

`A007947(n+1)^A051904(n+1)*A066636(n+1)`
-/

namespace A295417.P16219623070168694198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) ^ (A051904 (n + 1) : ℤ) * (A066636 (n + 1) : ℚ)

end

end A295417.P16219623070168694198

namespace A295417

/-- `A007947(n+1)^A051904(n+1)*A066636(n+1)` -/
def P16219623070168694198.Spec : Prop :=
  ∀ n, P16219623070168694198.a n = (A295417 (n + 1) : ℚ)

end A295417

/-! ## A295417.P13669785451860657220

`A007947(n+1)^A051903(n+1)/A062760(n+1)`
-/

namespace A295417.P13669785451860657220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) ^ (A051903 (n + 1) : ℤ) / (A062760 (n + 1) : ℚ)

end

end A295417.P13669785451860657220

namespace A295417

/-- `A007947(n+1)^A051903(n+1)/A062760(n+1)` -/
def P13669785451860657220.Spec : Prop :=
  ∀ n, P13669785451860657220.a n = (A295417 (n + 1) : ℚ)

end A295417

/-! ## A295417.P2202011004933311506

`A066638(n+1)/A066636(A304768(n+1))`
-/

namespace A295417.P2202011004933311506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066638 (n + 1) : ℚ) / (A066636 (A304768 (n + 1)).toNat : ℚ)

end

end A295417.P2202011004933311506

namespace A295417

/-- `A066638(n+1)/A066636(A304768(n+1))` -/
def P2202011004933311506.Spec : Prop :=
  ∀ n, P2202011004933311506.a n = (A295417 (n + 1) : ℚ)

end A295417

/-! ## A295417.P723524642190911910

`A066638(n+1)/A066636(A066638(n+1)/A003557(n+1))`
-/

namespace A295417.P723524642190911910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066638 (n + 1) : ℚ) / (A066636 (SequenceMachineLib.roundAway ((A066638 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ))).toNat : ℚ)

end

end A295417.P723524642190911910

namespace A295417

/-- `A066638(n+1)/A066636(A066638(n+1)/A003557(n+1))` -/
def P723524642190911910.Spec : Prop :=
  ∀ n, P723524642190911910.a n = (A295417 (n + 1) : ℚ)

end A295417

/-! ## A295417.P8425206138835780501

`lcm(A105119(n+1), A327498(A225891(n+1)))`
-/

namespace A295417.P8425206138835780501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A105119 (n + 1)) (A327498 (A225891 (n + 1)).toNat)

end

end A295417.P8425206138835780501

namespace A295417

/-- `lcm(A105119(n+1), A327498(A225891(n+1)))` -/
def P8425206138835780501.Spec : Prop :=
  ∀ n, (P8425206138835780501.a n : ℤ) = A295417 (n + 1)

end A295417

/-!
# A295419: Number of dissections of an n-gon by nonintersecting diagonals into polygons with a prime number of sides counted up to rotations and reflections.

The programs for A295419, there is no canonical definition to state claims against.
-/

/-! ## A295419.P9802270162143209631

`A001462(A348615(n)+A056040(n))`
-/

namespace A295419.P9802270162143209631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A348615 n + A056040 n).toNat

end

end A295419.P9802270162143209631

/-! ## A295419.P8815100106271267550

`A290816(n+3)-A269247(A000984(n))`
-/

namespace A295419.P8815100106271267550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290816 (n + 3) - A269247 (A000984 n).toNat

end

end A295419.P8815100106271267550

/-! ## A295419.P9411564042066929893

`A290816(n+3)-A353814(A005867(n))`
-/

namespace A295419.P9411564042066929893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290816 (n + 3) - A353814 (A005867 n).toNat

end

end A295419.P9411564042066929893

/-! ## A295419.P8840813339853277133

`A023190(A060797(n))+A014017(A056040(n))`
-/

namespace A295419.P8840813339853277133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A060797 n).toNat + A014017 (A056040 n).toNat

end

end A295419.P8840813339853277133

/-!
# A295420: Number of total dominating sets in the n-Moebius ladder.

The programs for A295420, there is no canonical definition to state claims against.
-/

/-! ## A295420.P209811266732486941

`A105949(A047110(n)*A311296(n))`
-/

namespace A295420.P209811266732486941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105949 (A047110 n * A311296 n).toNat

end

end A295420.P209811266732486941

/-! ## A295420.P10080203020518084927

`A105949(A311296(n)%A185451(n))`
-/

namespace A295420.P10080203020518084927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105949 (Int.tmod (A311296 n) (A185451 n)).toNat

end

end A295420.P10080203020518084927

/-! ## A295420.P4903742692552991528

`A105949(A311296(lcm(n, A091173(n))))`
-/

namespace A295420.P4903742692552991528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105949 (A311296 (Int.lcm (n : ℤ) (A091173 n))).toNat

end

end A295420.P4903742692552991528

/-!
# A295422: a(n) = size of the middle part, i.e., the part closest to or crossing the diagonal, in the symmetric representation of sigma(n).

The programs for A295422, there is no canonical definition to state claims against.
-/

/-! ## A295422.P9408393276368401507

`A237270(∑[A237271(n+1)]+1-A262618(n+1))`
-/

namespace A295422.P9408393276368401507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237270 (∑ j ∈ Finset.range (n + 1), f1 j + (1 - A262618 (n + 1))).toNat

end

end A295422.P9408393276368401507

/-!
# A295423: a(n) = size of the part containing the diagonal of the symmetric representation of sigma(k) when k is the n-th number with an odd number of parts.

The programs for A295423, there is no canonical definition to state claims against.
-/

/-! ## A295423.P13091691380056329159

`A377462(A071562(n+1))`
-/

namespace A295423.P13091691380056329159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377462 (A071562 (n + 1)).toNat

end

end A295423.P13091691380056329159

/-! ## A295423.P17196721757257994533

`filter[A377462(n+1), A145568(#)]`
-/

namespace A295423.P17196721757257994533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A295423.P17196721757257994533

/-! ## A295423.P6092586972140418753

`A295422(lt[0, char[A244367(n+1)]])`
-/

namespace A295423.P6092586972140418753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244367 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295422 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A295423.P6092586972140418753

/-! ## A295423.P13953573870831565745

`A295422(lt[1, A348406(n+1)]+1)`
-/

namespace A295423.P13953573870831565745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295422 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A295423.P13953573870831565745

/-! ## A295423.P12393665527810914922

`A295422(lt[1, A067742(n+1)+1]+1)`
-/

namespace A295423.P12393665527810914922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295422 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A295423.P12393665527810914922

/-!
# A295424: Number of distinct twin primes which are in Goldbach partitions of 2n.

The programs for A295424, there is no canonical definition to state claims against.
-/

/-! ## A295424.P7023717610576848735

`A061357(n+1)+A129363(n+1)%A080862(n+1)`
-/

namespace A295424.P7023717610576848735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (n + 1) + Int.tmod (A129363 (n + 1)) (A080862 (n + 1))

end

end A295424.P7023717610576848735

/-! ## A295424.P1526153139331814782

`A002372(n+1)-A103675(A220883(n+1))`
-/

namespace A295424.P1526153139331814782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002372 (n + 1) - A103675 (A220883 (n + 1)).toNat

end

end A295424.P1526153139331814782

/-! ## A295424.P6657063021720943904

`A035026(n+1)-char[1]-A103675(A220883(n+1))`
-/

namespace A295424.P6657063021720943904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035026 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A103675 (A220883 (n + 1)).toNat

end

end A295424.P6657063021720943904

/-! ## A295424.P13378450354505718761

`A061357(n+1)+A001221(A136336(n)-A294080(n+1))`
-/

namespace A295424.P13378450354505718761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (n + 1) + A001221 (A136336 n - A294080 (n + 1)).toNat

end

end A295424.P13378450354505718761

/-! ## A295424.P5646698592336088823

`A035026(1-A063524(n)+n)-A103675(A220883(n+1))`
-/

namespace A295424.P5646698592336088823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035026 (1 - A063524 n + (n : ℤ)).toNat - A103675 (A220883 (n + 1)).toNat

end

end A295424.P5646698592336088823

/-!
# A295425: a(n) = smallest number > a(n-1) such that the number of preceding terms in the sequence dividing a(n) is divisible by 4; a(1) = 2.

The programs for A295425, there is no canonical definition to state claims against.
-/

/-! ## A295425.P11089869692460254964

`record[A007947(A026478(n+2))]`
-/

namespace A295425.P11089869692460254964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A026478 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295425.P11089869692460254964

/-! ## A295425.P9045635786295247298

`record[A007947(A036116(n+2))]`
-/

namespace A295425.P9045635786295247298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A036116 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295425.P9045635786295247298

/-! ## A295425.P17261987460489297731

`∪[A000040(n+1), A258359(n)]`
-/

namespace A295425.P17261987460489297731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258359 (n + 10)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A295425.P17261987460489297731

/-! ## A295425.P14821215779221857366

`∪[A216884(n+1), A258359(n)]`
-/

namespace A295425.P14821215779221857366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258359 (n + 10)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A295425.P14821215779221857366

/-! ## A295425.P7780461791096098478

`∩[A007916(n+1), A036116(n+1)]`
-/

namespace A295425.P7780461791096098478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295425.P7780461791096098478

/-! ## A295425.P2999332294721556303

`∩[A036116(n+1), A048839(n+1)]`
-/

namespace A295425.P2999332294721556303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295425.P2999332294721556303

/-! ## A295425.P1960079055092011079

`∩[A036116(n+1), A052485(n+1)]`
-/

namespace A295425.P1960079055092011079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295425.P1960079055092011079

/-! ## A295425.P5467946003904909218

`∩[A085971(n+1), A036116(n+1)]`
-/

namespace A295425.P5467946003904909218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295425.P5467946003904909218

/-! ## A295425.P12275195487883094386

`∩[A361393(n+1), A036116(n+1)]`
-/

namespace A295425.P12275195487883094386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295425.P12275195487883094386

/-!
# A295430: a(n) is the least nontrivial multiple of n that begins with 3.

The programs for A295430, there is no canonical definition to state claims against.
-/

/-! ## A295430.P5443336083352015077

`A082792(lcm(A001285(n), A187829(n+1)))`
-/

namespace A295430.P5443336083352015077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082792 (Int.lcm (A001285 n) (A187829 (n + 1)))

end

end A295430.P5443336083352015077

/-! ## A295430.P5944682789854558156

`A082792(lcm(A082217(n+1), A211009(n+1)))`
-/

namespace A295430.P5944682789854558156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082792 (Int.lcm (A082217 (n + 1)) (A211009 (n + 1)))

end

end A295430.P5944682789854558156

/-!
# A295431: 

The programs for A295431, there is no canonical definition to state claims against.
-/

/-! ## A295431.P8843540570031710449

`A347855(3*n)`
-/

namespace A295431.P8843540570031710449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347855 (3 * n)

end

end A295431.P8843540570031710449

/-! ## A295431.P6070131601092538035

`A113424(2*n)/A005809(n)`
-/

namespace A295431.P6070131601092538035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113424 (2 * n) : ℚ) / (A005809 n : ℚ)

end

end A295431.P6070131601092538035

/-! ## A295431.P906978440348263342

`A000897(A008585(n))/A005810(n)`
-/

namespace A295431.P906978440348263342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000897 (A008585 n).toNat : ℚ) / (A005810 n : ℚ)

end

end A295431.P906978440348263342

/-! ## A295431.P9256886732373154359

`A113424(A008585(n))/A295443(n)`
-/

namespace A295431.P9256886732373154359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113424 (A008585 n).toNat : ℚ) / (A295443 n : ℚ)

end

end A295431.P9256886732373154359

/-!
# A295432: a(n) = (12*n)!*(3*n)!*(2*n)!/((6*n)!*(6*n)!*(4*n)!*n!).

The programs for A295432, there is no canonical definition to state claims against.
-/

/-! ## A295432.P9964194265632923403

`(12*n)!*(3*n)!*(2*n)!/((6*n)!*(6*n)!*(4*n)!*n!)`
-/

namespace A295432.P9964194265632923403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (12 * n) * Nat.factorial (3 * n) * Nat.factorial (2 * n) : ℚ) / (Nat.factorial (6 * n) * Nat.factorial (6 * n) * Nat.factorial (4 * n) * Nat.factorial n : ℚ)

end

end A295432.P9964194265632923403

/-!
# A295433: a(n) = (12*n)!*n!/((8*n)!*(3*n)!*(2*n)!).

The programs for A295433, the canonical program `A295433.P5469814198360597361` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295433 has offset 0).

The definition of A295433 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295433.P5469814198360597361

`C(12*n, 4*n)*C(4*n, n)/C(2*n, n)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295433

/-- `C(12*n, 4*n)*C(4*n, n)/C(2*n, n)` -/
def P5469814198360597361.Spec : Prop :=
  ∀ n, P5469814198360597361.a n = (A295433 n : ℚ)

end A295433

/-! ## A295433.P16276306353229520716

`A347856(2*n)`
-/

namespace A295433.P16276306353229520716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347856 (2 * n)

end

end A295433.P16276306353229520716

namespace A295433

/-- `A347856(2*n)` -/
def P16276306353229520716.Spec : Prop :=
  ∀ n, P16276306353229520716.a n = A295433 n

end A295433

/-!
# A295434: a(n) = (12*n)!*(3*n)!/((8*n)!*(6*n)!*n!).

The programs for A295434, the canonical program `A295434.P1956681586281741606` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295434 has offset 0).

The definition of A295434 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295434.P1956681586281741606

`C(12*n, 4*n)*C(3*n, n)/C(6*n, 2*n)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295434

/-- `C(12*n, 4*n)*C(3*n, n)/C(6*n, 2*n)` -/
def P1956681586281741606.Spec : Prop :=
  ∀ n, P1956681586281741606.a n = (A295434 n : ℚ)

end A295434

/-! ## A295434.P11921280459753725648

`A295439(n)/A295450(n)*A295447(n)`
-/

namespace A295434.P11921280459753725648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295439 n : ℚ) / (A295450 n : ℚ) * (A295447 n : ℚ)

end

end A295434.P11921280459753725648

namespace A295434

/-- `A295439(n)/A295450(n)*A295447(n)` -/
def P11921280459753725648.Spec : Prop :=
  ∀ n, P11921280459753725648.a n = (A295434 n : ℚ)

end A295434

/-! ## A295434.P11417616931717894220

`A295435(n)/A295441(n)*A295439(n)`
-/

namespace A295434.P11417616931717894220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295435 n : ℚ) / (A295441 n : ℚ) * (A295439 n : ℚ)

end

end A295434.P11417616931717894220

namespace A295434

/-- `A295435(n)/A295441(n)*A295439(n)` -/
def P11417616931717894220.Spec : Prop :=
  ∀ n, P11417616931717894220.a n = (A295434 n : ℚ)

end A295434

/-!
# A295435: a(n) = (12*n)!*(3*n)!/((6*n)!*(5*n)!*(4*n)!).

The programs for A295435, there is no canonical definition to state claims against.
-/

/-! ## A295435.P9935197257642428026

`A347857(2*n)`
-/

namespace A295435.P9935197257642428026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347857 (2 * n)

end

end A295435.P9935197257642428026

/-! ## A295435.P17716262107413071774

`(12*n)!*(3*n)!/((6*n)!*(5*n)!*(4*n)!)`
-/

namespace A295435.P17716262107413071774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (12 * n) * Nat.factorial (3 * n) : ℚ) / (Nat.factorial (6 * n) * Nat.factorial (5 * n) * Nat.factorial (4 * n) : ℚ)

end

end A295435.P17716262107413071774

/-!
# A295436: a(n) = (12*n)!*(5*n)!/((10*n)!*(4*n)!*(3*n)!).

The programs for A295436, the canonical program `A295436.P15896753022815775775` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295436 has offset 0).

The definition of A295436 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295436.P15896753022815775775

`C(12*n, 2*n)*C(5*n, n)/C(3*n, n)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295436

/-- `C(12*n, 2*n)*C(5*n, n)/C(3*n, n)` -/
def P15896753022815775775.Spec : Prop :=
  ∀ n, P15896753022815775775.a n = (A295436 n : ℚ)

end A295436

/-! ## A295436.P13104353057935692463

`A061162(n)/A295452(n)*A295449(n)`
-/

namespace A295436.P13104353057935692463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061162 n : ℚ) / (A295452 n : ℚ) * (A295449 n : ℚ)

end

end A295436.P13104353057935692463

namespace A295436

/-- `A061162(n)/A295452(n)*A295449(n)` -/
def P13104353057935692463.Spec : Prop :=
  ∀ n, P13104353057935692463.a n = (A295436 n : ℚ)

end A295436

/-!
# A295437: 

The programs for A295437, there is no canonical definition to state claims against.
-/

/-! ## A295437.P8930342317992509164

`A347858(2*n)`
-/

namespace A295437.P8930342317992509164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347858 (2 * n)

end

end A295437.P8930342317992509164

/-! ## A295437.P6621163514026933258

`A113424(A008585(n))/A005810(n)`
-/

namespace A295437.P6621163514026933258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113424 (A008585 n).toNat : ℚ) / (A005810 n : ℚ)

end

end A295437.P6621163514026933258

/-!
# A295438: a(n) = (9*n)!*(2*n)!/((6*n)!*(4*n)!*n!).

The programs for A295438, the canonical program `A295438.P848996953949508196` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295438 has offset 0).

The definition of A295438 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295438.P848996953949508196

`C(9*n, 3*n)*C(2*n, n)/C(4*n, n)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295438

/-- `C(9*n, 3*n)*C(2*n, n)/C(4*n, n)` -/
def P848996953949508196.Spec : Prop :=
  ∀ n, P848996953949508196.a n = (A295438 n : ℚ)

end A295438

/-! ## A295438.P3629837908168138081

`A005809(3*n)/A005810(n)*A000984(n)`
-/

namespace A295438.P3629837908168138081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005809 (3 * n) : ℚ) / (A005810 n : ℚ) * (A000984 n : ℚ)

end

end A295438.P3629837908168138081

namespace A295438

/-- `A005809(3*n)/A005810(n)*A000984(n)` -/
def P3629837908168138081.Spec : Prop :=
  ∀ n, P3629837908168138081.a n = (A295438 n : ℚ)

end A295438

/-! ## A295438.P9089860951721077768

`(9*n)!*(2*n)!/((6*n)!*(4*n)!*n!)`
-/

namespace A295438.P9089860951721077768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (9 * n) * Nat.factorial (2 * n) : ℚ) / (Nat.factorial (6 * n) * Nat.factorial (4 * n) * Nat.factorial n : ℚ)

end

end A295438.P9089860951721077768

namespace A295438

/-- `(9*n)!*(2*n)!/((6*n)!*(4*n)!*n!)` -/
def P9089860951721077768.Spec : Prop :=
  ∀ n, P9089860951721077768.a n = (A295438 n : ℚ)

end A295438

/-!
# A295439: a(n) = (9*n)!*(4*n)!/((8*n)!*(3*n)!*(2*n)!).

The programs for A295439, the canonical program `A295439.P10154024660368474880` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295439 has offset 0).

The definition of A295439 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295439.P10154024660368474880

`C(9*n, n)*C(4*n, n)/C(2*n, n)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295439

/-- `C(9*n, n)*C(4*n, n)/C(2*n, n)` -/
def P10154024660368474880.Spec : Prop :=
  ∀ n, P10154024660368474880.a n = (A295439 n : ℚ)

end A295439

/-! ## A295439.P5619024919158651804

`A005810(n)/A000984(n)*A169958(n)`
-/

namespace A295439.P5619024919158651804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005810 n : ℚ) / (A000984 n : ℚ) * (A169958 n : ℚ)

end

end A295439.P5619024919158651804

namespace A295439

/-- `A005810(n)/A000984(n)*A169958(n)` -/
def P5619024919158651804.Spec : Prop :=
  ∀ n, P5619024919158651804.a n = (A295439 n : ℚ)

end A295439

/-! ## A295439.P14882552362691136915

`A295434(n)/A295447(n)*A295450(n)`
-/

namespace A295439.P14882552362691136915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295434 n : ℚ) / (A295447 n : ℚ) * (A295450 n : ℚ)

end

end A295439.P14882552362691136915

namespace A295439

/-- `A295434(n)/A295447(n)*A295450(n)` -/
def P14882552362691136915.Spec : Prop :=
  ∀ n, P14882552362691136915.a n = (A295439 n : ℚ)

end A295439

/-! ## A295439.P559006022196266912

`A295434(n)/A295435(n)*A295441(n)`
-/

namespace A295439.P559006022196266912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295434 n : ℚ) / (A295435 n : ℚ) * (A295441 n : ℚ)

end

end A295439.P559006022196266912

namespace A295439

/-- `A295434(n)/A295435(n)*A295441(n)` -/
def P559006022196266912.Spec : Prop :=
  ∀ n, P559006022196266912.a n = (A295439 n : ℚ)

end A295439

/-!
# A295440: 

The programs for A295440, there is no canonical definition to state claims against.
-/

/-! ## A295440.P4819462534685989769

`A364173(2*n)`
-/

namespace A295440.P4819462534685989769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364173 (2 * n)

end

end A295440.P4819462534685989769

/-!
# A295441: a(n) = (9*n)!*n!/((5*n)!*(3*n)!*(2*n)!).

The programs for A295441, the canonical program `A295441.P118435555314420937` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295441 has offset 0).

The definition of A295441 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295441.P118435555314420937

`C(9*n, 4*n)*C(4*n, n)/C(2*n, n)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295441

/-- `C(9*n, 4*n)*C(4*n, n)/C(2*n, n)` -/
def P118435555314420937.Spec : Prop :=
  ∀ n, P118435555314420937.a n = (A295441 n : ℚ)

end A295441

/-! ## A295441.P7067174561261439742

`(9*n)!*n!/((5*n)!*(3*n)!*(2*n)!)`
-/

namespace A295441.P7067174561261439742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (9 * n) * Nat.factorial n : ℚ) / (Nat.factorial (5 * n) * Nat.factorial (3 * n) * Nat.factorial (2 * n) : ℚ)

end

end A295441.P7067174561261439742

namespace A295441

/-- `(9*n)!*n!/((5*n)!*(3*n)!*(2*n)!)` -/
def P7067174561261439742.Spec : Prop :=
  ∀ n, P7067174561261439742.a n = (A295441 n : ℚ)

end A295441

/-!
# A295443: a(n) = (18*n)!*(4*n)!/((12*n)!*(9*n)!*n!).

The programs for A295443, there is no canonical definition to state claims against.
-/

/-! ## A295443.P9313832935974909260

`A295450(n)/A295476(n)*A295474(n)`
-/

namespace A295443.P9313832935974909260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295450 n : ℚ) / (A295476 n : ℚ) * (A295474 n : ℚ)

end

end A295443.P9313832935974909260

/-! ## A295443.P18270724129482245359

`A113424(A008585(n))/A347854(2*n)`
-/

namespace A295443.P18270724129482245359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113424 (A008585 n).toNat : ℚ) / (A347854 (2 * n) : ℚ)

end

end A295443.P18270724129482245359

/-!
# A295444: a(n) = (12*n)!*(2*n)!/((9*n)!*(4*n)!*n!).

The programs for A295444, the canonical program `A295444.P2526757645135889068` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295444 has offset 0).

The definition of A295444 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295444.P2526757645135889068

`C(12*n, 3*n)*C(2*n, n)/C(4*n, n)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295444

/-- `C(12*n, 3*n)*C(2*n, n)/C(4*n, n)` -/
def P2526757645135889068.Spec : Prop :=
  ∀ n, P2526757645135889068.a n = (A295444 n : ℚ)

end A295444

/-! ## A295444.P14420378528515125154

`A295447(n)/A295455(n)*A295463(n)`
-/

namespace A295444.P14420378528515125154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295447 n : ℚ) / (A295455 n : ℚ) * (A295463 n : ℚ)

end

end A295444.P14420378528515125154

namespace A295444

/-- `A295447(n)/A295455(n)*A295463(n)` -/
def P14420378528515125154.Spec : Prop :=
  ∀ n, P14420378528515125154.a n = (A295444 n : ℚ)

end A295444

/-! ## A295444.P4053973485788227515

`A295446(n)/A295455(n)*A295462(n)`
-/

namespace A295444.P4053973485788227515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295446 n : ℚ) / (A295455 n : ℚ) * (A295462 n : ℚ)

end

end A295444.P4053973485788227515

namespace A295444

/-- `A295446(n)/A295455(n)*A295462(n)` -/
def P4053973485788227515.Spec : Prop :=
  ∀ n, P4053973485788227515.a n = (A295444 n : ℚ)

end A295444

/-! ## A295444.P4486189271177254954

`A295446(n)/A295452(n)*A295449(n)`
-/

namespace A295444.P4486189271177254954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295446 n : ℚ) / (A295452 n : ℚ) * (A295449 n : ℚ)

end

end A295444.P4486189271177254954

namespace A295444

/-- `A295446(n)/A295452(n)*A295449(n)` -/
def P4486189271177254954.Spec : Prop :=
  ∀ n, P4486189271177254954.a n = (A295444 n : ℚ)

end A295444

/-!
# A295446: a(n) = (10*n)!*(6*n)!/((9*n)!*(5*n)!*(2*n)!).

The programs for A295446, the canonical program `A295446.P17283287460363443038` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295446 has offset 0).

The definition of A295446 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295446.P17283287460363443038

`C(10*n, n)*C(6*n, n)/C(2*n, n)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295446

/-- `C(10*n, n)*C(6*n, n)/C(2*n, n)` -/
def P17283287460363443038.Spec : Prop :=
  ∀ n, P17283287460363443038.a n = (A295446 n : ℚ)

end A295446

/-! ## A295446.P4515419390478007753

`A004355(n)/A000984(n)*A169959(n)`
-/

namespace A295446.P4515419390478007753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004355 n : ℚ) / (A000984 n : ℚ) * (A169959 n : ℚ)

end

end A295446.P4515419390478007753

namespace A295446

/-- `A004355(n)/A000984(n)*A169959(n)` -/
def P4515419390478007753.Spec : Prop :=
  ∀ n, P4515419390478007753.a n = (A295446 n : ℚ)

end A295446

/-! ## A295446.P13082716412485800100

`A061162(n)/A295436(n)*A295444(n)`
-/

namespace A295446.P13082716412485800100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061162 n : ℚ) / (A295436 n : ℚ) * (A295444 n : ℚ)

end

end A295446.P13082716412485800100

namespace A295446

/-- `A061162(n)/A295436(n)*A295444(n)` -/
def P13082716412485800100.Spec : Prop :=
  ∀ n, P13082716412485800100.a n = (A295446 n : ℚ)

end A295446

/-! ## A295446.P5573564764435793031

`A295444(n)/A295462(n)*A295455(n)`
-/

namespace A295446.P5573564764435793031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295444 n : ℚ) / (A295462 n : ℚ) * (A295455 n : ℚ)

end

end A295446.P5573564764435793031

namespace A295446

/-- `A295444(n)/A295462(n)*A295455(n)` -/
def P5573564764435793031.Spec : Prop :=
  ∀ n, P5573564764435793031.a n = (A295446 n : ℚ)

end A295446

/-! ## A295446.P8587739406227003411

`A295447(n)/A295462(n)*A295463(n)`
-/

namespace A295446.P8587739406227003411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295447 n : ℚ) / (A295462 n : ℚ) * (A295463 n : ℚ)

end

end A295446.P8587739406227003411

namespace A295446

/-- `A295447(n)/A295462(n)*A295463(n)` -/
def P8587739406227003411.Spec : Prop :=
  ∀ n, P8587739406227003411.a n = (A295446 n : ℚ)

end A295446

/-!
# A295447: a(n) = (14*n)!*(3*n)!/((9*n)!*(7*n)!*n!).

The programs for A295447, there is no canonical definition to state claims against.
-/

/-! ## A295447.P10882553678704778107

`A295434(n)/A295439(n)*A295450(n)`
-/

namespace A295447.P10882553678704778107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295434 n : ℚ) / (A295439 n : ℚ) * (A295450 n : ℚ)

end

end A295447.P10882553678704778107

/-!
# A295449: a(n) = (12*n)!*(2*n)!/((7*n)!*(4*n)!*(3*n)!).

The programs for A295449, there is no canonical definition to state claims against.
-/

/-! ## A295449.P7611350499288345098

`(12*n)!*(2*n)!/((7*n)!*(4*n)!*(3*n)!)`
-/

namespace A295449.P7611350499288345098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (12 * n) * Nat.factorial (2 * n) : ℚ) / (Nat.factorial (7 * n) * Nat.factorial (4 * n) * Nat.factorial (3 * n) : ℚ)

end

end A295449.P7611350499288345098

/-!
# A295450: a(n) = (14*n)!*(6*n)!*(4*n)!/((12*n)!*(7*n)!*(3*n)!*(2*n)!).

The programs for A295450, the canonical program `A295450.P13104733288190527807` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295450 has offset 0).

The definition of A295450 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295450.P13104733288190527807

`C(14*n, 2*n)*C(4*n, n)/C(7*n, n)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295450

/-- `C(14*n, 2*n)*C(4*n, n)/C(7*n, n)` -/
def P13104733288190527807.Spec : Prop :=
  ∀ n, P13104733288190527807.a n = (A295450 n : ℚ)

end A295450

/-! ## A295450.P872806400751948578

`A295439(n)/A295434(n)*A295447(n)`
-/

namespace A295450.P872806400751948578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295439 n : ℚ) / (A295434 n : ℚ) * (A295447 n : ℚ)

end

end A295450.P872806400751948578

namespace A295450

/-- `A295439(n)/A295434(n)*A295447(n)` -/
def P872806400751948578.Spec : Prop :=
  ∀ n, P872806400751948578.a n = (A295450 n : ℚ)

end A295450

/-! ## A295450.P15215392416529859439

`A295441(n)/A295435(n)*A295447(n)`
-/

namespace A295450.P15215392416529859439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295441 n : ℚ) / (A295435 n : ℚ) * (A295447 n : ℚ)

end

end A295450.P15215392416529859439

namespace A295450

/-- `A295441(n)/A295435(n)*A295447(n)` -/
def P15215392416529859439.Spec : Prop :=
  ∀ n, P15215392416529859439.a n = (A295450 n : ℚ)

end A295450

/-! ## A295450.P13726845865955511735

`A295443(n)/A295474(n)*A295476(n)`
-/

namespace A295450.P13726845865955511735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295443 n : ℚ) / (A295474 n : ℚ) * (A295476 n : ℚ)

end

end A295450.P13726845865955511735

namespace A295450

/-- `A295443(n)/A295474(n)*A295476(n)` -/
def P13726845865955511735.Spec : Prop :=
  ∀ n, P13726845865955511735.a n = (A295450 n : ℚ)

end A295450

/-!
# A295451: 

The programs for A295451, there is no canonical definition to state claims against.
-/

/-! ## A295451.P3911722648097639103

`(14*n)!*n!/((7*n)!*(5*n)!*(3*n)!)`
-/

namespace A295451.P3911722648097639103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (14 * n) * Nat.factorial n : ℚ) / (Nat.factorial (7 * n) * Nat.factorial (5 * n) * Nat.factorial (3 * n) : ℚ)

end

end A295451.P3911722648097639103

/-!
# A295452: a(n) = (10*n)!*(6*n)!*n!/((7*n)!*(5*n)!*(3*n)!*(2*n)!).

The programs for A295452, the canonical program `A295452.P11295995748421486587` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295452 has offset 0).

The definition of A295452 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295452.P11295995748421486587

`C(10*n, 3*n)*C(6*n, n)/C(2*n, n)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295452

/-- `C(10*n, 3*n)*C(6*n, n)/C(2*n, n)` -/
def P11295995748421486587.Spec : Prop :=
  ∀ n, P11295995748421486587.a n = (A295452 n : ℚ)

end A295452

/-! ## A295452.P15136714381493528159

`(10*n)!*(6*n)!*n!/((7*n)!*(5*n)!*(3*n)!*(2*n)!)`
-/

namespace A295452.P15136714381493528159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (10 * n) * Nat.factorial (6 * n) * Nat.factorial n : ℚ) / (Nat.factorial (7 * n) * Nat.factorial (5 * n) * Nat.factorial (3 * n) * Nat.factorial (2 * n) : ℚ)

end

end A295452.P15136714381493528159

namespace A295452

/-- `(10*n)!*(6*n)!*n!/((7*n)!*(5*n)!*(3*n)!*(2*n)!)` -/
def P15136714381493528159.Spec : Prop :=
  ∀ n, P15136714381493528159.a n = (A295452 n : ℚ)

end A295452

/-!
# A295453: 

The programs for A295453, there is no canonical definition to state claims against.
-/

/-! ## A295453.P7666724311925345612

`(15*n)!*n!/((9*n)!*(5*n)!*(2*n)!)`
-/

namespace A295453.P7666724311925345612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (15 * n) * Nat.factorial n : ℚ) / (Nat.factorial (9 * n) * Nat.factorial (5 * n) * Nat.factorial (2 * n) : ℚ)

end

end A295453.P7666724311925345612

/-!
# A295455: a(n) = (15*n)!*(4*n)!/((12*n)!*(5*n)!*(2*n)!).

The programs for A295455, there is no canonical definition to state claims against.
-/

/-! ## A295455.P4963585485055570339

`A295447(n)/A295444(n)*A295463(n)`
-/

namespace A295455.P4963585485055570339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295447 n : ℚ) / (A295444 n : ℚ) * (A295463 n : ℚ)

end

end A295455.P4963585485055570339

/-!
# A295457: 

The programs for A295457, there is no canonical definition to state claims against.
-/

/-! ## A295457.P5404277323886173984

`(15*n)!*(4*n)!/((8*n)!*(6*n)!*(5*n)!)`
-/

namespace A295457.P5404277323886173984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (15 * n) * Nat.factorial (4 * n) : ℚ) / (Nat.factorial (8 * n) * Nat.factorial (6 * n) * Nat.factorial (5 * n) : ℚ)

end

end A295457.P5404277323886173984

/-!
# A295459: 

The programs for A295459, there is no canonical definition to state claims against.
-/

/-! ## A295459.P17398546780405257219

`(15*n)!*(2*n)!/((10*n)!*(4*n)!*(3*n)!)`
-/

namespace A295459.P17398546780405257219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (15 * n) * Nat.factorial (2 * n) : ℚ) / (Nat.factorial (10 * n) * Nat.factorial (4 * n) * Nat.factorial (3 * n) : ℚ)

end

end A295459.P17398546780405257219

/-!
# A295461: Number of unlabeled rooted trees with 2n + 1 nodes in which all outdegrees are even.

The programs for A295461, there is no canonical definition to state claims against.
-/

/-! ## A295461.P8950647491858096357

`A195865(2*n)`
-/

namespace A295461.P8950647491858096357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195865 (2 * n)

end

end A295461.P8950647491858096357

/-! ## A295461.P18425520842836518174

`lcm(abs(1-n)-n, A195865(A004277(n)))`
-/

namespace A295461.P18425520842836518174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (|1 - (n : ℤ)| - (n : ℤ)) (A195865 (A004277 n).toNat)

end

end A295461.P18425520842836518174

/-! ## A295461.P6197722067519259259

`A195865(A005843(n))^A000041(C(2, n))`
-/

namespace A295461.P6197722067519259259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195865 (A005843 n).toNat : ℚ) ^ (A000041 (Nat.choose 2 n) : ℤ)

end

end A295461.P6197722067519259259

/-! ## A295461.P17165792054118392651

`A195865(record[A038608(n)])+A000007(n+1)`
-/

namespace A295461.P17165792054118392651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195865 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A000007 (n + 1)

end

end A295461.P17165792054118392651

/-! ## A295461.P5474004449360424077

`A195865(A004277(n))%A000344(n+3)`
-/

namespace A295461.P5474004449360424077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195865 (A004277 n).toNat) (A000344 (n + 3))

end

end A295461.P5474004449360424077

/-! ## A295461.P932332339677542304

`A195865(record[A038608(n)])%A004171(n)`
-/

namespace A295461.P932332339677542304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195865 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A004171 n)

end

end A295461.P932332339677542304

/-! ## A295461.P6075433495772361949

`A195865(A005843(n))%A126180(n+1)`
-/

namespace A295461.P6075433495772361949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195865 (A005843 n).toNat) (A126180 (n + 1))

end

end A295461.P6075433495772361949

/-!
# A295462: a(n) = (15*n)!*(2*n)!/((10*n)!*(6*n)!*n!).

The programs for A295462, there is no canonical definition to state claims against.
-/

/-! ## A295462.P14151626180629322946

`(15*n)!*(2*n)!/((10*n)!*(6*n)!*n!)`
-/

namespace A295462.P14151626180629322946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (15 * n) * Nat.factorial (2 * n) : ℚ) / (Nat.factorial (10 * n) * Nat.factorial (6 * n) * Nat.factorial n : ℚ)

end

end A295462.P14151626180629322946

/-!
# A295463: a(n) = (15*n)!*(7*n)!/((14*n)!*(5*n)!*(3*n)!).

The programs for A295463, the canonical program `A295463.P13277264234744268237` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295463 has offset 0).

The definition of A295463 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295463.P13277264234744268237

`C(15*n, n)*C(7*n, 2*n)/C(3*n, n)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295463

/-- `C(15*n, n)*C(7*n, 2*n)/C(3*n, n)` -/
def P13277264234744268237.Spec : Prop :=
  ∀ n, P13277264234744268237.a n = (A295463 n : ℚ)

end A295463

/-! ## A295463.P5705391015374877655

`A295444(n)/A295447(n)*A295455(n)`
-/

namespace A295463.P5705391015374877655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295444 n : ℚ) / (A295447 n : ℚ) * (A295455 n : ℚ)

end

end A295463.P5705391015374877655

namespace A295463

/-- `A295444(n)/A295447(n)*A295455(n)` -/
def P5705391015374877655.Spec : Prop :=
  ∀ n, P5705391015374877655.a n = (A295463 n : ℚ)

end A295463

/-! ## A295463.P16305092292204437678

`A295446(n)/A295447(n)*A295462(n)`
-/

namespace A295463.P16305092292204437678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295446 n : ℚ) / (A295447 n : ℚ) * (A295462 n : ℚ)

end

end A295463.P16305092292204437678

namespace A295463

/-- `A295446(n)/A295447(n)*A295462(n)` -/
def P16305092292204437678.Spec : Prop :=
  ∀ n, P16305092292204437678.a n = (A295463 n : ℚ)

end A295463

/-!
# A295467: 

The programs for A295467, there is no canonical definition to state claims against.
-/

/-! ## A295467.P6516141420056844429

`(15*n)!*n!/((8*n)!*(5*n)!*(3*n)!)`
-/

namespace A295467.P6516141420056844429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (15 * n) * Nat.factorial n : ℚ) / (Nat.factorial (8 * n) * Nat.factorial (5 * n) * Nat.factorial (3 * n) : ℚ)

end

end A295467.P6516141420056844429

/-!
# A295473: a(0) = 0; for n>0, a(n) = 9*n!.

The programs for A295473, the canonical program `A295473.P16847981485825212324` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295473 has offset 0).

The definition of A295473 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295473.P16847981485825212324

`n*a(n-1)` with `a(0)=0, a(1)=9`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295473

/-- `n*a(n-1)` -/
def P16847981485825212324.Spec : Prop :=
  ∀ n, (P16847981485825212324.a n : ℤ) = A295473 n

theorem P16847981485825212324.correct : P16847981485825212324.Spec := by
  intro n
  simp only [A295473]

end A295473

/-! ## A295473.P18276705161523453325

`lcm(n, 9*n!)`
-/

namespace A295473.P18276705161523453325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (9 * Nat.factorial n)

end

end A295473.P18276705161523453325

namespace A295473

/-- `lcm(n, 9*n!)` -/
def P18276705161523453325.Spec : Prop :=
  ∀ n, (P18276705161523453325.a n : ℤ) = A295473 n

end A295473

/-! ## A295473.P180067157097442777

`n!*dr(9*n)`
-/

namespace A295473.P180067157097442777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * SequenceMachineLib.digitalRoot (9 * n : ℤ)

end

end A295473.P180067157097442777

namespace A295473

/-- `n!*dr(9*n)` -/
def P180067157097442777.Spec : Prop :=
  ∀ n, (P180067157097442777.a n : ℤ) = A295473 n

end A295473

/-! ## A295473.P2676271998797579431

`9*n!%∑[n!]`
-/

namespace A295473.P2676271998797579431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (Nat.factorial n % (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A295473.P2676271998797579431

namespace A295473

/-- `9*n!%∑[n!]` -/
def P2676271998797579431.Spec : Prop :=
  ∀ n, (P2676271998797579431.a n : ℤ) = A295473 n

end A295473

/-! ## A295473.P3371720040753516916

`9*ceil(n!-acot(n))`
-/

namespace A295473.P3371720040753516916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * ⌈(Nat.factorial n : ℝ) - SequenceMachineLib.acot (n : ℝ)⌉

end

end A295473.P3371720040753516916

namespace A295473

/-- `9*ceil(n!-acot(n))` -/
def P3371720040753516916.Spec : Prop :=
  ∀ n, P3371720040753516916.a n = A295473 n

end A295473

/-! ## A295473.P13661325942811721521

`9*C(n!, ceil(acot(n)))`
-/

namespace A295473.P13661325942811721521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * Nat.choose (Nat.factorial n) ⌈SequenceMachineLib.acot (n : ℝ)⌉.toNat

end

end A295473.P13661325942811721521

namespace A295473

/-- `9*C(n!, ceil(acot(n)))` -/
def P13661325942811721521.Spec : Prop :=
  ∀ n, (P13661325942811721521.a n : ℤ) = A295473 n

end A295473

/-! ## A295473.P4855982361907412202

`9*n*abs(1-n)!`
-/

namespace A295473.P4855982361907412202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (n * Nat.factorial |1 - (n : ℤ)|.toNat)

end

end A295473.P4855982361907412202

namespace A295473

/-- `9*n*abs(1-n)!` -/
def P4855982361907412202.Spec : Prop :=
  ∀ n, (P4855982361907412202.a n : ℤ) = A295473 n

end A295473

/-! ## A295473.P16213354299225781412

`(3%(n+1)²)²*n!`
-/

namespace A295473.P16213354299225781412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 % (n + 1) ^ 2) ^ 2 * Nat.factorial n

end

end A295473.P16213354299225781412

namespace A295473

/-- `(3%(n+1)²)²*n!` -/
def P16213354299225781412.Spec : Prop :=
  ∀ n, (P16213354299225781412.a n : ℤ) = A295473 n

end A295473

/-! ## A295473.P4559281624582447356

`a(n-1)/n^(-1)` with `a(0)=0, a(1)=9`
-/

namespace A295473.P4559281624582447356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 9] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A295473.P4559281624582447356

namespace A295473

/-- `a(n-1)/n^(-1)` -/
def P4559281624582447356.Spec : Prop :=
  ∀ n, P4559281624582447356.a n = (A295473 n : ℚ)

end A295473

/-! ## A295473.P3260312513863167578

`n!*A180599(n)`
-/

namespace A295473.P3260312513863167578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A180599 n

end

end A295473.P3260312513863167578

namespace A295473

/-- `n!*A180599(n)` -/
def P3260312513863167578.Spec : Prop :=
  ∀ n, P3260312513863167578.a n = A295473 n

end A295473

/-!
# A295474: a(n) = (20*n)!*(7*n)!*(2*n)!/((14*n)!*(10*n)!*(4*n)!*n!).

The programs for A295474, there is no canonical definition to state claims against.
-/

/-! ## A295474.P10520816511945458552

`A295443(n)/A295450(n)*A295476(n)`
-/

namespace A295474.P10520816511945458552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295443 n : ℚ) / (A295450 n : ℚ) * (A295476 n : ℚ)

end

end A295474.P10520816511945458552

/-!
# A295476: a(n) = (20*n)!*(9*n)!*(6*n)!/((18*n)!*(10*n)!*(4*n)!*(3*n)!).

The programs for A295476, there is no canonical definition to state claims against.
-/

/-! ## A295476.P4822698009776740608

`A295450(n)/A295443(n)*A295474(n)`
-/

namespace A295476.P4822698009776740608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295450 n : ℚ) / (A295443 n : ℚ) * (A295474 n : ℚ)

end

end A295476.P4822698009776740608

/-!
# A295495: Number of dissections of an n-gon by nonintersecting diagonals into polygons with a prime number of sides counted up to rotations.

The programs for A295495, there is no canonical definition to state claims against.
-/

/-! ## A295495.P15225430617567868879

`A156562(or(n, A271270(n)))`
-/

namespace A295495.P15225430617567868879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (Int.lor (n : ℤ) (A271270 n)).toNat

end

end A295495.P15225430617567868879

/-! ## A295495.P7420820088659089628

`A230980(A000228(n+1)+A163227(n+1)+A030226(n+1))`
-/

namespace A295495.P7420820088659089628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A000228 (n + 1) + (A163227 (n + 1) + A030226 (n + 1))).toNat

end

end A295495.P7420820088659089628

/-! ## A295495.P8031046906485622778

`A230980(A163227(n+1)+A030225(n+1)+2*A030226(n+1))`
-/

namespace A295495.P8031046906485622778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A163227 (n + 1) + (A030225 (n + 1) + 2 * A030226 (n + 1))).toNat

end

end A295495.P8031046906485622778

/-! ## A295495.P3797876795436929020

`A230980(A163227(n+1)+2*A000228(n+1)-A030225(n+1))`
-/

namespace A295495.P3797876795436929020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A163227 (n + 1) + (2 * A000228 (n + 1) - A030225 (n + 1))).toNat

end

end A295495.P3797876795436929020

/-!
# A295496: a(n) = phi(6^n-1)/n, where phi is Euler's totient function (A000010).

The programs for A295496, the canonical program `A295496.P12825084809599148860` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295496 has offset 1).

The definition of A295496 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295496.P12825084809599148860

`A366623(n+1)/(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A295496

/-- `A366623(n+1)/(n+1)` -/
def P12825084809599148860.Spec : Prop :=
  ∀ n, P12825084809599148860.a n = (A295496 (n + 1) : ℚ)

end A295496

/-! ## A295496.P7420279007535100690

`A369291(Δ[A264443(n)])`
-/

namespace A295496.P7420279007535100690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369291 (f1 (n + 1) - f1 n).toNat

end

end A295496.P7420279007535100690

namespace A295496

/-- `A369291(Δ[A264443(n)])` -/
def P7420279007535100690.Spec : Prop :=
  ∀ n, P7420279007535100690.a n = A295496 (n + 1)

end A295496

/-! ## A295496.P7575526437803181875

`A369291(A052905(n+2)+1)`
-/

namespace A295496.P7575526437803181875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369291 (A052905 (n + 2) + 1).toNat

end

end A295496.P7575526437803181875

namespace A295496

/-- `A369291(A052905(n+2)+1)` -/
def P7575526437803181875.Spec : Prop :=
  ∀ n, P7575526437803181875.a n = A295496 (n + 1)

end A295496

/-! ## A295496.P14664671823499463995

`A369291(A000217(n+4)+n+1)`
-/

namespace A295496.P14664671823499463995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369291 (A000217 (n + 4) + (n + 1 : ℤ)).toNat

end

end A295496.P14664671823499463995

namespace A295496

/-- `A369291(A000217(n+4)+n+1)` -/
def P14664671823499463995.Spec : Prop :=
  ∀ n, P14664671823499463995.a n = A295496 (n + 1)

end A295496

/-! ## A295496.P5566712856568703435

`A369291(A002378(n+3)-∑[n+1])`
-/

namespace A295496.P5566712856568703435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369291 (A002378 (n + 3) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A295496.P5566712856568703435

namespace A295496

/-- `A369291(A002378(n+3)-∑[n+1])` -/
def P5566712856568703435.Spec : Prop :=
  ∀ n, P5566712856568703435.a n = A295496 (n + 1)

end A295496

/-!
# A295497: a(n) = phi(10^n-1)/n, where phi is Euler's totient function (A000010).

The programs for A295497, there is no canonical definition to state claims against.
-/

/-! ## A295497.P13379797114587669452

`A295503(n+1)/(n+1)`
-/

namespace A295497.P13379797114587669452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295503 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A295497.P13379797114587669452

/-! ## A295497.P460675961563053736

`(n+1)^-1*A295503(A330393(2*n))`
-/

namespace A295497.P460675961563053736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (-1 : ℤ) * (A295503 (A330393 (2 * n)).toNat : ℚ)

end

end A295497.P460675961563053736

/-! ## A295497.P8648593166946052819

`record[A295503(A330393(n))/A330393(n)]`
-/

namespace A295497.P8648593166946052819
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295503 (A330393 n).toNat : ℚ) / (A330393 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295497.P8648593166946052819

/-! ## A295497.P16217420804021333087

`A369291(eq[8, A193592(n)])`
-/

namespace A295497.P16217420804021333087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369291 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295497.P16217420804021333087

/-!
# A295498: G.f. A(x) satisfies: A(x) = 1 + x*A(x)^2 - x^2/A(x)^3.

The programs for A295498, there is no canonical definition to state claims against.
-/

/-! ## A295498.P748723968189578288

`A005041(A206345(n+1))`
-/

namespace A295498.P748723968189578288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A206345 (n + 1)).toNat

end

end A295498.P748723968189578288

/-! ## A295498.P15853058712504091081

`A276137(A352007(n))+1`
-/

namespace A295498.P15853058712504091081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276137 (A352007 n).toNat + 1

end

end A295498.P15853058712504091081

/-! ## A295498.P17422748790088011228

`A067004(A001519(∑[∑{e}[n+1, #]]))`
-/

namespace A295498.P17422748790088011228
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067004 (A001519 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A295498.P17422748790088011228

/-!
# A295499: Sum of lengths of longest unbordered subword, over all binary words of length n.

The programs for A295499, there is no canonical definition to state claims against.
-/

/-! ## A295499.P8713745161540063555

`A239931(∑[2^n])+∑[n*2^n]+1`
-/

namespace A295499.P8713745161540063555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239931 (∑ j ∈ Finset.range (n + 1), f1 j) + ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ)

end

end A295499.P8713745161540063555

/-! ## A295499.P11922038909252008365

`∑[A000267(A261739(n))]`
-/

namespace A295499.P11922038909252008365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A261739 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295499.P11922038909252008365

