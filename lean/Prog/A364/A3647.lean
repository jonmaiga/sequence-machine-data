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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C011
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C001
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

/-!
# A364702: Numbers k in A361098 that are not divisible by A007947(k)^2.

The programs for A364702, there is no canonical definition to state claims against.
-/

/-! ## A364702.P1991052500087553471

`∪[A366250(1+n), A367708(n+1)]`
-/

namespace A364702.P1991052500087553471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366250 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A364702.P1991052500087553471

/-! ## A364702.P10064243013116507333

`filter[A361098(1+n), A389905(#)]`
-/

namespace A364702.P10064243013116507333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361098 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A364702.P10064243013116507333

/-! ## A364702.P5057896816017533413

`∩[A332785(n+1), A361098(n+1)]`
-/

namespace A364702.P5057896816017533413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364702.P5057896816017533413

/-! ## A364702.P4408952357972676441

`∩[A361098(n+1), A389065(n+1)]`
-/

namespace A364702.P4408952357972676441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364702.P4408952357972676441

/-! ## A364702.P992676830761793526

`∩[A052485(n+1), A361098(n+1)]`
-/

namespace A364702.P992676830761793526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364702.P992676830761793526

/-!
# A364703: Numerators of coefficients in expansion of sqrt( 1 + x + 2*x^2 + 3*x^3 + 4*x^4 + ... ).

The programs for A364703, there is no canonical definition to state claims against.
-/

/-! ## A364703.P15290506471098197771

`A317936(2^n)`
-/

namespace A364703.P15290506471098197771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317936 (2 ^ n)

end

end A364703.P15290506471098197771

/-! ## A364703.P15691785024245796078

`A317938(2^n)`
-/

namespace A364703.P15691785024245796078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317938 (2 ^ n)

end

end A364703.P15691785024245796078

/-! ## A364703.P5350317715750119209

`abs(A317936(A000079(n)))`
-/

namespace A364703.P5350317715750119209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A317936 (A000079 n).toNat|

end

end A364703.P5350317715750119209

/-! ## A364703.P2868662791799896164

`abs(A317938(sqrt(A000302(n))))`
-/

namespace A364703.P2868662791799896164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A317938 (SequenceMachineLib.roundAway (Real.sqrt (A000302 n : ℝ))).toNat|

end

end A364703.P2868662791799896164

/-! ## A364703.P16659694689208244732

`A317936(A000079(n))+A025469(n)`
-/

namespace A364703.P16659694689208244732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317936 (A000079 n).toNat + A025469 n

end

end A364703.P16659694689208244732

/-!
# A364705: Expansion of 1/(1 - 4*x - x^2 + x^3).

The programs for A364705, the canonical program `A364705.P16609819674231495045` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364705 has offset 0).

The definition of A364705 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x-x^2+x^3))` (program `A364705.P16609819674231495045`, by `A364705.P16609819674231495045.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A364705.P16609819674231495045

`ogf(1/(1-4x-x^2+x^3))`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A364705

/-- `ogf(1/(1-4x-x^2+x^3))` -/
def P16609819674231495045.Spec : Prop :=
  ∀ n, P16609819674231495045.a n = A364705 n

theorem P16609819674231495045.correct : P16609819674231495045.Spec := by
  intro n
  simp only [A364705]

end A364705

/-! ## A364705.P7053216304138066047

`4*a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=4, a(2)=17`
-/

namespace A364705.P7053216304138066047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 17] fun n a =>
  4 * a (n - 1) + a (n - 2) - a (n - 3)

end

end A364705.P7053216304138066047

namespace A364705

/-- `4*a(n-1)+a(n-2)-a(n-3)` -/
def P7053216304138066047.Spec : Prop :=
  ∀ n, P7053216304138066047.a n = A364705 n

end A364705

/-! ## A364705.P16200959125439533448

`Δ[A191721(1+n)]`
-/

namespace A364705.P16200959125439533448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191721 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A364705.P16200959125439533448

namespace A364705

/-- `Δ[A191721(1+n)]` -/
def P16200959125439533448.Spec : Prop :=
  ∀ n, P16200959125439533448.a n = A364705 n

end A364705

/-! ## A364705.P8529179540549640710

`A191721(n+2)-A191721(n+1)`
-/

namespace A364705.P8529179540549640710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191721 (n + 2) - A191721 (n + 1)

end

end A364705.P8529179540549640710

namespace A364705

/-- `A191721(n+2)-A191721(n+1)` -/
def P8529179540549640710.Spec : Prop :=
  ∀ n, P8529179540549640710.a n = A364705 n

end A364705

/-!
# A364706: a(n) is the least number k such that the k-th difference between consecutive practical numbers, A179651(k), equals 2*n, or -1 if no such k exists.

The programs for A364706, there is no canonical definition to state claims against.
-/

/-! ## A364706.P18139866237169087282

`A225559(A364707(n+1))`
-/

namespace A364706.P18139866237169087282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225559 (A364707 (n + 1)).toNat

end

end A364706.P18139866237169087282

/-!
# A364707: a(n) is the least practical number A005153(k) such that A005153(k+1) - A005153(k) = 2*n, or -1 if no such number exists.

The programs for A364707, there is no canonical definition to state claims against.
-/

/-! ## A364707.P5793115563802758037

`A005153(A364706(n+1))`
-/

namespace A364707.P5793115563802758037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (A364706 (n + 1)).toNat

end

end A364707.P5793115563802758037

/-!
# A364709: Triangle read by rows: T(n,k) is the number of forests of labeled rooted hypertrees with n vertices and weight k, 0 <= k < n.

The programs for A364709, the canonical program `A364709.P13523192855542254973` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364709 has offset 1).

The definition of A364709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364709.P13523192855542254973

`A008278(n+1)*A095888(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A364709

/-- `A008278(n+1)*A095888(n+1)` -/
def P13523192855542254973.Spec : Prop :=
  ∀ n, P13523192855542254973.a n = A364709 (n + 1)

theorem P13523192855542254973.correct : P13523192855542254973.Spec := by
  intro n
  simp only [A364709, Nat.add_sub_cancel]

end A364709

/-! ## A364709.P15339433167223017862

`A095888(1+n)*A136011(A082156(n+1))`
-/

namespace A364709.P15339433167223017862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095888 (1 + n) * A136011 (A082156 (n + 1)).toNat

end

end A364709.P15339433167223017862

namespace A364709

/-- `A095888(1+n)*A136011(A082156(n+1))` -/
def P15339433167223017862.Spec : Prop :=
  ∀ n, P15339433167223017862.a n = A364709 (n + 1)

end A364709

/-! ## A364709.P15621420213437748229

`A130850(n)/A119502(n)*A095888(n+1)`
-/

namespace A364709.P15621420213437748229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130850 n : ℚ) / (A119502 n : ℚ) * (A095888 (n + 1) : ℚ)

end

end A364709.P15621420213437748229

namespace A364709

/-- `A130850(n)/A119502(n)*A095888(n+1)` -/
def P15621420213437748229.Spec : Prop :=
  ∀ n, P15621420213437748229.a n = (A364709 (n + 1) : ℚ)

end A364709

/-! ## A364709.P13186087515437469911

`A008277(A114327(n)+1+n)*A095888(n+1)`
-/

namespace A364709.P13186087515437469911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (A114327 n + 1 + (n : ℤ)).toNat * A095888 (n + 1)

end

end A364709.P13186087515437469911

namespace A364709

/-- `A008277(A114327(n)+1+n)*A095888(n+1)` -/
def P13186087515437469911.Spec : Prop :=
  ∀ n, P13186087515437469911.a n = A364709 (n + 1)

end A364709

/-! ## A364709.P12229886717962800291

`abs(A075263(n)/A025581(n)!)*A095888(n+1)`
-/

namespace A364709.P12229886717962800291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A075263 n : ℚ) / (Nat.factorial (A025581 n).toNat : ℚ)| * (A095888 (n + 1) : ℚ)

end

end A364709.P12229886717962800291

namespace A364709

/-- `abs(A075263(n)/A025581(n)!)*A095888(n+1)` -/
def P12229886717962800291.Spec : Prop :=
  ∀ n, P12229886717962800291.a n = (A364709 (n + 1) : ℚ)

end A364709

/-! ## A364709.P675174941342739866

`A008277(A002024(n+1)²-n)*A095888(n+1)`
-/

namespace A364709.P675174941342739866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat * A095888 (n + 1)

end

end A364709.P675174941342739866

namespace A364709

/-- `A008277(A002024(n+1)²-n)*A095888(n+1)` -/
def P675174941342739866.Spec : Prop :=
  ∀ n, P675174941342739866.a n = A364709 (n + 1)

end A364709

/-! ## A364709.P2619585302956665915

`A008277(A349520(2*(n+1))²-n)*A095888(n+1)`
-/

namespace A364709.P2619585302956665915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (A349520 (2 * (n + 1)) ^ 2 - (n : ℤ)).toNat * A095888 (n + 1)

end

end A364709.P2619585302956665915

namespace A364709

/-- `A008277(A349520(2*(n+1))²-n)*A095888(n+1)` -/
def P2619585302956665915.Spec : Prop :=
  ∀ n, P2619585302956665915.a n = A364709 (n + 1)

end A364709

/-!
# A364710: Products of primorials that are neither squarefree nor prime powers.

The programs for A364710, there is no canonical definition to state claims against.
-/

/-! ## A364710.P3216494525562938104

`∪[A364930(n+1), A386223(n+1)]`
-/

namespace A364710.P3216494525562938104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A364710.P3216494525562938104

/-! ## A364710.P3765954757536339379

`∩[A025487(n+1), A363814(n+1)]`
-/

namespace A364710.P3765954757536339379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364710.P3765954757536339379

/-! ## A364710.P3388165273018114974

`∩[A178799(n)+a(n-1), A363814(n+1)]` with `a(0)=1`
-/

namespace A364710.P3388165273018114974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A178799 n + f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364710.P3388165273018114974

/-! ## A364710.P210160292273413332

`∩[A025487(n+1), A008594(n)]`
-/

namespace A364710.P210160292273413332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364710.P210160292273413332

/-! ## A364710.P13190506689163866831

`∩[A014766(n+1), A025487(n+1)]`
-/

namespace A364710.P13190506689163866831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364710.P13190506689163866831

/-! ## A364710.P6751062826916513819

`filter[A025487(n+1), A355447(#)]`
-/

namespace A364710.P6751062826916513819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A364710.P6751062826916513819

/-! ## A364710.P3833097034236059722

`filter[A025487(n+1), A355454(#)]`
-/

namespace A364710.P3833097034236059722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355454 (f1 j).toNat = 1) n)

end

end A364710.P3833097034236059722

/-! ## A364710.P5558224082022555783

`∩[A133812(n+1), A008594(n)]`
-/

namespace A364710.P5558224082022555783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364710.P5558224082022555783

/-! ## A364710.P4697247786660682229

`∩[A133812(n+1), A363814(n+1)]`
-/

namespace A364710.P4697247786660682229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364710.P4697247786660682229

/-! ## A364710.P13842223692178891490

`filter[A008594(n+1), A322585(#)]`
-/

namespace A364710.P13842223692178891490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A364710.P13842223692178891490

/-! ## A364710.P15234433064149537448

`filter[A014766(n+1), A322585(#)]`
-/

namespace A364710.P15234433064149537448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A364710.P15234433064149537448

/-! ## A364710.P14386041009207220305

`filter[A363814(n+1), A322585(#)]`
-/

namespace A364710.P14386041009207220305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A364710.P14386041009207220305

/-! ## A364710.P16457042100447225363

`filter[A086390(n+2), A322585(#)]`
-/

namespace A364710.P16457042100447225363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086390 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A364710.P16457042100447225363

/-! ## A364710.P17765078967497135407

`filter[A025487(n+1), A065202(#)]`
-/

namespace A364710.P17765078967497135407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A364710.P17765078967497135407

/-! ## A364710.P3089912741477537726

`filter[A091573(n), A322585(#)]`
-/

namespace A364710.P3089912741477537726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A364710.P3089912741477537726

/-! ## A364710.P5568650079350246914

`filter[A165988(n+1), A322585(#)]`
-/

namespace A364710.P5568650079350246914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A364710.P5568650079350246914

/-! ## A364710.P8771122969677173863

`filter[A298028(n+1), A322585(#)]`
-/

namespace A364710.P8771122969677173863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A364710.P8771122969677173863

/-! ## A364710.P6259385778954030130

`filter[A272975(n+2), A322585(#)]`
-/

namespace A364710.P6259385778954030130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272975 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A364710.P6259385778954030130

/-! ## A364710.P15691189129779095065

`filter[A317312(n+2), A322585(#)]`
-/

namespace A364710.P15691189129779095065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317312 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A364710.P15691189129779095065

/-!
# A364713: a(n) is the numerator of coefficient of x^n in expansion of (1 + x)^(1/n).

The programs for A364713, there is no canonical definition to state claims against.
-/

/-! ## A364713.P10541313525209129625

`A394506(∑[n+1])`
-/

namespace A364713.P10541313525209129625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394506 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A364713.P10541313525209129625

/-! ## A364713.P16343446268433852908

`A394506(A000217(n+1))%A020100(2*n+3)`
-/

namespace A364713.P16343446268433852908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A394506 (A000217 (n + 1)).toNat) (A020100 (2 * n + 3))

end

end A364713.P16343446268433852908

/-! ## A364713.P6276795727273306139

`A394506(A000217(n+1))%A124554(2*(n+1))`
-/

namespace A364713.P6276795727273306139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A394506 (A000217 (n + 1)).toNat) (A124554 (2 * (n + 1)))

end

end A364713.P6276795727273306139

/-!
# A364715: Numbers k such that d(k) < d(k+1) < d(k+2), where d(n) is the number of divisors of n.

The programs for A364715, there is no canonical definition to state claims against.
-/

/-! ## A364715.P9883682294003000155

`A188631(1+n)-1`
-/

namespace A364715.P9883682294003000155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188631 (1 + n) - 1

end

end A364715.P9883682294003000155

/-! ## A364715.P6645266485660369120

`row(C(A188631(n+1), 2))`
-/

namespace A364715.P6645266485660369120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (Nat.choose (A188631 (n + 1)).toNat 2)

end

end A364715.P6645266485660369120

/-! ## A364715.P16369732785105458387

`∩[A074775(n+1)-1, A074775(n+1)]`
-/

namespace A364715.P16369732785105458387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074775 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364715.P16369732785105458387

/-! ## A364715.P11983219916657833893

`∩[A240171(n+2)-1, A240171(n+2)]-1`
-/

namespace A364715.P11983219916657833893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240171 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240171 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A364715.P11983219916657833893

/-! ## A364715.P3004941629757410527

`A023443(A188631(n+1))`
-/

namespace A364715.P3004941629757410527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A188631 (n + 1)).toNat

end

end A364715.P3004941629757410527

/-! ## A364715.P3576715189221378201

`∩[A074775(n+1), A023443(A074775(n+1))]`
-/

namespace A364715.P3576715189221378201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A074775 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364715.P3576715189221378201

/-!
# A364716: Numbers k such that d(k) < d(k+1) < d(k+2) < d(k+3), where d(n) is the number of divisors of n.

The programs for A364716, there is no canonical definition to state claims against.
-/

/-! ## A364716.P5534644345709044354

`∩[A364715(n+1)-1, A364715(n+1)]`
-/

namespace A364716.P5534644345709044354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364715 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364716.P5534644345709044354

/-! ## A364716.P5332659720278896715

`∩[A074775(n+1), A188631(n+1)-2]`
-/

namespace A364716.P5332659720278896715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188631 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364716.P5332659720278896715

/-! ## A364716.P5754361156871015354

`∩[A188631(n+1)-1, A023443(A188631(n+1)-1)]`
-/

namespace A364716.P5754361156871015354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188631 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A188631 (n + 1) - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364716.P5754361156871015354

/-! ## A364716.P7724747610942326005

`∩[A364715(n+1), A124741(A364715(n+1))]`
-/

namespace A364716.P7724747610942326005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A364715 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364716.P7724747610942326005

/-! ## A364716.P1453903637354441301

`∩[A188631(n+1)-1, A124741(A188631(n+1)-1)]`
-/

namespace A364716.P1453903637354441301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188631 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A188631 (n + 1) - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364716.P1453903637354441301

/-!
# A364718: Numbers k such that d(k) > d(k+1) > d(k+2), where d(n) is the number of divisors of n.

The programs for A364718, there is no canonical definition to state claims against.
-/

/-! ## A364718.P11962669754205894296

`A188598(1+n)-1`
-/

namespace A364718.P11962669754205894296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188598 (1 + n) - 1

end

end A364718.P11962669754205894296

/-! ## A364718.P2449692814483212654

`abs(A188598(n+1)+A057428(n+1))`
-/

namespace A364718.P2449692814483212654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A188598 (n + 1) + A057428 (n + 1)|

end

end A364718.P2449692814483212654

/-! ## A364718.P4046483572074366079

`xor(A033999(2*n+1)*A188598(n+1), -1)`
-/

namespace A364718.P4046483572074366079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033999 (2 * n + 1) * A188598 (n + 1)) (-1)

end

end A364718.P4046483572074366079

/-! ## A364718.P5600919647352602098

`∩[A074827(n+1)-1, A074827(n+1)]`
-/

namespace A364718.P5600919647352602098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074827 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364718.P5600919647352602098

/-! ## A364718.P12190662076085149019

`A023443(A188598(n+1))`
-/

namespace A364718.P12190662076085149019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A188598 (n + 1)).toNat

end

end A364718.P12190662076085149019

/-! ## A364718.P8161164972015432900

`abs(A033999(A065764(n+1))*A188598(n+1)+1)`
-/

namespace A364718.P8161164972015432900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 (A065764 (n + 1)).toNat * A188598 (n + 1) + 1|

end

end A364718.P8161164972015432900

/-!
# A364719: Numbers k such that d(k) > d(k+1) > d(k+2) > d(k+3), where d(n) is the number of divisors of n.

The programs for A364719, there is no canonical definition to state claims against.
-/

/-! ## A364719.P18316689032636596765

`A364718(eq[1, Δ[A364718(n+1)]]+1)`
-/

namespace A364719.P18316689032636596765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A364719.P18316689032636596765

/-! ## A364719.P11619360780679902737

`∩[A188598(n+1)-1, A023443(A188598(n+1)-1)]`
-/

namespace A364719.P11619360780679902737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188598 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A188598 (n + 1) - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364719.P11619360780679902737

/-!
# A364721: Number of ways that n can be expressed as a sum of consecutive integers from 0 up to at most n, where any of the terms in the sum can be negated, and the partial sum from 0 is always between 0 and n inclusive.

The programs for A364721, there is no canonical definition to state claims against.
-/

/-! ## A364721.P16610990051249491792

`A000700(n)-A173861(A017981(2*(n+2)))`
-/

namespace A364721.P16610990051249491792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n - A173861 (A017981 (2 * (n + 2))).toNat

end

end A364721.P16610990051249491792

/-! ## A364721.P4571194516179650443

`A000700(n)-A216278(A342192(3*n+2))`
-/

namespace A364721.P4571194516179650443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n - A216278 (A342192 (3 * n + 2)).toNat

end

end A364721.P4571194516179650443

/-!
# A364722: Numbers k that divide 1 + 2^m + 4^m for some m.

The programs for A364722, there is no canonical definition to state claims against.
-/

/-! ## A364722.P11273026754188892187

`A215800(C(A005117(n+1), A119326(n)))`
-/

namespace A364722.P11273026754188892187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215800 (Nat.choose (A005117 (n + 1)).toNat (A119326 n).toNat)

end

end A364722.P11273026754188892187

/-! ## A364722.P279777319662236247

`A215800(A005117(n+1)%A339228(3*n+2))`
-/

namespace A364722.P279777319662236247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215800 (Int.tmod (A005117 (n + 1)) (A339228 (3 * n + 2))).toNat

end

end A364722.P279777319662236247

/-! ## A364722.P16359231088524281343

`A215800(A005117(n+1)%A128027(n+1))`
-/

namespace A364722.P16359231088524281343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215800 (Int.tmod (A005117 (n + 1)) (A128027 (n + 1))).toNat

end

end A364722.P16359231088524281343

/-! ## A364722.P11370633047051467150

`A215800(A274034(n+1)%A128027(n+1))`
-/

namespace A364722.P11370633047051467150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215800 (Int.tmod (A274034 (n + 1)) (A128027 (n + 1))).toNat

end

end A364722.P11370633047051467150

/-! ## A364722.P13417116090319346415

`record[∑[A153181(n)]]`
-/

namespace A364722.P13417116090319346415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153181 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364722.P13417116090319346415

/-!
# A364723: G.f. A(x) satisfies A(x) = 1 + x*A(x) / (1 - x*A(x)^4).

The programs for A364723, there is no canonical definition to state claims against.
-/

/-! ## A364723.P475912684380251143

`A302983(A067101(n+1))+A000162(n+1)`
-/

namespace A364723.P475912684380251143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302983 (A067101 (n + 1)).toNat + A000162 (n + 1)

end

end A364723.P475912684380251143

/-! ## A364723.P14931919479220551481

`A096909(a(n-1)²)` with `a(0)=1, a(1)=1`
-/

namespace A364723.P14931919479220551481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A096909 (a (n - 1) ^ 2).toNat

end

end A364723.P14931919479220551481

/-!
# A364726: Admirable numbers with more divisors than any smaller admirable number.

The programs for A364726, there is no canonical definition to state claims against.
-/

/-! ## A364726.P2354764555956821343

`filter[A109745(n+1), A359590(#)]`
-/

namespace A364726.P2354764555956821343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A364726.P2354764555956821343

/-! ## A364726.P5509381440784307574

`A109745(round(4^(n/3)))%A109745(3*n+4)`
-/

namespace A364726.P5509381440784307574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109745 (SequenceMachineLib.roundAway ((4 : ℝ) ^ ((n : ℚ) / 3 : ℝ))).toNat) (A109745 (3 * n + 4))

end

end A364726.P5509381440784307574

/-!
# A364728: Numbers that are not the sum of admirable numbers (not necessarily distinct).

The programs for A364728, there is no canonical definition to state claims against.
-/

/-! ## A364728.P11052965223662199360

`∪[A002024(A244486(2*n+5)), A053460(n+1)]`
-/

namespace A364728.P11052965223662199360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A244486 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A364728.P11052965223662199360

/-! ## A364728.P10432457938484867893

`A053460(n+1)-A236677(A196904(n+1))`
-/

namespace A364728.P10432457938484867893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053460 (n + 1) - A236677 (A196904 (n + 1)).toNat

end

end A364728.P10432457938484867893

/-!
# A364729: Complement of A364443.

The programs for A364729, there is no canonical definition to state claims against.
-/

/-! ## A364729.P5925164056890944911

`eq[0, A364730(n)]`
-/

namespace A364729.P5925164056890944911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364730 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A364729.P5925164056890944911

/-! ## A364729.P13918370653463369812

`lt[A364731(n), 0]`
-/

namespace A364729.P13918370653463369812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364731 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A364729.P13918370653463369812

/-! ## A364729.P4053125585778763284

`lt[A364732(n), 0]`
-/

namespace A364729.P4053125585778763284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364732 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A364729.P4053125585778763284

/-! ## A364729.P13640507125322818142

`eq[A077594(n), A364731(n)]`
-/

namespace A364729.P13640507125322818142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364731 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A364729.P13640507125322818142

/-! ## A364729.P4138477534563924497

`lt[A115067(A364730(n)+1), 1]`
-/

namespace A364729.P4138477534563924497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115067 (A364730 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A364729.P4138477534563924497

/-!
# A364730: a(n) is the number of occurrences of n in A364443.

The programs for A364730, there is no canonical definition to state claims against.
-/

/-! ## A364730.P2658236295787490776

`A331581(A329029(n)+A020639(n+4))`
-/

namespace A364730.P2658236295787490776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331581 (A329029 n + A020639 (n + 4)).toNat

end

end A364730.P2658236295787490776

/-!
# A364731: a(n) is the index of the first occurrence of n in A364443, or -1 if n doesn't occur.

The programs for A364731, there is no canonical definition to state claims against.
-/

/-! ## A364731.P6940023773165179738

`fo[A364443(n)]`
-/

namespace A364731.P6940023773165179738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A364731.P6940023773165179738

/-!
# A364734: G.f. A(x) satisfies A(x) = 1 + x*A(x) / (1 - x*A(x)^5).

The programs for A364734, there is no canonical definition to state claims against.
-/

/-! ## A364734.P13739978914084236960

`∑{#}[A378733(n), #%2]`
-/

namespace A364734.P13739978914084236960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378733 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, k % 2

end

end A364734.P13739978914084236960

/-! ## A364734.P914750312776829758

`A134679(2*(n+1)*a(n-1)+1)` with `a(0)=1`
-/

namespace A364734.P914750312776829758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A134679 (2 * ((n + 1 : ℤ) * a (n - 1)) + 1).toNat

end

end A364734.P914750312776829758

/-!
# A364739: G.f. A(x) satisfies A(x) = 1 + x*A(x)^2 / (1 - x*A(x)^4).

The programs for A364739, there is no canonical definition to state claims against.
-/

/-! ## A364739.P18350829455055665220

`A248227(A108447(n))`
-/

namespace A364739.P18350829455055665220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A108447 n).toNat

end

end A364739.P18350829455055665220

/-! ## A364739.P16428825154166279004

`A285881(A372369(n)+1)`
-/

namespace A364739.P16428825154166279004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285881 (A372369 n + 1).toNat

end

end A364739.P16428825154166279004

/-!
# A364740: G.f. A(x) satisfies A(x) = 1 + x*A(x)^2 / (1 - x*A(x)^5).

The programs for A364740, there is no canonical definition to state claims against.
-/

/-! ## A364740.P9203876026503865248

`or(1, A235645(A124553(n)))`
-/

namespace A364740.P9203876026503865248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A235645 (A124553 n).toNat)

end

end A364740.P9203876026503865248

/-! ## A364740.P16242588131952836337

`A019529(A099483(n))-n`
-/

namespace A364740.P16242588131952836337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019529 (A099483 n).toNat - (n : ℤ)

end

end A364740.P16242588131952836337

/-!
# A364741: Number of edge covers in the n-double cone graph.

The programs for A364741, the canonical program `A364741.P5010881994647292754` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364741 has offset 0).

The definition of A364741 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364741.P5859147652053190026

`ogf((8x+56x^2-87x^3+35x^4-10x^5)/(1-13x-2x^2+75x^3+17x^4-38x^5+8x^6))`
-/

namespace A364741.P5859147652053190026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, 56, -87, 35, -10] [1, -13, -2, 75, 17, -38, 8] n

end

end A364741.P5859147652053190026

namespace A364741

/-- `ogf((8x+56x^2-87x^3+35x^4-10x^5)/(1-13x-2x^2+75x^3+17x^4-38x^5+8x^6))` -/
def P5859147652053190026.Spec : Prop :=
  ∀ n, P5859147652053190026.a n = A364741 n

end A364741

/-! ## A364741.P5010881994647292754

`A206776(n)²-A000032(n)²`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A364741

/-- `A206776(n)²-A000032(n)²` -/
def P5010881994647292754.Spec : Prop :=
  ∀ n, P5010881994647292754.a n = A364741 n

theorem P5010881994647292754.correct : P5010881994647292754.Spec := by
  intro n
  simp only [A364741]

end A364741

/-! ## A364741.P16335205387818869710

`A206776(n)²-A001254(n)`
-/

namespace A364741.P16335205387818869710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206776 n ^ 2 - A001254 n

end

end A364741.P16335205387818869710

namespace A364741

/-- `A206776(n)²-A001254(n)` -/
def P16335205387818869710.Spec : Prop :=
  ∀ n, P16335205387818869710.a n = A364741 n

end A364741

/-! ## A364741.P13975119262524982634

`(A206776(n)+A000032(n))*A297047(n+1)`
-/

namespace A364741.P13975119262524982634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A206776 n + A000032 n) * A297047 (n + 1)

end

end A364741.P13975119262524982634

namespace A364741

/-- `(A206776(n)+A000032(n))*A297047(n+1)` -/
def P13975119262524982634.Spec : Prop :=
  ∀ n, P13975119262524982634.a n = A364741 n

end A364741

/-!
# A364742: G.f. A(x) satisfies A(x) = 1 / (1 - x*(1 + x*A(x))^3).

The programs for A364742, the canonical program `A364742.P7347452918824073699` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364742 has offset 0).

The definition of A364742 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364742.P7347452918824073699

`1/(n+1)*∑{#}[n, C(n+1, #)*C(3*#, n-#)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A364742

/-- `1/(n+1)*∑{#}[n, C(n+1, #)*C(3*#, n-#)]` -/
def P7347452918824073699.Spec : Prop :=
  ∀ n, P7347452918824073699.a n = (A364742 n : ℚ)

end A364742

/-! ## A364742.P13313348858571388308

`A068639(A361736(n+3)+A023441(3*n))`
-/

namespace A364742.P13313348858571388308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068639 (A361736 (n + 3) + A023441 (3 * n)).toNat

end

end A364742.P13313348858571388308

namespace A364742

/-- `A068639(A361736(n+3)+A023441(3*n))` -/
def P13313348858571388308.Spec : Prop :=
  ∀ n, P13313348858571388308.a n = A364742 n

end A364742

/-! ## A364742.P4842006206499979933

`A002266(A320199(3*n+1)+A157725(3*n+1))`
-/

namespace A364742.P4842006206499979933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A320199 (3 * n + 1) + A157725 (3 * n + 1)).toNat

end

end A364742.P4842006206499979933

namespace A364742

/-- `A002266(A320199(3*n+1)+A157725(3*n+1))` -/
def P4842006206499979933.Spec : Prop :=
  ∀ n, P4842006206499979933.a n = A364742 n

end A364742

/-!
# A364743: G.f. A(x) satisfies A(x) = 1 / (1 - x*(1 + x*A(x))^4).

The programs for A364743, the canonical program `A364743.P1077597478257450080` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364743 has offset 0).

The definition of A364743 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364743.P1077597478257450080

`1/(n+1)*∑{#}[n, C(n+1, #)*C(4*#, n-#)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A364743

/-- `1/(n+1)*∑{#}[n, C(n+1, #)*C(4*#, n-#)]` -/
def P1077597478257450080.Spec : Prop :=
  ∀ n, P1077597478257450080.a n = (A364743 n : ℚ)

end A364743

/-! ## A364743.P5515103862954613099

`A370642(A370642(n))+A275027(n)`
-/

namespace A364743.P5515103862954613099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370642 (A370642 n).toNat + A275027 n

end

end A364743.P5515103862954613099

namespace A364743

/-- `A370642(A370642(n))+A275027(n)` -/
def P5515103862954613099.Spec : Prop :=
  ∀ n, P5515103862954613099.a n = A364743 n

end A364743

/-!
# A364744: G.f. A(x) satisfies A(x) = 1 / (1 - x*(1 + x*A(x))^5).

The programs for A364744, the canonical program `A364744.P11387898251156541794` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364744 has offset 0).

The definition of A364744 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364744.P11387898251156541794

`1/(n+1)*∑{#}[n, C(n+1, #)*C(5*#, n-#)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A364744

/-- `1/(n+1)*∑{#}[n, C(n+1, #)*C(5*#, n-#)]` -/
def P11387898251156541794.Spec : Prop :=
  ∀ n, P11387898251156541794.a n = (A364744 n : ℚ)

end A364744

/-! ## A364744.P11792870834584116151

`A105512((n+6)*A214372(n+1))`
-/

namespace A364744.P11792870834584116151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105512 ((n + 6 : ℤ) * A214372 (n + 1)).toNat

end

end A364744.P11792870834584116151

namespace A364744

/-- `A105512((n+6)*A214372(n+1))` -/
def P11792870834584116151.Spec : Prop :=
  ∀ n, P11792870834584116151.a n = A364744 n

end A364744

/-!
# A364745: Number of edge covers in the n-Lucas cube graph.

The programs for A364745, there is no canonical definition to state claims against.
-/

/-! ## A364745.P1800521139700003241

`A175298(A386513(n))-A356651(n)`
-/

namespace A364745.P1800521139700003241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 (A386513 n).toNat - A356651 n

end

end A364745.P1800521139700003241

/-!
# A364746: Irregular triangle read by rows T(n,k), n >= 1, 1 <= k <= A002378(n), which is mentioned in the conjecture of A364639 (see Comments lines for definition).

The programs for A364746, there is no canonical definition to state claims against.
-/

/-! ## A364746.P14123380124108796566

`A391503(A002843(n)-A391503(n))`
-/

namespace A364746.P14123380124108796566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391503 (A002843 n - A391503 n).toNat

end

end A364746.P14123380124108796566

/-! ## A364746.P9255830878682530283

`Δ[A001221(∑[A233256(n+1)])]`
-/

namespace A364746.P9255830878682530283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233256 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A364746.P9255830878682530283

/-! ## A364746.P17452803512005707066

`A056594(A325545(n+3)+A252755(n))`
-/

namespace A364746.P17452803512005707066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A325545 (n + 3) + A252755 n).toNat

end

end A364746.P17452803512005707066

/-! ## A364746.P14881133671940992996

`A328958(A285595(n+1)+A099119(n+1))`
-/

namespace A364746.P14881133671940992996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328958 (A285595 (n + 1) + A099119 (n + 1)).toNat

end

end A364746.P14881133671940992996

/-! ## A364746.P2816891426578513376

`A008683(A238831(n+3)+A001694(n+1))`
-/

namespace A364746.P2816891426578513376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A238831 (n + 3) + A001694 (n + 1)).toNat

end

end A364746.P2816891426578513376

/-!
# A364747: G.f. A(x) satisfies A(x) = 1 + x*A(x)^4 / (1 - x*A(x)).

The programs for A364747, there is no canonical definition to state claims against.
-/

/-! ## A364747.P10955142357654945583

`A336706(A052905(n+2))`
-/

namespace A364747.P10955142357654945583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336706 (A052905 (n + 2)).toNat

end

end A364747.P10955142357654945583

/-! ## A364747.P6812782127031607860

`A336706(eq[4, A025581(n)])`
-/

namespace A364747.P6812782127031607860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336706 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A364747.P6812782127031607860

/-! ## A364747.P13033144797803053562

`A336706(A000217(n+4)+n)`
-/

namespace A364747.P13033144797803053562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336706 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A364747.P13033144797803053562

/-! ## A364747.P13265341902993791532

`A336706(lt[A075500(n+5), A000120(n)])`
-/

namespace A364747.P13265341902993791532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075500 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336706 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A364747.P13265341902993791532

/-!
# A364748: G.f. A(x) satisfies A(x) = 1 + x*A(x)^5 / (1 - x*A(x)).

The programs for A364748, there is no canonical definition to state claims against.
-/

/-! ## A364748.P8694624147341476031

`A336706(A055999(n+3))`
-/

namespace A364748.P8694624147341476031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336706 (A055999 (n + 3)).toNat

end

end A364748.P8694624147341476031

/-! ## A364748.P2570252748583746014

`A336706(A056119(n)+15)`
-/

namespace A364748.P2570252748583746014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336706 (A056119 n + 15).toNat

end

end A364748.P2570252748583746014

/-! ## A364748.P16133556233669473356

`A336706(eq[5, A025581(n)])`
-/

namespace A364748.P16133556233669473356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336706 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A364748.P16133556233669473356

/-! ## A364748.P8804381282199944607

`A336706(A000217(n+5)+n)`
-/

namespace A364748.P8804381282199944607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336706 (A000217 (n + 5) + (n : ℤ)).toNat

end

end A364748.P8804381282199944607

/-!
# A364749: a(1) = 1. Thereafter, if a(n-1) is a novel term a(n) = a(a(n-1)), otherwise a(n) is the number of times a(n-1) has been repeated.

The programs for A364749, there is no canonical definition to state claims against.
-/

/-! ## A364749.P1460270381963203880

`A364911(lt[A364912(n), A364925(n+1)])`
-/

namespace A364749.P1460270381963203880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364912 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364911 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A364749.P1460270381963203880

/-! ## A364749.P9320768517533146494

`A211098(A137172(n+2))`
-/

namespace A364749.P9320768517533146494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211098 (A137172 (n + 2)).toNat

end

end A364749.P9320768517533146494

/-! ## A364749.P6154282996101724306

`∏{e}[ceil(3^(n-1)), A056538(#)]`
-/

namespace A364749.P6154282996101724306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A056538 (Nat.factorization (f1 n).natAbs p)

end

end A364749.P6154282996101724306

/-! ## A364749.P13274800036898236746

`A056538(abs(ceil((1-n)²/A035117(n+1)-n)))`
-/

namespace A364749.P13274800036898236746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056538 |⌈((1 - (n : ℤ)) ^ 2 : ℚ) / (A035117 (n + 1) : ℚ) - (n : ℚ)⌉|.toNat

end

end A364749.P13274800036898236746

/-! ## A364749.P5929534514127535561

`gcd(A000720(n+1), A378363(A025487(n+1)))`
-/

namespace A364749.P5929534514127535561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000720 (n + 1)) (A378363 (A025487 (n + 1)).toNat)

end

end A364749.P5929534514127535561

/-!
# A364752: Number of subsets of {1..n} containing n and all first differences.

The programs for A364752, there is no canonical definition to state claims against.
-/

/-! ## A364752.P1024993342379387274

`A011782(n)-A364753(n)`
-/

namespace A364752.P1024993342379387274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A364753 n

end

end A364752.P1024993342379387274

/-! ## A364752.P3724696329969849469

`A000010(A000079(n))-A364753(n)`
-/

namespace A364752.P3724696329969849469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000079 n).toNat - A364753 n

end

end A364752.P3724696329969849469

/-!
# A364753: Number of subsets of {1..n} containing n but not containing all first differences.

The programs for A364753, there is no canonical definition to state claims against.
-/

/-! ## A364753.P717613184828652473

`ceil(2^(n-1))-A364752(n)`
-/

namespace A364753.P717613184828652473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A364752 n

end

end A364753.P717613184828652473

/-! ## A364753.P5206975895954853184

`Δ[A364672(abs(1-n))]`
-/

namespace A364753.P5206975895954853184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364672 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A364753.P5206975895954853184

/-! ## A364753.P11579882044955974031

`A364672(n)-A364672(n-A057427(n))`
-/

namespace A364753.P11579882044955974031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364672 n - A364672 ((n : ℤ) - A057427 n).toNat

end

end A364753.P11579882044955974031

/-! ## A364753.P4163518080216361691

`A364672(n)-A364672(A140106(2*n+1))`
-/

namespace A364753.P4163518080216361691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364672 n - A364672 (A140106 (2 * n + 1)).toNat

end

end A364753.P4163518080216361691

/-! ## A364753.P16719526212068695222

`A137564(A011782(n)-A364752(n))`
-/

namespace A364753.P16719526212068695222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A011782 n - A364752 n).toNat

end

end A364753.P16719526212068695222

/-!
# A364754: Smallest nonnegative integer not expressible by the addition and subtraction of fewer than n Lucas numbers.

The programs for A364754, the canonical program `A364754.P1284538439277433597` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364754 has offset 0).

The definition of A364754 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364754.P1284538439277433597

`ogf((x+x^3)/(1-5x+3x^2+x^3))`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A364754

/-- `ogf((x+x^3)/(1-5x+3x^2+x^3))` -/
def P1284538439277433597.Spec : Prop :=
  ∀ n, P1284538439277433597.a n = A364754 n

theorem P1284538439277433597.correct : P1284538439277433597.Spec := by
  intro n
  simp only [A364754]

end A364754

/-! ## A364754.P17033573912624433392

`4*a(n-1)+a(n-2)+2` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A364754.P17033573912624433392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 5] fun n a =>
  4 * a (n - 1) + (a (n - 2) + 2)

end

end A364754.P17033573912624433392

namespace A364754

/-- `4*a(n-1)+a(n-2)+2` -/
def P17033573912624433392.Spec : Prop :=
  ∀ n, (P17033573912624433392.a n : ℤ) = A364754 n

end A364754

/-! ## A364754.P1007654247725938366

`A155179(n)-A232970(n)`
-/

namespace A364754.P1007654247725938366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155179 n - A232970 n

end

end A364754.P1007654247725938366

namespace A364754

/-- `A155179(n)-A232970(n)` -/
def P1007654247725938366.Spec : Prop :=
  ∀ n, P1007654247725938366.a n = A364754 n

end A364754

/-! ## A364754.P13501673687457995093

`A077262(n)%A001077(n)`
-/

namespace A364754.P13501673687457995093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077262 n) (A001077 n)

end

end A364754.P13501673687457995093

namespace A364754

/-- `A077262(n)%A001077(n)` -/
def P13501673687457995093.Spec : Prop :=
  ∀ n, P13501673687457995093.a n = A364754 n

end A364754

/-! ## A364754.P15274793670896241893

`A254626(n+1)%A001077(n)`
-/

namespace A364754.P15274793670896241893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254626 (n + 1)) (A001077 n)

end

end A364754.P15274793670896241893

namespace A364754

/-- `A254626(n+1)%A001077(n)` -/
def P15274793670896241893.Spec : Prop :=
  ∀ n, P15274793670896241893.a n = A364754 n

end A364754

/-! ## A364754.P4163232325038717068

`A048878(n)%A024551(n)`
-/

namespace A364754.P4163232325038717068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048878 n) (A024551 n)

end

end A364754.P4163232325038717068

namespace A364754

/-- `A048878(n)%A024551(n)` -/
def P4163232325038717068.Spec : Prop :=
  ∀ n, P4163232325038717068.a n = A364754 n

end A364754

/-!
# A364755: Number of subsets of {1..n} containing n but not containing the sum of any two distinct elements.

The programs for A364755, there is no canonical definition to state claims against.
-/

/-! ## A364755.P12594991246010783138

`A131577(n)-A364756(n)`
-/

namespace A364755.P12594991246010783138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n - A364756 n

end

end A364755.P12594991246010783138

/-! ## A364755.P1286717844706440571

`record[Δ[A085489(A004526(n))]]`
-/

namespace A364755.P1286717844706440571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085489 (A004526 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364755.P1286717844706440571

/-! ## A364755.P10397656553129955048

`record[Δ[A085489(A057366(n))]]`
-/

namespace A364755.P10397656553129955048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085489 (A057366 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364755.P10397656553129955048

/-! ## A364755.P9172878609285688703

`record[A048672(n+1)]-A364756(n)`
-/

namespace A364755.P9172878609285688703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A364756 n

end

end A364755.P9172878609285688703

/-! ## A364755.P14492042752002310675

`Δ[A085489(A004526(abs(1-2*n)))]`
-/

namespace A364755.P14492042752002310675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085489 (A004526 |1 - (2 * n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A364755.P14492042752002310675

/-! ## A364755.P1754234904534323094

`Δ[A000079(A028310(n)-1)]-A364756(n)`
-/

namespace A364755.P1754234904534323094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A364756 n

end

end A364755.P1754234904534323094

/-!
# A364756: Number of subsets of {1..n} containing n and some element equal to the sum of two distinct others.

The programs for A364756, there is no canonical definition to state claims against.
-/

/-! ## A364756.P11609731762516127156

`Δ[A088809(abs(1-n))]`
-/

namespace A364756.P11609731762516127156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088809 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A364756.P11609731762516127156

/-! ## A364756.P5153120726887663262

`A131577(n)-A364755(n)`
-/

namespace A364756.P5153120726887663262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n - A364755 n

end

end A364756.P5153120726887663262

/-! ## A364756.P109412044920027278

`Δ[A011782(n)]-A364755(n)`
-/

namespace A364756.P109412044920027278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A364755 n

end

end A364756.P109412044920027278

/-! ## A364756.P9431541132383364263

`floor(A000079(n)/2)-A364755(n)`
-/

namespace A364756.P9431541132383364263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000079 n : ℚ) / 2⌋ - A364755 n

end

end A364756.P9431541132383364263

/-! ## A364756.P17901671215678454755

`A088809(n)-A088809(A004273(n)-n)`
-/

namespace A364756.P17901671215678454755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088809 n - A088809 (A004273 n - (n : ℤ)).toNat

end

end A364756.P17901671215678454755

/-!
# A364758: G.f. A(x) satisfies A(x) = 1 + x*A(x)^4 / (1 + x*A(x)).

The programs for A364758, there is no canonical definition to state claims against.
-/

/-! ## A364758.P15559031667039344907

`A336708(eq[4, A025581(n)])`
-/

namespace A364758.P15559031667039344907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336708 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A364758.P15559031667039344907

/-! ## A364758.P7217522395119428511

`A336708(eq[5, A004736(n+1)])`
-/

namespace A364758.P7217522395119428511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336708 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A364758.P7217522395119428511

/-! ## A364758.P4630703389219731148

`A336708(A000217(n+4)+n)`
-/

namespace A364758.P4630703389219731148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336708 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A364758.P4630703389219731148

/-! ## A364758.P4046604557189139316

`A336708(A000096(n+3)+n+1)`
-/

namespace A364758.P4046604557189139316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336708 (A000096 (n + 3) + (n + 1 : ℤ)).toNat

end

end A364758.P4046604557189139316

/-!
# A364759: G.f. satisfies A(x) = 1 + x*A(x)^5 / (1 + x*A(x)).

The programs for A364759, there is no canonical definition to state claims against.
-/

/-! ## A364759.P8832432001340727623

`A336708(eq[6, T(n-1,k)+1])` with `a(0)=0`
-/

namespace A364759.P8832432001340727623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  SequenceMachineLib.triUp f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336708 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A364759.P8832432001340727623

/-! ## A364759.P4686761735877455483

`A336708(eq[5, A025581(n)])`
-/

namespace A364759.P4686761735877455483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336708 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A364759.P4686761735877455483

/-! ## A364759.P13346712571225940083

`A336708(A052905(n+3)-1)`
-/

namespace A364759.P13346712571225940083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336708 (A052905 (n + 3) - 1).toNat

end

end A364759.P13346712571225940083

/-! ## A364759.P14841047713874766809

`A336708(eq[6, A004736(n+1)])`
-/

namespace A364759.P14841047713874766809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336708 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A364759.P14841047713874766809

/-! ## A364759.P16305237227773718636

`A336708(eq[6, A134231(n+1)])`
-/

namespace A364759.P16305237227773718636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336708 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A364759.P16305237227773718636

/-!
# A364760: G.f. satisfies A(x) = 1 / (1 + x*(1 + x*A(x))^2).

The programs for A364760, the canonical program `A364760.P15298739783480895786` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364760 has offset 0).

The definition of A364760 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364760.P15298739783480895786

`1/(n+1)*∑{#}[n, (-1)^#*C(n+1, #)*C(2*#, n-#)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A364760

/-- `1/(n+1)*∑{#}[n, (-1)^#*C(n+1, #)*C(2*#, n-#)]` -/
def P15298739783480895786.Spec : Prop :=
  ∀ n, P15298739783480895786.a n = (A364760 n : ℚ)

end A364760

/-!
# A364761: G.f. satisfies A(x) = 1 / (1 + x*(1 + x*A(x))^3).

The programs for A364761, the canonical program `A364761.P2241736631695764624` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364761 has offset 0).

The definition of A364761 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364761.P2241736631695764624

`1/(n+1)*∑{#}[n, (-1)^#*C(n+1, #)*C(3*#, n-#)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A364761

/-- `1/(n+1)*∑{#}[n, (-1)^#*C(n+1, #)*C(3*#, n-#)]` -/
def P2241736631695764624.Spec : Prop :=
  ∀ n, P2241736631695764624.a n = (A364761 n : ℚ)

end A364761

/-!
# A364762: G.f. satisfies A(x) = 1 / (1 + x*(1 + x*A(x))^4).

The programs for A364762, the canonical program `A364762.P12509295741654963777` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364762 has offset 0).

The definition of A364762 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364762.P12509295741654963777

`1/(n+1)*∑{#}[n, (-1)^#*C(n+1, #)*C(4*#, n-#)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A364762

/-- `1/(n+1)*∑{#}[n, (-1)^#*C(n+1, #)*C(4*#, n-#)]` -/
def P12509295741654963777.Spec : Prop :=
  ∀ n, P12509295741654963777.a n = (A364762 n : ℚ)

end A364762

/-!
# A364763: G.f. satisfies A(x) = 1 / (1 + x*(1 + x*A(x))^5).

The programs for A364763, the canonical program `A364763.P18103309512961214513` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364763 has offset 0).

The definition of A364763 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364763.P18103309512961214513

`1/(n+1)*∑{#}[n, (-1)^#*C(n+1, #)*C(5*#, n-#)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A364763

/-- `1/(n+1)*∑{#}[n, (-1)^#*C(n+1, #)*C(5*#, n-#)]` -/
def P18103309512961214513.Spec : Prop :=
  ∀ n, P18103309512961214513.a n = (A364763 n : ℚ)

end A364763

/-!
# A364765: G.f. A(x) satisfies A(x) = 1 + x*A(x)^4 / (1 - x*A(x)^5).

The programs for A364765, there is no canonical definition to state claims against.
-/

/-! ## A364765.P12654332644039909626

`A140578(a(n-1))+3` with `a(0)=1, a(1)=1`
-/

namespace A364765.P12654332644039909626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A140578 (a (n - 1)).toNat + 3

end

end A364765.P12654332644039909626

/-!
# A364766: Products k of 4 distinct primes (or tetraprimes) such that none of k-2, k-1, k+1 and k+2 is squarefree.

The programs for A364766, there is no canonical definition to state claims against.
-/

/-! ## A364766.P6903741078202906109

`filter[A268331(n+1), A101637(#)]`
-/

namespace A364766.P6903741078202906109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A364766.P6903741078202906109

/-! ## A364766.P8620582031457592141

`filter[A364141(n+1), A217586(#)]`
-/

namespace A364766.P8620582031457592141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A217586 (f1 j).toNat = 1) n)

end

end A364766.P8620582031457592141

/-! ## A364766.P3343046020238980975

`filter[A364141(n+1), A353555(#)]`
-/

namespace A364766.P3343046020238980975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353555 (f1 j).toNat = 1) n)

end

end A364766.P3343046020238980975

/-! ## A364766.P7130253534778170674

`filter[A364141(n+1), A353672(#)]`
-/

namespace A364766.P7130253534778170674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353672 (f1 j).toNat = 1) n)

end

end A364766.P7130253534778170674

/-! ## A364766.P2394984469159045422

`filter[A364141(n+1), A354034(#)]`
-/

namespace A364766.P2394984469159045422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A364766.P2394984469159045422

/-!
# A364767: The number of divisors of n that are practical numbers (A005153).

The programs for A364767, there is no canonical definition to state claims against.
-/

/-! ## A364767.P1595445367316229871

`∑{d}[n+1, A322860(#)]`
-/

namespace A364767.P1595445367316229871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A322860 d

end

end A364767.P1595445367316229871

/-! ## A364767.P12355364269548230801

`A341620(n+1)+A124768(A038712(n+1))`
-/

namespace A364767.P12355364269548230801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1) + A124768 (A038712 (n + 1)).toNat

end

end A364767.P12355364269548230801

/-! ## A364767.P9470968071731294754

`A341620(n+1)+A001511(A005941(n+1))`
-/

namespace A364767.P9470968071731294754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1) + A001511 (A005941 (n + 1)).toNat

end

end A364767.P9470968071731294754

/-! ## A364767.P11014274325342542178

`A356224(n+1)+A185274(A377784(3*n+5))`
-/

namespace A364767.P11014274325342542178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356224 (n + 1) + A185274 (A377784 (3 * n + 5)).toNat

end

end A364767.P11014274325342542178

/-! ## A364767.P2374008400562390072

`A356224(n+1)+A304572(A081720(n+1))`
-/

namespace A364767.P2374008400562390072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356224 (n + 1) + A304572 (A081720 (n + 1)).toNat

end

end A364767.P2374008400562390072

/-!
# A364768: The smallest number k that has exactly n of its divisors in A005153.

The programs for A364768, there is no canonical definition to state claims against.
-/

/-! ## A364768.P15468725332262462690

`fo[A364767(n+1)-1]+1`
-/

namespace A364768.P15468725332262462690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364767 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A364768.P15468725332262462690

/-! ## A364768.P12837946869932826131

`A187941(n)%A281918(A060766(2*(n+2)))`
-/

namespace A364768.P12837946869932826131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187941 n) (A281918 (A060766 (2 * (n + 2))).toNat)

end

end A364768.P12837946869932826131

/-!
# A364769: Numbers k for which k and the arithmetic derivative k' (A003415) are practical numbers (A005153).

The programs for A364769, there is no canonical definition to state claims against.
-/

/-! ## A364769.P8607398567394453612

`record[A034444(3*(n+1))*A356233(n+1)]`
-/

namespace A364769.P8607398567394453612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (3 * (n + 1)) * A356233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364769.P8607398567394453612

/-! ## A364769.P15738861501436056772

`record[2*A233781(A328617(n+1))]`
-/

namespace A364769.P15738861501436056772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233781 (A328617 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364769.P15738861501436056772

/-! ## A364769.P18210719442697017341

`record[2*A233781(A351831(n+2))]`
-/

namespace A364769.P18210719442697017341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233781 (A351831 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364769.P18210719442697017341

/-! ## A364769.P8193009155433676168

`A295235(3*(n+1))-A000007(A218667(n))`
-/

namespace A364769.P8193009155433676168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295235 (3 * (n + 1)) - A000007 (A218667 n).toNat

end

end A364769.P8193009155433676168

/-! ## A364769.P9805383077395268085

`A295235(3*n+3)-A063524(A342290(n))`
-/

namespace A364769.P9805383077395268085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295235 (3 * n + 3) - A063524 (A342290 n).toNat

end

end A364769.P9805383077395268085

/-!
# A364771: Order of the symplectic group of 4 X 4 matrices over Z_n.

The programs for A364771, there is no canonical definition to state claims against.
-/

/-! ## A364771.P9480270241221263719

`A294705(n+1)/((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A364771.P9480270241221263719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294705 (n + 1) : ℚ) / ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))

end

end A364771.P9480270241221263719

/-! ## A364771.P5337055534473234225

`A294705(n+1)/Δ[A002088(n)]`
-/

namespace A364771.P5337055534473234225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294705 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A364771.P5337055534473234225

/-! ## A364771.P13045383684120163549

`A011786(n+1)/A115224(n+1)`
-/

namespace A364771.P13045383684120163549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011786 (n + 1) : ℚ) / (A115224 (n + 1) : ℚ)

end

end A364771.P13045383684120163549

/-! ## A364771.P9677058800966798614

`A294705(n+1)/A000010(n+1)`
-/

namespace A364771.P9677058800966798614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294705 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A364771.P9677058800966798614

/-! ## A364771.P6878694683857584649

`A305186(n+1)/A115226(n+1)`
-/

namespace A364771.P6878694683857584649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305186 (n + 1) : ℚ) / (A115226 (n + 1) : ℚ)

end

end A364771.P6878694683857584649

/-! ## A364771.P17747291648259746289

`A000056(n+1)/A011785(n+1)*A011786(n+1)`
-/

namespace A364771.P17747291648259746289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) : ℚ) / (A011785 (n + 1) : ℚ) * (A011786 (n + 1) : ℚ)

end

end A364771.P17747291648259746289

/-! ## A364771.P12572119103590749665

`A000252(n+1)*A011786(n+1)/A064767(n+1)`
-/

namespace A364771.P12572119103590749665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) * A011786 (n + 1) : ℚ) / (A064767 (n + 1) : ℚ)

end

end A364771.P12572119103590749665

/-! ## A364771.P16547500373380183082

`A000056(n+1)/A000252(n+1)*A294705(n+1)`
-/

namespace A364771.P16547500373380183082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) : ℚ) / (A000252 (n + 1) : ℚ) * (A294705 (n + 1) : ℚ)

end

end A364771.P16547500373380183082

/-! ## A364771.P1855304588139618440

`A000056(n+1)/A064767(n+1)*A305186(n+1)`
-/

namespace A364771.P1855304588139618440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) : ℚ) / (A064767 (n + 1) : ℚ) * (A305186 (n + 1) : ℚ)

end

end A364771.P1855304588139618440

/-! ## A364771.P1438411216604810484

`A011786(n+1)/A305186(n+1)*A294705(n+1)`
-/

namespace A364771.P1438411216604810484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011786 (n + 1) : ℚ) / (A305186 (n + 1) : ℚ) * (A294705 (n + 1) : ℚ)

end

end A364771.P1438411216604810484

/-!
# A364772: Square array A(n, k), n, k > 0, read and filled in the greedy way by downwards antidiagonals with distinct positive integers such that for any v > 0, the value 2*v appears in the same row as the value v, and the value 2*v + 1 appears in the same column as the value v.

The programs for A364772, there is no canonical definition to state claims against.
-/

/-! ## A364772.P4454104425131545168

`fo[A364775(n+1)-1]+1`
-/

namespace A364772.P4454104425131545168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364775 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A364772.P4454104425131545168

/-!
# A364773: a(n) is the periodic part on the n-th diagonal from the right of rule-30 1-D cellular automaton, when started from a single ON cell.

The programs for A364773, there is no canonical definition to state claims against.
-/

/-! ## A364773.P11709710260063096647

`A007088(A364774(n+1))`
-/

namespace A364773.P11709710260063096647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A364774 (n + 1)).toNat

end

end A364773.P11709710260063096647

/-! ## A364773.P6905820061853692407

`A185544(2*A364774(n+1))`
-/

namespace A364773.P6905820061853692407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A364774 (n + 1)).toNat

end

end A364773.P6905820061853692407

/-!
# A364774: a(n) is the periodic part (converted to base 10) on the n-th diagonal from the right of rule-30 1-D cellular automaton, when started from a single ON cell.

The programs for A364774, there is no canonical definition to state claims against.
-/

/-! ## A364774.P9169440624684339849

`A274879(A014085(or(2, ∑[n^3])-2))`
-/

namespace A364774.P9169440624684339849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274879 (A014085 (Nat.lor 2 (∑ j ∈ Finset.range (n + 1), f1 j) - 2)).toNat

end

end A364774.P9169440624684339849

/-! ## A364774.P16526565001517556334

`A060439(A003229(n))*A287909(n)`
-/

namespace A364774.P16526565001517556334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060439 (A003229 n).toNat * A287909 n

end

end A364774.P16526565001517556334

/-!
# A364775: Inverse permutation to A364772.

The programs for A364775, there is no canonical definition to state claims against.
-/

/-! ## A364775.P15480618216709344140

`fo[A364772(n+1)-1]+1`
-/

namespace A364775.P15480618216709344140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364772 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A364775.P15480618216709344140

/-!
# A364778: Products of two distinct strong primes.

The programs for A364778, there is no canonical definition to state claims against.
-/

/-! ## A364778.P7384103142913985688

`filter[A225493(n+1), A064911(#)]`
-/

namespace A364778.P7384103142913985688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A364778.P7384103142913985688

/-! ## A364778.P2418147823171654163

`filter[A225493(1+n), A353480(#)]`
-/

namespace A364778.P2418147823171654163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225493 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A364778.P2418147823171654163

/-! ## A364778.P12424770022196686684

`filter[A225493(2+n), A065043(#)]`
-/

namespace A364778.P12424770022196686684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225493 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A364778.P12424770022196686684

/-! ## A364778.P8040572740005942486

`filter[A225493(n+2), A353374(#)]`
-/

namespace A364778.P8040572740005942486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225493 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353374 (f1 j).toNat = 1) n)

end

end A364778.P8040572740005942486

/-! ## A364778.P2643830199734483167

`filter[A225493(n+2), A353557(#)]`
-/

namespace A364778.P2643830199734483167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225493 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353557 (f1 j).toNat = 1) n)

end

end A364778.P2643830199734483167

/-! ## A364778.P9276827450129205727

`filter[A225493(n+2), A356163(#)]`
-/

namespace A364778.P9276827450129205727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225493 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A364778.P9276827450129205727

/-! ## A364778.P2008832529232414869

`filter[A225493(n+2), A358680(#)]`
-/

namespace A364778.P2008832529232414869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225493 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A364778.P2008832529232414869

/-! ## A364778.P10195256502725679855

`filter[A225493(n+2), A359170(#)]`
-/

namespace A364778.P10195256502725679855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225493 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359170 (f1 j).toNat = 1) n)

end

end A364778.P10195256502725679855

/-! ## A364778.P10274333429016016374

`filter[A225493(n+2), A359370(#)]`
-/

namespace A364778.P10274333429016016374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225493 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359370 (f1 j).toNat = 1) n)

end

end A364778.P10274333429016016374

/-! ## A364778.P3132671848874773106

`filter[A225493(n+2), A359595(#)]`
-/

namespace A364778.P3132671848874773106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225493 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359595 (f1 j).toNat = 1) n)

end

end A364778.P3132671848874773106

/-!
# A364779: Largest integer with sum of digits n in fractional base 4/3.

The programs for A364779, there is no canonical definition to state claims against.
-/

/-! ## A364779.P1744970708310738191

`lt[A000120(n), A112046(A335145(n+1))]`
-/

namespace A364779.P1744970708310738191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112046 (A335145 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A364779.P1744970708310738191

/-! ## A364779.P7616309153356419832

`record[and(and(n, 3*n), A370382(n))]`
-/

namespace A364779.P7616309153356419832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.land n (3 * n) : ℤ) (A370382 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364779.P7616309153356419832

/-! ## A364779.P17133449066904155243

`lt[and(n, n-2), A129735(n+1)%4]`
-/

namespace A364779.P17133449066904155243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129735 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A364779.P17133449066904155243

/-! ## A364779.P2366846610010173485

`lt[(3-(-1)^n)*a(floor(n/2))+1-(-1)^n, A334033(2*n+5)]` with `a(0)=-1, a(1)=0`
-/

namespace A364779.P2366846610010173485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0] fun n f1 =>
  (3 - (-1) ^ n) * f1 ⌊(n : ℚ) / 2⌋.toNat + (1 - (-1) ^ n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334033 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A364779.P2366846610010173485

/-! ## A364779.P13739873750304403305

`lt[n%2+(3-(-1)^n)*a(floor(n/2))+1-(-1)^n, A365367(2*n+3)]` with `a(0)=-1, a(1)=0`
-/

namespace A364779.P13739873750304403305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0] fun n f1 =>
  ((n % 2 : ℕ) : ℤ) + ((3 - (-1) ^ n) * f1 ⌊(n : ℚ) / 2⌋.toNat + (1 - (-1) ^ n))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365367 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A364779.P13739873750304403305

/-!
# A364782: Order of the general symplectic group of 6 X 6 matrices over Z_n.

The programs for A364782, there is no canonical definition to state claims against.
-/

/-! ## A364782.P16772766094935965811

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A364783(n+1)`
-/

namespace A364782.P16772766094935965811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) * (A364783 (n + 1) : ℚ)

end

end A364782.P16772766094935965811

/-! ## A364782.P17396003720104677877

`A305186(n+1)/A011786(n+1)*A364783(n+1)`
-/

namespace A364782.P17396003720104677877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305186 (n + 1) : ℚ) / (A011786 (n + 1) : ℚ) * (A364783 (n + 1) : ℚ)

end

end A364782.P17396003720104677877

/-!
# A364783: Order of the symplectic group of 6 X 6 matrices over Z_n.

The programs for A364783, there is no canonical definition to state claims against.
-/

/-! ## A364783.P13010197181607193484

`A364782(n+1)/A000010(n+1)`
-/

namespace A364783.P13010197181607193484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364782 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A364783.P13010197181607193484

/-!
# A364784: a(n) = n for n <= 2. Thereafter if a(n-1) is a novel term, a(n) = a(a(k)) where k is the greatest prior term < a(n-1); otherwise, a(n) = number of times a(n-1) has been repeated.

The programs for A364784, there is no canonical definition to state claims against.
-/

/-! ## A364784.P10379251635999589258

`A080577(A156146(n+1)+A030431(n+1))`
-/

namespace A364784.P10379251635999589258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080577 (A156146 (n + 1) + A030431 (n + 1)).toNat

end

end A364784.P10379251635999589258

/-! ## A364784.P6117830388394667999

`A050205(A107428(n+1)*A176059(n))`
-/

namespace A364784.P6117830388394667999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050205 (A107428 (n + 1) * A176059 n).toNat

end

end A364784.P6117830388394667999

/-! ## A364784.P16700860638425753808

`gcd(A330641(A000079(n)), A371973(n+3))`
-/

namespace A364784.P16700860638425753808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A330641 (A000079 n).toNat) (A371973 (n + 3))

end

end A364784.P16700860638425753808

/-! ## A364784.P3881351237598342662

`A001221(A260086(n+1)-117)`
-/

namespace A364784.P3881351237598342662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A260086 (n + 1) - 117).toNat

end

end A364784.P3881351237598342662

/-! ## A364784.P16718301716905287625

`A135010(A122746(n)+A002033(n))`
-/

namespace A364784.P16718301716905287625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135010 (A122746 n + A002033 n).toNat

end

end A364784.P16718301716905287625

/-!
# A364788: a(0) = 0; thereafter a(n) is the number of times the last digit of a(n-1) has occurred as last digit in all terms prior to a(n-1).

The programs for A364788, there is no canonical definition to state claims against.
-/

/-! ## A364788.P9791883115056030978

`A271916(lt[A196982(n+1), n])`
-/

namespace A364788.P9791883115056030978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271916 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A364788.P9791883115056030978

/-! ## A364788.P4052498299449781079

`col(lt[A304597(n+1), A000203(n+1)])`
-/

namespace A364788.P4052498299449781079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A364788.P4052498299449781079

/-! ## A364788.P1998451204454809202

`col(lt[A304697(n+1), A000203(n+1)])`
-/

namespace A364788.P1998451204454809202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A364788.P1998451204454809202

/-! ## A364788.P173792009124167711

`col(lt[A318430(n+1), A289441(3*(n+1))])`
-/

namespace A364788.P173792009124167711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289441 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A364788.P173792009124167711

/-! ## A364788.P180456134216814639

`A142150(char[A001414(n*a(n-1)+1)]+n)` with `a(0)=28`
-/

namespace A364788.P180456134216814639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [28] fun n f1 =>
  A001414 ((n : ℤ) * f1 (n - 1) + 1).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n)

end

end A364788.P180456134216814639

/-!
# A364791: a(n) is the number of n X n nonsingular symmetric Toeplitz matrices using all the integers 0, 1, 2, ..., n-1.

The programs for A364791, there is no canonical definition to state claims against.
-/

/-! ## A364791.P3063655445150793547

`A364790(∑[1+n])`
-/

namespace A364791.P3063655445150793547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364790 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A364791.P3063655445150793547

/-! ## A364791.P15510810911817518392

`record[A364790(n+1)]`
-/

namespace A364791.P15510810911817518392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364791.P15510810911817518392

/-! ## A364791.P15923166556153523546

`A364790(A000217(n+1))%A048541(n+1)`
-/

namespace A364791.P15923166556153523546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A364790 (A000217 (n + 1)).toNat) (A048541 (n + 1))

end

end A364791.P15923166556153523546

/-! ## A364791.P8692046656207897539

`A364790(A000217(n+1))+A000122(3*n+2)`
-/

namespace A364791.P8692046656207897539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364790 (A000217 (n + 1)).toNat + A000122 (3 * n + 2)

end

end A364791.P8692046656207897539

/-! ## A364791.P10804416298038839303

`A364790(A000217(n+1))/A090387(A081381(n+1))`
-/

namespace A364791.P10804416298038839303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364790 (A000217 (n + 1)).toNat : ℚ) / (A090387 (A081381 (n + 1)).toNat : ℚ)

end

end A364791.P10804416298038839303

/-!
# A364792: G.f. A(x) satisfies A(x) = 1 + x*A(x)^4 / (1 - x*A(x)^2).

The programs for A364792, there is no canonical definition to state claims against.
-/

/-! ## A364792.P12641472095727060760

`A370595(A014105(n))+A083927(n)`
-/

namespace A364792.P12641472095727060760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370595 (A014105 n).toNat + A083927 n

end

end A364792.P12641472095727060760

/-! ## A364792.P14064911789104584916

`A370595(A008000(n)-A121373(n))`
-/

namespace A364792.P14064911789104584916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370595 (A008000 n - A121373 n).toNat

end

end A364792.P14064911789104584916

/-!
# A364793: Number of partitions of n with at most four part sizes.

The programs for A364793, there is no canonical definition to state claims against.
-/

/-! ## A364793.P9358217907263342062

`A000041(n)-A060502(A184955(n))`
-/

namespace A364793.P9358217907263342062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A060502 (A184955 n).toNat

end

end A364793.P9358217907263342062

/-! ## A364793.P3753986818410444586

`A000041(n)-A328959(A176691(n))`
-/

namespace A364793.P3753986818410444586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A328959 (A176691 n).toNat

end

end A364793.P3753986818410444586

/-! ## A364793.P3960559431931424520

`A330643(n)-A060502(A184955(n))`
-/

namespace A364793.P3960559431931424520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330643 n - A060502 (A184955 n).toNat

end

end A364793.P3960559431931424520

/-! ## A364793.P8101104461059278272

`A000041(n)-A185216(A058276(n+1))`
-/

namespace A364793.P8101104461059278272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A185216 (A058276 (n + 1)).toNat

end

end A364793.P8101104461059278272

/-! ## A364793.P12441205284520616107

`A000041(n)-A102683(A214112(n+1))`
-/

namespace A364793.P12441205284520616107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A102683 (A214112 (n + 1)).toNat

end

end A364793.P12441205284520616107

/-!
# A364797: Prime powers that are equal to the sum of the first k prime powers (not including 1) for some k.

The programs for A364797, there is no canonical definition to state claims against.
-/

/-! ## A364797.P13153975622536359224

`A363459(A364796(1+n))`
-/

namespace A364797.P13153975622536359224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363459 (A364796 (1 + n)).toNat

end

end A364797.P13153975622536359224

/-! ## A364797.P13639233350850181197

`∩[A000961(n+1), A363459(n+1)]`
-/

namespace A364797.P13639233350850181197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364797.P13639233350850181197

/-! ## A364797.P7741408434954092748

`∩[A059046(n+1), A363459(n+1)]`
-/

namespace A364797.P7741408434954092748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364797.P7741408434954092748

/-! ## A364797.P11914417950854712747

`∩[A074583(n+1), A363459(n+1)]`
-/

namespace A364797.P11914417950854712747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364797.P11914417950854712747

/-! ## A364797.P1505090111092627112

`∩[A087441(n+1), A363459(n+1)]`
-/

namespace A364797.P1505090111092627112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364797.P1505090111092627112

