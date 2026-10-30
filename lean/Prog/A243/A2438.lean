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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C050
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A243800: Number of simple connected graphs on n nodes whose maximum size of an independent edge set is equal to 2.

The programs for A243800, there is no canonical definition to state claims against.
-/

/-! ## A243800.P5417438655600227792

`Δ[A004006(n)%A032011(n)]`
-/

namespace A243800.P5417438655600227792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004006 n) (A032011 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A243800.P5417438655600227792

/-!
# A243801: Number of simple connected graphs on n nodes whose maximum size of an independent edge set is equal to 3.

The programs for A243801, there is no canonical definition to state claims against.
-/

/-! ## A243801.P11600456049137518847

`A004247(A011856(3*n)+n)`
-/

namespace A243801.P11600456049137518847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 (A011856 (3 * n) + (n : ℤ)).toNat

end

end A243801.P11600456049137518847

/-! ## A243801.P18049910054043389574

`A051176(n)*A090030(A165200(n))`
-/

namespace A243801.P18049910054043389574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 n * A090030 (A165200 n).toNat

end

end A243801.P18049910054043389574

/-! ## A243801.P3543070182104239030

`A203552(n)*A307831(A063886(n))`
-/

namespace A243801.P3543070182104239030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203552 n * A307831 (A063886 n).toNat

end

end A243801.P3543070182104239030

/-!
# A243802: E.g.f.: exp( Sum_{n>=1} (exp(n*x) - 1)^n / n ).

The programs for A243802, there is no canonical definition to state claims against.
-/

/-! ## A243802.P5699060023958806774

`A284393(∑[A260503(n)]²)`
-/

namespace A243802.P5699060023958806774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284393 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A243802.P5699060023958806774

/-!
# A243806: G.f.: exp( Integral Sum_{n>=1} (n+1)!*x^(n-1) / Product_{k=1..n} (1-k*x) dx ).

The programs for A243806, there is no canonical definition to state claims against.
-/

/-! ## A243806.P2868154772419078240

`∑[A062108(∑[A245248(n)])]`
-/

namespace A243806.P2868154772419078240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245248 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243806.P2868154772419078240

/-! ## A243806.P1994487808128326048

`A091226(A190987(n))+A007865(n)`
-/

namespace A243806.P1994487808128326048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 (A190987 n).toNat + A007865 n

end

end A243806.P1994487808128326048

/-!
# A243807: G.f.: exp( Integral Sum_{n>=1} n!*n^(n-1)*x^(n-1) / Product_{k=1..n} (1+k*n*x) dx ).

The programs for A243807, there is no canonical definition to state claims against.
-/

/-! ## A243807.P7976446896798142043

`A319763(floor((n/2)²)+6)`
-/

namespace A243807.P7976446896798142043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319763 (⌊((n : ℚ) / 2) ^ 2⌋ + 6).toNat

end

end A243807.P7976446896798142043

/-!
# A243808: Position within the triangular array A226314(n)/A054531(n) of rationals x/y such that x < y, gcd(x,y)=1 and x+y odd.

The programs for A243808, there is no canonical definition to state claims against.
-/

/-! ## A243808.P7171053165055228889

`lt[acot(n), A321352(n+1)%2]`
-/

namespace A243808.P7171053165055228889
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321352 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A243808.P7171053165055228889

/-! ## A243808.P2104763402308802550

`eq[1, A321352(n+2)%2]+1`
-/

namespace A243808.P2104763402308802550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321352 (n + 2)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A243808.P2104763402308802550

/-! ## A243808.P3556466813574822684

`filter[A169581(n+2), A106465(#)]`
-/

namespace A243808.P3556466813574822684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169581 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A106465 (f1 j).toNat = 1) n)

end

end A243808.P3556466813574822684

/-! ## A243808.P6096770177312969551

`lt[0, A321352(A028310(n)+1)%2]`
-/

namespace A243808.P6096770177312969551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321352 (A028310 n + 1).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A243808.P6096770177312969551

/-! ## A243808.P16804788797135336320

`filter[A183301(2*(n+1)), A054521(#)]`
-/

namespace A243808.P16804788797135336320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183301 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A054521 (f1 j).toNat = 1) n)

end

end A243808.P16804788797135336320

/-! ## A243808.P7209687939195006183

`filter[A183301(2*(n+1)), A349221(#)]`
-/

namespace A243808.P7209687939195006183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183301 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A349221 (f1 j).toNat = 1) n)

end

end A243808.P7209687939195006183

/-! ## A243808.P2954246635004817910

`lt[A103919(n), A054521(n+1)]+1`
-/

namespace A243808.P2954246635004817910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103919 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A243808.P2954246635004817910

/-! ## A243808.P10136005783773361713

`lt[A097591(n), A139366(n+1)]+1`
-/

namespace A243808.P10136005783773361713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139366 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A243808.P10136005783773361713

/-! ## A243808.P15324678566894513008

`lt[A103919(n), A349221(n+1)]+1`
-/

namespace A243808.P15324678566894513008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103919 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A243808.P15324678566894513008

/-! ## A243808.P14656160572997885814

`eq[1, gcd(A111650(n+1), A341706(n))]`
-/

namespace A243808.P14656160572997885814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A111650 (n + 1)) (A341706 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243808.P14656160572997885814

/-!
# A243809: G.f.: exp( Integral Sum_{n>=1} n!*n^n*x^(n-1) / Product_{k=1..n} (1+k*n*x) dx ).

The programs for A243809, there is no canonical definition to state claims against.
-/

/-! ## A243809.P17745628667092564795

`A285760(C(n², n)+n)`
-/

namespace A243809.P17745628667092564795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285760 (Nat.choose (n ^ 2) n + n)

end

end A243809.P17745628667092564795

/-!
# A243810: Odd squares which are the sum of the divisors of some n.

The programs for A243810, there is no canonical definition to state claims against.
-/

/-! ## A243810.P6735809928233088582

`record[A093178(A228061(n+1))²]`
-/

namespace A243810.P6735809928233088582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A228061 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243810.P6735809928233088582

/-! ## A243810.P2468654535219889460

`record[A093178(sqrt(A038688(n+1)))²]`
-/

namespace A243810.P2468654535219889460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (SequenceMachineLib.roundAway (Real.sqrt (A038688 (n + 1) : ℝ))).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243810.P2468654535219889460

/-! ## A243810.P2136395949563055983

`∩[A028375(n+1), A038688(n+1)]`
-/

namespace A243810.P2136395949563055983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243810.P2136395949563055983

/-! ## A243810.P15142316308440612190

`∩[A060657(n+1), n²]`
-/

namespace A243810.P15142316308440612190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060657 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A243810.P15142316308440612190

/-! ## A243810.P2612948907777565120

`∩[A028982(n+1), A060657(n+1)]`
-/

namespace A243810.P2612948907777565120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243810.P2612948907777565120

/-!
# A243811: Numbers k such that 2*k+3 and 2*k+5 are both prime.

The programs for A243811, the canonical program `A243811.P316071856288439546` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243811 has offset 1).

The definition of A243811 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A040040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A243811.P316071856288439546

`A040040(n+1)-2`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A243811

/-- `A040040(n+1)-2` -/
def P316071856288439546.Spec : Prop :=
  ∀ n, P316071856288439546.a n = A243811 (n + 1)

theorem P316071856288439546.correct : P316071856288439546.Spec := by
  intro n
  simp only [A243811, Nat.add_sub_cancel]

end A243811

/-! ## A243811.P17114113677645929950

`col(A120876(n+1)-1)`
-/

namespace A243811.P17114113677645929950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A120876 (n + 1) - 1).toNat

end

end A243811.P17114113677645929950

namespace A243811

/-- `col(A120876(n+1)-1)` -/
def P17114113677645929950.Spec : Prop :=
  ∀ n, (P17114113677645929950.a n : ℤ) = A243811 (n + 1)

end A243811

/-! ## A243811.P4948440612639825151

`A144834(1+n)/2-1`
-/

namespace A243811.P4948440612639825151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144834 (1 + n) : ℚ) / 2 - 1

end

end A243811.P4948440612639825151

namespace A243811

/-- `A144834(1+n)/2-1` -/
def P4948440612639825151.Spec : Prop :=
  ∀ n, P4948440612639825151.a n = (A243811 (n + 1) : ℚ)

end A243811

/-! ## A243811.P15343527001409211287

`A014574(n+1)/2-2`
-/

namespace A243811.P15343527001409211287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014574 (n + 1) : ℚ) / 2 - 2

end

end A243811.P15343527001409211287

namespace A243811

/-- `A014574(n+1)/2-2` -/
def P15343527001409211287.Spec : Prop :=
  ∀ n, P15343527001409211287.a n = (A243811 (n + 1) : ℚ)

end A243811

/-! ## A243811.P12336053539938472142

`(A001359(n+1)-3)/2`
-/

namespace A243811.P12336053539938472142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001359 (n + 1) - 3 : ℚ) / 2

end

end A243811.P12336053539938472142

namespace A243811

/-- `(A001359(n+1)-3)/2` -/
def P12336053539938472142.Spec : Prop :=
  ∀ n, P12336053539938472142.a n = (A243811 (n + 1) : ℚ)

end A243811

/-! ## A243811.P6178246510275221881

`A054735(n+1)/4-2`
-/

namespace A243811.P6178246510275221881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054735 (n + 1) : ℚ) / 4 - 2

end

end A243811.P6178246510275221881

namespace A243811

/-- `A054735(n+1)/4-2` -/
def P6178246510275221881.Spec : Prop :=
  ∀ n, P6178246510275221881.a n = (A243811 (n + 1) : ℚ)

end A243811

/-! ## A243811.P14204372936901798138

`(A006512(n+1)-5)/2`
-/

namespace A243811.P14204372936901798138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006512 (n + 1) - 5 : ℚ) / 2

end

end A243811.P14204372936901798138

namespace A243811

/-- `(A006512(n+1)-5)/2` -/
def P14204372936901798138.Spec : Prop :=
  ∀ n, P14204372936901798138.a n = (A243811 (n + 1) : ℚ)

end A243811

/-! ## A243811.P14052360469539588745

`sqrt(A075369(n+1))/2-2`
-/

namespace A243811.P14052360469539588745
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A075369 (n + 1) : ℝ) / 2 - 2

end

end A243811.P14052360469539588745

namespace A243811

/-- `sqrt(A075369(n+1))/2-2` -/
def P14052360469539588745.Spec : Prop :=
  ∀ n, P14052360469539588745.a n = (A243811 (n + 1) : ℝ)

end A243811

/-! ## A243811.P7202862577867540194

`A163059(n+1)-2*(n+1)`
-/

namespace A243811.P7202862577867540194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163059 (n + 1) - (2 * (n + 1) : ℤ)

end

end A243811.P7202862577867540194

namespace A243811

/-- `A163059(n+1)-2*(n+1)` -/
def P7202862577867540194.Spec : Prop :=
  ∀ n, P7202862577867540194.a n = A243811 (n + 1)

end A243811

/-! ## A243811.P12555253985101281

`A071142(n+1)%A040040(n+1)`
-/

namespace A243811.P12555253985101281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071142 (n + 1)) (A040040 (n + 1))

end

end A243811.P12555253985101281

namespace A243811

/-- `A071142(n+1)%A040040(n+1)` -/
def P12555253985101281.Spec : Prop :=
  ∀ n, P12555253985101281.a n = A243811 (n + 1)

end A243811

/-! ## A243811.P10622490376111088002

`A108605(n+1)%A040040(n+1)`
-/

namespace A243811.P10622490376111088002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108605 (n + 1)) (A040040 (n + 1))

end

end A243811.P10622490376111088002

namespace A243811

/-- `A108605(n+1)%A040040(n+1)` -/
def P10622490376111088002.Spec : Prop :=
  ∀ n, P10622490376111088002.a n = A243811 (n + 1)

end A243811

/-! ## A243811.P13016762653844560723

`A120875(n+1)%A040040(n+1)`
-/

namespace A243811.P13016762653844560723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120875 (n + 1)) (A040040 (n + 1))

end

end A243811.P13016762653844560723

namespace A243811

/-- `A120875(n+1)%A040040(n+1)` -/
def P13016762653844560723.Spec : Prop :=
  ∀ n, P13016762653844560723.a n = A243811 (n + 1)

end A243811

/-! ## A243811.P17820254191985989470

`A144834(n+1)%A040040(n+1)`
-/

namespace A243811.P17820254191985989470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144834 (n + 1)) (A040040 (n + 1))

end

end A243811.P17820254191985989470

namespace A243811

/-- `A144834(n+1)%A040040(n+1)` -/
def P17820254191985989470.Spec : Prop :=
  ∀ n, P17820254191985989470.a n = A243811 (n + 1)

end A243811

/-! ## A243811.P8506612799825634605

`A168497(n+2)-2`
-/

namespace A243811.P8506612799825634605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 2) - 2

end

end A243811.P8506612799825634605

namespace A243811

/-- `A168497(n+2)-2` -/
def P8506612799825634605.Spec : Prop :=
  ∀ n, P8506612799825634605.a n = A243811 (n + 1)

end A243811

/-! ## A243811.P7846154564907931587

`record[A102551(n+2)-1]`
-/

namespace A243811.P7846154564907931587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102551 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243811.P7846154564907931587

namespace A243811

/-- `record[A102551(n+2)-1]` -/
def P7846154564907931587.Spec : Prop :=
  ∀ n, P7846154564907931587.a n = A243811 (n + 1)

end A243811

/-! ## A243811.P2018782718437995832

`(p?[A040976(n+1)]-3)/2`
-/

namespace A243811.P2018782718437995832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 3 : ℚ) / 2

end

end A243811.P2018782718437995832

namespace A243811

/-- `(p?[A040976(n+1)]-3)/2` -/
def P2018782718437995832.Spec : Prop :=
  ∀ n, P2018782718437995832.a n = (A243811 (n + 1) : ℚ)

end A243811

/-! ## A243811.P1283406763980352713

`(p?[A000040(n+1)-2]-3)/2`
-/

namespace A243811.P1283406763980352713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 3 : ℚ) / 2

end

end A243811.P1283406763980352713

namespace A243811

/-- `(p?[A000040(n+1)-2]-3)/2` -/
def P1283406763980352713.Spec : Prop :=
  ∀ n, P1283406763980352713.a n = (A243811 (n + 1) : ℚ)

end A243811

/-! ## A243811.P12427014268906704220

`A067076(A155752(n+1))`
-/

namespace A243811.P12427014268906704220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (A155752 (n + 1)).toNat

end

end A243811.P12427014268906704220

namespace A243811

/-- `A067076(A155752(n+1))` -/
def P12427014268906704220.Spec : Prop :=
  ∀ n, P12427014268906704220.a n = A243811 (n + 1)

end A243811

/-! ## A243811.P15006153309824791512

`A161720(A107770(n+1))+1`
-/

namespace A243811.P15006153309824791512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161720 (A107770 (n + 1)).toNat + 1

end

end A243811.P15006153309824791512

namespace A243811

/-- `A161720(A107770(n+1))+1` -/
def P15006153309824791512.Spec : Prop :=
  ∀ n, P15006153309824791512.a n = A243811 (n + 1)

end A243811

/-! ## A243811.P12781151221190916980

`A160830(A029707(n+1))-1`
-/

namespace A243811.P12781151221190916980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160830 (A029707 (n + 1)).toNat - 1

end

end A243811.P12781151221190916980

namespace A243811

/-- `A160830(A029707(n+1))-1` -/
def P12781151221190916980.Spec : Prop :=
  ∀ n, P12781151221190916980.a n = A243811 (n + 1)

end A243811

/-!
# A243812: Let x(0)x(1)... x(q-1)x(q) denote the decimal expansion of a number n. The sequence lists the numbers such that n and the number represented by its middle digits x(1)x(2)...x(q-1) have the same distinct prime divisors.

The programs for A243812, there is no canonical definition to state claims against.
-/

/-! ## A243812.P15935991761973538749

`A371152(A232766(n+1))`
-/

namespace A243812.P15935991761973538749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371152 (A232766 (n + 1)).toNat

end

end A243812.P15935991761973538749

/-!
# A243813: Table read by antidiagonals: T(n,k) is the curvature (truncated to integer) of a circle in a variation of nested Pappus chains (see Comments for details).

The programs for A243813, there is no canonical definition to state claims against.
-/

/-! ## A243813.P15780606257208447218

`ceil(A060734(n+1)/A002378(A004736(n+1)))`
-/

namespace A243813.P15780606257208447218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A060734 (n + 1) : ℚ) / (A002378 (A004736 (n + 1)).toNat : ℚ)⌉

end

end A243813.P15780606257208447218

/-! ## A243813.P1835539384263409166

`ceil(A060734(n+1)/A095832(A014132(n+1)))`
-/

namespace A243813.P1835539384263409166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A060734 (n + 1) : ℚ) / (A095832 (A014132 (n + 1)).toNat : ℚ)⌉

end

end A243813.P1835539384263409166

/-!
# A243814: Expansion of -(x*(1-sqrt((2*(1-sqrt(4*x^2+1)))/x+1)))/(1-sqrt(4*x^2+1)) - 1.

The programs for A243814, there is no canonical definition to state claims against.
-/

/-! ## A243814.P15320289372313082016

`A359402(A001405(n))+∑{e}[n+1, #-val(#!, 2)]`
-/

namespace A243814.P15320289372313082016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359402 (A001405 n).toNat + ∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2 : ℤ))

end

end A243814.P15320289372313082016

/-! ## A243814.P5240696516233523428

`A148143(n)-A330682(A100233(n))`
-/

namespace A243814.P5240696516233523428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148143 n - A330682 (A100233 n).toNat

end

end A243814.P5240696516233523428

/-! ## A243814.P6220176036827542611

`A008617(A193114(n)+A029858(n+1))`
-/

namespace A243814.P6220176036827542611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A193114 n + A029858 (n + 1)).toNat

end

end A243814.P6220176036827542611

/-! ## A243814.P10940822955563609335

`A133474(n)-A189132(A120814(n+1)+1)+n`
-/

namespace A243814.P10940822955563609335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133474 n - A189132 (A120814 (n + 1) + 1).toNat + (n : ℤ)

end

end A243814.P10940822955563609335

/-!
# A243815: Number of length n words on alphabet {0,1} such that the length of every maximal block of 0's (runs) is the same.

The programs for A243815, there is no canonical definition to state claims against.
-/

/-! ## A243815.P3116925572340527091

`∑[∑[A079501(n+1)]-A079501(n+1)]+1`
-/

namespace A243815.P3116925572340527091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079501 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A079501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A243815.P3116925572340527091

/-! ## A243815.P14019203016868388478

`∑[A097939(n+1)-A000079(n)]+1`
-/

namespace A243815.P14019203016868388478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097939 (n + 1) - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A243815.P14019203016868388478

/-! ## A243815.P14507755644640975317

`∑[A097939(n+1)%A000079(A028310(n))]`
-/

namespace A243815.P14507755644640975317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097939 (n + 1)) (A000079 (A028310 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243815.P14507755644640975317

/-! ## A243815.P8925622287047642714

`∑[A097939(n+1)-A324716(A008578(n+1))]`
-/

namespace A243815.P8925622287047642714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097939 (n + 1) - A324716 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243815.P8925622287047642714

/-! ## A243815.P15802674240035676671

`∑[and(A097939(n+1), A103456(n))]`
-/

namespace A243815.P15802674240035676671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097939 (n + 1)) (A103456 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243815.P15802674240035676671

/-!
# A243817: Primes p for which p - 4 and p^3 - 4 are primes.

The programs for A243817, there is no canonical definition to state claims against.
-/

/-! ## A243817.P3523331148870015125

`A375345(A131834(n+1))`
-/

namespace A243817.P3523331148870015125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375345 (A131834 (n + 1)).toNat

end

end A243817.P3523331148870015125

/-! ## A243817.P15204273974642310409

`A007528(lt[A000700(n), A117046(n)])`
-/

namespace A243817.P15204273974642310409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A243817.P15204273974642310409

/-!
# A243819: Composite numbers n such that every divisor of n greater than one contains the digit 0.

The programs for A243819, there is no canonical definition to state claims against.
-/

/-! ## A243819.P13096321303198302507

`filter[A243825(n+1), A005171(#)]`
-/

namespace A243819.P13096321303198302507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A243819.P13096321303198302507

/-!
# A243822: Number of k < n such that rad(k) | n but k does not divide n, where rad = A007947.

The programs for A243822, the canonical program `A243822.P11643441440473095318` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243822 has offset 1).

The definition of A243822 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243822.P2522384693082898832

`A355432(n+1)+A361235(n+1)`
-/

namespace A243822.P2522384693082898832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355432 (n + 1) + A361235 (n + 1)

end

end A243822.P2522384693082898832

namespace A243822

/-- `A355432(n+1)+A361235(n+1)` -/
def P2522384693082898832.Spec : Prop :=
  ∀ n, P2522384693082898832.a n = A243822 (n + 1)

end A243822

/-! ## A243822.P11643441440473095318

`A010846(n+1)-A000005(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A243822

/-- `A010846(n+1)-A000005(n+1)` -/
def P11643441440473095318.Spec : Prop :=
  ∀ n, P11643441440473095318.a n = A243822 (n + 1)

theorem P11643441440473095318.correct : P11643441440473095318.Spec := by
  intro n
  simp only [A243822, Nat.add_sub_cancel]

end A243822

/-! ## A243822.P6116805350980226816

`A045763(n+1)-A243823(n+1)`
-/

namespace A243822.P6116805350980226816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (n + 1) - A243823 (n + 1)

end

end A243822.P6116805350980226816

namespace A243822

/-- `A045763(n+1)-A243823(n+1)` -/
def P6116805350980226816.Spec : Prop :=
  ∀ n, P6116805350980226816.a n = A243822 (n + 1)

theorem P6116805350980226816.correct : P6116805350980226816.Spec := by
  intro n
  simp only [A243822, Nat.add_sub_cancel, A243822.P6116805350980226816.a, A243822.P11643441440473095318.a, A000005, A000005.P16091521709108585461.a, A010846, A010846.P14508317490206257509.f1, A010846.P14508317490206257509.a, A045763, A045763.P9156243808986750239.a, A243823, A243823.P1309405451730701218.a, A000010, A000010.P4673923239450215316.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A003557, A003557.P6364735403900941810.a, A051731, A051731.P11318043630102858095.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A000007, A000007.P6599383543502402472.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A243822

/-! ## A243822.P13518121587856221711

`n+1-A000010(n+1)-A000005(n+1)-A243823(n+1)+1`
-/

namespace A243822.P13518121587856221711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000010 (n + 1) - A000005 (n + 1) - A243823 (n + 1) + 1

end

end A243822.P13518121587856221711

namespace A243822

/-- `n+1-A000010(n+1)-A000005(n+1)-A243823(n+1)+1` -/
def P13518121587856221711.Spec : Prop :=
  ∀ n, P13518121587856221711.a n = A243822 (n + 1)

theorem P13518121587856221711.correct : P13518121587856221711.Spec := by
  intro n
  simp only [A243822, Nat.add_sub_cancel, A243822.P13518121587856221711.a, A243822.P11643441440473095318.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A010846, A010846.P14508317490206257509.f1, A010846.P14508317490206257509.a, A243823, A243823.P1309405451730701218.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A045763, A045763.P9156243808986750239.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A243822

/-! ## A243822.P4533378103186491221

`A299990(n+1)+A000005(n+1)`
-/

namespace A243822.P4533378103186491221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299990 (n + 1) + A000005 (n + 1)

end

end A243822.P4533378103186491221

namespace A243822

/-- `A299990(n+1)+A000005(n+1)` -/
def P4533378103186491221.Spec : Prop :=
  ∀ n, P4533378103186491221.a n = A243822 (n + 1)

theorem P4533378103186491221.correct : P4533378103186491221.Spec := by
  intro n
  simp only [A243822, Nat.add_sub_cancel, A243822.P4533378103186491221.a, A243822.P11643441440473095318.a, A000005, A000005.P16091521709108585461.a, A010846, A010846.P14508317490206257509.f1, A010846.P14508317490206257509.a, A299990, A299990.P6118966537885348026.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A243822

/-! ## A243822.P7745562217048555664

`A049820(n+1)-A010847(n+1)`
-/

namespace A243822.P7745562217048555664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) - A010847 (n + 1)

end

end A243822.P7745562217048555664

namespace A243822

/-- `A049820(n+1)-A010847(n+1)` -/
def P7745562217048555664.Spec : Prop :=
  ∀ n, P7745562217048555664.a n = A243822 (n + 1)

theorem P7745562217048555664.correct : P7745562217048555664.Spec := by
  intro n
  simp only [A243822, Nat.add_sub_cancel, A243822.P7745562217048555664.a, A243822.P11643441440473095318.a, A000005, A000005.P16091521709108585461.a, A010846, A010846.P14508317490206257509.f1, A010846.P14508317490206257509.a, A010847, A010847.P7704435999083110322.a, A049820, A049820.P9428372222244335888.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A243822

/-! ## A243822.P10489848958652094944

`A243823(n+1)-A300858(n+1)`
-/

namespace A243822.P10489848958652094944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243823 (n + 1) - A300858 (n + 1)

end

end A243822.P10489848958652094944

namespace A243822

/-- `A243823(n+1)-A300858(n+1)` -/
def P10489848958652094944.Spec : Prop :=
  ∀ n, P10489848958652094944.a n = A243822 (n + 1)

theorem P10489848958652094944.correct : P10489848958652094944.Spec := by
  intro n
  simp only [A243822, Nat.add_sub_cancel, A243822.P10489848958652094944.a, A243822.P11643441440473095318.a, A000005, A000005.P16091521709108585461.a, A010846, A010846.P14508317490206257509.f1, A010846.P14508317490206257509.a, A243823, A243823.P1309405451730701218.a, A300858, A300858.P9935168087101521703.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A045763, A045763.P9156243808986750239.a, A000010, A000010.P4673923239450215316.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A003557, A003557.P6364735403900941810.a, A048158, A048158.P1757030368331788429.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A243822

/-! ## A243822.P5012818286406483219

`A365788(n+1)-A372720(n+1)`
-/

namespace A243822.P5012818286406483219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365788 (n + 1) - A372720 (n + 1)

end

end A243822.P5012818286406483219

namespace A243822

/-- `A365788(n+1)-A372720(n+1)` -/
def P5012818286406483219.Spec : Prop :=
  ∀ n, P5012818286406483219.a n = A243822 (n + 1)

end A243822

/-! ## A243822.P14026044026802819828

`A046640(n+1)-(A243823(n+1)+1)`
-/

namespace A243822.P14026044026802819828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046640 (n + 1) - (A243823 (n + 1) + 1)

end

end A243822.P14026044026802819828

namespace A243822

/-- `A046640(n+1)-(A243823(n+1)+1)` -/
def P14026044026802819828.Spec : Prop :=
  ∀ n, P14026044026802819828.a n = A243822 (n + 1)

theorem P14026044026802819828.correct : P14026044026802819828.Spec := by
  intro n
  simp only [A243822, Nat.add_sub_cancel, A243822.P14026044026802819828.a, A243822.P11643441440473095318.a, A000005, A000005.P16091521709108585461.a, A010846, A010846.P14508317490206257509.f1, A010846.P14508317490206257509.a, A046640, A046640.P10355392584185486359.a, A243823, A243823.P1309405451730701218.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A045763, A045763.P9156243808986750239.a, A000010, A000010.P4673923239450215316.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A003557, A003557.P6364735403900941810.a, A048158, A048158.P1757030368331788429.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A243822

/-! ## A243822.P57657209139064580

`(A299990(n+1)+A010846(n+1))/2`
-/

namespace A243822.P57657209139064580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299990 (n + 1) + A010846 (n + 1) : ℚ) / 2

end

end A243822.P57657209139064580

namespace A243822

/-- `(A299990(n+1)+A010846(n+1))/2` -/
def P57657209139064580.Spec : Prop :=
  ∀ n, P57657209139064580.a n = (A243822 (n + 1) : ℚ)

theorem P57657209139064580.correct : P57657209139064580.Spec := by
  intro n
  simp only [A243822, Nat.add_sub_cancel, A243822.P57657209139064580.a, A243822.P11643441440473095318.a, A000005, A000005.P16091521709108585461.a, A010846, A010846.P14508317490206257509.f1, A010846.P14508317490206257509.a, A299990, A299990.P6118966537885348026.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A243822

/-! ## A243822.P7437999472013264915

`A299990(n+1)+A062011(n+1)/2`
-/

namespace A243822.P7437999472013264915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299990 (n + 1) : ℚ) + (A062011 (n + 1) : ℚ) / 2

end

end A243822.P7437999472013264915

namespace A243822

/-- `A299990(n+1)+A062011(n+1)/2` -/
def P7437999472013264915.Spec : Prop :=
  ∀ n, P7437999472013264915.a n = (A243822 (n + 1) : ℚ)

theorem P7437999472013264915.correct : P7437999472013264915.Spec := by
  intro n
  simp only [A243822, Nat.add_sub_cancel, A243822.P7437999472013264915.a, A243822.P11643441440473095318.a, A000005, A000005.P16091521709108585461.a, A010846, A010846.P14508317490206257509.f1, A010846.P14508317490206257509.a, A062011, A062011.P17525320077853469406.a, A299990, A299990.P6118966537885348026.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A243822

/-! ## A243822.P6013649325266815256

`A010846(n+1)-A062011(n+1)/2`
-/

namespace A243822.P6013649325266815256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010846 (n + 1) : ℚ) - (A062011 (n + 1) : ℚ) / 2

end

end A243822.P6013649325266815256

namespace A243822

/-- `A010846(n+1)-A062011(n+1)/2` -/
def P6013649325266815256.Spec : Prop :=
  ∀ n, P6013649325266815256.a n = (A243822 (n + 1) : ℚ)

theorem P6013649325266815256.correct : P6013649325266815256.Spec := by
  intro n
  simp only [A243822, Nat.add_sub_cancel, A243822.P6013649325266815256.a, A243822.P11643441440473095318.a, A000005, A000005.P16091521709108585461.a, A010846, A010846.P14508317490206257509.f1, A010846.P14508317490206257509.a, A062011, A062011.P17525320077853469406.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A243822

/-! ## A243822.P10588440038891809429

`(A045763(n+1)-A300858(n+1))/2`
-/

namespace A243822.P10588440038891809429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045763 (n + 1) - A300858 (n + 1) : ℚ) / 2

end

end A243822.P10588440038891809429

namespace A243822

/-- `(A045763(n+1)-A300858(n+1))/2` -/
def P10588440038891809429.Spec : Prop :=
  ∀ n, P10588440038891809429.a n = (A243822 (n + 1) : ℚ)

theorem P10588440038891809429.correct : P10588440038891809429.Spec := by
  intro n
  simp only [A243822, Nat.add_sub_cancel, A243822.P10588440038891809429.a, A243822.P11643441440473095318.a, A000005, A000005.P16091521709108585461.a, A010846, A010846.P14508317490206257509.f1, A010846.P14508317490206257509.a, A045763, A045763.P9156243808986750239.a, A300858, A300858.P9935168087101521703.a, A000010, A000010.P4673923239450215316.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A243823, A243823.P1309405451730701218.a, A003557, A003557.P6364735403900941810.a, A051731, A051731.P11318043630102858095.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A000007, A000007.P6599383543502402472.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A243822

/-! ## A243822.P15126920696978372009

`2-A061468(n+1)+n-A243823(n+1)`
-/

namespace A243822.P15126920696978372009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A061468 (n + 1) + (n : ℤ) - A243823 (n + 1)

end

end A243822.P15126920696978372009

namespace A243822

/-- `2-A061468(n+1)+n-A243823(n+1)` -/
def P15126920696978372009.Spec : Prop :=
  ∀ n, P15126920696978372009.a n = A243822 (n + 1)

theorem P15126920696978372009.correct : P15126920696978372009.Spec := by
  intro n
  simp only [A243822, Nat.add_sub_cancel, A243822.P15126920696978372009.a, A243822.P11643441440473095318.a, A000005, A000005.P16091521709108585461.a, A010846, A010846.P14508317490206257509.f1, A010846.P14508317490206257509.a, A061468, A061468.P5735709615131522244.a, A243823, A243823.P1309405451730701218.a, A000010, A000010.P4673923239450215316.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A045763, A045763.P9156243808986750239.a, A003557, A003557.P6364735403900941810.a, A051731, A051731.P11318043630102858095.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A000007, A000007.P6599383543502402472.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A243822

/-! ## A243822.P9174139464429058055

`A049820(n+1)-((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1)-A243823(n+1)`
-/

namespace A243822.P9174139464429058055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049820 (n + 1) : ℚ) - ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) - 1) - (A243823 (n + 1) : ℚ)

end

end A243822.P9174139464429058055

namespace A243822

/-- `A049820(n+1)-((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1)-A243823(n+1)` -/
def P9174139464429058055.Spec : Prop :=
  ∀ n, P9174139464429058055.a n = (A243822 (n + 1) : ℚ)

end A243822

/-! ## A243822.P7811958483542001469

`A010846(n+1)+A006218(n)-A006218(n+1)`
-/

namespace A243822.P7811958483542001469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (n + 1) + (A006218 n - A006218 (n + 1))

end

end A243822.P7811958483542001469

namespace A243822

/-- `A010846(n+1)+A006218(n)-A006218(n+1)` -/
def P7811958483542001469.Spec : Prop :=
  ∀ n, P7811958483542001469.a n = A243822 (n + 1)

end A243822

/-! ## A243822.P7004103237777542346

`A008479(n+1)+A365788(n+1)-A000005(n+1)`
-/

namespace A243822.P7004103237777542346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 (n + 1) + (A365788 (n + 1) - A000005 (n + 1))

end

end A243822.P7004103237777542346

namespace A243822

/-- `A008479(n+1)+A365788(n+1)-A000005(n+1)` -/
def P7004103237777542346.Spec : Prop :=
  ∀ n, P7004103237777542346.a n = A243822 (n + 1)

end A243822

/-! ## A243822.P1149841172265101872

`A010846(n+1)-(A372720(n+1)+A008479(n+1))`
-/

namespace A243822.P1149841172265101872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (n + 1) - (A372720 (n + 1) + A008479 (n + 1))

end

end A243822.P1149841172265101872

namespace A243822

/-- `A010846(n+1)-(A372720(n+1)+A008479(n+1))` -/
def P1149841172265101872.Spec : Prop :=
  ∀ n, P1149841172265101872.a n = A243822 (n + 1)

end A243822

/-! ## A243822.P10094814487163002126

`A381800(n+1)-(A381804(n+1)+A000005(n+1))`
-/

namespace A243822.P10094814487163002126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381800 (n + 1) - (A381804 (n + 1) + A000005 (n + 1))

end

end A243822.P10094814487163002126

namespace A243822

/-- `A381800(n+1)-(A381804(n+1)+A000005(n+1))` -/
def P10094814487163002126.Spec : Prop :=
  ∀ n, P10094814487163002126.a n = A243822 (n + 1)

end A243822

/-! ## A243822.P3801377238991481895

`A045763(n+1)-(A360543(n+1)+A360480(n+1))`
-/

namespace A243822.P3801377238991481895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (n + 1) - (A360543 (n + 1) + A360480 (n + 1))

end

end A243822.P3801377238991481895

namespace A243822

/-- `A045763(n+1)-(A360543(n+1)+A360480(n+1))` -/
def P3801377238991481895.Spec : Prop :=
  ∀ n, P3801377238991481895.a n = A243822 (n + 1)

end A243822

/-!
# A243823: Number of k < n such that gcd(k,n) > 1 but rad(k) does not divide n, where rad = A007947.

The programs for A243823, the canonical program `A243823.P1309405451730701218` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243823 has offset 1).

The definition of A243823 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243823.P11937224763551657330

`A360480(n+1)+A360543(n+1)`
-/

namespace A243823.P11937224763551657330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360480 (n + 1) + A360543 (n + 1)

end

end A243823.P11937224763551657330

namespace A243823

/-- `A360480(n+1)+A360543(n+1)` -/
def P11937224763551657330.Spec : Prop :=
  ∀ n, P11937224763551657330.a n = A243823 (n + 1)

end A243823

/-! ## A243823.P1309405451730701218

`A045763(n+1)-A243822(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A243823

/-- `A045763(n+1)-A243822(n+1)` -/
def P1309405451730701218.Spec : Prop :=
  ∀ n, P1309405451730701218.a n = A243823 (n + 1)

theorem P1309405451730701218.correct : P1309405451730701218.Spec := by
  intro n
  simp only [A243823, Nat.add_sub_cancel]

end A243823

/-! ## A243823.P3907548346592748798

`A300858(n+1)+A243822(n+1)`
-/

namespace A243823.P3907548346592748798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300858 (n + 1) + A243822 (n + 1)

end

end A243823.P3907548346592748798

namespace A243823

/-- `A300858(n+1)+A243822(n+1)` -/
def P3907548346592748798.Spec : Prop :=
  ∀ n, P3907548346592748798.a n = A243823 (n + 1)

theorem P3907548346592748798.correct : P3907548346592748798.Spec := by
  intro n
  simp only [A243823, Nat.add_sub_cancel, A243823.P3907548346592748798.a, A243823.P1309405451730701218.a, A045763, A045763.P9156243808986750239.a, A243822, A243822.P11643441440473095318.a, A300858, A300858.P9935168087101521703.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A010846, A010846.P14508317490206257509.f1, A010846.P14508317490206257509.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A243823

/-! ## A243823.P5222880584205329183

`A381804(n+1)+A381803(n+1)`
-/

namespace A243823.P5222880584205329183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381804 (n + 1) + A381803 (n + 1)

end

end A243823.P5222880584205329183

namespace A243823

/-- `A381804(n+1)+A381803(n+1)` -/
def P5222880584205329183.Spec : Prop :=
  ∀ n, P5222880584205329183.a n = A243823 (n + 1)

end A243823

/-! ## A243823.P16941388525701319434

`A010847(n+1)-A109606(n+1)`
-/

namespace A243823.P16941388525701319434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010847 (n + 1) - A109606 (n + 1)

end

end A243823.P16941388525701319434

namespace A243823

/-- `A010847(n+1)-A109606(n+1)` -/
def P16941388525701319434.Spec : Prop :=
  ∀ n, P16941388525701319434.a n = A243823 (n + 1)

theorem P16941388525701319434.correct : P16941388525701319434.Spec := by
  intro n
  simp only [A243823, Nat.add_sub_cancel, A243823.P16941388525701319434.a, A243823.P1309405451730701218.a, A010847, A010847.P7704435999083110322.a, A045763, A045763.P9156243808986750239.a, A109606, A109606.P2415810041766612210.a, A243822, A243822.P11643441440473095318.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A010846, A010846.P14508317490206257509.f1, A010846.P14508317490206257509.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A243823

/-! ## A243823.P2587642996124192945

`A010847(n+1)+1-A000010(n+1)`
-/

namespace A243823.P2587642996124192945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010847 (n + 1) + (1 - A000010 (n + 1))

end

end A243823.P2587642996124192945

namespace A243823

/-- `A010847(n+1)+1-A000010(n+1)` -/
def P2587642996124192945.Spec : Prop :=
  ∀ n, P2587642996124192945.a n = A243823 (n + 1)

theorem P2587642996124192945.correct : P2587642996124192945.Spec := by
  intro n
  simp only [A243823, Nat.add_sub_cancel, A243823.P2587642996124192945.a, A243823.P1309405451730701218.a, A000010, A000010.P4673923239450215316.a, A010847, A010847.P7704435999083110322.a, A045763, A045763.P9156243808986750239.a, A243822, A243822.P11643441440473095318.a, A000005, A000005.P16091521709108585461.a, A003557, A003557.P6364735403900941810.a, A010846, A010846.P14508317490206257509.f1, A010846.P14508317490206257509.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A243823

/-! ## A243823.P548122318005568278

`(A300858(n+1)+A045763(n+1))/2`
-/

namespace A243823.P548122318005568278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300858 (n + 1) + A045763 (n + 1) : ℚ) / 2

end

end A243823.P548122318005568278

namespace A243823

/-- `(A300858(n+1)+A045763(n+1))/2` -/
def P548122318005568278.Spec : Prop :=
  ∀ n, P548122318005568278.a n = (A243823 (n + 1) : ℚ)

theorem P548122318005568278.correct : P548122318005568278.Spec := by
  intro n
  simp only [A243823, Nat.add_sub_cancel, A243823.P548122318005568278.a, A243823.P1309405451730701218.a, A045763, A045763.P9156243808986750239.a, A243822, A243822.P11643441440473095318.a, A300858, A300858.P9935168087101521703.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A010846, A010846.P14508317490206257509.f1, A010846.P14508317490206257509.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A243823

/-! ## A243823.P8406639634576867233

`A000005(n+1)+A045763(n+1)-A010846(n+1)`
-/

namespace A243823.P8406639634576867233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A045763 (n + 1) - A010846 (n + 1))

end

end A243823.P8406639634576867233

namespace A243823

/-- `A000005(n+1)+A045763(n+1)-A010846(n+1)` -/
def P8406639634576867233.Spec : Prop :=
  ∀ n, P8406639634576867233.a n = A243823 (n + 1)

theorem P8406639634576867233.correct : P8406639634576867233.Spec := by
  intro n
  simp only [A243823, Nat.add_sub_cancel, A243823.P8406639634576867233.a, A243823.P1309405451730701218.a, A000005, A000005.P16091521709108585461.a, A010846, A010846.P14508317490206257509.f1, A010846.P14508317490206257509.a, A045763, A045763.P9156243808986750239.a, A243822, A243822.P11643441440473095318.a, A000010, A000010.P4673923239450215316.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A003557, A003557.P6364735403900941810.a, A051731, A051731.P11318043630102858095.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A000007, A000007.P6599383543502402472.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A243823

/-! ## A243823.P10971522383628522859

`A010846(n+1)+A300858(n+1)-A000005(n+1)`
-/

namespace A243823.P10971522383628522859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (n + 1) + (A300858 (n + 1) - A000005 (n + 1))

end

end A243823.P10971522383628522859

namespace A243823

/-- `A010846(n+1)+A300858(n+1)-A000005(n+1)` -/
def P10971522383628522859.Spec : Prop :=
  ∀ n, P10971522383628522859.a n = A243823 (n + 1)

theorem P10971522383628522859.correct : P10971522383628522859.Spec := by
  intro n
  simp only [A243823, Nat.add_sub_cancel, A243823.P10971522383628522859.a, A243823.P1309405451730701218.a, A000005, A000005.P16091521709108585461.a, A010846, A010846.P14508317490206257509.f1, A010846.P14508317490206257509.a, A045763, A045763.P9156243808986750239.a, A243822, A243822.P11643441440473095318.a, A300858, A300858.P9935168087101521703.a, A000010, A000010.P4673923239450215316.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A003557, A003557.P6364735403900941810.a, A051731, A051731.P11318043630102858095.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A000007, A000007.P6599383543502402472.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A243823

/-!
# A243825: Numbers n such that every divisor greater than 1 contains the digit 0.

The programs for A243825, there is no canonical definition to state claims against.
-/

/-! ## A243825.P18305493268799625629

`∪[A056709(n+1), A243819(n+1)]`
-/

namespace A243825.P18305493268799625629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A243825.P18305493268799625629

/-!
# A243827: Number A(n,k) of Dyck paths of semilength n having exactly one occurrence of the consecutive step pattern given by the binary expansion of k, where 1=U=(1,1) and 0=D=(1,-1); square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A243827, there is no canonical definition to state claims against.
-/

/-! ## A243827.P10309668806455296046

`A160338(A082766(n+1))-A327180(A194844(n+1))`
-/

namespace A243827.P10309668806455296046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160338 (A082766 (n + 1)).toNat - A327180 (A194844 (n + 1)).toNat

end

end A243827.P10309668806455296046

/-! ## A243827.P14300644778077276942

`A010059(A283808(n+1)²)`
-/

namespace A243827.P14300644778077276942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A283808 (n + 1) ^ 2).toNat

end

end A243827.P14300644778077276942

/-! ## A243827.P5904274959250177

`A316864(xor(n, A099608(n)²))`
-/

namespace A243827.P5904274959250177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (Int.xor (n : ℤ) (A099608 n ^ 2)).toNat

end

end A243827.P5904274959250177

/-! ## A243827.P9662051514672992757

`A010059(A283808(n+1)^2)`
-/

namespace A243827.P9662051514672992757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A283808 (n + 1) ^ 2).toNat

end

end A243827.P9662051514672992757

/-! ## A243827.P17161685843956856712

`A341389(∑[∑[A045765(n+1)]])`
-/

namespace A243827.P17161685843956856712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045765 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341389 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A243827.P17161685843956856712

/-!
# A243828: Number A(n,k) of Dyck paths of semilength n having exactly two (possibly overlapping) occurrences of the consecutive step pattern given by the binary expansion of k, where 1=U=(1,1) and 0=D=(1,-1); square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A243828, there is no canonical definition to state claims against.
-/

/-! ## A243828.P10975963136154536999

`and(A014963(A189617(n+1)), A020474(n+2))`
-/

namespace A243828.P10975963136154536999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014963 (A189617 (n + 1)).toNat) (A020474 (n + 2))

end

end A243828.P10975963136154536999

/-!
# A243831: Number A(n,k) of Dyck paths of semilength n having exactly five (possibly overlapping) occurrences of the consecutive step pattern given by the binary expansion of k, where 1=U=(1,1) and 0=D=(1,-1); square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A243831, there is no canonical definition to state claims against.
-/

/-! ## A243831.P9573153991516990317

`A233905(A079126(n)^A233905(A008611(n)))`
-/

namespace A243831.P9573153991516990317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233905 (SequenceMachineLib.roundAway ((A079126 n : ℚ) ^ (A233905 (A008611 n).toNat : ℤ))).toNat

end

end A243831.P9573153991516990317

/-! ## A243831.P17223635661884130742

`A173068(5^A321396(n))`
-/

namespace A243831.P17223635661884130742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173068 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A321396 n : ℤ))).toNat

end

end A243831.P17223635661884130742

/-! ## A243831.P14916831010335101565

`A333479(5^A321396(n))`
-/

namespace A243831.P14916831010335101565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333479 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A321396 n : ℤ))).toNat

end

end A243831.P14916831010335101565

/-! ## A243831.P5637220031684103777

`A105517(A336757(n+1)!!)`
-/

namespace A243831.P5637220031684103777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105517 (Nat.factorial (Nat.factorial (A336757 (n + 1)).toNat))

end

end A243831.P5637220031684103777

/-! ## A243831.P2339478005469052053

`∑{d}[A051117(col(n)), #]`
-/

namespace A243831.P2339478005469052053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051117 (SequenceMachineLib.triCol n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A243831.P2339478005469052053

/-!
# A243832: Number A(n,k) of Dyck paths of semilength n having exactly six (possibly overlapping) occurrences of the consecutive step pattern given by the binary expansion of k, where 1=U=(1,1) and 0=D=(1,-1); square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A243832, there is no canonical definition to state claims against.
-/

/-! ## A243832.P16324374167886247873

`A056500(gcd(A059268(n), A329632(n)))`
-/

namespace A243832.P16324374167886247873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056500 (Int.gcd (A059268 n) (A329632 n))

end

end A243832.P16324374167886247873

/-! ## A243832.P4683401273383686558

`A192541(A088842(n+1)^A192541(n))`
-/

namespace A243832.P4683401273383686558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192541 (SequenceMachineLib.roundAway ((A088842 (n + 1) : ℚ) ^ (A192541 n : ℤ))).toNat

end

end A243832.P4683401273383686558

/-! ## A243832.P1163354336027391066

`A375623(C(A070081(n+1), 6))`
-/

namespace A243832.P1163354336027391066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375623 (Nat.choose (A070081 (n + 1)).toNat 6)

end

end A243832.P1163354336027391066

/-! ## A243832.P10777385719841424448

`A219390(gcd(A002260(n+1), A177813(n+1)))`
-/

namespace A243832.P10777385719841424448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219390 (Int.gcd (A002260 (n + 1)) (A177813 (n + 1)))

end

end A243832.P10777385719841424448

/-! ## A243832.P12820242197477681363

`A323928(gcd(n+1, A060800(n+1)))`
-/

namespace A243832.P12820242197477681363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323928 (Int.gcd (n + 1 : ℤ) (A060800 (n + 1)))

end

end A243832.P12820242197477681363

/-!
# A243833: Number A(n,k) of Dyck paths of semilength n having exactly seven (possibly overlapping) occurrences of the consecutive step pattern given by the binary expansion of k, where 1=U=(1,1) and 0=D=(1,-1); square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A243833, there is no canonical definition to state claims against.
-/

/-! ## A243833.P6878149260528608918

`A236417(n+1)*A336524(n*A236417(n+1))`
-/

namespace A243833.P6878149260528608918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236417 (n + 1) * A336524 ((n : ℤ) * A236417 (n + 1)).toNat

end

end A243833.P6878149260528608918

/-! ## A243833.P12431994852708920731

`A236417(n+1)*A336524(n)`
-/

namespace A243833.P12431994852708920731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236417 (n + 1) * A336524 n

end

end A243833.P12431994852708920731

/-! ## A243833.P3219331022211044393

`A336524(n)*A336530(A002260(n+1))`
-/

namespace A243833.P3219331022211044393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336524 n * A336530 (A002260 (n + 1)).toNat

end

end A243833.P3219331022211044393

/-! ## A243833.P1934207809893333794

`C(A017629(n), A030467(A038568(n)))`
-/

namespace A243833.P1934207809893333794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A017629 n).toNat (A030467 (A038568 n).toNat).toNat

end

end A243833.P1934207809893333794

/-! ## A243833.P12835693436908887482

`A000007(A057740(n+1))*A131427(n)`
-/

namespace A243833.P12835693436908887482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A057740 (n + 1)).toNat * A131427 n

end

end A243833.P12835693436908887482

/-!
# A243834: Number A(n,k) of Dyck paths of semilength n having exactly eight (possibly overlapping) occurrences of the consecutive step pattern given by the binary expansion of k, where 1=U=(1,1) and 0=D=(1,-1); square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A243834, there is no canonical definition to state claims against.
-/

/-! ## A243834.P14778462034319361521

`A240467(A209760(n+1))*A390723(n)`
-/

namespace A243834.P14778462034319361521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240467 (A209760 (n + 1)).toNat * A390723 n

end

end A243834.P14778462034319361521

/-! ## A243834.P4734229324629263417

`C(A059365(n+3), A030433(A006068(n+1)))`
-/

namespace A243834.P4734229324629263417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A059365 (n + 3)).toNat (A030433 (A006068 (n + 1)).toNat).toNat

end

end A243834.P4734229324629263417

/-! ## A243834.P777271561805369253

`and(A034487(A213629(n+1)+n), A131427(n))`
-/

namespace A243834.P777271561805369253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034487 (A213629 (n + 1) + (n : ℤ)).toNat) (A131427 n)

end

end A243834.P777271561805369253

/-! ## A243834.P12739301417445682512

`and(A034487(n+1-A065339(2*n+1)), A131427(n))`
-/

namespace A243834.P12739301417445682512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034487 ((n + 1 : ℤ) - A065339 (2 * n + 1)).toNat) (A131427 n)

end

end A243834.P12739301417445682512

/-! ## A243834.P13864882860041151133

`and(A034487(n+1), A131427(n))`
-/

namespace A243834.P13864882860041151133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034487 (n + 1)) (A131427 n)

end

end A243834.P13864882860041151133

/-! ## A243834.P3175648469334871701

`A010052(A228490(n+1))*A085880(n)`
-/

namespace A243834.P3175648469334871701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A228490 (n + 1)).toNat * A085880 n

end

end A243834.P3175648469334871701

/-! ## A243834.P16611372365143866800

`lcm(A131427(A254765(n+1)), A131427(n))`
-/

namespace A243834.P16611372365143866800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131427 (A254765 (n + 1)).toNat) (A131427 n)

end

end A243834.P16611372365143866800

/-!
# A243835: Number A(n,k) of Dyck paths of semilength n having exactly nine (possibly overlapping) occurrences of the consecutive step pattern given by the binary expansion of k, where 1=U=(1,1) and 0=D=(1,-1); square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A243835, there is no canonical definition to state claims against.
-/

/-! ## A243835.P2262497344520008226

`C(A125311(n), A340961(n+1))`
-/

namespace A243835.P2262497344520008226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A125311 n).toNat (A340961 (n + 1 + 10)).toNat

end

end A243835.P2262497344520008226

/-! ## A243835.P10169694705782910968

`A131427(n)*A185284(A057355(n))`
-/

namespace A243835.P10169694705782910968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131427 n * A185284 (A057355 n).toNat

end

end A243835.P10169694705782910968

/-! ## A243835.P4991859785345142961

`A106566(gcd(A321591(n), A321632(n)))`
-/

namespace A243835.P4991859785345142961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (Int.gcd (A321591 n) (A321632 n))

end

end A243835.P4991859785345142961

/-! ## A243835.P9801615764668935041

`lcm(A131427(n), A302110(A082904(n)))`
-/

namespace A243835.P9801615764668935041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131427 n) (A302110 (A082904 n).toNat)

end

end A243835.P9801615764668935041

/-! ## A243835.P8855817405911354546

`A131427(n)*A185284(A131421(n+1))`
-/

namespace A243835.P8855817405911354546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131427 n * A185284 (A131421 (n + 1)).toNat

end

end A243835.P8855817405911354546

/-! ## A243835.P1174583771987663348

`A067310(n)*A185284(A224361(n+1))`
-/

namespace A243835.P1174583771987663348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067310 n * A185284 (A224361 (n + 1)).toNat

end

end A243835.P1174583771987663348

/-! ## A243835.P15796118485042718312

`A086810(n)*A185284(A224361(n+1))`
-/

namespace A243835.P15796118485042718312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 n * A185284 (A224361 (n + 1)).toNat

end

end A243835.P15796118485042718312

/-! ## A243835.P5046612186185963198

`A185284(A224361(n+1))*A268652(n)`
-/

namespace A243835.P5046612186185963198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A224361 (n + 1)).toNat * A268652 n

end

end A243835.P5046612186185963198

/-! ## A243835.P18226644812186338998

`A102683(A002262(n))*A323212(n+2)`
-/

namespace A243835.P18226644812186338998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A002262 n).toNat * A323212 (n + 2)

end

end A243835.P18226644812186338998

/-! ## A243835.P8697020555897281000

`A025926(A025660(n+2))*A323212(n+2)`
-/

namespace A243835.P8697020555897281000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025926 (A025660 (n + 2)).toNat * A323212 (n + 2)

end

end A243835.P8697020555897281000

/-!
# A243836: Number A(n,k) of Dyck paths of semilength n having exactly ten (possibly overlapping) occurrences of the consecutive step pattern given by the binary expansion of k, where 1=U=(1,1) and 0=D=(1,-1); square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A243836, there is no canonical definition to state claims against.
-/

/-! ## A243836.P3211545576702295960

`A131427(n)*A185284(A004526(n))`
-/

namespace A243836.P3211545576702295960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131427 n * A185284 (A004526 n).toNat

end

end A243836.P3211545576702295960

/-! ## A243836.P4862186680835072674

`A131427(n)*A185238(A028242(n))`
-/

namespace A243836.P4862186680835072674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131427 n * A185238 (A028242 n).toNat

end

end A243836.P4862186680835072674

/-! ## A243836.P14375492119095576102

`A131427(n)*A185284(A123108(n))`
-/

namespace A243836.P14375492119095576102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131427 n * A185284 (A123108 n).toNat

end

end A243836.P14375492119095576102

/-! ## A243836.P10072183718891930478

`A009766(n)*A102683(A339060(n))`
-/

namespace A243836.P10072183718891930478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 n * A102683 (A339060 n).toNat

end

end A243836.P10072183718891930478

/-! ## A243836.P6858962551049952341

`A085880(n)*A102683(A339060(n))`
-/

namespace A243836.P6858962551049952341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085880 n * A102683 (A339060 n).toNat

end

end A243836.P6858962551049952341

/-! ## A243836.P79277400480526956

`A086810(n)*A102683(A339060(n))`
-/

namespace A243836.P79277400480526956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 n * A102683 (A339060 n).toNat

end

end A243836.P79277400480526956

/-! ## A243836.P14923952965532401581

`A088617(n)*A102683(A339060(n))`
-/

namespace A243836.P14923952965532401581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088617 n * A102683 (A339060 n).toNat

end

end A243836.P14923952965532401581

/-! ## A243836.P15848072796137734765

`A098474(n)*A102683(A339060(n))`
-/

namespace A243836.P15848072796137734765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098474 n * A102683 (A339060 n).toNat

end

end A243836.P15848072796137734765

/-!
# A243838: Number T(n,k) of Dyck paths of semilength n having exactly k (possibly overlapping) occurrences of the consecutive steps UDUUDDUUUUDUDDDDUDUD (with U=(1,1), D=(1,-1)); triangle T(n,k), n>=0, 0<=k<=max(0,floor((n-1)/9)), read by rows.

The programs for A243838, there is no canonical definition to state claims against.
-/

/-! ## A243838.P4010403011413351739

`A242450(n)+A178798(A034451(n+1))`
-/

namespace A243838.P4010403011413351739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242450 n + A178798 (A034451 (n + 1)).toNat

end

end A243838.P4010403011413351739

/-! ## A243838.P1664111401260330981

`A242450(n)-A044941(∑[A073941(n+1)])`
-/

namespace A243838.P1664111401260330981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242450 n - A044941 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A243838.P1664111401260330981

/-!
# A243841: Pair deficit of the most nearly equal partition of n into two parts using ceiling rounding of the expectations of n, floor(n/2) and n-floor(n/2), assuming equal likelihood of states defined by the number of 2-cycles.

The programs for A243841, there is no canonical definition to state claims against.
-/

/-! ## A243841.P8042068682158250751

`A238470(A179783(n)-A238470(n))`
-/

namespace A243841.P8042068682158250751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238470 (A179783 n - A238470 n).toNat

end

end A243841.P8042068682158250751

/-! ## A243841.P13205213900094486140

`A163539(A029542(n+1)%A029925(n+2))`
-/

namespace A243841.P13205213900094486140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163539 (Int.tmod (A029542 (n + 1)) (A029925 (n + 2))).toNat

end

end A243841.P13205213900094486140

/-!
# A243842: Pair deficit of the most equal partition of n into two parts using standard rounding of the expectations of n, floor(n/2) and n-floor(n/2), assuming equal likelihood of states defined by the number of 2-cycles.

The programs for A243842, there is no canonical definition to state claims against.
-/

/-! ## A243842.P7976248422303786352

`A010059(∑[A076921(A008805(n))])`
-/

namespace A243842.P7976248422303786352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076921 (A008805 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A243842.P7976248422303786352

/-! ## A243842.P8508947447647289578

`A295297(A335471(n)+A163985(n))`
-/

namespace A243842.P8508947447647289578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295297 (A335471 n + A163985 n).toNat

end

end A243842.P8508947447647289578

/-! ## A243842.P11525911595976329228

`A243148(A004771(n)*A312437(n))`
-/

namespace A243842.P11525911595976329228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A004771 n * A312437 n).toNat

end

end A243842.P11525911595976329228

/-! ## A243842.P6013794603344078745

`A288596(xor(A027383(n), A051724(n)))`
-/

namespace A243842.P6013794603344078745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288596 (Int.xor (A027383 n) (A051724 n)).toNat

end

end A243842.P6013794603344078745

/-! ## A243842.P8048164890630586979

`A054521(A139660(3*n+4)-A118682(n))`
-/

namespace A243842.P8048164890630586979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (A139660 (3 * n + 4) - A118682 n).toNat

end

end A243842.P8048164890630586979

/-!
# A243844: Primes p such that p^5 + p^3 + p + 2 is prime.

The programs for A243844, there is no canonical definition to state claims against.
-/

/-! ## A243844.P2698124019303347547

`∩[A162707(n+1), A030193(n)]`
-/

namespace A243844.P2698124019303347547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030193 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243844.P2698124019303347547

/-! ## A243844.P1512452184774765377

`p?[A329898(record[A175767(n+1)])]`
-/

namespace A243844.P1512452184774765377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175767 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329898 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243844.P1512452184774765377

/-!
# A243848: Irregular triangular array of denominators of the positive rational numbers ordered as in Comments.

The programs for A243848, there is no canonical definition to state claims against.
-/

/-! ## A243848.P5229755390357552

`A102383(3^A218601(n))`
-/

namespace A243848.P5229755390357552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102383 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A218601 n : ℤ))).toNat

end

end A243848.P5229755390357552

/-! ## A243848.P14243556863670089474

`A002233(A243851(n+1)^A002233(3*n+5))`
-/

namespace A243848.P14243556863670089474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002233 (SequenceMachineLib.roundAway ((A243851 (n + 1) : ℚ) ^ (A002233 (3 * n + 5) : ℤ))).toNat

end

end A243848.P14243556863670089474

/-!
# A243850: Number of numbers in row n of the array at A243848.

The programs for A243850, there is no canonical definition to state claims against.
-/

/-! ## A243850.P5387709891206175480

`Δ[eq[1, A243848(n+1)]]`
-/

namespace A243850.P5387709891206175480
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243848 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A243850.P5387709891206175480

/-! ## A243850.P6423230635269419691

`round(sqrt(sqrt(A335307(2*n+1))))`
-/

namespace A243850.P6423230635269419691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A335307 (2 * n + 1) : ℝ)))

end

end A243850.P6423230635269419691

/-! ## A243850.P7376822230851489428

`A083896(A000079(n))+A060961(n)`
-/

namespace A243850.P7376822230851489428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083896 (A000079 n).toNat + A060961 n

end

end A243850.P7376822230851489428

/-! ## A243850.P14219385507499306479

`A102681(A080012(n))+A060961(n)`
-/

namespace A243850.P14219385507499306479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (A080012 n).toNat + A060961 n

end

end A243850.P14219385507499306479

/-! ## A243850.P10345974698310735657

`A083896(A171559(n))+A060961(n)`
-/

namespace A243850.P10345974698310735657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083896 (A171559 n).toNat + A060961 n

end

end A243850.P10345974698310735657

/-!
# A243851: Irregular triangular array of denominators of the positive rational numbers ordered as in Comments.

The programs for A243851, there is no canonical definition to state claims against.
-/

/-! ## A243851.P1008457726227902517

`A182272(A243848(n+1)+A181502(∑[n]))`
-/

namespace A243851.P1008457726227902517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182272 (A243848 (n + 1) + A181502 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A243851.P1008457726227902517

/-! ## A243851.P941759490409673484

`A182272(A243848(n+1)%A078859(n+1))`
-/

namespace A243851.P941759490409673484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182272 (Int.tmod (A243848 (n + 1)) (A078859 (n + 1))).toNat

end

end A243851.P941759490409673484

/-! ## A243851.P12892655902657482872

`A239061(A336420(∑[n]))`
-/

namespace A243851.P12892655902657482872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239061 (A336420 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A243851.P12892655902657482872

/-!
# A243852: Irregular triangular array of numerators of the positive rational numbers ordered as in Comments.

The programs for A243852, there is no canonical definition to state claims against.
-/

/-! ## A243852.P9763647931490343749

`A199575(n)+A126805(A358909(3*(n+1)))`
-/

namespace A243852.P9763647931490343749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199575 n + A126805 (A358909 (3 * (n + 1))).toNat

end

end A243852.P9763647931490343749

/-! ## A243852.P4960100489258885178

`A190597(A241514(3*n+4)-A001263(n+2)+n)`
-/

namespace A243852.P4960100489258885178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190597 (A241514 (3 * n + 4) - A001263 (n + 2) + (n : ℤ)).toNat

end

end A243852.P4960100489258885178

/-!
# A243853: Number of numbers in row n of the array at A243851.

The programs for A243853, there is no canonical definition to state claims against.
-/

/-! ## A243853.P9708465759488238706

`floor(A081252(A081253(n+1))^(1/3))+1`
-/

namespace A243853.P9708465759488238706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081252 (A081253 (n + 1)).toNat : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋ + 1

end

end A243853.P9708465759488238706

/-! ## A243853.P2193275501363375219

`A257639(A094969(n)+3)`
-/

namespace A243853.P2193275501363375219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A094969 n + 3).toNat

end

end A243853.P2193275501363375219

/-! ## A243853.P15855911664071630434

`A232746(A252354(n+1)+1)`
-/

namespace A243853.P15855911664071630434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232746 (A252354 (n + 1) + 1).toNat

end

end A243853.P15855911664071630434

/-! ## A243853.P11747072029983882636

`A002024(A355384(n)+A346050(n))`
-/

namespace A243853.P11747072029983882636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A355384 n + A346050 n).toNat

end

end A243853.P11747072029983882636

/-! ## A243853.P3353009306209603333

`A003056(A304744(n)+A238829(n+1))`
-/

namespace A243853.P3353009306209603333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A304744 n + A238829 (n + 1)).toNat

end

end A243853.P3353009306209603333

/-!
# A243856: Number of numbers in row n of the array at A243855.

The programs for A243856, there is no canonical definition to state claims against.
-/

/-! ## A243856.P268768306740750498

`A003056(A246566(n)+ceil((n+1)*sqrt(e/6)))`
-/

namespace A243856.P268768306740750498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A246566 n + ⌈(n + 1 : ℝ) * Real.sqrt (Real.exp 1 / 6)⌉).toNat

end

end A243856.P268768306740750498

/-! ## A243856.P5140511024284212487

`A235963(A257104(n)+A000120(n))`
-/

namespace A243856.P5140511024284212487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A257104 n + A000120 n).toNat

end

end A243856.P5140511024284212487

/-! ## A243856.P12034131939589337232

`A235963(A257104(n)+A000194(n))`
-/

namespace A243856.P12034131939589337232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A257104 n + A000194 n).toNat

end

end A243856.P12034131939589337232

/-! ## A243856.P10567822240424008533

`A235963(A257104(n)+A000196(n))`
-/

namespace A243856.P10567822240424008533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A257104 n + A000196 n).toNat

end

end A243856.P10567822240424008533

/-! ## A243856.P10071712005430791890

`A235963(A257104(n)+A003056(n))`
-/

namespace A243856.P10071712005430791890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A257104 n + A003056 n).toNat

end

end A243856.P10071712005430791890

/-!
# A243860: a(n) = 2^(n+1) - (n-1)^2.

The programs for A243860, the canonical program `A243860.P16506229345030888936` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243860 has offset 0).

The definition of A243860 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+1)-(n-1)²` (program `A243860.P16506229345030888936`, by `A243860.P16506229345030888936.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A243860.P16506229345030888936

`2^(n+1)-(n-1)²`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A243860

/-- `2^(n+1)-(n-1)²` -/
def P16506229345030888936.Spec : Prop :=
  ∀ n, P16506229345030888936.a n = A243860 n

theorem P16506229345030888936.correct : P16506229345030888936.Spec := by
  intro n
  simp only [A243860]

end A243860

/-! ## A243860.P477920053840682980

`ogf((1-x-4x^2+6x^3)/(1-5x+9x^2-7x^3+2x^4))`
-/

namespace A243860.P477920053840682980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -4, 6] [1, -5, 9, -7, 2] n

end

end A243860.P477920053840682980

namespace A243860

/-- `ogf((1-x-4x^2+6x^3)/(1-5x+9x^2-7x^3+2x^4))` -/
def P477920053840682980.Spec : Prop :=
  ∀ n, P477920053840682980.a n = A243860 n

end A243860

/-! ## A243860.P14907379368415874894

`abs(xor(n*(n-2), ∑[2^n]))`
-/

namespace A243860.P14907379368415874894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((n : ℤ) * ((n : ℤ) - 2)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A243860.P14907379368415874894

namespace A243860

/-- `abs(xor(n*(n-2), ∑[2^n]))` -/
def P14907379368415874894.Spec : Prop :=
  ∀ n, P14907379368415874894.a n = A243860 n

end A243860

/-! ## A243860.P17977203335500256171

`-xor(-(2*2^n), (1-n)²)`
-/

namespace A243860.P17977203335500256171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-(2 * 2 ^ n : ℤ)) ((1 - (n : ℤ)) ^ 2)

end

end A243860.P17977203335500256171

namespace A243860

/-- `-xor(-(2*2^n), (1-n)²)` -/
def P17977203335500256171.Spec : Prop :=
  ∀ n, P17977203335500256171.a n = A243860 n

end A243860

/-! ## A243860.P6760842341971240047

`∑[∑[2*(a(n-1)+1)]]` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A243860.P6760842341971240047
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0] fun n f2 =>
  2 * (f2 (n - 1) + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243860.P6760842341971240047

namespace A243860

/-- `∑[∑[2*(a(n-1)+1)]]` -/
def P6760842341971240047.Spec : Prop :=
  ∀ n, (P6760842341971240047.a n : ℤ) = A243860 n

end A243860

/-! ## A243860.P6482718856746067962

`∑[∑[∑[2*a(n-1)]]]` with `a(0)=1, a(1)=1, a(2)=-2, a(3)=2`
-/

namespace A243860.P6482718856746067962
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -2, 2] fun n f3 =>
  2 * f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243860.P6482718856746067962

namespace A243860

/-- `∑[∑[∑[2*a(n-1)]]]` -/
def P6482718856746067962.Spec : Prop :=
  ∀ n, P6482718856746067962.a n = A243860 n

end A243860

/-! ## A243860.P14970573511524039455

`∑[∑[a(n-1)+a(n-1)+2]]` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A243860.P14970573511524039455
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243860.P14970573511524039455

namespace A243860

/-- `∑[∑[a(n-1)+a(n-1)+2]]` -/
def P14970573511524039455.Spec : Prop :=
  ∀ n, (P14970573511524039455.a n : ℤ) = A243860 n

end A243860

/-! ## A243860.P5320496672883372721

`abs(A155559(n+1)-(1-n)²)`
-/

namespace A243860.P5320496672883372721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155559 (n + 1) - (1 - (n : ℤ)) ^ 2|

end

end A243860.P5320496672883372721

namespace A243860

/-- `abs(A155559(n+1)-(1-n)²)` -/
def P5320496672883372721.Spec : Prop :=
  ∀ n, P5320496672883372721.a n = A243860 n

end A243860

/-! ## A243860.P13056536393617727440

`abs(1-((1-n)²-A000225(n+1)))`
-/

namespace A243860.P13056536393617727440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((1 - (n : ℤ)) ^ 2 - A000225 (n + 1))|

end

end A243860.P13056536393617727440

namespace A243860

/-- `abs(1-((1-n)²-A000225(n+1)))` -/
def P13056536393617727440.Spec : Prop :=
  ∀ n, P13056536393617727440.a n = A243860 n

end A243860

/-! ## A243860.P9922003405195786327

`abs(∑[2*n-A000079(n)]-3*n)`
-/

namespace A243860.P9922003405195786327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (3 * n : ℤ)|

end

end A243860.P9922003405195786327

namespace A243860

/-- `abs(∑[2*n-A000079(n)]-3*n)` -/
def P9922003405195786327.Spec : Prop :=
  ∀ n, P9922003405195786327.a n = A243860 n

end A243860

/-! ## A243860.P6762215009295131009

`record[A077896(n)+n-A002620(n)]`
-/

namespace A243860.P6762215009295131009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077896 n + ((n : ℤ) - A002620 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243860.P6762215009295131009

namespace A243860

/-- `record[A077896(n)+n-A002620(n)]` -/
def P6762215009295131009.Spec : Prop :=
  ∀ n, P6762215009295131009.a n = A243860 n

end A243860

/-!
# A243863: G.f. satisfies: A(x) = 1/(1 - x*A(-x)^2).

The programs for A243863, there is no canonical definition to state claims against.
-/

/-! ## A243863.P670571500781787783

`∑{#}[n, (-1)^#*A278881(C(n+1, 2)+#)]`
-/

namespace A243863.P670571500781787783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * A278881 (Nat.choose (n + 1) 2 + k)

end

end A243863.P670571500781787783

/-!
# A243864: Positive integers that do not appear in A243700.

The programs for A243864, there is no canonical definition to state claims against.
-/

/-! ## A243864.P5366659746832117847

`lt[2, A244010(n+1)%(n+1)]+1`
-/

namespace A243864.P5366659746832117847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244010 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A243864.P5366659746832117847

/-! ## A243864.P2263959951699062443

`eq[char[A243700(n+1)], A000007(n)]`
-/

namespace A243864.P2263959951699062443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243700 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A243864.P2263959951699062443

/-! ## A243864.P3892499233973191214

`eq[char[A243700(n+1)], A000038(n)]`
-/

namespace A243864.P3892499233973191214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243700 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A243864.P3892499233973191214

/-! ## A243864.P10811624060592518051

`eq[char[A243700(n+1)], A012245(2*n+1)]`
-/

namespace A243864.P10811624060592518051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243700 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012245 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A243864.P10811624060592518051

/-! ## A243864.P9419063030248537239

`eq[char[A243700(n+1)], A324642(2*(n+1))]`
-/

namespace A243864.P9419063030248537239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243700 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324642 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A243864.P9419063030248537239

/-!
# A243865: Number of twin divisors of n.

The programs for A243865, there is no canonical definition to state claims against.
-/

/-! ## A243865.P16399420350992303900

`A000005(n+1)-A243917(n+1)`
-/

namespace A243865.P16399420350992303900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A243917 (n + 1)

end

end A243865.P16399420350992303900

/-! ## A243865.P10406676969206475350

`A032741(n+1)+1-A243917(n+1)`
-/

namespace A243865.P10406676969206475350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + (1 - A243917 (n + 1))

end

end A243865.P10406676969206475350

/-! ## A243865.P12660013275522278331

`A132747(n+1)+A132881(n+1)-A243917(n+1)`
-/

namespace A243865.P12660013275522278331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (n + 1) + (A132881 (n + 1) - A243917 (n + 1))

end

end A243865.P12660013275522278331

/-! ## A243865.P1585292163045329196

`A001227(n+1)*A001511(n+1)-A243917(n+1)`
-/

namespace A243865.P1585292163045329196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A001511 (n + 1) - A243917 (n + 1)

end

end A243865.P1585292163045329196

/-! ## A243865.P9700935859069340349

`A183063(A317440(n+1))-A243917(n+1)`
-/

namespace A243865.P9700935859069340349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A317440 (n + 1)).toNat - A243917 (n + 1)

end

end A243865.P9700935859069340349

/-!
# A243866: Table T(n,k), n>=1, k>=1, read by antidiagonals: T(n,k) = number of equivalence classes of ways of placing one 1 X 1 tile in an n X k rectangle under all symmetry operations of the rectangle.

The programs for A243866, the canonical program `A243866.P17842490002735257572` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243866 has offset 1).

The definition of A243866 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243866.P17842490002735257572

`floor((col(n)+2)/2)*floor((row(n)-col(n)+2)/2)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A243866

/-- `floor((col(n)+2)/2)*floor((row(n)-col(n)+2)/2)` -/
def P17842490002735257572.Spec : Prop :=
  ∀ n, P17842490002735257572.a n = A243866 (n + 1)

theorem P17842490002735257572.correct : P17842490002735257572.Spec := by
  intro n
  simp only [A243866, Nat.add_sub_cancel]

end A243866

/-! ## A243866.P8521466477408477136

`T(n-2,k-1)+T(n-2,k)+col(n)+1-T(n,k-1)` with `a(0)=1`
-/

namespace A243866.P8521466477408477136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp2Left a n + SequenceMachineLib.triUp2 a n + (SequenceMachineLib.triCol n : ℤ) + 1 - SequenceMachineLib.triLeft a n

end

end A243866.P8521466477408477136

namespace A243866

/-- `T(n-2,k-1)+T(n-2,k)+col(n)+1-T(n,k-1)` -/
def P8521466477408477136.Spec : Prop :=
  ∀ n, P8521466477408477136.a n = A243866 (n + 1)

end A243866

/-! ## A243866.P14673649316775811450

`T(col(n), T(row(n)-2, col(n))-T(n-1,k))+T(n-1,k)` with `a(0)=1`
-/

namespace A243866.P14673649316775811450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) (((SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) (SequenceMachineLib.triCol n : ℤ) : ℕ) : ℤ) - ((SequenceMachineLib.triUp a n : ℕ) : ℤ)) + SequenceMachineLib.triUp a n

end

end A243866.P14673649316775811450

namespace A243866

/-- `T(col(n), T(row(n)-2, col(n))-T(n-1,k))+T(n-1,k)` -/
def P14673649316775811450.Spec : Prop :=
  ∀ n, (P14673649316775811450.a n : ℤ) = A243866 (n + 1)

end A243866

/-! ## A243866.P14860866484863679609

`T(row(n)-3, col(n)-1)+T(n-2,k)+col(n)+1-T(n-1,k-1)` with `a(0)=1`
-/

namespace A243866.P14860866484863679609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 3) ((SequenceMachineLib.triCol n : ℤ) - 1) + SequenceMachineLib.triUp2 a n + (SequenceMachineLib.triCol n : ℤ) + 1 - SequenceMachineLib.triUpLeft a n

end

end A243866.P14860866484863679609

namespace A243866

/-- `T(row(n)-3, col(n)-1)+T(n-2,k)+col(n)+1-T(n-1,k-1)` -/
def P14860866484863679609.Spec : Prop :=
  ∀ n, P14860866484863679609.a n = A243866 (n + 1)

end A243866

/-! ## A243866.P14913775799259617537

`ceil(A322630(n+1)/2)`
-/

namespace A243866.P14913775799259617537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A322630 (n + 1) : ℚ) / 2⌉

end

end A243866.P14913775799259617537

namespace A243866

/-- `ceil(A322630(n+1)/2)` -/
def P14913775799259617537.Spec : Prop :=
  ∀ n, P14913775799259617537.a n = A243866 (n + 1)

end A243866

/-! ## A243866.P3440072471703013494

`A065033(A322630(n+1))`
-/

namespace A243866.P3440072471703013494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A322630 (n + 1)).toNat

end

end A243866.P3440072471703013494

namespace A243866

/-- `A065033(A322630(n+1))` -/
def P3440072471703013494.Spec : Prop :=
  ∀ n, P3440072471703013494.a n = A243866 (n + 1)

end A243866

/-! ## A243866.P17679821333708037188

`A004526(A322630(n+1)+1)`
-/

namespace A243866.P17679821333708037188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A322630 (n + 1) + 1).toNat

end

end A243866.P17679821333708037188

namespace A243866

/-- `A004526(A322630(n+1)+1)` -/
def P17679821333708037188.Spec : Prop :=
  ∀ n, P17679821333708037188.a n = A243866 (n + 1)

end A243866

/-! ## A243866.P7010985400122894636

`A123108(A322630(n+1)+1)`
-/

namespace A243866.P7010985400122894636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A322630 (n + 1) + 1).toNat

end

end A243866.P7010985400122894636

namespace A243866

/-- `A123108(A322630(n+1)+1)` -/
def P7010985400122894636.Spec : Prop :=
  ∀ n, P7010985400122894636.a n = A243866 (n + 1)

end A243866

/-! ## A243866.P3351750363741325398

`A008619(A322630(n+1)-1)`
-/

namespace A243866.P3351750363741325398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A322630 (n + 1) - 1).toNat

end

end A243866.P3351750363741325398

namespace A243866

/-- `A008619(A322630(n+1)-1)` -/
def P3351750363741325398.Spec : Prop :=
  ∀ n, P3351750363741325398.a n = A243866 (n + 1)

end A243866

/-! ## A243866.P3489634399976799735

`A028242(xor(1, A322630(n+1)))`
-/

namespace A243866.P3489634399976799735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.xor 1 (A322630 (n + 1))).toNat

end

end A243866.P3489634399976799735

namespace A243866

/-- `A028242(xor(1, A322630(n+1)))` -/
def P3489634399976799735.Spec : Prop :=
  ∀ n, P3489634399976799735.a n = A243866 (n + 1)

end A243866

/-! ## A243866.P720417055199170297

`A008619(A002262(n))*A115514(n+1)`
-/

namespace A243866.P720417055199170297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A002262 n).toNat * A115514 (n + 1)

end

end A243866.P720417055199170297

namespace A243866

/-- `A008619(A002262(n))*A115514(n+1)` -/
def P720417055199170297.Spec : Prop :=
  ∀ n, P720417055199170297.a n = A243866 (n + 1)

end A243866

/-! ## A243866.P15698892792636340182

`A065033(A002260(n+1))*A115514(n+1)`
-/

namespace A243866.P15698892792636340182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A002260 (n + 1)).toNat * A115514 (n + 1)

end

end A243866.P15698892792636340182

namespace A243866

/-- `A065033(A002260(n+1))*A115514(n+1)` -/
def P15698892792636340182.Spec : Prop :=
  ∀ n, P15698892792636340182.a n = A243866 (n + 1)

end A243866

/-! ## A243866.P12294136460470447758

`A115514(A038722(n+1))*A115514(n+1)`
-/

namespace A243866.P12294136460470447758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115514 (A038722 (n + 1)).toNat * A115514 (n + 1)

end

end A243866.P12294136460470447758

namespace A243866

/-- `A115514(A038722(n+1))*A115514(n+1)` -/
def P12294136460470447758.Spec : Prop :=
  ∀ n, P12294136460470447758.a n = A243866 (n + 1)

end A243866

/-! ## A243866.P2305303477624944144

`A115514(n+1)*A115514(A061579(n)+1)`
-/

namespace A243866.P2305303477624944144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115514 (n + 1) * A115514 (A061579 n + 1).toNat

end

end A243866.P2305303477624944144

namespace A243866

/-- `A115514(n+1)*A115514(A061579(n)+1)` -/
def P2305303477624944144.Spec : Prop :=
  ∀ n, P2305303477624944144.a n = A243866 (n + 1)

end A243866

/-! ## A243866.P17208602635218710807

`A008619(A002262(n))*A008619(A025581(n))`
-/

namespace A243866.P17208602635218710807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A002262 n).toNat * A008619 (A025581 n).toNat

end

end A243866.P17208602635218710807

namespace A243866

/-- `A008619(A002262(n))*A008619(A025581(n))` -/
def P17208602635218710807.Spec : Prop :=
  ∀ n, P17208602635218710807.a n = A243866 (n + 1)

end A243866

/-! ## A243866.P17619935495309966500

`A008619(A144328(n+1))*A008619(A025581(n))`
-/

namespace A243866.P17619935495309966500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A144328 (n + 1)).toNat * A008619 (A025581 n).toNat

end

end A243866.P17619935495309966500

namespace A243866

/-- `A008619(A144328(n+1))*A008619(A025581(n))` -/
def P17619935495309966500.Spec : Prop :=
  ∀ n, P17619935495309966500.a n = A243866 (n + 1)

end A243866

/-! ## A243866.P4209593340019029174

`A065033(A002260(n+1))*A065033(A004736(n+1))`
-/

namespace A243866.P4209593340019029174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A002260 (n + 1)).toNat * A065033 (A004736 (n + 1)).toNat

end

end A243866.P4209593340019029174

namespace A243866

/-- `A065033(A002260(n+1))*A065033(A004736(n+1))` -/
def P4209593340019029174.Spec : Prop :=
  ∀ n, P4209593340019029174.a n = A243866 (n + 1)

end A243866

/-! ## A243866.P12345416839487364047

`A008619(A057554(2*n+1))*A008619(A057554(2*(n+1)))`
-/

namespace A243866.P12345416839487364047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A057554 (2 * n + 1)).toNat * A008619 (A057554 (2 * (n + 1))).toNat

end

end A243866.P12345416839487364047

namespace A243866

/-- `A008619(A057554(2*n+1))*A008619(A057554(2*(n+1)))` -/
def P12345416839487364047.Spec : Prop :=
  ∀ n, P12345416839487364047.a n = A243866 (n + 1)

end A243866

/-! ## A243866.P12617965804886067195

`A003991(n+1)-A004526(A322744(n+1))`
-/

namespace A243866.P12617965804886067195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A004526 (A322744 (n + 1)).toNat

end

end A243866.P12617965804886067195

namespace A243866

/-- `A003991(n+1)-A004526(A322744(n+1))` -/
def P12617965804886067195.Spec : Prop :=
  ∀ n, P12617965804886067195.a n = A243866 (n + 1)

end A243866

/-! ## A243866.P339753489701864702

`A334922(n+1)-A143902(n+1)`
-/

namespace A243866.P339753489701864702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334922 (n + 1) - A143902 (n + 1)

end

end A243866.P339753489701864702

namespace A243866

/-- `A334922(n+1)-A143902(n+1)` -/
def P339753489701864702.Spec : Prop :=
  ∀ n, P339753489701864702.a n = A243866 (n + 1)

theorem P339753489701864702.correct : P339753489701864702.Spec := by
  intro n
  simp only [A243866, Nat.add_sub_cancel, A243866.P339753489701864702.a, A243866.P17842490002735257572.a, A143902, A143902.P5916339437029833280.a, A334922, A334922.P17964154798392453556.a, A059036, A059036.P14090632459187506294.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A243866

/-!
# A243868: 0 followed by -(n+1)*A226158(n).

The programs for A243868, there is no canonical definition to state claims against.
-/

/-! ## A243868.P10034496643045908996

`(n-2*n)*A226158(abs(1-n))`
-/

namespace A243868.P10034496643045908996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (2 * n : ℤ)) * A226158 |1 - (n : ℤ)|.toNat

end

end A243868.P10034496643045908996

/-! ## A243868.P13124878336815028068

`n*Δ[-∑[A226158(A289207(n))]]`
-/

namespace A243868.P13124878336815028068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226158 (A289207 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A243868.P13124878336815028068

/-! ## A243868.P11203277107102803870

`n*(A000007(n)-A226158(abs(1-n)))`
-/

namespace A243868.P11203277107102803870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000007 n - A226158 |1 - (n : ℤ)|.toNat)

end

end A243868.P11203277107102803870

/-! ## A243868.P14094616212007474296

`n*A226158(abs(1-n))*A057428(n)`
-/

namespace A243868.P14094616212007474296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A226158 |1 - (n : ℤ)|.toNat * A057428 n

end

end A243868.P14094616212007474296

/-! ## A243868.P16793612213190587947

`n*Δ[A229054(n)]`
-/

namespace A243868.P16793612213190587947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A243868.P16793612213190587947

/-!
# A243869: Expansion of x^4/[(1+x)*Product_{k=1..3} (1-k*x)].

The programs for A243869, the canonical program `A243869.P407511148252469692` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243869 has offset 4).

The definition of A243869 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243869.P12688074669040423463

`ogf(1/(1-5x+5x^2+5x^3-6x^4))`
-/

namespace A243869.P12688074669040423463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -5, 5, 5, -6] n

end

end A243869.P12688074669040423463

namespace A243869

/-- `ogf(1/(1-5x+5x^2+5x^3-6x^4))` -/
def P12688074669040423463.Spec : Prop :=
  ∀ n, P12688074669040423463.a n = A243869 (n + 4)

end A243869

/-! ## A243869.P407511148252469692

`5*a(n-1)-5*a(n-2)-5*a(n-3)+6*a(n-4)` with `a(0)=1, a(1)=5, a(2)=20, a(3)=70`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A243869

/-- `5*a(n-1)-5*a(n-2)-5*a(n-3)+6*a(n-4)` -/
def P407511148252469692.Spec : Prop :=
  ∀ n, P407511148252469692.a n = A243869 (n + 4)

theorem P407511148252469692.correct : P407511148252469692.Spec := by
  intro n
  simp only [A243869, Nat.add_sub_cancel]

end A243869

/-! ## A243869.P13349893055913742417

`(3^(n+4)-4*2^(n+4)+(-1)^(n+4)+6)/24`
-/

namespace A243869.P13349893055913742417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ (n + 4) : ℤ) - (4 * 2 ^ (n + 4) : ℤ) + (-1) ^ (n + 4) + 6 : ℚ) / 24

end

end A243869.P13349893055913742417

namespace A243869

/-- `(3^(n+4)-4*2^(n+4)+(-1)^(n+4)+6)/24` -/
def P13349893055913742417.Spec : Prop :=
  ∀ n, P13349893055913742417.a n = (A243869 (n + 4) : ℚ)

theorem P13349893055913742417.correct : P13349893055913742417.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A243869, Nat.add_sub_cancel, A243869.P13349893055913742417.a, A243869.P407511148252469692.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A243869, Nat.add_sub_cancel, A243869.P13349893055913742417.a, A243869.P407511148252469692.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A243869

/-! ## A243869.P8108879402709019652

`∑[ogf(1/(1-4x+x^2+6x^3))]`
-/

namespace A243869.P8108879402709019652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, 1, 6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243869.P8108879402709019652

namespace A243869

/-- `∑[ogf(1/(1-4x+x^2+6x^3))]` -/
def P8108879402709019652.Spec : Prop :=
  ∀ n, P8108879402709019652.a n = A243869 (n + 4)

end A243869

/-! ## A243869.P4764535863152729369

`∑[abs(∑[(-3)^n])]+2*a(n-1)` with `a(0)=1`
-/

namespace A243869.P4764535863152729369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-3) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * a (n - 1)

end

end A243869.P4764535863152729369

namespace A243869

/-- `∑[abs(∑[(-3)^n])]+2*a(n-1)` -/
def P4764535863152729369.Spec : Prop :=
  ∀ n, P4764535863152729369.a n = A243869 (n + 4)

end A243869

/-! ## A243869.P13859730210804958815

`∑[3^n+2*a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A243869.P13859730210804958815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  3 ^ n + 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A243869.P13859730210804958815

namespace A243869

/-- `∑[3^n+2*a(n-1)]-a(n-1)` -/
def P13859730210804958815.Spec : Prop :=
  ∀ n, P13859730210804958815.a n = A243869 (n + 4)

end A243869

/-! ## A243869.P6450972632229003991

`∑[∑[A004054(n)]]`
-/

namespace A243869.P6450972632229003991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004054 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243869.P6450972632229003991

namespace A243869

/-- `∑[∑[A004054(n)]]` -/
def P6450972632229003991.Spec : Prop :=
  ∀ n, P6450972632229003991.a n = A243869 (n + 4)

end A243869

/-! ## A243869.P1623201164741255266

`∑[A094705(n+1)]`
-/

namespace A243869.P1623201164741255266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243869.P1623201164741255266

namespace A243869

/-- `∑[A094705(n+1)]` -/
def P1623201164741255266.Spec : Prop :=
  ∀ n, P1623201164741255266.a n = A243869 (n + 4)

end A243869

/-! ## A243869.P5989037583722327352

`A000392(n+3)-a(n-1)` with `a(0)=1`
-/

namespace A243869.P5989037583722327352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000392 (n + 3) - a (n - 1)

end

end A243869.P5989037583722327352

namespace A243869

/-- `A000392(n+3)-a(n-1)` -/
def P5989037583722327352.Spec : Prop :=
  ∀ n, P5989037583722327352.a n = A243869 (n + 4)

end A243869

/-! ## A243869.P9925831581970544827

`∑[∑[A027649(n)]]-a(n-1)` with `a(0)=1`
-/

namespace A243869.P9925831581970544827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A243869.P9925831581970544827

namespace A243869

/-- `∑[∑[A027649(n)]]-a(n-1)` -/
def P9925831581970544827.Spec : Prop :=
  ∀ n, P9925831581970544827.a n = A243869 (n + 4)

end A243869

/-! ## A243869.P6738853369475550450

`A001047(n+1)+a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A243869.P6738853369475550450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  A001047 (n + 1) + a (n - 2)

end

end A243869.P6738853369475550450

namespace A243869

/-- `A001047(n+1)+a(n-2)` -/
def P6738853369475550450.Spec : Prop :=
  ∀ n, P6738853369475550450.a n = A243869 (n + 4)

end A243869

/-! ## A243869.P7932251275903277854

`∑[A081251(n+1)]-A011377(n)`
-/

namespace A243869.P7932251275903277854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A011377 n

end

end A243869.P7932251275903277854

namespace A243869

/-- `∑[A081251(n+1)]-A011377(n)` -/
def P7932251275903277854.Spec : Prop :=
  ∀ n, P7932251275903277854.a n = A243869 (n + 4)

end A243869

/-! ## A243869.P17980052363635192086

`A011377(n)+∑[A174395(n+3)]`
-/

namespace A243869.P17980052363635192086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174395 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011377 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243869.P17980052363635192086

namespace A243869

/-- `A011377(n)+∑[A174395(n+3)]` -/
def P17980052363635192086.Spec : Prop :=
  ∀ n, P17980052363635192086.a n = A243869 (n + 4)

end A243869

/-! ## A243869.P5572997737640234389

`A033113(n+2)-Δ[A011377(n)]`
-/

namespace A243869.P5572997737640234389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033113 (n + 2) - (f1 (n + 1) - f1 n)

end

end A243869.P5572997737640234389

namespace A243869

/-- `A033113(n+2)-Δ[A011377(n)]` -/
def P5572997737640234389.Spec : Prop :=
  ∀ n, P5572997737640234389.a n = A243869 (n + 4)

end A243869

/-! ## A243869.P6126746435970735661

`A174395(n+3)+A033113(n+1)`
-/

namespace A243869.P6126746435970735661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174395 (n + 3) + A033113 (n + 1)

end

end A243869.P6126746435970735661

namespace A243869

/-- `A174395(n+3)+A033113(n+1)` -/
def P6126746435970735661.Spec : Prop :=
  ∀ n, P6126746435970735661.a n = A243869 (n + 4)

end A243869

/-! ## A243869.P2489375654315820109

`A033113(n+2)-A000975(n+2)`
-/

namespace A243869.P2489375654315820109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033113 (n + 2) - A000975 (n + 2)

end

end A243869.P2489375654315820109

namespace A243869

/-- `A033113(n+2)-A000975(n+2)` -/
def P2489375654315820109.Spec : Prop :=
  ∀ n, P2489375654315820109.a n = A243869 (n + 4)

end A243869

/-! ## A243869.P265855336930428464

`A006342(n+2)-A001045(n+3)`
-/

namespace A243869.P265855336930428464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006342 (n + 2) - A001045 (n + 3)

end

end A243869.P265855336930428464

namespace A243869

/-- `A006342(n+2)-A001045(n+3)` -/
def P265855336930428464.Spec : Prop :=
  ∀ n, P265855336930428464.a n = A243869 (n + 4)

end A243869

/-! ## A243869.P17781685264476359607

`A039300(n+2)-A005578(n+3)`
-/

namespace A243869.P17781685264476359607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039300 (n + 2) - A005578 (n + 3)

end

end A243869.P17781685264476359607

namespace A243869

/-- `A039300(n+2)-A005578(n+3)` -/
def P17781685264476359607.Spec : Prop :=
  ∀ n, P17781685264476359607.a n = A243869 (n + 4)

end A243869

/-! ## A243869.P10953219249943300091

`A174395(n+3)+A081251(n+1)/2`
-/

namespace A243869.P10953219249943300091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174395 (n + 3) : ℚ) + (A081251 (n + 1) : ℚ) / 2

end

end A243869.P10953219249943300091

namespace A243869

/-- `A174395(n+3)+A081251(n+1)/2` -/
def P10953219249943300091.Spec : Prop :=
  ∀ n, P10953219249943300091.a n = (A243869 (n + 4) : ℚ)

end A243869

/-!
# A243870: Number of Dyck paths of semilength n avoiding the consecutive steps UDUUUDDDUD (with U=(1,1), D=(1,-1)).

The programs for A243870, there is no canonical definition to state claims against.
-/

/-! ## A243870.P7772140166251112813

`A243881(∑[floor((n+2)/4)]+1)`
-/

namespace A243870.P7772140166251112813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243881 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A243870.P7772140166251112813

/-! ## A243870.P3118076702311368559

`A000108(n)-A333382(A247289(n))`
-/

namespace A243870.P3118076702311368559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A333382 (A247289 n).toNat

end

end A243870.P3118076702311368559

/-! ## A243870.P12710322862761986222

`A003056(A399966(n)-A056286(n+1))`
-/

namespace A243870.P12710322862761986222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A399966 n - A056286 (n + 1)).toNat

end

end A243870.P12710322862761986222

/-!
# A243871: Number of Dyck paths of semilength n having exactly 1 occurrence of the consecutive steps UDUUUDDDUD (with U=(1,1), D=(1,-1)).

The programs for A243871, there is no canonical definition to state claims against.
-/

/-! ## A243871.P10047582533310080168

`record[A243881(n+6)%A243881(n+5)]`
-/

namespace A243871.P10047582533310080168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243881 (n + 6)) (A243881 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243871.P10047582533310080168

/-! ## A243871.P4164214995985786908

`A097508(A151961(n+1))+n`
-/

namespace A243871.P4164214995985786908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (A151961 (n + 1)).toNat + (n : ℤ)

end

end A243871.P4164214995985786908

/-! ## A243871.P5262911521693158083

`A316555(A126400(n))+A006253(n)`
-/

namespace A243871.P5262911521693158083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316555 (A126400 n).toNat + A006253 n

end

end A243871.P5262911521693158083

/-!
# A243872: Number of Dyck paths of semilength n having exactly 2 (possibly overlapping) occurrences of the consecutive steps UDUUUDDDUD (with U=(1,1), D=(1,-1)).

The programs for A243872, there is no canonical definition to state claims against.
-/

/-! ## A243872.P16646307976476228666

`A057364(4*A026671(n))`
-/

namespace A243872.P16646307976476228666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057364 (4 * A026671 n).toNat

end

end A243872.P16646307976476228666

/-! ## A243872.P5471385860053316034

`A057364(lcm(4, A026671(n)))`
-/

namespace A243872.P5471385860053316034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057364 (Int.lcm 4 (A026671 n))

end

end A243872.P5471385860053316034

/-!
# A243873: Number of Dyck paths of semilength n having exactly 3 (possibly overlapping) occurrences of the consecutive steps UDUUUDDDUD (with U=(1,1), D=(1,-1)).

The programs for A243873, there is no canonical definition to state claims against.
-/

/-! ## A243873.P9529996888431690881

`A004524(A141199(2*n+1))+A002522(n)`
-/

namespace A243873.P9529996888431690881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A141199 (2 * n + 1)).toNat + A002522 n

end

end A243873.P9529996888431690881

/-! ## A243873.P7607900585623283649

`A004524(A290923(n))+A000312(A004524(n))`
-/

namespace A243873.P7607900585623283649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A290923 n).toNat + A000312 (A004524 n).toNat

end

end A243873.P7607900585623283649

/-!
# A243874: Number of Dyck paths of semilength n having exactly 4 (possibly overlapping) occurrences of the consecutive steps UDUUUDDDUD (with U=(1,1), D=(1,-1)).

The programs for A243874, there is no canonical definition to state claims against.
-/

/-! ## A243874.P8643654972278305726

`∑[xor(5^n, A324424(3*n+1))]`
-/

namespace A243874.P8643654972278305726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (5 ^ n : ℤ) (A324424 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243874.P8643654972278305726

/-!
# A243875: Number of Dyck paths of semilength n having exactly 5 (possibly overlapping) occurrences of the consecutive steps UDUUUDDDUD (with U=(1,1), D=(1,-1)).

The programs for A243875, there is no canonical definition to state claims against.
-/

/-! ## A243875.P956664070322223047

`A343879(A085283(n))+A099459(n)`
-/

namespace A243875.P956664070322223047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343879 (A085283 n).toNat + A099459 n

end

end A243875.P956664070322223047

/-!
# A243876: Number of Dyck paths of semilength n having exactly 6 (possibly overlapping) occurrences of the consecutive steps UDUUUDDDUD (with U=(1,1), D=(1,-1)).

The programs for A243876, there is no canonical definition to state claims against.
-/

/-! ## A243876.P4417129212318266945

`∑[A008619(A164300(n))]`
-/

namespace A243876.P4417129212318266945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A164300 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243876.P4417129212318266945

/-!
# A243877: Number of Dyck paths of semilength n having exactly 7 (possibly overlapping) occurrences of the consecutive steps UDUUUDDDUD (with U=(1,1), D=(1,-1)).

The programs for A243877, there is no canonical definition to state claims against.
-/

/-! ## A243877.P12028114695791476735

`A004709(A016129(n)-A305175(n+1))`
-/

namespace A243877.P12028114695791476735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (A016129 n - A305175 (n + 1)).toNat

end

end A243877.P12028114695791476735

/-!
# A243878: Number of Dyck paths of semilength n having exactly 8 (possibly overlapping) occurrences of the consecutive steps UDUUUDDDUD (with U=(1,1), D=(1,-1)).

The programs for A243878, there is no canonical definition to state claims against.
-/

/-! ## A243878.P17289287832457172682

`A313534(n*A186338(n))`
-/

namespace A243878.P17289287832457172682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313534 ((n : ℤ) * A186338 n).toNat

end

end A243878.P17289287832457172682

/-!
# A243881: Number T(n,k) of Dyck paths of semilength n having exactly k (possibly overlapping) occurrences of the consecutive steps UDUUUDDDUD (with U=(1,1), D=(1,-1)); triangle T(n,k), n>=0, 0<=k<=max(0,floor((n-1)/4)), read by rows.

The programs for A243881, there is no canonical definition to state claims against.
-/

/-! ## A243881.P10399942561592548583

`A159772(n+1)%A133330(A133335(n))`
-/

namespace A243881.P10399942561592548583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159772 (n + 1)) (A133330 (A133335 n).toNat)

end

end A243881.P10399942561592548583

/-!
# A243883: Numerator of circle radius r(n) at constant unit length sagitta and chord length = n.

The programs for A243883, the canonical program `A243883.P976211321530825635` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243883 has offset 1).

The definition of A243883 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243883.P976211321530825635

`lcm(8, (n+1)²+4)/8`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A243883

/-- `lcm(8, (n+1)²+4)/8` -/
def P976211321530825635.Spec : Prop :=
  ∀ n, P976211321530825635.a n = (A243883 (n + 1) : ℚ)

end A243883

/-! ## A243883.P11037798688504718878

`ogf((5+x+13x^2+5x^3+14x^4+2x^5+14x^6+2x^7+13x^8+x^9+5x^10+x^11)/(1-3x^4+3x^8-x^12))`
-/

namespace A243883.P11037798688504718878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 1, 13, 5, 14, 2, 14, 2, 13, 1, 5, 1] [1, 0, 0, 0, -3, 0, 0, 0, 3, 0, 0, 0, -1] n

end

end A243883.P11037798688504718878

namespace A243883

/-- `ogf((5+x+13x^2+5x^3+14x^4+2x^5+14x^6+2x^7+13x^8+x^9+5x^10+x^11)/(1-3x^4+3x^8-x^12))` -/
def P11037798688504718878.Spec : Prop :=
  ∀ n, P11037798688504718878.a n = A243883 (n + 1)

end A243883

/-! ## A243883.P4635544432192606692

`A087475(n+1)/A089146(n+1)`
-/

namespace A243883.P4635544432192606692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087475 (n + 1) : ℚ) / (A089146 (n + 1) : ℚ)

end

end A243883.P4635544432192606692

namespace A243883

/-- `A087475(n+1)/A089146(n+1)` -/
def P4635544432192606692.Spec : Prop :=
  ∀ n, P4635544432192606692.a n = (A243883 (n + 1) : ℚ)

end A243883

/-! ## A243883.P7233885863476053081

`A000265(4+(n+1)²)`
-/

namespace A243883.P7233885863476053081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (4 + (n + 1) ^ 2)

end

end A243883.P7233885863476053081

namespace A243883

/-- `A000265(4+(n+1)²)` -/
def P7233885863476053081.Spec : Prop :=
  ∀ n, P7233885863476053081.a n = A243883 (n + 1)

end A243883

/-! ## A243883.P5275110188366396128

`or(1, A000265((n+1)*(n+1)+4))`
-/

namespace A243883.P5275110188366396128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000265 ((n + 1) * (n + 1) + 4))

end

end A243883.P5275110188366396128

namespace A243883

/-- `or(1, A000265((n+1)*(n+1)+4))` -/
def P5275110188366396128.Spec : Prop :=
  ∀ n, P5275110188366396128.a n = A243883 (n + 1)

end A243883

/-! ## A243883.P17276031312231963647

`A000265(A087475(n+1))%A069107(n+1)`
-/

namespace A243883.P17276031312231963647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (A087475 (n + 1)).toNat) (A069107 (n + 1))

end

end A243883.P17276031312231963647

namespace A243883

/-- `A000265(A087475(n+1))%A069107(n+1)` -/
def P17276031312231963647.Spec : Prop :=
  ∀ n, P17276031312231963647.a n = A243883 (n + 1)

end A243883

/-! ## A243883.P5993005234308413666

`A000265(A087475(n+1))%A181262(A008619(n))`
-/

namespace A243883.P5993005234308413666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (A087475 (n + 1)).toNat) (A181262 (A008619 n).toNat)

end

end A243883.P5993005234308413666

namespace A243883

/-- `A000265(A087475(n+1))%A181262(A008619(n))` -/
def P5993005234308413666.Spec : Prop :=
  ∀ n, P5993005234308413666.a n = A243883 (n + 1)

end A243883

/-! ## A243883.P10323565527050844520

`A090395(A090395((n+1)²+4))`
-/

namespace A243883.P10323565527050844520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090395 (A090395 ((n + 1) ^ 2 + 4)).toNat

end

end A243883.P10323565527050844520

namespace A243883

/-- `A090395(A090395((n+1)²+4))` -/
def P10323565527050844520.Spec : Prop :=
  ∀ n, P10323565527050844520.a n = A243883 (n + 1)

end A243883

/-! ## A243883.P11942787126969583797

`A171435((1-n)²+(n+3)²)`
-/

namespace A243883.P11942787126969583797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 ((1 - (n : ℤ)) ^ 2 + ((n + 3) ^ 2 : ℤ)).toNat

end

end A243883.P11942787126969583797

namespace A243883

/-- `A171435((1-n)²+(n+3)²)` -/
def P11942787126969583797.Spec : Prop :=
  ∀ n, P11942787126969583797.a n = A243883 (n + 1)

end A243883

/-! ## A243883.P14046919265874326720

`A000265(A155966(n+1))%A043044(n+1)`
-/

namespace A243883.P14046919265874326720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (A155966 (n + 1)).toNat) (A043044 (n + 1))

end

end A243883.P14046919265874326720

namespace A243883

/-- `A000265(A155966(n+1))%A043044(n+1)` -/
def P14046919265874326720.Spec : Prop :=
  ∀ n, P14046919265874326720.a n = A243883 (n + 1)

end A243883

/-! ## A243883.P8869420232895300354

`A093411((n+1)²+4)`
-/

namespace A243883.P8869420232895300354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 ((n + 1) ^ 2 + 4)

end

end A243883.P8869420232895300354

namespace A243883

/-- `A093411((n+1)²+4)` -/
def P8869420232895300354.Spec : Prop :=
  ∀ n, P8869420232895300354.a n = A243883 (n + 1)

end A243883

/-! ## A243883.P11003016572357612687

`A302044(lcm(2, (n+1)²+4))`
-/

namespace A243883.P11003016572357612687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302044 (Nat.lcm 2 ((n + 1) ^ 2 + 4))

end

end A243883.P11003016572357612687

namespace A243883

/-- `A302044(lcm(2, (n+1)²+4))` -/
def P11003016572357612687.Spec : Prop :=
  ∀ n, P11003016572357612687.a n = A243883 (n + 1)

end A243883

/-! ## A243883.P1776203033976072565

`A302044(2*((n+1)²+4))`
-/

namespace A243883.P1776203033976072565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302044 (2 * ((n + 1) ^ 2 + 4))

end

end A243883.P1776203033976072565

namespace A243883

/-- `A302044(2*((n+1)²+4))` -/
def P1776203033976072565.Spec : Prop :=
  ∀ n, P1776203033976072565.a n = A243883 (n + 1)

end A243883

/-! ## A243883.P17804337475290171857

`gcd(A000217(A261327(n+1)), A261327(n+1))`
-/

namespace A243883.P17804337475290171857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (A261327 (n + 1)).toNat) (A261327 (n + 1))

end

end A243883.P17804337475290171857

namespace A243883

/-- `gcd(A000217(A261327(n+1)), A261327(n+1))` -/
def P17804337475290171857.Spec : Prop :=
  ∀ n, (P17804337475290171857.a n : ℤ) = A243883 (n + 1)

end A243883

/-! ## A243883.P7391210531069295786

`A328478((n+1)²+4)`
-/

namespace A243883.P7391210531069295786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328478 ((n + 1) ^ 2 + 4)

end

end A243883.P7391210531069295786

namespace A243883

/-- `A328478((n+1)²+4)` -/
def P7391210531069295786.Spec : Prop :=
  ∀ n, P7391210531069295786.a n = A243883 (n + 1)

end A243883

/-! ## A243883.P14235609121214984743

`A386824(A152950(n+1))`
-/

namespace A243883.P14235609121214984743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386824 (A152950 (n + 1)).toNat

end

end A243883.P14235609121214984743

namespace A243883

/-- `A386824(A152950(n+1))` -/
def P14235609121214984743.Spec : Prop :=
  ∀ n, P14235609121214984743.a n = A243883 (n + 1)

end A243883

/-! ## A243883.P12347072637761860988

`A386824(A152949(n+2))`
-/

namespace A243883.P12347072637761860988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386824 (A152949 (n + 2)).toNat

end

end A243883.P12347072637761860988

namespace A243883

/-- `A386824(A152949(n+2))` -/
def P12347072637761860988.Spec : Prop :=
  ∀ n, P12347072637761860988.a n = A243883 (n + 1)

end A243883

/-! ## A243883.P4347913237730823441

`A400876(∑[n+2])`
-/

namespace A243883.P4347913237730823441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400876 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A243883.P4347913237730823441

namespace A243883

/-- `A400876(∑[n+2])` -/
def P4347913237730823441.Spec : Prop :=
  ∀ n, P4347913237730823441.a n = A243883 (n + 1)

end A243883

/-! ## A243883.P16126722968823594479

`A386824(∑[n+3])`
-/

namespace A243883.P16126722968823594479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386824 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A243883.P16126722968823594479

namespace A243883

/-- `A386824(∑[n+3])` -/
def P16126722968823594479.Spec : Prop :=
  ∀ n, P16126722968823594479.a n = A243883 (n + 1)

end A243883

/-! ## A243883.P5972907446733394654

`A082725((n+1)²+4)`
-/

namespace A243883.P5972907446733394654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082725 ((n + 1) ^ 2 + 4)

end

end A243883.P5972907446733394654

namespace A243883

/-- `A082725((n+1)²+4)` -/
def P5972907446733394654.Spec : Prop :=
  ∀ n, P5972907446733394654.a n = A243883 (n + 1)

end A243883

/-!
# A243884: Type of walk that occurs when walking along a ray emanating from the center of a rotationally symmetric Penrose rhomb tiling with a "Sun" patch at the center (see comments for details).

The programs for A243884, there is no canonical definition to state claims against.
-/

/-! ## A243884.P14980969825867371173

`A035612(eq[0, A098862(2*n+5)])`
-/

namespace A243884.P14980969825867371173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098862 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243884.P14980969825867371173

/-! ## A243884.P7674001927450832318

`A001222(A110615(A110615(n+1))+2)`
-/

namespace A243884.P7674001927450832318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A110615 (A110615 (n + 1)).toNat + 2).toNat

end

end A243884.P7674001927450832318

/-! ## A243884.P12730543511899383898

`gcd(A064428(3*n), A090864(A335950(n+1)))`
-/

namespace A243884.P12730543511899383898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064428 (3 * n)) (A090864 (A335950 (n + 1)).toNat)

end

end A243884.P12730543511899383898

/-! ## A243884.P2824610974833336707

`gcd(A000005(2*n+1), A010872(A317307(n+1)))`
-/

namespace A243884.P2824610974833336707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (2 * n + 1)) (A010872 (A317307 (n + 1)).toNat)

end

end A243884.P2824610974833336707

/-! ## A243884.P1384856898075878673

`gcd(A181819(2*n+1), A232852(A000040(n+1)))`
-/

namespace A243884.P1384856898075878673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A181819 (2 * n + 1)) (A232852 (A000040 (n + 1)).toNat)

end

end A243884.P1384856898075878673

/-!
# A243886: Primes p = prime(n): such that p.n and n.p both are prime, where (.) indicates concatenation.

The programs for A243886, there is no canonical definition to state claims against.
-/

/-! ## A243886.P8037290441853463009

`∩[A084671(n+1), A166283(n+1)]`
-/

namespace A243886.P8037290441853463009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243886.P8037290441853463009

/-! ## A243886.P621276619981719765

`∩[A000040(A084670(n+1)), A166283(n+1)]`
-/

namespace A243886.P621276619981719765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A084670 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243886.P621276619981719765

/-!
# A243887: (p^2 - 3)/2 for odd primes p.

The programs for A243887, the canonical program `A243887.P5598863365777822828` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243887 has offset 1).

The definition of A243887 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243887.P5598863365777822828

`A216244(n+2)-1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A243887

/-- `A216244(n+2)-1` -/
def P5598863365777822828.Spec : Prop :=
  ∀ n, P5598863365777822828.a n = A243887 (n + 1)

theorem P5598863365777822828.correct : P5598863365777822828.Spec := by
  intro n
  simp only [A243887, Nat.add_sub_cancel]

end A243887

/-! ## A243887.P16567104832762542657

`(p?[2*n+1]²-3)/2`
-/

namespace A243887.P16567104832762542657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 : ℤ) - 3 : ℚ) / 2

end

end A243887.P16567104832762542657

namespace A243887

/-- `(p?[2*n+1]²-3)/2` -/
def P16567104832762542657.Spec : Prop :=
  ∀ n, P16567104832762542657.a n = (A243887 (n + 1) : ℚ)

end A243887

/-! ## A243887.P14125191092389066907

`A066885(n+2)-2`
-/

namespace A243887.P14125191092389066907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066885 (n + 2) - 2

end

end A243887.P14125191092389066907

namespace A243887

/-- `A066885(n+2)-2` -/
def P14125191092389066907.Spec : Prop :=
  ∀ n, P14125191092389066907.a n = A243887 (n + 1)

end A243887

/-! ## A243887.P1051169423250010502

`∑[A124434(n+1)]-2`
-/

namespace A243887.P1051169423250010502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A243887.P1051169423250010502

namespace A243887

/-- `∑[A124434(n+1)]-2` -/
def P1051169423250010502.Spec : Prop :=
  ∀ n, P1051169423250010502.a n = A243887 (n + 1)

end A243887

/-! ## A243887.P17490127248927411042

`2*A074367(n+1)+1`
-/

namespace A243887.P17490127248927411042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074367 (n + 1) + 1

end

end A243887.P17490127248927411042

namespace A243887

/-- `2*A074367(n+1)+1` -/
def P17490127248927411042.Spec : Prop :=
  ∀ n, P17490127248927411042.a n = A243887 (n + 1)

end A243887

/-! ## A243887.P16592061146746707704

`2*A024701(n+1)-1`
-/

namespace A243887.P16592061146746707704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024701 (n + 1) - 1

end

end A243887.P16592061146746707704

namespace A243887

/-- `2*A024701(n+1)-1` -/
def P16592061146746707704.Spec : Prop :=
  ∀ n, P16592061146746707704.a n = A243887 (n + 1)

end A243887

/-! ## A243887.P8070459379509175055

`2*A222963(n+2)+3`
-/

namespace A243887.P8070459379509175055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222963 (n + 2) + 3

end

end A243887.P8070459379509175055

namespace A243887

/-- `2*A222963(n+2)+3` -/
def P8070459379509175055.Spec : Prop :=
  ∀ n, P8070459379509175055.a n = A243887 (n + 1)

end A243887

/-! ## A243887.P12822048746042927960

`4*A061066(n+2)-1`
-/

namespace A243887.P12822048746042927960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A061066 (n + 2) - 1

end

end A243887.P12822048746042927960

namespace A243887

/-- `4*A061066(n+2)-1` -/
def P12822048746042927960.Spec : Prop :=
  ∀ n, P12822048746042927960.a n = A243887 (n + 1)

end A243887

/-! ## A243887.P11481928698027993911

`A074367(n+1)+A024701(n+1)`
-/

namespace A243887.P11481928698027993911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074367 (n + 1) + A024701 (n + 1)

end

end A243887.P11481928698027993911

namespace A243887

/-- `A074367(n+1)+A024701(n+1)` -/
def P11481928698027993911.Spec : Prop :=
  ∀ n, P11481928698027993911.a n = A243887 (n + 1)

end A243887

/-! ## A243887.P8835587756580722934

`A144519(n+1)-A098090(n+1)`
-/

namespace A243887.P8835587756580722934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144519 (n + 1) - A098090 (n + 1)

end

end A243887.P8835587756580722934

namespace A243887

/-- `A144519(n+1)-A098090(n+1)` -/
def P8835587756580722934.Spec : Prop :=
  ∀ n, P8835587756580722934.a n = A243887 (n + 1)

end A243887

/-! ## A243887.P1583363760382805813

`A143928(n+1)%A066885(n+2)`
-/

namespace A243887.P1583363760382805813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143928 (n + 1)) (A066885 (n + 2))

end

end A243887.P1583363760382805813

namespace A243887

/-- `A143928(n+1)%A066885(n+2)` -/
def P1583363760382805813.Spec : Prop :=
  ∀ n, P1583363760382805813.a n = A243887 (n + 1)

end A243887

/-! ## A243887.P5409963337253456926

`A084921(2+n)-1`
-/

namespace A243887.P5409963337253456926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084921 (2 + n) - 1

end

end A243887.P5409963337253456926

namespace A243887

/-- `A084921(2+n)-1` -/
def P5409963337253456926.Spec : Prop :=
  ∀ n, P5409963337253456926.a n = A243887 (n + 1)

end A243887

/-! ## A243887.P14784588623634617125

`A110494(n+2)-2`
-/

namespace A243887.P14784588623634617125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110494 (n + 2) - 2

end

end A243887.P14784588623634617125

namespace A243887

/-- `A110494(n+2)-2` -/
def P14784588623634617125.Spec : Prop :=
  ∀ n, P14784588623634617125.a n = A243887 (n + 1)

end A243887

/-! ## A243887.P6534487286953267341

`A166011(n+2)+3`
-/

namespace A243887.P6534487286953267341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166011 (n + 2) + 3

end

end A243887.P6534487286953267341

namespace A243887

/-- `A166011(n+2)+3` -/
def P6534487286953267341.Spec : Prop :=
  ∀ n, P6534487286953267341.a n = A243887 (n + 1)

end A243887

/-! ## A243887.P3296592612043967183

`A182200(n+2)/2`
-/

namespace A243887.P3296592612043967183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182200 (n + 2) : ℚ) / 2

end

end A243887.P3296592612043967183

namespace A243887

/-- `A182200(n+2)/2` -/
def P3296592612043967183.Spec : Prop :=
  ∀ n, P3296592612043967183.a n = (A243887 (n + 1) : ℚ)

end A243887

/-! ## A243887.P827406875679152852

`floor(A049001(n+2)/2)`
-/

namespace A243887.P827406875679152852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049001 (n + 2) : ℚ) / 2⌋

end

end A243887.P827406875679152852

namespace A243887

/-- `floor(A049001(n+2)/2)` -/
def P827406875679152852.Spec : Prop :=
  ∀ n, P827406875679152852.a n = A243887 (n + 1)

end A243887

/-! ## A243887.P8464191982016647369

`ceil(A166010(n+2)/2)`
-/

namespace A243887.P8464191982016647369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A166010 (n + 2) : ℚ) / 2⌉

end

end A243887.P8464191982016647369

namespace A243887

/-- `ceil(A166010(n+2)/2)` -/
def P8464191982016647369.Spec : Prop :=
  ∀ n, P8464191982016647369.a n = A243887 (n + 1)

end A243887

/-! ## A243887.P9603011677290867113

`(A000040(n+2)²-3)/2`
-/

namespace A243887.P9603011677290867113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) ^ 2 - 3 : ℚ) / 2

end

end A243887.P9603011677290867113

namespace A243887

/-- `(A000040(n+2)²-3)/2` -/
def P9603011677290867113.Spec : Prop :=
  ∀ n, P9603011677290867113.a n = (A243887 (n + 1) : ℚ)

end A243887

/-! ## A243887.P2428901558480582221

`2*∑[floor(Δ[(A000040(n+1)/2)²])]+1`
-/

namespace A243887.P2428901558480582221
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000040 (n + 1) : ℚ) / 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f2 (n + 1) - f2 n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A243887.P2428901558480582221

namespace A243887

/-- `2*∑[floor(Δ[(A000040(n+1)/2)²])]+1` -/
def P2428901558480582221.Spec : Prop :=
  ∀ n, P2428901558480582221.a n = A243887 (n + 1)

end A243887

/-! ## A243887.P4907567860761738819

`A067076(n+1)+A008837(n+2)`
-/

namespace A243887.P4907567860761738819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) + A008837 (n + 2)

end

end A243887.P4907567860761738819

namespace A243887

/-- `A067076(n+1)+A008837(n+2)` -/
def P4907567860761738819.Spec : Prop :=
  ∀ n, P4907567860761738819.a n = A243887 (n + 1)

end A243887

/-!
# A243888: Primes of the form 2*n^2+26*n+11.

The programs for A243888, the canonical program `A243888.P4620136928699206594` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243888 has offset 1).

The definition of A243888 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243888.P4620136928699206594

`p?[2*(n+1)*(n+14)+11]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A243888

/-- `p?[2*(n+1)*(n+14)+11]` -/
def P4620136928699206594.Spec : Prop :=
  ∀ n, (P4620136928699206594.a n : ℤ) = A243888 (n + 1)

theorem P4620136928699206594.correct : P4620136928699206594.Spec := by
  intro n
  simp only [A243888, Nat.add_sub_cancel]

end A243888

/-! ## A243888.P1803114263170057764

`or(1, p?[A328399((n+5)²)+A017185(n+1)])`
-/

namespace A243888.P1803114263170057764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 ((n + 5) ^ 2) + A017185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A243888.P1803114263170057764

namespace A243888

/-- `or(1, p?[A328399((n+5)²)+A017185(n+1)])` -/
def P1803114263170057764.Spec : Prop :=
  ∀ n, P1803114263170057764.a n = A243888 (n + 1)

end A243888

/-!
# A243889: Primes of the form 2*n^2+30*n+13.

The programs for A243889, there is no canonical definition to state claims against.
-/

/-! ## A243889.P17684476094482598070

`p?[A090288(n+12)-97]`
-/

namespace A243889.P17684476094482598070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090288 (n + 12) - 97

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243889.P17684476094482598070

/-! ## A243889.P5438507154035301823

`p?[(6*n+11)²-A045946(n)]`
-/

namespace A243889.P5438507154035301823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((6 * n + 11) ^ 2 : ℤ) - A045946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243889.P5438507154035301823

/-! ## A243889.P2083776267830836370

`p?[6*6*A046691(n+3)+49]`
-/

namespace A243889.P2083776267830836370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (6 * A046691 (n + 3)) + 49

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243889.P2083776267830836370

/-! ## A243889.P15094695005001844930

`p?[A098849(n)+A098847(n+3)]`
-/

namespace A243889.P15094695005001844930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098849 n + A098847 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243889.P15094695005001844930

/-! ## A243889.P14193504130170532111

`p?[A022144(n)+A001844(n+11)]`
-/

namespace A243889.P14193504130170532111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n + A001844 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243889.P14193504130170532111

/-!
# A243890: Primes of the form 2*n^2+38*n+17.

The programs for A243890, the canonical program `A243890.P4692966572407633764` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243890 has offset 1).

The definition of A243890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243890.P4692966572407633764

`p?[A212428(2*n+3)+n]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A243890

/-- `p?[A212428(2*n+3)+n]` -/
def P4692966572407633764.Spec : Prop :=
  ∀ n, P4692966572407633764.a n = A243890 (n + 1)

theorem P4692966572407633764.correct : P4692966572407633764.Spec := by
  intro n
  simp only [A243890, Nat.add_sub_cancel]

end A243890

/-! ## A243890.P15681437300576226768

`p?[A116940(n)+A008600(n+2)]`
-/

namespace A243890.P15681437300576226768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116940 n + A008600 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243890.P15681437300576226768

namespace A243890

/-- `p?[A116940(n)+A008600(n+2)]` -/
def P15681437300576226768.Spec : Prop :=
  ∀ n, P15681437300576226768.a n = A243890 (n + 1)

end A243890

/-! ## A243890.P14867432360163603416

`p?[A195142(n+4)-A005893(n)]`
-/

namespace A243890.P14867432360163603416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195142 (n + 4) - A005893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243890.P14867432360163603416

namespace A243890

/-- `p?[A195142(n+4)-A005893(n)]` -/
def P14867432360163603416.Spec : Prop :=
  ∀ n, P14867432360163603416.a n = A243890 (n + 1)

end A243890

/-! ## A243890.P14154326884086238184

`p?[A017569(n)+A000982(n+8)]`
-/

namespace A243890.P14154326884086238184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017569 n + A000982 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243890.P14154326884086238184

namespace A243890

/-- `p?[A017569(n)+A000982(n+8)]` -/
def P14154326884086238184.Spec : Prop :=
  ∀ n, P14154326884086238184.a n = A243890 (n + 1)

end A243890

/-! ## A243890.P17521608853135158903

`p?[A074148(n+11)+A017353(n)]`
-/

namespace A243890.P17521608853135158903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074148 (n + 11) + A017353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243890.P17521608853135158903

namespace A243890

/-- `p?[A074148(n+11)+A017353(n)]` -/
def P17521608853135158903.Spec : Prop :=
  ∀ n, P17521608853135158903.a n = A243890 (n + 1)

end A243890

/-! ## A243890.P3330228812590691185

`p?[3*A098850(n+1)-A098850(n)]`
-/

namespace A243890.P3330228812590691185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A098850 (n + 1) - A098850 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243890.P3330228812590691185

namespace A243890

/-- `p?[3*A098850(n+1)-A098850(n)]` -/
def P3330228812590691185.Spec : Prop :=
  ∀ n, P3330228812590691185.a n = A243890 (n + 1)

end A243890

/-! ## A243890.P3160266250902701747

`p?[A266725(n)+A017341(2*n+3)]`
-/

namespace A243890.P3160266250902701747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266725 n + A017341 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243890.P3160266250902701747

namespace A243890

/-- `p?[A266725(n)+A017341(2*n+3)]` -/
def P3160266250902701747.Spec : Prop :=
  ∀ n, P3160266250902701747.a n = A243890 (n + 1)

end A243890

/-! ## A243890.P18381930572819676810

`p?[A154590(n+2)+A017185(2*n+1)]`
-/

namespace A243890.P18381930572819676810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154590 (n + 2) + A017185 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243890.P18381930572819676810

namespace A243890

/-- `p?[A154590(n+2)+A017185(2*n+1)]` -/
def P18381930572819676810.Spec : Prop :=
  ∀ n, P18381930572819676810.a n = A243890 (n + 1)

end A243890

/-! ## A243890.P4281344584315726888

`p?[A154576(n+2)+A017341(2*n+1)]`
-/

namespace A243890.P4281344584315726888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154576 (n + 2) + A017341 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243890.P4281344584315726888

namespace A243890

/-- `p?[A154576(n+2)+A017341(2*n+1)]` -/
def P4281344584315726888.Spec : Prop :=
  ∀ n, P4281344584315726888.a n = A243890 (n + 1)

end A243890

/-! ## A243890.P15546012120092447856

`p?[A161549(n+4)+A017113(2*n+1)]`
-/

namespace A243890.P15546012120092447856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161549 (n + 4) + A017113 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243890.P15546012120092447856

namespace A243890

/-- `p?[A161549(n+4)+A017113(2*n+1)]` -/
def P15546012120092447856.Spec : Prop :=
  ∀ n, P15546012120092447856.a n = A243890 (n + 1)

end A243890

/-! ## A243890.P7238506569865141656

`p?[A017425(3*n+4)+A000217(2*(n+2))]`
-/

namespace A243890.P7238506569865141656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017425 (3 * n + 4) + A000217 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243890.P7238506569865141656

namespace A243890

/-- `p?[A017425(3*n+4)+A000217(2*(n+2))]` -/
def P7238506569865141656.Spec : Prop :=
  ∀ n, P7238506569865141656.a n = A243890 (n + 1)

end A243890

/-! ## A243890.P2180228389669906050

`p?[A133263(2*(n+2))+A017401(3*n+4)]`
-/

namespace A243890.P2180228389669906050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 (2 * (n + 2)) + A017401 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243890.P2180228389669906050

namespace A243890

/-- `p?[A133263(2*(n+2))+A017401(3*n+4)]` -/
def P2180228389669906050.Spec : Prop :=
  ∀ n, P2180228389669906050.a n = A243890 (n + 1)

end A243890

/-! ## A243890.P7322517642560121134

`p?[A154591(n+1)+A130824(A130824(n))]`
-/

namespace A243890.P7322517642560121134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154591 (n + 1) + A130824 (A130824 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243890.P7322517642560121134

namespace A243890

/-- `p?[A154591(n+1)+A130824(A130824(n))]` -/
def P7322517642560121134.Spec : Prop :=
  ∀ n, P7322517642560121134.a n = A243890 (n + 1)

end A243890

/-!
# A243891: Primes of the form 2*n^2 + 62*n + 29.

The programs for A243891, the canonical program `A243891.P305816657358226771` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243891 has offset 1).

The definition of A243891 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243891.P305816657358226771

`p?[A132763(2*(n+4))-A056220(n)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A243891

/-- `p?[A132763(2*(n+4))-A056220(n)]` -/
def P305816657358226771.Spec : Prop :=
  ∀ n, P305816657358226771.a n = A243891 (n + 1)

theorem P305816657358226771.correct : P305816657358226771.Spec := by
  intro n
  simp only [A243891, Nat.add_sub_cancel]

end A243891

/-! ## A243891.P111572283414782818

`p?[A139609(n)+4*A133263(n+8)]`
-/

namespace A243891.P111572283414782818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + 4 * A133263 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243891.P111572283414782818

namespace A243891

/-- `p?[A139609(n)+4*A133263(n+8)]` -/
def P111572283414782818.Spec : Prop :=
  ∀ n, P111572283414782818.a n = A243891 (n + 1)

end A243891

/-! ## A243891.P7518029989258177227

`p?[A304839(n+2)+A166136(2*n+1)]`
-/

namespace A243891.P7518029989258177227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 2) + A166136 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243891.P7518029989258177227

namespace A243891

/-- `p?[A304839(n+2)+A166136(2*n+1)]` -/
def P7518029989258177227.Spec : Prop :=
  ∀ n, P7518029989258177227.a n = A243891 (n + 1)

end A243891

/-! ## A243891.P4332004153720470894

`p?[A159754(2*n+3)+A005893(n+4)]`
-/

namespace A243891.P4332004153720470894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (2 * n + 3) + A005893 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243891.P4332004153720470894

namespace A243891

/-- `p?[A159754(2*n+3)+A005893(n+4)]` -/
def P4332004153720470894.Spec : Prop :=
  ∀ n, P4332004153720470894.a n = A243891 (n + 1)

end A243891

/-! ## A243891.P7215938691742532431

`p?[A016873(7*n+1)+A000124(2*n+17)]`
-/

namespace A243891.P7215938691742532431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 (7 * n + 1) + A000124 (2 * n + 17)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243891.P7215938691742532431

namespace A243891

/-- `p?[A016873(7*n+1)+A000124(2*n+17)]` -/
def P7215938691742532431.Spec : Prop :=
  ∀ n, P7215938691742532431.a n = A243891 (n + 1)

end A243891

/-! ## A243891.P105274020474087543

`p?[A154600(A144396(n+1))-A033580(n)]`
-/

namespace A243891.P105274020474087543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154600 (A144396 (n + 1)).toNat - A033580 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243891.P105274020474087543

namespace A243891

/-- `p?[A154600(A144396(n+1))-A033580(n)]` -/
def P105274020474087543.Spec : Prop :=
  ∀ n, P105274020474087543.a n = A243891 (n + 1)

end A243891

/-! ## A243891.P17241131879034106903

`p?[A106232(n+1)+A128470(A005408(n))-2]`
-/

namespace A243891.P17241131879034106903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106232 (n + 1) + (A128470 (A005408 n).toNat - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243891.P17241131879034106903

namespace A243891

/-- `p?[A106232(n+1)+A128470(A005408(n))-2]` -/
def P17241131879034106903.Spec : Prop :=
  ∀ n, P17241131879034106903.a n = A243891 (n + 1)

end A243891

/-!
# A243892: a(n) = prime(k) with k = n^2 + prime(n)^2.

The programs for A243892, the canonical program `A243892.P16948930208499248981` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243892 has offset 1).

The definition of A243892 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243892.P16948930208499248981

`A000040(A106587(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A243892

/-- `A000040(A106587(n+1))` -/
def P16948930208499248981.Spec : Prop :=
  ∀ n, P16948930208499248981.a n = A243892 (n + 1)

theorem P16948930208499248981.correct : P16948930208499248981.Spec := by
  intro n
  simp only [A243892, Nat.add_sub_cancel]

end A243892

/-! ## A243892.P5867808017620739462

`A000040((n+1)²+A000040(n+1)²)`
-/

namespace A243892.P5867808017620739462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (((n + 1) ^ 2 : ℤ) + A000040 (n + 1) ^ 2).toNat

end

end A243892.P5867808017620739462

namespace A243892

/-- `A000040((n+1)²+A000040(n+1)²)` -/
def P5867808017620739462.Spec : Prop :=
  ∀ n, P5867808017620739462.a n = A243892 (n + 1)

end A243892

/-! ## A243892.P7617090884463335700

`A055670(Δ[A024525(n)]+(n+1)²)-1`
-/

namespace A243892.P7617090884463335700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (f1 (n + 1) - f1 n + ((n + 1) ^ 2 : ℤ)).toNat - 1

end

end A243892.P7617090884463335700

namespace A243892

/-- `A055670(Δ[A024525(n)]+(n+1)²)-1` -/
def P7617090884463335700.Spec : Prop :=
  ∀ n, P7617090884463335700.a n = A243892 (n + 1)

end A243892

/-! ## A243892.P13064809565059635498

`A001748(A001248(n+1)+(n+1)²)/3`
-/

namespace A243892.P13064809565059635498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A001248 (n + 1) + ((n + 1) ^ 2 : ℤ)).toNat : ℚ) / 3

end

end A243892.P13064809565059635498

namespace A243892

/-- `A001748(A001248(n+1)+(n+1)²)/3` -/
def P13064809565059635498.Spec : Prop :=
  ∀ n, P13064809565059635498.a n = (A243892 (n + 1) : ℚ)

theorem P13064809565059635498.correct : P13064809565059635498.Spec := by
  intro n
  simp only [A243892, Nat.add_sub_cancel, A243892.P13064809565059635498.a, A243892.P16948930208499248981.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A001748, A001748.P16019639290970068825.a, A106587, A106587.P14902607394703240877.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A243892

/-! ## A243892.P7230147893790100742

`A156037(A280076(n+2)+(n+1)²)+1`
-/

namespace A243892.P7230147893790100742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (A280076 (n + 2) + ((n + 1) ^ 2 : ℤ)).toNat + 1

end

end A243892.P7230147893790100742

namespace A243892

/-- `A156037(A280076(n+2)+(n+1)²)+1` -/
def P7230147893790100742.Spec : Prop :=
  ∀ n, P7230147893790100742.a n = A243892 (n + 1)

end A243892

/-!
# A243893: a(n) = prime(k-1) with k = n^2 + prime(n)^2.

The programs for A243893, the canonical program `A243893.P4774674769451763253` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243893 has offset 1).

The definition of A243893 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243893.P4774674769451763253

`A000040(A106587(n+1)-1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A243893

/-- `A000040(A106587(n+1)-1)` -/
def P4774674769451763253.Spec : Prop :=
  ∀ n, P4774674769451763253.a n = A243893 (n + 1)

theorem P4774674769451763253.correct : P4774674769451763253.Spec := by
  intro n
  simp only [A243893, Nat.add_sub_cancel]

end A243893

/-! ## A243893.P1024929798437856673

`A000040((n+1)²+A000040(n+1)²-1)`
-/

namespace A243893.P1024929798437856673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (((n + 1) ^ 2 : ℤ) + A000040 (n + 1) ^ 2 - 1).toNat

end

end A243893.P1024929798437856673

namespace A243893

/-- `A000040((n+1)²+A000040(n+1)²-1)` -/
def P1024929798437856673.Spec : Prop :=
  ∀ n, P1024929798437856673.a n = A243893 (n + 1)

end A243893

/-! ## A243893.P15473222336293327620

`A008578(p?[round(8*n/7)]²+(n+1)²)`
-/

namespace A243893.P15473222336293327620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + ((n + 1) ^ 2 : ℤ)).toNat

end

end A243893.P15473222336293327620

namespace A243893

/-- `A008578(p?[round(8*n/7)]²+(n+1)²)` -/
def P15473222336293327620.Spec : Prop :=
  ∀ n, P15473222336293327620.a n = A243893 (n + 1)

end A243893

/-! ## A243893.P11623465052707383301

`A008578(A106587(n+1))`
-/

namespace A243893.P11623465052707383301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A106587 (n + 1)).toNat

end

end A243893.P11623465052707383301

namespace A243893

/-- `A008578(A106587(n+1))` -/
def P11623465052707383301.Spec : Prop :=
  ∀ n, P11623465052707383301.a n = A243893 (n + 1)

end A243893

/-! ## A243893.P2282134964483432554

`A151799(A243892(n+1))`
-/

namespace A243893.P2282134964483432554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (A243892 (n + 1)).toNat

end

end A243893.P2282134964483432554

namespace A243893

/-- `A151799(A243892(n+1))` -/
def P2282134964483432554.Spec : Prop :=
  ∀ n, P2282134964483432554.a n = A243893 (n + 1)

end A243893

/-!
# A243894: a(n) = prime(k+1) with k = n^2 + prime(n)^2.

The programs for A243894, the canonical program `A243894.P4993376093936159259` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243894 has offset 1).

The definition of A243894 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243894.P4993376093936159259

`A000040(A106587(n+1)+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A243894

/-- `A000040(A106587(n+1)+1)` -/
def P4993376093936159259.Spec : Prop :=
  ∀ n, P4993376093936159259.a n = A243894 (n + 1)

theorem P4993376093936159259.correct : P4993376093936159259.Spec := by
  intro n
  simp only [A243894, Nat.add_sub_cancel]

end A243894

/-! ## A243894.P13919309446943217934

`A000040((n+1)²+A000040(n+1)²+1)`
-/

namespace A243894.P13919309446943217934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (((n + 1) ^ 2 : ℤ) + A000040 (n + 1) ^ 2 + 1).toNat

end

end A243894.P13919309446943217934

namespace A243894

/-- `A000040((n+1)²+A000040(n+1)²+1)` -/
def P13919309446943217934.Spec : Prop :=
  ∀ n, P13919309446943217934.a n = A243894 (n + 1)

end A243894

/-! ## A243894.P17214785272369282082

`A243892(n+1)+A001223(A106587(n+1))`
-/

namespace A243894.P17214785272369282082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243892 (n + 1) + A001223 (A106587 (n + 1)).toNat

end

end A243894.P17214785272369282082

namespace A243894

/-- `A243892(n+1)+A001223(A106587(n+1))` -/
def P17214785272369282082.Spec : Prop :=
  ∀ n, P17214785272369282082.a n = A243894 (n + 1)

end A243894

/-! ## A243894.P16090306581614232131

`A045319(A106587(n+1))`
-/

namespace A243894.P16090306581614232131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A106587 (n + 1)).toNat

end

end A243894.P16090306581614232131

namespace A243894

/-- `A045319(A106587(n+1))` -/
def P16090306581614232131.Spec : Prop :=
  ∀ n, P16090306581614232131.a n = A243894 (n + 1)

end A243894

/-! ## A243894.P15179400712856110481

`A151800(A243892(n+1))`
-/

namespace A243894.P15179400712856110481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A243892 (n + 1)).toNat

end

end A243894.P15179400712856110481

namespace A243894

/-- `A151800(A243892(n+1))` -/
def P15179400712856110481.Spec : Prop :=
  ∀ n, P15179400712856110481.a n = A243894 (n + 1)

end A243894

/-!
# A243895: a(n) = prime(n^2-1).

The programs for A243895, the canonical program `A243895.P4270673593351729815` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243895 has offset 2).

The definition of A243895 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040((n+2)²-1)` (program `A243895.P4270673593351729815`, by `A243895.P4270673593351729815.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A243895.P4270673593351729815

`A000040((n+2)²-1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A243895

/-- `A000040((n+2)²-1)` -/
def P4270673593351729815.Spec : Prop :=
  ∀ n, P4270673593351729815.a n = A243895 (n + 2)

theorem P4270673593351729815.correct : P4270673593351729815.Spec := by
  intro n
  simp only [A243895, Nat.add_sub_cancel]

end A243895

/-! ## A243895.P1625791742117915850

`A055670(∑[2*n+3])-1`
-/

namespace A243895.P1625791742117915850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A243895.P1625791742117915850

namespace A243895

/-- `A055670(∑[2*n+3])-1` -/
def P1625791742117915850.Spec : Prop :=
  ∀ n, P1625791742117915850.a n = A243895 (n + 2)

end A243895

/-! ## A243895.P9736630362790892113

`A001749(n*(n+4)+3)/4`
-/

namespace A243895.P9736630362790892113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (n * (n + 4) + 3) : ℚ) / 4

end

end A243895.P9736630362790892113

namespace A243895

/-- `A001749(n*(n+4)+3)/4` -/
def P9736630362790892113.Spec : Prop :=
  ∀ n, P9736630362790892113.a n = (A243895 (n + 2) : ℚ)

end A243895

/-! ## A243895.P4169392612859253533

`A001748(∑[2*(n+1)+1])/3`
-/

namespace A243895.P4169392612859253533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3

end

end A243895.P4169392612859253533

namespace A243895

/-- `A001748(∑[2*(n+1)+1])/3` -/
def P4169392612859253533.Spec : Prop :=
  ∀ n, P4169392612859253533.a n = (A243895 (n + 2) : ℚ)

end A243895

/-! ## A243895.P8235562232522214734

`A156037(A002620(2*(n+1))+2*(n+1))+1`
-/

namespace A243895.P8235562232522214734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (A002620 (2 * (n + 1)) + (2 * (n + 1) : ℤ)).toNat + 1

end

end A243895.P8235562232522214734

namespace A243895

/-- `A156037(A002620(2*(n+1))+2*(n+1))+1` -/
def P8235562232522214734.Spec : Prop :=
  ∀ n, P8235562232522214734.a n = A243895 (n + 2)

end A243895

/-! ## A243895.P6212032724664477111

`A156037(A016825(n)+A002522(n))+1`
-/

namespace A243895.P6212032724664477111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (A016825 n + A002522 n).toNat + 1

end

end A243895.P6212032724664477111

namespace A243895

/-- `A156037(A016825(n)+A002522(n))+1` -/
def P6212032724664477111.Spec : Prop :=
  ∀ n, P6212032724664477111.a n = A243895 (n + 2)

end A243895

/-! ## A243895.P767803228457460394

`A008578((n+2)²)`
-/

namespace A243895.P767803228457460394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 ((n + 2) ^ 2)

end

end A243895.P767803228457460394

namespace A243895

/-- `A008578((n+2)²)` -/
def P767803228457460394.Spec : Prop :=
  ∀ n, P767803228457460394.a n = A243895 (n + 2)

end A243895

/-! ## A243895.P18136913858751387163

`A171525((n+2)²)`
-/

namespace A243895.P18136913858751387163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171525 ((n + 2) ^ 2)

end

end A243895.P18136913858751387163

namespace A243895

/-- `A171525((n+2)²)` -/
def P18136913858751387163.Spec : Prop :=
  ∀ n, P18136913858751387163.a n = A243895 (n + 2)

end A243895

/-! ## A243895.P10127146180640376921

`A175787((n+2)²)`
-/

namespace A243895.P10127146180640376921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 ((n + 2) ^ 2)

end

end A243895.P10127146180640376921

namespace A243895

/-- `A175787((n+2)²)` -/
def P10127146180640376921.Spec : Prop :=
  ∀ n, P10127146180640376921.a n = A243895 (n + 2)

end A243895

/-! ## A243895.P2394313372412741075

`A182986((n+2)²)`
-/

namespace A243895.P2394313372412741075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 ((n + 2) ^ 2)

end

end A243895.P2394313372412741075

namespace A243895

/-- `A182986((n+2)²)` -/
def P2394313372412741075.Spec : Prop :=
  ∀ n, P2394313372412741075.a n = A243895 (n + 2)

end A243895

/-!
# A243896: a(n) = prime(n^2+1).

The programs for A243896, the canonical program `A243896.P14227546847035992392` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243896 has offset 0).

The definition of A243896 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n²+1)` (program `A243896.P14227546847035992392`, by `A243896.P14227546847035992392.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A243896.P14227546847035992392

`A000040(n²+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A243896

/-- `A000040(n²+1)` -/
def P14227546847035992392.Spec : Prop :=
  ∀ n, P14227546847035992392.a n = A243896 n

theorem P14227546847035992392.correct : P14227546847035992392.Spec := by
  intro n
  simp only [A243896]

end A243896

/-! ## A243896.P15864961953514232342

`A059428(comp[2*(1+n)]+1)`
-/

namespace A243896.P15864961953514232342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (1 + n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059428 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A243896.P15864961953514232342

namespace A243896

/-- `A059428(comp[2*(1+n)]+1)` -/
def P15864961953514232342.Spec : Prop :=
  ∀ n, P15864961953514232342.a n = A243896 n

end A243896

/-! ## A243896.P9198001648963720262

`p?[A064517(n+1)+1]`
-/

namespace A243896.P9198001648963720262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064517 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243896.P9198001648963720262

namespace A243896

/-- `p?[A064517(n+1)+1]` -/
def P9198001648963720262.Spec : Prop :=
  ∀ n, P9198001648963720262.a n = A243896 n

end A243896

/-! ## A243896.P1275689578716847610

`∪[A053998(n), A054564(n)]`
-/

namespace A243896.P1275689578716847610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054564 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A243896.P1275689578716847610

namespace A243896

/-- `∪[A053998(n), A054564(n)]` -/
def P1275689578716847610.Spec : Prop :=
  ∀ n, (P1275689578716847610.a n : ℤ) = A243896 n

end A243896

/-! ## A243896.P7955524958412699522

`A001748(n²+1)/3`
-/

namespace A243896.P7955524958412699522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (n ^ 2 + 1) : ℚ) / 3

end

end A243896.P7955524958412699522

namespace A243896

/-- `A001748(n²+1)/3` -/
def P7955524958412699522.Spec : Prop :=
  ∀ n, P7955524958412699522.a n = (A243896 n : ℚ)

theorem P7955524958412699522.correct : P7955524958412699522.Spec := by
  intro n
  simp only [A243896, Nat.add_sub_cancel, A243896.P7955524958412699522.a, A243896.P14227546847035992392.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001748, A001748.P16019639290970068825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A243896

/-! ## A243896.P425210510853873850

`A001749(n²+1)/4`
-/

namespace A243896.P425210510853873850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (n ^ 2 + 1) : ℚ) / 4

end

end A243896.P425210510853873850

namespace A243896

/-- `A001749(n²+1)/4` -/
def P425210510853873850.Spec : Prop :=
  ∀ n, P425210510853873850.a n = (A243896 n : ℚ)

theorem P425210510853873850.correct : P425210510853873850.Spec := by
  intro n
  simp only [A243896, Nat.add_sub_cancel, A243896.P425210510853873850.a, A243896.P14227546847035992392.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001749, A001749.P16106244962881767471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A243896

/-! ## A243896.P12292189663023437279

`floor(sqrt(A066872((1-n)²+2*n)))`
-/

namespace A243896.P12292189663023437279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A066872 ((1 - (n : ℤ)) ^ 2 + (2 * n : ℤ)).toNat)

end

end A243896.P12292189663023437279

namespace A243896

/-- `floor(sqrt(A066872((1-n)²+2*n)))` -/
def P12292189663023437279.Spec : Prop :=
  ∀ n, P12292189663023437279.a n = A243896 n

end A243896

/-! ## A243896.P14755485956706162805

`A045319(A400197(n+1))`
-/

namespace A243896.P14755485956706162805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A400197 (n + 1)).toNat

end

end A243896.P14755485956706162805

namespace A243896

/-- `A045319(A400197(n+1))` -/
def P14755485956706162805.Spec : Prop :=
  ∀ n, P14755485956706162805.a n = A243896 n

end A243896

/-! ## A243896.P10345810924411490187

`A045319(record[A000463(n+1)])`
-/

namespace A243896.P10345810924411490187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243896.P10345810924411490187

namespace A243896

/-- `A045319(record[A000463(n+1)])` -/
def P10345810924411490187.Spec : Prop :=
  ∀ n, P10345810924411490187.a n = A243896 n

end A243896

/-! ## A243896.P13147177605374016987

`A161847(n²+1)`
-/

namespace A243896.P13147177605374016987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161847 (n ^ 2 + 1)

end

end A243896.P13147177605374016987

namespace A243896

/-- `A161847(n²+1)` -/
def P13147177605374016987.Spec : Prop :=
  ∀ n, P13147177605374016987.a n = A243896 n

end A243896

/-! ## A243896.P17741461578422517797

`A383578(n²+1)`
-/

namespace A243896.P17741461578422517797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383578 (n ^ 2 + 1)

end

end A243896.P17741461578422517797

namespace A243896

/-- `A383578(n²+1)` -/
def P17741461578422517797.Spec : Prop :=
  ∀ n, P17741461578422517797.a n = A243896 n

end A243896

/-! ## A243896.P6729252103488045231

`A008578(n²+2)`
-/

namespace A243896.P6729252103488045231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n ^ 2 + 2)

end

end A243896.P6729252103488045231

namespace A243896

/-- `A008578(n²+2)` -/
def P6729252103488045231.Spec : Prop :=
  ∀ n, P6729252103488045231.a n = A243896 n

end A243896

/-! ## A243896.P13673685041011849766

`A182986(n²+2)`
-/

namespace A243896.P13673685041011849766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n ^ 2 + 2)

end

end A243896.P13673685041011849766

namespace A243896

/-- `A182986(n²+2)` -/
def P13673685041011849766.Spec : Prop :=
  ∀ n, P13673685041011849766.a n = A243896 n

end A243896

/-! ## A243896.P3327104131615926721

`A158611(n²+3)`
-/

namespace A243896.P3327104131615926721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n ^ 2 + 3)

end

end A243896.P3327104131615926721

namespace A243896

/-- `A158611(n²+3)` -/
def P3327104131615926721.Spec : Prop :=
  ∀ n, P3327104131615926721.a n = A243896 n

end A243896

/-! ## A243896.P10567710218068298127

`abs(A273960(n²+1))`
-/

namespace A243896.P10567710218068298127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A273960 (n ^ 2 + 1)|

end

end A243896.P10567710218068298127

namespace A243896

/-- `abs(A273960(n²+1))` -/
def P10567710218068298127.Spec : Prop :=
  ∀ n, P10567710218068298127.a n = A243896 n

end A243896

/-! ## A243896.P13724405305652795727

`sqrt(A001248(n²+1))`
-/

namespace A243896.P13724405305652795727
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n ^ 2 + 1) : ℝ)

end

end A243896.P13724405305652795727

namespace A243896

/-- `sqrt(A001248(n²+1))` -/
def P13724405305652795727.Spec : Prop :=
  ∀ n, P13724405305652795727.a n = (A243896 n : ℝ)

end A243896

/-! ## A243896.P10324189933621558037

`A006093(n²+1)+1`
-/

namespace A243896.P10324189933621558037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n ^ 2 + 1) + 1

end

end A243896.P10324189933621558037

namespace A243896

/-- `A006093(n²+1)+1` -/
def P10324189933621558037.Spec : Prop :=
  ∀ n, P10324189933621558037.a n = A243896 n

theorem P10324189933621558037.correct : P10324189933621558037.Spec := by
  intro n
  simp only [A243896, Nat.add_sub_cancel, A243896.P10324189933621558037.a, A243896.P14227546847035992392.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A243896

/-! ## A243896.P9857890129711486186

`A008864(n²+1)-1`
-/

namespace A243896.P9857890129711486186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n ^ 2 + 1) - 1

end

end A243896.P9857890129711486186

namespace A243896

/-- `A008864(n²+1)-1` -/
def P9857890129711486186.Spec : Prop :=
  ∀ n, P9857890129711486186.a n = A243896 n

theorem P9857890129711486186.correct : P9857890129711486186.Spec := by
  intro n
  simp only [A243896, Nat.add_sub_cancel, A243896.P9857890129711486186.a, A243896.P14227546847035992392.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A243896

/-!
# A243897: Primes p such that p^5 + p^3 + p - 2 is prime.

The programs for A243897, there is no canonical definition to state claims against.
-/

/-! ## A243897.P16290076591371886532

`p?[∑[p?[A269596(n+1)]]+1]`
-/

namespace A243897.P16290076591371886532
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243897.P16290076591371886532

/-! ## A243897.P13072144283010657663

`A109258(∑[record[A037027(n)]])`
-/

namespace A243897.P13072144283010657663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109258 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A243897.P13072144283010657663

/-! ## A243897.P10272504655306499199

`A109258(∑[record[A155161(n)]])`
-/

namespace A243897.P10272504655306499199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109258 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A243897.P10272504655306499199

/-!
# A243898: Prime p such that p^5 + p^3 + p + 4 is prime.

The programs for A243898, there is no canonical definition to state claims against.
-/

/-! ## A243898.P10366830283193533121

`p?[∑[A099801(A135530(n))]]`
-/

namespace A243898.P10366830283193533121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A135530 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243898.P10366830283193533121

/-! ## A243898.P16533139686707253991

`p?[A171181(∑[A207254(n+1)])]`
-/

namespace A243898.P16533139686707253991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207254 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171181 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243898.P16533139686707253991

/-! ## A243898.P6937386201995558593

`A151800(A000196(∏[(n-1)/a(n-1)+1]))` with `a(0)=4, a(1)=4, a(2)=21`
-/

namespace A243898.P6937386201995558593
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 4, 21] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000196 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A243898.P6937386201995558593

/-!
# A243899: Prime p such that p^5 + p^3 + p - 4 is prime.

The programs for A243899, there is no canonical definition to state claims against.
-/

/-! ## A243899.P1437373479825325016

`p?[A002620(n+2)-A005710(n)]`
-/

namespace A243899.P1437373479825325016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 2) - A005710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243899.P1437373479825325016

/-! ## A243899.P1351966105020327509

`A006530(A018443(n+1)*A125272(n+1))`
-/

namespace A243899.P1351966105020327509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A018443 (n + 1) * A125272 (n + 1)).toNat

end

end A243899.P1351966105020327509

/-! ## A243899.P12718159178204856144

`A006530(lcm(A018443(n+1), A125272(n+1)))`
-/

namespace A243899.P12718159178204856144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm (A018443 (n + 1)) (A125272 (n + 1)))

end

end A243899.P12718159178204856144

