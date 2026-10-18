import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
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
import Seq.Opaque.C025

/-!
# A187100: Expansion of q * (psi(-q^3) * psi(q^6)) / (psi(-q) * phi(-q)) in powers of q where phi(), psi() are Ramanujan theta functions.

The programs for A187100, there is no canonical definition to state claims against.
-/

/-! ## A187100.P3193948925068468257

`A260058(n+1)/2`
-/

namespace A187100.P3193948925068468257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260058 (n + 1) : ℚ) / 2

end

end A187100.P3193948925068468257

/-! ## A187100.P10253952939564031069

`A186924(n+1)/4`
-/

namespace A187100.P10253952939564031069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186924 (n + 1) : ℚ) / 4

end

end A187100.P10253952939564031069

/-! ## A187100.P2014947183340674297

`abs(A228447(n+1))`
-/

namespace A187100.P2014947183340674297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A228447 (n + 1)|

end

end A187100.P2014947183340674297

/-! ## A187100.P5253202268277058686

`A033999(n)*A228447(n+1)`
-/

namespace A187100.P5253202268277058686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A228447 (n + 1)

end

end A187100.P5253202268277058686

/-! ## A187100.P6657002855119014794

`gcd(A000038(n), A228447(n+1))`
-/

namespace A187100.P6657002855119014794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A228447 (n + 1))

end

end A187100.P6657002855119014794

/-! ## A187100.P11549097223000009405

`lcm(A010684(n), A228447(n+1))`
-/

namespace A187100.P11549097223000009405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010684 n) (A228447 (n + 1))

end

end A187100.P11549097223000009405

/-! ## A187100.P7956605592102999141

`A261320(n+1)/(2*A280560(n+1))`
-/

namespace A187100.P7956605592102999141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261320 (n + 1) : ℚ) / (2 * A280560 (n + 1) : ℚ)

end

end A187100.P7956605592102999141

/-! ## A187100.P13185412498179363355

`A139214(3*(n+1))`
-/

namespace A187100.P13185412498179363355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139214 (3 * (n + 1))

end

end A187100.P13185412498179363355

/-! ## A187100.P2365592270716486304

`abs(A187153(3*(n+1)))`
-/

namespace A187100.P2365592270716486304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187153 (3 * (n + 1))|

end

end A187100.P2365592270716486304

/-! ## A187100.P2033306026548079697

`A139213(3*(n+1))/2`
-/

namespace A187100.P2033306026548079697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139213 (3 * (n + 1)) : ℚ) / 2

end

end A187100.P2033306026548079697

/-! ## A187100.P3935099645413979607

`A233693(3*(n+1))/2`
-/

namespace A187100.P3935099645413979607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233693 (3 * (n + 1)) : ℚ) / 2

end

end A187100.P3935099645413979607

/-! ## A187100.P9877837033929719368

`A261154(3*(n+1))/2`
-/

namespace A187100.P9877837033929719368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261154 (3 * (n + 1)) : ℚ) / 2

end

end A187100.P9877837033929719368

/-! ## A187100.P9843895662412848499

`abs(A000122(A000040(n+1))-A213265(3*(n+1)))`
-/

namespace A187100.P9843895662412848499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000122 (A000040 (n + 1)).toNat - A213265 (3 * (n + 1))|

end

end A187100.P9843895662412848499

/-!
# A187101: Numbers whose largest proper divisor is a square.

The programs for A187101, the canonical program `A187101.P13845803367965148559` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187101 has offset 1).

The definition of A187101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187101.P13557994872688047659

`eq[A007913(A066182(n+1)), A107286(n)]`
-/

namespace A187101.P13557994872688047659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A066182 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A187101.P13557994872688047659

namespace A187101

/-- `eq[A007913(A066182(n+1)), A107286(n)]` -/
def P13557994872688047659.Spec : Prop :=
  ∀ n, (P13557994872688047659.a n : ℤ) = A187101 (n + 1)

end A187101

/-! ## A187101.P226962362856085563

`eq[A020639(n+1), A056135(n+1)]+1`
-/

namespace A187101.P226962362856085563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056135 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A187101.P226962362856085563

namespace A187101

/-- `eq[A020639(n+1), A056135(n+1)]+1` -/
def P226962362856085563.Spec : Prop :=
  ∀ n, (P226962362856085563.a n : ℤ) = A187101 (n + 1)

end A187101

/-! ## A187101.P13845803367965148559

`eq[1, A056951(A348717(n+1)-A010051(n+1)+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A187101

/-- `eq[1, A056951(A348717(n+1)-A010051(n+1)+1)]+1` -/
def P13845803367965148559.Spec : Prop :=
  ∀ n, (P13845803367965148559.a n : ℤ) = A187101 (n + 1)

theorem P13845803367965148559.correct : P13845803367965148559.Spec := by
  intro n
  simp only [A187101, Nat.add_sub_cancel]

end A187101

/-! ## A187101.P13800667051184357904

`eq[A007913(A233583(n+1)), A107286(n)]`
-/

namespace A187101.P13800667051184357904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A187101.P13800667051184357904

namespace A187101

/-- `eq[A007913(A233583(n+1)), A107286(n)]` -/
def P13800667051184357904.Spec : Prop :=
  ∀ n, (P13800667051184357904.a n : ℤ) = A187101 (n + 1)

end A187101

/-! ## A187101.P5425099040157278514

`∩[A046339(n+1), A392696(n+1)]`
-/

namespace A187101.P5425099040157278514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187101.P5425099040157278514

namespace A187101

/-- `∩[A046339(n+1), A392696(n+1)]` -/
def P5425099040157278514.Spec : Prop :=
  ∀ n, (P5425099040157278514.a n : ℤ) = A187101 (n + 1)

end A187101

/-!
# A187104: Numbers n with property that the largest proper divisor of n is a cube.

The programs for A187104, there is no canonical definition to state claims against.
-/

/-! ## A187104.P4575072104421696008

`A187112(n+1)^3*A187128(n+1)`
-/

namespace A187104.P4575072104421696008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187112 (n + 1) ^ 3 * A187128 (n + 1)

end

end A187104.P4575072104421696008

/-! ## A187104.P16912044450442397582

`A000578(A187112(n+1))*A187128(n+1)`
-/

namespace A187104.P16912044450442397582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A187112 (n + 1)).toNat * A187128 (n + 1)

end

end A187104.P16912044450442397582

/-! ## A187104.P3620127442964505115

`A181155(A181196(3*n+2))%6*A000578(A187112(n+1))`
-/

namespace A187104.P3620127442964505115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181155 (A181196 (3 * n + 2)).toNat) 6 * A000578 (A187112 (n + 1)).toNat

end

end A187104.P3620127442964505115

/-!
# A187105: Triangle T(n,k) read by rows: number of height-2-restricted finite functions.

The programs for A187105, there is no canonical definition to state claims against.
-/

/-! ## A187105.P6116959900789931367

`A139462(A300051(n+1))`
-/

namespace A187105.P6116959900789931367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139462 (A300051 (n + 1)).toNat

end

end A187105.P6116959900789931367

/-! ## A187105.P7897996478940777489

`A116071(n)-A086073(A009006(n))`
-/

namespace A187105.P7897996478940777489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116071 n - A086073 (A009006 n).toNat

end

end A187105.P7897996478940777489

/-! ## A187105.P9584752597523758514

`A116071(n)-A025456(A138314(n))`
-/

namespace A187105.P9584752597523758514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116071 n - A025456 (A138314 n).toNat

end

end A187105.P9584752597523758514

/-! ## A187105.P10957415919205850410

`A116071(n)-A169674(A104684(n)²)`
-/

namespace A187105.P10957415919205850410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116071 n - A169674 (A104684 n ^ 2).toNat

end

end A187105.P10957415919205850410

/-! ## A187105.P7882946606077641112

`A116071(n)-A288926(A116071(3*n+4))`
-/

namespace A187105.P7882946606077641112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116071 n - A288926 (A116071 (3 * n + 4)).toNat

end

end A187105.P7882946606077641112

/-!
# A187106: Number of nonempty subsets of {1, 2, ..., n} having pairwise coprime elements.

The programs for A187106, there is no canonical definition to state claims against.
-/

/-! ## A187106.P11523472706210924399

`A084422(n+1)-1`
-/

namespace A187106.P11523472706210924399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084422 (n + 1) - 1

end

end A187106.P11523472706210924399

/-! ## A187106.P14440853366070511384

`∑[A186973(n+1)]`
-/

namespace A187106.P14440853366070511384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187106.P14440853366070511384

/-! ## A187106.P15702240930609669501

`∑[abs(Δ[A084422(n)])]`
-/

namespace A187106.P15702240930609669501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084422 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187106.P15702240930609669501

/-! ## A187106.P15849034751402231498

`A276187(n+1)+1+n`
-/

namespace A187106.P15849034751402231498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276187 (n + 1) + 1 + (n : ℤ)

end

end A187106.P15849034751402231498

/-! ## A187106.P14042833942987480453

`record[A186973(n-1)+a(n-1)]` with `a(0)=1, a(1)=0`
-/

namespace A187106.P14042833942987480453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A186973 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187106.P14042833942987480453

/-! ## A187106.P16971208758880686563

`A187262(A002815(n+1))`
-/

namespace A187106.P16971208758880686563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187262 (A002815 (n + 1)).toNat

end

end A187106.P16971208758880686563

/-! ## A187106.P18079438023327968097

`A187262(∑[A036234(n+1)])`
-/

namespace A187106.P18079438023327968097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187262 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A187106.P18079438023327968097

/-! ## A187106.P11394781667176613981

`∑[A186975(∑[A186971(n+1)])]`
-/

namespace A187106.P11394781667176613981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186971 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186975 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187106.P11394781667176613981

/-! ## A187106.P9107486594640313017

`A320426(n+1)+n`
-/

namespace A187106.P9107486594640313017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320426 (n + 1) + (n : ℤ)

end

end A187106.P9107486594640313017

/-!
# A187107: Number of nontrivial compositions of differential operations and directional derivative of the n-th order on the space R^9.

The programs for A187107, the canonical program `A187107.P763811221868216661` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187107 has offset 1).

The definition of A187107 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187107.P15833103507696008839

`A000045(n+1)+7`
-/

namespace A187107.P15833103507696008839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + 7

end

end A187107.P15833103507696008839

namespace A187107

/-- `A000045(n+1)+7` -/
def P15833103507696008839.Spec : Prop :=
  ∀ n, P15833103507696008839.a n = A187107 (n + 1)

end A187107

/-! ## A187107.P763811221868216661

`2*a(n-1)-a(n-3)` with `a(0)=8, a(1)=8, a(2)=9`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A187107

/-- `2*a(n-1)-a(n-3)` -/
def P763811221868216661.Spec : Prop :=
  ∀ n, P763811221868216661.a n = A187107 (n + 1)

theorem P763811221868216661.correct : P763811221868216661.Spec := by
  intro n
  simp only [A187107, Nat.add_sub_cancel]

end A187107

/-! ## A187107.P9796028751839502905

`a(n-1)+a(n-2)-7` with `a(0)=8, a(1)=8`
-/

namespace A187107.P9796028751839502905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 8] fun n a =>
  a (n - 1) + (a (n - 2) - 7)

end

end A187107.P9796028751839502905

namespace A187107

/-- `a(n-1)+a(n-2)-7` -/
def P9796028751839502905.Spec : Prop :=
  ∀ n, P9796028751839502905.a n = A187107 (n + 1)

end A187107

/-! ## A187107.P888201682700802129

`a(n-1)-(7-a(n-2))` with `a(0)=8, a(1)=8`
-/

namespace A187107.P888201682700802129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 8] fun n a =>
  a (n - 1) - (7 - a (n - 2))

end

end A187107.P888201682700802129

namespace A187107

/-- `a(n-1)-(7-a(n-2))` -/
def P888201682700802129.Spec : Prop :=
  ∀ n, P888201682700802129.a n = A187107 (n + 1)

end A187107

/-! ## A187107.P14647289141915776134

`∑[A212804(n)]+7`
-/

namespace A187107.P14647289141915776134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 7

end

end A187107.P14647289141915776134

namespace A187107

/-- `∑[A212804(n)]+7` -/
def P14647289141915776134.Spec : Prop :=
  ∀ n, P14647289141915776134.a n = A187107 (n + 1)

end A187107

/-! ## A187107.P9094676953291914293

`A187179(n+1)+1`
-/

namespace A187107.P9094676953291914293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187179 (n + 1) + 1

end

end A187107.P9094676953291914293

namespace A187107

/-- `A187179(n+1)+1` -/
def P9094676953291914293.Spec : Prop :=
  ∀ n, P9094676953291914293.a n = A187107 (n + 1)

end A187107

/-! ## A187107.P5914624257297615097

`A157729(n+1)+2`
-/

namespace A187107.P5914624257297615097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157729 (n + 1) + 2

end

end A187107.P5914624257297615097

namespace A187107

/-- `A157729(n+1)+2` -/
def P5914624257297615097.Spec : Prop :=
  ∀ n, P5914624257297615097.a n = A187107 (n + 1)

end A187107

/-! ## A187107.P15001056416949471578

`A157727(n+1)+3`
-/

namespace A187107.P15001056416949471578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157727 (n + 1) + 3

end

end A187107.P15001056416949471578

namespace A187107

/-- `A157727(n+1)+3` -/
def P15001056416949471578.Spec : Prop :=
  ∀ n, P15001056416949471578.a n = A187107 (n + 1)

end A187107

/-! ## A187107.P7903565550466990044

`A157726(n+1)+4`
-/

namespace A187107.P7903565550466990044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 (n + 1) + 4

end

end A187107.P7903565550466990044

namespace A187107

/-- `A157726(n+1)+4` -/
def P7903565550466990044.Spec : Prop :=
  ∀ n, P7903565550466990044.a n = A187107 (n + 1)

end A187107

/-! ## A187107.P9547824986732862863

`A157725(n+1)+5`
-/

namespace A187107.P9547824986732862863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 (n + 1) + 5

end

end A187107.P9547824986732862863

namespace A187107

/-- `A157725(n+1)+5` -/
def P9547824986732862863.Spec : Prop :=
  ∀ n, P9547824986732862863.a n = A187107 (n + 1)

end A187107

/-! ## A187107.P9649449144179545581

`A001611(n+1)+6`
-/

namespace A187107.P9649449144179545581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 1) + 6

end

end A187107.P9649449144179545581

namespace A187107

/-- `A001611(n+1)+6` -/
def P9649449144179545581.Spec : Prop :=
  ∀ n, P9649449144179545581.a n = A187107 (n + 1)

end A187107

/-! ## A187107.P3654487305677280077

`A000071(n+1)+8`
-/

namespace A187107.P3654487305677280077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + 8

end

end A187107.P3654487305677280077

namespace A187107

/-- `A000071(n+1)+8` -/
def P3654487305677280077.Spec : Prop :=
  ∀ n, P3654487305677280077.a n = A187107 (n + 1)

end A187107

/-! ## A187107.P268640344974981822

`A212804(n+2)+7`
-/

namespace A187107.P268640344974981822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) + 7

end

end A187107.P268640344974981822

namespace A187107

/-- `A212804(n+2)+7` -/
def P268640344974981822.Spec : Prop :=
  ∀ n, P268640344974981822.a n = A187107 (n + 1)

end A187107

/-! ## A187107.P5694468273259857386

`A324969(n+2)+7`
-/

namespace A187107.P5694468273259857386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 2) + 7

end

end A187107.P5694468273259857386

namespace A187107

/-- `A324969(n+2)+7` -/
def P5694468273259857386.Spec : Prop :=
  ∀ n, P5694468273259857386.a n = A187107 (n + 1)

end A187107

/-! ## A187107.P9841414659475988576

`A079977(2*n)+7`
-/

namespace A187107.P9841414659475988576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (2 * n) + 7

end

end A187107.P9841414659475988576

namespace A187107

/-- `A079977(2*n)+7` -/
def P9841414659475988576.Spec : Prop :=
  ∀ n, P9841414659475988576.a n = A187107 (n + 1)

end A187107

/-! ## A187107.P2065617529746437222

`7-A152163(n+3)`
-/

namespace A187107.P2065617529746437222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - A152163 (n + 3)

end

end A187107.P2065617529746437222

namespace A187107

/-- `7-A152163(n+3)` -/
def P2065617529746437222.Spec : Prop :=
  ∀ n, P2065617529746437222.a n = A187107 (n + 1)

end A187107

/-! ## A187107.P14319707916324671043

`A226649(2*n)+8`
-/

namespace A187107.P14319707916324671043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226649 (2 * n) + 8

end

end A187107.P14319707916324671043

namespace A187107

/-- `A226649(2*n)+8` -/
def P14319707916324671043.Spec : Prop :=
  ∀ n, P14319707916324671043.a n = A187107 (n + 1)

end A187107

/-! ## A187107.P3980346777458393928

`A174619(2*n+1)+7`
-/

namespace A187107.P3980346777458393928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174619 (2 * n + 1) + 7

end

end A187107.P3980346777458393928

namespace A187107

/-- `A174619(2*n+1)+7` -/
def P3980346777458393928.Spec : Prop :=
  ∀ n, P3980346777458393928.a n = A187107 (n + 1)

end A187107

/-!
# A187108: Odd numbers not in the trajectory of a smaller number under the Collatz (3x+1) iteration.

The programs for A187108, there is no canonical definition to state claims against.
-/

/-! ## A187108.P15873474263173212495

`record[A070167(or(1, n))]`
-/

namespace A187108.P15873474263173212495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070167 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187108.P15873474263173212495

/-! ## A187108.P3980552215725809729

`record[A070167(Δ[n²])]`
-/

namespace A187108.P3980552215725809729
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070167 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187108.P3980552215725809729

/-! ## A187108.P7375650145529211854

`eq[n, A070167(xor(1, n)+1)]`
-/

namespace A187108.P7375650145529211854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070167 (Nat.xor 1 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187108.P7375650145529211854

/-! ## A187108.P11830105806049168346

`∩[A061641(n+1), Δ[n²]]`
-/

namespace A187108.P11830105806049168346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187108.P11830105806049168346

/-! ## A187108.P11680243956439165760

`∩[A177729(n+1), Δ[n²]]`
-/

namespace A187108.P11680243956439165760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177729 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187108.P11680243956439165760

/-! ## A187108.P4367539741908882427

`sqrt(record[A070167(2*n+1)²])`
-/

namespace A187108.P4367539741908882427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070167 (2 * n + 1) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A187108.P4367539741908882427

/-! ## A187108.P11922803459578142532

`a(n-1)+2*A193865(n)` with `a(0)=1`
-/

namespace A187108.P11922803459578142532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * A193865 n

end

end A187108.P11922803459578142532

/-! ## A187108.P2403637320528512744

`record[A070167(n+1)/(-1)^n]`
-/

namespace A187108.P2403637320528512744
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070167 (n + 1) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187108.P2403637320528512744

/-! ## A187108.P2050571311924825705

`lt[A222617(n+1), (-1)^n]+1`
-/

namespace A187108.P2050571311924825705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A187108.P2050571311924825705

/-! ## A187108.P3855647912705595125

`lt[val(n+1, 2), A222118(n+1)]+1`
-/

namespace A187108.P3855647912705595125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222118 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A187108.P3855647912705595125

/-!
# A187112: a(n) = cube root of the largest proper divisor of A187104(n).

The programs for A187112, there is no canonical definition to state claims against.
-/

/-! ## A187112.P12106768231286377806

`A048766(A032742(A187104(n+1)))`
-/

namespace A187112.P12106768231286377806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A032742 (A187104 (n + 1)).toNat).toNat

end

end A187112.P12106768231286377806

/-! ## A187112.P13562294010156915957

`A048766(A187104(n+1)/A187128(n+1))`
-/

namespace A187112.P13562294010156915957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (SequenceMachineLib.roundAway ((A187104 (n + 1) : ℚ) / (A187128 (n + 1) : ℚ))).toNat

end

end A187112.P13562294010156915957

/-! ## A187112.P861847063101459095

`A053150(A187104(n+1)/A187128(n+1))`
-/

namespace A187112.P861847063101459095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 (SequenceMachineLib.roundAway ((A187104 (n + 1) : ℚ) / (A187128 (n + 1) : ℚ))).toNat

end

end A187112.P861847063101459095

/-! ## A187112.P434660831190123513

`A134914(A187104(n+1)/A187128(n+1))`
-/

namespace A187112.P434660831190123513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (SequenceMachineLib.roundAway ((A187104 (n + 1) : ℚ) / (A187128 (n + 1) : ℚ))).toNat

end

end A187112.P434660831190123513

/-! ## A187112.P13435107718593435309

`A048766(A187104(n+1)/A020639(A187104(n+1)))`
-/

namespace A187112.P13435107718593435309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (SequenceMachineLib.roundAway ((A187104 (n + 1) : ℚ) / (A020639 (A187104 (n + 1)).toNat : ℚ))).toNat

end

end A187112.P13435107718593435309

/-!
# A187113: Primes of the form abcdabcd..abcda.

The programs for A187113, the canonical program `A187113.P11109198850881865142` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187113 has offset 1).

The definition of A187113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187113.P16732625250580021510

`p?[A301478(A017281(n+2))]`
-/

namespace A187113.P16732625250580021510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301478 (A017281 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A187113.P16732625250580021510

namespace A187113

/-- `p?[A301478(A017281(n+2))]` -/
def P16732625250580021510.Spec : Prop :=
  ∀ n, P16732625250580021510.a n = A187113 (n + 1)

end A187113

/-! ## A187113.P12038355207807211967

`p?[A301478(A017329(n)+16)]`
-/

namespace A187113.P12038355207807211967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301478 (A017329 n + 16).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A187113.P12038355207807211967

namespace A187113

/-- `p?[A301478(A017329(n)+16)]` -/
def P12038355207807211967.Spec : Prop :=
  ∀ n, P12038355207807211967.a n = A187113 (n + 1)

end A187113

/-! ## A187113.P2960200972465462343

`p?[A301478(A084967(n+1)-4)]`
-/

namespace A187113.P2960200972465462343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301478 (A084967 (n + 1) - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A187113.P2960200972465462343

namespace A187113

/-- `p?[A301478(A084967(n+1)-4)]` -/
def P2960200972465462343.Spec : Prop :=
  ∀ n, P2960200972465462343.a n = A187113 (n + 1)

end A187113

/-! ## A187113.P11109198850881865142

`p?[A034837(10*(n+1))]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A187113

/-- `p?[A034837(10*(n+1))]` -/
def P11109198850881865142.Spec : Prop :=
  ∀ n, P11109198850881865142.a n = A187113 (n + 1)

theorem P11109198850881865142.correct : P11109198850881865142.Spec := by
  intro n
  simp only [A187113, Nat.add_sub_cancel]

end A187113

/-!
# A187116: A diagonal of triangle A187115.

The programs for A187116, there is no canonical definition to state claims against.
-/

/-! ## A187116.P14578408118730044853

`A187115(C(n+3, 2))`
-/

namespace A187116.P14578408118730044853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187115 (Nat.choose (n + 3) 2)

end

end A187116.P14578408118730044853

/-! ## A187116.P136294999426876857

`A187115(∑[n+2]+1)`
-/

namespace A187116.P136294999426876857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187115 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A187116.P136294999426876857

/-! ## A187116.P3908314494768257800

`record[A187115(A333531(n+1))]`
-/

namespace A187116.P3908314494768257800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187115 (A333531 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187116.P3908314494768257800

/-! ## A187116.P5937629731452023045

`record[A187115(A198455(n+1)+1)]`
-/

namespace A187116.P5937629731452023045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187115 (A198455 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187116.P5937629731452023045

/-! ## A187116.P12365995428905400520

`record[gcd(A008290(n), A187115(n+2))]`
-/

namespace A187116.P12365995428905400520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008290 n) (A187115 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187116.P12365995428905400520

/-!
# A187117: A diagonal of triangle A187115.

The programs for A187117, there is no canonical definition to state claims against.
-/

/-! ## A187117.P3136740471282618794

`A187115(∑[n+3]+2)`
-/

namespace A187117.P3136740471282618794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187115 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A187117.P3136740471282618794

/-! ## A187117.P11505662684658327352

`record[A187115(A198455(n+1))]`
-/

namespace A187117.P11505662684658327352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187115 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187117.P11505662684658327352

/-! ## A187117.P15192450558256723906

`record[A187115(n+2)/A135080(n+2)]`
-/

namespace A187117.P15192450558256723906
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187115 (n + 2) : ℚ) / (A135080 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187117.P15192450558256723906

/-! ## A187117.P1825464833394353014

`record[A133607(n+4)*A187115(n+2)]`
-/

namespace A187117.P1825464833394353014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133607 (n + 4) * A187115 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187117.P1825464833394353014

/-!
# A187118: Rows sums of triangle A187115.

The programs for A187118, there is no canonical definition to state claims against.
-/

/-! ## A187118.P17667109285613483438

`xor(lt[∑{e}[n, #], 2]+n+1, A105514(6^n+8^n+1))`
-/

namespace A187118.P17667109285613483438
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.nth (fun j => f1 j < f3 j) n + (n + 1) : ℤ) (A105514 (6 ^ n + (8 ^ n + 1)))

end

end A187118.P17667109285613483438

/-!
# A187119: G.f. A(x) satisfies: [x^(m+2)] A(F^m(x)) = 0 for m>0 where F^m(x) denotes the m-th iteration of F(x) = x+x^2 with F^0(x)=x.

The programs for A187119, there is no canonical definition to state claims against.
-/

/-! ## A187119.P145468857251504825

`A126930(n)*A271168(A063886(n))`
-/

namespace A187119.P145468857251504825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n * A271168 (A063886 n).toNat

end

end A187119.P145468857251504825

/-! ## A187119.P6201722439461201881

`A116637(A062934(n+1))*A126930(n)`
-/

namespace A187119.P6201722439461201881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116637 (A062934 (n + 1)).toNat * A126930 n

end

end A187119.P6201722439461201881

/-!
# A187120: Triangle, read by rows, where row n equals the coefficients of y^k in R_{n-1}(y+y^2) for k=3..n, where R_n(y) is the n-th row polynomial in y for n>=3 with R_3(y)=y^3.

The programs for A187120, there is no canonical definition to state claims against.
-/

/-! ## A187120.P8592455509288503535

`A114886(A193091(n))`
-/

namespace A187120.P8592455509288503535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114886 (A193091 n).toNat

end

end A187120.P8592455509288503535

/-! ## A187120.P5588918393455656973

`A346125(A071949(n))`
-/

namespace A187120.P5588918393455656973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346125 (A071949 n).toNat

end

end A187120.P5588918393455656973

/-! ## A187120.P16600347466498124349

`A383846(A363419(n))`
-/

namespace A187120.P16600347466498124349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383846 (A363419 n).toNat

end

end A187120.P16600347466498124349

/-! ## A187120.P13681072696750949909

`A130695(A212267(n+1))`
-/

namespace A187120.P13681072696750949909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130695 (A212267 (n + 1)).toNat

end

end A187120.P13681072696750949909

/-! ## A187120.P10658983187057849920

`A334966(A193091(n)+1)`
-/

namespace A187120.P10658983187057849920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334966 (A193091 n + 1).toNat

end

end A187120.P10658983187057849920

/-!
# A187121: A diagonal of triangle A187120.

The programs for A187121, there is no canonical definition to state claims against.
-/

/-! ## A187121.P12561167483062275527

`A187120(∑[n+2]+2)`
-/

namespace A187121.P12561167483062275527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187120 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A187121.P12561167483062275527

/-! ## A187121.P2889438713211454578

`record[A187120(A198468(n+1))]`
-/

namespace A187121.P2889438713211454578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187120 (A198468 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187121.P2889438713211454578

/-! ## A187121.P15069872765645787919

`record[A097807(n)*A187120(n+4)]`
-/

namespace A187121.P15069872765645787919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A187120 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187121.P15069872765645787919

/-! ## A187121.P8714216403901315005

`record[gcd(A008290(n), A187120(n+3))]`
-/

namespace A187121.P8714216403901315005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008290 n) (A187120 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187121.P8714216403901315005

/-!
# A187122: A diagonal of triangle A187120.

The programs for A187122, there is no canonical definition to state claims against.
-/

/-! ## A187122.P6844768269114387748

`A187120(C(n+4, 2))`
-/

namespace A187122.P6844768269114387748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187120 (Nat.choose (n + 4) 2)

end

end A187122.P6844768269114387748

/-! ## A187122.P8323993473152171796

`A187120(∑[n+3]+3)`
-/

namespace A187122.P8323993473152171796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187120 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A187122.P8323993473152171796

/-! ## A187122.P2981161148097860570

`record[char[A055998(n)]*A187120(n+3)]`
-/

namespace A187122.P2981161148097860570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A187120 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187122.P2981161148097860570

/-!
# A187123: Row sums of triangle A187120.

The programs for A187123, there is no canonical definition to state claims against.
-/

/-! ## A187123.P2913793619073805883

`A271980(A005520(∑[comp[n²]]))`
-/

namespace A187123.P2913793619073805883
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271980 (A005520 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A187123.P2913793619073805883

/-!
# A187126: Triangular numbers k*(k+1)/2 mod 1000, sorted and uniqued.

The programs for A187126, there is no canonical definition to state claims against.
-/

/-! ## A187126.P5148828176419576703

`eq[A010874(n)^A133819(n+1), A010874(n)]`
-/

namespace A187126.P5148828176419576703
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010874 n : ℚ) ^ (A133819 (n + 1) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A187126.P5148828176419576703

/-! ## A187126.P5502954629743459525

`A187127(comp[25*n])`
-/

namespace A187126.P5502954629743459525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187127 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A187126.P5502954629743459525

/-! ## A187126.P5159576658497721625

`lt[A099573(n), A255051(A033437(2*(n+2)))]`
-/

namespace A187126.P5159576658497721625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099573 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255051 (A033437 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A187126.P5159576658497721625

/-! ## A187126.P7873075800844180025

`lt[A138518(n), A036262(A184534(2*(n+2)))]`
-/

namespace A187126.P7873075800844180025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138518 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036262 (A184534 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A187126.P7873075800844180025

/-!
# A187127: Triangular numbers k*(k+1)/2 mod 100, sorted and uniqued.

The programs for A187127, there is no canonical definition to state claims against.
-/

/-! ## A187127.P16563098459239403212

`∪[∑[gcd(2, n)²]-4, A016885(5*n)]`
-/

namespace A187127.P16563098459239403212
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (5 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A187127.P16563098459239403212

/-! ## A187127.P14668069299672780759

`A068125(lt[3, A174254(n+4)])`
-/

namespace A187127.P14668069299672780759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174254 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A187127.P14668069299672780759

/-! ## A187127.P4748826616251516173

`A068125(A055642(2*n)+n)`
-/

namespace A187127.P4748826616251516173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068125 (A055642 (2 * n) + (n : ℤ)).toNat

end

end A187127.P4748826616251516173

/-! ## A187127.P13510405900197286374

`∪[A187126(n+1), A056108(n)]`
-/

namespace A187127.P13510405900197286374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056108 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187127.P13510405900197286374

/-! ## A187127.P15010783489574874548

`∪[A187126(n+1), A058390(n)]`
-/

namespace A187127.P15010783489574874548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058390 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187127.P15010783489574874548

/-!
# A187128: a(n) = the least proper divisor of A187104(n) (Numbers with property that the largest proper divisor is a cube).

The programs for A187128, there is no canonical definition to state claims against.
-/

/-! ## A187128.P10141647400577070212

`A020639(∏{p}[A187104(n+1), #])`
-/

namespace A187128.P10141647400577070212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A187128.P10141647400577070212

/-! ## A187128.P9328397680260041460

`A028233(∏{p}[A187104(n+1), #])`
-/

namespace A187128.P9328397680260041460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A187128.P9328397680260041460

/-! ## A187128.P6022975362285047345

`A187104(n+1)/A187112(n+1)^3`
-/

namespace A187128.P6022975362285047345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187104 (n + 1) : ℚ) / (A187112 (n + 1) ^ 3 : ℚ)

end

end A187128.P6022975362285047345

/-! ## A187128.P7959733821645096695

`A187104(n+1)/A000578(A187112(n+1))`
-/

namespace A187128.P7959733821645096695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187104 (n + 1) : ℚ) / (A000578 (A187112 (n + 1)).toNat : ℚ)

end

end A187128.P7959733821645096695

/-! ## A187128.P1621293207439316813

`A007913(A187104(n+1)/A187112(n+1))`
-/

namespace A187128.P1621293207439316813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway ((A187104 (n + 1) : ℚ) / (A187112 (n + 1) : ℚ))).toNat

end

end A187128.P1621293207439316813

/-! ## A187128.P8476501890610061601

`A107286(A187104(n+1)/A187112(n+1))`
-/

namespace A187128.P8476501890610061601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (SequenceMachineLib.roundAway ((A187104 (n + 1) : ℚ) / (A187112 (n + 1) : ℚ))).toNat

end

end A187128.P8476501890610061601

/-! ## A187128.P9899782381885724116

`A020639(A187104(n+1))`
-/

namespace A187128.P9899782381885724116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A187104 (n + 1)).toNat

end

end A187128.P9899782381885724116

/-!
# A187129: Consider all pairs of primes (p,q) with p+q = 2n, p <= q; a(n) is the sum of all the q's.

The programs for A187129, there is no canonical definition to state claims against.
-/

/-! ## A187129.P10324479693814666476

`A187619(n+2)+A185297(n+2)`
-/

namespace A187129.P10324479693814666476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187619 (n + 2) + A185297 (n + 2)

end

end A187129.P10324479693814666476

/-! ## A187129.P12991676807630508080

`A226237(n+2)-A185297(n+2)`
-/

namespace A187129.P12991676807630508080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226237 (n + 2) - A185297 (n + 2)

end

end A187129.P12991676807630508080

/-! ## A187129.P1207792026622632839

`A185297(n+2)+Δ[A279726(n+1)]`
-/

namespace A187129.P1207792026622632839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185297 (n + 2) + (f1 (n + 1) - f1 n)

end

end A187129.P1207792026622632839

/-! ## A187129.P2449289627890820911

`(A226237(n+2)+A187619(n+2))/2`
-/

namespace A187129.P2449289627890820911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226237 (n + 2) + A187619 (n + 2) : ℚ) / 2

end

end A187129.P2449289627890820911

/-! ## A187129.P88145588696791162

`A185297(n+2)+A279726(n+2)-A279726(n+1)`
-/

namespace A187129.P88145588696791162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185297 (n + 2) + (A279726 (n + 2) - A279726 (n + 1))

end

end A187129.P88145588696791162

/-! ## A187129.P7662015066327332907

`A355196(2*(n+3))`
-/

namespace A187129.P7662015066327332907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355196 (2 * (n + 3))

end

end A187129.P7662015066327332907

/-! ## A187129.P2618625914067607199

`A187619(n+2)+A004526(A226237(n+2)-A187619(n+2))`
-/

namespace A187129.P2618625914067607199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187619 (n + 2) + A004526 (A226237 (n + 2) - A187619 (n + 2)).toNat

end

end A187129.P2618625914067607199

/-! ## A187129.P13115059883091855651

`A110654(A226237(n+2)+A187619(n+2))`
-/

namespace A187129.P13115059883091855651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A226237 (n + 2) + A187619 (n + 2)).toNat

end

end A187129.P13115059883091855651

/-!
# A187131: Numerator of probability that the height of a rooted random binary tree is n.

The programs for A187131, the canonical program `A187131.P9181800046760726140` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187131 has offset 0).

The definition of A187131 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187131.P9181800046760726140

`A076628(n+1)²`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A187131

/-- `A076628(n+1)²` -/
def P9181800046760726140.Spec : Prop :=
  ∀ n, P9181800046760726140.a n = A187131 n

theorem P9181800046760726140.correct : P9181800046760726140.Spec := by
  intro n
  simp only [A187131]

end A187131

/-! ## A187131.P267853397903431596

`∏[A100441(n+1)²]`
-/

namespace A187131.P267853397903431596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100441 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A187131.P267853397903431596

namespace A187131

/-- `∏[A100441(n+1)²]` -/
def P267853397903431596.Spec : Prop :=
  ∀ n, P267853397903431596.a n = A187131 n

end A187131

/-! ## A187131.P13641153998364073956

`(A001146(n)-A100441(n+2))²`
-/

namespace A187131.P13641153998364073956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001146 n - A100441 (n + 2)) ^ 2

end

end A187131.P13641153998364073956

namespace A187131

/-- `(A001146(n)-A100441(n+2))²` -/
def P13641153998364073956.Spec : Prop :=
  ∀ n, P13641153998364073956.a n = A187131 n

end A187131

/-! ## A187131.P15447645621260022119

`A076628(n+1)^A000040(A096751(n))`
-/

namespace A187131.P15447645621260022119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076628 (n + 1) : ℚ) ^ (A000040 (A096751 n).toNat : ℤ)

end

end A187131.P15447645621260022119

namespace A187131

/-- `A076628(n+1)^A000040(A096751(n))` -/
def P15447645621260022119.Spec : Prop :=
  ∀ n, P15447645621260022119.a n = (A187131 n : ℚ)

end A187131

/-!
# A187132: Number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock trace equal to exactly one or two horizontal and vertical neighbor 2X2 subblock traces.

The programs for A187132, there is no canonical definition to state claims against.
-/

/-! ## A187132.P13038315844290568647

`A187140(∑[4*n]+1)`
-/

namespace A187132.P13038315844290568647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187140 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A187132.P13038315844290568647

/-!
# A187133: Number of (n+1)X3 0..2 arrays with every 2X2 subblock trace equal to exactly one or two horizontal and vertical neighbor 2X2 subblock traces.

The programs for A187133, there is no canonical definition to state claims against.
-/

/-! ## A187133.P9967684740312422179

`A187140(∑[n+1]+2)`
-/

namespace A187133.P9967684740312422179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187140 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A187133.P9967684740312422179

/-! ## A187133.P7613283186400025812

`record[A187140(A133263(∑{e}[n+1, #]+1))]`
-/

namespace A187133.P7613283186400025812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187140 (A133263 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187133.P7613283186400025812

/-! ## A187133.P10843991604696352273

`A192541(n)+A187140(A000096(n)+3)`
-/

namespace A187133.P10843991604696352273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192541 n + A187140 (A000096 n + 3).toNat

end

end A187133.P10843991604696352273

/-! ## A187133.P12218478597505452322

`A008835(n+1)*A187140(A000096(n)+3)`
-/

namespace A187133.P12218478597505452322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (n + 1) * A187140 (A000096 n + 3).toNat

end

end A187133.P12218478597505452322

/-! ## A187133.P11662319739779845814

`record[root(A187140(n+2), A305059(n+4))]`
-/

namespace A187133.P11662319739779845814
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A187140 (n + 2) : ℝ) ^ (1 / (A305059 (n + 4) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187133.P11662319739779845814

/-!
# A187134: Number of (n+1)X4 0..2 arrays with every 2X2 subblock trace equal to exactly one or two horizontal and vertical neighbor 2X2 subblock traces.

The programs for A187134, there is no canonical definition to state claims against.
-/

/-! ## A187134.P12918115634752590824

`A187140(∑[n+2]+4)`
-/

namespace A187134.P12918115634752590824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187140 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A187134.P12918115634752590824

/-! ## A187134.P6601104367976005163

`lcm(3, A187140(A167614(n+1)))`
-/

namespace A187134.P6601104367976005163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A187140 (A167614 (n + 1)).toNat)

end

end A187134.P6601104367976005163

/-! ## A187134.P5422077250377761556

`A187140(A167614(n+1))+A184946(n)`
-/

namespace A187134.P5422077250377761556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187140 (A167614 (n + 1)).toNat + A184946 n

end

end A187134.P5422077250377761556

/-! ## A187134.P10192084596109804479

`A187140(A167614(n+1))+A185284(n)`
-/

namespace A187134.P10192084596109804479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187140 (A167614 (n + 1)).toNat + A185284 n

end

end A187134.P10192084596109804479

/-! ## A187134.P6774780836769558007

`or(A000007(n), A187140(A167614(n+1)))`
-/

namespace A187134.P6774780836769558007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A187140 (A167614 (n + 1)).toNat)

end

end A187134.P6774780836769558007

/-!
# A187135: Number of (n+1)X5 0..2 arrays with every 2X2 subblock trace equal to exactly one or two horizontal and vertical neighbor 2X2 subblock traces.

The programs for A187135, there is no canonical definition to state claims against.
-/

/-! ## A187135.P8337846427024942443

`A187140(A374004(n+1))`
-/

namespace A187135.P8337846427024942443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187140 (A374004 (n + 1)).toNat

end

end A187135.P8337846427024942443

/-! ## A187135.P14867064630380988116

`A187140(A055999(n)+10)`
-/

namespace A187135.P14867064630380988116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187140 (A055999 n + 10).toNat

end

end A187135.P14867064630380988116

/-! ## A187135.P3804177082630937575

`A187140(A167614(n+2)+1)`
-/

namespace A187135.P3804177082630937575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187140 (A167614 (n + 2) + 1).toNat

end

end A187135.P3804177082630937575

/-! ## A187135.P1747687305226264665

`A187140(A141214(n+1))`
-/

namespace A187135.P1747687305226264665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187140 (A141214 (n + 1)).toNat

end

end A187135.P1747687305226264665

/-! ## A187135.P16083751654249667476

`A187140(A155212(n)+5)`
-/

namespace A187135.P16083751654249667476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187140 (A155212 n + 5).toNat

end

end A187135.P16083751654249667476

/-!
# A187136: Number of (n+1)X6 0..2 arrays with every 2X2 subblock trace equal to exactly one or two horizontal and vertical neighbor 2X2 subblock traces.

The programs for A187136, there is no canonical definition to state claims against.
-/

/-! ## A187136.P253108245583995467

`A187140(A374005(n+1))`
-/

namespace A187136.P253108245583995467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187140 (A374005 (n + 1)).toNat

end

end A187136.P253108245583995467

/-! ## A187136.P205905154023153337

`A187140(A167499(n+3))`
-/

namespace A187136.P205905154023153337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187140 (A167499 (n + 3)).toNat

end

end A187136.P205905154023153337

/-! ## A187136.P10810568124536110242

`A187140(A155212(n)+13)`
-/

namespace A187136.P10810568124536110242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187140 (A155212 n + 13).toNat

end

end A187136.P10810568124536110242

/-! ## A187136.P5531101600728747099

`A187140(A056000(n)+15)`
-/

namespace A187136.P5531101600728747099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187140 (A056000 n + 15).toNat

end

end A187136.P5531101600728747099

/-! ## A187136.P11969921779213997479

`A187140(eq[7, A066657(n)])`
-/

namespace A187136.P11969921779213997479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187140 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187136.P11969921779213997479

/-!
# A187137: Number of (n+1)X7 0..2 arrays with every 2X2 subblock trace equal to exactly one or two horizontal and vertical neighbor 2X2 subblock traces.

The programs for A187137, there is no canonical definition to state claims against.
-/

/-! ## A187137.P14389337237643470048

`A187140(A374007(n+1))`
-/

namespace A187137.P14389337237643470048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187140 (A374007 (n + 1)).toNat

end

end A187137.P14389337237643470048

/-! ## A187137.P6356512669162148321

`A187140(eq[5, A193592(n)])`
-/

namespace A187137.P6356512669162148321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187140 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187137.P6356512669162148321

/-!
# A187138: Number of (n+1)X8 0..2 arrays with every 2X2 subblock trace equal to exactly one or two horizontal and vertical neighbor 2X2 subblock traces.

The programs for A187138, there is no canonical definition to state claims against.
-/

/-! ## A187138.P9727891917698155280

`A187140(A374008(n+1))`
-/

namespace A187138.P9727891917698155280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187140 (A374008 (n + 1)).toNat

end

end A187138.P9727891917698155280

/-!
# A187139: 

The programs for A187139, there is no canonical definition to state claims against.
-/

/-! ## A187139.P5350064702284858929

`A187140(eq[7, A193592(n)])`
-/

namespace A187139.P5350064702284858929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187140 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187139.P5350064702284858929

/-!
# A187149: Expansion of psi(-x)^4 * chi(-x^2)^2 in powers of x where psi(), chi() are Ramanujan theta functions.

The programs for A187149, there is no canonical definition to state claims against.
-/

/-! ## A187149.P13708586828246867878

`(-1)^n*A106508(n)`
-/

namespace A187149.P13708586828246867878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A106508 n

end

end A187149.P13708586828246867878

/-! ## A187149.P11550530796848740589

`A106508(n)*A165326(n+1)`
-/

namespace A187149.P11550530796848740589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106508 n * A165326 (n + 1)

end

end A187149.P11550530796848740589

/-! ## A187149.P15892884497216890190

`A106508(n)*A309873(n+1)`
-/

namespace A187149.P15892884497216890190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106508 n * A309873 (n + 1)

end

end A187149.P15892884497216890190

/-! ## A187149.P12959902270137193230

`A106508(n)*A332814(A000040(n+1))`
-/

namespace A187149.P12959902270137193230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106508 n * A332814 (A000040 (n + 1)).toNat

end

end A187149.P12959902270137193230

/-! ## A187149.P7384344970979724914

`A106508(n)/A300508(A007814(n+1))`
-/

namespace A187149.P7384344970979724914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106508 n : ℚ) / (A300508 (A007814 (n + 1)).toNat : ℚ)

end

end A187149.P7384344970979724914

/-! ## A187149.P11054915475514760772

`A106508(n)/A010815(A005449(n))`
-/

namespace A187149.P11054915475514760772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106508 n : ℚ) / (A010815 (A005449 n).toNat : ℚ)

end

end A187149.P11054915475514760772

/-!
# A187150: Expansion of psi(-x)^4 / chi(-x)^2 in powers of x where psi(), chi() are Ramanujan theta functions.

The programs for A187150, there is no canonical definition to state claims against.
-/

/-! ## A187150.P783428834513395502

`A187076(2*n+1)/4`
-/

namespace A187150.P783428834513395502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187076 (2 * n + 1) : ℚ) / 4

end

end A187150.P783428834513395502

/-! ## A187150.P13776097259614883741

`-A000727(2*n+1)/4`
-/

namespace A187150.P13776097259614883741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A000727 (2 * n + 1) : ℚ) / 4)

end

end A187150.P13776097259614883741

/-! ## A187150.P6238236895582079196

`(A187076(Δ[n²])/4)%comp[∑[n]]`
-/

namespace A187150.P6238236895582079196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A187076 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 4)) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

end

end A187150.P6238236895582079196

/-! ## A187150.P16210355131619455816

`A187149(4*n+2)/4`
-/

namespace A187150.P16210355131619455816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187149 (4 * n + 2) : ℚ) / 4

end

end A187150.P16210355131619455816

/-! ## A187150.P8841468987965276203

`A106508(4*n+2)/4`
-/

namespace A187150.P8841468987965276203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106508 (4 * n + 2) : ℚ) / 4

end

end A187150.P8841468987965276203

/-!
# A187151: Number of walks of length n starting at origin and ending in first quadrant on a square lattice.

The programs for A187151, the canonical program `A187151.P13703592292862614707` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187151 has offset 0).

The definition of A187151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187151.P13703592292862614707

`A186648(n)+A000984(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A187151

/-- `A186648(n)+A000984(n)` -/
def P13703592292862614707.Spec : Prop :=
  ∀ n, P13703592292862614707.a n = A187151 n

theorem P13703592292862614707.correct : P13703592292862614707.Spec := by
  intro n
  simp only [A187151]

end A187151

/-! ## A187151.P739664071469645535

`A186648(n)+A001405(2*n)`
-/

namespace A187151.P739664071469645535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186648 n + A001405 (2 * n)

end

end A187151.P739664071469645535

namespace A187151

/-- `A186648(n)+A001405(2*n)` -/
def P739664071469645535.Spec : Prop :=
  ∀ n, P739664071469645535.a n = A187151 n

end A187151

/-! ## A187151.P11879586296372753471

`A186648(n)+(n+1)*A000108(n)`
-/

namespace A187151.P11879586296372753471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186648 n + (n + 1 : ℤ) * A000108 n

end

end A187151.P11879586296372753471

namespace A187151

/-- `A186648(n)+(n+1)*A000108(n)` -/
def P11879586296372753471.Spec : Prop :=
  ∀ n, P11879586296372753471.a n = A187151 n

end A187151

/-! ## A187151.P2736674623327452517

`A264960(n)-A186648(n)`
-/

namespace A187151.P2736674623327452517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264960 n - A186648 n

end

end A187151.P2736674623327452517

namespace A187151

/-- `A264960(n)-A186648(n)` -/
def P2736674623327452517.Spec : Prop :=
  ∀ n, P2736674623327452517.a n = A187151 n

end A187151

/-! ## A187151.P7812939470162083557

`(A264960(n)+A000984(n))/2`
-/

namespace A187151.P7812939470162083557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264960 n + A000984 n : ℚ) / 2

end

end A187151.P7812939470162083557

namespace A187151

/-- `(A264960(n)+A000984(n))/2` -/
def P7812939470162083557.Spec : Prop :=
  ∀ n, P7812939470162083557.a n = (A187151 n : ℚ)

end A187151

/-!
# A187153: Expansion of q * (psi(q) / psi(q^2)) / (psi(q^3) / psi(q^6))^3 in powers of q where psi() is a Ramanujan theta function.

The programs for A187153, there is no canonical definition to state claims against.
-/

/-! ## A187153.P11081225427961692969

`A033999(n)*A123649(n+1)`
-/

namespace A187153.P11081225427961692969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A123649 (n + 1)

end

end A187153.P11081225427961692969

/-! ## A187153.P9471584622715122744

`(A004442(n)-n)*A123649(n+1)`
-/

namespace A187153.P9471584622715122744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A123649 (n + 1)

end

end A187153.P9471584622715122744

/-! ## A187153.P16933278499013658738

`A213265(n+1)`
-/

namespace A187153.P16933278499013658738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213265 (n + 1)

end

end A187153.P16933278499013658738

/-! ## A187153.P6309877152185461349

`A261321(n+1)/4`
-/

namespace A187153.P6309877152185461349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261321 (n + 1) : ℚ) / 4

end

end A187153.P6309877152185461349

/-! ## A187153.P16936488831140856361

`ratio[A213265(n)]*A213265(n)`
-/

namespace A187153.P16936488831140856361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213265 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A213265 n : ℚ)

end

end A187153.P16936488831140856361

/-! ## A187153.P965096384145426664

`A123649(n+1)/A261325(n)*A261446(n)`
-/

namespace A187153.P965096384145426664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123649 (n + 1) : ℚ) / (A261325 n : ℚ) * (A261446 n : ℚ)

end

end A187153.P965096384145426664

/-! ## A187153.P9159846722965018558

`A187100(n+1)*A217771(n+1)/A261320(n+1)`
-/

namespace A187153.P9159846722965018558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187100 (n + 1) * A217771 (n + 1) : ℚ) / (A261320 (n + 1) : ℚ)

end

end A187153.P9159846722965018558

/-! ## A187153.P15261784229169993548

`A127361(n)%3*A123649(n+1)`
-/

namespace A187153.P15261784229169993548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127361 n) 3 * A123649 (n + 1)

end

end A187153.P15261784229169993548

/-!
# A187154: Expansion of psi(x^4) / phi(-x) in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A187154, there is no canonical definition to state claims against.
-/

/-! ## A187154.P17276440711003410735

`abs(A210063(n))`
-/

namespace A187154.P17276440711003410735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A210063 n|

end

end A187154.P17276440711003410735

/-! ## A187154.P12032427064554916998

`A033999(n)*A210063(n)`
-/

namespace A187154.P12032427064554916998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A210063 n

end

end A187154.P12032427064554916998

/-! ## A187154.P6383614681672045606

`gcd(A000038(n), A210063(n))`
-/

namespace A187154.P6383614681672045606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A210063 n)

end

end A187154.P6383614681672045606

/-! ## A187154.P193224637067779560

`lcm(A000034(n), A210063(n))`
-/

namespace A187154.P193224637067779560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A210063 n)

end

end A187154.P193224637067779560

/-! ## A187154.P7401024767407030919

`A080015(n)/A210030(n)*A210063(n)`
-/

namespace A187154.P7401024767407030919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080015 n : ℚ) / (A210030 n : ℚ) * (A210063 n : ℚ)

end

end A187154.P7401024767407030919

/-! ## A187154.P10987996550852747837

`A208856(2*n)`
-/

namespace A187154.P10987996550852747837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208856 (2 * n)

end

end A187154.P10987996550852747837

/-! ## A187154.P4217223382123689908

`A115671(Δ[n²])`
-/

namespace A187154.P4217223382123689908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115671 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A187154.P4217223382123689908

/-! ## A187154.P9757177135753520126

`abs(A224216(Δ[n²]))`
-/

namespace A187154.P9757177135753520126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A224216 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A187154.P9757177135753520126

/-! ## A187154.P15926228733165649141

`A080054(Δ[n²])/2`
-/

namespace A187154.P15926228733165649141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080054 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A187154.P15926228733165649141

/-! ## A187154.P10571717151863271911

`abs(A245432(2*n+1))`
-/

namespace A187154.P10571717151863271911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A245432 (2 * n + 1)|

end

end A187154.P10571717151863271911

/-! ## A187154.P6067178332192799780

`abs(A080015(2*n+1)/2)`
-/

namespace A187154.P6067178332192799780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A080015 (2 * n + 1) : ℚ) / 2|

end

end A187154.P6067178332192799780

/-! ## A187154.P3561179749313932328

`abs(A108494(2*n+1)/2)`
-/

namespace A187154.P3561179749313932328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A108494 (2 * n + 1) : ℚ) / 2|

end

end A187154.P3561179749313932328

/-! ## A187154.P14854444084268177137

`abs(A210030(2*n+1)/2)`
-/

namespace A187154.P14854444084268177137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A210030 (2 * n + 1) : ℚ) / 2|

end

end A187154.P14854444084268177137

/-! ## A187154.P4143809314288355027

`record[A115671(n+1)/A135517(n)]`
-/

namespace A187154.P4143809314288355027
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115671 (n + 1) : ℚ) / (A135517 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187154.P4143809314288355027

/-! ## A187154.P14009348529302520444

`lcm(A014709(n), A224216(2*n+1))`
-/

namespace A187154.P14009348529302520444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014709 n) (A224216 (2 * n + 1))

end

end A187154.P14009348529302520444

/-! ## A187154.P4172844830702132518

`lcm(A020985(n), A245432(2*n+1))`
-/

namespace A187154.P4172844830702132518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A245432 (2 * n + 1))

end

end A187154.P4172844830702132518

/-! ## A187154.P13898903918756711879

`A210030(2*n+1)/A280560(n+1)`
-/

namespace A187154.P13898903918756711879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210030 (2 * n + 1) : ℚ) / (A280560 (n + 1) : ℚ)

end

end A187154.P13898903918756711879

/-! ## A187154.P3214859675773906707

`A057077(2*n)*A245432(2*n+1)`
-/

namespace A187154.P3214859675773906707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A245432 (2 * n + 1)

end

end A187154.P3214859675773906707

/-! ## A187154.P16618341372518886901

`A080054(2*n+1)-A115671(2*n+1)`
-/

namespace A187154.P16618341372518886901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080054 (2 * n + 1) - A115671 (2 * n + 1)

end

end A187154.P16618341372518886901

/-! ## A187154.P17427727481421023341

`A210030(2*n+1)/(2*A033999(n+1))`
-/

namespace A187154.P17427727481421023341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210030 (2 * n + 1) : ℚ) / (2 * A033999 (n + 1) : ℚ)

end

end A187154.P17427727481421023341

/-!
# A187155: T(n,k)=Number of n-step one space at a time bishop's tours on a kXk board summed over all starting positions.

The programs for A187155, there is no canonical definition to state claims against.
-/

/-! ## A187155.P17488961836064901443

`A187637(A043317(n+1))²`
-/

namespace A187155.P17488961836064901443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187637 (A043317 (n + 1)).toNat ^ 2

end

end A187155.P17488961836064901443

/-! ## A187155.P3033560218830548342

`A187637(A068634(n+1))²`
-/

namespace A187155.P3033560218830548342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187637 (A068634 (n + 1)).toNat ^ 2

end

end A187155.P3033560218830548342

/-! ## A187155.P8834743723087737021

`(A187637(n+1)%A338003(n+1))²`
-/

namespace A187155.P8834743723087737021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187637 (n + 1)) (A338003 (n + 1)) ^ 2

end

end A187155.P8834743723087737021

/-! ## A187155.P6893777145184953321

`A187296(n+1)-A046080(A022186(n))`
-/

namespace A187155.P6893777145184953321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187296 (n + 1) - A046080 (A022186 n).toNat

end

end A187155.P6893777145184953321

/-! ## A187155.P11404999266811358663

`A187637(n+1)^A020639(A051041(n))`
-/

namespace A187155.P11404999266811358663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187637 (n + 1) : ℚ) ^ (A020639 (A051041 n).toNat : ℤ)

end

end A187155.P11404999266811358663

/-!
# A187156: Number of 3-step one space at a time bishop's tours on an n X n board summed over all starting positions.

The programs for A187156, the canonical program `A187156.P9473084626074256866` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187156 has offset 1).

The definition of A187156 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187156.P9473084626074256866

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=20, a(3)=64`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A187156

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P9473084626074256866.Spec : Prop :=
  ∀ n, P9473084626074256866.a n = A187156 (n + 1)

theorem P9473084626074256866.correct : P9473084626074256866.Spec := by
  intro n
  simp only [A187156, Nat.add_sub_cancel]

end A187156

/-! ## A187156.P13716577841714648845

`∑[a(n-1)+24]` with `a(0)=0, a(1)=0, a(2)=20`
-/

namespace A187156.P13716577841714648845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 20] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187156.P13716577841714648845

namespace A187156

/-- `∑[a(n-1)+24]` -/
def P13716577841714648845.Spec : Prop :=
  ∀ n, (P13716577841714648845.a n : ℤ) = A187156 (n + 1)

end A187156

/-! ## A187156.P8708822340333540127

`record[lcm(2, n)²]-(2*n)²`
-/

namespace A187156.P8708822340333540127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - ((2 * n) ^ 2 : ℤ)

end

end A187156.P8708822340333540127

namespace A187156

/-- `record[lcm(2, n)²]-(2*n)²` -/
def P8708822340333540127.Spec : Prop :=
  ∀ n, P8708822340333540127.a n = A187156 (n + 1)

end A187156

/-! ## A187156.P4664940388226689171

`lcm(2*(n-1)*(6*n-2), ceil(n/(n+1)))`
-/

namespace A187156.P4664940388226689171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * ((n : ℤ) - 1) * ((6 * n : ℤ) - 2)) ⌈(n : ℚ) / (n + 1 : ℚ)⌉

end

end A187156.P4664940388226689171

namespace A187156

/-- `lcm(2*(n-1)*(6*n-2), ceil(n/(n+1)))` -/
def P4664940388226689171.Spec : Prop :=
  ∀ n, (P4664940388226689171.a n : ℤ) = A187156 (n + 1)

end A187156

/-! ## A187156.P2190121328439646365

`A130824(n)²-(2*n)²`
-/

namespace A187156.P2190121328439646365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n ^ 2 - ((2 * n) ^ 2 : ℤ)

end

end A187156.P2190121328439646365

namespace A187156

/-- `A130824(n)²-(2*n)²` -/
def P2190121328439646365.Spec : Prop :=
  ∀ n, P2190121328439646365.a n = A187156 (n + 1)

end A187156

/-! ## A187156.P1792816788836258355

`A033578(n)-A122709(n)`
-/

namespace A187156.P1792816788836258355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033578 n - A122709 n

end

end A187156.P1792816788836258355

namespace A187156

/-- `A033578(n)-A122709(n)` -/
def P1792816788836258355.Spec : Prop :=
  ∀ n, P1792816788836258355.a n = A187156 (n + 1)

end A187156

/-! ## A187156.P3210988957127327611

`A153808(n)-A188148(n+1)`
-/

namespace A187156.P3210988957127327611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153808 n - A188148 (n + 1)

end

end A187156.P3210988957127327611

namespace A187156

/-- `A153808(n)-A188148(n+1)` -/
def P3210988957127327611.Spec : Prop :=
  ∀ n, P3210988957127327611.a n = A187156 (n + 1)

end A187156

/-! ## A187156.P10199265083496750617

`2*(A139267(n)-A130824(n))`
-/

namespace A187156.P10199265083496750617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A139267 n - A130824 n)

end

end A187156.P10199265083496750617

namespace A187156

/-- `2*(A139267(n)-A130824(n))` -/
def P10199265083496750617.Spec : Prop :=
  ∀ n, P10199265083496750617.a n = A187156 (n + 1)

end A187156

/-! ## A187156.P17624707770484237339

`(2*A004273(n))²-A016742(n)`
-/

namespace A187156.P17624707770484237339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A004273 n) ^ 2 - A016742 n

end

end A187156.P17624707770484237339

namespace A187156

/-- `(2*A004273(n))²-A016742(n)` -/
def P17624707770484237339.Spec : Prop :=
  ∀ n, P17624707770484237339.a n = A187156 (n + 1)

end A187156

/-! ## A187156.P15890928779072492461

`A111284(n+1)²-A004277(n)²`
-/

namespace A187156.P15890928779072492461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (n + 1) ^ 2 - A004277 n ^ 2

end

end A187156.P15890928779072492461

namespace A187156

/-- `A111284(n+1)²-A004277(n)²` -/
def P15890928779072492461.Spec : Prop :=
  ∀ n, P15890928779072492461.a n = A187156 (n + 1)

end A187156

/-! ## A187156.P2149974015691001614

`Δ[A033589(n)]%A033574(n)`
-/

namespace A187156.P2149974015691001614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033589 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A033574 n)

end

end A187156.P2149974015691001614

namespace A187156

/-- `Δ[A033589(n)]%A033574(n)` -/
def P2149974015691001614.Spec : Prop :=
  ∀ n, P2149974015691001614.a n = A187156 (n + 1)

end A187156

/-! ## A187156.P18294693671665048515

`A000567(abs(1-2*n))-1`
-/

namespace A187156.P18294693671665048515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 |1 - (2 * n : ℤ)|.toNat - 1

end

end A187156.P18294693671665048515

namespace A187156

/-- `A000567(abs(1-2*n))-1` -/
def P18294693671665048515.Spec : Prop :=
  ∀ n, P18294693671665048515.a n = A187156 (n + 1)

end A187156

/-! ## A187156.P13022713422754522693

`A004275(2*n)²-(2*n)²`
-/

namespace A187156.P13022713422754522693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (2 * n) ^ 2 - ((2 * n) ^ 2 : ℤ)

end

end A187156.P13022713422754522693

namespace A187156

/-- `A004275(2*n)²-(2*n)²` -/
def P13022713422754522693.Spec : Prop :=
  ∀ n, P13022713422754522693.a n = A187156 (n + 1)

end A187156

/-! ## A187156.P5713874615450052875

`and(-2, A000567(A004273(n)))`
-/

namespace A187156.P5713874615450052875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A000567 (A004273 n).toNat)

end

end A187156.P5713874615450052875

namespace A187156

/-- `and(-2, A000567(A004273(n)))` -/
def P5713874615450052875.Spec : Prop :=
  ∀ n, P5713874615450052875.a n = A187156 (n + 1)

end A187156

/-! ## A187156.P7998439942924681222

`(A004273(n)-1)*record[A006370(n)]`
-/

namespace A187156.P7998439942924681222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004273 n - 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187156.P7998439942924681222

namespace A187156

/-- `(A004273(n)-1)*record[A006370(n)]` -/
def P7998439942924681222.Spec : Prop :=
  ∀ n, P7998439942924681222.a n = A187156 (n + 1)

end A187156

/-! ## A187156.P4259504701195386348

`A016742(A004273(n))-A016742(n)`
-/

namespace A187156.P4259504701195386348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 (A004273 n).toNat - A016742 n

end

end A187156.P4259504701195386348

namespace A187156

/-- `A016742(A004273(n))-A016742(n)` -/
def P4259504701195386348.Spec : Prop :=
  ∀ n, P4259504701195386348.a n = A187156 (n + 1)

end A187156

/-! ## A187156.P5381086004856378853

`A056106(A004273(n))-A004273(n+1)`
-/

namespace A187156.P5381086004856378853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056106 (A004273 n).toNat - A004273 (n + 1)

end

end A187156.P5381086004856378853

namespace A187156

/-- `A056106(A004273(n))-A004273(n+1)` -/
def P5381086004856378853.Spec : Prop :=
  ∀ n, P5381086004856378853.a n = A187156 (n + 1)

end A187156

/-! ## A187156.P1431220860233034307

`A000466(A004277(n)-1)-A000466(n)`
-/

namespace A187156.P1431220860233034307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000466 (A004277 n - 1).toNat - A000466 n

end

end A187156.P1431220860233034307

namespace A187156

/-- `A000466(A004277(n)-1)-A000466(n)` -/
def P1431220860233034307.Spec : Prop :=
  ∀ n, P1431220860233034307.a n = A187156 (n + 1)

end A187156

/-! ## A187156.P1562660447631317415

`2*(A001105(A004273(n))-A001105(n))`
-/

namespace A187156.P1562660447631317415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001105 (A004273 n).toNat - A001105 n)

end

end A187156.P1562660447631317415

namespace A187156

/-- `2*(A001105(A004273(n))-A001105(n))` -/
def P1562660447631317415.Spec : Prop :=
  ∀ n, P1562660447631317415.a n = A187156 (n + 1)

end A187156

/-!
# A187157: Number of 4-step one space at a time bishop's tours on an n X n board summed over all starting positions.

The programs for A187157, the canonical program `A187157.P3614727172789598087` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187157 has offset 1).

The definition of A187157 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187157.P3614727172789598087

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=8, a(3)=92, a(4)=248`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A187157

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P3614727172789598087.Spec : Prop :=
  ∀ n, P3614727172789598087.a n = A187157 (n + 1)

theorem P3614727172789598087.correct : P3614727172789598087.Spec := by
  intro n
  simp only [A187157, Nat.add_sub_cancel]

end A187157

/-! ## A187157.P9449540891915851515

`A187155(∑[n+3]+7)`
-/

namespace A187157.P9449540891915851515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187155 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A187157.P9449540891915851515

namespace A187157

/-- `A187155(∑[n+3]+7)` -/
def P9449540891915851515.Spec : Prop :=
  ∀ n, P9449540891915851515.a n = A187157 (n + 1)

end A187157

/-! ## A187157.P8577116919696423150

`lcm(2, A187155(A052905(n)+9))`
-/

namespace A187157.P8577116919696423150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A187155 (A052905 n + 9).toNat)

end

end A187157.P8577116919696423150

namespace A187157

/-- `lcm(2, A187155(A052905(n)+9))` -/
def P8577116919696423150.Spec : Prop :=
  ∀ n, (P8577116919696423150.a n : ℤ) = A187157 (n + 1)

end A187157

/-! ## A187157.P8992112652655467192

`A187155(A055999(n)+10)%A066846(n)²`
-/

namespace A187157.P8992112652655467192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187155 (A055999 n + 10).toNat) (A066846 n ^ 2)

end

end A187157.P8992112652655467192

namespace A187157

/-- `A187155(A055999(n)+10)%A066846(n)²` -/
def P8992112652655467192.Spec : Prop :=
  ∀ n, P8992112652655467192.a n = A187157 (n + 1)

end A187157

/-! ## A187157.P6754028945051503951

`char[A007318(n)]*A187155(A052905(n)+9)`
-/

namespace A187157.P6754028945051503951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A187155 (A052905 n + 9).toNat

end

end A187157.P6754028945051503951

namespace A187157

/-- `char[A007318(n)]*A187155(A052905(n)+9)` -/
def P6754028945051503951.Spec : Prop :=
  ∀ n, P6754028945051503951.a n = A187157 (n + 1)

end A187157

/-!
# A187158: Number of 5-step one space at a time bishop's tours on an n X n board summed over all starting positions.

The programs for A187158, the canonical program `A187158.P7422435963636944210` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187158 has offset 1).

The definition of A187158 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187158.P7422435963636944210

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=72, a(4)=388, a(5)=904`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A187158

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P7422435963636944210.Spec : Prop :=
  ∀ n, P7422435963636944210.a n = A187158 (n + 1)

theorem P7422435963636944210.correct : P7422435963636944210.Spec := by
  intro n
  simp only [A187158, Nat.add_sub_cancel]

end A187158

/-! ## A187158.P15784144375190472461

`A187155(∑[n+4]+11)`
-/

namespace A187158.P15784144375190472461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187155 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A187158.P15784144375190472461

namespace A187158

/-- `A187155(∑[n+4]+11)` -/
def P15784144375190472461.Spec : Prop :=
  ∀ n, P15784144375190472461.a n = A187158 (n + 1)

end A187158

/-! ## A187158.P13024132570992381852

`A187155(A167499(n+3))%A004802(n+1)`
-/

namespace A187158.P13024132570992381852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187155 (A167499 (n + 3)).toNat) (A004802 (n + 1))

end

end A187158.P13024132570992381852

namespace A187158

/-- `A187155(A167499(n+3))%A004802(n+1)` -/
def P13024132570992381852.Spec : Prop :=
  ∀ n, P13024132570992381852.a n = A187158 (n + 1)

end A187158

/-!
# A187159: Number of 6-step one space at a time bishop's tours on an n X n board summed over all starting positions.

The programs for A187159, there is no canonical definition to state claims against.
-/

/-! ## A187159.P9467352066062643578

`A187155(∑[n+5]+16)`
-/

namespace A187159.P9467352066062643578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187155 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A187159.P9467352066062643578

/-! ## A187159.P7110498173190423917

`gcd(n, n+1)*A187155(A167499(n+4)+1)`
-/

namespace A187159.P7110498173190423917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A187155 (A167499 (n + 4) + 1).toNat

end

end A187159.P7110498173190423917

/-! ## A187159.P12936866706484388142

`A178489(n)*A187155(A161680(n+6)+6)`
-/

namespace A187159.P12936866706484388142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n * A187155 (A161680 (n + 6) + 6).toNat

end

end A187159.P12936866706484388142

/-! ## A187159.P4236061631620069314

`A187155(A000124(n+5)+5)%A093137(n)`
-/

namespace A187159.P4236061631620069314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187155 (A000124 (n + 5) + 5).toNat) (A093137 n)

end

end A187159.P4236061631620069314

/-! ## A187159.P14945312264897108738

`A187155(A161680(n+6)+6)%A016201(n)`
-/

namespace A187159.P14945312264897108738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187155 (A161680 (n + 6) + 6).toNat) (A016201 n)

end

end A187159.P14945312264897108738

/-!
# A187160: Number of 7-step one space at a time bishop's tours on an n X n board summed over all starting positions.

The programs for A187160, there is no canonical definition to state claims against.
-/

/-! ## A187160.P3655902483531460205

`A187155(A056119(n)+28)`
-/

namespace A187160.P3655902483531460205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187155 (A056119 n + 28).toNat

end

end A187160.P3655902483531460205

/-! ## A187160.P8120285996068165138

`A187155(A000124(n+6)+6)`
-/

namespace A187160.P8120285996068165138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187155 (A000124 (n + 6) + 6).toNat

end

end A187160.P8120285996068165138

/-! ## A187160.P16269630927813632557

`A187155(A000096(n+5)+8)`
-/

namespace A187160.P16269630927813632557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187155 (A000096 (n + 5) + 8).toNat

end

end A187160.P16269630927813632557

/-! ## A187160.P6387474693636970524

`A187155(A000217(n+6)+7)`
-/

namespace A187160.P6387474693636970524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187155 (A000217 (n + 6) + 7).toNat

end

end A187160.P6387474693636970524

/-! ## A187160.P2478902666526765668

`A187155(A161680(n+7)+7)`
-/

namespace A187160.P2478902666526765668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187155 (A161680 (n + 7) + 7).toNat

end

end A187160.P2478902666526765668

/-!
# A187161: Number of 8-step one space at a time bishop's tours on an n X n board summed over all starting positions.

The programs for A187161, there is no canonical definition to state claims against.
-/

/-! ## A187161.P3903526926742716528

`A187155(A167487(n+6)+1)`
-/

namespace A187161.P3903526926742716528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187155 (A167487 (n + 6) + 1).toNat

end

end A187161.P3903526926742716528

/-! ## A187161.P18123621900945478909

`A187155(A167499(n+6)+3)`
-/

namespace A187161.P18123621900945478909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187155 (A167499 (n + 6) + 3).toNat

end

end A187161.P18123621900945478909

/-! ## A187161.P98208097805135410

`A187155(A167614(n+6)+5)`
-/

namespace A187161.P98208097805135410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187155 (A167614 (n + 6) + 5).toNat

end

end A187161.P98208097805135410

/-! ## A187161.P1870373662796137828

`A187155(A000124(n+7)+7)`
-/

namespace A187161.P1870373662796137828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187155 (A000124 (n + 7) + 7).toNat

end

end A187161.P1870373662796137828

/-! ## A187161.P9110931527987483977

`A187155(A000217(n+7)+8)`
-/

namespace A187161.P9110931527987483977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187155 (A000217 (n + 7) + 8).toNat

end

end A187161.P9110931527987483977

/-!
# A187163: Number of 2-step self-avoiding walks on an n X n X n cube summed over all starting positions.

The programs for A187163, the canonical program `A187163.P15872126836893441574` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187163 has offset 1).

The definition of A187163 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187163.P15872126836893441574

`6*(n+1)^3-6*(n+1)²`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A187163

/-- `6*(n+1)^3-6*(n+1)²` -/
def P15872126836893441574.Spec : Prop :=
  ∀ n, P15872126836893441574.a n = A187163 (n + 1)

theorem P15872126836893441574.correct : P15872126836893441574.Spec := by
  intro n
  simp only [A187163, Nat.add_sub_cancel]

end A187163

/-! ## A187163.P5540510864921136672

`12*A006002(n)`
-/

namespace A187163.P5540510864921136672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A006002 n

end

end A187163.P5540510864921136672

namespace A187163

/-- `12*A006002(n)` -/
def P5540510864921136672.Spec : Prop :=
  ∀ n, P5540510864921136672.a n = A187163 (n + 1)

end A187163

/-! ## A187163.P5507104720260042830

`∑[12*Δ[n*C(n, 2)]]`
-/

namespace A187163.P5507104720260042830
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose n 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187163.P5507104720260042830

namespace A187163

/-- `∑[12*Δ[n*C(n, 2)]]` -/
def P5507104720260042830.Spec : Prop :=
  ∀ n, P5507104720260042830.a n = A187163 (n + 1)

end A187163

/-! ## A187163.P15507189551039755342

`∑[4*C(3*n+1, 2)]`
-/

namespace A187163.P15507189551039755342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose (3 * n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187163.P15507189551039755342

namespace A187163

/-- `∑[4*C(3*n+1, 2)]` -/
def P15507189551039755342.Spec : Prop :=
  ∀ n, (P15507189551039755342.a n : ℤ) = A187163 (n + 1)

end A187163

/-! ## A187163.P10838996285574824570

`∑[∑[a(n-1)+36]]` with `a(0)=0, a(1)=24`
-/

namespace A187163.P10838996285574824570
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 24] fun n f2 =>
  f2 (n - 1) + 36

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187163.P10838996285574824570

namespace A187163

/-- `∑[∑[a(n-1)+36]]` -/
def P10838996285574824570.Spec : Prop :=
  ∀ n, (P10838996285574824570.a n : ℤ) = A187163 (n + 1)

end A187163

/-! ## A187163.P11844454154667477122

`∑[lcm(6*n+2, 6*n)]`
-/

namespace A187163.P11844454154667477122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (6 * n + 2) (6 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187163.P11844454154667477122

namespace A187163

/-- `∑[lcm(6*n+2, 6*n)]` -/
def P11844454154667477122.Spec : Prop :=
  ∀ n, (P11844454154667477122.a n : ℤ) = A187163 (n + 1)

end A187163

/-! ## A187163.P2652071954688726738

`abs(xor(n, -1)*∑[12*n])`
-/

namespace A187163.P2652071954688726738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A187163.P2652071954688726738

namespace A187163

/-- `abs(xor(n, -1)*∑[12*n])` -/
def P2652071954688726738.Spec : Prop :=
  ∀ n, P2652071954688726738.a n = A187163 (n + 1)

end A187163

/-! ## A187163.P8240615310501437939

`-xor(n, -1)*∑[12*n]`
-/

namespace A187163.P8240615310501437939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (n : ℤ) (-1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A187163.P8240615310501437939

namespace A187163

/-- `-xor(n, -1)*∑[12*n]` -/
def P8240615310501437939.Spec : Prop :=
  ∀ n, P8240615310501437939.a n = A187163 (n + 1)

end A187163

/-! ## A187163.P17468817784877438879

`floor((n+1)/acot(∑[12*n]))`
-/

namespace A187163.P17468817784877438879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋

end

end A187163.P17468817784877438879

namespace A187163

/-- `floor((n+1)/acot(∑[12*n]))` -/
def P17468817784877438879.Spec : Prop :=
  ∀ n, P17468817784877438879.a n = A187163 (n + 1)

end A187163

/-! ## A187163.P11976211252655259929

`4*3*C(n+1, 2)*(n+1)`
-/

namespace A187163.P11976211252655259929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (3 * Nat.choose (n + 1) 2) * (n + 1)

end

end A187163.P11976211252655259929

namespace A187163

/-- `4*3*C(n+1, 2)*(n+1)` -/
def P11976211252655259929.Spec : Prop :=
  ∀ n, (P11976211252655259929.a n : ℤ) = A187163 (n + 1)

end A187163

/-! ## A187163.P7778546055848709386

`∑[A045946(n)]`
-/

namespace A187163.P7778546055848709386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187163.P7778546055848709386

namespace A187163

/-- `∑[A045946(n)]` -/
def P7778546055848709386.Spec : Prop :=
  ∀ n, P7778546055848709386.a n = A187163 (n + 1)

end A187163

/-! ## A187163.P1979059788400351210

`∑[A081272(n)-1]`
-/

namespace A187163.P1979059788400351210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081272 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187163.P1979059788400351210

namespace A187163

/-- `∑[A081272(n)-1]` -/
def P1979059788400351210.Spec : Prop :=
  ∀ n, P1979059788400351210.a n = A187163 (n + 1)

end A187163

/-! ## A187163.P18333582672740665440

`∑[2*A045945(n)]`
-/

namespace A187163.P18333582672740665440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187163.P18333582672740665440

namespace A187163

/-- `∑[2*A045945(n)]` -/
def P18333582672740665440.Spec : Prop :=
  ∀ n, P18333582672740665440.a n = A187163 (n + 1)

end A187163

/-! ## A187163.P12548971073277247452

`∑[3*A033580(n)]`
-/

namespace A187163.P12548971073277247452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A033580 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187163.P12548971073277247452

namespace A187163

/-- `∑[3*A033580(n)]` -/
def P12548971073277247452.Spec : Prop :=
  ∀ n, P12548971073277247452.a n = A187163 (n + 1)

end A187163

/-! ## A187163.P6464667216566439332

`∑[4*A081266(n)]`
-/

namespace A187163.P6464667216566439332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A081266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187163.P6464667216566439332

namespace A187163

/-- `∑[4*A081266(n)]` -/
def P6464667216566439332.Spec : Prop :=
  ∀ n, P6464667216566439332.a n = A187163 (n + 1)

end A187163

/-! ## A187163.P2164566036723443943

`∑[6*A049451(n)]`
-/

namespace A187163.P2164566036723443943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A049451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187163.P2164566036723443943

namespace A187163

/-- `∑[6*A049451(n)]` -/
def P2164566036723443943.Spec : Prop :=
  ∀ n, P2164566036723443943.a n = A187163 (n + 1)

end A187163

/-! ## A187163.P12523890450982343466

`∑[2*(A082040(n)-1)]`
-/

namespace A187163.P12523890450982343466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A082040 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187163.P12523890450982343466

namespace A187163

/-- `∑[2*(A082040(n)-1)]` -/
def P12523890450982343466.Spec : Prop :=
  ∀ n, P12523890450982343466.a n = A187163 (n + 1)

end A187163

/-! ## A187163.P12966061972606892782

`∑[A298037(2*n)-1]`
-/

namespace A187163.P12966061972606892782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298037 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187163.P12966061972606892782

namespace A187163

/-- `∑[A298037(2*n)-1]` -/
def P12966061972606892782.Spec : Prop :=
  ∀ n, P12966061972606892782.a n = A187163 (n + 1)

end A187163

/-! ## A187163.P3651104053610124554

`∑[(A016922(n)-1)/2]`
-/

namespace A187163.P3651104053610124554
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016922 n - 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187163.P3651104053610124554

namespace A187163

/-- `∑[(A016922(n)-1)/2]` -/
def P3651104053610124554.Spec : Prop :=
  ∀ n, P3651104053610124554.a n = (A187163 (n + 1) : ℚ)

end A187163

/-!
# A187164: Number of 3-step self-avoiding walks on an n X n X n cube summed over all starting positions.

The programs for A187164, the canonical program `A187164.P6841462791461600436` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187164 has offset 1).

The definition of A187164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187164.P6841462791461600436

`(A007742(n)+n²-A087156(n+1))*6*(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A187164

/-- `(A007742(n)+n²-A087156(n+1))*6*(n+1)` -/
def P6841462791461600436.Spec : Prop :=
  ∀ n, P6841462791461600436.a n = A187164 (n + 1)

theorem P6841462791461600436.correct : P6841462791461600436.Spec := by
  intro n
  simp only [A187164, Nat.add_sub_cancel]

end A187164

/-! ## A187164.P12797884801468157349

`(A005475(2*n)-A114637(n+1))*3*(n+1)`
-/

namespace A187164.P12797884801468157349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005475 (2 * n) - A114637 (n + 1)) * (3 * (n + 1) : ℤ)

end

end A187164.P12797884801468157349

namespace A187164

/-- `(A005475(2*n)-A114637(n+1))*3*(n+1)` -/
def P12797884801468157349.Spec : Prop :=
  ∀ n, P12797884801468157349.a n = A187164 (n + 1)

end A187164

/-! ## A187164.P10300874613431327493

`(A008706(n²)-1)*A008458(n+1)`
-/

namespace A187164.P10300874613431327493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008706 (n ^ 2) - 1) * A008458 (n + 1)

end

end A187164.P10300874613431327493

namespace A187164

/-- `(A008706(n²)-1)*A008458(n+1)` -/
def P10300874613431327493.Spec : Prop :=
  ∀ n, P10300874613431327493.a n = A187164 (n + 1)

end A187164

/-! ## A187164.P14977882635295748460

`(A016921(n)+5)*(A008706(n²)-1)`
-/

namespace A187164.P14977882635295748460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016921 n + 5) * (A008706 (n ^ 2) - 1)

end

end A187164.P14977882635295748460

namespace A187164

/-- `(A016921(n)+5)*(A008706(n²)-1)` -/
def P14977882635295748460.Spec : Prop :=
  ∀ n, P14977882635295748460.a n = A187164 (n + 1)

end A187164

/-! ## A187164.P17876940304078064761

`3*(n+1)*A004275(5*n²)`
-/

namespace A187164.P17876940304078064761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) * A004275 (5 * n ^ 2)

end

end A187164.P17876940304078064761

namespace A187164

/-- `3*(n+1)*A004275(5*n²)` -/
def P17876940304078064761.Spec : Prop :=
  ∀ n, P17876940304078064761.a n = A187164 (n + 1)

end A187164

/-!
# A187165: Number of 4-step self-avoiding walks on an n X n X n cube summed over all starting positions.

The programs for A187165, there is no canonical definition to state claims against.
-/

/-! ## A187165.P2318169874533368680

`A187162(∑[n+3]+7)`
-/

namespace A187165.P2318169874533368680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187162 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A187165.P2318169874533368680

/-! ## A187165.P4026712041559462448

`lcm(2, A187162(A034856(n+2)+6))`
-/

namespace A187165.P4026712041559462448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A187162 (A034856 (n + 2) + 6).toNat)

end

end A187165.P4026712041559462448

/-! ## A187165.P10072949156930598419

`A187162(A046691(n+1)+8)+char[27]`
-/

namespace A187165.P10072949156930598419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187162 (A046691 (n + 1) + 8).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A187165.P10072949156930598419

/-! ## A187165.P10214068710776231207

`char[A007318(n)]*A187162(A034856(n+2)+6)`
-/

namespace A187165.P10214068710776231207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A187162 (A034856 (n + 2) + 6).toNat

end

end A187165.P10214068710776231207

/-! ## A187165.P15861278763191849019

`A000041(C(2, n+2))*A187162(A034856(n+2)+6)`
-/

namespace A187165.P15861278763191849019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A187162 (A034856 (n + 2) + 6).toNat

end

end A187165.P15861278763191849019

/-!
# A187166: Number of 5-step self-avoiding walks on an n X n X n cube summed over all starting positions.

The programs for A187166, there is no canonical definition to state claims against.
-/

/-! ## A187166.P181864163196042220

`A187162(A167499(n+3))`
-/

namespace A187166.P181864163196042220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187162 (A167499 (n + 3)).toNat

end

end A187166.P181864163196042220

/-! ## A187166.P9442225349183869458

`A187162(A155212(n)+13)`
-/

namespace A187166.P9442225349183869458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187162 (A155212 n + 13).toNat

end

end A187166.P9442225349183869458

/-! ## A187166.P962936500032752841

`A187162(A056000(n)+15)`
-/

namespace A187166.P962936500032752841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187162 (A056000 n + 15).toNat

end

end A187166.P962936500032752841

/-! ## A187166.P10069442621859021010

`A187162(eq[7, A066657(n)])`
-/

namespace A187166.P10069442621859021010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187162 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187166.P10069442621859021010

/-! ## A187166.P4768454960533455572

`A187162(A145018(n+5)+1)`
-/

namespace A187166.P4768454960533455572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187162 (A145018 (n + 5) + 1).toNat

end

end A187166.P4768454960533455572

/-!
# A187167: Number of 6-step self-avoiding walks on an n X n X n cube summed over all starting positions.

The programs for A187167, there is no canonical definition to state claims against.
-/

/-! ## A187167.P17568081252260979762

`A187162(A056115(n)+21)`
-/

namespace A187167.P17568081252260979762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187162 (A056115 n + 21).toNat

end

end A187167.P17568081252260979762

/-! ## A187167.P3287987975710654038

`A187162(A167499(n+4)+1)`
-/

namespace A187167.P3287987975710654038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187162 (A167499 (n + 4) + 1).toNat

end

end A187167.P3287987975710654038

/-! ## A187167.P15957885071930767125

`A187162(A000124(n+5)+5)`
-/

namespace A187167.P15957885071930767125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187162 (A000124 (n + 5) + 5).toNat

end

end A187167.P15957885071930767125

/-! ## A187167.P46203483659296082

`A187162(A000096(n+4)+7)`
-/

namespace A187167.P46203483659296082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187162 (A000096 (n + 4) + 7).toNat

end

end A187167.P46203483659296082

/-! ## A187167.P15879372387867950122

`A187162(A000217(n+5)+6)`
-/

namespace A187167.P15879372387867950122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187162 (A000217 (n + 5) + 6).toNat

end

end A187167.P15879372387867950122

/-!
# A187168: Number of 7-step self-avoiding walks on an n X n X n cube summed over all starting positions.

The programs for A187168, there is no canonical definition to state claims against.
-/

/-! ## A187168.P6812222805660701506

`A187162(∑[n+6]+22)`
-/

namespace A187168.P6812222805660701506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187162 (∑ j ∈ Finset.range (n + 1), f1 j + 22)

end

end A187168.P6812222805660701506

/-! ## A187168.P16936211459420275720

`A019429(A001105(n))*A187162(A000124(n+6)+6)`
-/

namespace A187168.P16936211459420275720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 (A001105 n).toNat * A187162 (A000124 (n + 6) + 6).toNat

end

end A187168.P16936211459420275720

/-!
# A187169: Number of 8-step self-avoiding walks on an n X n X n cube summed over all starting positions.

The programs for A187169, there is no canonical definition to state claims against.
-/

/-! ## A187169.P471575112984621517

`A187162(eq[13, A066657(n)])`
-/

namespace A187169.P471575112984621517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187162 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187169.P471575112984621517

/-! ## A187169.P1273399264715618521

`A187162(A167487(n+6)+1)`
-/

namespace A187169.P1273399264715618521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187162 (A167487 (n + 6) + 1).toNat

end

end A187169.P1273399264715618521

/-! ## A187169.P13297764376413290056

`A187162(A000217(n+7)+8)`
-/

namespace A187169.P13297764376413290056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187162 (A000217 (n + 7) + 8).toNat

end

end A187169.P13297764376413290056

/-! ## A187169.P15535605475762407692

`A187162(A152947(n+9)+7)`
-/

namespace A187169.P15535605475762407692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187162 (A152947 (n + 9) + 7).toNat

end

end A187169.P15535605475762407692

/-! ## A187169.P7513760126556090735

`A187162(eq[9, A131818(n+1)])`
-/

namespace A187169.P7513760126556090735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187162 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187169.P7513760126556090735

/-!
# A187170: Number of 9-step self-avoiding walks on an n X n X n cube summed over all starting positions.

The programs for A187170, there is no canonical definition to state claims against.
-/

/-! ## A187170.P3901923793840768661

`A187162(eq[17, A066657(n)])`
-/

namespace A187170.P3901923793840768661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187162 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187170.P3901923793840768661

/-! ## A187170.P5742348052123143254

`A187162(A056115(n+3)+24)`
-/

namespace A187170.P5742348052123143254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187162 (A056115 (n + 3) + 24).toNat

end

end A187170.P5742348052123143254

/-! ## A187170.P14949708273198888485

`A187162(eq[10, A131818(n+1)])`
-/

namespace A187170.P14949708273198888485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187162 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187170.P14949708273198888485

/-! ## A187170.P3450650827670912207

`A187162(eq[10, A135223(n+1)])`
-/

namespace A187170.P3450650827670912207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187162 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187170.P3450650827670912207

/-!
# A187171: Number of 10-step self-avoiding walks on an n X n X n cube summed over all starting positions.

The programs for A187171, there is no canonical definition to state claims against.
-/

/-! ## A187171.P13092401742864114379

`A187162(eq[10, A130270(n+1)])`
-/

namespace A187171.P13092401742864114379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187162 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187171.P13092401742864114379

/-! ## A187171.P9595976949714285189

`A187162(eq[11, A131818(n+1)])`
-/

namespace A187171.P9595976949714285189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187162 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187171.P9595976949714285189

/-!
# A187172: T(n,k) is the number of n-step left-handed knight's tours (moves only out two, left one) on a k X k board summed over all starting positions.

The programs for A187172, there is no canonical definition to state claims against.
-/

/-! ## A187172.P4791136613916151457

`and(-A308544(n+1), A187606(n+1))`
-/

namespace A187172.P4791136613916151457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A308544 (n + 1)) (A187606 (n + 1))

end

end A187172.P4791136613916151457

/-! ## A187172.P14040835378079388295

`and(-A308544(n+1), A244317(A188449(n+1))²)`
-/

namespace A187172.P14040835378079388295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A308544 (n + 1)) (A244317 (A188449 (n + 1)).toNat ^ 2)

end

end A187172.P14040835378079388295

/-! ## A187172.P700239218125054311

`and(-A308544(n+1), A258198(2*A238396(n))²)`
-/

namespace A187172.P700239218125054311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A308544 (n + 1)) (A258198 (2 * A238396 n).toNat ^ 2)

end

end A187172.P700239218125054311

/-!
# A187173: Number of 3-step left-handed knight's tours (moves only out two, left one) on an n X n board summed over all starting positions.

The programs for A187173, the canonical program `A187173.P1490319691721797313` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187173 has offset 1).

The definition of A187173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187173.P1490319691721797313

`A004275(n)*A004275(A004275(A004275(n))-n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A187173

/-- `A004275(n)*A004275(A004275(A004275(n))-n)` -/
def P1490319691721797313.Spec : Prop :=
  ∀ n, P1490319691721797313.a n = A187173 (n + 1)

theorem P1490319691721797313.correct : P1490319691721797313.Spec := by
  intro n
  simp only [A187173, Nat.add_sub_cancel]

end A187173

/-! ## A187173.P15091072945366730857

`2*(n-1)*A289207(6*A289207(n))`
-/

namespace A187173.P15091072945366730857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((n : ℤ) - 1) * A289207 (6 * A289207 n).toNat)

end

end A187173.P15091072945366730857

namespace A187173

/-- `2*(n-1)*A289207(6*A289207(n))` -/
def P15091072945366730857.Spec : Prop :=
  ∀ n, P15091072945366730857.a n = A187173 (n + 1)

end A187173

/-! ## A187173.P8992491500157233534

`A004275(n)*A289207(6*A289207(n))`
-/

namespace A187173.P8992491500157233534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n * A289207 (6 * A289207 n).toNat

end

end A187173.P8992491500157233534

namespace A187173

/-- `A004275(n)*A289207(6*A289207(n))` -/
def P8992491500157233534.Spec : Prop :=
  ∀ n, P8992491500157233534.a n = A187173 (n + 1)

end A187173

/-! ## A187173.P15909441650372211852

`(A004273(n)-1)*A289207(6*A289207(n))`
-/

namespace A187173.P15909441650372211852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004273 n - 1) * A289207 (6 * A289207 n).toNat

end

end A187173.P15909441650372211852

namespace A187173

/-- `(A004273(n)-1)*A289207(6*A289207(n))` -/
def P15909441650372211852.Spec : Prop :=
  ∀ n, P15909441650372211852.a n = A187173 (n + 1)

end A187173

/-! ## A187173.P10746314490886263086

`A289207(6*A289207(n))*A289207(A005843(n))`
-/

namespace A187173.P10746314490886263086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (6 * A289207 n).toNat * A289207 (A005843 n).toNat

end

end A187173.P10746314490886263086

namespace A187173

/-- `A289207(6*A289207(n))*A289207(A005843(n))` -/
def P10746314490886263086.Spec : Prop :=
  ∀ n, P10746314490886263086.a n = A187173 (n + 1)

end A187173

/-! ## A187173.P3100424791457825064

`(A004197(∑[4*(n+2)])+n)*A289207(6*A289207(n))`
-/

namespace A187173.P3100424791457825064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004197 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)) * A289207 (6 * A289207 n).toNat

end

end A187173.P3100424791457825064

namespace A187173

/-- `(A004197(∑[4*(n+2)])+n)*A289207(6*A289207(n))` -/
def P3100424791457825064.Spec : Prop :=
  ∀ n, P3100424791457825064.a n = A187173 (n + 1)

end A187173

/-!
# A187174: Number of 4-step left-handed knight's tours (moves only out two, left one) on an n X n board summed over all starting positions.

The programs for A187174, there is no canonical definition to state claims against.
-/

/-! ## A187174.P8754654051217044213

`A187172(∑[n+3]+7)`
-/

namespace A187174.P8754654051217044213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187172 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A187174.P8754654051217044213

/-! ## A187174.P11153087575391354552

`lcm(2, A187172(A052905(n)+9))`
-/

namespace A187174.P11153087575391354552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A187172 (A052905 n + 9).toNat)

end

end A187174.P11153087575391354552

/-! ## A187174.P4847808213315661323

`∑{d}[A187172(A052905(n)+9), A000010(#)]`
-/

namespace A187174.P4847808213315661323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187172 (A052905 n + 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A187174.P4847808213315661323

/-! ## A187174.P1605218561425251417

`char[A007318(n)]*A187172(A052905(n)+9)`
-/

namespace A187174.P1605218561425251417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A187172 (A052905 n + 9).toNat

end

end A187174.P1605218561425251417

/-! ## A187174.P5836528081756065949

`A007318(C(n, 2))*A187172(A052905(n)+9)`
-/

namespace A187174.P5836528081756065949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A187172 (A052905 n + 9).toNat

end

end A187174.P5836528081756065949

/-!
# A187175: Number of 5-step left-handed knight's tours (moves only out two, left one) on an n X n board summed over all starting positions.

The programs for A187175, there is no canonical definition to state claims against.
-/

/-! ## A187175.P9598938918325565211

`A187172(A167499(n+3))`
-/

namespace A187175.P9598938918325565211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187172 (A167499 (n + 3)).toNat

end

end A187175.P9598938918325565211

/-! ## A187175.P8683709830057160461

`A187172(A155212(n)+13)`
-/

namespace A187175.P8683709830057160461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187172 (A155212 n + 13).toNat

end

end A187175.P8683709830057160461

/-! ## A187175.P11925586081928715812

`A187172(A056000(n)+15)`
-/

namespace A187175.P11925586081928715812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187172 (A056000 n + 15).toNat

end

end A187175.P11925586081928715812

/-! ## A187175.P12021256623944282257

`A187172(eq[7, A066657(n)])`
-/

namespace A187175.P12021256623944282257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187172 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187175.P12021256623944282257

/-! ## A187175.P14710992339418785724

`A187172(A167614(n+3)+2)`
-/

namespace A187175.P14710992339418785724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187172 (A167614 (n + 3) + 2).toNat

end

end A187175.P14710992339418785724

/-!
# A187176: Number of 6-step left-handed knight's tours (moves only out two, left one) on an n X n board summed over all starting positions.

The programs for A187176, there is no canonical definition to state claims against.
-/

/-! ## A187176.P1723732978530931329

`A187172(∑[n+5]+16)`
-/

namespace A187176.P1723732978530931329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187172 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A187176.P1723732978530931329

/-! ## A187176.P5819861929065445576

`A034014(A000322(n))`
-/

namespace A187176.P5819861929065445576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034014 (A000322 n).toNat

end

end A187176.P5819861929065445576

/-! ## A187176.P3475852974810940570

`Δ[A153141(A293588(n))]`
-/

namespace A187176.P3475852974810940570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153141 (A293588 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187176.P3475852974810940570

/-!
# A187177: Number of 7-step left-handed knight's tours (moves only out two, left one) on an n X n board summed over all starting positions.

The programs for A187177, there is no canonical definition to state claims against.
-/

/-! ## A187177.P4885216520396604494

`A187172(A056119(n)+28)`
-/

namespace A187177.P4885216520396604494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187172 (A056119 n + 28).toNat

end

end A187177.P4885216520396604494

/-! ## A187177.P10371851713633867695

`A187172(A167499(n+5)+2)`
-/

namespace A187177.P10371851713633867695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187172 (A167499 (n + 5) + 2).toNat

end

end A187177.P10371851713633867695

/-! ## A187177.P11029576613718806735

`A187172(A167614(n+5)+4)`
-/

namespace A187177.P11029576613718806735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187172 (A167614 (n + 5) + 4).toNat

end

end A187177.P11029576613718806735

/-! ## A187177.P4977162469516814738

`A187172(A000124(n+6)+6)`
-/

namespace A187177.P4977162469516814738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187172 (A000124 (n + 6) + 6).toNat

end

end A187177.P4977162469516814738

/-! ## A187177.P6956258192001359955

`A187172(A000096(n+5)+8)`
-/

namespace A187177.P6956258192001359955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187172 (A000096 (n + 5) + 8).toNat

end

end A187177.P6956258192001359955

/-!
# A187178: Number of 8-step left-handed knight's tours (moves only out two, left one) on an n X n board summed over all starting positions.

The programs for A187178, there is no canonical definition to state claims against.
-/

/-! ## A187178.P15172998824720746873

`A187172(A167487(n+6)+1)`
-/

namespace A187178.P15172998824720746873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187172 (A167487 (n + 6) + 1).toNat

end

end A187178.P15172998824720746873

/-! ## A187178.P1429992256424194857

`A187172(A000124(n+7)+7)`
-/

namespace A187178.P1429992256424194857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187172 (A000124 (n + 7) + 7).toNat

end

end A187178.P1429992256424194857

/-! ## A187178.P3321573591715439061

`A187172(A000217(n+7)+8)`
-/

namespace A187178.P3321573591715439061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187172 (A000217 (n + 7) + 8).toNat

end

end A187178.P3321573591715439061

/-! ## A187178.P9614024347318503946

`A187172(A034856(n+6)+10)`
-/

namespace A187178.P9614024347318503946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187172 (A034856 (n + 6) + 10).toNat

end

end A187178.P9614024347318503946

/-! ## A187178.P9523834846229658061

`A187172(A046691(n+5)+12)`
-/

namespace A187178.P9523834846229658061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187172 (A046691 (n + 5) + 12).toNat

end

end A187178.P9523834846229658061

/-!
# A187179: Number of nontrivial compositions of differential operations and directional derivative of the n-th order on the space R^10.

The programs for A187179, the canonical program `A187179.P8637583078986797248` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187179 has offset 1).

The definition of A187179 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187179.P12283722768973400404

`A000045(n+1)+6`
-/

namespace A187179.P12283722768973400404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + 6

end

end A187179.P12283722768973400404

namespace A187179

/-- `A000045(n+1)+6` -/
def P12283722768973400404.Spec : Prop :=
  ∀ n, P12283722768973400404.a n = A187179 (n + 1)

end A187179

/-! ## A187179.P8637583078986797248

`2*a(n-1)-a(n-3)` with `a(0)=7, a(1)=7, a(2)=8`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A187179

/-- `2*a(n-1)-a(n-3)` -/
def P8637583078986797248.Spec : Prop :=
  ∀ n, P8637583078986797248.a n = A187179 (n + 1)

theorem P8637583078986797248.correct : P8637583078986797248.Spec := by
  intro n
  simp only [A187179, Nat.add_sub_cancel]

end A187179

/-! ## A187179.P15698889567226672877

`a(n-1)+a(n-2)-6` with `a(0)=7, a(1)=7`
-/

namespace A187179.P15698889567226672877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 7] fun n a =>
  a (n - 1) + (a (n - 2) - 6)

end

end A187179.P15698889567226672877

namespace A187179

/-- `a(n-1)+a(n-2)-6` -/
def P15698889567226672877.Spec : Prop :=
  ∀ n, P15698889567226672877.a n = A187179 (n + 1)

end A187179

/-! ## A187179.P17996125599295928726

`a(n-1)-(6-a(n-2))` with `a(0)=7, a(1)=7`
-/

namespace A187179.P17996125599295928726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 7] fun n a =>
  a (n - 1) - (6 - a (n - 2))

end

end A187179.P17996125599295928726

namespace A187179

/-- `a(n-1)-(6-a(n-2))` -/
def P17996125599295928726.Spec : Prop :=
  ∀ n, P17996125599295928726.a n = A187179 (n + 1)

end A187179

/-! ## A187179.P1567305403906309960

`A157729(n+1)+1`
-/

namespace A187179.P1567305403906309960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157729 (n + 1) + 1

end

end A187179.P1567305403906309960

namespace A187179

/-- `A157729(n+1)+1` -/
def P1567305403906309960.Spec : Prop :=
  ∀ n, P1567305403906309960.a n = A187179 (n + 1)

end A187179

/-! ## A187179.P12550893929365727828

`A157727(n+1)+2`
-/

namespace A187179.P12550893929365727828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157727 (n + 1) + 2

end

end A187179.P12550893929365727828

namespace A187179

/-- `A157727(n+1)+2` -/
def P12550893929365727828.Spec : Prop :=
  ∀ n, P12550893929365727828.a n = A187179 (n + 1)

end A187179

/-! ## A187179.P13815343204220852584

`A187107(n+1)-1`
-/

namespace A187179.P13815343204220852584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187107 (n + 1) - 1

end

end A187179.P13815343204220852584

namespace A187179

/-- `A187107(n+1)-1` -/
def P13815343204220852584.Spec : Prop :=
  ∀ n, P13815343204220852584.a n = A187179 (n + 1)

end A187179

/-! ## A187179.P15334784137482108745

`A157726(n+1)+3`
-/

namespace A187179.P15334784137482108745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 (n + 1) + 3

end

end A187179.P15334784137482108745

namespace A187179

/-- `A157726(n+1)+3` -/
def P15334784137482108745.Spec : Prop :=
  ∀ n, P15334784137482108745.a n = A187179 (n + 1)

end A187179

/-! ## A187179.P12269585429627798146

`A157725(n+1)+4`
-/

namespace A187179.P12269585429627798146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 (n + 1) + 4

end

end A187179.P12269585429627798146

namespace A187179

/-- `A157725(n+1)+4` -/
def P12269585429627798146.Spec : Prop :=
  ∀ n, P12269585429627798146.a n = A187179 (n + 1)

end A187179

/-! ## A187179.P12224072279857948066

`A001611(n+1)+5`
-/

namespace A187179.P12224072279857948066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 1) + 5

end

end A187179.P12224072279857948066

namespace A187179

/-- `A001611(n+1)+5` -/
def P12224072279857948066.Spec : Prop :=
  ∀ n, P12224072279857948066.a n = A187179 (n + 1)

end A187179

/-! ## A187179.P958357867471204222

`A000071(n+1)+7`
-/

namespace A187179.P958357867471204222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + 7

end

end A187179.P958357867471204222

namespace A187179

/-- `A000071(n+1)+7` -/
def P958357867471204222.Spec : Prop :=
  ∀ n, P958357867471204222.a n = A187179 (n + 1)

end A187179

/-! ## A187179.P12696130072084972338

`A212804(n+2)+6`
-/

namespace A187179.P12696130072084972338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) + 6

end

end A187179.P12696130072084972338

namespace A187179

/-- `A212804(n+2)+6` -/
def P12696130072084972338.Spec : Prop :=
  ∀ n, P12696130072084972338.a n = A187179 (n + 1)

end A187179

/-! ## A187179.P454838519988561268

`A324969(n+2)+6`
-/

namespace A187179.P454838519988561268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 2) + 6

end

end A187179.P454838519988561268

namespace A187179

/-- `A324969(n+2)+6` -/
def P454838519988561268.Spec : Prop :=
  ∀ n, P454838519988561268.a n = A187179 (n + 1)

end A187179

/-! ## A187179.P13036790983600780986

`A079977(2*n)+6`
-/

namespace A187179.P13036790983600780986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (2 * n) + 6

end

end A187179.P13036790983600780986

namespace A187179

/-- `A079977(2*n)+6` -/
def P13036790983600780986.Spec : Prop :=
  ∀ n, P13036790983600780986.a n = A187179 (n + 1)

end A187179

/-! ## A187179.P15770162176999414701

`6-A152163(n+3)`
-/

namespace A187179.P15770162176999414701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - A152163 (n + 3)

end

end A187179.P15770162176999414701

namespace A187179

/-- `6-A152163(n+3)` -/
def P15770162176999414701.Spec : Prop :=
  ∀ n, P15770162176999414701.a n = A187179 (n + 1)

end A187179

/-! ## A187179.P12521875379428797158

`A226649(2*n)+7`
-/

namespace A187179.P12521875379428797158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226649 (2 * n) + 7

end

end A187179.P12521875379428797158

namespace A187179

/-- `A226649(2*n)+7` -/
def P12521875379428797158.Spec : Prop :=
  ∀ n, P12521875379428797158.a n = A187179 (n + 1)

end A187179

/-! ## A187179.P12216323484782906948

`A081659(n)+6-n`
-/

namespace A187179.P12216323484782906948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081659 n + (6 - (n : ℤ))

end

end A187179.P12216323484782906948

namespace A187179

/-- `A081659(n)+6-n` -/
def P12216323484782906948.Spec : Prop :=
  ∀ n, P12216323484782906948.a n = A187179 (n + 1)

end A187179

/-! ## A187179.P4920630583090500508

`A174619(2*n+1)+6`
-/

namespace A187179.P4920630583090500508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174619 (2 * n + 1) + 6

end

end A187179.P4920630583090500508

namespace A187179

/-- `A174619(2*n+1)+6` -/
def P4920630583090500508.Spec : Prop :=
  ∀ n, P4920630583090500508.a n = A187179 (n + 1)

end A187179

/-!
# A187180: Parse the infinite string 0101010101... into distinct phrases 0, 1, 01, 010, 10, ...; a(n) = length of n-th phrase.

The programs for A187180, the canonical program `A187180.P4333977483086420231` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187180 has offset 1).

The definition of A187180 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187180.P4333977483086420231

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=2, a(5)=3`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A187180

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P4333977483086420231.Spec : Prop :=
  ∀ n, P4333977483086420231.a n = A187180 (n + 1)

theorem P4333977483086420231.correct : P4333977483086420231.Spec := by
  intro n
  simp only [A187180, Nat.add_sub_cancel]

end A187180

/-! ## A187180.P10441445030152524110

`floor(∑[n]/or(2, n))+1`
-/

namespace A187180.P10441445030152524110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.lor 2 n : ℚ)⌋ + 1

end

end A187180.P10441445030152524110

namespace A187180

/-- `floor(∑[n]/or(2, n))+1` -/
def P10441445030152524110.Spec : Prop :=
  ∀ n, P10441445030152524110.a n = A187180 (n + 1)

end A187180

/-! ## A187180.P17048638433518066026

`floor(cosh(log(n%4+n+1)))`
-/

namespace A187180.P17048638433518066026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log ((n % 4 + (n + 1) : ℕ) : ℝ))⌋

end

end A187180.P17048638433518066026

namespace A187180

/-- `floor(cosh(log(n%4+n+1)))` -/
def P17048638433518066026.Spec : Prop :=
  ∀ n, P17048638433518066026.a n = A187180 (n + 1)

end A187180

/-! ## A187180.P7722169175426441412

`a(n-4)+2` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=2`
-/

namespace A187180.P7722169175426441412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 3, 2] fun n a =>
  a (n - 4) + 2

end

end A187180.P7722169175426441412

namespace A187180

/-- `a(n-4)+2` -/
def P7722169175426441412.Spec : Prop :=
  ∀ n, (P7722169175426441412.a n : ℤ) = A187180 (n + 1)

end A187180

/-! ## A187180.P5143023193134362966

`n-and(-2, a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A187180.P5143023193134362966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) - Int.land (-2) (a (n - 2))

end

end A187180.P5143023193134362966

namespace A187180

/-- `n-and(-2, a(n-2))` -/
def P5143023193134362966.Spec : Prop :=
  ∀ n, P5143023193134362966.a n = A187180 (n + 1)

end A187180

/-! ## A187180.P8563150722513729555

`ceil((n+1)²/or(5, 2*n))`
-/

namespace A187180.P8563150722513729555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) ^ 2 : ℚ) / (Nat.lor 5 (2 * n) : ℚ)⌉

end

end A187180.P8563150722513729555

namespace A187180

/-- `ceil((n+1)²/or(5, 2*n))` -/
def P8563150722513729555.Spec : Prop :=
  ∀ n, P8563150722513729555.a n = A187180 (n + 1)

end A187180

/-! ## A187180.P1187614201137253411

`∑[and(2, n)-a(n-1)]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A187180.P1187614201137253411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  (Nat.land 2 n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187180.P1187614201137253411

namespace A187180

/-- `∑[and(2, n)-a(n-1)]` -/
def P1187614201137253411.Spec : Prop :=
  ∀ n, P1187614201137253411.a n = A187180 (n + 1)

end A187180

/-! ## A187180.P4581437098303169065

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=-1, a(5)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A187180.P4581437098303169065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1, -1, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187180.P4581437098303169065

namespace A187180

/-- `∑[floor(a(n-4))]` -/
def P4581437098303169065.Spec : Prop :=
  ∀ n, P4581437098303169065.a n = A187180 (n + 1)

end A187180

/-! ## A187180.P2761928705501408403

`2-floor(-a(n-4))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A187180.P2761928705501408403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 2] fun n a =>
  2 - (-a (n - 4))

end

end A187180.P2761928705501408403

namespace A187180

/-- `2-floor(-a(n-4))` -/
def P2761928705501408403.Spec : Prop :=
  ∀ n, P2761928705501408403.a n = A187180 (n + 1)

end A187180

/-! ## A187180.P14062729911994872793

`2-ceil(-a(n-4))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A187180.P14062729911994872793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 2] fun n a =>
  2 - (-a (n - 4))

end

end A187180.P14062729911994872793

namespace A187180

/-- `2-ceil(-a(n-4))` -/
def P14062729911994872793.Spec : Prop :=
  ∀ n, P14062729911994872793.a n = A187180 (n + 1)

end A187180

/-! ## A187180.P9291395956908852864

`2-round(-a(n-4))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=2`

`round` is left out, it is the identity on integers.
-/

namespace A187180.P9291395956908852864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 2] fun n a =>
  2 - (-a (n - 4))

end

end A187180.P9291395956908852864

namespace A187180

/-- `2-round(-a(n-4))` -/
def P9291395956908852864.Spec : Prop :=
  ∀ n, P9291395956908852864.a n = A187180 (n + 1)

end A187180

/-! ## A187180.P4311702341185588913

`n-2*floor(a(n-2)/2)` with `a(0)=1, a(1)=1`
-/

namespace A187180.P4311702341185588913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) - 2 * ⌊(a (n - 2) : ℚ) / 2⌋

end

end A187180.P4311702341185588913

namespace A187180

/-- `n-2*floor(a(n-2)/2)` -/
def P4311702341185588913.Spec : Prop :=
  ∀ n, P4311702341185588913.a n = A187180 (n + 1)

end A187180

/-! ## A187180.P12461595508684249766

`∑[(-a(n-2))^(n-3)]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A187180.P12461595508684249766
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  (-f1 (n - 2)) ^ ((n : ℤ) - 3 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187180.P12461595508684249766

namespace A187180

/-- `∑[(-a(n-2))^(n-3)]` -/
def P12461595508684249766.Spec : Prop :=
  ∀ n, P12461595508684249766.a n = (A187180 (n + 1) : ℚ)

end A187180

/-! ## A187180.P13440712878624331862

`∑[1/a(n-4)]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=-1, a(5)=1`
-/

namespace A187180.P13440712878624331862
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 1, 1, -1, 1] fun n f1 =>
  1 / f1 (n - 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187180.P13440712878624331862

namespace A187180

/-- `∑[1/a(n-4)]` -/
def P13440712878624331862.Spec : Prop :=
  ∀ n, P13440712878624331862.a n = (A187180 (n + 1) : ℚ)

end A187180

/-! ## A187180.P8212733916124002341

`∑[a(n-4)^3]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=-1, a(5)=1`
-/

namespace A187180.P8212733916124002341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1, -1, 1] fun n f1 =>
  f1 (n - 4) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187180.P8212733916124002341

namespace A187180

/-- `∑[a(n-4)^3]` -/
def P8212733916124002341.Spec : Prop :=
  ∀ n, P8212733916124002341.a n = A187180 (n + 1)

end A187180

/-! ## A187180.P10452878781222307607

`ceil((n+1)*(n+1)/or(5, 2*n))`
-/

namespace A187180.P10452878781222307607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) * ((n + 1 : ℚ) / (Nat.lor 5 (2 * n) : ℚ))⌉

end

end A187180.P10452878781222307607

namespace A187180

/-- `ceil((n+1)*(n+1)/or(5, 2*n))` -/
def P10452878781222307607.Spec : Prop :=
  ∀ n, P10452878781222307607.a n = A187180 (n + 1)

end A187180

/-! ## A187180.P12720193869271975182

`1-(a(n-gcd(2, a(n-1)))-n)` with `a(0)=1`
-/

namespace A187180.P12720193869271975182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a (n - Int.gcd 2 (a (n - 1))) - (n : ℤ))

end

end A187180.P12720193869271975182

namespace A187180

/-- `1-(a(n-gcd(2, a(n-1)))-n)` -/
def P12720193869271975182.Spec : Prop :=
  ∀ n, P12720193869271975182.a n = A187180 (n + 1)

end A187180

/-! ## A187180.P11951225230545022706

`and(1, a(n-2))-(a(n-2)-n)` with `a(0)=1, a(1)=1`
-/

namespace A187180.P11951225230545022706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.land 1 (a (n - 2)) - (a (n - 2) - (n : ℤ))

end

end A187180.P11951225230545022706

namespace A187180

/-- `and(1, a(n-2))-(a(n-2)-n)` -/
def P11951225230545022706.Spec : Prop :=
  ∀ n, P11951225230545022706.a n = A187180 (n + 1)

end A187180

/-! ## A187180.P16537763617684759254

`∑[4-a(n-2)]-a(n-1)-n` with `a(0)=1, a(1)=1`
-/

namespace A187180.P16537763617684759254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  4 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1) - (n : ℤ)

end

end A187180.P16537763617684759254

namespace A187180

/-- `∑[4-a(n-2)]-a(n-1)-n` -/
def P16537763617684759254.Spec : Prop :=
  ∀ n, P16537763617684759254.a n = A187180 (n + 1)

end A187180

/-! ## A187180.P16300987867372009486

`and(2, n)+n-round((and(2, n)+n-1)/2)`
-/

namespace A187180.P16300987867372009486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 n + n : ℤ) - SequenceMachineLib.roundAway (((Nat.land 2 n + n : ℤ) - 1 : ℚ) / 2)

end

end A187180.P16300987867372009486

namespace A187180

/-- `and(2, n)+n-round((and(2, n)+n-1)/2)` -/
def P16300987867372009486.Spec : Prop :=
  ∀ n, P16300987867372009486.a n = A187180 (n + 1)

end A187180

/-!
# A187181: Parse the infinite string 012012012012... into distinct phrases 0, 1, 2, 01, 20, 12, 012, ...; a(n) = length of n-th phrase.

The programs for A187181, the canonical program `A187181.P6476450187330902741` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187181 has offset 1).

The definition of A187181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187181.P7360417211593721901

`char[1]+∑[A049347(A071619(n))]`
-/

namespace A187181.P7360417211593721901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A071619 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A187181.P7360417211593721901

namespace A187181

/-- `char[1]+∑[A049347(A071619(n))]` -/
def P7360417211593721901.Spec : Prop :=
  ∀ n, P7360417211593721901.a n = A187181 (n + 1)

end A187181

/-! ## A187181.P6476450187330902741

`A028310(∑[A049347(A071619(n))])`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A187181

/-- `A028310(∑[A049347(A071619(n))])` -/
def P6476450187330902741.Spec : Prop :=
  ∀ n, P6476450187330902741.a n = A187181 (n + 1)

theorem P6476450187330902741.correct : P6476450187330902741.Spec := by
  intro n
  simp only [A187181, Nat.add_sub_cancel]

end A187181

/-! ## A187181.P6830829364054111502

`∑[A049347(A071619(n))]-A159075(n)`
-/

namespace A187181.P6830829364054111502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A071619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A159075 n

end

end A187181.P6830829364054111502

namespace A187181

/-- `∑[A049347(A071619(n))]-A159075(n)` -/
def P6830829364054111502.Spec : Prop :=
  ∀ n, P6830829364054111502.a n = A187181 (n + 1)

end A187181

/-! ## A187181.P9669582455903435212

`∑[A049347(A071619(n))]+A055672(2*n)`
-/

namespace A187181.P9669582455903435212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A071619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A055672 (2 * n)

end

end A187181.P9669582455903435212

namespace A187181

/-- `∑[A049347(A071619(n))]+A055672(2*n)` -/
def P9669582455903435212.Spec : Prop :=
  ∀ n, P9669582455903435212.a n = A187181 (n + 1)

end A187181

/-! ## A187181.P16996402979888159769

`∑{digits}[A165301(n+1), A003520(#)]`
-/

namespace A187181.P16996402979888159769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A003520 x).sum

end

end A187181.P16996402979888159769

namespace A187181

/-- `∑{digits}[A165301(n+1), A003520(#)]` -/
def P16996402979888159769.Spec : Prop :=
  ∀ n, P16996402979888159769.a n = A187181 (n + 1)

end A187181

/-!
# A187182: Parse the infinite string 0123012301230123... into distinct phrases 0, 1, 2, 3, 01, 23, 012, ...; a(n) = length of n-th phrase.

The programs for A187182, there is no canonical definition to state claims against.
-/

/-! ## A187182.P4947362552182838223

`∑{digits}[A165302(n+1), gcd(5, #)]`
-/

namespace A187182.P4947362552182838223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165302 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.gcd 5 x).sum

end

end A187182.P4947362552182838223

/-! ## A187182.P12601191998071435624

`∑{digits}[A165302(n+1), A000164(#)]`
-/

namespace A187182.P12601191998071435624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000164 x).sum

end

end A187182.P12601191998071435624

/-! ## A187182.P2345047619289165737

`∑{digits}[A165302(n+1), A000322(#)]`
-/

namespace A187182.P2345047619289165737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000322 x).sum

end

end A187182.P2345047619289165737

/-! ## A187182.P13493079623941862575

`∑{digits}[A165302(n+1), A001263(#)]`
-/

namespace A187182.P13493079623941862575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A001263 x).sum

end

end A187182.P13493079623941862575

/-! ## A187182.P16224375748564013084

`∑{digits}[A165302(n+1), A008277(#)]`
-/

namespace A187182.P16224375748564013084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A008277 x).sum

end

end A187182.P16224375748564013084

/-!
# A187183: Parse the infinite string 012340123401234012340... into distinct phrases 0, 1, 2, 3, 4, 01, 23, 40, 12, ...; a(n) = length of n-th phrase.

The programs for A187183, there is no canonical definition to state claims against.
-/

/-! ## A187183.P17606031154281193

`∑{digits}[A165303(n+1), A000164(#)]`
-/

namespace A187183.P17606031154281193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000164 x).sum

end

end A187183.P17606031154281193

/-! ## A187183.P3694897218776869310

`∑{digits}[A165303(n+1), A003639(#)]`
-/

namespace A187183.P3694897218776869310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A003639 x).sum

end

end A187183.P3694897218776869310

/-! ## A187183.P4858891966710371433

`∑{digits}[A165303(n+1), A007732(#)]`
-/

namespace A187183.P4858891966710371433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007732 x).sum

end

end A187183.P4858891966710371433

/-! ## A187183.P14862115334882709098

`∑{digits}[A165303(n+1), A007737(#)]`
-/

namespace A187183.P14862115334882709098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007737 x).sum

end

end A187183.P14862115334882709098

/-! ## A187183.P10868547236449592641

`∑{digits}[A165303(n+1), A179775(#)]`
-/

namespace A187183.P10868547236449592641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A179775 x).sum

end

end A187183.P10868547236449592641

/-!
# A187184: Parse the infinite string 0123450123450123450... into distinct phrases 0, 1, 2, 3, 4, 5, 01, 23, 45, 012, 34, ...; a(n) = length of n-th phrase.

The programs for A187184, there is no canonical definition to state claims against.
-/

/-! ## A187184.P16390834815074248732

`∑{digits}[A165304(n+1), A000164(#)]`
-/

namespace A187184.P16390834815074248732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000164 x).sum

end

end A187184.P16390834815074248732

/-! ## A187184.P6217858817596480357

`∑{digits}[A165304(n+1), A003639(#)]`
-/

namespace A187184.P6217858817596480357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A003639 x).sum

end

end A187184.P6217858817596480357

/-! ## A187184.P16342656086108317786

`∑{digits}[A165304(n+1), A007732(#)]`
-/

namespace A187184.P16342656086108317786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007732 x).sum

end

end A187184.P16342656086108317786

/-! ## A187184.P7011719825654257463

`∑{digits}[A165304(n+1), A007737(#)]`
-/

namespace A187184.P7011719825654257463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007737 x).sum

end

end A187184.P7011719825654257463

/-! ## A187184.P2190885385113277176

`∑{digits}[A165304(n+1), A043290(#)]`
-/

namespace A187184.P2190885385113277176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A043290 x).sum

end

end A187184.P2190885385113277176

/-!
# A187185: Parse the infinite string 0123456012345601234560... into distinct phrases 0, 1, 2, 3, 4, 5, 6, 01, 23, 45, 60, 12, 34, 56, 012, ...; a(n) = length of n-th phrase.

The programs for A187185, there is no canonical definition to state claims against.
-/

/-! ## A187185.P5463048093434524295

`∑[A168828(3*n+1)%2]`
-/

namespace A187185.P5463048093434524295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168828 (3 * n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187185.P5463048093434524295

/-! ## A187185.P16136384394521148211

`∑[char[7*n]]%A325067(n+2)`
-/

namespace A187185.P16136384394521148211
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A325067 (n + 2))

end

end A187185.P16136384394521148211

/-! ## A187185.P10842768282301926050

`ceil((A286520(2*n+3)+n)/7)`
-/

namespace A187185.P10842768282301926050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A286520 (2 * n + 3) + (n : ℤ) : ℚ) / 7⌉

end

end A187185.P10842768282301926050

/-! ## A187185.P14008187548631224406

`floor(n/7)%A176197(n+1)+1`
-/

namespace A187185.P14008187548631224406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n : ℚ) / 7⌋ (A176197 (n + 1)) + 1

end

end A187185.P14008187548631224406

/-! ## A187185.P10410342136947033900

`A347706(2*n+3)!*floor(n/7)+1`
-/

namespace A187185.P10410342136947033900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A347706 (2 * n + 3)).toNat : ℤ) * ⌊(n : ℚ) / 7⌋ + 1

end

end A187185.P10410342136947033900

/-!
# A187186: Parse the infinite string 0123456701234567012345670... into distinct phrases 0, 1, 2, 3, 4, 5, 6, 7, 01, 23, 45, 67, 012, 34, ...; a(n) = length of n-th phrase.

The programs for A187186, there is no canonical definition to state claims against.
-/

/-! ## A187186.P18356023482026956353

`∑{digits}[A165306(n+1), A057427(#)]`
-/

namespace A187186.P18356023482026956353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A057427 x).sum

end

end A187186.P18356023482026956353

/-! ## A187186.P1369529355044434186

`∑{digits}[A165306(n+1), A121657(#)]`
-/

namespace A187186.P1369529355044434186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A121657 x).sum

end

end A187186.P1369529355044434186

/-! ## A187186.P2130521090550530445

`∑{digits}[A165306(n+1), A152847(#)]`
-/

namespace A187186.P2130521090550530445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A152847 x).sum

end

end A187186.P2130521090550530445

/-! ## A187186.P12388958724177541007

`∑{digits}[A165306(n+1), A262432(#)]`
-/

namespace A187186.P12388958724177541007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A262432 x).sum

end

end A187186.P12388958724177541007

/-!
# A187187: Parse the infinite string 0123456780123456780123456780... into distinct phrases 0, 1, 2, 3, 4, 5, 6, 7, 8, 01, 23, 45, 67, 80, 12, 34, 56, 78, 012, ...; a(n) = length of n-th phrase.

The programs for A187187, there is no canonical definition to state claims against.
-/

/-! ## A187187.P6132041622149448489

`∑{digits}[A165307(n+1), A008406(#)]`
-/

namespace A187187.P6132041622149448489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A008406 x).sum

end

end A187187.P6132041622149448489

/-! ## A187187.P15642785476295953048

`∑{digits}[A165307(n+1), A039735(#)]`
-/

namespace A187187.P15642785476295953048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A039735 x).sum

end

end A187187.P15642785476295953048

/-! ## A187187.P17479202442407280468

`∑{digits}[A165307(n+1), A043562(#)]`
-/

namespace A187187.P17479202442407280468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A043562 x).sum

end

end A187187.P17479202442407280468

/-! ## A187187.P6431663435634847511

`∑{digits}[A165307(n+1), A055642(#)]`
-/

namespace A187187.P6431663435634847511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055642 x).sum

end

end A187187.P6431663435634847511

/-! ## A187187.P12405814830619723916

`∑{digits}[A165307(n+1), A187188(#)]`
-/

namespace A187187.P12405814830619723916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A187188 x).sum

end

end A187187.P12405814830619723916

/-!
# A187188: Parse the infinite string 0123456789012345678901234567890... into distinct phrases 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 01, 23, 45, 67, 89, 012, 34, 56, 78, 90, 12, 345, ...; a(n) = length of n-th phrase.

The programs for A187188, there is no canonical definition to state claims against.
-/

/-! ## A187188.P11410614953358041064

`A043568(A010785(n)*A282318(n+2))`
-/

namespace A187188.P11410614953358041064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 (A010785 n * A282318 (n + 2)).toNat

end

end A187188.P11410614953358041064

/-!
# A187189: T(n,k) = Number of n-turn rook's tours on a k X k board summed over all starting positions.

The programs for A187189, there is no canonical definition to state claims against.
-/

/-! ## A187189.P13512093383830028925

`A308276(A046441(n+1))+A118759(A059268(n)*A187296(n+1))`
-/

namespace A187189.P13512093383830028925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308276 (A046441 (n + 1)).toNat + A118759 (A059268 n * A187296 (n + 1)).toNat

end

end A187189.P13512093383830028925

/-!
# A187190: Number of 3-turn rook's tours on an n X n board summed over all starting positions.

The programs for A187190, the canonical program `A187190.P18246906013680540013` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187190 has offset 1).

The definition of A187190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187190.P18246906013680540013

`n*∑[12*n²-2]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A187190

/-- `n*∑[12*n²-2]` -/
def P18246906013680540013.Spec : Prop :=
  ∀ n, P18246906013680540013.a n = A187190 (n + 1)

theorem P18246906013680540013.correct : P18246906013680540013.Spec := by
  intro n
  simp only [A187190, Nat.add_sub_cancel]

end A187190

/-! ## A187190.P13566467071027983299

`lcm(n, Δ[(1-n²)²])-n`
-/

namespace A187190.P13566467071027983299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n ^ 2 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) (f1 (n + 1) - f1 n) : ℤ) - (n : ℤ)

end

end A187190.P13566467071027983299

namespace A187190

/-- `lcm(n, Δ[(1-n²)²])-n` -/
def P13566467071027983299.Spec : Prop :=
  ∀ n, P13566467071027983299.a n = A187190 (n + 1)

end A187190

/-! ## A187190.P18316096832420471742

`2*C(2*n, 2)/(1/(n+1))²`
-/

namespace A187190.P18316096832420471742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (2 * n) 2 : ℚ) / (1 / (n + 1 : ℚ)) ^ 2

end

end A187190.P18316096832420471742

namespace A187190

/-- `2*C(2*n, 2)/(1/(n+1))²` -/
def P18316096832420471742.Spec : Prop :=
  ∀ n, P18316096832420471742.a n = (A187190 (n + 1) : ℚ)

end A187190

/-! ## A187190.P9266267643097321766

`and(2*(n+1)²*C(2*n, 2), -2)`
-/

namespace A187190.P9266267643097321766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * (n + 1) ^ 2 * Nat.choose (2 * n) 2 : ℤ) (-2)

end

end A187190.P9266267643097321766

namespace A187190

/-- `and(2*(n+1)²*C(2*n, 2), -2)` -/
def P9266267643097321766.Spec : Prop :=
  ∀ n, P9266267643097321766.a n = A187190 (n + 1)

end A187190

/-! ## A187190.P6971744701941038252

`lcm(2*n, (n+1)*(2-(2*n+1)*2*n))`
-/

namespace A187190.P6971744701941038252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n : ℤ) ((n + 1 : ℤ) * (2 - ((2 * n + 1) * (2 * n) : ℤ)))

end

end A187190.P6971744701941038252

namespace A187190

/-- `lcm(2*n, (n+1)*(2-(2*n+1)*2*n))` -/
def P6971744701941038252.Spec : Prop :=
  ∀ n, (P6971744701941038252.a n : ℤ) = A187190 (n + 1)

end A187190

/-! ## A187190.P17107109307674624919

`A060300(n)-A035006(n+1)`
-/

namespace A187190.P17107109307674624919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060300 n - A035006 (n + 1)

end

end A187190.P17107109307674624919

namespace A187190

/-- `A060300(n)-A035006(n+1)` -/
def P17107109307674624919.Spec : Prop :=
  ∀ n, P17107109307674624919.a n = A187190 (n + 1)

end A187190

/-! ## A187190.P11590169911438148153

`A160538(n+1)-A187163(n+1)`
-/

namespace A187190.P11590169911438148153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160538 (n + 1) - A187163 (n + 1)

end

end A187190.P11590169911438148153

namespace A187190

/-- `A160538(n+1)-A187163(n+1)` -/
def P11590169911438148153.Spec : Prop :=
  ∀ n, P11590169911438148153.a n = A187190 (n + 1)

end A187190

/-! ## A187190.P13015388589293728212

`A160538(n+1)-2*A059986(n)`
-/

namespace A187190.P13015388589293728212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160538 (n + 1) - 2 * A059986 n

end

end A187190.P13015388589293728212

namespace A187190

/-- `A160538(n+1)-2*A059986(n)` -/
def P13015388589293728212.Spec : Prop :=
  ∀ n, P13015388589293728212.a n = A187190 (n + 1)

end A187190

/-! ## A187190.P12875491307271307122

`A002939(n)+A002939(n)*A005563(n)`
-/

namespace A187190.P12875491307271307122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 n + A002939 n * A005563 n

end

end A187190.P12875491307271307122

namespace A187190

/-- `A002939(n)+A002939(n)*A005563(n)` -/
def P12875491307271307122.Spec : Prop :=
  ∀ n, P12875491307271307122.a n = A187190 (n + 1)

end A187190

/-! ## A187190.P10967236004383012127

`A000330(n)*A008594(n)-A046092(n)`
-/

namespace A187190.P10967236004383012127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n * A008594 n - A046092 n

end

end A187190.P10967236004383012127

namespace A187190

/-- `A000330(n)*A008594(n)-A046092(n)` -/
def P10967236004383012127.Spec : Prop :=
  ∀ n, P10967236004383012127.a n = A187190 (n + 1)

end A187190

/-! ## A187190.P11580216221622652194

`A014105(n)*A046092(n)-A046092(n)`
-/

namespace A187190.P11580216221622652194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n * A046092 n - A046092 n

end

end A187190.P11580216221622652194

namespace A187190

/-- `A014105(n)*A046092(n)-A046092(n)` -/
def P11580216221622652194.Spec : Prop :=
  ∀ n, P11580216221622652194.a n = A187190 (n + 1)

end A187190

/-! ## A187190.P9912697534897555938

`A000384(n)+A000384(n)*A056220(n+1)`
-/

namespace A187190.P9912697534897555938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n + A000384 n * A056220 (n + 1)

end

end A187190.P9912697534897555938

namespace A187190

/-- `A000384(n)+A000384(n)*A056220(n+1)` -/
def P9912697534897555938.Spec : Prop :=
  ∀ n, P9912697534897555938.a n = A187190 (n + 1)

end A187190

/-! ## A187190.P16745246083604110375

`n*record[Δ[(n*(2-n))²]]-n`
-/

namespace A187190.P16745246083604110375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (2 - (n : ℤ))) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A187190.P16745246083604110375

namespace A187190

/-- `n*record[Δ[(n*(2-n))²]]-n` -/
def P16745246083604110375.Spec : Prop :=
  ∀ n, P16745246083604110375.a n = A187190 (n + 1)

end A187190

/-! ## A187190.P1034746413108389791

`A002522(n+1)*A002939(n)-A002939(n)`
-/

namespace A187190.P1034746413108389791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (n + 1) * A002939 n - A002939 n

end

end A187190.P1034746413108389791

namespace A187190

/-- `A002522(n+1)*A002939(n)-A002939(n)` -/
def P1034746413108389791.Spec : Prop :=
  ∀ n, P1034746413108389791.a n = A187190 (n + 1)

end A187190

/-! ## A187190.P5508502795992355400

`A279905(Δ[n²])/2`
-/

namespace A187190.P5508502795992355400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279905 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A187190.P5508502795992355400

namespace A187190

/-- `A279905(Δ[n²])/2` -/
def P5508502795992355400.Spec : Prop :=
  ∀ n, P5508502795992355400.a n = (A187190 (n + 1) : ℚ)

end A187190

/-!
# A187191: Number of 4-turn rook's tours on an n X n board summed over all starting positions.

The programs for A187191, the canonical program `A187191.P14870004376443903265` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187191 has offset 1).

The definition of A187191 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187191.P4120478342741271414

`8*(n+1)^5-34*(n+1)^4+48*(n+1)^3-22*(n+1)²`
-/

namespace A187191.P4120478342741271414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 1) ^ 5 : ℤ) - (34 * (n + 1) ^ 4 : ℤ) + (48 * (n + 1) ^ 3 : ℤ) - (22 * (n + 1) ^ 2 : ℤ)

end

end A187191.P4120478342741271414

namespace A187191

/-- `8*(n+1)^5-34*(n+1)^4+48*(n+1)^3-22*(n+1)²` -/
def P4120478342741271414.Spec : Prop :=
  ∀ n, P4120478342741271414.a n = A187191 (n + 1)

end A187191

/-! ## A187191.P14870004376443903265

`(A260260(n)+A000217(n))*(n+1)²`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A187191

/-- `(A260260(n)+A000217(n))*(n+1)²` -/
def P14870004376443903265.Spec : Prop :=
  ∀ n, P14870004376443903265.a n = A187191 (n + 1)

theorem P14870004376443903265.correct : P14870004376443903265.Spec := by
  intro n
  simp only [A187191, Nat.add_sub_cancel]

end A187191

/-! ## A187191.P12816356801760326898

`(A057566(2*n)-n²)*2*(n+1)²`
-/

namespace A187191.P12816356801760326898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057566 (2 * n) - (n ^ 2 : ℤ)) * (2 * (n + 1) ^ 2 : ℤ)

end

end A187191.P12816356801760326898

namespace A187191

/-- `(A057566(2*n)-n²)*2*(n+1)²` -/
def P12816356801760326898.Spec : Prop :=
  ∀ n, P12816356801760326898.a n = A187191 (n + 1)

end A187191

/-! ## A187191.P1320963676720225568

`∑[2*lcm(n, 3*n+1)]*A014848(A004273(n))`
-/

namespace A187191.P1320963676720225568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lcm n (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A014848 (A004273 n).toNat

end

end A187191.P1320963676720225568

namespace A187191

/-- `∑[2*lcm(n, 3*n+1)]*A014848(A004273(n))` -/
def P1320963676720225568.Spec : Prop :=
  ∀ n, P1320963676720225568.a n = A187191 (n + 1)

end A187191

/-! ## A187191.P5196957593124654233

`A014848(A004273(n))*A035006(n+1)`
-/

namespace A187191.P5196957593124654233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014848 (A004273 n).toNat * A035006 (n + 1)

end

end A187191.P5196957593124654233

namespace A187191

/-- `A014848(A004273(n))*A035006(n+1)` -/
def P5196957593124654233.Spec : Prop :=
  ∀ n, P5196957593124654233.a n = A187191 (n + 1)

end A187191

/-! ## A187191.P8976524990316922059

`n*(n+1)²*A000124(eq[n, n*n%4])`
-/

namespace A187191.P8976524990316922059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) ^ 2 : ℤ) * A000124 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A187191.P8976524990316922059

namespace A187191

/-- `n*(n+1)²*A000124(eq[n, n*n%4])` -/
def P8976524990316922059.Spec : Prop :=
  ∀ n, P8976524990316922059.a n = A187191 (n + 1)

end A187191

/-!
# A187192: Number of 5-turn rook's tours on an n X n board summed over all starting positions.

The programs for A187192, the canonical program `A187192.P9941186061569523802` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187192 has offset 1).

The definition of A187192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187192.P9941186061569523802

`16*(n+1)^6-98*(n+1)^5+228*(n+1)^4-238*(n+1)^3+92*(n+1)²`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A187192

/-- `16*(n+1)^6-98*(n+1)^5+228*(n+1)^4-238*(n+1)^3+92*(n+1)²` -/
def P9941186061569523802.Spec : Prop :=
  ∀ n, P9941186061569523802.a n = A187192 (n + 1)

theorem P9941186061569523802.correct : P9941186061569523802.Spec := by
  intro n
  simp only [A187192, Nat.add_sub_cancel]

end A187192

/-! ## A187192.P13221470691899070217

`A187189(A167499(n+3))`
-/

namespace A187192.P13221470691899070217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187189 (A167499 (n + 3)).toNat

end

end A187192.P13221470691899070217

namespace A187192

/-- `A187189(A167499(n+3))` -/
def P13221470691899070217.Spec : Prop :=
  ∀ n, P13221470691899070217.a n = A187192 (n + 1)

end A187192

/-! ## A187192.P10138857352074086913

`A187189(A155212(n)+13)`
-/

namespace A187192.P10138857352074086913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187189 (A155212 n + 13).toNat

end

end A187192.P10138857352074086913

namespace A187192

/-- `A187189(A155212(n)+13)` -/
def P10138857352074086913.Spec : Prop :=
  ∀ n, P10138857352074086913.a n = A187192 (n + 1)

end A187192

/-! ## A187192.P10476142396558686870

`A187189(A056000(n)+15)`
-/

namespace A187192.P10476142396558686870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187189 (A056000 n + 15).toNat

end

end A187192.P10476142396558686870

namespace A187192

/-- `A187189(A056000(n)+15)` -/
def P10476142396558686870.Spec : Prop :=
  ∀ n, P10476142396558686870.a n = A187192 (n + 1)

end A187192

/-! ## A187192.P9346138988880880072

`A187189(eq[7, A066657(n)])`
-/

namespace A187192.P9346138988880880072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187189 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187192.P9346138988880880072

namespace A187192

/-- `A187189(eq[7, A066657(n)])` -/
def P9346138988880880072.Spec : Prop :=
  ∀ n, P9346138988880880072.a n = A187192 (n + 1)

end A187192

/-!
# A187193: Number of 6-turn rook's tours on an n X n board summed over all starting positions.

The programs for A187193, there is no canonical definition to state claims against.
-/

/-! ## A187193.P15285913672140177397

`A187189(A056115(n)+21)`
-/

namespace A187193.P15285913672140177397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187189 (A056115 n + 21).toNat

end

end A187193.P15285913672140177397

/-! ## A187193.P11969914525169149921

`A187189(A167499(n+4)+1)`
-/

namespace A187193.P11969914525169149921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187189 (A167499 (n + 4) + 1).toNat

end

end A187193.P11969914525169149921

/-! ## A187193.P14044429832840566889

`A187189(A167614(n+4)+3)`
-/

namespace A187193.P14044429832840566889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187189 (A167614 (n + 4) + 3).toNat

end

end A187193.P14044429832840566889

/-! ## A187193.P249674090870033168

`A187189(A000124(n+5)+5)`
-/

namespace A187193.P249674090870033168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187189 (A000124 (n + 5) + 5).toNat

end

end A187193.P249674090870033168

/-! ## A187193.P7448457859251909696

`A187189(A000217(n+5)+6)`
-/

namespace A187193.P7448457859251909696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187189 (A000217 (n + 5) + 6).toNat

end

end A187193.P7448457859251909696

/-!
# A187194: Number of 7-turn rook's tours on an n X n board summed over all starting positions.

The programs for A187194, there is no canonical definition to state claims against.
-/

/-! ## A187194.P2026781014577901146

`A187189(A167487(n+5))`
-/

namespace A187194.P2026781014577901146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187189 (A167487 (n + 5)).toNat

end

end A187194.P2026781014577901146

/-! ## A187194.P13537247225880890606

`A187189(A056119(n)+28)`
-/

namespace A187194.P13537247225880890606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187189 (A056119 n + 28).toNat

end

end A187194.P13537247225880890606

/-! ## A187194.P8225424795105003963

`A187189(eq[11, A066657(n)])`
-/

namespace A187194.P8225424795105003963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187189 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187194.P8225424795105003963

/-! ## A187194.P16097165067152420046

`A187189(A166136(n+5)+1)`
-/

namespace A187194.P16097165067152420046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187189 (A166136 (n + 5) + 1).toNat

end

end A187194.P16097165067152420046

/-!
# A187195: Number of 8-turn rook's tours on an n X n board summed over all starting positions.

The programs for A187195, there is no canonical definition to state claims against.
-/

/-! ## A187195.P16385138106668017691

`A187189(eq[13, A066657(n)])`
-/

namespace A187195.P16385138106668017691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187189 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187195.P16385138106668017691

/-! ## A187195.P2220057698056675216

`A187189(A000124(n+7)+7)`
-/

namespace A187195.P2220057698056675216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187189 (A000124 (n + 7) + 7).toNat

end

end A187195.P2220057698056675216

/-! ## A187195.P8528012813222658865

`A187189(A052905(n+4)+13)`
-/

namespace A187195.P8528012813222658865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187189 (A052905 (n + 4) + 13).toNat

end

end A187195.P8528012813222658865

/-!
# A187199: Parse the Kolakoski sequence A000002 into distinct phrases 1, 2, 21, 12, 122, 1221, 121, 12212, 11, ...; a(n) = length of n-th phrase.

The programs for A187199, there is no canonical definition to state claims against.
-/

/-! ## A187199.P9297863809834451109

`A007302(A316961(n)+A071922(n))`
-/

namespace A187199.P9297863809834451109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A316961 n + A071922 n).toNat

end

end A187199.P9297863809834451109

