import SequenceMachineLib
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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

/-!
# A139306: Ultraperfect numbers: a(n) = 2^(2*p - 1), where p is A000043(n).

The programs for A139306, there is no canonical definition to state claims against.
-/

/-! ## A139306.P12048297768101154091

`2^A133033(n+1)`
-/

namespace A139306.P12048297768101154091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A133033 (n + 1) : ℤ)

end

end A139306.P12048297768101154091

/-! ## A139306.P5262382017869332914

`2^(2*A000043(n+1)-1)`
-/

namespace A139306.P5262382017869332914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (2 * A000043 (n + 1) - 1 : ℤ)

end

end A139306.P5262382017869332914

/-! ## A139306.P18225862777057561230

`A000396(n+1)+A019279(n+1)`
-/

namespace A139306.P18225862777057561230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000396 (n + 1) + A019279 (n + 1)

end

end A139306.P18225862777057561230

/-! ## A139306.P11251300299671781820

`A139307(n+1)+1`
-/

namespace A139306.P11251300299671781820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139307 (n + 1) + 1

end

end A139306.P11251300299671781820

/-! ## A139306.P10232143983138812689

`2*A152921(n+1)`
-/

namespace A139306.P10232143983138812689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152921 (n + 1)

end

end A139306.P10232143983138812689

/-!
# A139307: a(n) = (2^(2*p - 1)) - 1, where p is A000043(n).

The programs for A139307, there is no canonical definition to state claims against.
-/

/-! ## A139307.P2985579176815135349

`A139306(n+1)-1`
-/

namespace A139307.P2985579176815135349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139306 (n + 1) - 1

end

end A139307.P2985579176815135349

/-! ## A139307.P7436755955736429268

`2^(2*A000043(n+1)-1)-1`
-/

namespace A139307.P7436755955736429268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (2 * A000043 (n + 1) - 1 : ℤ) - 1

end

end A139307.P7436755955736429268

/-! ## A139307.P7545966010457384823

`2*A152921(n+1)-1`
-/

namespace A139307.P7545966010457384823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152921 (n + 1) - 1

end

end A139307.P7545966010457384823

/-! ## A139307.P9473058613364877168

`A330824(n+1)/2-1`
-/

namespace A139307.P9473058613364877168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330824 (n + 1) : ℚ) / 2 - 1

end

end A139307.P9473058613364877168

/-! ## A139307.P2118445606752058602

`4*A152922(n+1)-1`
-/

namespace A139307.P2118445606752058602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A152922 (n + 1) - 1

end

end A139307.P2118445606752058602

/-!
# A139309: Array by antidiagonals, sum of non-k-gonal numbers between consecutive k-gonal numbers.

The programs for A139309, there is no canonical definition to state claims against.
-/

/-! ## A139309.P11858759578458364105

`A161680(A086271(n+1))-A000217(A139601(n))`
-/

namespace A139309.P11858759578458364105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A086271 (n + 1)).toNat - A000217 (A139601 n).toNat

end

end A139309.P11858759578458364105

/-!
# A139310: Has two properties: concatenation of its digits is same string as concatenation of digits of its first differences and every number appears exactly one of the sequence or its first differences.

The programs for A139310, there is no canonical definition to state claims against.
-/

/-! ## A139310.P4062509357324729530

`A139311(n)+a(n-1)` with `a(0)=1`
-/

namespace A139310.P4062509357324729530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A139311 n + a (n - 1)

end

end A139310.P4062509357324729530

/-! ## A139310.P6502398566601773501

`∑[A139311(abs(1-n)+1)]-1`
-/

namespace A139310.P6502398566601773501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139311 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A139310.P6502398566601773501

/-! ## A139310.P10666265395981011733

`∑[A139311(n*and(1, a(n-1))!)]` with `a(0)=1`
-/

namespace A139310.P10666265395981011733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A139311 (n * Nat.factorial (Int.land 1 (f1 (n - 1))).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139310.P10666265395981011733

/-! ## A139310.P13355440390910221043

`abs(10-∑[A139311(A028310(n))])`
-/

namespace A139310.P13355440390910221043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139311 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |10 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A139310.P13355440390910221043

/-! ## A139310.P10275208991595834712

`(10-∑[A139311(A028310(n))])*A033999(2*n+1)`
-/

namespace A139310.P10275208991595834712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139311 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 - ∑ j ∈ Finset.range (n + 1), f1 j) * A033999 (2 * n + 1)

end

end A139310.P10275208991595834712

/-! ## A139310.P10643350616929835194

`A139311(n)-(A000007(A199017(n-1))-a(n-1))` with `a(0)=1`
-/

namespace A139310.P10643350616929835194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A139311 n - (A000007 (A199017 (n - 1)).toNat - a (n - 1))

end

end A139310.P10643350616929835194

/-! ## A139310.P6280022190569935102

`A024000(A139311(n+1))+∑[A139311(n+1)]`
-/

namespace A139310.P6280022190569935102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A139311 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139310.P6280022190569935102

/-!
# A139311: First differences of A139310.

The programs for A139311, there is no canonical definition to state claims against.
-/

/-! ## A139311.P2613428016787257645

`Δ[A139310(n+1)]`
-/

namespace A139311.P2613428016787257645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139311.P2613428016787257645

/-! ## A139311.P12854517318371179102

`abs(Δ[A139310(-xor(n, -1))])`
-/

namespace A139311.P12854517318371179102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139310 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A139311.P12854517318371179102

/-! ## A139311.P7203847228106567776

`Δ[record[A139310(A263111(n))]]`
-/

namespace A139311.P7203847228106567776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139310 (A263111 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139311.P7203847228106567776

/-! ## A139311.P12355356907668275105

`A139310(n+2)-A139310(n+1)`
-/

namespace A139311.P12355356907668275105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139310 (n + 2) - A139310 (n + 1)

end

end A139311.P12355356907668275105

/-! ## A139311.P6343608676919868764

`Δ[A139310(-xor(n, -1))]%A079610(n)`
-/

namespace A139311.P6343608676919868764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139310 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A079610 n)

end

end A139311.P6343608676919868764

/-! ## A139311.P7438944631700430530

`Δ[A139310(-xor(n, -1))]-A000035(4*n)`
-/

namespace A139311.P7438944631700430530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139310 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000035 (4 * n)

end

end A139311.P7438944631700430530

/-!
# A139312: Characteristic function of the good primes (version 1).

The programs for A139312, the canonical program `A139312.P310610346778643042` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139312 has offset 2).

The definition of A139312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139312.P15589737887750824013

`ceil(tanh(A073272(n+1)))`
-/

namespace A139312.P15589737887750824013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh (A073272 (n + 1) : ℝ)⌉

end

end A139312.P15589737887750824013

namespace A139312

/-- `ceil(tanh(A073272(n+1)))` -/
def P15589737887750824013.Spec : Prop :=
  ∀ n, P15589737887750824013.a n = A139312 (n + 2)

end A139312

/-! ## A139312.P17380781409506492767

`ceil(tanh(A073274(n+1)))`
-/

namespace A139312.P17380781409506492767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh (A073274 (n + 1) : ℝ)⌉

end

end A139312.P17380781409506492767

namespace A139312

/-- `ceil(tanh(A073274(n+1)))` -/
def P17380781409506492767.Spec : Prop :=
  ∀ n, P17380781409506492767.a n = A139312 (n + 2)

end A139312

/-! ## A139312.P11174526580063525659

`char[A046868(n+1)-2]`
-/

namespace A139312.P11174526580063525659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046868 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A139312.P11174526580063525659

namespace A139312

/-- `char[A046868(n+1)-2]` -/
def P11174526580063525659.Spec : Prop :=
  ∀ n, (P11174526580063525659.a n : ℤ) = A139312 (n + 2)

end A139312

/-! ## A139312.P3529793217755506770

`char[lt[0, A056221(n+1)]]`
-/

namespace A139312.P3529793217755506770
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056221 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A139312.P3529793217755506770

namespace A139312

/-- `char[lt[0, A056221(n+1)]]` -/
def P3529793217755506770.Spec : Prop :=
  ∀ n, (P3529793217755506770.a n : ℤ) = A139312 (n + 2)

end A139312

/-! ## A139312.P12626352503011682694

`char[lt[A036263(n+1), 1]]`
-/

namespace A139312.P12626352503011682694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A139312.P12626352503011682694

namespace A139312

/-- `char[lt[A036263(n+1), 1]]` -/
def P12626352503011682694.Spec : Prop :=
  ∀ n, (P12626352503011682694.a n : ℤ) = A139312 (n + 2)

end A139312

/-! ## A139312.P4827170883387895298

`char[lt[1, A228098(n+1)]]`
-/

namespace A139312.P4827170883387895298
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228098 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A139312.P4827170883387895298

namespace A139312

/-- `char[lt[1, A228098(n+1)]]` -/
def P4827170883387895298.Spec : Prop :=
  ∀ n, (P4827170883387895298.a n : ℤ) = A139312 (n + 2)

end A139312

/-! ## A139312.P9469758124563626350

`round(sqrt(A079054(n+2)+1))`
-/

namespace A139312.P9469758124563626350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A079054 (n + 2) + 1 : ℝ))

end

end A139312.P9469758124563626350

namespace A139312

/-- `round(sqrt(A079054(n+2)+1))` -/
def P9469758124563626350.Spec : Prop :=
  ∀ n, P9469758124563626350.a n = A139312 (n + 2)

end A139312

/-! ## A139312.P1992970943947222388

`char[lt[Δ[A001223(n+1)], 1]]`
-/

namespace A139312.P1992970943947222388
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f4 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A139312.P1992970943947222388

namespace A139312

/-- `char[lt[Δ[A001223(n+1)], 1]]` -/
def P1992970943947222388.Spec : Prop :=
  ∀ n, (P1992970943947222388.a n : ℤ) = A139312 (n + 2)

end A139312

/-! ## A139312.P4076839193444296546

`1-char[A233671(n+1)-2]`
-/

namespace A139312.P4076839193444296546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233671 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A139312.P4076839193444296546

namespace A139312

/-- `1-char[A233671(n+1)-2]` -/
def P4076839193444296546.Spec : Prop :=
  ∀ n, P4076839193444296546.a n = A139312 (n + 2)

end A139312

/-! ## A139312.P14251076538938799632

`A330960(1-Δ[A092243(n+1)])`
-/

namespace A139312.P14251076538938799632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330960 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A139312.P14251076538938799632

namespace A139312

/-- `A330960(1-Δ[A092243(n+1)])` -/
def P14251076538938799632.Spec : Prop :=
  ∀ n, P14251076538938799632.a n = A139312 (n + 2)

end A139312

/-! ## A139312.P7164279196294230937

`A092243(2-Δ[A092243(n+1)])`
-/

namespace A139312.P7164279196294230937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092243 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A139312.P7164279196294230937

namespace A139312

/-- `A092243(2-Δ[A092243(n+1)])` -/
def P7164279196294230937.Spec : Prop :=
  ∀ n, P7164279196294230937.a n = A139312 (n + 2)

end A139312

/-! ## A139312.P310610346778643042

`floor(A065091(n+1)²/A090076(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A139312

/-- `floor(A065091(n+1)²/A090076(n+1))` -/
def P310610346778643042.Spec : Prop :=
  ∀ n, P310610346778643042.a n = A139312 (n + 2)

theorem P310610346778643042.correct : P310610346778643042.Spec := by
  intro n
  simp only [A139312, Nat.add_sub_cancel]

end A139312

/-! ## A139312.P9038874369988014092

`7%A108415(n+2)`
-/

namespace A139312.P9038874369988014092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A108415 (n + 2))

end

end A139312.P9038874369988014092

namespace A139312

/-- `7%A108415(n+2)` -/
def P9038874369988014092.Spec : Prop :=
  ∀ n, P9038874369988014092.a n = A139312 (n + 2)

end A139312

/-! ## A139312.P9655846879006900820

`1-floor(ratio[ratio[A001748(n+1)]])`
-/

namespace A139312.P9655846879006900820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊f1 (n + 1) / f1 n⌋

end

end A139312.P9655846879006900820

namespace A139312

/-- `1-floor(ratio[ratio[A001748(n+1)]])` -/
def P9655846879006900820.Spec : Prop :=
  ∀ n, P9655846879006900820.a n = A139312 (n + 2)

end A139312

/-! ## A139312.P13708812544828719313

`1-floor(ratio[ratio[A001749(n+1)]])`
-/

namespace A139312.P13708812544828719313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊f1 (n + 1) / f1 n⌋

end

end A139312.P13708812544828719313

namespace A139312

/-- `1-floor(ratio[ratio[A001749(n+1)]])` -/
def P13708812544828719313.Spec : Prop :=
  ∀ n, P13708812544828719313.a n = A139312 (n + 2)

end A139312

/-! ## A139312.P12494471105093324029

`A051702(n+2)-A339270(n+2)`
-/

namespace A139312.P12494471105093324029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051702 (n + 2) - A339270 (n + 2)

end

end A139312.P12494471105093324029

namespace A139312

/-- `A051702(n+2)-A339270(n+2)` -/
def P12494471105093324029.Spec : Prop :=
  ∀ n, P12494471105093324029.a n = A139312 (n + 2)

end A139312

/-! ## A139312.P7860025345141978657

`floor(ratio[A000040(n+1)/A001043(n+1)])`
-/

namespace A139312.P7860025345141978657
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / (A001043 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) / f1 n⌋

end

end A139312.P7860025345141978657

namespace A139312

/-- `floor(ratio[A000040(n+1)/A001043(n+1)])` -/
def P7860025345141978657.Spec : Prop :=
  ∀ n, P7860025345141978657.a n = A139312 (n + 2)

end A139312

/-! ## A139312.P14159329783208579159

`floor(ratio[A001748(n+1)/A001043(n+1)])`
-/

namespace A139312.P14159329783208579159
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (n + 1) : ℚ) / (A001043 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) / f1 n⌋

end

end A139312.P14159329783208579159

namespace A139312

/-- `floor(ratio[A001748(n+1)/A001043(n+1)])` -/
def P14159329783208579159.Spec : Prop :=
  ∀ n, P14159329783208579159.a n = A139312 (n + 2)

end A139312

/-! ## A139312.P11748644572038711135

`floor(ratio[A000040(n+1)/A045344(n+1)])`
-/

namespace A139312.P11748644572038711135
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / (A045344 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) / f1 n⌋

end

end A139312.P11748644572038711135

namespace A139312

/-- `floor(ratio[A000040(n+1)/A045344(n+1)])` -/
def P11748644572038711135.Spec : Prop :=
  ∀ n, P11748644572038711135.a n = A139312 (n + 2)

end A139312

/-! ## A139312.P9005279496129731930

`floor(ratio[A100484(n+1)/A001043(n+1)])`
-/

namespace A139312.P9005279496129731930
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (n + 1) : ℚ) / (A001043 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) / f1 n⌋

end

end A139312.P9005279496129731930

namespace A139312

/-- `floor(ratio[A100484(n+1)/A001043(n+1)])` -/
def P9005279496129731930.Spec : Prop :=
  ∀ n, P9005279496129731930.a n = A139312 (n + 2)

end A139312

/-!
# A139313: Primes prime(k) such that -prime(k-1) + 3*prime(k) - 3*prime(k+1) + prime(k+2) = 0.

The programs for A139313, the canonical program `A139313.P11049644309343226709` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139313 has offset 1).

The definition of A139313 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A064149, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A139313.P11049644309343226709

`A000040(1+A064149(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A139313

/-- `A000040(1+A064149(n+1))` -/
def P11049644309343226709.Spec : Prop :=
  ∀ n, P11049644309343226709.a n = A139313 (n + 1)

theorem P11049644309343226709.correct : P11049644309343226709.Spec := by
  intro n
  simp only [A139313, Nat.add_sub_cancel]

end A139313

/-! ## A139313.P17807951572075830168

`A045319(A064149(n+1))`
-/

namespace A139313.P17807951572075830168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A064149 (n + 1)).toNat

end

end A139313.P17807951572075830168

namespace A139313

/-- `A045319(A064149(n+1))` -/
def P17807951572075830168.Spec : Prop :=
  ∀ n, P17807951572075830168.a n = A139313 (n + 1)

end A139313

/-! ## A139313.P10908695368359760961

`A006005(A064149(n+1)+1)`
-/

namespace A139313.P10908695368359760961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A064149 (n + 1) + 1).toNat

end

end A139313.P10908695368359760961

namespace A139313

/-- `A006005(A064149(n+1)+1)` -/
def P10908695368359760961.Spec : Prop :=
  ∀ n, P10908695368359760961.a n = A139313 (n + 1)

end A139313

/-! ## A139313.P227151336605691661

`A004139(A064149(n+1)-1)`
-/

namespace A139313.P227151336605691661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A064149 (n + 1) - 1).toNat

end

end A139313.P227151336605691661

namespace A139313

/-- `A004139(A064149(n+1)-1)` -/
def P227151336605691661.Spec : Prop :=
  ∀ n, P227151336605691661.a n = A139313 (n + 1)

end A139313

/-! ## A139313.P9494454908469117607

`A008578(A064149(n+1)+2)`
-/

namespace A139313.P9494454908469117607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A064149 (n + 1) + 2).toNat

end

end A139313.P9494454908469117607

namespace A139313

/-- `A008578(A064149(n+1)+2)` -/
def P9494454908469117607.Spec : Prop :=
  ∀ n, P9494454908469117607.a n = A139313 (n + 1)

end A139313

/-! ## A139313.P6392219980918315958

`A151800(A258029(n+1))`
-/

namespace A139313.P6392219980918315958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A258029 (n + 1)).toNat

end

end A139313.P6392219980918315958

namespace A139313

/-- `A151800(A258029(n+1))` -/
def P6392219980918315958.Spec : Prop :=
  ∀ n, P6392219980918315958.a n = A139313 (n + 1)

end A139313

/-!
# A139315: a(n) is the smallest integer k such that n*k is the smallest multiple of k with twice as many divisors as k, or 0 if no such number is possible.

The programs for A139315, there is no canonical definition to state claims against.
-/

/-! ## A139315.P6889048069583569554

`A357249(n+2)/(n+2)`
-/

namespace A139315.P6889048069583569554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357249 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A139315.P6889048069583569554

/-! ## A139315.P10272447299359904447

`lcm(A000005(A203498(n)), A331552(n))`
-/

namespace A139315.P10272447299359904447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A203498 n).toNat) (A331552 n)

end

end A139315.P10272447299359904447

/-! ## A139315.P7194486031702897566

`A168263(A084092(n+1)+A032741(n))`
-/

namespace A139315.P7194486031702897566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168263 (A084092 (n + 1) + A032741 n).toNat

end

end A139315.P7194486031702897566

/-! ## A139315.P9529954030566738066

`A003418(n+1)*A050433(A154638(n))`
-/

namespace A139315.P9529954030566738066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (n + 1) * A050433 (A154638 n).toNat

end

end A139315.P9529954030566738066

/-!
# A139316: An integer k, k>=2, is in the sequence if A001222(k) (the sum of the exponents in the prime factorization of k) divides A008472(k) (the sum of the distinct primes dividing k).

The programs for A139316, the canonical program `A139316.P5331795480152910723` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139316 has offset 1).

The definition of A139316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4840 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139316.P5331795480152910723

`eq[A001222(n+2), A161606(n+2)]+2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A139316

/-- `eq[A001222(n+2), A161606(n+2)]+2` -/
def P5331795480152910723.Spec : Prop :=
  ∀ n, (P5331795480152910723.a n : ℤ) = A139316 (n + 1)

theorem P5331795480152910723.correct : P5331795480152910723.Spec := by
  intro n
  simp only [A139316, Nat.add_sub_cancel]

end A139316

/-!
# A139317: a(n) = the smallest value of the form n*k + 1, k = positive integer, that is coprime to all the previous terms of this sequence.

The programs for A139317, there is no canonical definition to state claims against.
-/

/-! ## A139317.P4126529375386323782

`A000040(A132949(n+1))`
-/

namespace A139317.P4126529375386323782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A132949 (n + 1)).toNat

end

end A139317.P4126529375386323782

/-! ## A139317.P9648473876491404354

`A008578(A132949(n+1)+1)`
-/

namespace A139317.P9648473876491404354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A132949 (n + 1) + 1).toNat

end

end A139317.P9648473876491404354

/-! ## A139317.P2718417432467342718

`A182986(A132949(n+1)+1)`
-/

namespace A139317.P2718417432467342718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A132949 (n + 1) + 1).toNat

end

end A139317.P2718417432467342718

/-! ## A139317.P18178550454725260582

`A006093(A132949(n+1))+A000035(2*n+1)`
-/

namespace A139317.P18178550454725260582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A132949 (n + 1)).toNat + A000035 (2 * n + 1)

end

end A139317.P18178550454725260582

/-! ## A139317.P2297601673186920449

`A006005(A132949(n+1))+A000035(A001223(n+1))`
-/

namespace A139317.P2297601673186920449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A132949 (n + 1)).toNat + A000035 (A001223 (n + 1)).toNat

end

end A139317.P2297601673186920449

/-! ## A139317.P12045517016325170211

`A006005(A132949(n+1))+A000035(A001043(n+1))`
-/

namespace A139317.P12045517016325170211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A132949 (n + 1)).toNat + A000035 (A001043 (n + 1)).toNat

end

end A139317.P12045517016325170211

/-! ## A139317.P8709534150951901374

`(n+1)*A139318(n+1)+1`
-/

namespace A139317.P8709534150951901374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A139318 (n + 1) + 1

end

end A139317.P8709534150951901374

/-!
# A139318: a(n) = (A139317(n)-1)/n.

The programs for A139318, there is no canonical definition to state claims against.
-/

/-! ## A139318.P4031331291061998960

`(A139317(n+1)-1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A139318.P4031331291061998960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139317 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)

end

end A139318.P4031331291061998960

/-! ## A139318.P15167396106892816121

`ceil(A139317(n+1)/(n+2))`
-/

namespace A139318.P15167396106892816121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A139317 (n + 1) : ℚ) / (n + 2 : ℚ)⌉

end

end A139318.P15167396106892816121

/-! ## A139318.P16069819362549342785

`A006093(A132949(n+1))/(n+1)`
-/

namespace A139318.P16069819362549342785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (A132949 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A139318.P16069819362549342785

/-! ## A139318.P495950719629958396

`round(A139317(n+1)/A334819(n+3))`
-/

namespace A139318.P495950719629958396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A139317 (n + 1) : ℚ) / (A334819 (n + 3) : ℚ))

end

end A139318.P495950719629958396

/-! ## A139318.P7200699230603941832

`A000010(∏{d}[A139317(n+1), #])/(n+1)`
-/

namespace A139318.P7200699230603941832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139317 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (∏ d ∈ Nat.divisors (f1 n).natAbs, d) : ℚ) / (n + 1 : ℚ)

end

end A139318.P7200699230603941832

/-! ## A139318.P10835281766711271661

`A000010(A139317(n+1)+char[1])/(n+1)`
-/

namespace A139318.P10835281766711271661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A139317 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat : ℚ) / (n + 1 : ℚ)

end

end A139318.P10835281766711271661

/-! ## A139318.P8495921966831237363

`round(∑{d}[A139317(n+1), A000010(#)]/(n+2))`
-/

namespace A139318.P8495921966831237363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d : ℤ) : ℚ) / (n + 2 : ℚ))

end

end A139318.P8495921966831237363

/-! ## A139318.P2828208368248536879

`A019425(A139317(n+1))/A103517(n)`
-/

namespace A139318.P2828208368248536879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019425 (A139317 (n + 1)).toNat : ℚ) / (A103517 n : ℚ)

end

end A139318.P2828208368248536879

/-! ## A139318.P12127870131189728447

`A000010(A139317(n+1))/A000027(n+1)`
-/

namespace A139318.P12127870131189728447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A139317 (n + 1)).toNat : ℚ) / (A000027 (n + 1) : ℚ)

end

end A139318.P12127870131189728447

/-! ## A139318.P7427117674004751826

`A091732(A139317(n+1))/A008619(2*n)`
-/

namespace A139318.P7427117674004751826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091732 (A139317 (n + 1)).toNat : ℚ) / (A008619 (2 * n) : ℚ)

end

end A139318.P7427117674004751826

/-! ## A139318.P10263146816210835425

`A000010(∑{d}[A139317(n+1), A000010(#)])/(n+1)`
-/

namespace A139318.P10263146816210835425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139317 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat : ℚ) / (n + 1 : ℚ)

end

end A139318.P10263146816210835425

/-!
# A139319: a(n) = the smallest value of the form n*k - 1, k = positive integer, that is coprime to all the previous terms of this sequence. a(1)=1.

The programs for A139319, there is no canonical definition to state claims against.
-/

/-! ## A139319.P2865386982209273284

`(n+1)*A139320(n+1)-1`
-/

namespace A139319.P2865386982209273284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A139320 (n + 1) - 1

end

end A139319.P2865386982209273284

/-! ## A139319.P14829361872831227702

`A023443((n+1)*A139320(n+1))`
-/

namespace A139319.P14829361872831227702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ((n + 1 : ℤ) * A139320 (n + 1)).toNat

end

end A139319.P14829361872831227702

/-! ## A139319.P10769401273798706829

`A103390((n+1)*A139320(n+1))`
-/

namespace A139319.P10769401273798706829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103390 ((n + 1 : ℤ) * A139320 (n + 1)).toNat

end

end A139319.P10769401273798706829

/-! ## A139319.P15409304553058950581

`A136623((n+1)*A139320(n+1))`
-/

namespace A139319.P15409304553058950581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136623 ((n + 1 : ℤ) * A139320 (n + 1)).toNat

end

end A139319.P15409304553058950581

/-! ## A139319.P6169207941287724488

`A136548((n+1)*A139320(n+1))`
-/

namespace A139319.P6169207941287724488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 ((n + 1 : ℤ) * A139320 (n + 1)).toNat

end

end A139319.P6169207941287724488

/-!
# A139320: Values of k in A139319.

The programs for A139320, there is no canonical definition to state claims against.
-/

/-! ## A139320.P18408155603745622760

`(A139319(n+1)+1)/(n+1)`
-/

namespace A139320.P18408155603745622760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139319 (n + 1) + 1 : ℚ) / (n + 1 : ℚ)

end

end A139320.P18408155603745622760

/-! ## A139320.P270763285405711708

`floor(A016969(A139319(n+1))/A016969(n))`
-/

namespace A139320.P270763285405711708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A016969 (A139319 (n + 1)).toNat : ℚ) / (A016969 n : ℚ)⌋

end

end A139320.P270763285405711708

/-! ## A139320.P7925941329873615794

`ceil(A005843(A139319(n+1))/A103517(n))`
-/

namespace A139320.P7925941329873615794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005843 (A139319 (n + 1)).toNat : ℚ) / (A103517 n : ℚ)⌉

end

end A139320.P7925941329873615794

/-! ## A139320.P11316821009102478050

`ceil(A080513(A139319(n+1))/A080513(n))`
-/

namespace A139320.P11316821009102478050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A080513 (A139319 (n + 1)).toNat : ℚ) / (A080513 n : ℚ)⌉

end

end A139320.P11316821009102478050

/-! ## A139320.P4196358669452834753

`round(A133310(A139319(n+1))/A133310(n))`
-/

namespace A139320.P4196358669452834753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A133310 (A139319 (n + 1)).toNat : ℚ) / (A133310 n : ℚ))

end

end A139320.P4196358669452834753

/-! ## A139320.P13870872983631108571

`A103517(A139319(n+1))/Δ[A014206(n)]`
-/

namespace A139320.P13870872983631108571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103517 (A139319 (n + 1)).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A139320.P13870872983631108571

/-!
# A139321: First occurrence of n in A068307: least number k such that the number of decomposition of k into the sum of three primes is n.

The programs for A139321, there is no canonical definition to state claims against.
-/

/-! ## A139321.P13770311373071930049

`A347436(n)-A000007(A052547(n))`
-/

namespace A139321.P13770311373071930049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347436 n - A000007 (A052547 n).toNat

end

end A139321.P13770311373071930049

/-! ## A139321.P18065542784932270623

`A347436(n)-A010051(A278969(n+1))`
-/

namespace A139321.P18065542784932270623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347436 n - A010051 (A278969 (n + 1)).toNat

end

end A139321.P18065542784932270623

/-! ## A139321.P8130097872930636594

`A347436(n)-A055672(A290143(n+1))`
-/

namespace A139321.P8130097872930636594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347436 n - A055672 (A290143 (n + 1)).toNat

end

end A139321.P8130097872930636594

/-! ## A139321.P3506318983678451618

`A347436(n)-A065339(p?[A280688(n+1)])`
-/

namespace A139321.P3506318983678451618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347436 n - A065339 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A139321.P3506318983678451618

/-! ## A139321.P995828564191480096

`A347436(n)-A010051(A000079(n))`
-/

namespace A139321.P995828564191480096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347436 n - A010051 (A000079 n).toNat

end

end A139321.P995828564191480096

/-!
# A139322: Record values of n in A068307.

The programs for A139322, there is no canonical definition to state claims against.
-/

/-! ## A139322.P5518008797030081008

`A139321(record[A054860(n)])`
-/

namespace A139322.P5518008797030081008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139321 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A139322.P5518008797030081008

/-! ## A139322.P2334965459460241675

`A139321(record[A068307(n+1)])`
-/

namespace A139322.P2334965459460241675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139321 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A139322.P2334965459460241675

/-! ## A139322.P3561369704637190937

`A139321(record[A083338(n+1)])`
-/

namespace A139322.P3561369704637190937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139321 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A139322.P3561369704637190937

/-! ## A139322.P1447859347409007029

`A139321(record[A259194(2*n+1)])`
-/

namespace A139322.P1447859347409007029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259194 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139321 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A139322.P1447859347409007029

/-! ## A139322.P6022418915643950062

`A139321(record[A125688(n+1)+A046926(n+1)])`
-/

namespace A139322.P6022418915643950062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (n + 1) + A046926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139321 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A139322.P6022418915643950062

/-!
# A139323: See reference for definition.

The programs for A139323, there is no canonical definition to state claims against.
-/

/-! ## A139323.P11170048778788352321

`eq[A105528(n), A229522(n+1)]`
-/

namespace A139323.P11170048778788352321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105528 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229522 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139323.P11170048778788352321

/-! ## A139323.P17788314442863728885

`eq[n, n*A316863(A056142(n))]`
-/

namespace A139323.P17788314442863728885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A316863 (A056142 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139323.P17788314442863728885

/-! ## A139323.P17283014458721278280

`eq[n, n*A316863(A056143(n))]`
-/

namespace A139323.P17283014458721278280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A316863 (A056143 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139323.P17283014458721278280

/-! ## A139323.P11285558004466599663

`eq[floor(n/10)%A180684(n+1), A004177(n)]`
-/

namespace A139323.P11285558004466599663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n : ℚ) / 10⌋ (A180684 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004177 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139323.P11285558004466599663

/-! ## A139323.P11442586961462629859

`A121022(n+5)%A053415(A000051(n))`
-/

namespace A139323.P11442586961462629859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121022 (n + 5)) (A053415 (A000051 n).toNat)

end

end A139323.P11442586961462629859

/-!
# A139324: Difference between two sequences of primes which indicate two different kinds of places in the prime sequence with some vanishing third-order difference.

The programs for A139324, there is no canonical definition to state claims against.
-/

/-! ## A139324.P912867691386545597

`A013632(A139313(n+1))`
-/

namespace A139324.P912867691386545597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A139313 (n + 1)).toNat

end

end A139324.P912867691386545597

/-! ## A139324.P16418797716355042246

`A001223(A064149(n+1)+1)`
-/

namespace A139324.P16418797716355042246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A064149 (n + 1) + 1).toNat

end

end A139324.P16418797716355042246

/-! ## A139324.P8544585770363148864

`A054541(A064149(n+1)+2)`
-/

namespace A139324.P8544585770363148864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A064149 (n + 1) + 2).toNat

end

end A139324.P8544585770363148864

/-! ## A139324.P13685613308045955114

`A125266(A064149(n+1)+2)`
-/

namespace A139324.P13685613308045955114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (A064149 (n + 1) + 2).toNat

end

end A139324.P13685613308045955114

/-! ## A139324.P14833875050279453501

`A181346(A064149(n+1)+2)`
-/

namespace A139324.P14833875050279453501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181346 (A064149 (n + 1) + 2).toNat

end

end A139324.P14833875050279453501

/-! ## A139324.P12245432619433591009

`A046933(A064149(n+1)+1)+1`
-/

namespace A139324.P12245432619433591009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (A064149 (n + 1) + 1).toNat + 1

end

end A139324.P12245432619433591009

/-! ## A139324.P4999595568294528928

`A136612(A064149(n+1))/A020639(2*(n+1))`
-/

namespace A139324.P4999595568294528928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136612 (A064149 (n + 1)).toNat : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A139324.P4999595568294528928

/-! ## A139324.P9313271714809220354

`(A136612(A064149(n+1))/2)%(A000041(n)+4)`
-/

namespace A139324.P9313271714809220354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A136612 (A064149 (n + 1)).toNat : ℚ) / 2)) (A000041 n + 4)

end

end A139324.P9313271714809220354

/-! ## A139324.P8337373388519447770

`A136612(A064149(n+1))/2*A007318(C(2, n))`
-/

namespace A139324.P8337373388519447770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136612 (A064149 (n + 1)).toNat : ℚ) / 2 * (A007318 (Nat.choose 2 n) : ℚ)

end

end A139324.P8337373388519447770

/-! ## A139324.P4206269549943118244

`A008683(9*(n+1))+A136612(A064149(n+1))/2`
-/

namespace A139324.P4206269549943118244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (9 * (n + 1)) : ℚ) + (A136612 (A064149 (n + 1)).toNat : ℚ) / 2

end

end A139324.P4206269549943118244

/-!
# A139325: Triangle read by rows: T(n,k) = number of primes in the k-th row of the square of the first n^2 odd numbers written consecutively in rows of length n, 1<=k<=n.

The programs for A139325, there is no canonical definition to state claims against.
-/

/-! ## A139325.P8790686065354620412

`A001222(lcm(A002531(n), A304097(n)))`
-/

namespace A139325.P8790686065354620412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm (A002531 n) (A304097 n))

end

end A139325.P8790686065354620412

/-! ## A139325.P14883137189691639913

`A344310(A029747(n+1)+A026409(n+1))`
-/

namespace A139325.P14883137189691639913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344310 (A029747 (n + 1) + A026409 (n + 1)).toNat

end

end A139325.P14883137189691639913

/-! ## A139325.P5055260367866023837

`A106404(A000010(3*n+1)*A036035(n))`
-/

namespace A139325.P5055260367866023837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106404 (A000010 (3 * n + 1) * A036035 n).toNat

end

end A139325.P5055260367866023837

/-! ## A139325.P17764430172021809691

`A069010(A135027(n+1)%A000252(n+1))`
-/

namespace A139325.P17764430172021809691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (Int.tmod (A135027 (n + 1)) (A000252 (n + 1))).toNat

end

end A139325.P17764430172021809691

/-! ## A139325.P15047371277729173998

`A358233(A000079(n)+6*n)`
-/

namespace A139325.P15047371277729173998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358233 (A000079 n + (6 * n : ℤ)).toNat

end

end A139325.P15047371277729173998

/-!
# A139327: Write the first n^2 odd numbers consecutively in n rows of length n: a(n) = maximal number of primes in a row.

The programs for A139327, there is no canonical definition to state claims against.
-/

/-! ## A139327.P11516450104329096441

`char[1]+char[4]+∑[A101264(n)]`
-/

namespace A139327.P11516450104329096441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A139327.P11516450104329096441

/-! ## A139327.P11310638985890623490

`char[((n+1)^n)²]+∑[A010051(2*n+1)]`
-/

namespace A139327.P11310638985890623490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A139327.P11310638985890623490

/-! ## A139327.P8026517774721671712

`a(n-1)+C(2, A000005(2*n+1))` with `a(0)=0, a(1)=2, a(2)=2, a(3)=3, a(4)=4, a(5)=4`
-/

namespace A139327.P8026517774721671712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2, 3, 4, 4] fun n a =>
  a (n - 1) + Nat.choose 2 (A000005 (2 * n + 1)).toNat

end

end A139327.P8026517774721671712

/-! ## A139327.P5848547401292123161

`A099801(n)-A267869(n+2)`
-/

namespace A139327.P5848547401292123161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 n - A267869 (n + 2)

end

end A139327.P5848547401292123161

/-! ## A139327.P2035860001470967467

`A099801(n)-A043545(∑[n+1])`
-/

namespace A139327.P2035860001470967467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 n - A043545 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A139327.P2035860001470967467

/-! ## A139327.P2673164481333515702

`A099801(n)-floor(atan(A291564(n+1)))`
-/

namespace A139327.P2673164481333515702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 n - ⌊Real.arctan (A291564 (n + 1) : ℝ)⌋

end

end A139327.P2673164481333515702

/-! ## A139327.P16372265433488388412

`A099801(n)-A327470(n+2)²%3`
-/

namespace A139327.P16372265433488388412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 n - Int.tmod (A327470 (n + 2) ^ 2) 3

end

end A139327.P16372265433488388412

/-! ## A139327.P794756078524996514

`A099802(n+1)-char[A023889(n+1)]`
-/

namespace A139327.P794756078524996514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023889 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A139327.P794756078524996514

/-! ## A139327.P16477179968070613462

`A099801(n)-A057427(A007149(n))`
-/

namespace A139327.P16477179968070613462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 n - A057427 (A007149 n).toNat

end

end A139327.P16477179968070613462

/-!
# A139328: Sums of rows of the triangle in A139325.

The programs for A139328, the canonical program `A139328.P7634971209800712135` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139328 has offset 1).

The definition of A139328 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139328.P7634971209800712135

`∑[A285269(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139328

/-- `∑[A285269(n)]` -/
def P7634971209800712135.Spec : Prop :=
  ∀ n, P7634971209800712135.a n = A139328 (n + 1)

theorem P7634971209800712135.correct : P7634971209800712135.Spec := by
  intro n
  simp only [A139328, Nat.add_sub_cancel]

end A139328

/-! ## A139328.P15770032586014694466

`A278114(n+1)-1`
-/

namespace A139328.P15770032586014694466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278114 (n + 1) - 1

end

end A139328.P15770032586014694466

namespace A139328

/-- `A278114(n+1)-1` -/
def P15770032586014694466.Spec : Prop :=
  ∀ n, P15770032586014694466.a n = A139328 (n + 1)

end A139328

/-! ## A139328.P14723623595251192248

`∑[A285786(n+1)]-1`
-/

namespace A139328.P14723623595251192248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A139328.P14723623595251192248

namespace A139328

/-- `∑[A285786(n+1)]-1` -/
def P14723623595251192248.Spec : Prop :=
  ∀ n, P14723623595251192248.a n = A139328 (n + 1)

end A139328

/-! ## A139328.P18045941562048077890

`(n+1)²-∑[A289279(n+1)]-1`
-/

namespace A139328.P18045941562048077890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A139328.P18045941562048077890

namespace A139328

/-- `(n+1)²-∑[A289279(n+1)]-1` -/
def P18045941562048077890.Spec : Prop :=
  ∀ n, P18045941562048077890.a n = A139328 (n + 1)

end A139328

/-! ## A139328.P5174788970318040159

`∑[A285786(n+1)%A059306(n)]`
-/

namespace A139328.P5174788970318040159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285786 (n + 1)) (A059306 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139328.P5174788970318040159

namespace A139328

/-- `∑[A285786(n+1)%A059306(n)]` -/
def P5174788970318040159.Spec : Prop :=
  ∀ n, P5174788970318040159.a n = A139328 (n + 1)

end A139328

/-! ## A139328.P16708693850868138715

`A023443(A278114(n+1))`
-/

namespace A139328.P16708693850868138715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A278114 (n + 1)).toNat

end

end A139328.P16708693850868138715

namespace A139328

/-- `A023443(A278114(n+1))` -/
def P16708693850868138715.Spec : Prop :=
  ∀ n, P16708693850868138715.a n = A139328 (n + 1)

end A139328

/-! ## A139328.P8581933066233341787

`A000720(2*(n+1)²)-1`
-/

namespace A139328.P8581933066233341787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * (n + 1) ^ 2) - 1

end

end A139328.P8581933066233341787

namespace A139328

/-- `A000720(2*(n+1)²)-1` -/
def P8581933066233341787.Spec : Prop :=
  ∀ n, P8581933066233341787.a n = A139328 (n + 1)

end A139328

/-! ## A139328.P10493437237723857952

`A099802((n+1)²)-1`
-/

namespace A139328.P10493437237723857952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 ((n + 1) ^ 2) - 1

end

end A139328.P10493437237723857952

namespace A139328

/-- `A099802((n+1)²)-1` -/
def P10493437237723857952.Spec : Prop :=
  ∀ n, P10493437237723857952.a n = A139328 (n + 1)

end A139328

/-! ## A139328.P2901452036090238167

`A278617((n+1)²+1)`
-/

namespace A139328.P2901452036090238167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278617 ((n + 1) ^ 2 + 1)

end

end A139328.P2901452036090238167

namespace A139328

/-- `A278617((n+1)²+1)` -/
def P2901452036090238167.Spec : Prop :=
  ∀ n, P2901452036090238167.a n = A139328 (n + 1)

end A139328

/-!
# A139329: a(n) = (factorial of the number of 0's in the binary expansion of n).

The programs for A139329, the canonical program `A139329.P7958588769808554264` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139329 has offset 0).

The definition of A139329 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139329.P7958588769808554264

`A000142(A023416(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139329

/-- `A000142(A023416(n))` -/
def P7958588769808554264.Spec : Prop :=
  ∀ n, P7958588769808554264.a n = A139329 n

theorem P7958588769808554264.correct : P7958588769808554264.Spec := by
  intro n
  simp only [A139329]

end A139329

/-! ## A139329.P14545496402205604281

`A000142(A080791(n))`
-/

namespace A139329.P14545496402205604281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A080791 n).toNat

end

end A139329.P14545496402205604281

namespace A139329

/-- `A000142(A080791(n))` -/
def P14545496402205604281.Spec : Prop :=
  ∀ n, P14545496402205604281.a n = A139329 n

end A139329

/-! ## A139329.P3683096528135341797

`∑[a(floor(n/2))-a(n-1)]!` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A139329.P3683096528135341797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A139329.P3683096528135341797

namespace A139329

/-- `∑[a(floor(n/2))-a(n-1)]!` -/
def P3683096528135341797.Spec : Prop :=
  ∀ n, (P3683096528135341797.a n : ℤ) = A139329 n

end A139329

/-! ## A139329.P5253396917807016703

`log2(A080100(n))!`
-/

namespace A139329.P5253396917807016703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.logb 2 (A080100 n : ℝ))).toNat

end

end A139329.P5253396917807016703

namespace A139329

/-- `log2(A080100(n))!` -/
def P5253396917807016703.Spec : Prop :=
  ∀ n, (P5253396917807016703.a n : ℤ) = A139329 n

end A139329

/-! ## A139329.P1077297378633079563

`∑[A089263(n)]!`
-/

namespace A139329.P1077297378633079563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A139329.P1077297378633079563

namespace A139329

/-- `∑[A089263(n)]!` -/
def P1077297378633079563.Spec : Prop :=
  ∀ n, (P1077297378633079563.a n : ℤ) = A139329 n

end A139329

/-! ## A139329.P8089063143810575910

`val(A176893(n), 2)!`
-/

namespace A139329.P8089063143810575910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.valuation (A176893 n).toNat 2)

end

end A139329.P8089063143810575910

namespace A139329

/-- `val(A176893(n), 2)!` -/
def P8089063143810575910.Spec : Prop :=
  ∀ n, (P8089063143810575910.a n : ℤ) = A139329 n

end A139329

/-! ## A139329.P6959961960818211642

`(floor(log2(2*or(1, n)))-A000120(n))!`
-/

namespace A139329.P6959961960818211642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((Nat.log 2 (2 * Nat.lor 1 n) : ℤ) - A000120 n).toNat

end

end A139329.P6959961960818211642

namespace A139329

/-- `(floor(log2(2*or(1, n)))-A000120(n))!` -/
def P6959961960818211642.Spec : Prop :=
  ∀ n, (P6959961960818211642.a n : ℤ) = A139329 n

end A139329

/-! ## A139329.P8517291030942017166

`(A070939(n)-(n-(∑[val(n+1, 2)]-val(n+1, 2))))!`
-/

namespace A139329.P8517291030942017166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A070939 n - ((n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)))).toNat

end

end A139329.P8517291030942017166

namespace A139329

/-- `(A070939(n)-(n-(∑[val(n+1, 2)]-val(n+1, 2))))!` -/
def P8517291030942017166.Spec : Prop :=
  ∀ n, (P8517291030942017166.a n : ℤ) = A139329 n

end A139329

/-! ## A139329.P18286658426511993283

`A093659(A035327(n))`
-/

namespace A139329.P18286658426511993283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093659 (A035327 n).toNat

end

end A139329.P18286658426511993283

namespace A139329

/-- `A093659(A035327(n))` -/
def P18286658426511993283.Spec : Prop :=
  ∀ n, P18286658426511993283.a n = A139329 n

end A139329

/-! ## A139329.P15991764078514220089

`A112624(A080100(n))`
-/

namespace A139329.P15991764078514220089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A080100 n).toNat

end

end A139329.P15991764078514220089

namespace A139329

/-- `A112624(A080100(n))` -/
def P15991764078514220089.Spec : Prop :=
  ∀ n, P15991764078514220089.a n = A139329 n

end A139329

/-! ## A139329.P9864955166186340230

`A093659(A080079(n+1))`
-/

namespace A139329.P9864955166186340230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093659 (A080079 (n + 1)).toNat

end

end A139329.P9864955166186340230

namespace A139329

/-- `A093659(A080079(n+1))` -/
def P9864955166186340230.Spec : Prop :=
  ∀ n, P9864955166186340230.a n = A139329 n

end A139329

/-! ## A139329.P14224861064621958093

`A136494(n)/A093659(n)`
-/

namespace A139329.P14224861064621958093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136494 n : ℚ) / (A093659 n : ℚ)

end

end A139329.P14224861064621958093

namespace A139329

/-- `A136494(n)/A093659(n)` -/
def P14224861064621958093.Spec : Prop :=
  ∀ n, P14224861064621958093.a n = (A139329 n : ℚ)

end A139329

/-! ## A139329.P6445629014598299904

`(A070939(n)-∑{e}[A071044(n), #])!`
-/

namespace A139329.P6445629014598299904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A070939 n - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)).toNat

end

end A139329.P6445629014598299904

namespace A139329

/-- `(A070939(n)-∑{e}[A071044(n), #])!` -/
def P6445629014598299904.Spec : Prop :=
  ∀ n, (P6445629014598299904.a n : ℤ) = A139329 n

end A139329

/-! ## A139329.P3305960499595277574

`(∏{e}[2*n+1-A006257(n), #]-∑{e}[A071044(n), #])!`
-/

namespace A139329.P3305960499595277574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A006257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)).toNat

end

end A139329.P3305960499595277574

namespace A139329

/-- `(∏{e}[2*n+1-A006257(n), #]-∑{e}[A071044(n), #])!` -/
def P3305960499595277574.Spec : Prop :=
  ∀ n, (P3305960499595277574.a n : ℤ) = A139329 n

end A139329

/-! ## A139329.P16899783747724658956

`(∏{e}[2*n+1-A006257(n), #]-(2*n-A005187(n)))!`
-/

namespace A139329.P16899783747724658956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A006257 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - ((2 * n : ℤ) - A005187 n)).toNat

end

end A139329.P16899783747724658956

namespace A139329

/-- `(∏{e}[2*n+1-A006257(n), #]-(2*n-A005187(n)))!` -/
def P16899783747724658956.Spec : Prop :=
  ∀ n, (P16899783747724658956.a n : ℤ) = A139329 n

end A139329

/-! ## A139329.P17945038900201475748

`A000142(A037861(n)+A000120(n))`
-/

namespace A139329.P17945038900201475748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A037861 n + A000120 n).toNat

end

end A139329.P17945038900201475748

namespace A139329

/-- `A000142(A037861(n)+A000120(n))` -/
def P17945038900201475748.Spec : Prop :=
  ∀ n, P17945038900201475748.a n = A139329 n

end A139329

/-! ## A139329.P4135153219344321340

`A000142(A070939(n)-A000120(n))`
-/

namespace A139329.P4135153219344321340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A070939 n - A000120 n).toNat

end

end A139329.P4135153219344321340

namespace A139329

/-- `A000142(A070939(n)-A000120(n))` -/
def P4135153219344321340.Spec : Prop :=
  ∀ n, P4135153219344321340.a n = A139329 n

end A139329

/-! ## A139329.P5332821852116217501

`A136494(n)/A000142(A000120(n))`
-/

namespace A139329.P5332821852116217501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136494 n : ℚ) / (A000142 (A000120 n).toNat : ℚ)

end

end A139329.P5332821852116217501

namespace A139329

/-- `A136494(n)/A000142(A000120(n))` -/
def P5332821852116217501.Spec : Prop :=
  ∀ n, P5332821852116217501.a n = (A139329 n : ℚ)

end A139329

/-! ## A139329.P1936045689399756983

`(A070939(n)-(A160385(n)+A160383(n)))!`
-/

namespace A139329.P1936045689399756983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A070939 n - (A160385 n + A160383 n)).toNat

end

end A139329.P1936045689399756983

namespace A139329

/-- `(A070939(n)-(A160385(n)+A160383(n)))!` -/
def P1936045689399756983.Spec : Prop :=
  ∀ n, (P1936045689399756983.a n : ℤ) = A139329 n

end A139329

/-! ## A139329.P14469368539206074271

`(A070939(n)-(n-∑[A007814(A302436(n))]))!`
-/

namespace A139329.P14469368539206074271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A302436 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A070939 n - ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A139329.P14469368539206074271

namespace A139329

/-- `(A070939(n)-(n-∑[A007814(A302436(n))]))!` -/
def P14469368539206074271.Spec : Prop :=
  ∀ n, (P14469368539206074271.a n : ℤ) = A139329 n

end A139329

/-!
# A139331: Triangle read by rows: ConvOffsStoT transform of A103505.

The programs for A139331, there is no canonical definition to state claims against.
-/

/-! ## A139331.P15182589403368960730

`A304961(A048720(n)%A287390(2*n+3))`
-/

namespace A139331.P15182589403368960730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304961 (Int.tmod (A048720 n) (A287390 (2 * n + 3))).toNat

end

end A139331.P15182589403368960730

/-! ## A139331.P12303956889807907039

`A304961(A048720(n)%A353942(n+1))`
-/

namespace A139331.P12303956889807907039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304961 (Int.tmod (A048720 n) (A353942 (n + 1))).toNat

end

end A139331.P12303956889807907039

/-! ## A139331.P10182682967768136684

`A145892(A321884(n))%A313783(A145891(n))`
-/

namespace A139331.P10182682967768136684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145892 (A321884 n).toNat) (A313783 (A145891 n).toNat)

end

end A139331.P10182682967768136684

/-!
# A139333: Floor of entry (2,1) of [0,1; 1,phi]^n.

The programs for A139333, there is no canonical definition to state claims against.
-/

/-! ## A139333.P1456304825527463695

`A054404(2*A131403(n))`
-/

namespace A139333.P1456304825527463695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (2 * A131403 n).toNat

end

end A139333.P1456304825527463695

/-! ## A139333.P3595346511451235486

`A000006(A149184(n)+A148453(n))`
-/

namespace A139333.P3595346511451235486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A149184 n + A148453 n).toNat

end

end A139333.P3595346511451235486

/-! ## A139333.P15704759443639642037

`A042950(n)-A000196(A005056(n))`
-/

namespace A139333.P15704759443639642037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n - A000196 (A005056 n).toNat

end

end A139333.P15704759443639642037

/-! ## A139333.P13528581121959841641

`A042950(n)-A000196(A007689(n))`
-/

namespace A139333.P13528581121959841641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n - A000196 (A007689 n).toNat

end

end A139333.P13528581121959841641

/-!
# A139334: Starts with 2; has two properties: concatenation of its digits is same string as concatenation of digits of its first differences and sequence and first differences have no term in common. When there is a choice in choosing the next term in the first differences, choose the smallest number not yet present in either the sequence or its first differences.

The programs for A139334, there is no canonical definition to state claims against.
-/

/-! ## A139334.P603666426953731569

`A139335(n)+a(n-1)` with `a(0)=2`
-/

namespace A139334.P603666426953731569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A139335 n + a (n - 1)

end

end A139334.P603666426953731569

/-! ## A139334.P13792956818279083086

`∑[A139335(abs(1-n)+1)]-2`
-/

namespace A139334.P13792956818279083086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139335 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A139334.P13792956818279083086

/-! ## A139334.P1168633101345039284

`A139335(n)-ceil(-a(A028310(n)-1))` with `a(0)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A139334.P1168633101345039284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A139335 n - (-a (A028310 n - 1).toNat)

end

end A139334.P1168633101345039284

/-!
# A139335: First differences of A139334.

The programs for A139335, there is no canonical definition to state claims against.
-/

/-! ## A139335.P10134440196644209813

`Δ[A139334(n+1)]`
-/

namespace A139335.P10134440196644209813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139334 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139335.P10134440196644209813

/-! ## A139335.P15794880515652722892

`Δ[record[A139334(A203814(n))]]`
-/

namespace A139335.P15794880515652722892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139334 (A203814 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139335.P15794880515652722892

/-! ## A139335.P10387100563844569210

`Δ[record[A139334(A286531(n))]]`
-/

namespace A139335.P10387100563844569210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139334 (A286531 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139335.P10387100563844569210

/-! ## A139335.P7178085247052058309

`Δ[record[A139334(A286532(n))]]`
-/

namespace A139335.P7178085247052058309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139334 (A286532 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139335.P7178085247052058309

/-! ## A139335.P5942621079481736782

`Δ[record[A139334(A286533(n))]]`
-/

namespace A139335.P5942621079481736782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139334 (A286533 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139335.P5942621079481736782

/-! ## A139335.P12039938502368748010

`Δ[record[A139334(A286535(n))]]`
-/

namespace A139335.P12039938502368748010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139334 (A286535 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139335.P12039938502368748010

/-! ## A139335.P5805990421255273278

`Δ[record[A139334(A286543(n))]]`
-/

namespace A139335.P5805990421255273278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139334 (A286543 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139335.P5805990421255273278

/-! ## A139335.P16665099215229287379

`Δ[record[A139334(A286547(n))]]`
-/

namespace A139335.P16665099215229287379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139334 (A286547 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139335.P16665099215229287379

/-! ## A139335.P8776525062394247703

`A139334(n+2)-A139334(n+1)`
-/

namespace A139335.P8776525062394247703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139334 (n + 2) - A139334 (n + 1)

end

end A139335.P8776525062394247703

/-!
# A139337: Replace each digit with its number of occurrences in decimal representation of n.

The programs for A139337, there is no canonical definition to state claims against.
-/

/-! ## A139337.P3887139683216739611

`lcm(A351653(A048097(n+1)), A351653(n))`
-/

namespace A139337.P3887139683216739611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A351653 (A048097 (n + 1)).toNat) (A351653 n)

end

end A139337.P3887139683216739611

/-!
# A139338: Least k > 0 such that Sum_{i=0..2*n-1} (-k)^i/i! < 0.

The programs for A139338, there is no canonical definition to state claims against.
-/

/-! ## A139338.P7754922460422013105

`ceil(∑[A194151(n+1)/Δ[n²]])`
-/

namespace A139338.P7754922460422013105
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194151 (n + 1) : ℚ) / ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A139338.P7754922460422013105

/-! ## A139338.P17682682936405162883

`floor(A000196(∑[A168206(n+1)])/2)+1`
-/

namespace A139338.P17682682936405162883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2⌋ + 1

end

end A139338.P17682682936405162883

/-! ## A139338.P15260663305793262444

`A008619(A000196(∑[A168206(n+1)]))`
-/

namespace A139338.P15260663305793262444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A139338.P15260663305793262444

/-! ## A139338.P17897134657800806026

`A095861(A186382(n+2)+A000217(n+4))`
-/

namespace A139338.P17897134657800806026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (A186382 (n + 2) + A000217 (n + 4)).toNat

end

end A139338.P17897134657800806026

/-! ## A139338.P11661688607165505107

`ceil(∑[A091213(n+1)/A080578(n+1)])`
-/

namespace A139338.P11661688607165505107
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091213 (n + 1) : ℚ) / (A080578 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A139338.P11661688607165505107

/-! ## A139338.P1972727066591901333

`A008619(lt[A157695(n+1), A008653(n)])`
-/

namespace A139338.P1972727066591901333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A139338.P1972727066591901333

/-!
# A139351: Let the binary expansion of n be n = Sum_{k} 2^{r_k}, let e(n) be the number of r_k's that are even, o(n) the number that are odd; sequence gives e(n).

The programs for A139351, the canonical program `A139351.P2266554670828086265` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139351 has offset 0).

The definition of A139351 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139351.P2266554670828086265

`a(floor(n/4))+n%2` with `a(0)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A139351

/-- `a(floor(n/4))+n%2` -/
def P2266554670828086265.Spec : Prop :=
  ∀ n, (P2266554670828086265.a n : ℤ) = A139351 n

theorem P2266554670828086265.correct : P2266554670828086265.Spec := by
  intro n
  simp only [A139351]

end A139351

/-! ## A139351.P8887539625277548316

`∑{digits}[A007090(n), and(1, #)]`
-/

namespace A139351.P8887539625277548316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.land 1 x).sum

end

end A139351.P8887539625277548316

namespace A139351

/-- `∑{digits}[A007090(n), and(1, #)]` -/
def P8887539625277548316.Spec : Prop :=
  ∀ n, (P8887539625277548316.a n : ℤ) = A139351 n

end A139351

/-! ## A139351.P15509674965513023671

`A000120(n)-a(floor(n/2))` with `a(0)=0`
-/

namespace A139351.P15509674965513023671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000120 n - a ⌊(n : ℚ) / 2⌋.toNat

end

end A139351.P15509674965513023671

namespace A139351

/-- `A000120(n)-a(floor(n/2))` -/
def P15509674965513023671.Spec : Prop :=
  ∀ n, P15509674965513023671.a n = A139351 n

end A139351

/-! ## A139351.P4255437912253343735

`A000120(A059905(n))`
-/

namespace A139351.P4255437912253343735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A059905 n).toNat

end

end A139351.P4255437912253343735

namespace A139351

/-- `A000120(A059905(n))` -/
def P4255437912253343735.Spec : Prop :=
  ∀ n, P4255437912253343735.a n = A139351 n

end A139351

/-! ## A139351.P1578271265040080097

`A000120(A063694(n))`
-/

namespace A139351.P1578271265040080097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A063694 n).toNat

end

end A139351.P1578271265040080097

namespace A139351

/-- `A000120(A063694(n))` -/
def P1578271265040080097.Spec : Prop :=
  ∀ n, P1578271265040080097.a n = A139351 n

end A139351

/-! ## A139351.P10866175241632383026

`A069010(2*A063694(n))`
-/

namespace A139351.P10866175241632383026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (2 * A063694 n).toNat

end

end A139351.P10866175241632383026

namespace A139351

/-- `A069010(2*A063694(n))` -/
def P10866175241632383026.Spec : Prop :=
  ∀ n, P10866175241632383026.a n = A139351 n

end A139351

/-! ## A139351.P17818920048769046971

`A000120(A004514(n)/2)`
-/

namespace A139351.P17818920048769046971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A004514 n : ℚ) / 2)).toNat

end

end A139351.P17818920048769046971

namespace A139351

/-- `A000120(A004514(n)/2)` -/
def P17818920048769046971.Spec : Prop :=
  ∀ n, P17818920048769046971.a n = A139351 n

end A139351

/-! ## A139351.P14821039603801493998

`A053737(A004514(n)/2)`
-/

namespace A139351.P14821039603801493998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (SequenceMachineLib.roundAway ((A004514 n : ℚ) / 2)).toNat

end

end A139351.P14821039603801493998

namespace A139351

/-- `A053737(A004514(n)/2)` -/
def P14821039603801493998.Spec : Prop :=
  ∀ n, P14821039603801493998.a n = A139351 n

end A139351

/-! ## A139351.P5889035767597074103

`A139352(n)+A065359(n)`
-/

namespace A139351.P5889035767597074103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n + A065359 n

end

end A139351.P5889035767597074103

namespace A139351

/-- `A139352(n)+A065359(n)` -/
def P5889035767597074103.Spec : Prop :=
  ∀ n, P5889035767597074103.a n = A139351 n

end A139351

/-! ## A139351.P2535679942337224939

`A160383(n)+A160381(n)`
-/

namespace A139351.P2535679942337224939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n + A160381 n

end

end A139351.P2535679942337224939

namespace A139351

/-- `A160383(n)+A160381(n)` -/
def P2535679942337224939.Spec : Prop :=
  ∀ n, P2535679942337224939.a n = A139351 n

end A139351

/-! ## A139351.P9573623268665921431

`A000120(n-A063695(n))`
-/

namespace A139351.P9573623268665921431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((n : ℤ) - A063695 n).toNat

end

end A139351.P9573623268665921431

namespace A139351

/-- `A000120(n-A063695(n))` -/
def P9573623268665921431.Spec : Prop :=
  ∀ n, P9573623268665921431.a n = A139351 n

end A139351

/-! ## A139351.P16926125969636627786

`A053737(n-A063695(n))`
-/

namespace A139351.P16926125969636627786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 ((n : ℤ) - A063695 n).toNat

end

end A139351.P16926125969636627786

namespace A139351

/-- `A053737(n-A063695(n))` -/
def P16926125969636627786.Spec : Prop :=
  ∀ n, P16926125969636627786.a n = A139351 n

end A139351

/-! ## A139351.P10120387355622743708

`A068639(n)-A054893(n)`
-/

namespace A139351.P10120387355622743708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068639 n - A054893 n

end

end A139351.P10120387355622743708

namespace A139351

/-- `A068639(n)-A054893(n)` -/
def P10120387355622743708.Spec : Prop :=
  ∀ n, P10120387355622743708.a n = A139351 n

end A139351

/-! ## A139351.P6533211064533532273

`A000120(n)-A139352(n)`
-/

namespace A139351.P6533211064533532273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A139352 n

end

end A139351.P6533211064533532273

namespace A139351

/-- `A000120(n)-A139352(n)` -/
def P6533211064533532273.Spec : Prop :=
  ∀ n, P6533211064533532273.a n = A139351 n

end A139351

/-! ## A139351.P12303209199503272648

`A160385(n)-A160382(n)`
-/

namespace A139351.P12303209199503272648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 n - A160382 n

end

end A139351.P12303209199503272648

namespace A139351

/-- `A160385(n)-A160382(n)` -/
def P12303209199503272648.Spec : Prop :=
  ∀ n, P12303209199503272648.a n = A139351 n

end A139351

/-! ## A139351.P13133397559003304622

`∑[A088705(n)]-A139352(n)`
-/

namespace A139351.P13133397559003304622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A139352 n

end

end A139351.P13133397559003304622

namespace A139351

/-- `∑[A088705(n)]-A139352(n)` -/
def P13133397559003304622.Spec : Prop :=
  ∀ n, P13133397559003304622.a n = A139351 n

end A139351

/-! ## A139351.P14593027416516679295

`2*A000120(n)-A053737(n)`
-/

namespace A139351.P14593027416516679295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000120 n - A053737 n

end

end A139351.P14593027416516679295

namespace A139351

/-- `2*A000120(n)-A053737(n)` -/
def P14593027416516679295.Spec : Prop :=
  ∀ n, P14593027416516679295.a n = A139351 n

end A139351

/-! ## A139351.P13802095258204251125

`A000120((A053985(n)+n)/2)`
-/

namespace A139351.P13802095258204251125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A053985 n + (n : ℤ) : ℚ) / 2)).toNat

end

end A139351.P13802095258204251125

namespace A139351

/-- `A000120((A053985(n)+n)/2)` -/
def P13802095258204251125.Spec : Prop :=
  ∀ n, P13802095258204251125.a n = A139351 n

end A139351

/-! ## A139351.P10017656767955078889

`(A065359(n)+A000120(n))/2`
-/

namespace A139351.P10017656767955078889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065359 n + A000120 n : ℚ) / 2

end

end A139351.P10017656767955078889

namespace A139351

/-- `(A065359(n)+A000120(n))/2` -/
def P10017656767955078889.Spec : Prop :=
  ∀ n, P10017656767955078889.a n = (A139351 n : ℚ)

end A139351

/-! ## A139351.P17216536632773234223

`A027615((A053985(n)+n)/2)`
-/

namespace A139351.P17216536632773234223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027615 (SequenceMachineLib.roundAway ((A053985 n + (n : ℤ) : ℚ) / 2)).toNat

end

end A139351.P17216536632773234223

namespace A139351

/-- `A027615((A053985(n)+n)/2)` -/
def P17216536632773234223.Spec : Prop :=
  ∀ n, P17216536632773234223.a n = A139351 n

end A139351

/-!
# A139352: Let the binary expansion of n be n = Sum_{k} 2^{r_k}, let e(n) be the number of r_k's that are even, o(n) the number that are odd; sequence gives o(n).

The programs for A139352, the canonical program `A139352.P2034447244462371406` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139352 has offset 0).

The definition of A139352 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139352.P2034447244462371406

`A053737(n)-A000120(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A139352

/-- `A053737(n)-A000120(n)` -/
def P2034447244462371406.Spec : Prop :=
  ∀ n, P2034447244462371406.a n = A139352 n

theorem P2034447244462371406.correct : P2034447244462371406.Spec := by
  intro n
  simp only [A139352]

end A139352

/-! ## A139352.P4124277370259029018

`∑{e}[A338854(n), #]`
-/

namespace A139352.P4124277370259029018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A139352.P4124277370259029018

namespace A139352

/-- `∑{e}[A338854(n), #]` -/
def P4124277370259029018.Spec : Prop :=
  ∀ n, (P4124277370259029018.a n : ℤ) = A139352 n

end A139352

/-! ## A139352.P11763685660590794857

`A139351(floor(n/2))`
-/

namespace A139352.P11763685660590794857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 ⌊(n : ℚ) / 2⌋.toNat

end

end A139352.P11763685660590794857

namespace A139352

/-- `A139351(floor(n/2))` -/
def P11763685660590794857.Spec : Prop :=
  ∀ n, P11763685660590794857.a n = A139352 n

end A139352

/-! ## A139352.P12744013478542025133

`A000120(floor(n/2))-a(floor(n/2))` with `a(0)=0`
-/

namespace A139352.P12744013478542025133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000120 ⌊(n : ℚ) / 2⌋.toNat - a ⌊(n : ℚ) / 2⌋.toNat

end

end A139352.P12744013478542025133

namespace A139352

/-- `A000120(floor(n/2))-a(floor(n/2))` -/
def P12744013478542025133.Spec : Prop :=
  ∀ n, P12744013478542025133.a n = A139352 n

end A139352

/-! ## A139352.P1062997324306856933

`log2(A001316(n))-(a(floor(n/2))+n%2)` with `a(0)=0`
-/

namespace A139352.P1062997324306856933
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  Real.logb 2 (A001316 n : ℝ) - (a ⌊(n : ℚ) / 2⌋.toNat + ((n % 2 : ℕ) : ℝ))

end

end A139352.P1062997324306856933

namespace A139352

/-- `log2(A001316(n))-(a(floor(n/2))+n%2)` -/
def P1062997324306856933.Spec : Prop :=
  ∀ n, P1062997324306856933.a n = (A139352 n : ℝ)

end A139352

/-! ## A139352.P1151823969496569469

`n-A011371(n)-(a(floor(n/2))+and(1, n))` with `a(0)=0`
-/

namespace A139352.P1151823969496569469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - A011371 n - (a ⌊(n : ℚ) / 2⌋.toNat + (Nat.land 1 n : ℤ))

end

end A139352.P1151823969496569469

namespace A139352

/-- `n-A011371(n)-(a(floor(n/2))+and(1, n))` -/
def P1151823969496569469.Spec : Prop :=
  ∀ n, P1151823969496569469.a n = A139352 n

end A139352

/-! ## A139352.P2056530811822520540

`A000120(A059906(n))`
-/

namespace A139352.P2056530811822520540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A059906 n).toNat

end

end A139352.P2056530811822520540

namespace A139352

/-- `A000120(A059906(n))` -/
def P2056530811822520540.Spec : Prop :=
  ∀ n, P2056530811822520540.a n = A139352 n

end A139352

/-! ## A139352.P14870913369185891395

`A000120(A063695(n))`
-/

namespace A139352.P14870913369185891395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A063695 n).toNat

end

end A139352.P14870913369185891395

namespace A139352

/-- `A000120(A063695(n))` -/
def P14870913369185891395.Spec : Prop :=
  ∀ n, P14870913369185891395.a n = A139352 n

end A139352

/-! ## A139352.P11242196278382364528

`A001222(A338854(n))`
-/

namespace A139352.P11242196278382364528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A338854 n).toNat

end

end A139352.P11242196278382364528

namespace A139352

/-- `A001222(A338854(n))` -/
def P11242196278382364528.Spec : Prop :=
  ∀ n, P11242196278382364528.a n = A139352 n

end A139352

/-! ## A139352.P11150728959301792787

`A053737(A063695(n)/2)`
-/

namespace A139352.P11150728959301792787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (SequenceMachineLib.roundAway ((A063695 n : ℚ) / 2)).toNat

end

end A139352.P11150728959301792787

namespace A139352

/-- `A053737(A063695(n)/2)` -/
def P11150728959301792787.Spec : Prop :=
  ∀ n, P11150728959301792787.a n = A139352 n

end A139352

/-! ## A139352.P10595112479105422238

`A160383(n)+A160382(n)`
-/

namespace A139352.P10595112479105422238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n + A160382 n

end

end A139352.P10595112479105422238

namespace A139352

/-- `A160383(n)+A160382(n)` -/
def P10595112479105422238.Spec : Prop :=
  ∀ n, P10595112479105422238.a n = A139352 n

end A139352

/-! ## A139352.P6921110415099672359

`A000120(n-A063694(n))`
-/

namespace A139352.P6921110415099672359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((n : ℤ) - A063694 n).toNat

end

end A139352.P6921110415099672359

namespace A139352

/-- `A000120(n-A063694(n))` -/
def P6921110415099672359.Spec : Prop :=
  ∀ n, P6921110415099672359.a n = A139352 n

end A139352

/-! ## A139352.P5418339784413463209

`A065359(n-A053985(n))`
-/

namespace A139352.P5418339784413463209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 ((n : ℤ) - A053985 n).toNat

end

end A139352.P5418339784413463209

namespace A139352

/-- `A065359(n-A053985(n))` -/
def P5418339784413463209.Spec : Prop :=
  ∀ n, P5418339784413463209.a n = A139352 n

end A139352

/-! ## A139352.P16159851952192090328

`A069010(n-A063694(n))`
-/

namespace A139352.P16159851952192090328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 ((n : ℤ) - A063694 n).toNat

end

end A139352.P16159851952192090328

namespace A139352

/-- `A069010(n-A063694(n))` -/
def P16159851952192090328.Spec : Prop :=
  ∀ n, P16159851952192090328.a n = A139352 n

end A139352

/-! ## A139352.P14384401700282536338

`A000120(n)-A139351(n)`
-/

namespace A139352.P14384401700282536338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A139351 n

end

end A139352.P14384401700282536338

namespace A139352

/-- `A000120(n)-A139351(n)` -/
def P14384401700282536338.Spec : Prop :=
  ∀ n, P14384401700282536338.a n = A139352 n

end A139352

/-! ## A139352.P10797923139012955630

`A123087(n)-A054893(n)`
-/

namespace A139352.P10797923139012955630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123087 n - A054893 n

end

end A139352.P10797923139012955630

namespace A139352

/-- `A123087(n)-A054893(n)` -/
def P10797923139012955630.Spec : Prop :=
  ∀ n, P10797923139012955630.a n = A139352 n

end A139352

/-! ## A139352.P7001019503194069021

`A139351(n)-A065359(n)`
-/

namespace A139352.P7001019503194069021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n - A065359 n

end

end A139352.P7001019503194069021

namespace A139352

/-- `A139351(n)-A065359(n)` -/
def P7001019503194069021.Spec : Prop :=
  ∀ n, P7001019503194069021.a n = A139352 n

end A139352

/-! ## A139352.P11903333672615213695

`A197911(n)-A087069(n)`
-/

namespace A139352.P11903333672615213695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197911 n - A087069 n

end

end A139352.P11903333672615213695

namespace A139352

/-- `A197911(n)-A087069(n)` -/
def P11903333672615213695.Spec : Prop :=
  ∀ n, P11903333672615213695.a n = A139352 n

end A139352

/-! ## A139352.P3996223232352252519

`A160385(n)-A160381(n)`
-/

namespace A139352.P3996223232352252519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 n - A160381 n

end

end A139352.P3996223232352252519

namespace A139352

/-- `A160385(n)-A160381(n)` -/
def P3996223232352252519.Spec : Prop :=
  ∀ n, P3996223232352252519.a n = A139352 n

end A139352

/-! ## A139352.P12868544035533250167

`A230631(n)-A092391(n)`
-/

namespace A139352.P12868544035533250167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230631 n - A092391 n

end

end A139352.P12868544035533250167

namespace A139352

/-- `A230631(n)-A092391(n)` -/
def P12868544035533250167.Spec : Prop :=
  ∀ n, P12868544035533250167.a n = A139352 n

end A139352

/-!
# A139353: Let the binary expansion of n be n = Sum_{k} 2^{r_k}, let e(n) be the number of r_k's that are even, o(n) the number that are odd; sequence gives e(n)*o(n).

The programs for A139353, the canonical program `A139353.P5602205039564721936` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139353 has offset 0).

The definition of A139353 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139351, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A139353.P5602205039564721936

`A139351(n)*A139352(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139353

/-- `A139351(n)*A139352(n)` -/
def P5602205039564721936.Spec : Prop :=
  ∀ n, P5602205039564721936.a n = A139353 n

theorem P5602205039564721936.correct : P5602205039564721936.Spec := by
  intro n
  simp only [A139353]

end A139353

/-! ## A139353.P16663050521669711687

`A139354(n)*A139355(n)`
-/

namespace A139353.P16663050521669711687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139354 n * A139355 n

end

end A139353.P16663050521669711687

namespace A139353

/-- `A139354(n)*A139355(n)` -/
def P16663050521669711687.Spec : Prop :=
  ∀ n, P16663050521669711687.a n = A139353 n

end A139353

/-! ## A139353.P6966254887838591643

`A139351(floor(n/2))*A139351(n)`
-/

namespace A139353.P6966254887838591643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 ⌊(n : ℚ) / 2⌋.toNat * A139351 n

end

end A139353.P6966254887838591643

namespace A139353

/-- `A139351(floor(n/2))*A139351(n)` -/
def P6966254887838591643.Spec : Prop :=
  ∀ n, P6966254887838591643.a n = A139353 n

end A139353

/-! ## A139353.P8128893540393505353

`A000120(A059905(n))*A139352(n)`
-/

namespace A139353.P8128893540393505353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A059905 n).toNat * A139352 n

end

end A139353.P8128893540393505353

namespace A139353

/-- `A000120(A059905(n))*A139352(n)` -/
def P8128893540393505353.Spec : Prop :=
  ∀ n, P8128893540393505353.a n = A139353 n

end A139353

/-! ## A139353.P16722152367256189906

`A000120(A059906(n))*A139351(n)`
-/

namespace A139353.P16722152367256189906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A059906 n).toNat * A139351 n

end

end A139353.P16722152367256189906

namespace A139353

/-- `A000120(A059906(n))*A139351(n)` -/
def P16722152367256189906.Spec : Prop :=
  ∀ n, P16722152367256189906.a n = A139353 n

end A139353

/-! ## A139353.P11734130773936150194

`A000120(A063695(n))*A139351(n)`
-/

namespace A139353.P11734130773936150194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A063695 n).toNat * A139351 n

end

end A139353.P11734130773936150194

namespace A139353

/-- `A000120(A063695(n))*A139351(n)` -/
def P11734130773936150194.Spec : Prop :=
  ∀ n, P11734130773936150194.a n = A139353 n

end A139353

/-! ## A139353.P15251177995465904202

`A001222(A338854(n))*A139351(n)`
-/

namespace A139353.P15251177995465904202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A338854 n).toNat * A139351 n

end

end A139353.P15251177995465904202

namespace A139353

/-- `A001222(A338854(n))*A139351(n)` -/
def P15251177995465904202.Spec : Prop :=
  ∀ n, P15251177995465904202.a n = A139353 n

end A139353

/-! ## A139353.P9346613278003044961

`(A000120(n)-A139354(n))*A139354(n)`
-/

namespace A139353.P9346613278003044961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000120 n - A139354 n) * A139354 n

end

end A139353.P9346613278003044961

namespace A139353

/-- `(A000120(n)-A139354(n))*A139354(n)` -/
def P9346613278003044961.Spec : Prop :=
  ∀ n, P9346613278003044961.a n = A139353 n

end A139353

/-! ## A139353.P14215581255662016742

`(A000120(n)-A139355(n))*A139355(n)`
-/

namespace A139353.P14215581255662016742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000120 n - A139355 n) * A139355 n

end

end A139353.P14215581255662016742

namespace A139353

/-- `(A000120(n)-A139355(n))*A139355(n)` -/
def P14215581255662016742.Spec : Prop :=
  ∀ n, P14215581255662016742.a n = A139353 n

end A139353

/-! ## A139353.P1276870007781149220

`A000120(A004514(n))*A139352(n)`
-/

namespace A139353.P1276870007781149220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A004514 n).toNat * A139352 n

end

end A139353.P1276870007781149220

namespace A139353

/-- `A000120(A004514(n))*A139352(n)` -/
def P1276870007781149220.Spec : Prop :=
  ∀ n, P1276870007781149220.a n = A139353 n

end A139353

/-! ## A139353.P4379945046037375214

`A139352(2*n)*A139352(n)`
-/

namespace A139353.P4379945046037375214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (2 * n) * A139352 n

end

end A139353.P4379945046037375214

namespace A139353

/-- `A139352(2*n)*A139352(n)` -/
def P4379945046037375214.Spec : Prop :=
  ∀ n, P4379945046037375214.a n = A139353 n

end A139353

/-! ## A139353.P10986850722479753627

`A053737(A004514(n)*A063695(n))`
-/

namespace A139353.P10986850722479753627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A004514 n * A063695 n).toNat

end

end A139353.P10986850722479753627

namespace A139353

/-- `A053737(A004514(n)*A063695(n))` -/
def P10986850722479753627.Spec : Prop :=
  ∀ n, P10986850722479753627.a n = A139353 n

end A139353

/-! ## A139353.P1654050969314214216

`A001222(A338854(n)^A139351(n))`
-/

namespace A139353.P1654050969314214216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A338854 n : ℚ) ^ (A139351 n : ℤ))).toNat

end

end A139353.P1654050969314214216

namespace A139353

/-- `A001222(A338854(n)^A139351(n))` -/
def P1654050969314214216.Spec : Prop :=
  ∀ n, P1654050969314214216.a n = A139353 n

end A139353

/-!
# A139354: Let the binary expansion of n be n = Sum_{k} 2^{r_k}, let e(n) be the number of r_k's that are even, o(n) the number that are odd; sequence gives min{e(n), o(n)}.

The programs for A139354, the canonical program `A139354.P2060834989768873161` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139354 has offset 0).

The definition of A139354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139354.P2060834989768873161

`∑[∑{e}[xor(n, -n), 2-#]]-A139355(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A139354

/-- `∑[∑{e}[xor(n, -n), 2-#]]-A139355(n)` -/
def P2060834989768873161.Spec : Prop :=
  ∀ n, P2060834989768873161.a n = A139354 n

theorem P2060834989768873161.correct : P2060834989768873161.Spec := by
  intro n
  simp only [A139354]

end A139354

/-! ## A139354.P6308599638961860638

`A000120(n)-A139355(n)`
-/

namespace A139354.P6308599638961860638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A139355 n

end

end A139354.P6308599638961860638

namespace A139354

/-- `A000120(n)-A139355(n)` -/
def P6308599638961860638.Spec : Prop :=
  ∀ n, P6308599638961860638.a n = A139354 n

end A139354

/-! ## A139354.P6540426157660213630

`A139355(n)-abs(A065359(n))`
-/

namespace A139354.P6540426157660213630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139355 n - |A065359 n|

end

end A139354.P6540426157660213630

namespace A139354

/-- `A139355(n)-abs(A065359(n))` -/
def P6540426157660213630.Spec : Prop :=
  ∀ n, P6540426157660213630.a n = A139354 n

end A139354

/-! ## A139354.P4486549390620528795

`log2(A001316(n))-A139355(n)`
-/

namespace A139354.P4486549390620528795
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ) - (A139355 n : ℝ)

end

end A139354.P4486549390620528795

namespace A139354

/-- `log2(A001316(n))-A139355(n)` -/
def P4486549390620528795.Spec : Prop :=
  ∀ n, P4486549390620528795.a n = (A139354 n : ℝ)

end A139354

/-! ## A139354.P10583718537649225698

`A053737(n)-(A139355(n)+A139352(n))`
-/

namespace A139354.P10583718537649225698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n - (A139355 n + A139352 n)

end

end A139354.P10583718537649225698

namespace A139354

/-- `A053737(n)-(A139355(n)+A139352(n))` -/
def P10583718537649225698.Spec : Prop :=
  ∀ n, P10583718537649225698.a n = A139354 n

end A139354

/-! ## A139354.P16966665417662845215

`A139351(n)+A139352(n)-A139355(n)`
-/

namespace A139354.P16966665417662845215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n + (A139352 n - A139355 n)

end

end A139354.P16966665417662845215

namespace A139354

/-- `A139351(n)+A139352(n)-A139355(n)` -/
def P16966665417662845215.Spec : Prop :=
  ∀ n, P16966665417662845215.a n = A139354 n

end A139354

/-! ## A139354.P14801157538171009513

`A001222(A048883(n))-A139355(n)`
-/

namespace A139354.P14801157538171009513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A048883 n).toNat - A139355 n

end

end A139354.P14801157538171009513

namespace A139354

/-- `A001222(A048883(n))-A139355(n)` -/
def P14801157538171009513.Spec : Prop :=
  ∀ n, P14801157538171009513.a n = A139354 n

end A139354

/-! ## A139354.P9546356287574300615

`A001222(A278159(n))-A139355(n)`
-/

namespace A139354.P9546356287574300615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278159 n).toNat - A139355 n

end

end A139354.P9546356287574300615

namespace A139354

/-- `A001222(A278159(n))-A139355(n)` -/
def P9546356287574300615.Spec : Prop :=
  ∀ n, P9546356287574300615.a n = A139354 n

end A139354

/-! ## A139354.P5951554159722788251

`A001222(A019565(n))-A139355(n)`
-/

namespace A139354.P5951554159722788251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A019565 n).toNat - A139355 n

end

end A139354.P5951554159722788251

namespace A139354

/-- `A001222(A019565(n))-A139355(n)` -/
def P5951554159722788251.Spec : Prop :=
  ∀ n, P5951554159722788251.a n = A139354 n

end A139354

/-!
# A139355: Let the binary expansion of n be n = Sum_{k} 2^{r_k}, let e(n) be the number of r_k's that are even, o(n) the number that are odd; sequence gives max{e(n), o(n)}.

The programs for A139355, the canonical program `A139355.P6748165722254672452` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139355 has offset 0).

The definition of A139355 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139355.P4317281363195987225

`∑[∑{e}[xor(n, -n), 2-#]]-A139354(n)`
-/

namespace A139355.P4317281363195987225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A139354 n

end

end A139355.P4317281363195987225

namespace A139355

/-- `∑[∑{e}[xor(n, -n), 2-#]]-A139354(n)` -/
def P4317281363195987225.Spec : Prop :=
  ∀ n, P4317281363195987225.a n = A139355 n

end A139355

/-! ## A139355.P5385283800696726964

`A000120(n)-A139354(n)`
-/

namespace A139355.P5385283800696726964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A139354 n

end

end A139355.P5385283800696726964

namespace A139355

/-- `A000120(n)-A139354(n)` -/
def P5385283800696726964.Spec : Prop :=
  ∀ n, P5385283800696726964.a n = A139355 n

end A139355

/-! ## A139355.P2805452016670825997

`A139354(n)+abs(A065359(n))`
-/

namespace A139355.P2805452016670825997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139354 n + |A065359 n|

end

end A139355.P2805452016670825997

namespace A139355

/-- `A139354(n)+abs(A065359(n))` -/
def P2805452016670825997.Spec : Prop :=
  ∀ n, P2805452016670825997.a n = A139355 n

end A139355

/-! ## A139355.P12035699143275992121

`log2(A001316(n))-A139354(n)`
-/

namespace A139355.P12035699143275992121
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ) - (A139354 n : ℝ)

end

end A139355.P12035699143275992121

namespace A139355

/-- `log2(A001316(n))-A139354(n)` -/
def P12035699143275992121.Spec : Prop :=
  ∀ n, P12035699143275992121.a n = (A139355 n : ℝ)

end A139355

/-! ## A139355.P7514432209028970336

`dr(A007088(n)-A139354(n))`
-/

namespace A139355.P7514432209028970336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007088 n - A139354 n)

end

end A139355.P7514432209028970336

namespace A139355

/-- `dr(A007088(n)-A139354(n))` -/
def P7514432209028970336.Spec : Prop :=
  ∀ n, (P7514432209028970336.a n : ℤ) = A139355 n

end A139355

/-! ## A139355.P1124877573671262273

`∑[A088705(n)]-A139354(n)`
-/

namespace A139355.P1124877573671262273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A139354 n

end

end A139355.P1124877573671262273

namespace A139355

/-- `∑[A088705(n)]-A139354(n)` -/
def P1124877573671262273.Spec : Prop :=
  ∀ n, P1124877573671262273.a n = A139355 n

end A139355

/-! ## A139355.P6748165722254672452

`(A000120(n)+abs(A065359(n)))/2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A139355

/-- `(A000120(n)+abs(A065359(n)))/2` -/
def P6748165722254672452.Spec : Prop :=
  ∀ n, P6748165722254672452.a n = (A139355 n : ℚ)

end A139355

/-! ## A139355.P17419841369355725727

`A054055(∑{digits}[A007090(n), A007088(#)])`
-/

namespace A139355.P17419841369355725727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007088 x).sum.toNat

end

end A139355.P17419841369355725727

namespace A139355

/-- `A054055(∑{digits}[A007090(n), A007088(#)])` -/
def P17419841369355725727.Spec : Prop :=
  ∀ n, P17419841369355725727.a n = A139355 n

end A139355

/-! ## A139355.P10197799153364057188

`A139351(n)+A139352(n)-A139354(n)`
-/

namespace A139355.P10197799153364057188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n + (A139352 n - A139354 n)

end

end A139355.P10197799153364057188

namespace A139355

/-- `A139351(n)+A139352(n)-A139354(n)` -/
def P10197799153364057188.Spec : Prop :=
  ∀ n, P10197799153364057188.a n = A139355 n

end A139355

/-! ## A139355.P13701592433185274936

`A001222(A048883(n))-A139354(n)`
-/

namespace A139355.P13701592433185274936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A048883 n).toNat - A139354 n

end

end A139355.P13701592433185274936

namespace A139355

/-- `A001222(A048883(n))-A139354(n)` -/
def P13701592433185274936.Spec : Prop :=
  ∀ n, P13701592433185274936.a n = A139355 n

end A139355

/-! ## A139355.P10298172199892827844

`A001222(A005940(n+1))-A139354(n)`
-/

namespace A139355.P10298172199892827844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005940 (n + 1)).toNat - A139354 n

end

end A139355.P10298172199892827844

namespace A139355

/-- `A001222(A005940(n+1))-A139354(n)` -/
def P10298172199892827844.Spec : Prop :=
  ∀ n, P10298172199892827844.a n = A139355 n

end A139355

/-! ## A139355.P7000088047295170179

`A001222(A019565(n))-A139354(n)`
-/

namespace A139355.P7000088047295170179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A019565 n).toNat - A139354 n

end

end A139355.P7000088047295170179

namespace A139355

/-- `A001222(A019565(n))-A139354(n)` -/
def P7000088047295170179.Spec : Prop :=
  ∀ n, P7000088047295170179.a n = A139355 n

end A139355

/-!
# A139359: Number L([n],m) of ways the labeled parts of each integer partition of n can be distributed into m nonempty labeled boxes.

The programs for A139359, there is no canonical definition to state claims against.
-/

/-! ## A139359.P8647782686767194125

`A046921(A030195(n)-A357287(n))`
-/

namespace A139359.P8647782686767194125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046921 (A030195 n - A357287 n).toNat

end

end A139359.P8647782686767194125

/-! ## A139359.P6544933271255821201

`A275142(n+1)+A118175(A136304(n))`
-/

namespace A139359.P6544933271255821201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (n + 1) + A118175 (A136304 n).toNat

end

end A139359.P6544933271255821201

/-! ## A139359.P11695617637479152240

`A275142(n+1)+A096268(A085395(n+2))`
-/

namespace A139359.P11695617637479152240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275142 (n + 1) + A096268 (A085395 (n + 2)).toNat

end

end A139359.P11695617637479152240

/-! ## A139359.P6910202383426305560

`A319000(A221916(3*n+4))+A275142(n+1)`
-/

namespace A139359.P6910202383426305560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319000 (A221916 (3 * n + 4)).toNat + A275142 (n + 1)

end

end A139359.P6910202383426305560

/-!
# A139361: Primes A080478(n)^2 + A080478(n+1)^2.

The programs for A139361, there is no canonical definition to state claims against.
-/

/-! ## A139361.P7934312419838628296

`A062067(n+1)+A062067(n+2)`
-/

namespace A139361.P7934312419838628296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062067 (n + 1) + A062067 (n + 2)

end

end A139361.P7934312419838628296

/-! ## A139361.P15335758739586203885

`A080478(n+2)²+A080478(n+1)²`
-/

namespace A139361.P15335758739586203885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080478 (n + 2) ^ 2 + A080478 (n + 1) ^ 2

end

end A139361.P15335758739586203885

/-! ## A139361.P169063512451491053

`A068487(A080478(n+1))`
-/

namespace A139361.P169063512451491053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068487 (A080478 (n + 1)).toNat

end

end A139361.P169063512451491053

/-! ## A139361.P15572580835488843537

`A068487(sqrt(A062067(n+1)))`
-/

namespace A139361.P15572580835488843537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068487 (SequenceMachineLib.roundAway (Real.sqrt (A062067 (n + 1) : ℝ))).toNat

end

end A139361.P15572580835488843537

/-! ## A139361.P10880790718339383954

`A068487(root(A062067(n+1), 2))`
-/

namespace A139361.P10880790718339383954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068487 (SequenceMachineLib.roundAway ((A062067 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A139361.P10880790718339383954

/-!
# A139362: Values of m such that A139361(n)=4m+1.

The programs for A139362, there is no canonical definition to state claims against.
-/

/-! ## A139362.P4417910745967376938

`(A139361(n+1)-1)/4`
-/

namespace A139362.P4417910745967376938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139361 (n + 1) - 1 : ℚ) / 4

end

end A139362.P4417910745967376938

/-! ## A139362.P6702937685585095665

`floor(A139361(n+1)/4)`
-/

namespace A139362.P6702937685585095665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139361 (n + 1) : ℚ) / 4⌋

end

end A139362.P6702937685585095665

/-! ## A139362.P15831872842401597726

`floor(A068487(A080478(n+1))/4)`
-/

namespace A139362.P15831872842401597726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A068487 (A080478 (n + 1)).toNat : ℚ) / 4⌋

end

end A139362.P15831872842401597726

/-! ## A139362.P9750803606564398852

`floor(A068487(sqrt(A062067(n+1)))/4)`
-/

namespace A139362.P9750803606564398852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A068487 (SequenceMachineLib.roundAway (Real.sqrt (A062067 (n + 1) : ℝ))).toNat : ℚ) / 4⌋

end

end A139362.P9750803606564398852

/-! ## A139362.P8243232708780043949

`floor((A062067(n+1)+A062067(n+2))/4)`
-/

namespace A139362.P8243232708780043949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062067 (n + 1) + A062067 (n + 2) : ℚ) / 4⌋

end

end A139362.P8243232708780043949

/-!
# A139363: Records in A056526.

The programs for A139363, there is no canonical definition to state claims against.
-/

/-! ## A139363.P13515230882171461717

`record[Δ[A278484(n)]]`
-/

namespace A139363.P13515230882171461717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278484 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139363.P13515230882171461717

/-! ## A139363.P15119423853325189603

`record[A056526(n+1)]`
-/

namespace A139363.P15119423853325189603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139363.P15119423853325189603

/-! ## A139363.P4369531637116990221

`record[Δ[A000960(n+1)]]`
-/

namespace A139363.P4369531637116990221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139363.P4369531637116990221

/-! ## A139363.P2882485427576138549

`A056526(A139364(n+1))`
-/

namespace A139363.P2882485427576138549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056526 (A139364 (n + 1)).toNat

end

end A139363.P2882485427576138549

/-! ## A139363.P10902635051815117289

`record[A278484(n+1)-A278484(n)]`
-/

namespace A139363.P10902635051815117289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278484 (n + 1) - A278484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139363.P10902635051815117289

/-! ## A139363.P4733936026766813103

`record[A000960(n+2)-A000960(n+1)]`
-/

namespace A139363.P4733936026766813103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (n + 2) - A000960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139363.P4733936026766813103

/-!
# A139364: Where records occur in A056526.

The programs for A139364, there is no canonical definition to state claims against.
-/

/-! ## A139364.P18083531960871700667

`eq[A024940(n), A284388(A068225(n+1))]`
-/

namespace A139364.P18083531960871700667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024940 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284388 (A068225 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139364.P18083531960871700667

/-! ## A139364.P11754626829875677766

`eq[A099774(n+1), A358229(A184303(2*n+1))]`
-/

namespace A139364.P11754626829875677766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358229 (A184303 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139364.P11754626829875677766

/-! ## A139364.P12893024531725519091

`∑[A124769(record[A112171(n)])]`
-/

namespace A139364.P12893024531725519091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112171 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139364.P12893024531725519091

/-! ## A139364.P1524827264877883955

`record[A334686(p?[A109705(n)])]`
-/

namespace A139364.P1524827264877883955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334686 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139364.P1524827264877883955

/-! ## A139364.P17022486696027479768

`A065033(n)+A055568(n+1)`
-/

namespace A139364.P17022486696027479768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n + A055568 (n + 1)

end

end A139364.P17022486696027479768

/-!
# A139365: Array of digit sums of factorial representation of numbers 0,1,...,n!-1 for n >= 1.

The programs for A139365, there is no canonical definition to state claims against.
-/

/-! ## A139365.P1057958644197955877

`A366386(A043547(n+1)%A232434(2*(n+1)))`
-/

namespace A139365.P1057958644197955877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366386 (Int.tmod (A043547 (n + 1)) (A232434 (2 * (n + 1)))).toNat

end

end A139365.P1057958644197955877

/-! ## A139365.P5099339168878962088

`A005087(A332495(A236858(n)²))`
-/

namespace A139365.P5099339168878962088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A332495 (A236858 n ^ 2).toNat).toNat

end

end A139365.P5099339168878962088

/-! ## A139365.P8588019523246727364

`A366386(A043547(n+1)%A004061(n+1))`
-/

namespace A139365.P8588019523246727364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366386 (Int.tmod (A043547 (n + 1)) (A004061 (n + 1))).toNat

end

end A139365.P8588019523246727364

/-! ## A139365.P6065269520378695525

`A366386(A043547(n+1))%A232422(2*(n+2))`
-/

namespace A139365.P6065269520378695525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366386 (A043547 (n + 1)).toNat) (A232422 (2 * (n + 2)))

end

end A139365.P6065269520378695525

/-! ## A139365.P9450202345090533227

`A124764((n+1)*A124773(n)-1)`
-/

namespace A139365.P9450202345090533227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 ((n + 1 : ℤ) * A124773 n - 1).toNat

end

end A139365.P9450202345090533227

/-!
# A139366: Table with the order r=r(N,n) of n modulo N, for given N and n, with gcd(N,n)=1.

The programs for A139366, there is no canonical definition to state claims against.
-/

/-! ## A139366.P12056141162591367275

`and(A000124(A110518(n)), A052509(n))`
-/

namespace A139366.P12056141162591367275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000124 (A110518 n).toNat) (A052509 n)

end

end A139366.P12056141162591367275

/-! ## A139366.P15305016546084939656

`lcm(A095728(A047888(n+1)), A347687(n+1))`
-/

namespace A139366.P15305016546084939656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A095728 (A047888 (n + 1)).toNat) (A347687 (n + 1))

end

end A139366.P15305016546084939656

/-! ## A139366.P2198243914267895547

`A040001(A090642(n))*A347687(n+1)`
-/

namespace A139366.P2198243914267895547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A090642 n).toNat * A347687 (n + 1)

end

end A139366.P2198243914267895547

/-! ## A139366.P17845163978603682848

`A256232(A111106(n)+A013622(n))`
-/

namespace A139366.P17845163978603682848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256232 (A111106 n + A013622 n).toNat

end

end A139366.P17845163978603682848

/-! ## A139366.P16410304595600752075

`A020639(A226234(n))*A347687(n+1)`
-/

namespace A139366.P16410304595600752075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A226234 n).toNat * A347687 (n + 1)

end

end A139366.P16410304595600752075

/-!
# A139367: a(n) = A102700(n) - A102342(n).

The programs for A139367, the canonical program `A139367.P12848330086499471846` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139367 has offset 1).

The definition of A139367 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102342, A102700, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A139367.P12848330086499471846

`A102700(n+1)-A102342(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A139367

/-- `A102700(n+1)-A102342(n+1)` -/
def P12848330086499471846.Spec : Prop :=
  ∀ n, P12848330086499471846.a n = A139367 (n + 1)

theorem P12848330086499471846.correct : P12848330086499471846.Spec := by
  intro n
  simp only [A139367, Nat.add_sub_cancel]

end A139367

/-! ## A139367.P4617186268138359656

`A105042(n+1)-A024914(n+1)`
-/

namespace A139367.P4617186268138359656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105042 (n + 1) - A024914 (n + 1)

end

end A139367.P4617186268138359656

namespace A139367

/-- `A105042(n+1)-A024914(n+1)` -/
def P4617186268138359656.Spec : Prop :=
  ∀ n, P4617186268138359656.a n = A139367 (n + 1)

end A139367

/-! ## A139367.P5350633852540464691

`A105042(n+1)-(A102342(n+1)+1)`
-/

namespace A139367.P5350633852540464691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105042 (n + 1) - (A102342 (n + 1) + 1)

end

end A139367.P5350633852540464691

namespace A139367

/-- `A105042(n+1)-(A102342(n+1)+1)` -/
def P5350633852540464691.Spec : Prop :=
  ∀ n, P5350633852540464691.a n = A139367 (n + 1)

end A139367

/-! ## A139367.P13654831378161148214

`A153355(n+1)/2-A024914(n+1)`
-/

namespace A139367.P13654831378161148214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153355 (n + 1) : ℚ) / 2 - (A024914 (n + 1) : ℚ)

end

end A139367.P13654831378161148214

namespace A139367

/-- `A153355(n+1)/2-A024914(n+1)` -/
def P13654831378161148214.Spec : Prop :=
  ∀ n, P13654831378161148214.a n = (A139367 (n + 1) : ℚ)

end A139367

/-! ## A139367.P16263647088965034199

`A000463(A024897(n+1))-A024914(n+1)`
-/

namespace A139367.P16263647088965034199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A024897 (n + 1)).toNat - A024914 (n + 1)

end

end A139367.P16263647088965034199

namespace A139367

/-- `A000463(A024897(n+1))-A024914(n+1)` -/
def P16263647088965034199.Spec : Prop :=
  ∀ n, P16263647088965034199.a n = A139367 (n + 1)

end A139367

/-! ## A139367.P14284037971845292615

`A004524(A024897(n+1))-A102342(n+1)`
-/

namespace A139367.P14284037971845292615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A024897 (n + 1)).toNat - A102342 (n + 1)

end

end A139367.P14284037971845292615

namespace A139367

/-- `A004524(A024897(n+1))-A102342(n+1)` -/
def P14284037971845292615.Spec : Prop :=
  ∀ n, P14284037971845292615.a n = A139367 (n + 1)

end A139367

/-! ## A139367.P14749150603298501711

`A004525(A153355(n+1))-A024914(n+1)`
-/

namespace A139367.P14749150603298501711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A153355 (n + 1)).toNat - A024914 (n + 1)

end

end A139367.P14749150603298501711

namespace A139367

/-- `A004525(A153355(n+1))-A024914(n+1)` -/
def P14749150603298501711.Spec : Prop :=
  ∀ n, P14749150603298501711.a n = A139367 (n + 1)

end A139367

/-!
# A139368: a(n) = A024912(n) - A102342(n).

The programs for A139368, the canonical program `A139368.P4863807749277017642` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139368 has offset 1).

The definition of A139368 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024912, A102342, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A139368.P4863807749277017642

`A024912(n+1)-A102342(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139368

/-- `A024912(n+1)-A102342(n+1)` -/
def P4863807749277017642.Spec : Prop :=
  ∀ n, P4863807749277017642.a n = A139368 (n + 1)

theorem P4863807749277017642.correct : P4863807749277017642.Spec := by
  intro n
  simp only [A139368, Nat.add_sub_cancel]

end A139368

/-! ## A139368.P17847824036038512986

`A024912(n+1)+1-A024914(n+1)`
-/

namespace A139368.P17847824036038512986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024912 (n + 1) + (1 - A024914 (n + 1))

end

end A139368.P17847824036038512986

namespace A139368

/-- `A024912(n+1)+1-A024914(n+1)` -/
def P17847824036038512986.Spec : Prop :=
  ∀ n, P17847824036038512986.a n = A139368 (n + 1)

end A139368

/-! ## A139368.P11077426353606411384

`A126785(n+1)+1-A102342(n+1)`
-/

namespace A139368.P11077426353606411384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126785 (n + 1) + (1 - A102342 (n + 1))

end

end A139368.P11077426353606411384

namespace A139368

/-- `A126785(n+1)+1-A102342(n+1)` -/
def P11077426353606411384.Spec : Prop :=
  ∀ n, P11077426353606411384.a n = A139368 (n + 1)

end A139368

/-! ## A139368.P3578882036370980772

`A126785(n+1)+2-A024914(n+1)`
-/

namespace A139368.P3578882036370980772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126785 (n + 1) + (2 - A024914 (n + 1))

end

end A139368.P3578882036370980772

namespace A139368

/-- `A126785(n+1)+2-A024914(n+1)` -/
def P3578882036370980772.Spec : Prop :=
  ∀ n, P3578882036370980772.a n = A139368 (n + 1)

end A139368

/-! ## A139368.P14416199616000329625

`A024894(n+1)/2-A102342(n+1)`
-/

namespace A139368.P14416199616000329625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024894 (n + 1) : ℚ) / 2 - (A102342 (n + 1) : ℚ)

end

end A139368.P14416199616000329625

namespace A139368

/-- `A024894(n+1)/2-A102342(n+1)` -/
def P14416199616000329625.Spec : Prop :=
  ∀ n, P14416199616000329625.a n = (A139368 (n + 1) : ℚ)

end A139368

/-! ## A139368.P3800020283617384209

`eq[1, A091088(n)]-A102342(n+1)`
-/

namespace A139368.P3800020283617384209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A102342 (n + 1)

end

end A139368.P3800020283617384209

namespace A139368

/-- `eq[1, A091088(n)]-A102342(n+1)` -/
def P3800020283617384209.Spec : Prop :=
  ∀ n, P3800020283617384209.a n = A139368 (n + 1)

end A139368

/-! ## A139368.P13158701705449748597

`A008619(A024894(n+1))-A024914(n+1)`
-/

namespace A139368.P13158701705449748597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A024894 (n + 1)).toNat - A024914 (n + 1)

end

end A139368.P13158701705449748597

namespace A139368

/-- `A008619(A024894(n+1))-A024914(n+1)` -/
def P13158701705449748597.Spec : Prop :=
  ∀ n, P13158701705449748597.a n = A139368 (n + 1)

end A139368

/-! ## A139368.P1596914526039434212

`A004525(A024894(n+1))-A102342(n+1)`
-/

namespace A139368.P1596914526039434212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A024894 (n + 1)).toNat - A102342 (n + 1)

end

end A139368.P1596914526039434212

namespace A139368

/-- `A004525(A024894(n+1))-A102342(n+1)` -/
def P1596914526039434212.Spec : Prop :=
  ∀ n, P1596914526039434212.a n = A139368 (n + 1)

end A139368

/-! ## A139368.P15392058194811978327

`A000463(A081759(n+1))-A102342(n+1)`
-/

namespace A139368.P15392058194811978327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A081759 (n + 1)).toNat - A102342 (n + 1)

end

end A139368.P15392058194811978327

namespace A139368

/-- `A000463(A081759(n+1))-A102342(n+1)` -/
def P15392058194811978327.Spec : Prop :=
  ∀ n, P15392058194811978327.a n = A139368 (n + 1)

end A139368

/-!
# A139370: Let the binary expansion of n be n = Sum_{k} 2^{r_k}, let e(n) be the number of r_k's that are even, o(n) the number that are odd; sequence lists n such that e(n) < o(n).

The programs for A139370, the canonical program `A139370.P2408068397612457127` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139370 has offset 1).

The definition of A139370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139370.P2408068397612457127

`lt[n%2-a(floor(n/2)), 0]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A139370

/-- `lt[n%2-a(floor(n/2)), 0]` -/
def P2408068397612457127.Spec : Prop :=
  ∀ n, (P2408068397612457127.a n : ℤ) = A139370 (n + 1)

theorem P2408068397612457127.correct : P2408068397612457127.Spec := by
  intro n
  simp only [A139370, Nat.add_sub_cancel]

end A139370

/-! ## A139370.P8776333032804974946

`lt[1, (-1)^n-a(floor(n/2))]` with `a(0)=1`
-/

namespace A139370.P8776333032804974946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (-1) ^ n - f2 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A139370.P8776333032804974946

namespace A139370

/-- `lt[1, (-1)^n-a(floor(n/2))]` -/
def P8776333032804974946.Spec : Prop :=
  ∀ n, (P8776333032804974946.a n : ℤ) = A139370 (n + 1)

end A139370

/-! ## A139370.P3984986791502434054

`lt[0, -(a(floor(n/2))+and(1, n))]` with `a(0)=0`
-/

namespace A139370.P3984986791502434054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  -(f2 ⌊(n : ℚ) / 2⌋.toNat + (Nat.land 1 n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A139370.P3984986791502434054

namespace A139370

/-- `lt[0, -(a(floor(n/2))+and(1, n))]` -/
def P3984986791502434054.Spec : Prop :=
  ∀ n, (P3984986791502434054.a n : ℤ) = A139370 (n + 1)

end A139370

/-! ## A139370.P17203794864802911230

`lt[-(a(floor(n/2))+gcd(2, n)), -1]` with `a(0)=-1`
-/

namespace A139370.P17203794864802911230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  -(f1 ⌊(n : ℚ) / 2⌋.toNat + (Nat.gcd 2 n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139370.P17203794864802911230

namespace A139370

/-- `lt[-(a(floor(n/2))+gcd(2, n)), -1]` -/
def P17203794864802911230.Spec : Prop :=
  ∀ n, (P17203794864802911230.a n : ℤ) = A139370 (n + 1)

end A139370

/-! ## A139370.P10146614754915536289

`lt[2, 1-(a(floor(n/2))-(-1)^n)]` with `a(0)=1`
-/

namespace A139370.P10146614754915536289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - (f2 ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A139370.P10146614754915536289

namespace A139370

/-- `lt[2, 1-(a(floor(n/2))-(-1)^n)]` -/
def P10146614754915536289.Spec : Prop :=
  ∀ n, (P10146614754915536289.a n : ℤ) = A139370 (n + 1)

end A139370

/-! ## A139370.P5498205802474863438

`lt[1, -(a(floor(n/2))+a((n+1)%2))]` with `a(0)=1`
-/

namespace A139370.P5498205802474863438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  -(f2 ⌊(n : ℚ) / 2⌋.toNat + f2 ((n + 1) % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A139370.P5498205802474863438

namespace A139370

/-- `lt[1, -(a(floor(n/2))+a((n+1)%2))]` -/
def P5498205802474863438.Spec : Prop :=
  ∀ n, (P5498205802474863438.a n : ℤ) = A139370 (n + 1)

end A139370

/-! ## A139370.P9975989621277005438

`lt[A065359(n), 0]`
-/

namespace A139370.P9975989621277005438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A139370.P9975989621277005438

namespace A139370

/-- `lt[A065359(n), 0]` -/
def P9975989621277005438.Spec : Prop :=
  ∀ n, (P9975989621277005438.a n : ℤ) = A139370 (n + 1)

end A139370

/-! ## A139370.P11052045377180147048

`lt[A302544(n), n]`
-/

namespace A139370.P11052045377180147048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302544 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A139370.P11052045377180147048

namespace A139370

/-- `lt[A302544(n), n]` -/
def P11052045377180147048.Spec : Prop :=
  ∀ n, (P11052045377180147048.a n : ℤ) = A139370 (n + 1)

end A139370

/-! ## A139370.P1558467154134730696

`lt[A160381(n), A160382(n)]`
-/

namespace A139370.P1558467154134730696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139370.P1558467154134730696

namespace A139370

/-- `lt[A160381(n), A160382(n)]` -/
def P1558467154134730696.Spec : Prop :=
  ∀ n, (P1558467154134730696.a n : ℤ) = A139370 (n + 1)

end A139370

/-! ## A139370.P1645991282590005000

`lt[A053737(2*n), A053737(n)]`
-/

namespace A139370.P1645991282590005000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139370.P1645991282590005000

namespace A139370

/-- `lt[A053737(2*n), A053737(n)]` -/
def P1645991282590005000.Spec : Prop :=
  ∀ n, (P1645991282590005000.a n : ℤ) = A139370 (n + 1)

end A139370

/-! ## A139370.P12826575107149403364

`lt[A139352(2*n), A139352(n)]`
-/

namespace A139370.P12826575107149403364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139370.P12826575107149403364

namespace A139370

/-- `lt[A139352(2*n), A139352(n)]` -/
def P12826575107149403364.Spec : Prop :=
  ∀ n, (P12826575107149403364.a n : ℤ) = A139370 (n + 1)

end A139370

/-!
# A139371: Let the binary expansion of n be n = Sum_{k} 2^{r_k}, let e(n) be the number of r_k's that are even, o(n) the number that are odd; sequence lists n such that e(n) <= o(n).

The programs for A139371, the canonical program `A139371.P17514018940283828399` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139371 has offset 1).

The definition of A139371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139371.P17514018940283828399

`lt[n%2-a(floor(n/2)), 1]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A139371

/-- `lt[n%2-a(floor(n/2)), 1]` -/
def P17514018940283828399.Spec : Prop :=
  ∀ n, (P17514018940283828399.a n : ℤ) = A139371 (n + 1)

theorem P17514018940283828399.correct : P17514018940283828399.Spec := by
  intro n
  simp only [A139371, Nat.add_sub_cancel]

end A139371

/-! ## A139371.P15851894726242576771

`lt[1, gcd(2, n)²-a(floor(n/2))]` with `a(0)=2`
-/

namespace A139371.P15851894726242576771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  (Nat.gcd 2 n ^ 2 : ℤ) - f2 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A139371.P15851894726242576771

namespace A139371

/-- `lt[1, gcd(2, n)²-a(floor(n/2))]` -/
def P15851894726242576771.Spec : Prop :=
  ∀ n, (P15851894726242576771.a n : ℤ) = A139371 (n + 1)

end A139371

/-! ## A139371.P6507184029202796915

`lt[1, 3-(a(floor(n/2))-(-1)^n)]` with `a(0)=2`
-/

namespace A139371.P6507184029202796915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  3 - (f2 ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A139371.P6507184029202796915

namespace A139371

/-- `lt[1, 3-(a(floor(n/2))-(-1)^n)]` -/
def P6507184029202796915.Spec : Prop :=
  ∀ n, (P6507184029202796915.a n : ℤ) = A139371 (n + 1)

end A139371

/-! ## A139371.P11825123111818388283

`lt[1-(a(floor(n/2))+and(1, n+1)), 1]` with `a(0)=0`
-/

namespace A139371.P11825123111818388283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - (f1 ⌊(n : ℚ) / 2⌋.toNat + (Nat.land 1 (n + 1) : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A139371.P11825123111818388283

namespace A139371

/-- `lt[1-(a(floor(n/2))+and(1, n+1)), 1]` -/
def P11825123111818388283.Spec : Prop :=
  ∀ n, (P11825123111818388283.a n : ℤ) = A139371 (n + 1)

end A139371

/-! ## A139371.P8634649729199310766

`lt[1, -(a(floor(n/2))+a((n+1)%2))]` with `a(0)=2`
-/

namespace A139371.P8634649729199310766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  -(f2 ⌊(n : ℚ) / 2⌋.toNat + f2 ((n + 1) % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A139371.P8634649729199310766

namespace A139371

/-- `lt[1, -(a(floor(n/2))+a((n+1)%2))]` -/
def P8634649729199310766.Spec : Prop :=
  ∀ n, (P8634649729199310766.a n : ℤ) = A139371 (n + 1)

end A139371

/-! ## A139371.P9823443474680904008

`lt[A065359(n), 1]`
-/

namespace A139371.P9823443474680904008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A139371.P9823443474680904008

namespace A139371

/-- `lt[A065359(n), 1]` -/
def P9823443474680904008.Spec : Prop :=
  ∀ n, (P9823443474680904008.a n : ℤ) = A139371 (n + 1)

end A139371

/-! ## A139371.P18262825708198073842

`comp[A139373(n+1)]`
-/

namespace A139371.P18262825708198073842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A139371.P18262825708198073842

namespace A139371

/-- `comp[A139373(n+1)]` -/
def P18262825708198073842.Spec : Prop :=
  ∀ n, (P18262825708198073842.a n : ℤ) = A139371 (n + 1)

end A139371

/-! ## A139371.P15207774702249438704

`∪[A039004(n+1), A139370(n+1)]`
-/

namespace A139371.P15207774702249438704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139371.P15207774702249438704

namespace A139371

/-- `∪[A039004(n+1), A139370(n+1)]` -/
def P15207774702249438704.Spec : Prop :=
  ∀ n, (P15207774702249438704.a n : ℤ) = A139371 (n + 1)

end A139371

/-! ## A139371.P2221410889966630053

`lt[A302544(n), n+1]`
-/

namespace A139371.P2221410889966630053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302544 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A139371.P2221410889966630053

namespace A139371

/-- `lt[A302544(n), n+1]` -/
def P2221410889966630053.Spec : Prop :=
  ∀ n, (P2221410889966630053.a n : ℤ) = A139371 (n + 1)

end A139371

/-! ## A139371.P6532238938332461866

`eq[A139351(n), A139354(n)]`
-/

namespace A139371.P6532238938332461866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139354 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139371.P6532238938332461866

namespace A139371

/-- `eq[A139351(n), A139354(n)]` -/
def P6532238938332461866.Spec : Prop :=
  ∀ n, (P6532238938332461866.a n : ℤ) = A139371 (n + 1)

end A139371

/-! ## A139371.P4958236895954172478

`eq[A139352(n), A139355(n)]`
-/

namespace A139371.P4958236895954172478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139355 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139371.P4958236895954172478

namespace A139371

/-- `eq[A139352(n), A139355(n)]` -/
def P4958236895954172478.Spec : Prop :=
  ∀ n, (P4958236895954172478.a n : ℤ) = A139371 (n + 1)

end A139371

/-! ## A139371.P208250172784196781

`lt[A160381(n), A160382(n)+1]`
-/

namespace A139371.P208250172784196781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139371.P208250172784196781

namespace A139371

/-- `lt[A160381(n), A160382(n)+1]` -/
def P208250172784196781.Spec : Prop :=
  ∀ n, (P208250172784196781.a n : ℤ) = A139371 (n + 1)

end A139371

/-! ## A139371.P9169279320399944463

`eq[A139351(2*n), A139355(n)]`
-/

namespace A139371.P9169279320399944463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139355 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139371.P9169279320399944463

namespace A139371

/-- `eq[A139351(2*n), A139355(n)]` -/
def P9169279320399944463.Spec : Prop :=
  ∀ n, (P9169279320399944463.a n : ℤ) = A139371 (n + 1)

end A139371

/-! ## A139371.P16582601226023638821

`eq[A139352(2*n), A139354(n)]`
-/

namespace A139371.P16582601226023638821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139354 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139371.P16582601226023638821

namespace A139371

/-- `eq[A139352(2*n), A139354(n)]` -/
def P16582601226023638821.Spec : Prop :=
  ∀ n, (P16582601226023638821.a n : ℤ) = A139371 (n + 1)

end A139371

/-! ## A139371.P12285521704595055242

`eq[A139354(2*n+1), A139354(n)]`
-/

namespace A139371.P12285521704595055242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139354 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139354 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139371.P12285521704595055242

namespace A139371

/-- `eq[A139354(2*n+1), A139354(n)]` -/
def P12285521704595055242.Spec : Prop :=
  ∀ n, (P12285521704595055242.a n : ℤ) = A139371 (n + 1)

end A139371

/-!
# A139372: Let the binary expansion of n be n = Sum_{k} 2^{r_k}, let e(n) be the number of r_k's that are even, o(n) the number that are odd; sequence lists n such that e(n) >= o(n).

The programs for A139372, the canonical program `A139372.P4983247544806522449` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139372 has offset 1).

The definition of A139372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139372.P4983247544806522449

`lt[-1, n%2-a(floor(n/2))]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A139372

/-- `lt[-1, n%2-a(floor(n/2))]` -/
def P4983247544806522449.Spec : Prop :=
  ∀ n, (P4983247544806522449.a n : ℤ) = A139372 (n + 1)

theorem P4983247544806522449.correct : P4983247544806522449.Spec := by
  intro n
  simp only [A139372, Nat.add_sub_cancel]

end A139372

/-! ## A139372.P14593386563493121539

`lt[-(a(floor(n/2))+2-gcd(2, n)), 1]` with `a(0)=0`
-/

namespace A139372.P14593386563493121539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  -(f1 ⌊(n : ℚ) / 2⌋.toNat + (2 - (Nat.gcd 2 n : ℤ)))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A139372.P14593386563493121539

namespace A139372

/-- `lt[-(a(floor(n/2))+2-gcd(2, n)), 1]` -/
def P14593386563493121539.Spec : Prop :=
  ∀ n, (P14593386563493121539.a n : ℤ) = A139372 (n + 1)

end A139372

/-! ## A139372.P17860995714677052070

`lt[-(a(floor(n/2))+(1-(-1)^n)/2), 1]` with `a(0)=0`
-/

namespace A139372.P17860995714677052070
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  -(f1 ⌊(n : ℚ) / 2⌋.toNat + (1 - (-1) ^ n : ℚ) / 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A139372.P17860995714677052070

namespace A139372

/-- `lt[-(a(floor(n/2))+(1-(-1)^n)/2), 1]` -/
def P17860995714677052070.Spec : Prop :=
  ∀ n, (P17860995714677052070.a n : ℤ) = A139372 (n + 1)

end A139372

/-! ## A139372.P11980072188681980061

`lt[-1, A065359(n)]`
-/

namespace A139372.P11980072188681980061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139372.P11980072188681980061

namespace A139372

/-- `lt[-1, A065359(n)]` -/
def P11980072188681980061.Spec : Prop :=
  ∀ n, (P11980072188681980061.a n : ℤ) = A139372 (n + 1)

end A139372

/-! ## A139372.P5035724782062133536

`comp[A139370(n+1)]`
-/

namespace A139372.P5035724782062133536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A139372.P5035724782062133536

namespace A139372

/-- `comp[A139370(n+1)]` -/
def P5035724782062133536.Spec : Prop :=
  ∀ n, (P5035724782062133536.a n : ℤ) = A139372 (n + 1)

end A139372

/-! ## A139372.P15182282831481113343

`∪[A039004(n+1), A139373(n+1)]`
-/

namespace A139372.P15182282831481113343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139372.P15182282831481113343

namespace A139372

/-- `∪[A039004(n+1), A139373(n+1)]` -/
def P15182282831481113343.Spec : Prop :=
  ∀ n, (P15182282831481113343.a n : ℤ) = A139372 (n + 1)

end A139372

/-! ## A139372.P1308990369447350945

`lt[n, A302544(n)+1]`
-/

namespace A139372.P1308990369447350945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302544 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A139372.P1308990369447350945

namespace A139372

/-- `lt[n, A302544(n)+1]` -/
def P1308990369447350945.Spec : Prop :=
  ∀ n, (P1308990369447350945.a n : ℤ) = A139372 (n + 1)

end A139372

/-! ## A139372.P6884825364346347537

`eq[A139351(n), A139355(n)]`
-/

namespace A139372.P6884825364346347537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139355 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139372.P6884825364346347537

namespace A139372

/-- `eq[A139351(n), A139355(n)]` -/
def P6884825364346347537.Spec : Prop :=
  ∀ n, (P6884825364346347537.a n : ℤ) = A139372 (n + 1)

end A139372

/-! ## A139372.P12945147544908071951

`eq[A139352(n), A139354(n)]`
-/

namespace A139372.P12945147544908071951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139354 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139372.P12945147544908071951

namespace A139372

/-- `eq[A139352(n), A139354(n)]` -/
def P12945147544908071951.Spec : Prop :=
  ∀ n, (P12945147544908071951.a n : ℤ) = A139372 (n + 1)

end A139372

/-! ## A139372.P9815554897857217951

`eq[0, and(8, A033051(n))]`
-/

namespace A139372.P9815554897857217951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 8 (A033051 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139372.P9815554897857217951

namespace A139372

/-- `eq[0, and(8, A033051(n))]` -/
def P9815554897857217951.Spec : Prop :=
  ∀ n, (P9815554897857217951.a n : ℤ) = A139372 (n + 1)

end A139372

/-! ## A139372.P15011208929826988843

`lt[A160382(n), A160381(n)+1]`
-/

namespace A139372.P15011208929826988843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139372.P15011208929826988843

namespace A139372

/-- `lt[A160382(n), A160381(n)+1]` -/
def P15011208929826988843.Spec : Prop :=
  ∀ n, (P15011208929826988843.a n : ℤ) = A139372 (n + 1)

end A139372

/-! ## A139372.P9355342598556446772

`lt[A302544(2*n), comp[A302544(2*n)]]`
-/

namespace A139372.P9355342598556446772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302544 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302544 (2 * n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A139372.P9355342598556446772

namespace A139372

/-- `lt[A302544(2*n), comp[A302544(2*n)]]` -/
def P9355342598556446772.Spec : Prop :=
  ∀ n, (P9355342598556446772.a n : ℤ) = A139372 (n + 1)

end A139372

/-! ## A139372.P16154526675940748052

`eq[A139351(2*n), A139354(n)]`
-/

namespace A139372.P16154526675940748052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139354 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139372.P16154526675940748052

namespace A139372

/-- `eq[A139351(2*n), A139354(n)]` -/
def P16154526675940748052.Spec : Prop :=
  ∀ n, (P16154526675940748052.a n : ℤ) = A139372 (n + 1)

end A139372

/-! ## A139372.P289727848615184102

`eq[A139352(2*n), A139355(n)]`
-/

namespace A139372.P289727848615184102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139355 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139372.P289727848615184102

namespace A139372

/-- `eq[A139352(2*n), A139355(n)]` -/
def P289727848615184102.Spec : Prop :=
  ∀ n, (P289727848615184102.a n : ℤ) = A139372 (n + 1)

end A139372

/-! ## A139372.P3565829672372809059

`lt[A053737(n), A053737(2*n+1)]`
-/

namespace A139372.P3565829672372809059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139372.P3565829672372809059

namespace A139372

/-- `lt[A053737(n), A053737(2*n+1)]` -/
def P3565829672372809059.Spec : Prop :=
  ∀ n, (P3565829672372809059.a n : ℤ) = A139372 (n + 1)

end A139372

/-!
# A139373: Let the binary expansion of n be n = Sum_{k} 2^{r_k}, let e(n) be the number of r_k's that are even, o(n) the number that are odd; sequence lists n such that e(n) > o(n).

The programs for A139373, the canonical program `A139373.P5569708354631426412` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139373 has offset 1).

The definition of A139373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139373.P5569708354631426412

`lt[0, n%2-a(floor(n/2))]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A139373

/-- `lt[0, n%2-a(floor(n/2))]` -/
def P5569708354631426412.Spec : Prop :=
  ∀ n, (P5569708354631426412.a n : ℤ) = A139373 (n + 1)

theorem P5569708354631426412.correct : P5569708354631426412.Spec := by
  intro n
  simp only [A139373, Nat.add_sub_cancel]

end A139373

/-! ## A139373.P12864615431489079647

`lt[-1, -(a(floor(n/2))+gcd(2, n))]` with `a(0)=-1`
-/

namespace A139373.P12864615431489079647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f2 =>
  -(f2 ⌊(n : ℚ) / 2⌋.toNat + (Nat.gcd 2 n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139373.P12864615431489079647

namespace A139373

/-- `lt[-1, -(a(floor(n/2))+gcd(2, n))]` -/
def P12864615431489079647.Spec : Prop :=
  ∀ n, (P12864615431489079647.a n : ℤ) = A139373 (n + 1)

end A139373

/-! ## A139373.P14926790620888212192

`lt[1, 1-(-1)^n-a(floor(n/2))]` with `a(0)=0`
-/

namespace A139373.P14926790620888212192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  1 - (-1) ^ n - f2 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A139373.P14926790620888212192

namespace A139373

/-- `lt[1, 1-(-1)^n-a(floor(n/2))]` -/
def P14926790620888212192.Spec : Prop :=
  ∀ n, (P14926790620888212192.a n : ℤ) = A139373 (n + 1)

end A139373

/-! ## A139373.P10648353827252428673

`lt[0, 1-(a(floor(n/2))+and(1, n+1))]` with `a(0)=0`
-/

namespace A139373.P10648353827252428673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  1 - (f2 ⌊(n : ℚ) / 2⌋.toNat + (Nat.land 1 (n + 1) : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A139373.P10648353827252428673

namespace A139373

/-- `lt[0, 1-(a(floor(n/2))+and(1, n+1))]` -/
def P10648353827252428673.Spec : Prop :=
  ∀ n, (P10648353827252428673.a n : ℤ) = A139373 (n + 1)

end A139373

/-! ## A139373.P6874507319620256116

`lt[0, 1-(or(1, n)-(n-a(floor(n/2))))]` with `a(0)=0`
-/

namespace A139373.P6874507319620256116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  1 - ((Nat.lor 1 n : ℤ) - ((n : ℤ) - f2 ⌊(n : ℚ) / 2⌋.toNat))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A139373.P6874507319620256116

namespace A139373

/-- `lt[0, 1-(or(1, n)-(n-a(floor(n/2))))]` -/
def P6874507319620256116.Spec : Prop :=
  ∀ n, (P6874507319620256116.a n : ℤ) = A139373 (n + 1)

end A139373

/-! ## A139373.P1466715564523332082

`lt[1, -(a(floor(n/2))+a((n+1)%2))]` with `a(0)=-1`
-/

namespace A139373.P1466715564523332082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f2 =>
  -(f2 ⌊(n : ℚ) / 2⌋.toNat + f2 ((n + 1) % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A139373.P1466715564523332082

namespace A139373

/-- `lt[1, -(a(floor(n/2))+a((n+1)%2))]` -/
def P1466715564523332082.Spec : Prop :=
  ∀ n, (P1466715564523332082.a n : ℤ) = A139373 (n + 1)

end A139373

/-! ## A139373.P5660853883869327851

`lt[0, 1-(a(floor(n/2))+val(n²+2, 2))]` with `a(0)=0`
-/

namespace A139373.P5660853883869327851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  1 - (f2 ⌊(n : ℚ) / 2⌋.toNat + (SequenceMachineLib.valuation (n ^ 2 + 2) 2 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A139373.P5660853883869327851

namespace A139373

/-- `lt[0, 1-(a(floor(n/2))+val(n²+2, 2))]` -/
def P5660853883869327851.Spec : Prop :=
  ∀ n, (P5660853883869327851.a n : ℤ) = A139373 (n + 1)

end A139373

/-! ## A139373.P7742935995457027982

`lt[0, A065359(n)]`
-/

namespace A139373.P7742935995457027982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A139373.P7742935995457027982

namespace A139373

/-- `lt[0, A065359(n)]` -/
def P7742935995457027982.Spec : Prop :=
  ∀ n, (P7742935995457027982.a n : ℤ) = A139373 (n + 1)

end A139373

/-! ## A139373.P9625313109735146716

`lt[n, A302544(n)]`
-/

namespace A139373.P9625313109735146716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302544 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A139373.P9625313109735146716

namespace A139373

/-- `lt[n, A302544(n)]` -/
def P9625313109735146716.Spec : Prop :=
  ∀ n, (P9625313109735146716.a n : ℤ) = A139373 (n + 1)

end A139373

/-! ## A139373.P17213873520463093808

`lt[A160382(n), A160381(n)]`
-/

namespace A139373.P17213873520463093808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139373.P17213873520463093808

namespace A139373

/-- `lt[A160382(n), A160381(n)]` -/
def P17213873520463093808.Spec : Prop :=
  ∀ n, (P17213873520463093808.a n : ℤ) = A139373 (n + 1)

end A139373

/-! ## A139373.P8218291629215485031

`lt[A053737(n), A053737(2*n)]`
-/

namespace A139373.P8218291629215485031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139373.P8218291629215485031

namespace A139373

/-- `lt[A053737(n), A053737(2*n)]` -/
def P8218291629215485031.Spec : Prop :=
  ∀ n, (P8218291629215485031.a n : ℤ) = A139373 (n + 1)

end A139373

/-! ## A139373.P4330152885549433781

`lt[A139352(n), A139352(2*n)]`
-/

namespace A139373.P4330152885549433781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139373.P4330152885549433781

namespace A139373

/-- `lt[A139352(n), A139352(2*n)]` -/
def P4330152885549433781.Spec : Prop :=
  ∀ n, (P4330152885549433781.a n : ℤ) = A139373 (n + 1)

end A139373

/-! ## A139373.P1245064986301876804

`eq[A139355(2*n+1), A139355(n)]`
-/

namespace A139373.P1245064986301876804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139355 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139355 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139373.P1245064986301876804

namespace A139373

/-- `eq[A139355(2*n+1), A139355(n)]` -/
def P1245064986301876804.Spec : Prop :=
  ∀ n, (P1245064986301876804.a n : ℤ) = A139373 (n + 1)

end A139373

/-! ## A139373.P1378631768089658758

`lt[A139354(n), A139354(2*n+1)]`
-/

namespace A139373.P1378631768089658758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139354 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139354 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139373.P1378631768089658758

namespace A139373

/-- `lt[A139354(n), A139354(2*n+1)]` -/
def P1378631768089658758.Spec : Prop :=
  ∀ n, (P1378631768089658758.a n : ℤ) = A139373 (n + 1)

end A139373

/-! ## A139373.P2731571610429278005

`eq[A139351(2*n+1), A139354(2*n+1)]`
-/

namespace A139373.P2731571610429278005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139354 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139373.P2731571610429278005

namespace A139373

/-- `eq[A139351(2*n+1), A139354(2*n+1)]` -/
def P2731571610429278005.Spec : Prop :=
  ∀ n, (P2731571610429278005.a n : ℤ) = A139373 (n + 1)

end A139373

/-!
# A139374: Digit sum of Lucas numbers.

The programs for A139374, the canonical program `A139374.P15184791697190815955` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139374 has offset 0).

The definition of A139374 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139374.P15184791697190815955

`A007953(A000032(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A139374

/-- `A007953(A000032(n))` -/
def P15184791697190815955.Spec : Prop :=
  ∀ n, P15184791697190815955.a n = A139374 n

theorem P15184791697190815955.correct : P15184791697190815955.Spec := by
  intro n
  simp only [A139374]

end A139374

/-! ## A139374.P8989856258012547946

`∑{digits}[a(n-1)+a(n-2), #]` with `a(0)=2, a(1)=1`
-/

namespace A139374.P8989856258012547946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A139374.P8989856258012547946

namespace A139374

/-- `∑{digits}[a(n-1)+a(n-2), #]` -/
def P8989856258012547946.Spec : Prop :=
  ∀ n, (P8989856258012547946.a n : ℤ) = A139374 n

end A139374

/-! ## A139374.P6520377397470750718

`∑{digits}[Δ[a(n-2)-a(n-1)], #]` with `a(0)=3, a(1)=1`
-/

namespace A139374.P6520377397470750718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  f2 (n - 2) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A139374.P6520377397470750718

namespace A139374

/-- `∑{digits}[Δ[a(n-2)-a(n-1)], #]` -/
def P6520377397470750718.Spec : Prop :=
  ∀ n, (P6520377397470750718.a n : ℤ) = A139374 n

end A139374

/-! ## A139374.P10577706159212843511

`∑{digits}[A267551(n), #]`
-/

namespace A139374.P10577706159212843511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267551 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A139374.P10577706159212843511

namespace A139374

/-- `∑{digits}[A267551(n), #]` -/
def P10577706159212843511.Spec : Prop :=
  ∀ n, (P10577706159212843511.a n : ℤ) = A139374 n

end A139374

/-! ## A139374.P16018719745715826503

`∑{digits}[A061084(n+1), #]`
-/

namespace A139374.P16018719745715826503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A139374.P16018719745715826503

namespace A139374

/-- `∑{digits}[A061084(n+1), #]` -/
def P16018719745715826503.Spec : Prop :=
  ∀ n, (P16018719745715826503.a n : ℤ) = A139374 n

end A139374

/-! ## A139374.P8713839949302973694

`∑{digits}[1-A001612(n), #]`
-/

namespace A139374.P8713839949302973694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001612 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A139374.P8713839949302973694

namespace A139374

/-- `∑{digits}[1-A001612(n), #]` -/
def P8713839949302973694.Spec : Prop :=
  ∀ n, (P8713839949302973694.a n : ℤ) = A139374 n

end A139374

/-! ## A139374.P14582026736041990620

`∑{digits}[A329723(n+2), #]`
-/

namespace A139374.P14582026736041990620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A139374.P14582026736041990620

namespace A139374

/-- `∑{digits}[A329723(n+2), #]` -/
def P14582026736041990620.Spec : Prop :=
  ∀ n, (P14582026736041990620.a n : ℤ) = A139374 n

end A139374

/-! ## A139374.P1752133402588417331

`∑{digits}[A127218(2*n), #]`
-/

namespace A139374.P1752133402588417331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127218 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A139374.P1752133402588417331

namespace A139374

/-- `∑{digits}[A127218(2*n), #]` -/
def P1752133402588417331.Spec : Prop :=
  ∀ n, (P1752133402588417331.a n : ℤ) = A139374 n

end A139374

/-! ## A139374.P879042898653534824

`∑{digits}[A303427(2*n), #]`
-/

namespace A139374.P879042898653534824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A139374.P879042898653534824

namespace A139374

/-- `∑{digits}[A303427(2*n), #]` -/
def P879042898653534824.Spec : Prop :=
  ∀ n, (P879042898653534824.a n : ℤ) = A139374 n

end A139374

/-! ## A139374.P9229560355684375749

`∑{digits}[A302126(Δ[n²]), #]`
-/

namespace A139374.P9229560355684375749
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A139374.P9229560355684375749

namespace A139374

/-- `∑{digits}[A302126(Δ[n²]), #]` -/
def P9229560355684375749.Spec : Prop :=
  ∀ n, (P9229560355684375749.a n : ℤ) = A139374 n

end A139374

/-! ## A139374.P15956078754900385344

`∑{digits}[or(1, n)-1+A062724(n)-n, #]`
-/

namespace A139374.P15956078754900385344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - 1 + (A062724 n - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A139374.P15956078754900385344

namespace A139374

/-- `∑{digits}[or(1, n)-1+A062724(n)-n, #]` -/
def P15956078754900385344.Spec : Prop :=
  ∀ n, (P15956078754900385344.a n : ℤ) = A139374 n

end A139374

/-! ## A139374.P10909582841739517324

`∑{digits}[A118658(n)+A000045(n), #]`
-/

namespace A139374.P10909582841739517324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A000045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A139374.P10909582841739517324

namespace A139374

/-- `∑{digits}[A118658(n)+A000045(n), #]` -/
def P10909582841739517324.Spec : Prop :=
  ∀ n, (P10909582841739517324.a n : ℤ) = A139374 n

end A139374

/-! ## A139374.P9819143680259568701

`∑{digits}[A212804(n)+∑[A212804(n)], #]`
-/

namespace A139374.P9819143680259568701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A139374.P9819143680259568701

namespace A139374

/-- `∑{digits}[A212804(n)+∑[A212804(n)], #]` -/
def P9819143680259568701.Spec : Prop :=
  ∀ n, (P9819143680259568701.a n : ℤ) = A139374 n

end A139374

/-! ## A139374.P10683765995368960416

`∑{digits}[A000045(n+1)+A000045(abs(n+1-2*n)), #]`
-/

namespace A139374.P10683765995368960416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + A000045 |(n + 1 : ℤ) - (2 * n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A139374.P10683765995368960416

namespace A139374

/-- `∑{digits}[A000045(n+1)+A000045(abs(n+1-2*n)), #]` -/
def P10683765995368960416.Spec : Prop :=
  ∀ n, (P10683765995368960416.a n : ℤ) = A139374 n

end A139374

/-! ## A139374.P1681721237161637117

`∑{digits}[A090244(2*n+1), #]`
-/

namespace A139374.P1681721237161637117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A139374.P1681721237161637117

namespace A139374

/-- `∑{digits}[A090244(2*n+1), #]` -/
def P1681721237161637117.Spec : Prop :=
  ∀ n, (P1681721237161637117.a n : ℤ) = A139374 n

end A139374

/-! ## A139374.P14470087617603280592

`∑{digits}[Δ[A001610(n)], #]`
-/

namespace A139374.P14470087617603280592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A139374.P14470087617603280592

namespace A139374

/-- `∑{digits}[Δ[A001610(n)], #]` -/
def P14470087617603280592.Spec : Prop :=
  ∀ n, (P14470087617603280592.a n : ℤ) = A139374 n

end A139374

/-! ## A139374.P6522463293175690203

`∑{digits}[Δ[A000204(n+1)], #]`
-/

namespace A139374.P6522463293175690203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A139374.P6522463293175690203

namespace A139374

/-- `∑{digits}[Δ[A000204(n+1)], #]` -/
def P6522463293175690203.Spec : Prop :=
  ∀ n, (P6522463293175690203.a n : ℤ) = A139374 n

end A139374

/-! ## A139374.P14712753248106708815

`∑{digits}[sqrt(A001254(n)), #]`
-/

namespace A139374.P14712753248106708815
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001254 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A139374.P14712753248106708815

namespace A139374

/-- `∑{digits}[sqrt(A001254(n)), #]` -/
def P14712753248106708815.Spec : Prop :=
  ∀ n, (P14712753248106708815.a n : ℤ) = A139374 n

end A139374

/-! ## A139374.P1463903253832791433

`∑{digits}[sqrt(A001638(2*n)), #]`
-/

namespace A139374.P1463903253832791433
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001638 (2 * n) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A139374.P1463903253832791433

namespace A139374

/-- `∑{digits}[sqrt(A001638(2*n)), #]` -/
def P1463903253832791433.Spec : Prop :=
  ∀ n, (P1463903253832791433.a n : ℤ) = A139374 n

end A139374

/-!
# A139375: A Fibonacci-Catalan triangle. Also called the Fibonacci triangle.

The programs for A139375, there is no canonical definition to state claims against.
-/

/-! ## A139375.P14008854450232175364

`A185937(comp[∑[n-1]])`
-/

namespace A139375.P14008854450232175364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185937 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A139375.P14008854450232175364

/-! ## A139375.P8510928568880237235

`or(char[1], A185937(A007401(n+1)))`
-/

namespace A139375.P8510928568880237235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A185937 (A007401 (n + 1)).toNat)

end

end A139375.P8510928568880237235

/-! ## A139375.P13772839571604980790

`A185937(A007401(n+1))^Δ[A217575(n+1)]`
-/

namespace A139375.P13772839571604980790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217575 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185937 (A007401 (n + 1)).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A139375.P13772839571604980790

/-! ## A139375.P1536648769515500802

`A185937(A007401(n+1))+A000035(2*n)`
-/

namespace A139375.P1536648769515500802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185937 (A007401 (n + 1)).toNat + A000035 (2 * n)

end

end A139375.P1536648769515500802

/-! ## A139375.P727264420747342110

`A001222(A139035(n+1))*A185937(A007401(n+1))`
-/

namespace A139375.P727264420747342110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A139035 (n + 1)).toNat * A185937 (A007401 (n + 1)).toNat

end

end A139375.P727264420747342110

/-! ## A139375.P5355270136813021970

`A185675(n)-A185937(n)`
-/

namespace A139375.P5355270136813021970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185675 n - A185937 n

end

end A139375.P5355270136813021970

/-! ## A139375.P12601646993947993487

`A185937(A007401(n+1))*A190567(A134099(n+1))`
-/

namespace A139375.P12601646993947993487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185937 (A007401 (n + 1)).toNat * A190567 (A134099 (n + 1)).toNat

end

end A139375.P12601646993947993487

/-! ## A139375.P17749201699871575003

`A185937(A007401(n+1))*A190567(A109128(n))`
-/

namespace A139375.P17749201699871575003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185937 (A007401 (n + 1)).toNat * A190567 (A109128 n).toNat

end

end A139375.P17749201699871575003

/-!
# A139376: Expansion of 1/((1-x^2*c(x))(1-x-x^2)) where c(x) is the g.f. of A000108.

The programs for A139376, there is no canonical definition to state claims against.
-/

/-! ## A139376.P11530727598678119651

`A059995(A099754(n)+A054735(n+1))`
-/

namespace A139376.P11530727598678119651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A099754 n + A054735 (n + 1)).toNat

end

end A139376.P11530727598678119651

/-! ## A139376.P8303300989593411201

`A117174(floor(sqrt(3^n)))`
-/

namespace A139376.P8303300989593411201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117174 (Nat.sqrt (3 ^ n))

end

end A139376.P8303300989593411201

/-! ## A139376.P18370291392245958839

`A204352(n)+A001222(A125696(n))`
-/

namespace A139376.P18370291392245958839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204352 n + A001222 (A125696 n).toNat

end

end A139376.P18370291392245958839

/-! ## A139376.P14313163918029448622

`A257990(A001764(n))+A084261(n)`
-/

namespace A139376.P14313163918029448622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A001764 n).toNat + A084261 n

end

end A139376.P14313163918029448622

/-!
# A139377: A Jacobsthal-Catalan triangle.

The programs for A139377, there is no canonical definition to state claims against.
-/

/-! ## A139377.P987995895795689819

`A048766(A001068(A171651(n)²))`
-/

namespace A139377.P987995895795689819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A001068 (A171651 n ^ 2).toNat).toNat

end

end A139377.P987995895795689819

/-! ## A139377.P18135076626944630522

`A024417(A054456(A109151(n)+n))`
-/

namespace A139377.P18135076626944630522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A054456 (A109151 n + (n : ℤ)).toNat).toNat

end

end A139377.P18135076626944630522

/-! ## A139377.P7887579399667372424

`A024417(or(A054456(n), A109151(n)))`
-/

namespace A139377.P7887579399667372424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (Int.lor (A054456 n) (A109151 n)).toNat

end

end A139377.P7887579399667372424

/-! ## A139377.P2980523786554713697

`or(A103451(n), A290726(A046521(n)))`
-/

namespace A139377.P2980523786554713697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A103451 n) (A290726 (A046521 n).toNat)

end

end A139377.P2980523786554713697

/-! ## A139377.P13028057945145799406

`or(A117418(n), A290726(A046521(n)))`
-/

namespace A139377.P13028057945145799406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A117418 n) (A290726 (A046521 n).toNat)

end

end A139377.P13028057945145799406

/-!
# A139379: A Jacobsthal Catalan convolution.

The programs for A139379, the canonical program `A139379.P15890021872242137643` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139379 has offset 0).

The definition of A139379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139379.P15890021872242137643

`A014318(n-1)-a(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A139379

/-- `A014318(n-1)-a(n-1)` -/
def P15890021872242137643.Spec : Prop :=
  ∀ n, P15890021872242137643.a n = A139379 n

theorem P15890021872242137643.correct : P15890021872242137643.Spec := by
  intro n
  simp only [A139379]

end A139379

/-! ## A139379.P4219846420793856053

`2^n-A158499(n)-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A139379.P4219846420793856053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 ^ n : ℤ) - A158499 n - a (n - 1)

end

end A139379.P4219846420793856053

namespace A139379

/-- `2^n-A158499(n)-a(n-1)` -/
def P4219846420793856053.Spec : Prop :=
  ∀ n, P4219846420793856053.a n = A139379 n

end A139379

/-! ## A139379.P2144213189316389092

`abs(∑[A062157(n)*A158495(n)])`
-/

namespace A139379.P2144213189316389092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A158495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A139379.P2144213189316389092

namespace A139379

/-- `abs(∑[A062157(n)*A158495(n)])` -/
def P2144213189316389092.Spec : Prop :=
  ∀ n, P2144213189316389092.a n = A139379 n

end A139379

/-! ## A139379.P13844181623706869415

`1-a(n-1)+A000225(n)-A158499(n)` with `a(0)=0`
-/

namespace A139379.P13844181623706869415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (n - 1) + (A000225 n - A158499 n)

end

end A139379.P13844181623706869415

namespace A139379

/-- `1-a(n-1)+A000225(n)-A158499(n)` -/
def P13844181623706869415.Spec : Prop :=
  ∀ n, P13844181623706869415.a n = A139379 n

end A139379

/-! ## A139379.P7473546766047279136

`(A014318(n)-A032357(n))/3`
-/

namespace A139379.P7473546766047279136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014318 n - A032357 n : ℚ) / 3

end

end A139379.P7473546766047279136

namespace A139379

/-- `(A014318(n)-A032357(n))/3` -/
def P7473546766047279136.Spec : Prop :=
  ∀ n, P7473546766047279136.a n = (A139379 n : ℚ)

end A139379

/-!
# A139380: Expansion of phi(q) / phi(q^9) in powers of q where phi() is a Ramanujan theta function.

The programs for A139380, there is no canonical definition to state claims against.
-/

/-! ## A139380.P8620366503685073794

`(-1)^n*A128771(n)`
-/

namespace A139380.P8620366503685073794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A128771 n

end

end A139380.P8620366503685073794

/-! ## A139380.P15642425033689480920

`(n+1)%3*A164615(n)`
-/

namespace A139380.P15642425033689480920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 3 : ℕ) : ℤ) * A164615 n

end

end A139380.P15642425033689480920

/-! ## A139380.P13559868014436364518

`A057079(n)*A139032(n)`
-/

namespace A139380.P13559868014436364518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A139032 n

end

end A139380.P13559868014436364518

/-! ## A139380.P4272085178958791178

`A132954(n)*A139032(n)`
-/

namespace A139380.P4272085178958791178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132954 n * A139032 n

end

end A139380.P4272085178958791178

/-! ## A139380.P7232680965903193823

`A128771(n)*A163810(n)`
-/

namespace A139380.P7232680965903193823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128771 n * A163810 n

end

end A139380.P7232680965903193823

/-! ## A139380.P15032529197441600901

`A139032(n)*A156283(n)`
-/

namespace A139380.P15032529197441600901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139032 n * A156283 n

end

end A139380.P15032529197441600901

/-! ## A139380.P5216365852190999809

`A139032(n)*A184334(n)`
-/

namespace A139380.P5216365852190999809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139032 n * A184334 n

end

end A139380.P5216365852190999809

/-! ## A139380.P405002033079916057

`A139032(n)*A187340(n)`
-/

namespace A139380.P405002033079916057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139032 n * A187340 n

end

end A139380.P405002033079916057

/-! ## A139380.P2301221350326419164

`A128771(n)*A281727(n)`
-/

namespace A139380.P2301221350326419164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128771 n * A281727 n

end

end A139380.P2301221350326419164

/-! ## A139380.P1156488035340936612

`A128770(n)*A128771(n)/A261988(n)`
-/

namespace A139380.P1156488035340936612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128770 n * A128771 n : ℚ) / (A261988 n : ℚ)

end

end A139380.P1156488035340936612

/-!
# A139382: Triangle read by rows, T(n,k) = (2^k-1) * T(n-1,k) + T(n-1,k-1).

The programs for A139382, there is no canonical definition to state claims against.
-/

/-! ## A139382.P4761292880225186147

`A127288(A080248(n))`
-/

namespace A139382.P4761292880225186147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127288 (A080248 n).toNat

end

end A139382.P4761292880225186147

/-! ## A139382.P12140234222020008737

`A342793(A379712(n))`
-/

namespace A139382.P12140234222020008737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342793 (A379712 n).toNat

end

end A139382.P12140234222020008737

/-! ## A139382.P12954977797142125140

`A335513(A080416(n)+1)`
-/

namespace A139382.P12954977797142125140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335513 (A080416 n + 1).toNat

end

end A139382.P12954977797142125140

/-! ## A139382.P10386957504041928295

`A354438(A166962(n+1))`
-/

namespace A139382.P10386957504041928295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354438 (A166962 (n + 1)).toNat

end

end A139382.P10386957504041928295

/-!
# A139383: Number of n-level labeled rooted trees with n leaves.

The programs for A139383, there is no canonical definition to state claims against.
-/

/-! ## A139383.P249166193549067277

`A144150(2*n²)`
-/

namespace A139383.P249166193549067277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (2 * n ^ 2)

end

end A139383.P249166193549067277

/-! ## A139383.P1066657469947326059

`A185246(n)+A144150(A001105(n))`
-/

namespace A139383.P1066657469947326059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185246 n + A144150 (A001105 n).toNat

end

end A139383.P1066657469947326059

/-! ## A139383.P14929724981978622509

`A007318(∑[n])*A144150(A001105(n))`
-/

namespace A139383.P14929724981978622509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A144150 (A001105 n).toNat

end

end A139383.P14929724981978622509

/-! ## A139383.P477566467418581876

`A144150(A001105(n))/A144150(∑[n])`
-/

namespace A139383.P477566467418581876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144150 (A001105 n).toNat : ℚ) / (A144150 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A139383.P477566467418581876

/-! ## A139383.P10867278149874960089

`A144150(A001105(n))/A007318(C(2, n))`
-/

namespace A139383.P10867278149874960089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144150 (A001105 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A139383.P10867278149874960089

/-!
# A139385: Primes p such that p, p+4 and p+12 are consecutive primes.

The programs for A139385, the canonical program `A139385.P2848592424051489160` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139385 has offset 1).

The definition of A139385 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 947 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139385.P2792357211436155252

`p?[A031927(n)-12]`
-/

namespace A139385.P2792357211436155252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031927 n - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139385.P2792357211436155252

namespace A139385

/-- `p?[A031927(n)-12]` -/
def P2792357211436155252.Spec : Prop :=
  ∀ n, P2792357211436155252.a n = A139385 (n + 1)

end A139385

/-! ## A139385.P13512272860743719029

`p?[A031926(n+1)-4]`
-/

namespace A139385.P13512272860743719029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139385.P13512272860743719029

namespace A139385

/-- `p?[A031926(n+1)-4]` -/
def P13512272860743719029.Spec : Prop :=
  ∀ n, P13512272860743719029.a n = A139385 (n + 1)

end A139385

/-! ## A139385.P2848592424051489160

`p?[A095672(n+1)-4]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A139385

/-- `p?[A095672(n+1)-4]` -/
def P2848592424051489160.Spec : Prop :=
  ∀ n, P2848592424051489160.a n = A139385 (n + 1)

theorem P2848592424051489160.correct : P2848592424051489160.Spec := by
  intro n
  simp only [A139385, Nat.add_sub_cancel]

end A139385

/-! ## A139385.P7681048119605217511

`p?[A194581(n+3)-4]`
-/

namespace A139385.P7681048119605217511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194581 (n + 3) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139385.P7681048119605217511

namespace A139385

/-- `p?[A194581(n+3)-4]` -/
def P7681048119605217511.Spec : Prop :=
  ∀ n, P7681048119605217511.a n = A139385 (n + 1)

end A139385

/-! ## A139385.P11011273980774792441

`p?[A243155(n+1)-12]`
-/

namespace A139385.P11011273980774792441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243155 (n + 1) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139385.P11011273980774792441

namespace A139385

/-- `p?[A243155(n+1)-12]` -/
def P11011273980774792441.Spec : Prop :=
  ∀ n, P11011273980774792441.a n = A139385 (n + 1)

end A139385

/-! ## A139385.P12712635503432355821

`p?[A000040(A320702(n+1))-4]`
-/

namespace A139385.P12712635503432355821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320702 (n + 1)).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139385.P12712635503432355821

namespace A139385

/-- `p?[A000040(A320702(n+1))-4]` -/
def P12712635503432355821.Spec : Prop :=
  ∀ n, P12712635503432355821.a n = A139385 (n + 1)

end A139385

/-!
# A139386: First gap of length at least n in A007950, lower end.

The programs for A139386, there is no canonical definition to state claims against.
-/

/-! ## A139386.P14412063574416243399

`or(1, A292154(A208355(n+2)))`
-/

namespace A139386.P14412063574416243399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A292154 (A208355 (n + 2)).toNat)

end

end A139386.P14412063574416243399

/-! ## A139386.P13656193975103496822

`A126257(∏[Δ[A353356(n+1)]])`
-/

namespace A139386.P13656193975103496822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353356 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A139386.P13656193975103496822

/-! ## A139386.P8854178126565485636

`A242678(A242717(A242681(n+3)²+4)+3)`
-/

namespace A139386.P8854178126565485636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242678 (A242717 (A242681 (n + 3) ^ 2 + 4).toNat + 3).toNat

end

end A139386.P8854178126565485636

/-!
# A139388: Nearest integer to (log(744+(12(n^2-1))^3)/Pi)^2.

The programs for A139388, the canonical program `A139388.P18415126692525519429` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139388 has offset 1).

The definition of A139388 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139388.P18415126692525519429

`round((log(744+(12*((n+1)²-1))^3)/π)²)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A139388

/-- `round((log(744+(12*((n+1)²-1))^3)/π)²)` -/
def P18415126692525519429.Spec : Prop :=
  ∀ n, P18415126692525519429.a n = A139388 (n + 1)

theorem P18415126692525519429.correct : P18415126692525519429.Spec := by
  intro n
  simp only [A139388, Nat.add_sub_cancel]

end A139388

/-! ## A139388.P13988059638457587123

`A004219(A051740(n)+A001045(n+1))+n+1`
-/

namespace A139388.P13988059638457587123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004219 (A051740 n + A001045 (n + 1)).toNat + (n + 1 : ℤ)

end

end A139388.P13988059638457587123

namespace A139388

/-- `A004219(A051740(n)+A001045(n+1))+n+1` -/
def P13988059638457587123.Spec : Prop :=
  ∀ n, P13988059638457587123.a n = A139388 (n + 1)

end A139388

/-! ## A139388.P16853307205803262542

`A004220(A256860(n+1))+4`
-/

namespace A139388.P16853307205803262542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004220 (A256860 (n + 1)).toNat + 4

end

end A139388.P16853307205803262542

namespace A139388

/-- `A004220(A256860(n+1))+4` -/
def P16853307205803262542.Spec : Prop :=
  ∀ n, P16853307205803262542.a n = A139388 (n + 1)

end A139388

/-!
# A139389: Powers of ten in factorial base.

The programs for A139389, there is no canonical definition to state claims against.
-/

/-! ## A139389.P12260567621549786198

`A007623(A011557(n))`
-/

namespace A139389.P12260567621549786198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A011557 n).toNat

end

end A139389.P12260567621549786198

/-!
# A139390: Sum of primes <= 3^n.

The programs for A139390, the canonical program `A139390.P2912127074114890688` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139390 has offset 0).

The definition of A139390 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A139390.P2912127074114890688

`A034387(A000244(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A139390

/-- `A034387(A000244(n))` -/
def P2912127074114890688.Spec : Prop :=
  ∀ n, P2912127074114890688.a n = A139390 n

theorem P2912127074114890688.correct : P2912127074114890688.Spec := by
  intro n
  simp only [A139390]

end A139390

/-! ## A139390.P14750858713172903181

`A007504(A055729(n))`
-/

namespace A139390.P14750858713172903181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A055729 n).toNat

end

end A139390.P14750858713172903181

namespace A139390

/-- `A007504(A055729(n))` -/
def P14750858713172903181.Spec : Prop :=
  ∀ n, P14750858713172903181.a n = A139390 n

end A139390

/-! ## A139390.P1277519042485418204

`A007504(A000720(3^n))`
-/

namespace A139390.P1277519042485418204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000720 (3 ^ n)).toNat

end

end A139390.P1277519042485418204

namespace A139390

/-- `A007504(A000720(3^n))` -/
def P1277519042485418204.Spec : Prop :=
  ∀ n, P1277519042485418204.a n = A139390 n

end A139390

/-! ## A139390.P10386951137663113349

`A034387(3^n)`
-/

namespace A139390.P10386951137663113349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (3 ^ n)

end

end A139390.P10386951137663113349

namespace A139390

/-- `A034387(3^n)` -/
def P10386951137663113349.Spec : Prop :=
  ∀ n, P10386951137663113349.a n = A139390 n

end A139390

/-! ## A139390.P3967668854870484316

`A158662(3^n)-1`
-/

namespace A139390.P3967668854870484316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158662 (3 ^ n) - 1

end

end A139390.P3967668854870484316

namespace A139390

/-- `A158662(3^n)-1` -/
def P3967668854870484316.Spec : Prop :=
  ∀ n, P3967668854870484316.a n = A139390 n

end A139390

/-!
# A139391: Next odd term in Collatz trajectory with starting value n.

The programs for A139391, the canonical program `A139391.P6009705185577113877` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139391 has offset 1).

The definition of A139391 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A139391.P6009705185577113877

`A000265(A014682(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A139391

/-- `A000265(A014682(n+1))` -/
def P6009705185577113877.Spec : Prop :=
  ∀ n, P6009705185577113877.a n = A139391 (n + 1)

theorem P6009705185577113877.correct : P6009705185577113877.Spec := by
  intro n
  simp only [A139391, Nat.add_sub_cancel]

end A139391

/-! ## A139391.P3270147257493566994

`A000265(A006370(n+1))`
-/

namespace A139391.P3270147257493566994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A006370 (n + 1)).toNat

end

end A139391.P3270147257493566994

namespace A139391

/-- `A000265(A006370(n+1))` -/
def P3270147257493566994.Spec : Prop :=
  ∀ n, P3270147257493566994.a n = A139391 (n + 1)

end A139391

/-! ## A139391.P13060561017537910557

`A000265(A306546(n+1))`
-/

namespace A139391.P13060561017537910557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A306546 (n + 1)).toNat

end

end A139391.P13060561017537910557

namespace A139391

/-- `A000265(A306546(n+1))` -/
def P13060561017537910557.Spec : Prop :=
  ∀ n, P13060561017537910557.a n = A139391 (n + 1)

end A139391

/-! ## A139391.P7689633813259906895

`A000265(A187012(n+2))`
-/

namespace A139391.P7689633813259906895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A187012 (n + 2)).toNat

end

end A139391.P7689633813259906895

namespace A139391

/-- `A000265(A187012(n+2))` -/
def P7689633813259906895.Spec : Prop :=
  ∀ n, P7689633813259906895.a n = A139391 (n + 1)

end A139391

/-! ## A139391.P16793262433457640135

`A171435(2*A014682(n+1))`
-/

namespace A139391.P16793262433457640135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * A014682 (n + 1)).toNat

end

end A139391.P16793262433457640135

namespace A139391

/-- `A171435(2*A014682(n+1))` -/
def P16793262433457640135.Spec : Prop :=
  ∀ n, P16793262433457640135.a n = A139391 (n + 1)

end A139391

/-! ## A139391.P14654227048117409598

`A000265(A027656(n)+1+n)`
-/

namespace A139391.P14654227048117409598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A027656 n + 1 + (n : ℤ)).toNat

end

end A139391.P14654227048117409598

namespace A139391

/-- `A000265(A027656(n)+1+n)` -/
def P14654227048117409598.Spec : Prop :=
  ∀ n, P14654227048117409598.a n = A139391 (n + 1)

end A139391

/-! ## A139391.P10858731255561960208

`A000265(A026741(n)+2+n)`
-/

namespace A139391.P10858731255561960208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A026741 n + 2 + (n : ℤ)).toNat

end

end A139391.P10858731255561960208

namespace A139391

/-- `A000265(A026741(n)+2+n)` -/
def P10858731255561960208.Spec : Prop :=
  ∀ n, P10858731255561960208.a n = A139391 (n + 1)

end A139391

/-! ## A139391.P1413646658999191329

`A000265(∑[∑[A157142(n)]+1])`
-/

namespace A139391.P1413646658999191329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157142 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A139391.P1413646658999191329

namespace A139391

/-- `A000265(∑[∑[A157142(n)]+1])` -/
def P1413646658999191329.Spec : Prop :=
  ∀ n, P1413646658999191329.a n = A139391 (n + 1)

end A139391

/-! ## A139391.P3826096626820255106

`A000265(A081351(n+1)-n²)`
-/

namespace A139391.P3826096626820255106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A081351 (n + 1) - (n ^ 2 : ℤ)).toNat

end

end A139391.P3826096626820255106

namespace A139391

/-- `A000265(A081351(n+1)-n²)` -/
def P3826096626820255106.Spec : Prop :=
  ∀ n, P3826096626820255106.a n = A139391 (n + 1)

end A139391

/-! ## A139391.P13117255801620319294

`A000265(2*A000265(n+1)-A142150(n))`
-/

namespace A139391.P13117255801620319294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 * A000265 (n + 1) - A142150 n).toNat

end

end A139391.P13117255801620319294

namespace A139391

/-- `A000265(2*A000265(n+1)-A142150(n))` -/
def P13117255801620319294.Spec : Prop :=
  ∀ n, P13117255801620319294.a n = A139391 (n + 1)

end A139391

/-! ## A139391.P17586500487135132775

`A000265(A000265(n+1)+A000265(n+1)-A142150(n))`
-/

namespace A139391.P17586500487135132775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000265 (n + 1) + (A000265 (n + 1) - A142150 n)).toNat

end

end A139391.P17586500487135132775

namespace A139391

/-- `A000265(A000265(n+1)+A000265(n+1)-A142150(n))` -/
def P17586500487135132775.Spec : Prop :=
  ∀ n, P17586500487135132775.a n = A139391 (n + 1)

end A139391

/-! ## A139391.P16400317870649689587

`A000265(A022998(n+2)+n)`
-/

namespace A139391.P16400317870649689587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A022998 (n + 2) + (n : ℤ)).toNat

end

end A139391.P16400317870649689587

namespace A139391

/-- `A000265(A022998(n+2)+n)` -/
def P16400317870649689587.Spec : Prop :=
  ∀ n, P16400317870649689587.a n = A139391 (n + 1)

end A139391

/-! ## A139391.P11658205995569742412

`A000265(A133622(n+2)+n)`
-/

namespace A139391.P11658205995569742412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A133622 (n + 2) + (n : ℤ)).toNat

end

end A139391.P11658205995569742412

namespace A139391

/-- `A000265(A133622(n+2)+n)` -/
def P11658205995569742412.Spec : Prop :=
  ∀ n, P11658205995569742412.a n = A139391 (n + 1)

end A139391

/-! ## A139391.P5317396449466968158

`A000265(A001057(n+1)+n+1)`
-/

namespace A139391.P5317396449466968158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A001057 (n + 1) + (n + 1 : ℤ)).toNat

end

end A139391.P5317396449466968158

namespace A139391

/-- `A000265(A001057(n+1)+n+1)` -/
def P5317396449466968158.Spec : Prop :=
  ∀ n, P5317396449466968158.a n = A139391 (n + 1)

end A139391

/-! ## A139391.P5597637502198129288

`A000265(A029578(n+2)+n+1)`
-/

namespace A139391.P5597637502198129288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A029578 (n + 2) + (n + 1 : ℤ)).toNat

end

end A139391.P5597637502198129288

namespace A139391

/-- `A000265(A029578(n+2)+n+1)` -/
def P5597637502198129288.Spec : Prop :=
  ∀ n, P5597637502198129288.a n = A139391 (n + 1)

end A139391

/-! ## A139391.P845790016326729537

`A000265(n+1-A130472(n+1))`
-/

namespace A139391.P845790016326729537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ((n + 1 : ℤ) - A130472 (n + 1)).toNat

end

end A139391.P845790016326729537

namespace A139391

/-- `A000265(n+1-A130472(n+1))` -/
def P845790016326729537.Spec : Prop :=
  ∀ n, P845790016326729537.a n = A139391 (n + 1)

end A139391

/-! ## A139391.P11102591725345895318

`A000265(A000096(n+2)%(n+2)+n+1)`
-/

namespace A139391.P11102591725345895318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.tmod (A000096 (n + 2)) (n + 2 : ℤ) + (n + 1 : ℤ)).toNat

end

end A139391.P11102591725345895318

namespace A139391

/-- `A000265(A000096(n+2)%(n+2)+n+1)` -/
def P11102591725345895318.Spec : Prop :=
  ∀ n, P11102591725345895318.a n = A139391 (n + 1)

end A139391

/-! ## A139391.P3136170649911798444

`A166466(Δ[(n+1)*round(n/2)])/3`
-/

namespace A139391.P3136170649911798444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * SequenceMachineLib.roundAway ((n : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166466 (f1 (n + 1) - f1 n).toNat : ℚ) / 3

end

end A139391.P3136170649911798444

namespace A139391

/-- `A166466(Δ[(n+1)*round(n/2)])/3` -/
def P3136170649911798444.Spec : Prop :=
  ∀ n, P3136170649911798444.a n = (A139391 (n + 1) : ℚ)

end A139391

/-! ## A139391.P2716041512965168398

`A026741(A065883(A026741(n)+2+n))`
-/

namespace A139391.P2716041512965168398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A065883 (A026741 n + 2 + (n : ℤ)).toNat).toNat

end

end A139391.P2716041512965168398

namespace A139391

/-- `A026741(A065883(A026741(n)+2+n))` -/
def P2716041512965168398.Spec : Prop :=
  ∀ n, P2716041512965168398.a n = A139391 (n + 1)

end A139391

/-! ## A139391.P4162466999837990139

`A000265(A130845(2*n+1)+n+2)`
-/

namespace A139391.P4162466999837990139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A130845 (2 * n + 1) + (n + 2 : ℤ)).toNat

end

end A139391.P4162466999837990139

namespace A139391

/-- `A000265(A130845(2*n+1)+n+2)` -/
def P4162466999837990139.Spec : Prop :=
  ∀ n, P4162466999837990139.a n = A139391 (n + 1)

end A139391

/-!
# A139392: Odd noncyclic numbers; odd numbers n such that gcd(n,phi(n)) > 1.

The programs for A139392, the canonical program `A139392.P372790930069283267` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139392 has offset 1).

The definition of A139392 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2762 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139392.P5850298812178905250

`lt[2, A082067(n+1)]+1`
-/

namespace A139392.P5850298812178905250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082067 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A139392.P5850298812178905250

namespace A139392

/-- `lt[2, A082067(n+1)]+1` -/
def P5850298812178905250.Spec : Prop :=
  ∀ n, (P5850298812178905250.a n : ℤ) = A139392 (n + 1)

end A139392

/-! ## A139392.P15409404181838357415

`eq[2, A082067(A082067(n+1)+1)]+1`
-/

namespace A139392.P15409404181838357415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082067 (A082067 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A139392.P15409404181838357415

namespace A139392

/-- `eq[2, A082067(A082067(n+1)+1)]+1` -/
def P15409404181838357415.Spec : Prop :=
  ∀ n, (P15409404181838357415.a n : ℤ) = A139392 (n + 1)

end A139392

/-! ## A139392.P8321035687442856925

`∩[2*n+1, A060679(n+1)]`
-/

namespace A139392.P8321035687442856925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139392.P8321035687442856925

namespace A139392

/-- `∩[2*n+1, A060679(n+1)]` -/
def P8321035687442856925.Spec : Prop :=
  ∀ n, (P8321035687442856925.a n : ℤ) = A139392 (n + 1)

end A139392

/-! ## A139392.P6363020928866684939

`∩[A060679(n+1), A004273(n)]`
-/

namespace A139392.P6363020928866684939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139392.P6363020928866684939

namespace A139392

/-- `∩[A060679(n+1), A004273(n)]` -/
def P6363020928866684939.Spec : Prop :=
  ∀ n, (P6363020928866684939.a n : ℤ) = A139392 (n + 1)

end A139392

/-! ## A139392.P13391455288772385805

`∩[A060679(n+1), A004274(n)]`
-/

namespace A139392.P13391455288772385805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139392.P13391455288772385805

namespace A139392

/-- `∩[A060679(n+1), A004274(n)]` -/
def P13391455288772385805.Spec : Prop :=
  ∀ n, (P13391455288772385805.a n : ℤ) = A139392 (n + 1)

end A139392

/-! ## A139392.P5699576778558566976

`∩[A060679(n+1), A020742(n)]`
-/

namespace A139392.P5699576778558566976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139392.P5699576778558566976

namespace A139392

/-- `∩[A060679(n+1), A020742(n)]` -/
def P5699576778558566976.Spec : Prop :=
  ∀ n, (P5699576778558566976.a n : ℤ) = A139392 (n + 1)

end A139392

/-! ## A139392.P1502939323244370677

`∩[A060679(n+1), A060747(n)]`
-/

namespace A139392.P1502939323244370677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139392.P1502939323244370677

namespace A139392

/-- `∩[A060679(n+1), A060747(n)]` -/
def P1502939323244370677.Spec : Prop :=
  ∀ n, (P1502939323244370677.a n : ℤ) = A139392 (n + 1)

end A139392

/-! ## A139392.P13170816034082141977

`∩[A060679(n+1), A062545(n)]`
-/

namespace A139392.P13170816034082141977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139392.P13170816034082141977

namespace A139392

/-- `∩[A060679(n+1), A062545(n)]` -/
def P13170816034082141977.Spec : Prop :=
  ∀ n, (P13170816034082141977.a n : ℤ) = A139392 (n + 1)

end A139392

/-! ## A139392.P4255383264969685039

`∩[A060679(n+1), A130773(n)]`
-/

namespace A139392.P4255383264969685039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139392.P4255383264969685039

namespace A139392

/-- `∩[A060679(n+1), A130773(n)]` -/
def P4255383264969685039.Spec : Prop :=
  ∀ n, (P4255383264969685039.a n : ℤ) = A139392 (n + 1)

end A139392

/-! ## A139392.P2996909886633720593

`∩[A060679(n+1), A163985(n)]`
-/

namespace A139392.P2996909886633720593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139392.P2996909886633720593

namespace A139392

/-- `∩[A060679(n+1), A163985(n)]` -/
def P2996909886633720593.Spec : Prop :=
  ∀ n, (P2996909886633720593.a n : ℤ) = A139392 (n + 1)

end A139392

/-! ## A139392.P13784609371633688084

`∩[A060679(n+1), A071904(n+1)]`
-/

namespace A139392.P13784609371633688084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139392.P13784609371633688084

namespace A139392

/-- `∩[A060679(n+1), A071904(n+1)]` -/
def P13784609371633688084.Spec : Prop :=
  ∀ n, (P13784609371633688084.a n : ℤ) = A139392 (n + 1)

end A139392

/-! ## A139392.P14338636899715196462

`∩[A060679(n+1), A140139(n+1)]`
-/

namespace A139392.P14338636899715196462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139392.P14338636899715196462

namespace A139392

/-- `∩[A060679(n+1), A140139(n+1)]` -/
def P14338636899715196462.Spec : Prop :=
  ∀ n, (P14338636899715196462.a n : ℤ) = A139392 (n + 1)

end A139392

/-! ## A139392.P3013132316022409829

`∩[A060679(n+1), A144396(n+1)]`
-/

namespace A139392.P3013132316022409829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139392.P3013132316022409829

namespace A139392

/-- `∩[A060679(n+1), A144396(n+1)]` -/
def P3013132316022409829.Spec : Prop :=
  ∀ n, (P3013132316022409829.a n : ℤ) = A139392 (n + 1)

end A139392

/-! ## A139392.P6009162465334104263

`∩[A060679(n+1), A255763(n+1)]`
-/

namespace A139392.P6009162465334104263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139392.P6009162465334104263

namespace A139392

/-- `∩[A060679(n+1), A255763(n+1)]` -/
def P6009162465334104263.Spec : Prop :=
  ∀ n, (P6009162465334104263.a n : ℤ) = A139392 (n + 1)

end A139392

/-! ## A139392.P372790930069283267

`A060679(eq[1, A060679(n+1)%2]+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A139392

/-- `A060679(eq[1, A060679(n+1)%2]+1)` -/
def P372790930069283267.Spec : Prop :=
  ∀ n, P372790930069283267.a n = A139392 (n + 1)

theorem P372790930069283267.correct : P372790930069283267.Spec := by
  intro n
  simp only [A139392, Nat.add_sub_cancel]

end A139392

/-! ## A139392.P1839946616682072262

`A109613(lt[2, A082067(n+1)])`
-/

namespace A139392.P1839946616682072262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A139392.P1839946616682072262

namespace A139392

/-- `A109613(lt[2, A082067(n+1)])` -/
def P1839946616682072262.Spec : Prop :=
  ∀ n, P1839946616682072262.a n = A139392 (n + 1)

end A139392

/-! ## A139392.P14238185670317208057

`filter[A060679(n+1), A000035(#)]`
-/

namespace A139392.P14238185670317208057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A139392.P14238185670317208057

namespace A139392

/-- `filter[A060679(n+1), A000035(#)]` -/
def P14238185670317208057.Spec : Prop :=
  ∀ n, P14238185670317208057.a n = A139392 (n + 1)

end A139392

/-! ## A139392.P5277215132922857164

`filter[A060679(n+1), A266070(#)]`
-/

namespace A139392.P5277215132922857164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A139392.P5277215132922857164

namespace A139392

/-- `filter[A060679(n+1), A266070(#)]` -/
def P5277215132922857164.Spec : Prop :=
  ∀ n, P5277215132922857164.a n = A139392 (n + 1)

end A139392

/-! ## A139392.P5598911595334716308

`filter[A060679(n+1), A266611(#)]`
-/

namespace A139392.P5598911595334716308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A139392.P5598911595334716308

namespace A139392

/-- `filter[A060679(n+1), A266611(#)]` -/
def P5598911595334716308.Spec : Prop :=
  ∀ n, P5598911595334716308.a n = A139392 (n + 1)

end A139392

/-!
# A139393: a(n) = Sum_{i=1..m} e(i) * 10^(m-i) where e(1) <= ... <= e(m) are the nonzero exponents in the prime factorization of n: a representation of the prime signature of n.

The programs for A139393, there is no canonical definition to state claims against.
-/

/-! ## A139393.P3236368785600744660

`A004185(A037916(n+1))`
-/

namespace A139393.P3236368785600744660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A037916 (n + 1)).toNat

end

end A139393.P3236368785600744660

/-! ## A139393.P1961762803406988413

`A054841(A046523(n+1))`
-/

namespace A139393.P1961762803406988413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (A046523 (n + 1)).toNat

end

end A139393.P1961762803406988413

/-! ## A139393.P1763456356753197256

`A037916(A320389(n+1))`
-/

namespace A139393.P1763456356753197256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037916 (A320389 (n + 1)).toNat

end

end A139393.P1763456356753197256

/-! ## A139393.P22281374883901364

`A037916(A085079(n+1))`
-/

namespace A139393.P22281374883901364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037916 (A085079 (n + 1)).toNat

end

end A139393.P22281374883901364

/-! ## A139393.P3372675684897147900

`A004086(A320390(n+1))`
-/

namespace A139393.P3372675684897147900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A320390 (n + 1)).toNat

end

end A139393.P3372675684897147900

/-!
# A139394: a(n) = A024899(n)-A024898(n).

The programs for A139394, the canonical program `A139394.P5885882405696362686` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139394 has offset 1).

The definition of A139394 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024898, A024899, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A139394.P5885882405696362686

`A024899(n+1)-A024898(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A139394

/-- `A024899(n+1)-A024898(n+1)` -/
def P5885882405696362686.Spec : Prop :=
  ∀ n, P5885882405696362686.a n = A139394 (n + 1)

theorem P5885882405696362686.correct : P5885882405696362686.Spec := by
  intro n
  simp only [A139394, Nat.add_sub_cancel]

end A139394

/-! ## A139394.P12050491562311585136

`(A171716(n+1)-1)/3`
-/

namespace A139394.P12050491562311585136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171716 (n + 1) - 1 : ℚ) / 3

end

end A139394.P12050491562311585136

namespace A139394

/-- `(A171716(n+1)-1)/3` -/
def P12050491562311585136.Spec : Prop :=
  ∀ n, P12050491562311585136.a n = (A139394 (n + 1) : ℚ)

end A139394

/-! ## A139394.P11712302077124596715

`A002264(A171716(n+1))`
-/

namespace A139394.P11712302077124596715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A171716 (n + 1)).toNat

end

end A139394.P11712302077124596715

namespace A139394

/-- `A002264(A171716(n+1))` -/
def P11712302077124596715.Spec : Prop :=
  ∀ n, P11712302077124596715.a n = A139394 (n + 1)

end A139394

/-! ## A139394.P3371050961802802725

`A024892(n+1)-A022760(n+1)`
-/

namespace A139394.P3371050961802802725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024892 (n + 1) - A022760 (n + 1)

end

end A139394.P3371050961802802725

namespace A139394

/-- `A024892(n+1)-A022760(n+1)` -/
def P3371050961802802725.Spec : Prop :=
  ∀ n, P3371050961802802725.a n = A139394 (n + 1)

end A139394

/-! ## A139394.P6705130877103853838

`A153218(n+1)-A059325(n+1)`
-/

namespace A139394.P6705130877103853838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1) - A059325 (n + 1)

end

end A139394.P6705130877103853838

namespace A139394

/-- `A153218(n+1)-A059325(n+1)` -/
def P6705130877103853838.Spec : Prop :=
  ∀ n, P6705130877103853838.a n = A139394 (n + 1)

end A139394

/-! ## A139394.P4277395971992669813

`A022760(n+1)%A024898(n+1)`
-/

namespace A139394.P4277395971992669813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022760 (n + 1)) (A024898 (n + 1))

end

end A139394.P4277395971992669813

namespace A139394

/-- `A022760(n+1)%A024898(n+1)` -/
def P4277395971992669813.Spec : Prop :=
  ∀ n, P4277395971992669813.a n = A139394 (n + 1)

end A139394

/-! ## A139394.P9937912127362728952

`A024899(n+1)-(A059325(n+1)+1)`
-/

namespace A139394.P9937912127362728952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1) - (A059325 (n + 1) + 1)

end

end A139394.P9937912127362728952

namespace A139394

/-- `A024899(n+1)-(A059325(n+1)+1)` -/
def P9937912127362728952.Spec : Prop :=
  ∀ n, P9937912127362728952.a n = A139394 (n + 1)

end A139394

/-! ## A139394.P7339832845531722273

`A153218(n+1)+1-A024898(n+1)`
-/

namespace A139394.P7339832845531722273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1) + (1 - A024898 (n + 1))

end

end A139394.P7339832845531722273

namespace A139394

/-- `A153218(n+1)+1-A024898(n+1)` -/
def P7339832845531722273.Spec : Prop :=
  ∀ n, P7339832845531722273.a n = A139394 (n + 1)

end A139394

/-! ## A139394.P3486712786176316361

`A153218(n+1)+2-A153134(n+1)`
-/

namespace A139394.P3486712786176316361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1) + (2 - A153134 (n + 1))

end

end A139394.P3486712786176316361

namespace A139394

/-- `A153218(n+1)+2-A153134(n+1)` -/
def P3486712786176316361.Spec : Prop :=
  ∀ n, P3486712786176316361.a n = A139394 (n + 1)

end A139394

/-! ## A139394.P16923963630807505829

`2*A024899(n+1)-A022760(n+1)`
-/

namespace A139394.P16923963630807505829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024899 (n + 1) - A022760 (n + 1)

end

end A139394.P16923963630807505829

namespace A139394

/-- `2*A024899(n+1)-A022760(n+1)` -/
def P16923963630807505829.Spec : Prop :=
  ∀ n, P16923963630807505829.a n = A139394 (n + 1)

end A139394

/-! ## A139394.P589760684493924505

`A103221(A002476(n+1)-(A007528(n+1)+1))`
-/

namespace A139394.P589760684493924505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A002476 (n + 1) - (A007528 (n + 1) + 1)).toNat

end

end A139394.P589760684493924505

namespace A139394

/-- `A103221(A002476(n+1)-(A007528(n+1)+1))` -/
def P589760684493924505.Spec : Prop :=
  ∀ n, P589760684493924505.a n = A139394 (n + 1)

end A139394

/-! ## A139394.P16545293838337314781

`(A024899(n+1)%A024898(n+1))%A000010(n+1)`
-/

namespace A139394.P16545293838337314781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A024899 (n + 1)) (A024898 (n + 1))) (A000010 (n + 1))

end

end A139394.P16545293838337314781

namespace A139394

/-- `(A024899(n+1)%A024898(n+1))%A000010(n+1)` -/
def P16545293838337314781.Spec : Prop :=
  ∀ n, P16545293838337314781.a n = A139394 (n + 1)

end A139394

/-! ## A139394.P6366345657486674979

`(A171715(n+2)/2-1)/3`
-/

namespace A139394.P6366345657486674979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A171715 (n + 2) : ℚ) / 2 - 1) / 3

end

end A139394.P6366345657486674979

namespace A139394

/-- `(A171715(n+2)/2-1)/3` -/
def P6366345657486674979.Spec : Prop :=
  ∀ n, P6366345657486674979.a n = (A139394 (n + 1) : ℚ)

end A139394

/-! ## A139394.P1921567655346808403

`A008612(A171715(n+2))`
-/

namespace A139394.P1921567655346808403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A171715 (n + 2)).toNat

end

end A139394.P1921567655346808403

namespace A139394

/-- `A008612(A171715(n+2))` -/
def P1921567655346808403.Spec : Prop :=
  ∀ n, P1921567655346808403.a n = A139394 (n + 1)

end A139394

/-! ## A139394.P4734509207532241447

`A103221(A002476(n+1))-A103221(A007528(n+1))`
-/

namespace A139394.P4734509207532241447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A002476 (n + 1)).toNat - A103221 (A007528 (n + 1)).toNat

end

end A139394.P4734509207532241447

namespace A139394

/-- `A103221(A002476(n+1))-A103221(A007528(n+1))` -/
def P4734509207532241447.Spec : Prop :=
  ∀ n, P4734509207532241447.a n = A139394 (n + 1)

end A139394

/-!
# A139396: Decimal expansion of the alternating sum 1/p(1) + 1/(p(2)*p(3)) - 1/(p(4)*p(5)*p(6)) + 1/(p(7)*p(8)*p(9)*p(10)) - ..., where p(n) is the n-th prime.

The programs for A139396, there is no canonical definition to state claims against.
-/

/-! ## A139396.P3641686368945641096

`9-A238234(n)`
-/

namespace A139396.P3641686368945641096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A238234 n

end

end A139396.P3641686368945641096

/-!
# A139397: Number of pyramids which can be constructed using n 1 x 2 tiles placed on an integral grid, with the base block at a fixed position.

The programs for A139397, there is no canonical definition to state claims against.
-/

/-! ## A139397.P8105334464211552762

`A227065(A336400(n)+A144263(n))`
-/

namespace A139397.P8105334464211552762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227065 (A336400 n + A144263 n).toNat

end

end A139397.P8105334464211552762

/-!
# A139398: a(n) = Sum_{k >= 0} binomial(n,5*k).

The programs for A139398, there is no canonical definition to state claims against.
-/

/-! ## A139398.P16576183938694475799

`A139761(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A139398.P16576183938694475799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A139761 (n - 1) + a (n - 1)

end

end A139398.P16576183938694475799

/-! ## A139398.P5719741440991666285

`A139748(n)+A105371(n)`
-/

namespace A139398.P5719741440991666285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139748 n + A105371 n

end

end A139398.P5719741440991666285

/-! ## A139398.P9781130314880932926

`A133476(n)+Δ[A103311(n)]`
-/

namespace A139398.P9781130314880932926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 n + (f1 (n + 1) - f1 n)

end

end A139398.P9781130314880932926

/-! ## A139398.P14865168817911371528

`A139714(n)+Δ[A100334(n)]`
-/

namespace A139398.P14865168817911371528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139714 n + (f1 (n + 1) - f1 n)

end

end A139398.P14865168817911371528

/-! ## A139398.P13616945713707300022

`A139714(n)+A103311(n+1)`
-/

namespace A139398.P13616945713707300022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139714 n + A103311 (n + 1)

end

end A139398.P13616945713707300022

/-! ## A139398.P11650808093611275027

`Δ[A133476(n)]`
-/

namespace A139398.P11650808093611275027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139398.P11650808093611275027

/-! ## A139398.P13084805781104958569

`Δ[A139748(n)+A100334(n)]`
-/

namespace A139398.P13084805781104958569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139748 n + A100334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139398.P13084805781104958569

/-! ## A139398.P9405685432021715280

`A105371(n)+Δ[A139761(n)]`
-/

namespace A139398.P9405685432021715280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105371 n + (f1 (n + 1) - f1 n)

end

end A139398.P9405685432021715280

/-! ## A139398.P5835290029029980284

`A133476(n+1)-A133476(n)`
-/

namespace A139398.P5835290029029980284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 (n + 1) - A133476 n

end

end A139398.P5835290029029980284

/-! ## A139398.P17117018365031295199

`A103311(n+1)+Δ[A139748(n)]`
-/

namespace A139398.P17117018365031295199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103311 (n + 1) + (f1 (n + 1) - f1 n)

end

end A139398.P17117018365031295199

/-! ## A139398.P15956642983825366194

`Δ[Δ[A139714(n)]]`
-/

namespace A139398.P15956642983825366194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139714 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139398.P15956642983825366194

/-! ## A139398.P17216503022465702935

`A129929(n)-A139714(n+1)`
-/

namespace A139398.P17216503022465702935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129929 n - A139714 (n + 1)

end

end A139398.P17216503022465702935

/-! ## A139398.P2810735586563175621

`Δ[A103311(n)+Δ[A139748(n)]]`
-/

namespace A139398.P2810735586563175621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139748 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103311 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139398.P2810735586563175621

/-! ## A139398.P7923667431969647082

`A000079(n)-(A139761(n+1)+A139714(n+1))`
-/

namespace A139398.P7923667431969647082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A139761 (n + 1) + A139714 (n + 1))

end

end A139398.P7923667431969647082

/-! ## A139398.P2953860064976421371

`A306846(A052905(n+2))`
-/

namespace A139398.P2953860064976421371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306846 (A052905 (n + 2)).toNat

end

end A139398.P2953860064976421371

/-!
# A139399: Number of steps to reach a cycle in Collatz problem.

The programs for A139399, there is no canonical definition to state claims against.
-/

/-! ## A139399.P7949936790925609949

`C(2, n+1)+A006577(n+1)-2`
-/

namespace A139399.P7949936790925609949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 1) : ℤ) + (A006577 (n + 1) - 2)

end

end A139399.P7949936790925609949

/-! ## A139399.P5289592381459298147

`C(2, n+1)+A008908(n+1)-3`
-/

namespace A139399.P5289592381459298147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 1) : ℤ) + (A008908 (n + 1) - 3)

end

end A139399.P5289592381459298147

/-! ## A139399.P782580315291033550

`A289207(A006577(n+1))`
-/

namespace A139399.P782580315291033550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A006577 (n + 1)).toNat

end

end A139399.P782580315291033550

/-! ## A139399.P3704594214649789558

`A289207(A008908(n+1)-1)`
-/

namespace A139399.P3704594214649789558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A008908 (n + 1) - 1).toNat

end

end A139399.P3704594214649789558

/-! ## A139399.P10168629236813863095

`A006577(n+1)-A130130(n)`
-/

namespace A139399.P10168629236813863095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) - A130130 n

end

end A139399.P10168629236813863095

/-! ## A139399.P10502391196821545070

`A008908(n+1)-A158799(n)`
-/

namespace A139399.P10502391196821545070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - A158799 n

end

end A139399.P10502391196821545070

/-! ## A139399.P4702210076460359573

`A112695(n+1)-A130706(n)`
-/

namespace A139399.P4702210076460359573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112695 (n + 1) - A130706 n

end

end A139399.P4702210076460359573

/-! ## A139399.P13361026794787757604

`A112695(n+1)*A157928(n)`
-/

namespace A139399.P13361026794787757604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112695 (n + 1) * A157928 n

end

end A139399.P13361026794787757604

/-! ## A139399.P16969071647611605110

`A112695(n+1)%A002523(n)`
-/

namespace A139399.P16969071647611605110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112695 (n + 1)) (A002523 n)

end

end A139399.P16969071647611605110

/-! ## A139399.P9432299005264430069

`and(A112695(n+1), A134824(n))`
-/

namespace A139399.P9432299005264430069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112695 (n + 1)) (A134824 n)

end

end A139399.P9432299005264430069

/-! ## A139399.P14417059858242457041

`A233583(A006577(n+1)+1)-2`
-/

namespace A139399.P14417059858242457041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A006577 (n + 1) + 1).toNat - 2

end

end A139399.P14417059858242457041

/-! ## A139399.P4112478218907622759

`lcm(A112695(n+1), A173950(n+1))`
-/

namespace A139399.P4112478218907622759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A112695 (n + 1)) (A173950 (n + 1))

end

end A139399.P4112478218907622759

/-! ## A139399.P2438009712190002351

`(A008908(n+1)-3)%A069039(A000010(n+1))`
-/

namespace A139399.P2438009712190002351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008908 (n + 1) - 3) (A069039 (A000010 (n + 1)).toNat)

end

end A139399.P2438009712190002351

/-! ## A139399.P4520759381785460070

`(A006577(n+1)-2)%A006542(A255574(n)+4)`
-/

namespace A139399.P4520759381785460070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006577 (n + 1) - 2) (A006542 (A255574 n + 4).toNat)

end

end A139399.P4520759381785460070

/-! ## A139399.P497997668489365099

`A006577(n+1)+A130713(A004277(n))-2`
-/

namespace A139399.P497997668489365099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) + (A130713 (A004277 n).toNat - 2)

end

end A139399.P497997668489365099

/-! ## A139399.P4356125429235793139

`and(A112695(n+1), A135972(n+1))`
-/

namespace A139399.P4356125429235793139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112695 (n + 1)) (A135972 (n + 1))

end

end A139399.P4356125429235793139

/-! ## A139399.P752790449280471231

`and(A053545(n), A112695(n+1))`
-/

namespace A139399.P752790449280471231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053545 n) (A112695 (n + 1))

end

end A139399.P752790449280471231

/-! ## A139399.P7637476006520292316

`A006577(A075884(n+1))%A166245(A166245(n+1))`
-/

namespace A139399.P7637476006520292316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006577 (A075884 (n + 1)).toNat) (A166245 (A166245 (n + 1)).toNat)

end

end A139399.P7637476006520292316

