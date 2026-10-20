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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
# A059201: Number of T_0-covers of a labeled n-set.

The programs for A059201, there is no canonical definition to state claims against.
-/

/-! ## A059201.P14987474371532386585

`A326939(n)/2`
-/

namespace A059201.P14987474371532386585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326939 n : ℚ) / 2

end

end A059201.P14987474371532386585

/-! ## A059201.P2855785018329619225

`A059088(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A059201.P2855785018329619225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A059088 n - (n : ℤ) * a (n - 1)

end

end A059201.P2855785018329619225

/-!
# A059204: Number of non-unimodal permutations of n items (i.e., those which do not simply go up for the first part and then down for the rest, but at some point go down then up).

The programs for A059204, the canonical program `A059204.P17151573816621482727` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059204 has offset 0).

The definition of A059204 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059204.P542537710840711424

`n!-ceil(2^(n-1))`
-/

namespace A059204.P542537710840711424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A059204.P542537710840711424

namespace A059204

/-- `n!-ceil(2^(n-1))` -/
def P542537710840711424.Spec : Prop :=
  ∀ n, P542537710840711424.a n = A059204 n

end A059204

/-! ## A059204.P17151573816621482727

`A000142(n)-A011782(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059204

/-- `A000142(n)-A011782(n)` -/
def P17151573816621482727.Spec : Prop :=
  ∀ n, P17151573816621482727.a n = A059204 n

theorem P17151573816621482727.correct : P17151573816621482727.Spec := by
  intro n
  simp only [A059204]

end A059204

/-! ## A059204.P6024008791887021591

`floor(n!-2^(n-1))`
-/

namespace A059204.P6024008791887021591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial n : ℚ) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A059204.P6024008791887021591

namespace A059204

/-- `floor(n!-2^(n-1))` -/
def P6024008791887021591.Spec : Prop :=
  ∀ n, P6024008791887021591.a n = A059204 n

end A059204

/-! ## A059204.P11695262812359433485

`abs(round(2^(n-1))-n!)`
-/

namespace A059204.P11695262812359433485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) - (Nat.factorial n : ℤ)|

end

end A059204.P11695262812359433485

namespace A059204

/-- `abs(round(2^(n-1))-n!)` -/
def P11695262812359433485.Spec : Prop :=
  ∀ n, P11695262812359433485.a n = A059204 n

end A059204

/-! ## A059204.P846102298496355390

`∏[round(1/acot(n))]-ceil(2^(n-1))`
-/

namespace A059204.P846102298496355390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A059204.P846102298496355390

namespace A059204

/-- `∏[round(1/acot(n))]-ceil(2^(n-1))` -/
def P846102298496355390.Spec : Prop :=
  ∀ n, P846102298496355390.a n = A059204 n

end A059204

/-! ## A059204.P8072952345621791230

`∏[ceil(abs(γ-n))]-ceil(2^(n-1))`
-/

namespace A059204.P8072952345621791230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A059204.P8072952345621791230

namespace A059204

/-- `∏[ceil(abs(γ-n))]-ceil(2^(n-1))` -/
def P8072952345621791230.Spec : Prop :=
  ∀ n, P8072952345621791230.a n = A059204 n

end A059204

/-! ## A059204.P16564551666808561083

`abs(ceil(2^(n-1))-∏[A028310(n)])`
-/

namespace A059204.P16564551666808561083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - ∏ j ∈ Finset.range (n + 1), f1 j|

end

end A059204.P16564551666808561083

namespace A059204

/-- `abs(ceil(2^(n-1))-∏[A028310(n)])` -/
def P16564551666808561083.Spec : Prop :=
  ∀ n, P16564551666808561083.a n = A059204 n

end A059204

/-! ## A059204.P6101949960446843104

`floor(∏[A007318(∑[n]+1)]-2^(n-1))`
-/

namespace A059204.P6101949960446843104
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A059204.P6101949960446843104

namespace A059204

/-- `floor(∏[A007318(∑[n]+1)]-2^(n-1))` -/
def P6101949960446843104.Spec : Prop :=
  ∀ n, P6101949960446843104.a n = A059204 n

end A059204

/-! ## A059204.P8622147552022345833

`abs(A000032(C(3, n²))^(n-1)-A000142(n))`
-/

namespace A059204.P8622147552022345833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A000032 (Nat.choose 3 (n ^ 2)) : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (A000142 n : ℚ)|

end

end A059204.P8622147552022345833

namespace A059204

/-- `abs(A000032(C(3, n²))^(n-1)-A000142(n))` -/
def P8622147552022345833.Spec : Prop :=
  ∀ n, P8622147552022345833.a n = (A059204 n : ℚ)

end A059204

/-!
# A059205: Numbers n such that n^4 reversed is a prime.

The programs for A059205, there is no canonical definition to state claims against.
-/

/-! ## A059205.P4037771038343431281

`root(A253912(n+1), 4)`
-/

namespace A059205.P4037771038343431281
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253912 (n + 1) : ℝ) ^ (1 / (4 : ℝ))

end

end A059205.P4037771038343431281

/-! ## A059205.P15531953789575280993

`A000027(sqrt(sqrt(A253912(n+1))))`
-/

namespace A059205.P15531953789575280993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A253912 (n + 1) : ℝ)))).toNat

end

end A059205.P15531953789575280993

/-! ## A059205.P6293657267732469492

`sqrt(sqrt(A253912(n+1)))%A002646(n+1)`
-/

namespace A059205.P6293657267732469492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A253912 (n + 1) : ℝ)))) (A002646 (n + 1))

end

end A059205.P6293657267732469492

/-! ## A059205.P14514469564558995269

`sqrt(sqrt(A253912(n+1))%A058996(n+1))`
-/

namespace A059205.P14514469564558995269
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A253912 (n + 1) : ℝ))) (A058996 (n + 1)) : ℝ)

end

end A059205.P14514469564558995269

/-! ## A059205.P12566922027003208196

`A038502(sqrt(sqrt(A253912(n+1))))`
-/

namespace A059205.P12566922027003208196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A253912 (n + 1) : ℝ)))).toNat

end

end A059205.P12566922027003208196

/-! ## A059205.P15690131382935745681

`A254667(sqrt(sqrt(A253912(n+1))))`
-/

namespace A059205.P15690131382935745681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A253912 (n + 1) : ℝ)))).toNat

end

end A059205.P15690131382935745681

/-!
# A059209: Numbers n such that n^8 reversed is a prime.

The programs for A059209, there is no canonical definition to state claims against.
-/

/-! ## A059209.P15715558502903317859

`eq[8, A085324(n+1)]+1`
-/

namespace A059209.P15715558502903317859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085324 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A059209.P15715558502903317859

/-!
# A059211: Numbers k such that k^10 reversed is a prime.

The programs for A059211, there is no canonical definition to state claims against.
-/

/-! ## A059211.P960177798699594862

`record[A062251(2*n+5)%A062220(n+4)]`
-/

namespace A059211.P960177798699594862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062251 (2 * n + 5)) (A062220 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059211.P960177798699594862

/-!
# A059213: Numbers n such that n^12 reversed is a prime.

The programs for A059213, there is no canonical definition to state claims against.
-/

/-! ## A059213.P14261731598556113501

`record[A056926(A059207(n+1))]`
-/

namespace A059213.P14261731598556113501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A059207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059213.P14261731598556113501

/-!
# A059214: Square array T(k,n) = C(n-1,k) + Sum_{i=0..k} C(n,i) read by antidiagonals (k >= 1, n >= 1).

The programs for A059214, there is no canonical definition to state claims against.
-/

/-! ## A059214.P12288451943486529743

`2*A216274(n)`
-/

namespace A059214.P12288451943486529743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A216274 n

end

end A059214.P12288451943486529743

/-! ## A059214.P6192418926724886080

`A131248(comp[∑[n+1]])+1`
-/

namespace A059214.P6192418926724886080
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131248 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1

end

end A059214.P6192418926724886080

/-! ## A059214.P7675697077686647514

`2*A004070(comp[∑[n+1]])`
-/

namespace A059214.P7675697077686647514
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004070 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A059214.P7675697077686647514

/-! ## A059214.P12115601793732575209

`(A054124(A007401(n+1))+A054124(n))*A238303(n)`
-/

namespace A059214.P12115601793732575209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054124 (A007401 (n + 1)).toNat + A054124 n) * A238303 n

end

end A059214.P12115601793732575209

/-! ## A059214.P18095864752335099863

`A059250(comp[∑[n]]+1)`
-/

namespace A059214.P18095864752335099863
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059250 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A059214.P18095864752335099863

/-! ## A059214.P12406891821374137910

`lcm(2, A059250(A080036(n+1)))`
-/

namespace A059214.P12406891821374137910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A059250 (A080036 (n + 1)).toNat)

end

end A059214.P12406891821374137910

/-! ## A059214.P15520634098933433480

`2*A054124(lt[0, A014473(n)])`
-/

namespace A059214.P15520634098933433480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A059214.P15520634098933433480

/-! ## A059214.P13248952107803617619

`2*A054124(lt[1, A007318(n)])`
-/

namespace A059214.P13248952107803617619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A059214.P13248952107803617619

/-! ## A059214.P923167476887581400

`2*A054124(A080036(n)+A003057(n+2))`
-/

namespace A059214.P923167476887581400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054124 (A080036 n + A003057 (n + 2)).toNat

end

end A059214.P923167476887581400

/-! ## A059214.P11969888976633771494

`2*A054123((n-comp[∑[n]])²-n)`
-/

namespace A059214.P11969888976633771494
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054123 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - (n : ℤ)).toNat

end

end A059214.P11969888976633771494

/-! ## A059214.P6065682809960105803

`filter[A059250(n+1), A358224(#)]`
-/

namespace A059214.P6065682809960105803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358224 (f1 j).toNat = 1) n)

end

end A059214.P6065682809960105803

/-! ## A059214.P8797668696265533021

`filter[A059250(n+1), A178226(#)]`
-/

namespace A059214.P8797668696265533021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A059214.P8797668696265533021

/-! ## A059214.P8204206583070026293

`filter[A059250(n+1), A254377(#)]`
-/

namespace A059214.P8204206583070026293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254377 (f1 j).toNat = 1) n)

end

end A059214.P8204206583070026293

/-! ## A059214.P15150704443339287817

`A004277(A216274(n))`
-/

namespace A059214.P15150704443339287817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A216274 n).toNat

end

end A059214.P15150704443339287817

/-! ## A059214.P2874601064746815886

`filter[A059250(n+3), A381735(#)]`
-/

namespace A059214.P2874601064746815886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059250 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381735 (f1 j).toNat = 1) n)

end

end A059214.P2874601064746815886

/-! ## A059214.P6814585095212892050

`filter[A059250(n+1), A043545(#)]`
-/

namespace A059214.P6814585095212892050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A059214.P6814585095212892050

/-! ## A059214.P1168197766096599546

`filter[A059250(n+1), A059841(#)]`
-/

namespace A059214.P1168197766096599546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A059214.P1168197766096599546

/-! ## A059214.P17226103074399311954

`filter[A059250(n+1), A072608(#)]`
-/

namespace A059214.P17226103074399311954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072608 (f1 j).toNat = 1) n)

end

end A059214.P17226103074399311954

/-! ## A059214.P4502588811775466380

`filter[A059250(n+1), A267442(#)]`
-/

namespace A059214.P4502588811775466380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267442 (f1 j).toNat = 1) n)

end

end A059214.P4502588811775466380

/-!
# A059215: Least number k such that k^n reversed is a prime.

The programs for A059215, there is no canonical definition to state claims against.
-/

/-! ## A059215.P11896987456256712676

`root(A069868(n+1), n+1)`
-/

namespace A059215.P11896987456256712676
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A069868 (n + 1) : ℝ) ^ (1 / (n + 1 : ℝ))

end

end A059215.P11896987456256712676

/-! ## A059215.P15822588787599421252

`A272229(gcd(A007954(n+1), A325606(n+1)))`
-/

namespace A059215.P15822588787599421252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272229 (Int.gcd (A007954 (n + 1)) (A325606 (n + 1)))

end

end A059215.P15822588787599421252

/-!
# A059216: Variation of Boustrophedon transform applied to all-1's sequence (see Comments for details).

The programs for A059216, there is no canonical definition to state claims against.
-/

/-! ## A059216.P5676766101858974051

`A059234(∑[n+1])`
-/

namespace A059216.P5676766101858974051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059234 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059216.P5676766101858974051

/-! ## A059216.P16210842085845437194

`record[Δ[A059234(n+2)]]`
-/

namespace A059216.P16210842085845437194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059234 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059216.P16210842085845437194

/-! ## A059216.P10706995986092944182

`A059217(A131179(n+1))`
-/

namespace A059216.P10706995986092944182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059217 (A131179 (n + 1)).toNat

end

end A059216.P10706995986092944182

/-! ## A059216.P11570624167703750778

`record[A059217(A066182(n+1))]`
-/

namespace A059216.P11570624167703750778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059217 (A066182 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059216.P11570624167703750778

/-! ## A059216.P2789253925102859278

`record[A059217(n+1)/A007318(n)]`
-/

namespace A059216.P2789253925102859278
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059217 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059216.P2789253925102859278

/-! ## A059216.P5952051221130221697

`record[A059217(n+1)/A132044(n)]`
-/

namespace A059216.P5952051221130221697
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059217 (n + 1) : ℚ) / (A132044 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059216.P5952051221130221697

/-! ## A059216.P2632719111905328669

`record[gcd(A059217(n+1), A062707(n))]`
-/

namespace A059216.P2632719111905328669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059217 (n + 1)) (A062707 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059216.P2632719111905328669

/-! ## A059216.P2857010385394966263

`record[record[A059234(n+1)]/A059234(n+1)]`
-/

namespace A059216.P2857010385394966263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059234 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ) / (A059234 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059216.P2857010385394966263

/-! ## A059216.P5657261372847866586

`record[A059217(n+1)/A060187(n+1)]`
-/

namespace A059216.P5657261372847866586
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059217 (n + 1) : ℚ) / (A060187 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059216.P5657261372847866586

/-!
# A059217: The array in A059216 read by antidiagonals in 'up' direction.

The programs for A059217, there is no canonical definition to state claims against.
-/

/-! ## A059217.P2316199908655679023

`A059234(A056023(n+1))`
-/

namespace A059217.P2316199908655679023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059234 (A056023 (n + 1)).toNat

end

end A059217.P2316199908655679023

/-!
# A059219: Variation of Boustrophedon transform applied to sequence 1,0,0,0,...: fill an array by diagonals in alternating directions - 'up' and 'down'. The first element of each diagonal after the first is 0. When 'going up', add to the previous element the elements of the row the new element is in. When 'going down', add to the previous element the elements of the column the new element is in. The final element of the n-th diagonal is a(n).

The programs for A059219, there is no canonical definition to state claims against.
-/

/-! ## A059219.P487289559270548928

`A059235(∑[n+1])`
-/

namespace A059219.P487289559270548928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059235 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059219.P487289559270548928

/-! ## A059219.P5540253188535318570

`A059718(∑[n]+n)`
-/

namespace A059219.P5540253188535318570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059718 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A059219.P5540253188535318570

/-! ## A059219.P4708714247050108563

`abs(record[Δ[A059235(n+1)]])`
-/

namespace A059219.P4708714247050108563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059235 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A059219.P4708714247050108563

/-! ## A059219.P7825882555275020670

`A059220(A131179(n+1))`
-/

namespace A059219.P7825882555275020670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059220 (A131179 (n + 1)).toNat

end

end A059219.P7825882555275020670

/-! ## A059219.P8558675716100625421

`A059220(A056023(∑[n+1]))`
-/

namespace A059219.P8558675716100625421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059220 (A056023 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A059219.P8558675716100625421

/-! ## A059219.P16762788383314455434

`gcd(A000038(n), A059235(A000217(n+1)))`
-/

namespace A059219.P16762788383314455434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A059235 (A000217 (n + 1)).toNat)

end

end A059219.P16762788383314455434

/-! ## A059219.P18129233341091456164

`A059220(A374084(n+1))`
-/

namespace A059219.P18129233341091456164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059220 (A374084 (n + 1)).toNat

end

end A059219.P18129233341091456164

/-!
# A059220: The array in A059219 read by antidiagonals in 'up' direction.

The programs for A059220, there is no canonical definition to state claims against.
-/

/-! ## A059220.P5547014046658812111

`A059235(A056023(n+1))`
-/

namespace A059220.P5547014046658812111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059235 (A056023 (n + 1)).toNat

end

end A059220.P5547014046658812111

/-!
# A059221: Number of 3-bead necklaces where each bead is an unlabeled rooted tree, by total number of nodes.

The programs for A059221, there is no canonical definition to state claims against.
-/

/-! ## A059221.P9419481687920578761

`A001462(A106228(n))`
-/

namespace A059221.P9419481687920578761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A106228 n).toNat

end

end A059221.P9419481687920578761

/-! ## A059221.P14021900725333045807

`ceil(∑{d}[3^n, A007494(#)]/A167614(n+1))`
-/

namespace A059221.P14021900725333045807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ d ∈ Nat.divisors (f1 n), A007494 d : ℤ) : ℚ) / (A167614 (n + 1) : ℚ)⌉

end

end A059221.P14021900725333045807

/-! ## A059221.P4608172596572142285

`ceil(∑{d}[3^n, A165355(#)]/A167614(n+1))`
-/

namespace A059221.P4608172596572142285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ d ∈ Nat.divisors (f1 n), A165355 d : ℤ) : ℚ) / (A167614 (n + 1) : ℚ)⌉

end

end A059221.P4608172596572142285

/-! ## A059221.P3261138814079566567

`A001462(A121988(n)+A097805(n))`
-/

namespace A059221.P3261138814079566567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A121988 n + A097805 n).toNat

end

end A059221.P3261138814079566567

/-! ## A059221.P5394692433607787018

`A023193(A097893(n))-A011861(n)`
-/

namespace A059221.P5394692433607787018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A097893 n).toNat - A011861 n

end

end A059221.P5394692433607787018

/-!
# A059222: Minimal number of disjoint edge-paths into which the graph of the n-ary cube can be partitioned.

The programs for A059222, the canonical program `A059222.P8919765243299171633` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059222 has offset 1).

The definition of A059222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059222.P8919765243299171633

`gcd(2, n)^n`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059222

/-- `gcd(2, n)^n` -/
def P8919765243299171633.Spec : Prop :=
  ∀ n, (P8919765243299171633.a n : ℤ) = A059222 (n + 1)

theorem P8919765243299171633.correct : P8919765243299171633.Spec := by
  intro n
  simp only [A059222, Nat.add_sub_cancel]

end A059222

/-! ## A059222.P8296546485171727972

`(2-n%2)^n`
-/

namespace A059222.P8296546485171727972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((n % 2 : ℕ) : ℤ)) ^ n

end

end A059222.P8296546485171727972

namespace A059222

/-- `(2-n%2)^n` -/
def P8296546485171727972.Spec : Prop :=
  ∀ n, P8296546485171727972.a n = A059222 (n + 1)

end A059222

/-! ## A059222.P15113865578523749001

`(2-and(1, n))^n`
-/

namespace A059222.P15113865578523749001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.land 1 n : ℤ)) ^ n

end

end A059222.P15113865578523749001

namespace A059222

/-- `(2-and(1, n))^n` -/
def P15113865578523749001.Spec : Prop :=
  ∀ n, P15113865578523749001.a n = A059222 (n + 1)

end A059222

/-! ## A059222.P4557082774545217315

`abs(or(n, -2)^n)`
-/

namespace A059222.P4557082774545217315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n : ℤ) (-2) ^ n|

end

end A059222.P4557082774545217315

namespace A059222

/-- `abs(or(n, -2)^n)` -/
def P4557082774545217315.Spec : Prop :=
  ∀ n, P4557082774545217315.a n = A059222 (n + 1)

end A059222

/-! ## A059222.P5539384948406175181

`(-or(n, -2))^n`
-/

namespace A059222.P5539384948406175181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-Int.lor (n : ℤ) (-2)) ^ n

end

end A059222.P5539384948406175181

namespace A059222

/-- `(-or(n, -2))^n` -/
def P5539384948406175181.Spec : Prop :=
  ∀ n, P5539384948406175181.a n = A059222 (n + 1)

end A059222

/-! ## A059222.P12230533495705182284

`(-n%2+2)^n`
-/

namespace A059222.P12230533495705182284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (-(n : ℤ)) 2 + 2) ^ n

end

end A059222.P12230533495705182284

namespace A059222

/-- `(-n%2+2)^n` -/
def P12230533495705182284.Spec : Prop :=
  ∀ n, P12230533495705182284.a n = A059222 (n + 1)

end A059222

/-! ## A059222.P15592742687652598209

`(char[2*n]+1)^n`
-/

namespace A059222.P15592742687652598209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0) + 1) ^ n

end

end A059222.P15592742687652598209

namespace A059222

/-- `(char[2*n]+1)^n` -/
def P15592742687652598209.Spec : Prop :=
  ∀ n, (P15592742687652598209.a n : ℤ) = A059222 (n + 1)

end A059222

/-! ## A059222.P3111863838146303362

`∏{p}[n, ceil(3/#)^n]`
-/

namespace A059222.P3111863838146303362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌈3 / (p : ℚ)⌉ ^ n

end

end A059222.P3111863838146303362

namespace A059222

/-- `∏{p}[n, ceil(3/#)^n]` -/
def P3111863838146303362.Spec : Prop :=
  ∀ n, P3111863838146303362.a n = A059222 (n + 1)

end A059222

/-! ## A059222.P11487455088638298377

`floor(2^(2*n-lcm(2, n)))`
-/

namespace A059222.P11487455088638298377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((2 * n : ℤ) - (Nat.lcm 2 n : ℤ) : ℤ)⌋

end

end A059222.P11487455088638298377

namespace A059222

/-- `floor(2^(2*n-lcm(2, n)))` -/
def P11487455088638298377.Spec : Prop :=
  ∀ n, P11487455088638298377.a n = A059222 (n + 1)

end A059222

/-! ## A059222.P5577968402895872991

`abs((or(1, n)-(n-1))^n)`
-/

namespace A059222.P5577968402895872991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((Nat.lor 1 n : ℤ) - ((n : ℤ) - 1)) ^ n|

end

end A059222.P5577968402895872991

namespace A059222

/-- `abs((or(1, n)-(n-1))^n)` -/
def P5577968402895872991.Spec : Prop :=
  ∀ n, P5577968402895872991.a n = A059222 (n + 1)

end A059222

/-! ## A059222.P12459472323507250143

`ceil((2/xor(n, n+1))^n)`
-/

namespace A059222.P12459472323507250143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 / (Nat.xor n (n + 1) : ℚ)) ^ n⌉

end

end A059222.P12459472323507250143

namespace A059222

/-- `ceil((2/xor(n, n+1))^n)` -/
def P12459472323507250143.Spec : Prop :=
  ∀ n, P12459472323507250143.a n = A059222 (n + 1)

end A059222

/-! ## A059222.P2247231305223259847

`gcd(4, n²)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A059222.P2247231305223259847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.gcd 4 (n ^ 2) * a (n - 2)

end

end A059222.P2247231305223259847

namespace A059222

/-- `gcd(4, n²)*a(n-2)` -/
def P2247231305223259847.Spec : Prop :=
  ∀ n, (P2247231305223259847.a n : ℤ) = A059222 (n + 1)

end A059222

/-! ## A059222.P13075714120972596292

`floor(2^(n/a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A059222.P13075714120972596292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊(2 : ℝ) ^ ((n : ℚ) / (a (n - 1) : ℚ) : ℝ)⌋

end

end A059222.P13075714120972596292

namespace A059222

/-- `floor(2^(n/a(n-1)))` -/
def P13075714120972596292.Spec : Prop :=
  ∀ n, P13075714120972596292.a n = A059222 (n + 1)

end A059222

/-! ## A059222.P10934682668911837917

`∏{d}[1-a(n-1), #^n]` with `a(0)=2`
-/

namespace A059222.P10934682668911837917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d ^ n

end

end A059222.P10934682668911837917

namespace A059222

/-- `∏{d}[1-a(n-1), #^n]` -/
def P10934682668911837917.Spec : Prop :=
  ∀ n, (P10934682668911837917.a n : ℤ) = A059222 (n + 1)

end A059222

/-! ## A059222.P13244867899621672298

`∑{digits}[1-a(n-1), #^n]` with `a(0)=2`
-/

namespace A059222.P13244867899621672298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ n).sum

end

end A059222.P13244867899621672298

namespace A059222

/-- `∑{digits}[1-a(n-1), #^n]` -/
def P13244867899621672298.Spec : Prop :=
  ∀ n, (P13244867899621672298.a n : ℤ) = A059222 (n + 1)

end A059222

/-! ## A059222.P5750543209548580128

`∑{e}[1-a(n-1), #^n]` with `a(0)=4`
-/

namespace A059222.P5750543209548580128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ n

end

end A059222.P5750543209548580128

namespace A059222

/-- `∑{e}[1-a(n-1), #^n]` -/
def P5750543209548580128.Spec : Prop :=
  ∀ n, (P5750543209548580128.a n : ℤ) = A059222 (n + 1)

end A059222

/-! ## A059222.P6546799387959480474

`∏{digits}[1-a(n-1), #^n]` with `a(0)=2`
-/

namespace A059222.P6546799387959480474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ n).prod

end

end A059222.P6546799387959480474

namespace A059222

/-- `∏{digits}[1-a(n-1), #^n]` -/
def P6546799387959480474.Spec : Prop :=
  ∀ n, (P6546799387959480474.a n : ℤ) = A059222 (n + 1)

end A059222

/-! ## A059222.P3485989341581565614

`ogf((1+x-x^2-4x^3)/(1-5x^2+4x^4))`
-/

namespace A059222.P3485989341581565614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1, -4] [1, 0, -5, 0, 4] n

end

end A059222.P3485989341581565614

namespace A059222

/-- `ogf((1+x-x^2-4x^3)/(1-5x^2+4x^4))` -/
def P3485989341581565614.Spec : Prop :=
  ∀ n, P3485989341581565614.a n = A059222 (n + 1)

end A059222

/-! ## A059222.P10331992471852671162

`floor((∑[2-a(n-1)]-n)^n)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A059222.P10331992471852671162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)) ^ n

end

end A059222.P10331992471852671162

namespace A059222

/-- `floor((∑[2-a(n-1)]-n)^n)` -/
def P10331992471852671162.Spec : Prop :=
  ∀ n, P10331992471852671162.a n = A059222 (n + 1)

end A059222

/-! ## A059222.P14826962843115586328

`ceil(4/a(n-1)*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A059222.P14826962843115586328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌈4 / (a (n - 1) : ℚ) * (a (n - 2) : ℚ)⌉

end

end A059222.P14826962843115586328

namespace A059222

/-- `ceil(4/a(n-1)*a(n-2))` -/
def P14826962843115586328.Spec : Prop :=
  ∀ n, P14826962843115586328.a n = A059222 (n + 1)

end A059222

/-!
# A059223: Primes p such that x^37 = 2 has no solution mod p.

The programs for A059223, there is no canonical definition to state claims against.
-/

/-! ## A059223.P5961448255431668770

`A216970(n+1)%A224806(n+2)`
-/

namespace A059223.P5961448255431668770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216970 (n + 1)) (A224806 (n + 2))

end

end A059223.P5961448255431668770

/-! ## A059223.P1410848501072017626

`A006530(9*A000265(p?[74*n+1]))`
-/

namespace A059223.P1410848501072017626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  74 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (9 * A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A059223.P1410848501072017626

/-! ## A059223.P13392645393124421965

`A007913(9*A000265(p?[74*n+1]))`
-/

namespace A059223.P13392645393124421965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  74 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (9 * A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A059223.P13392645393124421965

/-! ## A059223.P4602778639401511919

`A006530(9*record[A006530(74*(abs(n-(2*n+1))+1)+1)])`
-/

namespace A059223.P4602778639401511919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (74 * (|(n : ℤ) - (2 * n + 1 : ℤ)| + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (9 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A059223.P4602778639401511919

/-! ## A059223.P8562694486646294505

`A216970(n+1)^A305962(A131054(n))`
-/

namespace A059223.P8562694486646294505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216970 (n + 1) : ℚ) ^ (A305962 (A131054 n).toNat : ℤ)

end

end A059223.P8562694486646294505

/-!
# A059224: a(n) = 2^(n-3)*(n + 3)*(2*n - 3).

The programs for A059224, the canonical program `A059224.P17600888059109192855` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059224 has offset 3).

The definition of A059224 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*(n+6)*(2*(n+3)-3)` (program `A059224.P17600888059109192855`, by `A059224.P17600888059109192855.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A059224.P17600888059109192855

`2^n*(n+6)*(2*(n+3)-3)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059224

/-- `2^n*(n+6)*(2*(n+3)-3)` -/
def P17600888059109192855.Spec : Prop :=
  ∀ n, P17600888059109192855.a n = A059224 (n + 3)

theorem P17600888059109192855.correct : P17600888059109192855.Spec := by
  intro n
  simp only [A059224, Nat.add_sub_cancel]

end A059224

/-! ## A059224.P17181068420321185361

`6*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=18, a(1)=70, a(2)=224`
-/

namespace A059224.P17181068420321185361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [18, 70, 224] fun n a =>
  6 * a (n - 1) - 12 * a (n - 2) + 8 * a (n - 3)

end

end A059224.P17181068420321185361

namespace A059224

/-- `6*a(n-1)-12*a(n-2)+8*a(n-3)` -/
def P17181068420321185361.Spec : Prop :=
  ∀ n, P17181068420321185361.a n = A059224 (n + 3)

theorem P17181068420321185361.correct : P17181068420321185361.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A059224, Nat.add_sub_cancel, A059224.P17181068420321185361.a, A059224.P17600888059109192855.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A059224, Nat.add_sub_cancel, A059224.P17181068420321185361.a, A059224.P17600888059109192855.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A059224

/-! ## A059224.P291197468504048830

`Δ[n*Δ[A128135(n+2)]]`
-/

namespace A059224.P291197468504048830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128135 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059224.P291197468504048830

namespace A059224

/-- `Δ[n*Δ[A128135(n+2)]]` -/
def P291197468504048830.Spec : Prop :=
  ∀ n, P291197468504048830.a n = A059224 (n + 3)

end A059224

/-! ## A059224.P13436291546815115636

`Δ[2*n*Δ[A052951(n)]]`
-/

namespace A059224.P13436291546815115636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * (f2 (n + 1) - f2 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059224.P13436291546815115636

namespace A059224

/-- `Δ[2*n*Δ[A052951(n)]]` -/
def P13436291546815115636.Spec : Prop :=
  ∀ n, P13436291546815115636.a n = A059224 (n + 3)

end A059224

/-! ## A059224.P12316464738338297387

`Δ[A020742(n)*A036289(n)]`
-/

namespace A059224.P12316464738338297387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n * A036289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059224.P12316464738338297387

namespace A059224

/-- `Δ[A020742(n)*A036289(n)]` -/
def P12316464738338297387.Spec : Prop :=
  ∀ n, P12316464738338297387.a n = A059224 (n + 3)

end A059224

/-! ## A059224.P9800601388483539511

`Δ[A000079(n)*A130861(n+1)]`
-/

namespace A059224.P9800601388483539511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A130861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059224.P9800601388483539511

namespace A059224

/-- `Δ[A000079(n)*A130861(n+1)]` -/
def P9800601388483539511.Spec : Prop :=
  ∀ n, P9800601388483539511.a n = A059224 (n + 3)

end A059224

/-! ## A059224.P12446035743863135844

`Δ[A000079(n)*A055999(2*n)]`
-/

namespace A059224.P12446035743863135844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A055999 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059224.P12446035743863135844

namespace A059224

/-- `Δ[A000079(n)*A055999(2*n)]` -/
def P12446035743863135844.Spec : Prop :=
  ∀ n, P12446035743863135844.a n = A059224 (n + 3)

end A059224

/-! ## A059224.P18446292054311683804

`Δ[Δ[A268581(n+1)]*A001787(n)]`
-/

namespace A059224.P18446292054311683804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268581 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A001787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059224.P18446292054311683804

namespace A059224

/-- `Δ[Δ[A268581(n+1)]*A001787(n)]` -/
def P18446292054311683804.Spec : Prop :=
  ∀ n, P18446292054311683804.a n = A059224 (n + 3)

end A059224

/-! ## A059224.P10559137501295360887

`A059226(A167614(n+2))`
-/

namespace A059224.P10559137501295360887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059226 (A167614 (n + 2)).toNat

end

end A059224.P10559137501295360887

namespace A059224

/-- `A059226(A167614(n+2))` -/
def P10559137501295360887.Spec : Prop :=
  ∀ n, P10559137501295360887.a n = A059224 (n + 3)

end A059224

/-!
# A059225: Primes p such that x^31 = 2 has no solution mod p.

The programs for A059225, there is no canonical definition to state claims against.
-/

/-! ## A059225.P3358297305094438802

`filter[A142005(n+1), A289057(#)]`
-/

namespace A059225.P3358297305094438802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A289057 (f1 j).toNat = 1) n)

end

end A059225.P3358297305094438802

/-! ## A059225.P2549835932985617806

`A142005(lt[A122478(2*n+3), A239424(2*n+1)])`
-/

namespace A059225.P2549835932985617806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122478 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239424 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142005 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A059225.P2549835932985617806

/-! ## A059225.P10862589176586222079

`A142005(lt[8, A128728(2*(n+2))])`
-/

namespace A059225.P10862589176586222079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128728 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A059225.P10862589176586222079

/-! ## A059225.P11798194589416255869

`p?[63*(n+1)-A127288(n)]`
-/

namespace A059225.P11798194589416255869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (63 * (n + 1) : ℤ) - A127288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059225.P11798194589416255869

/-! ## A059225.P2789508438739680978

`A142005(lt[A205295(n), A003285(n+1)])`
-/

namespace A059225.P2789508438739680978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205295 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142005 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A059225.P2789508438739680978

/-!
# A059226: Triangle T(n,k) (0 <= k <= n) read by rows: top entry is 1, all other rows begin with 0; typical entry is sum of entry to left plus sum of all entries above it in the triangle.

The programs for A059226, there is no canonical definition to state claims against.
-/

/-! ## A059226.P18157170172989870092

`A001221(A005181(2*(n+1)))*A295027(n+1)`
-/

namespace A059226.P18157170172989870092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A005181 (2 * (n + 1))).toNat * A295027 (n + 1)

end

end A059226.P18157170172989870092

/-!
# A059227: Last entry in n-th row of triangle defined in A059226.

The programs for A059227, there is no canonical definition to state claims against.
-/

/-! ## A059227.P11937540313041829099

`A059226(∑[n]+n)`
-/

namespace A059227.P11937540313041829099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059226 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A059227.P11937540313041829099

/-! ## A059227.P1587734022778615513

`A059226(A000096(n))/gcd(n, n+1)`
-/

namespace A059227.P1587734022778615513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059226 (A000096 n).toNat : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A059227.P1587734022778615513

/-! ## A059227.P5915354398196176862

`A059226(A000096(n))^A178334(n)`
-/

namespace A059227.P5915354398196176862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059226 (A000096 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A059227.P5915354398196176862

/-! ## A059227.P4056273139707115255

`or(A000007(n), A059226(A000096(n)))`
-/

namespace A059227.P4056273139707115255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A059226 (A000096 n).toNat)

end

end A059227.P4056273139707115255

/-! ## A059227.P15339477940515158037

`lcm(A008836(n+1), A059226(A000096(n)))`
-/

namespace A059227.P15339477940515158037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A059226 (A000096 n).toNat)

end

end A059227.P15339477940515158037

/-! ## A059227.P17238432983891487933

`A059226(C(n+2, 2)-1)+A008683(A017137(n)-2)`
-/

namespace A059227.P17238432983891487933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059226 (Nat.choose (n + 2) 2 - 1) + A008683 (A017137 n - 2).toNat

end

end A059227.P17238432983891487933

/-! ## A059227.P9516608466941226614

`A154282(A347553(n+3))+A059226(A347553(n+3))`
-/

namespace A059227.P9516608466941226614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154282 (A347553 (n + 3)).toNat + A059226 (A347553 (n + 3)).toNat

end

end A059227.P9516608466941226614

/-! ## A059227.P7505052452226306866

`A059226(A000096(n))%A003953(n+1)`
-/

namespace A059227.P7505052452226306866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059226 (A000096 n).toNat) (A003953 (n + 1))

end

end A059227.P7505052452226306866

/-!
# A059228: Row sums of triangle defined in A059226.

The programs for A059228, there is no canonical definition to state claims against.
-/

/-! ## A059228.P839281719703312992

`A269381(or(1, A016152(n)))`
-/

namespace A059228.P839281719703312992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269381 (Int.lor 1 (A016152 n)).toNat

end

end A059228.P839281719703312992

/-! ## A059228.P16633424994679480094

`A269381(A106436(n)+A016152(n))`
-/

namespace A059228.P16633424994679480094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269381 (A106436 n + A016152 n).toNat

end

end A059228.P16633424994679480094

/-!
# A059229: A diagonal of triangle defined in A059226.

The programs for A059229, there is no canonical definition to state claims against.
-/

/-! ## A059229.P3388683113850648263

`A059226(∑[n+2]-1)`
-/

namespace A059229.P3388683113850648263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059226 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A059229.P3388683113850648263

/-! ## A059229.P7228095054070775329

`lcm(2, A059226(A034856(n+1)))`
-/

namespace A059229.P7228095054070775329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A059226 (A034856 (n + 1)).toNat)

end

end A059229.P7228095054070775329

/-! ## A059229.P5205053613733147780

`A059227(n+1)-∑[A059227(n)]`
-/

namespace A059229.P5205053613733147780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059227 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059229.P5205053613733147780

/-! ## A059229.P822478200120712576

`A057427(n)*A059226(A034856(n+1))`
-/

namespace A059229.P822478200120712576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A059226 (A034856 (n + 1)).toNat

end

end A059229.P822478200120712576

/-! ## A059229.P13050444266781158653

`A059226(A034856(n+1))*A178334(n)`
-/

namespace A059229.P13050444266781158653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059226 (A034856 (n + 1)).toNat * A178334 n

end

end A059229.P13050444266781158653

/-! ## A059229.P7404156760474663403

`A059226(A034856(n+1))%A062396(n)`
-/

namespace A059229.P7404156760474663403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059226 (A034856 (n + 1)).toNat) (A062396 n)

end

end A059229.P7404156760474663403

/-!
# A059230: Primes p such that x^61 = 2 has no solution mod p.

The programs for A059230, there is no canonical definition to state claims against.
-/

/-! ## A059230.P1903134920214534302

`A006530(3*A212378(n+1))`
-/

namespace A059230.P1903134920214534302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * A212378 (n + 1)).toNat

end

end A059230.P1903134920214534302

/-! ## A059230.P12828280029003179599

`A006530(lcm(3, A212378(n+1)))`
-/

namespace A059230.P12828280029003179599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 3 (A212378 (n + 1)))

end

end A059230.P12828280029003179599

/-! ## A059230.P5555721273515550050

`A212378(n+1)%record[A323469(2*(n+1))]`
-/

namespace A059230.P5555721273515550050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323469 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212378 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A059230.P5555721273515550050

/-! ## A059230.P10199098242169267959

`p?[A008607(n)+A005408(A008600(n))]`
-/

namespace A059230.P10199098242169267959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008607 n + A005408 (A008600 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059230.P10199098242169267959

/-! ## A059230.P10622462855048223855

`A212378(n+1)+A000007(A125213(n+1))`
-/

namespace A059230.P10622462855048223855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212378 (n + 1) + A000007 (A125213 (n + 1)).toNat

end

end A059230.P10622462855048223855

/-! ## A059230.P14569095580549468145

`A212378(n+1)+A000007(A329395(n+1))`
-/

namespace A059230.P14569095580549468145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212378 (n + 1) + A000007 (A329395 (n + 1)).toNat

end

end A059230.P14569095580549468145

/-! ## A059230.P11089928726749572137

`A014963(A328226(n+1))*A212378(n+1)`
-/

namespace A059230.P11089928726749572137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A328226 (n + 1)).toNat * A212378 (n + 1)

end

end A059230.P11089928726749572137

/-! ## A059230.P10054107826628378992

`p?[A016777(20*n)+n]`
-/

namespace A059230.P10054107826628378992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (20 * n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059230.P10054107826628378992

/-! ## A059230.P1465363409161132997

`A353418(p?[round(8*n/7)]²)+A212378(n+1)+1`
-/

namespace A059230.P1465363409161132997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353418 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat + (A212378 (n + 1) + 1)

end

end A059230.P1465363409161132997

/-!
# A059231: Number of different lattice paths running from (0,0) to (n,0) using steps from S = {(k,k) or (k,-k): k positive integer} that never go below the x-axis.

The programs for A059231, the canonical program `A059231.P6613013363753559526` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059231 has offset 0).

The definition of A059231 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059231.P6613013363753559526

`(5*(2*n-1)*a(n-1)-9*(n-2)*a(n-2))/(n+1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059231

/-- `(5*(2*n-1)*a(n-1)-9*(n-2)*a(n-2))/(n+1)` -/
def P6613013363753559526.Spec : Prop :=
  ∀ n, P6613013363753559526.a n = (A059231 n : ℚ)

end A059231

/-! ## A059231.P4779398645122380244

`∑[A210474(n)]`
-/

namespace A059231.P4779398645122380244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059231.P4779398645122380244

namespace A059231

/-- `∑[A210474(n)]` -/
def P4779398645122380244.Spec : Prop :=
  ∀ n, P4779398645122380244.a n = A059231 n

end A059231

/-! ## A059231.P5237899997091197746

`or(1, A127846(n))`
-/

namespace A059231.P5237899997091197746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A127846 n)

end

end A059231.P5237899997091197746

namespace A059231

/-- `or(1, A127846(n))` -/
def P5237899997091197746.Spec : Prop :=
  ∀ n, P5237899997091197746.a n = A059231 n

end A059231

/-! ## A059231.P8576893662642649347

`ceil(A086871(n)/2)`
-/

namespace A059231.P8576893662642649347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A086871 n : ℚ) / 2⌉

end

end A059231.P8576893662642649347

namespace A059231

/-- `ceil(A086871(n)/2)` -/
def P8576893662642649347.Spec : Prop :=
  ∀ n, P8576893662642649347.a n = A059231 n

end A059231

/-! ## A059231.P12055482007901067385

`A059450(∑[n]+n)`
-/

namespace A059231.P12055482007901067385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059450 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A059231.P12055482007901067385

namespace A059231

/-- `A059450(∑[n]+n)` -/
def P12055482007901067385.Spec : Prop :=
  ∀ n, P12055482007901067385.a n = A059231 n

end A059231

/-! ## A059231.P13349123098726651053

`or(1, Δ[A162326(n)/2])`
-/

namespace A059231.P13349123098726651053
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162326 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n))

end

end A059231.P13349123098726651053

namespace A059231

/-- `or(1, Δ[A162326(n)/2])` -/
def P13349123098726651053.Spec : Prop :=
  ∀ n, P13349123098726651053.a n = A059231 n

end A059231

/-! ## A059231.P17501436539885239919

`A086871(floor(sqrt(n²+1)))/2`
-/

namespace A059231.P17501436539885239919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086871 (Nat.sqrt (n ^ 2 + 1)) : ℚ) / 2

end

end A059231.P17501436539885239919

namespace A059231

/-- `A086871(floor(sqrt(n²+1)))/2` -/
def P17501436539885239919.Spec : Prop :=
  ∀ n, P17501436539885239919.a n = (A059231 n : ℚ)

end A059231

/-! ## A059231.P8916725059887695411

`A086871(n)-A127846(n)`
-/

namespace A059231.P8916725059887695411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086871 n - A127846 n

end

end A059231.P8916725059887695411

namespace A059231

/-- `A086871(n)-A127846(n)` -/
def P8916725059887695411.Spec : Prop :=
  ∀ n, P8916725059887695411.a n = A059231 n

end A059231

/-! ## A059231.P16410005231099406599

`A127846(A004273(n)+1-n)`
-/

namespace A059231.P16410005231099406599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127846 (A004273 n + (1 - (n : ℤ))).toNat

end

end A059231.P16410005231099406599

namespace A059231

/-- `A127846(A004273(n)+1-n)` -/
def P16410005231099406599.Spec : Prop :=
  ∀ n, P16410005231099406599.a n = A059231 n

end A059231

/-! ## A059231.P11090576846363977925

`A127846(1-(n-A004273(n)))`
-/

namespace A059231.P11090576846363977925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127846 (1 - ((n : ℤ) - A004273 n)).toNat

end

end A059231.P11090576846363977925

namespace A059231

/-- `A127846(1-(n-A004273(n)))` -/
def P11090576846363977925.Spec : Prop :=
  ∀ n, P11090576846363977925.a n = A059231 n

end A059231

/-! ## A059231.P8919941850942267133

`(A086871(n)+A000007(n))/2`
-/

namespace A059231.P8919941850942267133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086871 n + A000007 n : ℚ) / 2

end

end A059231.P8919941850942267133

namespace A059231

/-- `(A086871(n)+A000007(n))/2` -/
def P8919941850942267133.Spec : Prop :=
  ∀ n, P8919941850942267133.a n = (A059231 n : ℚ)

end A059231

/-! ## A059231.P219881615086121800

`A000007(n)+Δ[A162326(n)/2]`
-/

namespace A059231.P219881615086121800
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162326 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A059231.P219881615086121800

namespace A059231

/-- `A000007(n)+Δ[A162326(n)/2]` -/
def P219881615086121800.Spec : Prop :=
  ∀ n, P219881615086121800.a n = (A059231 n : ℚ)

end A059231

/-! ## A059231.P3508292448269344675

`Δ[A057427(n)+A162326(n)/2]`
-/

namespace A059231.P3508292448269344675
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057427 n : ℚ) + (A162326 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059231.P3508292448269344675

namespace A059231

/-- `Δ[A057427(n)+A162326(n)/2]` -/
def P3508292448269344675.Spec : Prop :=
  ∀ n, P3508292448269344675.a n = (A059231 n : ℚ)

end A059231

/-! ## A059231.P8475777314485571399

`Δ[A178334(n)+A162326(n)/2]`
-/

namespace A059231.P8475777314485571399
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178334 n : ℚ) + (A162326 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059231.P8475777314485571399

namespace A059231

/-- `Δ[A178334(n)+A162326(n)/2]` -/
def P8475777314485571399.Spec : Prop :=
  ∀ n, P8475777314485571399.a n = (A059231 n : ℚ)

end A059231

/-! ## A059231.P2164320856254964471

`A086871(n)-Δ[A162326(n)/2]`
-/

namespace A059231.P2164320856254964471
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162326 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086871 n : ℚ) - (f1 (n + 1) - f1 n)

end

end A059231.P2164320856254964471

namespace A059231

/-- `A086871(n)-Δ[A162326(n)/2]` -/
def P2164320856254964471.Spec : Prop :=
  ∀ n, P2164320856254964471.a n = (A059231 n : ℚ)

end A059231

/-! ## A059231.P8967627361121627901

`A127846(A007318(A000124(n)))`
-/

namespace A059231.P8967627361121627901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127846 (A007318 (A000124 n).toNat).toNat

end

end A059231.P8967627361121627901

namespace A059231

/-- `A127846(A007318(A000124(n)))` -/
def P8967627361121627901.Spec : Prop :=
  ∀ n, P8967627361121627901.a n = A059231 n

end A059231

/-! ## A059231.P4075836600680786654

`A127846(A008619(A004273(n)))`
-/

namespace A059231.P4075836600680786654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127846 (A008619 (A004273 n).toNat).toNat

end

end A059231.P4075836600680786654

namespace A059231

/-- `A127846(A008619(A004273(n)))` -/
def P4075836600680786654.Spec : Prop :=
  ∀ n, P4075836600680786654.a n = A059231 n

end A059231

/-! ## A059231.P3953729317308647693

`A127846(A008619(record[A006257(n)]))`
-/

namespace A059231.P3953729317308647693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127846 (A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A059231.P3953729317308647693

namespace A059231

/-- `A127846(A008619(record[A006257(n)]))` -/
def P3953729317308647693.Spec : Prop :=
  ∀ n, P3953729317308647693.a n = A059231 n

end A059231

/-! ## A059231.P9273385688242792619

`A127846(n)^A115878(A008578(n+1))`
-/

namespace A059231.P9273385688242792619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127846 n : ℚ) ^ (A115878 (A008578 (n + 1)).toNat : ℤ)

end

end A059231.P9273385688242792619

namespace A059231

/-- `A127846(n)^A115878(A008578(n+1))` -/
def P9273385688242792619.Spec : Prop :=
  ∀ n, P9273385688242792619.a n = (A059231 n : ℚ)

end A059231

/-! ## A059231.P2356136002800563412

`ceil(A082298(n)/4)`
-/

namespace A059231.P2356136002800563412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A082298 n : ℚ) / 4⌉

end

end A059231.P2356136002800563412

namespace A059231

/-- `ceil(A082298(n)/4)` -/
def P2356136002800563412.Spec : Prop :=
  ∀ n, P2356136002800563412.a n = A059231 n

end A059231

/-!
# A059233: Number of rows in which n appears in Pascal's triangle A007318.

The programs for A059233, there is no canonical definition to state claims against.
-/

/-! ## A059233.P5226531018611490702

`ceil(A003016(n+2)/2)`
-/

namespace A059233.P5226531018611490702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003016 (n + 2) : ℚ) / 2⌉

end

end A059233.P5226531018611490702

/-! ## A059233.P5895106809737671648

`round(A003016(n+2)/2)^A035214(n)`
-/

namespace A059233.P5895106809737671648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A003016 (n + 2) : ℚ) / 2) : ℚ) ^ (A035214 n : ℤ)

end

end A059233.P5895106809737671648

/-! ## A059233.P6557532316007339129

`round(A003016(n+2)/2)*A057427(A008621(n))`
-/

namespace A059233.P6557532316007339129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A003016 (n + 2) : ℚ) / 2) * A057427 (A008621 n).toNat

end

end A059233.P6557532316007339129

/-! ## A059233.P11647398537489032550

`A110654(A003016(n+1)+Δ[A003016(n+1)])`
-/

namespace A059233.P11647398537489032550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A003016 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A059233.P11647398537489032550

/-! ## A059233.P1782978165621774234

`round(A003016(n+2)/2)*A057427(A046799(n))`
-/

namespace A059233.P1782978165621774234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A003016 (n + 2) : ℚ) / 2) * A057427 (A046799 n).toNat

end

end A059233.P1782978165621774234

/-! ## A059233.P9684898233356912315

`floor(root(A199425(2*(n+1)), A058084(n+2)))`
-/

namespace A059233.P9684898233356912315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199425 (2 * (n + 1)) : ℝ) ^ (1 / (A058084 (n + 2) : ℝ))⌋

end

end A059233.P9684898233356912315

/-! ## A059233.P12120904933602826192

`A000010(Δ[A260466(n+2)])`
-/

namespace A059233.P12120904933602826192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat

end

end A059233.P12120904933602826192

/-! ## A059233.P9396673142150470447

`A000005(A000045(Δ[A260466(n+2)]))`
-/

namespace A059233.P9396673142150470447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000045 (f1 (n + 1) - f1 n).toNat).toNat

end

end A059233.P9396673142150470447

/-! ## A059233.P4444228315984625679

`A040001(A261960(n+1)²)`
-/

namespace A059233.P4444228315984625679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A261960 (n + 1) ^ 2).toNat

end

end A059233.P4444228315984625679

/-!
# A059234: The array in A059216 read by antidiagonals in the direction in which it was constructed.

The programs for A059234, there is no canonical definition to state claims against.
-/

/-! ## A059234.P4791298757315743816

`A059217(A056023(n+1))`
-/

namespace A059234.P4791298757315743816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059217 (A056023 (n + 1)).toNat

end

end A059234.P4791298757315743816

/-!
# A059235: The array in A059219 read by antidiagonals in the direction in which it was constructed.

The programs for A059235, there is no canonical definition to state claims against.
-/

/-! ## A059235.P7011533881176028570

`A059220(A056023(n+1))`
-/

namespace A059235.P7011533881176028570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059220 (A056023 (n + 1)).toNat

end

end A059235.P7011533881176028570

/-! ## A059235.P10762323940473018499

`A319951(2*A360860(n))`
-/

namespace A059235.P10762323940473018499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (2 * A360860 n).toNat

end

end A059235.P10762323940473018499

/-! ## A059235.P16502016729589666099

`A082860(A000005(n+1)*A255903(n))`
-/

namespace A059235.P16502016729589666099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082860 (A000005 (n + 1) * A255903 n).toNat

end

end A059235.P16502016729589666099

/-! ## A059235.P15268088434600479802

`A218579(n+1)%A301927(A059432(n))`
-/

namespace A059235.P15268088434600479802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218579 (n + 1)) (A301927 (A059432 n).toNat)

end

end A059235.P15268088434600479802

/-! ## A059235.P7156392180041639313

`A357743(A087736(n))`
-/

namespace A059235.P7156392180041639313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357743 (A087736 n).toNat

end

end A059235.P7156392180041639313

/-!
# A059236: Primes p such that x^41 = 2 has no solution mod p.

The programs for A059236, there is no canonical definition to state claims against.
-/

/-! ## A059236.P6523528384671959993

`p?[41*n+1]%A107999(n+1)²`
-/

namespace A059236.P6523528384671959993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (A107999 (n + 1) ^ 2)

end

end A059236.P6523528384671959993

/-! ## A059236.P16630658889630167744

`A212379(n+1)%A059666(n+1)`
-/

namespace A059236.P16630658889630167744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212379 (n + 1)) (A059666 (n + 1))

end

end A059236.P16630658889630167744

/-! ## A059236.P7925821190549323756

`A107999(n+1)%2*A212379(n+1)`
-/

namespace A059236.P7925821190549323756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107999 (n + 1)) 2 * A212379 (n + 1)

end

end A059236.P7925821190549323756

/-! ## A059236.P11647939620331074064

`A212379(n+1)+A000007(A176331(n))`
-/

namespace A059236.P11647939620331074064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212379 (n + 1) + A000007 (A176331 n).toNat

end

end A059236.P11647939620331074064

/-! ## A059236.P8497914344126528052

`or(A035263(A056939(n)), A212379(n+1))`
-/

namespace A059236.P8497914344126528052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035263 (A056939 n).toNat) (A212379 (n + 1))

end

end A059236.P8497914344126528052

/-!
# A059237: Variation of Boustrophedon transform described in A059219 applied to sequence 0,1,0,0,0,....

The programs for A059237, there is no canonical definition to state claims against.
-/

/-! ## A059237.P2637407685395098422

`record[A005369(2*(n+2))*A059718(n)]`
-/

namespace A059237.P2637407685395098422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (2 * (n + 2)) * A059718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059237.P2637407685395098422

/-! ## A059237.P14667619586402167493

`record[C(A059718(n), A059575(n+3))]`
-/

namespace A059237.P14667619586402167493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A059718 n).toNat (A059575 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059237.P14667619586402167493

/-! ## A059237.P6707706574683596168

`record[A059718(n)-A225479(n+2)]`
-/

namespace A059237.P6707706574683596168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059718 n - A225479 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059237.P6707706574683596168

/-! ## A059237.P5610968837016653875

`record[A059718(n)%A202677(n+3)]`
-/

namespace A059237.P5610968837016653875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059718 n) (A202677 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059237.P5610968837016653875

/-!
# A059238: Orders of the finite groups GL_2(K) when K is a finite field with q = A246655(n) elements.

The programs for A059238, the canonical program `A059238.P6314019284050348555` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059238 has offset 1).

The definition of A059238 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246655, A329119, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A059238.P6314019284050348555

`(A246655(n+1)-1)*A329119(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A059238

/-- `(A246655(n+1)-1)*A329119(n+1)` -/
def P6314019284050348555.Spec : Prop :=
  ∀ n, P6314019284050348555.a n = A059238 (n + 1)

theorem P6314019284050348555.correct : P6314019284050348555.Spec := by
  intro n
  simp only [A059238, Nat.add_sub_cancel]

end A059238

/-! ## A059238.P2005489177110336402

`A047927(A246655(n+1)+1)`
-/

namespace A059238.P2005489177110336402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047927 (A246655 (n + 1) + 1).toNat

end

end A059238.P2005489177110336402

namespace A059238

/-- `A047927(A246655(n+1)+1)` -/
def P2005489177110336402.Spec : Prop :=
  ∀ n, P2005489177110336402.a n = A059238 (n + 1)

end A059238

/-! ## A059238.P17101987609425722059

`A246655(n+1)²²-A367014(n+1)`
-/

namespace A059238.P17101987609425722059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A246655 (n + 1) ^ 2) ^ 2 - A367014 (n + 1)

end

end A059238.P17101987609425722059

namespace A059238

/-- `A246655(n+1)²²-A367014(n+1)` -/
def P17101987609425722059.Spec : Prop :=
  ∀ n, P17101987609425722059.a n = A059238 (n + 1)

end A059238

/-! ## A059238.P5968326427495391279

`(A246655(n+1)-1)*sqrt(A003841(n+1))`
-/

namespace A059238.P5968326427495391279
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A246655 (n + 1) - 1 : ℝ) * Real.sqrt (A003841 (n + 1) : ℝ)

end

end A059238.P5968326427495391279

namespace A059238

/-- `(A246655(n+1)-1)*sqrt(A003841(n+1))` -/
def P5968326427495391279.Spec : Prop :=
  ∀ n, P5968326427495391279.a n = (A059238 (n + 1) : ℝ)

end A059238

/-! ## A059238.P7395197668876153046

`(A246655(n+1)²-A246655(n+1))*A060615(n)`
-/

namespace A059238.P7395197668876153046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A246655 (n + 1) ^ 2 - A246655 (n + 1)) * A060615 n

end

end A059238.P7395197668876153046

namespace A059238

/-- `(A246655(n+1)²-A246655(n+1))*A060615(n)` -/
def P7395197668876153046.Spec : Prop :=
  ∀ n, P7395197668876153046.a n = A059238 (n + 1)

end A059238

/-! ## A059238.P2745818740348830043

`A181062(n+2)*A329119(n+1)`
-/

namespace A059238.P2745818740348830043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 2) * A329119 (n + 1)

end

end A059238.P2745818740348830043

namespace A059238

/-- `A181062(n+2)*A329119(n+1)` -/
def P2745818740348830043.Spec : Prop :=
  ∀ n, P2745818740348830043.a n = A059238 (n + 1)

end A059238

/-! ## A059238.P928540070291444284

`(Δ[A024918(n+1)]-1)*A329119(n+1)`
-/

namespace A059238.P928540070291444284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 1) * A329119 (n + 1)

end

end A059238.P928540070291444284

namespace A059238

/-- `(Δ[A024918(n+1)]-1)*A329119(n+1)` -/
def P928540070291444284.Spec : Prop :=
  ∀ n, P928540070291444284.a n = A059238 (n + 1)

end A059238

/-! ## A059238.P5417125089274909891

`eq[1, A001221(n+1)]*A329119(n+1)`
-/

namespace A059238.P5417125089274909891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) * A329119 (n + 1)

end

end A059238.P5417125089274909891

namespace A059238

/-- `eq[1, A001221(n+1)]*A329119(n+1)` -/
def P5417125089274909891.Spec : Prop :=
  ∀ n, P5417125089274909891.a n = A059238 (n + 1)

end A059238

/-! ## A059238.P4436632107350960009

`record[A336564(n+1)]*A329119(n+1)`
-/

namespace A059238.P4436632107350960009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A329119 (n + 1)

end

end A059238.P4436632107350960009

namespace A059238

/-- `record[A336564(n+1)]*A329119(n+1)` -/
def P4436632107350960009.Spec : Prop :=
  ∀ n, P4436632107350960009.a n = A059238 (n + 1)

end A059238

/-! ## A059238.P7133137104344012823

`A329119(n+1)*A336564(lt[A001221(n+2), 2]+2)`
-/

namespace A059238.P7133137104344012823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329119 (n + 1) * A336564 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A059238.P7133137104344012823

namespace A059238

/-- `A329119(n+1)*A336564(lt[A001221(n+2), 2]+2)` -/
def P7133137104344012823.Spec : Prop :=
  ∀ n, P7133137104344012823.a n = A059238 (n + 1)

end A059238

/-! ## A059238.P15756911318533939370

`A047927(A000961(n+2)+1)`
-/

namespace A059238.P15756911318533939370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047927 (A000961 (n + 2) + 1).toNat

end

end A059238.P15756911318533939370

namespace A059238

/-- `A047927(A000961(n+2)+1)` -/
def P15756911318533939370.Spec : Prop :=
  ∀ n, P15756911318533939370.a n = A059238 (n + 1)

end A059238

/-! ## A059238.P12453152835487339255

`A047927(A181062(n+2)+2)`
-/

namespace A059238.P12453152835487339255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047927 (A181062 (n + 2) + 2).toNat

end

end A059238.P12453152835487339255

namespace A059238

/-- `A047927(A181062(n+2)+2)` -/
def P12453152835487339255.Spec : Prop :=
  ∀ n, P12453152835487339255.a n = A059238 (n + 1)

end A059238

/-! ## A059238.P18151974007403243033

`record[A047994(n+1)]*A329119(n+1)`
-/

namespace A059238.P18151974007403243033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A329119 (n + 1)

end

end A059238.P18151974007403243033

namespace A059238

/-- `record[A047994(n+1)]*A329119(n+1)` -/
def P18151974007403243033.Spec : Prop :=
  ∀ n, P18151974007403243033.a n = A059238 (n + 1)

end A059238

/-! ## A059238.P14350273402128695311

`record[A344005(n+1)]*A329119(n+1)`
-/

namespace A059238.P14350273402128695311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A329119 (n + 1)

end

end A059238.P14350273402128695311

namespace A059238

/-- `record[A344005(n+1)]*A329119(n+1)` -/
def P14350273402128695311.Spec : Prop :=
  ∀ n, P14350273402128695311.a n = A059238 (n + 1)

end A059238

/-! ## A059238.P12721184729384006904

`record[A345998(n+1)]*A329119(n+1)`
-/

namespace A059238.P12721184729384006904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A329119 (n + 1)

end

end A059238.P12721184729384006904

namespace A059238

/-- `record[A345998(n+1)]*A329119(n+1)` -/
def P12721184729384006904.Spec : Prop :=
  ∀ n, P12721184729384006904.a n = A059238 (n + 1)

end A059238

/-! ## A059238.P15600266317517725401

`lt[1, A014963(n+1)]*A329119(n+1)`
-/

namespace A059238.P15600266317517725401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) * A329119 (n + 1)

end

end A059238.P15600266317517725401

namespace A059238

/-- `lt[1, A014963(n+1)]*A329119(n+1)` -/
def P15600266317517725401.Spec : Prop :=
  ∀ n, P15600266317517725401.a n = A059238 (n + 1)

end A059238

/-! ## A059238.P4941525208715715597

`record[(n+1)*(A068601(A344006(n+2)+1)-(n+1))]`
-/

namespace A059238.P4941525208715715597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A068601 (A344006 (n + 2) + 1).toNat - (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059238.P4941525208715715597

namespace A059238

/-- `record[(n+1)*(A068601(A344006(n+2)+1)-(n+1))]` -/
def P4941525208715715597.Spec : Prop :=
  ∀ n, P4941525208715715597.a n = A059238 (n + 1)

end A059238

/-! ## A059238.P10564776600990591655

`A329119(n+1)*A345998(A246655(n+1))`
-/

namespace A059238.P10564776600990591655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329119 (n + 1) * A345998 (A246655 (n + 1)).toNat

end

end A059238.P10564776600990591655

namespace A059238

/-- `A329119(n+1)*A345998(A246655(n+1))` -/
def P10564776600990591655.Spec : Prop :=
  ∀ n, P10564776600990591655.a n = A059238 (n + 1)

end A059238

/-! ## A059238.P11410047639847302073

`A329119(n+1)*A345998(A000961(n+2))`
-/

namespace A059238.P11410047639847302073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329119 (n + 1) * A345998 (A000961 (n + 2)).toNat

end

end A059238.P11410047639847302073

namespace A059238

/-- `A329119(n+1)*A345998(A000961(n+2))` -/
def P11410047639847302073.Spec : Prop :=
  ∀ n, P11410047639847302073.a n = A059238 (n + 1)

end A059238

/-! ## A059238.P3667400747752681836

`A181062(n+2)²*A002378(A000961(n+2))`
-/

namespace A059238.P3667400747752681836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 2) ^ 2 * A002378 (A000961 (n + 2)).toNat

end

end A059238.P3667400747752681836

namespace A059238

/-- `A181062(n+2)²*A002378(A000961(n+2))` -/
def P3667400747752681836.Spec : Prop :=
  ∀ n, P3667400747752681836.a n = A059238 (n + 1)

end A059238

/-!
# A059240: Denominators of coefficients of asymptotic expansion related to iterated sine function.

The programs for A059240, there is no canonical definition to state claims against.
-/

/-! ## A059240.P15819796377630702816

`or(1, A054427(A130522(n)))`
-/

namespace A059240.P15819796377630702816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A054427 (A130522 n).toNat)

end

end A059240.P15819796377630702816

/-! ## A059240.P8386995271597144483

`A321321(or(1, A056273(n)))`
-/

namespace A059240.P8386995271597144483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321321 (Int.lor 1 (A056273 n)).toNat

end

end A059240.P8386995271597144483

/-!
# A059241: Primes p such that x^11 = 2 has no solution mod p.

The programs for A059241, there is no canonical definition to state claims against.
-/

/-! ## A059241.P8048228646689648262

`p?[A079724(n+4)*A161709(n)]`
-/

namespace A059241.P8048228646689648262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079724 (n + 4) * A161709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059241.P8048228646689648262

/-! ## A059241.P15522613372528366337

`p?[A168670(A294748(n+1))]`
-/

namespace A059241.P15522613372528366337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168670 (A294748 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059241.P15522613372528366337

/-! ## A059241.P7507865292961743651

`record[p?[A017401(A102451(n+1))]]`
-/

namespace A059241.P7507865292961743651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 (A102451 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059241.P7507865292961743651

/-! ## A059241.P10028998150004804379

`A141849(A038032(n+1)%A098320(2*(n+2)))`
-/

namespace A059241.P10028998150004804379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (Int.tmod (A038032 (n + 1)) (A098320 (2 * (n + 2)))).toNat

end

end A059241.P10028998150004804379

/-!
# A059242: Numbers k such that 2^k + 5 is prime.

The programs for A059242, there is no canonical definition to state claims against.
-/

/-! ## A059242.P16518069380837625968

`A028310(eq[A037035(n), A266794(n)])`
-/

namespace A059242.P16518069380837625968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A059242.P16518069380837625968

/-! ## A059242.P9471303279011298491

`eq[A013597(n), A266794(A266794(n))]`
-/

namespace A059242.P9471303279011298491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266794 (A266794 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059242.P9471303279011298491

/-! ## A059242.P2510732123142190108

`log2(A123250(n+1)-5)`
-/

namespace A059242.P2510732123142190108
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A123250 (n + 1) - 5 : ℝ)

end

end A059242.P2510732123142190108

/-! ## A059242.P14658601830254255365

`A361744(∑[n+1]+3)`
-/

namespace A059242.P14658601830254255365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361744 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A059242.P14658601830254255365

/-! ## A059242.P13247372749918863341

`record[A361744(n+4)/A360491(n+1)]`
-/

namespace A059242.P13247372749918863341
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361744 (n + 4) : ℚ) / (A360491 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059242.P13247372749918863341

/-!
# A059243: Primes p such that x^43 = 2 has no solution mod p.

The programs for A059243, there is no canonical definition to state claims against.
-/

/-! ## A059243.P12089547028747373071

`filter[A142250(n+1), A288864(#)]`
-/

namespace A059243.P12089547028747373071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288864 (f1 j).toNat = 1) n)

end

end A059243.P12089547028747373071

/-! ## A059243.P11618475276231660826

`A142250(n+1)%A246318(3*(n+1))²`
-/

namespace A059243.P11618475276231660826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A142250 (n + 1)) (A246318 (3 * (n + 1)) ^ 2)

end

end A059243.P11618475276231660826

/-! ## A059243.P4832256035704164355

`A142250(n+1)+A005925(A000322(n))`
-/

namespace A059243.P4832256035704164355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142250 (n + 1) + A005925 (A000322 n).toNat

end

end A059243.P4832256035704164355

/-!
# A059244: Primes p such that x^19 = 2 has no solution mod p.

The programs for A059244, there is no canonical definition to state claims against.
-/

/-! ## A059244.P10366439177799262887

`record[gcd(A141868(n+1), A198317(n))]`
-/

namespace A059244.P10366439177799262887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141868 (n + 1)) (A198317 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059244.P10366439177799262887

/-! ## A059244.P6869697805048454381

`A141868(A004709(n+1))%A151832(n+4)`
-/

namespace A059244.P6869697805048454381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141868 (A004709 (n + 1)).toNat) (A151832 (n + 4))

end

end A059244.P6869697805048454381

/-! ## A059244.P8140312295613447711

`p?[A215144(A261165(n+1))]`
-/

namespace A059244.P8140312295613447711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215144 (A261165 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059244.P8140312295613447711

/-! ## A059244.P11839929113333713566

`p?[C(A141868(n+1), A037306(n+1))]`
-/

namespace A059244.P11839929113333713566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A141868 (n + 1)).toNat (A037306 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A059244.P11839929113333713566

/-!
# A059245: Primes p such that x^13 = 2 has no solution mod p.

The programs for A059245, there is no canonical definition to state claims against.
-/

/-! ## A059245.P4578883573594015820

`p?[A175068(13*n+1)]`
-/

namespace A059245.P4578883573594015820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175068 (13 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059245.P4578883573594015820

/-! ## A059245.P10590676808057288730

`A366284(4*A268753(n+1))`
-/

namespace A059245.P10590676808057288730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366284 (4 * A268753 (n + 1)).toNat

end

end A059245.P10590676808057288730

/-! ## A059245.P16360514686918632561

`∩[A101934(n+1), A268753(n+1)]`
-/

namespace A059245.P16360514686918632561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059245.P16360514686918632561

/-! ## A059245.P11875135876108729043

`A051664(A268753(n+1))`
-/

namespace A059245.P11875135876108729043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (A268753 (n + 1)).toNat

end

end A059245.P11875135876108729043

/-! ## A059245.P6814762378411013797

`A268753(n+1)%A097400(n)`
-/

namespace A059245.P6814762378411013797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268753 (n + 1)) (A097400 n)

end

end A059245.P6814762378411013797

/-!
# A059246: Numerator of Sum_{j=1..n} d(j)/n, where d = number of divisors function (A000005).

The programs for A059246, the canonical program `A059246.P1456171731783157114` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059246 has offset 1).

The definition of A059246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059246.P1456171731783157114

`lcm(n+1, A006218(n+1))/(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A059246

/-- `lcm(n+1, A006218(n+1))/(n+1)` -/
def P1456171731783157114.Spec : Prop :=
  ∀ n, P1456171731783157114.a n = (A059246 (n + 1) : ℚ)

end A059246

/-! ## A059246.P9529593371888197644

`∑[A000005(n+1)]/(n+1)*A059247(n+1)`
-/

namespace A059246.P9529593371888197644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ) * (A059247 (n + 1) : ℚ)

end

end A059246.P9529593371888197644

namespace A059246

/-- `∑[A000005(n+1)]/(n+1)*A059247(n+1)` -/
def P9529593371888197644.Spec : Prop :=
  ∀ n, P9529593371888197644.a n = (A059246 (n + 1) : ℚ)

end A059246

/-! ## A059246.P637966290408260100

`∑[A000005(n+1)]/gcd(n+1, A002541(n+1))`
-/

namespace A059246.P637966290408260100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (Int.gcd (n + 1 : ℤ) (A002541 (n + 1)) : ℚ)

end

end A059246.P637966290408260100

namespace A059246

/-- `∑[A000005(n+1)]/gcd(n+1, A002541(n+1))` -/
def P637966290408260100.Spec : Prop :=
  ∀ n, P637966290408260100.a n = (A059246 (n + 1) : ℚ)

end A059246

/-! ## A059246.P10987889641842832260

`A006218(n+1)/gcd(A006218(n+1), A028310(n+1))`
-/

namespace A059246.P10987889641842832260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006218 (n + 1) : ℚ) / (Int.gcd (A006218 (n + 1)) (A028310 (n + 1)) : ℚ)

end

end A059246.P10987889641842832260

namespace A059246

/-- `A006218(n+1)/gcd(A006218(n+1), A028310(n+1))` -/
def P10987889641842832260.Spec : Prop :=
  ∀ n, P10987889641842832260.a n = (A059246 (n + 1) : ℚ)

end A059246

/-! ## A059246.P9547577211245458676

`A006218(n+1)/A132588(A006218(n+1))`
-/

namespace A059246.P9547577211245458676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006218 (n + 1) : ℚ) / (A132588 (A006218 (n + 1)).toNat : ℚ)

end

end A059246.P9547577211245458676

namespace A059246

/-- `A006218(n+1)/A132588(A006218(n+1))` -/
def P9547577211245458676.Spec : Prop :=
  ∀ n, P9547577211245458676.a n = (A059246 (n + 1) : ℚ)

end A059246

/-!
# A059247: Denominator of Sum_{j=1..n} d(j)/n, where d = number of divisors function (A000005).

The programs for A059247, the canonical program `A059247.P12274264004788898649` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059247 has offset 1).

The definition of A059247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059247.P12274264004788898649

`(n+1)/gcd(n+1, A002541(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A059247

/-- `(n+1)/gcd(n+1, A002541(n+1))` -/
def P12274264004788898649.Spec : Prop :=
  ∀ n, P12274264004788898649.a n = (A059247 (n + 1) : ℚ)

end A059247

/-! ## A059247.P3631221975291401214

`(n+1)/∑[A000005(n+1)]*A059246(n+1)`
-/

namespace A059247.P3631221975291401214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) * (A059246 (n + 1) : ℚ)

end

end A059247.P3631221975291401214

namespace A059247

/-- `(n+1)/∑[A000005(n+1)]*A059246(n+1)` -/
def P3631221975291401214.Spec : Prop :=
  ∀ n, P3631221975291401214.a n = (A059247 (n + 1) : ℚ)

end A059247

/-! ## A059247.P9039901033106715607

`A028310(n+1)/gcd(A006218(n+1), A028310(n+1))`
-/

namespace A059247.P9039901033106715607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (n + 1) : ℚ) / (Int.gcd (A006218 (n + 1)) (A028310 (n + 1)) : ℚ)

end

end A059247.P9039901033106715607

namespace A059247

/-- `A028310(n+1)/gcd(A006218(n+1), A028310(n+1))` -/
def P9039901033106715607.Spec : Prop :=
  ∀ n, P9039901033106715607.a n = (A059247 (n + 1) : ℚ)

end A059247

/-! ## A059247.P2203357692656449862

`(n+1)/A132588(A006218(n+1))`
-/

namespace A059247.P2203357692656449862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A132588 (A006218 (n + 1)).toNat : ℚ)

end

end A059247.P2203357692656449862

namespace A059247

/-- `(n+1)/A132588(A006218(n+1))` -/
def P2203357692656449862.Spec : Prop :=
  ∀ n, P2203357692656449862.a n = (A059247 (n + 1) : ℚ)

end A059247

/-! ## A059247.P16936967890466765332

`(n+1)/A132588(∑[A000005(n+1)])`
-/

namespace A059247.P16936967890466765332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A132588 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ)

end

end A059247.P16936967890466765332

namespace A059247

/-- `(n+1)/A132588(∑[A000005(n+1)])` -/
def P16936967890466765332.Spec : Prop :=
  ∀ n, P16936967890466765332.a n = (A059247 (n + 1) : ℚ)

end A059247

/-!
# A059248: Numerator of 1/F(1) + 1/F(2) + 1/F(3) + ... + 1/F(n), where F(n) is the n-th Fibonacci number (A000045).

The programs for A059248, there is no canonical definition to state claims against.
-/

/-! ## A059248.P12822366607533271944

`A000265(A203006(n+1))+char[1]`
-/

namespace A059248.P12822366607533271944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A203006 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A059248.P12822366607533271944

/-! ## A059248.P662808388967901333

`A203006(n+1)/A031244(A003947(n))`
-/

namespace A059248.P662808388967901333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203006 (n + 1) : ℚ) / (A031244 (A003947 n).toNat : ℚ)

end

end A059248.P662808388967901333

/-! ## A059248.P4819369018228264996

`A203006(n+1)/A050363(A064062(n))`
-/

namespace A059248.P4819369018228264996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203006 (n + 1) : ℚ) / (A050363 (A064062 n).toNat : ℚ)

end

end A059248.P4819369018228264996

/-!
# A059249: Tersum n + (n-1); write n and n-1 in base 3 and add mod 3 with no carries.

The programs for A059249, the canonical program `A059249.P4278260831633000860` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059249 has offset 1).

The definition of A059249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059249.P4278260831633000860

`A004488(n+1)-1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A059249

/-- `A004488(n+1)-1` -/
def P4278260831633000860.Spec : Prop :=
  ∀ n, P4278260831633000860.a n = A059249 (n + 1)

theorem P4278260831633000860.correct : P4278260831633000860.Spec := by
  intro n
  simp only [A059249, Nat.add_sub_cancel]

end A059249

/-! ## A059249.P8217216559809601599

`A117966(n+1)+n`
-/

namespace A059249.P8217216559809601599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (n + 1) + (n : ℤ)

end

end A059249.P8217216559809601599

namespace A059249

/-- `A117966(n+1)+n` -/
def P8217216559809601599.Spec : Prop :=
  ∀ n, P8217216559809601599.a n = A059249 (n + 1)

end A059249

/-! ## A059249.P5228100256702805482

`A004488(Δ[A004488(n)]+n)`
-/

namespace A059249.P5228100256702805482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A059249.P5228100256702805482

namespace A059249

/-- `A004488(Δ[A004488(n)]+n)` -/
def P5228100256702805482.Spec : Prop :=
  ∀ n, P5228100256702805482.a n = A059249 (n + 1)

end A059249

/-! ## A059249.P10845197393729188304

`A134028(n+1)+A274107(n+1)+n`
-/

namespace A059249.P10845197393729188304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134028 (n + 1) + (A274107 (n + 1) + (n : ℤ))

end

end A059249.P10845197393729188304

namespace A059249

/-- `A134028(n+1)+A274107(n+1)+n` -/
def P10845197393729188304.Spec : Prop :=
  ∀ n, P10845197393729188304.a n = A059249 (n + 1)

end A059249

/-! ## A059249.P17801252618895064552

`A071770(A060583(n+1))-1`
-/

namespace A059249.P17801252618895064552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071770 (A060583 (n + 1)).toNat - 1

end

end A059249.P17801252618895064552

namespace A059249

/-- `A071770(A060583(n+1))-1` -/
def P17801252618895064552.Spec : Prop :=
  ∀ n, P17801252618895064552.a n = A059249 (n + 1)

end A059249

/-! ## A059249.P6531332846545611257

`A370932(A060587(n+1))-1`
-/

namespace A059249.P6531332846545611257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370932 (A060587 (n + 1)).toNat - 1

end

end A059249.P6531332846545611257

namespace A059249

/-- `A370932(A060587(n+1))-1` -/
def P6531332846545611257.Spec : Prop :=
  ∀ n, P6531332846545611257.a n = A059249 (n + 1)

end A059249

/-! ## A059249.P3788965053695709451

`A001489(n+1)+A004488(n+1)+n`
-/

namespace A059249.P3788965053695709451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 1) + (A004488 (n + 1) + (n : ℤ))

end

end A059249.P3788965053695709451

namespace A059249

/-- `A001489(n+1)+A004488(n+1)+n` -/
def P3788965053695709451.Spec : Prop :=
  ∀ n, P3788965053695709451.a n = A059249 (n + 1)

end A059249

/-! ## A059249.P10934461350094179402

`A023443(A004488(n+1))`
-/

namespace A059249.P10934461350094179402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A004488 (n + 1)).toNat

end

end A059249.P10934461350094179402

namespace A059249

/-- `A023443(A004488(n+1))` -/
def P10934461350094179402.Spec : Prop :=
  ∀ n, P10934461350094179402.a n = A059249 (n + 1)

end A059249

/-! ## A059249.P7252417656905292274

`A368229(A353661(n+1))-1`
-/

namespace A059249.P7252417656905292274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368229 (A353661 (n + 1)).toNat - 1

end

end A059249.P7252417656905292274

namespace A059249

/-- `A368229(A353661(n+1))-1` -/
def P7252417656905292274.Spec : Prop :=
  ∀ n, P7252417656905292274.a n = A059249 (n + 1)

end A059249

/-! ## A059249.P17222368201489281417

`A353660(A368230(n+1))-1`
-/

namespace A059249.P17222368201489281417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353660 (A368230 (n + 1)).toNat - 1

end

end A059249.P17222368201489281417

namespace A059249

/-- `A353660(A368230(n+1))-1` -/
def P17222368201489281417.Spec : Prop :=
  ∀ n, P17222368201489281417.a n = A059249 (n + 1)

end A059249

/-! ## A059249.P17393360721454738351

`A371268(A361945(n+1))-1`
-/

namespace A059249.P17393360721454738351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371268 (A361945 (n + 1)).toNat - 1

end

end A059249.P17393360721454738351

namespace A059249

/-- `A371268(A361945(n+1))-1` -/
def P17393360721454738351.Spec : Prop :=
  ∀ n, P17393360721454738351.a n = A059249 (n + 1)

end A059249

/-! ## A059249.P6126450150257924674

`A380350(A380349(n+1))-1`
-/

namespace A059249.P6126450150257924674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380350 (A380349 (n + 1)).toNat - 1

end

end A059249.P6126450150257924674

namespace A059249

/-- `A380350(A380349(n+1))-1` -/
def P6126450150257924674.Spec : Prop :=
  ∀ n, P6126450150257924674.a n = A059249 (n + 1)

end A059249

/-! ## A059249.P11483055023352046150

`A380352(A380351(n+1))-1`
-/

namespace A059249.P11483055023352046150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380352 (A380351 (n + 1)).toNat - 1

end

end A059249.P11483055023352046150

namespace A059249

/-- `A380352(A380351(n+1))-1` -/
def P11483055023352046150.Spec : Prop :=
  ∀ n, P11483055023352046150.a n = A059249 (n + 1)

end A059249

/-! ## A059249.P6326222604887212812

`n-A343766(A128173(n+1))`
-/

namespace A059249.P6326222604887212812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A343766 (A128173 (n + 1)).toNat

end

end A059249.P6326222604887212812

namespace A059249

/-- `n-A343766(A128173(n+1))` -/
def P6326222604887212812.Spec : Prop :=
  ∀ n, P6326222604887212812.a n = A059249 (n + 1)

end A059249

/-! ## A059249.P9022455056068611590

`A033999(2*n+1)+A004488(n+1)`
-/

namespace A059249.P9022455056068611590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A004488 (n + 1)

end

end A059249.P9022455056068611590

namespace A059249

/-- `A033999(2*n+1)+A004488(n+1)` -/
def P9022455056068611590.Spec : Prop :=
  ∀ n, P9022455056068611590.a n = A059249 (n + 1)

end A059249

/-! ## A059249.P13199542083951073594

`A253586(∑[n+1])-1`
-/

namespace A059249.P13199542083951073594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253586 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A059249.P13199542083951073594

namespace A059249

/-- `A253586(∑[n+1])-1` -/
def P13199542083951073594.Spec : Prop :=
  ∀ n, P13199542083951073594.a n = A059249 (n + 1)

end A059249

/-! ## A059249.P16743546724793900209

`A253587(∑[n+1])-1`
-/

namespace A059249.P16743546724793900209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253587 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A059249.P16743546724793900209

namespace A059249

/-- `A253587(∑[n+1])-1` -/
def P16743546724793900209.Spec : Prop :=
  ∀ n, P16743546724793900209.a n = A059249 (n + 1)

end A059249

/-! ## A059249.P16197464571971451949

`A319047(∑[n+2])+n`
-/

namespace A059249.P16197464571971451949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319047 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A059249.P16197464571971451949

namespace A059249

/-- `A319047(∑[n+2])+n` -/
def P16197464571971451949.Spec : Prop :=
  ∀ n, P16197464571971451949.a n = A059249 (n + 1)

end A059249

/-! ## A059249.P7874420512504602848

`A248813(A034856(n+2))-1`
-/

namespace A059249.P7874420512504602848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248813 (A034856 (n + 2)).toNat - 1

end

end A059249.P7874420512504602848

namespace A059249

/-- `A248813(A034856(n+2))-1` -/
def P7874420512504602848.Spec : Prop :=
  ∀ n, P7874420512504602848.a n = A059249 (n + 1)

end A059249

/-!
# A059250: Square array read by antidiagonals: T(k,n) = binomial(n-1, k) + Sum_{i=0..k} binomial(n, i), k >= 1, n >= 0.

The programs for A059250, there is no canonical definition to state claims against.
-/

/-! ## A059250.P9930280883749385009

`A052509(A038722(n+1))*A238303(n)`
-/

namespace A059250.P9930280883749385009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 (A038722 (n + 1)).toNat * A238303 n

end

end A059250.P9930280883749385009

/-! ## A059250.P5576942496599750231

`A238160(A007401(n+1))+A004070(n)`
-/

namespace A059250.P5576942496599750231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238160 (A007401 (n + 1)).toNat + A004070 n

end

end A059250.P5576942496599750231

/-! ## A059250.P2513018480692134915

`A054124(A007401(n+1))*A238303(n)`
-/

namespace A059250.P2513018480692134915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 (A007401 (n + 1)).toNat * A238303 n

end

end A059250.P2513018480692134915

/-! ## A059250.P16093721494901646454

`2*A054124(A007401(n+1))-A010054(n)`
-/

namespace A059250.P16093721494901646454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054124 (A007401 (n + 1)).toNat - A010054 n

end

end A059250.P16093721494901646454

/-! ## A059250.P8152940251456580581

`A004277(A216274(n)-A054124(n))`
-/

namespace A059250.P8152940251456580581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A216274 n - A054124 n).toNat

end

end A059250.P8152940251456580581

/-! ## A059250.P16567515445860093940

`A014963(A059268(n))*A054124(A007401(n+1))`
-/

namespace A059250.P16567515445860093940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A059268 n).toNat * A054124 (A007401 (n + 1)).toNat

end

end A059250.P16567515445860093940

/-! ## A059250.P4217434144180280334

`A014963(A059268(n))*A052509(A038722(n+1))`
-/

namespace A059250.P4217434144180280334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A059268 n).toNat * A052509 (A038722 (n + 1)).toNat

end

end A059250.P4217434144180280334

/-! ## A059250.P2490150487462891730

`A059214(n+1)-A178522(n+1)`
-/

namespace A059250.P2490150487462891730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059214 (n + 1) - A178522 (n + 1)

end

end A059250.P2490150487462891730

/-!
# A059251: A sequence related to numeric partitions and Fermat Coefficients.

The programs for A059251, there is no canonical definition to state claims against.
-/

/-! ## A059251.P9318899618199615722

`A133010(and(8*n+1, -n)+1)+A032193(n+8)`
-/

namespace A059251.P9318899618199615722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133010 (Int.land (8 * n + 1 : ℤ) (-(n : ℤ)) + 1).toNat + A032193 (n + 8)

end

end A059251.P9318899618199615722

/-! ## A059251.P3309931092985086324

`A080225(A307793(n+1))+A032193(n+8)`
-/

namespace A059251.P3309931092985086324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080225 (A307793 (n + 1)).toNat + A032193 (n + 8)

end

end A059251.P3309931092985086324

/-! ## A059251.P12394096913969442166

`A032193(n+8)+A000035(A001267(n))`
-/

namespace A059251.P12394096913969442166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032193 (n + 8) + A000035 (A001267 n).toNat

end

end A059251.P12394096913969442166

/-! ## A059251.P8062568788597554519

`A032193(n+8)+A025456(A003422(n))`
-/

namespace A059251.P8062568788597554519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032193 (n + 8) + A025456 (A003422 n).toNat

end

end A059251.P8062568788597554519

/-! ## A059251.P4811226766354886389

`A122179(A032209(n))+A032193(n+8)`
-/

namespace A059251.P4811226766354886389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122179 (A032209 n).toNat + A032193 (n + 8)

end

end A059251.P4811226766354886389

/-!
# A059252: Hilbert's Hamiltonian walk on N X N projected onto x axis: m(3).

The programs for A059252, there is no canonical definition to state claims against.
-/

/-! ## A059252.P4165755343036480950

`A059906(A163356(n))`
-/

namespace A059252.P4165755343036480950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (A163356 n).toNat

end

end A059252.P4165755343036480950

/-! ## A059252.P16587528145530377463

`A002262(A163358(n))`
-/

namespace A059252.P16587528145530377463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A163358 n).toNat

end

end A059252.P16587528145530377463

/-! ## A059252.P1287971368321113933

`A025581(A163360(n))`
-/

namespace A059252.P1287971368321113933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A163360 n).toNat

end

end A059252.P1287971368321113933

/-! ## A059252.P7796571128899887011

`∑[A163539(n)]`
-/

namespace A059252.P7796571128899887011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163539 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059252.P7796571128899887011

/-! ## A059252.P18431337355829444760

`∑[A163538(4*n)]`
-/

namespace A059252.P18431337355829444760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163538 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059252.P18431337355829444760

/-! ## A059252.P6865428161262924257

`A163529(A166042(n))`
-/

namespace A059252.P6865428161262924257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 (A166042 n).toNat

end

end A059252.P6865428161262924257

/-! ## A059252.P2461916805732904579

`A163528(A166044(n))`
-/

namespace A059252.P2461916805732904579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 (A166044 n).toNat

end

end A059252.P2461916805732904579

/-! ## A059252.P8463412489588430911

`A059261(n)-A059253(n)`
-/

namespace A059252.P8463412489588430911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059261 n - A059253 n

end

end A059252.P8463412489588430911

/-! ## A059252.P5335051369256475317

`A059253(n)-A059285(n)`
-/

namespace A059252.P5335051369256475317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 n - A059285 n

end

end A059252.P5335051369256475317

/-! ## A059252.P7211114230848132587

`xor(A059253(n), A059905(n))`
-/

namespace A059252.P7211114230848132587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059253 n) (A059905 n)

end

end A059252.P7211114230848132587

/-! ## A059252.P3416029975175977770

`A341120(n)-A283316(n+1)`
-/

namespace A059252.P3416029975175977770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341120 n - A283316 (n + 1)

end

end A059252.P3416029975175977770

/-! ## A059252.P1638639377909955184

`(A059261(n)-A059285(n))/2`
-/

namespace A059252.P1638639377909955184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059261 n - A059285 n : ℚ) / 2

end

end A059252.P1638639377909955184

/-! ## A059252.P6480155880013582868

`A059253(4*n)-A341120(n)`
-/

namespace A059252.P6480155880013582868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (4 * n) - A341120 n

end

end A059252.P6480155880013582868

/-! ## A059252.P13119065165187417563

`A341120(n)-A160383(n)%2`
-/

namespace A059252.P13119065165187417563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341120 n - Int.tmod (A160383 n) 2

end

end A059252.P13119065165187417563

/-! ## A059252.P4439571580577603053

`A059253(n)+A163358(n)-A163360(n)`
-/

namespace A059252.P4439571580577603053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 n + (A163358 n - A163360 n)

end

end A059252.P4439571580577603053

/-! ## A059252.P13354700378133614633

`A059253(n)+A341120(n)-A341121(n)`
-/

namespace A059252.P13354700378133614633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 n + (A341120 n - A341121 n)

end

end A059252.P13354700378133614633

/-! ## A059252.P6138014656543641149

`A341121(n)-(A283316(n+1)+A059285(n))`
-/

namespace A059252.P6138014656543641149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341121 n - (A283316 (n + 1) + A059285 n)

end

end A059252.P6138014656543641149

/-! ## A059252.P10402195297569535477

`A341120(n)-A059253(A341121(n)-A059253(n))`
-/

namespace A059252.P10402195297569535477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341120 n - A059253 (A341121 n - A059253 n).toNat

end

end A059252.P10402195297569535477

/-! ## A059252.P12164660363864848232

`A059253(A163359(A163358(A163360(A163359(n)))))`
-/

namespace A059252.P12164660363864848232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (A163359 (A163358 (A163360 (A163359 n).toNat).toNat).toNat).toNat

end

end A059252.P12164660363864848232

/-! ## A059252.P545782657251291562

`A059906(A064707(A302846(n)))`
-/

namespace A059252.P545782657251291562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (A064707 (A302846 n).toNat).toNat

end

end A059252.P545782657251291562

/-!
# A059253: Hilbert's Hamiltonian walk on N X N projected onto y axis: m'(3).

The programs for A059253, there is no canonical definition to state claims against.
-/

/-! ## A059253.P9491875099501036728

`A059905(A163356(n))`
-/

namespace A059253.P9491875099501036728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A163356 n).toNat

end

end A059253.P9491875099501036728

/-! ## A059253.P4532137778534257924

`A002262(A163360(n))`
-/

namespace A059253.P4532137778534257924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A163360 n).toNat

end

end A059253.P4532137778534257924

/-! ## A059253.P15955402565887225958

`A025581(A163358(n))`
-/

namespace A059253.P15955402565887225958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A163358 n).toNat

end

end A059253.P15955402565887225958

/-! ## A059253.P17828504006697988100

`∑[A163538(n)]`
-/

namespace A059253.P17828504006697988100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059253.P17828504006697988100

/-! ## A059253.P3347256864359431560

`∑[A163539(4*n)]`
-/

namespace A059253.P3347256864359431560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163539 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059253.P3347256864359431560

/-! ## A059253.P11722446563484039909

`A163528(A166042(n))`
-/

namespace A059253.P11722446563484039909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 (A166042 n).toNat

end

end A059253.P11722446563484039909

/-! ## A059253.P4878265100643519633

`A163529(A166044(n))`
-/

namespace A059253.P4878265100643519633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 (A166044 n).toNat

end

end A059253.P4878265100643519633

/-! ## A059253.P517893357327009230

`A309952(A163906(n))`
-/

namespace A059253.P517893357327009230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 (A163906 n).toNat

end

end A059253.P517893357327009230

/-! ## A059253.P6164286997875121721

`A059285(n)+A059252(n)`
-/

namespace A059253.P6164286997875121721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059285 n + A059252 n

end

end A059253.P6164286997875121721

/-! ## A059253.P15433812387795353756

`A059261(n)-A059252(n)`
-/

namespace A059253.P15433812387795353756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059261 n - A059252 n

end

end A059253.P15433812387795353756

/-! ## A059253.P8614382232956728177

`xor(A059252(n), A059905(n))`
-/

namespace A059253.P8614382232956728177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059252 n) (A059905 n)

end

end A059253.P8614382232956728177

/-! ## A059253.P17795780871746134273

`A341121(n)-A283316(n+1)`
-/

namespace A059253.P17795780871746134273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341121 n - A283316 (n + 1)

end

end A059253.P17795780871746134273

/-! ## A059253.P1660816018041367932

`(A059285(n)+A059261(n))/2`
-/

namespace A059253.P1660816018041367932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059285 n + A059261 n : ℚ) / 2

end

end A059253.P1660816018041367932

/-! ## A059253.P11211028355542048111

`A059252(4*n)-A341121(n)`
-/

namespace A059253.P11211028355542048111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 (4 * n) - A341121 n

end

end A059253.P11211028355542048111

/-! ## A059253.P7785432486077446337

`A059252(n)+A163360(n)-A163358(n)`
-/

namespace A059253.P7785432486077446337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 n + (A163360 n - A163358 n)

end

end A059253.P7785432486077446337

/-! ## A059253.P17520906638322710126

`A059252(n)+A341121(n)-A341120(n)`
-/

namespace A059253.P17520906638322710126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 n + (A341121 n - A341120 n)

end

end A059253.P17520906638322710126

/-! ## A059253.P9021222212099775866

`A059285(n)+A341120(n)-A283316(n+1)`
-/

namespace A059253.P9021222212099775866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059285 n + (A341120 n - A283316 (n + 1))

end

end A059253.P9021222212099775866

/-! ## A059253.P6157213512654436763

`A341121(n)-A341121(A341120(n)-A059252(n))`
-/

namespace A059253.P6157213512654436763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341121 n - A341121 (A341120 n - A059252 n).toNat

end

end A059253.P6157213512654436763

/-! ## A059253.P15799667714456068175

`A059252(A163359(A163358(A163360(A163359(n)))))`
-/

namespace A059253.P15799667714456068175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 (A163359 (A163358 (A163360 (A163359 n).toNat).toNat).toNat).toNat

end

end A059253.P15799667714456068175

/-! ## A059253.P3527910862099756292

`A163529(A166042(n)+2*A166042(n))`
-/

namespace A059253.P3527910862099756292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 (A166042 n + 2 * A166042 n).toNat

end

end A059253.P3527910862099756292

/-!
# A059254: Size of maximal subset of the Sobol sequence (projection of a 0/1-cube with the projection vectors b_i=(i,rev(i)), where rev(i) is the value of the reversed binary representation of i).

The programs for A059254, there is no canonical definition to state claims against.
-/

/-! ## A059254.P356918175190366160

`∑[∑[A332016(n²)]]+1`
-/

namespace A059254.P356918175190366160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332016 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A059254.P356918175190366160

/-! ## A059254.P8017523488300933950

`∑[∑[lcm(2, (n-1)*A077049((n+1)^4+1))]]`
-/

namespace A059254.P8017523488300933950
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (((n : ℤ) - 1) * A077049 ((n + 1) ^ 4 + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059254.P8017523488300933950

/-! ## A059254.P17278501946172719026

`∑[A124771(A076220(n))]`
-/

namespace A059254.P17278501946172719026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124771 (A076220 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059254.P17278501946172719026

/-! ## A059254.P17697963187829339357

`∑[A286369(∑[A326855(n)])]`
-/

namespace A059254.P17697963187829339357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326855 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286369 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059254.P17697963187829339357

/-! ## A059254.P12697501618427246676

`∑[A269380(∏[A010205(n)])]`
-/

namespace A059254.P12697501618427246676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010205 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059254.P12697501618427246676

/-!
# A059255: Both sum of n+1 consecutive squares and sum of the immediately following n consecutive squares.

The programs for A059255, the canonical program `A059255.P3301445240807100974` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059255 has offset 0).

The definition of A059255 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059255.P7711095213071032784

`n*(n+1)*(2*n+1)*(12*n²+12*n+1)/6`
-/

namespace A059255.P7711095213071032784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (2 * n + 1) * (12 * n ^ 2 + 12 * n + 1) : ℚ) / 6

end

end A059255.P7711095213071032784

namespace A059255

/-- `n*(n+1)*(2*n+1)*(12*n²+12*n+1)/6` -/
def P7711095213071032784.Spec : Prop :=
  ∀ n, P7711095213071032784.a n = (A059255 n : ℚ)

end A059255

/-! ## A059255.P3301445240807100974

`A000330(A014106(n))-A000330(A046092(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059255

/-- `A000330(A014106(n))-A000330(A046092(n))` -/
def P3301445240807100974.Spec : Prop :=
  ∀ n, P3301445240807100974.a n = A059255 n

theorem P3301445240807100974.correct : P3301445240807100974.Spec := by
  intro n
  simp only [A059255]

end A059255

/-! ## A059255.P15258016831086647213

`∑[5*n²*A053755(n)]`
-/

namespace A059255.P15258016831086647213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ((n ^ 2 : ℤ) * A053755 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059255.P15258016831086647213

namespace A059255

/-- `∑[5*n²*A053755(n)]` -/
def P15258016831086647213.Spec : Prop :=
  ∀ n, P15258016831086647213.a n = A059255 n

end A059255

/-! ## A059255.P5732386881235928839

`lcm(A000330(n), A069190(n+1))`
-/

namespace A059255.P5732386881235928839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000330 n) (A069190 (n + 1))

end

end A059255.P5732386881235928839

namespace A059255

/-- `lcm(A000330(n), A069190(n+1))` -/
def P5732386881235928839.Spec : Prop :=
  ∀ n, (P5732386881235928839.a n : ℤ) = A059255 n

end A059255

/-! ## A059255.P14134236527815730875

`∑[A006003(2*n)*5*n]`
-/

namespace A059255.P14134236527815730875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (2 * n) * (5 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059255.P14134236527815730875

namespace A059255

/-- `∑[A006003(2*n)*5*n]` -/
def P14134236527815730875.Spec : Prop :=
  ∀ n, P14134236527815730875.a n = A059255 n

end A059255

/-! ## A059255.P4860482825925511547

`∑[A330082((2*n)²)]`
-/

namespace A059255.P4860482825925511547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330082 ((2 * n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059255.P4860482825925511547

namespace A059255

/-- `∑[A330082((2*n)²)]` -/
def P4860482825925511547.Spec : Prop :=
  ∀ n, P4860482825925511547.a n = A059255 n

end A059255

/-! ## A059255.P17671571626922446569

`∑[A332495((2*n)²)]`
-/

namespace A059255.P17671571626922446569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332495 ((2 * n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059255.P17671571626922446569

namespace A059255

/-- `∑[A332495((2*n)²)]` -/
def P17671571626922446569.Spec : Prop :=
  ∀ n, P17671571626922446569.a n = A059255 n

end A059255

/-!
# A059256: Primes p such that x^29 = 2 has no solution mod p.

The programs for A059256, there is no canonical definition to state claims against.
-/

/-! ## A059256.P1976454274079833888

`p?[A248572(A228087(n))]%A168311(n+1)²`
-/

namespace A059256.P1976454274079833888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 (A228087 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A168311 (n + 1) ^ 2)

end

end A059256.P1976454274079833888

/-! ## A059256.P6346979027702797368

`p?[A248572(A228087(n))]%A045535(n+2)`
-/

namespace A059256.P6346979027702797368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 (A228087 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A045535 (n + 2))

end

end A059256.P6346979027702797368

/-! ## A059256.P13979122012318704600

`p?[A004442(29*A228087(n))]`
-/

namespace A059256.P13979122012318704600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (29 * A228087 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059256.P13979122012318704600

/-! ## A059256.P2411939670816618163

`A117818(p?[A248572(A228087(n))])`
-/

namespace A059256.P2411939670816618163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 (A228087 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117818 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A059256.P2411939670816618163

/-!
# A059257: Primes p such that x^47 = 2 has no solution mod p.

The programs for A059257, there is no canonical definition to state claims against.
-/

/-! ## A059257.P3831683201442055981

`p?[A047610(18*n+1)-n]`
-/

namespace A059257.P3831683201442055981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047610 (18 * n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059257.P3831683201442055981

/-! ## A059257.P12894517616035541285

`p?[A342410(2*n+1)²+47*n]`
-/

namespace A059257.P12894517616035541285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342410 (2 * n + 1) ^ 2 + (47 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059257.P12894517616035541285

/-! ## A059257.P658428694022923724

`p?[A017401(n)+A005843(18*n)]`
-/

namespace A059257.P658428694022923724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 n + A005843 (18 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059257.P658428694022923724

/-! ## A059257.P7944652064645386129

`p?[A008851(A161705(n))+2*n+1]`
-/

namespace A059257.P7944652064645386129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (A161705 n).toNat + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059257.P7944652064645386129

/-! ## A059257.P6616290072837523694

`p?[A166486(A048985(n+1))+47*n]`
-/

namespace A059257.P6616290072837523694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (A048985 (n + 1)).toNat + (47 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059257.P6616290072837523694

/-! ## A059257.P11329771970260409921

`p?[47*(n+1)-A132708(A239129(n+1))]`
-/

namespace A059257.P11329771970260409921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (47 * (n + 1) : ℤ) - A132708 (A239129 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059257.P11329771970260409921

/-! ## A059257.P9095878034288611035

`p?[A008593(n)+A005408(A008600(n))]`
-/

namespace A059257.P9095878034288611035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n + A005408 (A008600 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059257.P9095878034288611035

/-! ## A059257.P5601027784730453035

`p?[A008593(n)+A004273(A161705(n))]`
-/

namespace A059257.P5601027784730453035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n + A004273 (A161705 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059257.P5601027784730453035

/-! ## A059257.P11587306028423599819

`p?[A161709(n)+A022998(A044102(n))]`
-/

namespace A059257.P11587306028423599819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n + A022998 (A044102 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059257.P11587306028423599819

/-!
# A059258: Primes p such that x^53 = 2 has no solution mod p.

The programs for A059258, the canonical program `A059258.P11658451383634834992` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059258 has offset 1).

The definition of A059258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059258.P13969409874940880766

`p?[A010156(A325143(n+1))+53*n]`
-/

namespace A059258.P13969409874940880766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010156 (A325143 (n + 1)).toNat + (53 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059258.P13969409874940880766

namespace A059258

/-- `p?[A010156(A325143(n+1))+53*n]` -/
def P13969409874940880766.Spec : Prop :=
  ∀ n, P13969409874940880766.a n = A059258 (n + 1)

end A059258

/-! ## A059258.P11658451383634834992

`p?[A146509(A087445(n+1))-n]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059258

/-- `p?[A146509(A087445(n+1))-n]` -/
def P11658451383634834992.Spec : Prop :=
  ∀ n, P11658451383634834992.a n = A059258 (n + 1)

theorem P11658451383634834992.correct : P11658451383634834992.Spec := by
  intro n
  simp only [A059258, Nat.add_sub_cancel]

end A059258

/-! ## A059258.P14004459682005457293

`p?[A146509(A146512(n+1))-n]`
-/

namespace A059258.P14004459682005457293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146509 (A146512 (n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059258.P14004459682005457293

namespace A059258

/-- `p?[A146509(A146512(n+1))-n]` -/
def P14004459682005457293.Spec : Prop :=
  ∀ n, P14004459682005457293.a n = A059258 (n + 1)

end A059258

/-! ## A059258.P1489534343874251029

`p?[6*A298026(A298026(n+1))-n]`
-/

namespace A059258.P1489534343874251029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A298026 (A298026 (n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059258.P1489534343874251029

namespace A059258

/-- `p?[6*A298026(A298026(n+1))-n]` -/
def P1489534343874251029.Spec : Prop :=
  ∀ n, P1489534343874251029.a n = A059258 (n + 1)

end A059258

/-! ## A059258.P716512257328175763

`p?[A016825(13*(n+1))+n]`
-/

namespace A059258.P716512257328175763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (13 * (n + 1)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059258.P716512257328175763

namespace A059258

/-- `p?[A016825(13*(n+1))+n]` -/
def P716512257328175763.Spec : Prop :=
  ∀ n, P716512257328175763.a n = A059258 (n + 1)

end A059258

/-! ## A059258.P4492717049208794435

`p?[A001222(A221868(n+1))+53*n]`
-/

namespace A059258.P4492717049208794435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A221868 (n + 1)).toNat + (53 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059258.P4492717049208794435

namespace A059258

/-- `p?[A001222(A221868(n+1))+53*n]` -/
def P4492717049208794435.Spec : Prop :=
  ∀ n, P4492717049208794435.a n = A059258 (n + 1)

end A059258

/-! ## A059258.P3874625659663165698

`p?[A175887(A113801(2*n+1))+n]`
-/

namespace A059258.P3874625659663165698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (A113801 (2 * n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059258.P3874625659663165698

namespace A059258

/-- `p?[A175887(A113801(2*n+1))+n]` -/
def P3874625659663165698.Spec : Prop :=
  ∀ n, P3874625659663165698.a n = A059258 (n + 1)

end A059258

/-!
# A059259: Triangle read by rows giving coefficient T(i,j) of x^i y^j in 1/(1-x-x*y-y^2) = 1/((1+y)(1-x-y)) for (i,j) = (0,0), (1,0), (0,1), (2,0), (1,1), (0,2), ...

The programs for A059259, there is no canonical definition to state claims against.
-/

/-! ## A059259.P13621537024462777731

`abs(A220074(n))`
-/

namespace A059259.P13621537024462777731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A220074 n|

end

end A059259.P13621537024462777731

/-! ## A059259.P9339874624412784890

`gcd(A000038(n), A220074(n))`
-/

namespace A059259.P9339874624412784890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A220074 n)

end

end A059259.P9339874624412784890

/-! ## A059259.P14796816988536199617

`lcm(A020985(n), A220074(n))`
-/

namespace A059259.P14796816988536199617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A220074 n)

end

end A059259.P14796816988536199617

/-! ## A059259.P5730931430350859430

`2*A035317(n)-A074909(n)`
-/

namespace A059259.P5730931430350859430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035317 n - A074909 n

end

end A059259.P5730931430350859430

/-! ## A059259.P15434523761483576406

`(A108561(n)+A007318(n))/2`
-/

namespace A059259.P15434523761483576406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108561 n + A007318 n : ℚ) / 2

end

end A059259.P15434523761483576406

/-! ## A059259.P13662287513534536728

`A007318(n)+A035317(n)-A181971(n)`
-/

namespace A059259.P13662287513534536728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A035317 n - A181971 n)

end

end A059259.P13662287513534536728

/-! ## A059259.P10099389867513578244

`A059260(A061579(n))`
-/

namespace A059259.P10099389867513578244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059260 (A061579 n).toNat

end

end A059259.P10099389867513578244

/-! ## A059259.P7022182048612636142

`A059260(A038722(n+1)-1)`
-/

namespace A059259.P7022182048612636142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059260 (A038722 (n + 1) - 1).toNat

end

end A059259.P7022182048612636142

/-! ## A059259.P6051478980702785151

`abs(A239473(∑[A198954(n)-1]))`
-/

namespace A059259.P6051478980702785151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A239473 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A059259.P6051478980702785151

/-! ## A059259.P11440031233021510303

`A059260(A014132(n+1)-2*A002260(n+1))`
-/

namespace A059259.P11440031233021510303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059260 (A014132 (n + 1) - 2 * A002260 (n + 1)).toNat

end

end A059259.P11440031233021510303

/-! ## A059259.P2517186562654550875

`A059260(A014132(n+1)-A002260(n+1)-A002260(n+1))`
-/

namespace A059259.P2517186562654550875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059260 (A014132 (n + 1) - A002260 (n + 1) - A002260 (n + 1)).toNat

end

end A059259.P2517186562654550875

/-! ## A059259.P4440138638880987703

`A059260(A038722(n+2))`
-/

namespace A059259.P4440138638880987703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059260 (A038722 (n + 2)).toNat

end

end A059259.P4440138638880987703

/-! ## A059259.P2234120050619534525

`A108561(A007401(n+1))`
-/

namespace A059259.P2234120050619534525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (A007401 (n + 1)).toNat

end

end A059259.P2234120050619534525

/-! ## A059259.P17403059082182783428

`A108561(eq[0, A127648(n)])`
-/

namespace A059259.P17403059082182783428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059259.P17403059082182783428

/-! ## A059259.P12236392364184669676

`A108561(lt[A127648(n), 1])`
-/

namespace A059259.P12236392364184669676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A059259.P12236392364184669676

/-! ## A059259.P9767815626177957714

`A108561(A080036(n+1)-2)`
-/

namespace A059259.P9767815626177957714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (A080036 (n + 1) - 2).toNat

end

end A059259.P9767815626177957714

/-! ## A059259.P15919055849605935184

`A108561(A002024(n+1)+n)`
-/

namespace A059259.P15919055849605935184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (A002024 (n + 1) + (n : ℤ)).toNat

end

end A059259.P15919055849605935184

/-! ## A059259.P12613380234687528931

`A108561(lt[1, A297192(n+1)])`
-/

namespace A059259.P12613380234687528931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A059259.P12613380234687528931

/-! ## A059259.P16200358599594562256

`A108561(lt[1, A297192(n)]-1)`
-/

namespace A059259.P16200358599594562256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n - 1)

end

end A059259.P16200358599594562256

/-! ## A059259.P15764643676742861439

`A108561(lt[A103438(n+2), A008277(n+2)])`
-/

namespace A059259.P15764643676742861439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103438 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A059259.P15764643676742861439

/-!
# A059260: Triangle read by rows giving coefficient T(i,j) of x^i y^j in 1/(1-y-x*y-x^2) = 1/((1+x)(1-x-y)) for (i,j) = (0,0), (1,0), (0,1), (2,0), (1,1), (0,2), ...

The programs for A059260, there is no canonical definition to state claims against.
-/

/-! ## A059260.P17410903323826289320

`abs(A239473(n))`
-/

namespace A059260.P17410903323826289320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A239473 n|

end

end A059260.P17410903323826289320

/-! ## A059260.P10659982992413753598

`A135230(n)-A073424(n)`
-/

namespace A059260.P10659982992413753598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135230 n - A073424 n

end

end A059260.P10659982992413753598

/-! ## A059260.P17692763917846620528

`A097807(n)*A239473(n)`
-/

namespace A059260.P17692763917846620528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A239473 n

end

end A059260.P17692763917846620528

/-! ## A059260.P8156800636781234995

`gcd(A000038(n), A239473(n))`
-/

namespace A059260.P8156800636781234995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A239473 n)

end

end A059260.P8156800636781234995

/-! ## A059260.P4940530804788555801

`lcm(A020985(n), A239473(n))`
-/

namespace A059260.P4940530804788555801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A239473 n)

end

end A059260.P4940530804788555801

/-! ## A059260.P1892202021946920652

`A135229(n)%(A135221(n)+1)`
-/

namespace A059260.P1892202021946920652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135229 n) (A135221 n + 1)

end

end A059260.P1892202021946920652

/-! ## A059260.P6072621048880737128

`A007318(n)+A135230(n)-A132749(n)`
-/

namespace A059260.P6072621048880737128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A135230 n - A132749 n)

end

end A059260.P6072621048880737128

/-! ## A059260.P12703717843186099818

`A007318(n)/A130595(n)*A239473(n)`
-/

namespace A059260.P12703717843186099818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A130595 n : ℚ) * (A239473 n : ℚ)

end

end A059260.P12703717843186099818

/-! ## A059260.P16646678154475095772

`A129690(n+1)+A156644(n)-A007318(n)`
-/

namespace A059260.P16646678154475095772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129690 (n + 1) + (A156644 n - A007318 n)

end

end A059260.P16646678154475095772

/-! ## A059260.P12444097133084819388

`A007318(n+1)+A129690(n+1)-A124927(n+1)`
-/

namespace A059260.P12444097133084819388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) + (A129690 (n + 1) - A124927 (n + 1))

end

end A059260.P12444097133084819388

/-! ## A059260.P3781813428127157893

`A059259(A061579(n))`
-/

namespace A059260.P3781813428127157893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059259 (A061579 n).toNat

end

end A059260.P3781813428127157893

/-! ## A059260.P8186004581606313967

`A059259(A038722(n+1)-1)`
-/

namespace A059260.P8186004581606313967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059259 (A038722 (n + 1) - 1).toNat

end

end A059260.P8186004581606313967

/-! ## A059260.P12626927263707019648

`A059259(A038722(n+2))`
-/

namespace A059260.P12626927263707019648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059259 (A038722 (n + 2)).toNat

end

end A059260.P12626927263707019648

/-! ## A059260.P12310583154926344077

`A112465(comp[∑[n]])`
-/

namespace A059260.P12310583154926344077
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112465 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A059260.P12310583154926344077

/-! ## A059260.P11275465954192436759

`abs(A112468(A007401(n+2)))`
-/

namespace A059260.P11275465954192436759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112468 (A007401 (n + 2)).toNat|

end

end A059260.P11275465954192436759

/-!
# A059261: Hilbert's Hamiltonian walk on N X N projected onto the first diagonal: M(3) (sum of the sequences A059252 and A059253).

The programs for A059261, there is no canonical definition to state claims against.
-/

/-! ## A059261.P6573879046889192779

`A163530(A166042(n))`
-/

namespace A059261.P6573879046889192779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163530 (A166042 n).toNat

end

end A059261.P6573879046889192779

/-! ## A059261.P918826389369524197

`A163530(A166044(n))`
-/

namespace A059261.P918826389369524197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163530 (A166044 n).toNat

end

end A059261.P918826389369524197

/-! ## A059261.P6371416132098082878

`A059253(n)+A059252(n)`
-/

namespace A059261.P6371416132098082878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 n + A059252 n

end

end A059261.P6371416132098082878

/-! ## A059261.P5507920380374551093

`A059252(n)+∑[A163538(n)]`
-/

namespace A059261.P5507920380374551093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059261.P5507920380374551093

/-! ## A059261.P13882299832869621375

`A059253(n)+∑[A163539(n)]`
-/

namespace A059261.P13882299832869621375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163539 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059261.P13882299832869621375

/-! ## A059261.P5101517148090895054

`∑[A163539(n)+A163538(n)]`
-/

namespace A059261.P5101517148090895054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163539 n + A163538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059261.P5101517148090895054

/-! ## A059261.P4493321108293990155

`A059285(n)+2*A059252(n)`
-/

namespace A059261.P4493321108293990155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059285 n + 2 * A059252 n

end

end A059261.P4493321108293990155

/-! ## A059261.P3883050521942756263

`2*A059253(n)-A059285(n)`
-/

namespace A059261.P3883050521942756263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059253 n - A059285 n

end

end A059261.P3883050521942756263

/-! ## A059261.P2554634452400994367

`∑[A163538(4*n)+A163538(n)]`
-/

namespace A059261.P2554634452400994367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163538 (4 * n) + A163538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059261.P2554634452400994367

/-! ## A059261.P15151520558461070115

`A341120(n+1)+A341121(n+1)-1`
-/

namespace A059261.P15151520558461070115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341120 (n + 1) + (A341121 (n + 1) - 1)

end

end A059261.P15151520558461070115

/-! ## A059261.P3672434076290760840

`A163529(A166044(n))+A059252(n)`
-/

namespace A059261.P3672434076290760840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 (A166044 n).toNat + A059252 n

end

end A059261.P3672434076290760840

/-! ## A059261.P366311462299133745

`A059252(n)+xor(A059252(n), A059905(n))`
-/

namespace A059261.P366311462299133745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 n + Int.xor (A059252 n) (A059905 n)

end

end A059261.P366311462299133745

/-! ## A059261.P15277663951124952684

`A059253(n)+xor(A059253(n), A059905(n))`
-/

namespace A059261.P15277663951124952684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 n + Int.xor (A059253 n) (A059905 n)

end

end A059261.P15277663951124952684

/-! ## A059261.P8475371286611921996

`A059252(n)+A341121(n)-A283316(n+1)`
-/

namespace A059261.P8475371286611921996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 n + (A341121 n - A283316 (n + 1))

end

end A059261.P8475371286611921996

/-! ## A059261.P15884618945432417530

`A059253(n)+A341120(n)-A283316(n+1)`
-/

namespace A059261.P15884618945432417530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 n + (A341120 n - A283316 (n + 1))

end

end A059261.P15884618945432417530

/-! ## A059261.P11331230568114826909

`A393253(A163356(n))`
-/

namespace A059261.P11331230568114826909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393253 (A163356 n).toNat

end

end A059261.P11331230568114826909

/-! ## A059261.P10386916182802330529

`A059905(A163356(n))+A059252(n)`
-/

namespace A059261.P10386916182802330529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A163356 n).toNat + A059252 n

end

end A059261.P10386916182802330529

/-! ## A059261.P12394575421581303077

`A003056(A163358(n))`
-/

namespace A059261.P12394575421581303077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A163358 n).toNat

end

end A059261.P12394575421581303077

/-! ## A059261.P232630854499685117

`A003056(A163360(n))`
-/

namespace A059261.P232630854499685117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A163360 n).toNat

end

end A059261.P232630854499685117

/-! ## A059261.P4793992366434126663

`A059252(n)+A025581(A163358(n))`
-/

namespace A059261.P4793992366434126663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 n + A025581 (A163358 n).toNat

end

end A059261.P4793992366434126663

/-!
# A059262: Primes p such that x^9 = 2 has no solution mod p.

The programs for A059262, there is no canonical definition to state claims against.
-/

/-! ## A059262.P11798833770795556947

`record[A014673(A273202(n+2))]`
-/

namespace A059262.P11798833770795556947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A273202 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059262.P11798833770795556947

/-! ## A059262.P15344117137854580481

`record[A014673(A274720(n+2))]`
-/

namespace A059262.P15344117137854580481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A274720 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059262.P15344117137854580481

/-! ## A059262.P4985184269775028266

`p?[A038502(A273202(n+1))]`
-/

namespace A059262.P4985184269775028266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A273202 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059262.P4985184269775028266

/-! ## A059262.P15162517584959188135

`A032742(∩[A016945(n+1), A273202(n+2)])`
-/

namespace A059262.P15162517584959188135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273202 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A059262.P15162517584959188135

/-! ## A059262.P2370857487961295176

`record[A006530(A273202(A244904(n+1)))]`
-/

namespace A059262.P2370857487961295176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A273202 (A244904 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059262.P2370857487961295176

/-!
# A059263: Primes p such that x^10 = 2 has no solution mod p.

The programs for A059263, there is no canonical definition to state claims against.
-/

/-! ## A059263.P13330709494259324266

`∩[A059639(n+1), A160512(n+1)]`
-/

namespace A059263.P13330709494259324266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059263.P13330709494259324266

/-! ## A059263.P8457893014829365505

`∩[A059639(n+1), A324761(n+1)]`
-/

namespace A059263.P8457893014829365505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059263.P8457893014829365505

/-! ## A059263.P3942642551690734829

`∩[A059639(n+1), A325266(n+1)]`
-/

namespace A059263.P3942642551690734829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059263.P3942642551690734829

/-! ## A059263.P16724479682056341922

`∩[A059639(n+1), A328867(n+1)]`
-/

namespace A059263.P16724479682056341922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059263.P16724479682056341922

/-! ## A059263.P10453206445175725901

`∩[A059639(n+1), A331593(n+1)]`
-/

namespace A059263.P10453206445175725901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059263.P10453206445175725901

/-!
# A059264: Primes p such that x^12 = 2 has no solution mod p.

The programs for A059264, there is no canonical definition to state claims against.
-/

/-! ## A059264.P11653832760290090500

`∪[A040100(n+1), A040993(n+1)]`
-/

namespace A059264.P11653832760290090500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059264.P11653832760290090500

/-!
# A059265: Primes p such that x^14 = 2 has no solution mod p.

The programs for A059265, there is no canonical definition to state claims against.
-/

/-! ## A059265.P8733637808970393298

`p?[A335453(2*(n+1))+A008576(n)]`
-/

namespace A059265.P8733637808970393298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335453 (2 * (n + 1)) + A008576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059265.P8733637808970393298

/-! ## A059265.P6416023681008600555

`p?[lt[A167505(n+3), A167545(n)]]`
-/

namespace A059265.P6416023681008600555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167505 (n + 3)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167545 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A059265.P6416023681008600555

/-! ## A059265.P18421461770913822111

`p?[2*lt[A181118(2*n+1), A255051(n+1)]+1]`
-/

namespace A059265.P18421461770913822111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181118 (2 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255051 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f2 j < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A059265.P18421461770913822111

/-! ## A059265.P14625972776872545750

`p?[or(A008576(n), A186747(n))]`
-/

namespace A059265.P14625972776872545750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008576 n) (A186747 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059265.P14625972776872545750

/-! ## A059265.P9349242191588550182

`∩[A059315(n+1), A192452(n+1)]`
-/

namespace A059265.P9349242191588550182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059265.P9349242191588550182

/-!
# A059266: Numbers k such that 4^k - 3 is prime.

The programs for A059266, there is no canonical definition to state claims against.
-/

/-! ## A059266.P11034636645834582042

`record[A273943(A050414(n+1))]`
-/

namespace A059266.P11034636645834582042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A050414 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059266.P11034636645834582042

/-! ## A059266.P12421856333377448045

`record[A278537(A050414(n+2))]`
-/

namespace A059266.P12421856333377448045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278537 (A050414 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059266.P12421856333377448045

/-! ## A059266.P729938651265713875

`record[A078898(A050414(n+1)+A000007(n))]`
-/

namespace A059266.P729938651265713875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A050414 (n + 1) + A000007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059266.P729938651265713875

/-! ## A059266.P12564011084669565738

`lt[A013603(2*(n+2)), 4]+2`
-/

namespace A059266.P12564011084669565738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013603 (2 * (n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A059266.P12564011084669565738

/-! ## A059266.P16937238627972584607

`eq[3, A057673(A004277(n))]`
-/

namespace A059266.P16937238627972584607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057673 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059266.P16937238627972584607

/-!
# A059267: Numbers n with 2 divisors d1 and d2 having difference 2: d2 - d1 = 2; equivalently, numbers that are 0 (mod 4) or have a divisor d of the form d = m^2 - 1.

The programs for A059267, the canonical program `A059267.P2704590181977768791` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059267 has offset 1).

The definition of A059267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5219 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059267.P15427078972172251526

`lt[0, A243865(n+1)]+1`
-/

namespace A059267.P15427078972172251526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243865 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A059267.P15427078972172251526

namespace A059267

/-- `lt[0, A243865(n+1)]+1` -/
def P15427078972172251526.Spec : Prop :=
  ∀ n, (P15427078972172251526.a n : ℤ) = A059267 (n + 1)

end A059267

/-! ## A059267.P5621578757977214953

`lt[0, A243983(n+1)]+1`
-/

namespace A059267.P5621578757977214953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243983 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A059267.P5621578757977214953

namespace A059267

/-- `lt[0, A243983(n+1)]+1` -/
def P5621578757977214953.Spec : Prop :=
  ∀ n, (P5621578757977214953.a n : ℤ) = A059267 (n + 1)

end A059267

/-! ## A059267.P2704590181977768791

`lt[0, A099475(A028310(n))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A059267

/-- `lt[0, A099475(A028310(n))]` -/
def P2704590181977768791.Spec : Prop :=
  ∀ n, (P2704590181977768791.a n : ℤ) = A059267 (n + 1)

theorem P2704590181977768791.correct : P2704590181977768791.Spec := by
  intro n
  simp only [A059267, Nat.add_sub_cancel]

end A059267

/-! ## A059267.P9781888342502025726

`lt[1, A243983(A004277(n)-n)]`
-/

namespace A059267.P9781888342502025726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243983 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A059267.P9781888342502025726

namespace A059267

/-- `lt[1, A243983(A004277(n)-n)]` -/
def P9781888342502025726.Spec : Prop :=
  ∀ n, (P9781888342502025726.a n : ℤ) = A059267 (n + 1)

end A059267

/-! ## A059267.P11677102821637129274

`lt[A243984(n+1), A000203(n+1)]+1`
-/

namespace A059267.P11677102821637129274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A059267.P11677102821637129274

namespace A059267

/-- `lt[A243984(n+1), A000203(n+1)]+1` -/
def P11677102821637129274.Spec : Prop :=
  ∀ n, (P11677102821637129274.a n : ℤ) = A059267 (n + 1)

end A059267

/-! ## A059267.P2765534930702152856

`eq[char[A099477(n+1)], A000007(n)]`
-/

namespace A059267.P2765534930702152856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099477 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A059267.P2765534930702152856

namespace A059267

/-- `eq[char[A099477(n+1)], A000007(n)]` -/
def P2765534930702152856.Spec : Prop :=
  ∀ n, (P2765534930702152856.a n : ℤ) = A059267 (n + 1)

end A059267

/-! ## A059267.P4673261268719055316

`eq[char[A099477(n+1)], A000038(n)]`
-/

namespace A059267.P4673261268719055316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099477 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A059267.P4673261268719055316

namespace A059267

/-- `eq[char[A099477(n+1)], A000038(n)]` -/
def P4673261268719055316.Spec : Prop :=
  ∀ n, (P4673261268719055316.a n : ℤ) = A059267 (n + 1)

end A059267

/-! ## A059267.P6718544116252848782

`eq[A089803(n)%2, char[A099477(n+1)]]`
-/

namespace A059267.P6718544116252848782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089803 n) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099477 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A059267.P6718544116252848782

namespace A059267

/-- `eq[A089803(n)%2, char[A099477(n+1)]]` -/
def P6718544116252848782.Spec : Prop :=
  ∀ n, (P6718544116252848782.a n : ℤ) = A059267 (n + 1)

end A059267

/-! ## A059267.P16669549860231603939

`lt[0, A099475(A233583(n+1))]`
-/

namespace A059267.P16669549860231603939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099475 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A059267.P16669549860231603939

namespace A059267

/-- `lt[0, A099475(A233583(n+1))]` -/
def P16669549860231603939.Spec : Prop :=
  ∀ n, (P16669549860231603939.a n : ℤ) = A059267 (n + 1)

end A059267

/-! ## A059267.P17576274544846826592

`eq[A089803(n²), char[A099477(n+1)]]`
-/

namespace A059267.P17576274544846826592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089803 (n ^ 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099477 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A059267.P17576274544846826592

namespace A059267

/-- `eq[A089803(n²), char[A099477(n+1)]]` -/
def P17576274544846826592.Spec : Prop :=
  ∀ n, (P17576274544846826592.a n : ℤ) = A059267 (n + 1)

end A059267

/-!
# A059268: Concatenate subsequences [2^0, 2^1, ..., 2^n] for n = 0, 1, 2, ...

The programs for A059268, the canonical program `A059268.P15217573790077737885` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059268 has offset 0).

The definition of A059268 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059268.P15217573790077737885

`A018900(n+1)-A140513(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A059268

/-- `A018900(n+1)-A140513(n)` -/
def P15217573790077737885.Spec : Prop :=
  ∀ n, P15217573790077737885.a n = A059268 n

theorem P15217573790077737885.correct : P15217573790077737885.Spec := by
  intro n
  simp only [A059268]

end A059268

/-! ## A059268.P4207979102408330083

`2^(n-C(∑[char[∑[n]]], 2))`
-/

namespace A059268.P4207979102408330083
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ)

end

end A059268.P4207979102408330083

namespace A059268

/-- `2^(n-C(∑[char[∑[n]]], 2))` -/
def P4207979102408330083.Spec : Prop :=
  ∀ n, P4207979102408330083.a n = (A059268 n : ℚ)

end A059268

/-! ## A059268.P18348655931073129355

`2^A002262(n)`
-/

namespace A059268.P18348655931073129355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ)

end

end A059268.P18348655931073129355

namespace A059268

/-- `2^A002262(n)` -/
def P18348655931073129355.Spec : Prop :=
  ∀ n, P18348655931073129355.a n = (A059268 n : ℚ)

end A059268

/-! ## A059268.P14612640140641006830

`2^sqrt(A143844(n))`
-/

namespace A059268.P14612640140641006830
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (Real.sqrt (A143844 n : ℝ))

end

end A059268.P14612640140641006830

namespace A059268

/-- `2^sqrt(A143844(n))` -/
def P14612640140641006830.Spec : Prop :=
  ∀ n, P14612640140641006830.a n = (A059268 n : ℝ)

end A059268

/-! ## A059268.P9364611698433640830

`2^(n-A057944(n))`
-/

namespace A059268.P9364611698433640830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - A057944 n : ℤ)

end

end A059268.P9364611698433640830

namespace A059268

/-- `2^(n-A057944(n))` -/
def P9364611698433640830.Spec : Prop :=
  ∀ n, P9364611698433640830.a n = (A059268 n : ℚ)

end A059268

/-! ## A059268.P11984649725435229776

`2^A057554(Δ[n²])`
-/

namespace A059268.P11984649725435229776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A057554 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ)

end

end A059268.P11984649725435229776

namespace A059268

/-- `2^A057554(Δ[n²])` -/
def P11984649725435229776.Spec : Prop :=
  ∀ n, P11984649725435229776.a n = (A059268 n : ℚ)

end A059268

/-! ## A059268.P14903635872581316208

`2^(A002260(n+1)-1)`
-/

namespace A059268.P14903635872581316208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002260 (n + 1) - 1 : ℤ)

end

end A059268.P14903635872581316208

namespace A059268

/-- `2^(A002260(n+1)-1)` -/
def P14903635872581316208.Spec : Prop :=
  ∀ n, P14903635872581316208.a n = (A059268 n : ℚ)

end A059268

/-! ## A059268.P5972733502079653937

`2^(A132118(n+1)-(n+1))`
-/

namespace A059268.P5972733502079653937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A132118 (n + 1) - (n + 1 : ℤ) : ℤ)

end

end A059268.P5972733502079653937

namespace A059268

/-- `2^(A132118(n+1)-(n+1))` -/
def P5972733502079653937.Spec : Prop :=
  ∀ n, P5972733502079653937.a n = (A059268 n : ℚ)

end A059268

/-! ## A059268.P17871291802495415074

`a(n-1)+a(n-1)-A131436(n)` with `a(0)=1`
-/

namespace A059268.P17871291802495415074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) - A131436 n)

end

end A059268.P17871291802495415074

namespace A059268

/-- `a(n-1)+a(n-1)-A131436(n)` -/
def P17871291802495415074.Spec : Prop :=
  ∀ n, P17871291802495415074.a n = A059268 n

end A059268

/-! ## A059268.P15102612517785203225

`A000079(A002262(n))`
-/

namespace A059268.P15102612517785203225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat

end

end A059268.P15102612517785203225

namespace A059268

/-- `A000079(A002262(n))` -/
def P15102612517785203225.Spec : Prop :=
  ∀ n, P15102612517785203225.a n = A059268 n

end A059268

/-! ## A059268.P1302755256470933490

`A013620(A112367(n))`
-/

namespace A059268.P1302755256470933490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 (A112367 n).toNat

end

end A059268.P1302755256470933490

namespace A059268

/-- `A013620(A112367(n))` -/
def P1302755256470933490.Spec : Prop :=
  ∀ n, P1302755256470933490.a n = A059268 n

end A059268

/-! ## A059268.P11142452989403091907

`A082693(A061885(n))`
-/

namespace A059268.P11142452989403091907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082693 (A061885 n).toNat

end

end A059268.P11142452989403091907

namespace A059268

/-- `A082693(A061885(n))` -/
def P11142452989403091907.Spec : Prop :=
  ∀ n, P11142452989403091907.a n = A059268 n

end A059268

/-! ## A059268.P3087813941047296307

`A082693(A143844(n))`
-/

namespace A059268.P3087813941047296307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082693 (A143844 n).toNat

end

end A059268.P3087813941047296307

namespace A059268

/-- `A082693(A143844(n))` -/
def P3087813941047296307.Spec : Prop :=
  ∀ n, P3087813941047296307.a n = A059268 n

end A059268

/-! ## A059268.P2978564919581281212

`A011782(A002260(n+1))`
-/

namespace A059268.P2978564919581281212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat

end

end A059268.P2978564919581281212

namespace A059268

/-- `A011782(A002260(n+1))` -/
def P2978564919581281212.Spec : Prop :=
  ∀ n, P2978564919581281212.a n = A059268 n

end A059268

/-! ## A059268.P15975797146248569054

`A011782(A002262(n)+1)`
-/

namespace A059268.P15975797146248569054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002262 n + 1).toNat

end

end A059268.P15975797146248569054

namespace A059268

/-- `A011782(A002262(n)+1)` -/
def P15975797146248569054.Spec : Prop :=
  ∀ n, P15975797146248569054.a n = A059268 n

end A059268

/-! ## A059268.P17114016324977998748

`A131577(A002262(n)+1)`
-/

namespace A059268.P17114016324977998748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A002262 n + 1).toNat

end

end A059268.P17114016324977998748

namespace A059268

/-- `A131577(A002262(n)+1)` -/
def P17114016324977998748.Spec : Prop :=
  ∀ n, P17114016324977998748.a n = A059268 n

end A059268

/-! ## A059268.P9310688183638567426

`A166918(n)+A166692(n)`
-/

namespace A059268.P9310688183638567426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166918 n + A166692 n

end

end A059268.P9310688183638567426

namespace A059268

/-- `A166918(n)+A166692(n)` -/
def P9310688183638567426.Spec : Prop :=
  ∀ n, P9310688183638567426.a n = A059268 n

end A059268

/-! ## A059268.P17547973901958480670

`A232089(n)+A140531(n)`
-/

namespace A059268.P17547973901958480670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232089 n + A140531 n

end

end A059268.P17547973901958480670

namespace A059268

/-- `A232089(n)+A140531(n)` -/
def P17547973901958480670.Spec : Prop :=
  ∀ n, P17547973901958480670.a n = A059268 n

end A059268

/-! ## A059268.P11091488676092824571

`A367559(n)+A025581(n)`
-/

namespace A059268.P11091488676092824571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367559 n + A025581 n

end

end A059268.P11091488676092824571

namespace A059268

/-- `A367559(n)+A025581(n)` -/
def P11091488676092824571.Spec : Prop :=
  ∀ n, P11091488676092824571.a n = A059268 n

end A059268

/-! ## A059268.P10308250793471551589

`A000079(n-A057944(n))`
-/

namespace A059268.P10308250793471551589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 ((n : ℤ) - A057944 n).toNat

end

end A059268.P10308250793471551589

namespace A059268

/-- `A000079(n-A057944(n))` -/
def P10308250793471551589.Spec : Prop :=
  ∀ n, P10308250793471551589.a n = A059268 n

end A059268

/-!
# A059269: Numbers m for which the number of divisors, tau(m), is divisible by 3.

The programs for A059269, the canonical program `A059269.P6274107585826422028` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059269 has offset 1).

The definition of A059269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059269.P6274107585826422028

`eq[1, A353470(n+1)]+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059269

/-- `eq[1, A353470(n+1)]+1` -/
def P6274107585826422028.Spec : Prop :=
  ∀ n, (P6274107585826422028.a n : ℤ) = A059269 (n + 1)

theorem P6274107585826422028.correct : P6274107585826422028.Spec := by
  intro n
  simp only [A059269, Nat.add_sub_cancel]

end A059269

/-! ## A059269.P2549494891635134964

`eq[0, A000005(n+1)%3]+1`
-/

namespace A059269.P2549494891635134964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A059269.P2549494891635134964

namespace A059269

/-- `eq[0, A000005(n+1)%3]+1` -/
def P2549494891635134964.Spec : Prop :=
  ∀ n, (P2549494891635134964.a n : ℤ) = A059269 (n + 1)

end A059269

/-! ## A059269.P12654317083776359872

`eq[1, A079978(A000005(n+1))]+1`
-/

namespace A059269.P12654317083776359872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A059269.P12654317083776359872

namespace A059269

/-- `eq[1, A079978(A000005(n+1))]+1` -/
def P12654317083776359872.Spec : Prop :=
  ∀ n, (P12654317083776359872.a n : ℤ) = A059269 (n + 1)

end A059269

/-! ## A059269.P7423620931219274833

`eq[1, A173259(A000005(n)+a(n-1)+1)]` with `a(0)=2`
-/

namespace A059269.P7423620931219274833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A173259 (A000005 n + f2 (n - 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059269.P7423620931219274833

namespace A059269

/-- `eq[1, A173259(A000005(n)+a(n-1)+1)]` -/
def P7423620931219274833.Spec : Prop :=
  ∀ n, (P7423620931219274833.a n : ℤ) = A059269 (n + 1)

end A059269

/-! ## A059269.P15709028024280304720

`filter[A048944(n+1), A353470(#)]`
-/

namespace A059269.P15709028024280304720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353470 (f1 j).toNat = 1) n)

end

end A059269.P15709028024280304720

namespace A059269

/-- `filter[A048944(n+1), A353470(#)]` -/
def P15709028024280304720.Spec : Prop :=
  ∀ n, P15709028024280304720.a n = A059269 (n + 1)

end A059269

/-! ## A059269.P11557454306095046437

`filter[A177880(n+1), A353470(#)]`
-/

namespace A059269.P11557454306095046437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353470 (f1 j).toNat = 1) n)

end

end A059269.P11557454306095046437

namespace A059269

/-- `filter[A177880(n+1), A353470(#)]` -/
def P11557454306095046437.Spec : Prop :=
  ∀ n, P11557454306095046437.a n = A059269 (n + 1)

end A059269

/-! ## A059269.P15262167013647045589

`filter[A162643(n+1), A353470(#)]`
-/

namespace A059269.P15262167013647045589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353470 (f1 j).toNat = 1) n)

end

end A059269.P15262167013647045589

namespace A059269

/-- `filter[A162643(n+1), A353470(#)]` -/
def P15262167013647045589.Spec : Prop :=
  ∀ n, P15262167013647045589.a n = A059269 (n + 1)

end A059269

/-! ## A059269.P4246112684299780318

`filter[A013929(n+1), A353470(#)]`
-/

namespace A059269.P4246112684299780318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353470 (f1 j).toNat = 1) n)

end

end A059269.P4246112684299780318

namespace A059269

/-- `filter[A013929(n+1), A353470(#)]` -/
def P4246112684299780318.Spec : Prop :=
  ∀ n, P4246112684299780318.a n = A059269 (n + 1)

end A059269

/-! ## A059269.P15484360979875661899

`filter[A162966(n+1), A353470(#)]`
-/

namespace A059269.P15484360979875661899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353470 (f1 j).toNat = 1) n)

end

end A059269.P15484360979875661899

namespace A059269

/-- `filter[A162966(n+1), A353470(#)]` -/
def P15484360979875661899.Spec : Prop :=
  ∀ n, P15484360979875661899.a n = A059269 (n + 1)

end A059269

/-! ## A059269.P2490883373331941779

`filter[A354360(n+1), A353470(#)]`
-/

namespace A059269.P2490883373331941779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353470 (f1 j).toNat = 1) n)

end

end A059269.P2490883373331941779

namespace A059269

/-- `filter[A354360(n+1), A353470(#)]` -/
def P2490883373331941779.Spec : Prop :=
  ∀ n, P2490883373331941779.a n = A059269 (n + 1)

end A059269

/-! ## A059269.P9595077001404938504

`filter[A389462(n+1), A353470(#)]`
-/

namespace A059269.P9595077001404938504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353470 (f1 j).toNat = 1) n)

end

end A059269.P9595077001404938504

namespace A059269

/-- `filter[A389462(n+1), A353470(#)]` -/
def P9595077001404938504.Spec : Prop :=
  ∀ n, P9595077001404938504.a n = A059269 (n + 1)

end A059269

/-! ## A059269.P17424317794327794315

`filter[A363597(n+1), A353470(#)]`
-/

namespace A059269.P17424317794327794315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353470 (f1 j).toNat = 1) n)

end

end A059269.P17424317794327794315

namespace A059269

/-- `filter[A363597(n+1), A353470(#)]` -/
def P17424317794327794315.Spec : Prop :=
  ∀ n, P17424317794327794315.a n = A059269 (n + 1)

end A059269

/-! ## A059269.P12746924388149659656

`filter[A366288(n+1), A353470(#)]`
-/

namespace A059269.P12746924388149659656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353470 (f1 j).toNat = 1) n)

end

end A059269.P12746924388149659656

namespace A059269

/-- `filter[A366288(n+1), A353470(#)]` -/
def P12746924388149659656.Spec : Prop :=
  ∀ n, P12746924388149659656.a n = A059269 (n + 1)

end A059269

/-! ## A059269.P14886697712253902965

`filter[A341749(n+1), A353470(#)]`
-/

namespace A059269.P14886697712253902965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353470 (f1 j).toNat = 1) n)

end

end A059269.P14886697712253902965

namespace A059269

/-- `filter[A341749(n+1), A353470(#)]` -/
def P14886697712253902965.Spec : Prop :=
  ∀ n, P14886697712253902965.a n = A059269 (n + 1)

end A059269

/-! ## A059269.P3497940845779654614

`filter[A066423(n+1), A353470(#)]`
-/

namespace A059269.P3497940845779654614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353470 (f1 j).toNat = 1) n)

end

end A059269.P3497940845779654614

namespace A059269

/-- `filter[A066423(n+1), A353470(#)]` -/
def P3497940845779654614.Spec : Prop :=
  ∀ n, P3497940845779654614.a n = A059269 (n + 1)

end A059269

/-! ## A059269.P16694242264291062992

`filter[A289553(n+1), A353470(#)]`
-/

namespace A059269.P16694242264291062992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353470 (f1 j).toNat = 1) n)

end

end A059269.P16694242264291062992

namespace A059269

/-- `filter[A289553(n+1), A353470(#)]` -/
def P16694242264291062992.Spec : Prop :=
  ∀ n, P16694242264291062992.a n = A059269 (n + 1)

end A059269

/-! ## A059269.P8964315415819109582

`filter[A375962(n+1), A353470(#)]`
-/

namespace A059269.P8964315415819109582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353470 (f1 j).toNat = 1) n)

end

end A059269.P8964315415819109582

namespace A059269

/-- `filter[A375962(n+1), A353470(#)]` -/
def P8964315415819109582.Spec : Prop :=
  ∀ n, P8964315415819109582.a n = A059269 (n + 1)

end A059269

/-! ## A059269.P7781006479781242953

`∩[A048944(n+1), A375962(n+1)]`
-/

namespace A059269.P7781006479781242953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059269.P7781006479781242953

namespace A059269

/-- `∩[A048944(n+1), A375962(n+1)]` -/
def P7781006479781242953.Spec : Prop :=
  ∀ n, (P7781006479781242953.a n : ℤ) = A059269 (n + 1)

end A059269

/-! ## A059269.P14487392702993966338

`filter[A088609(n+1), A353470(#)]`
-/

namespace A059269.P14487392702993966338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353470 (f1 j).toNat = 1) n)

end

end A059269.P14487392702993966338

namespace A059269

/-- `filter[A088609(n+1), A353470(#)]` -/
def P14487392702993966338.Spec : Prop :=
  ∀ n, P14487392702993966338.a n = A059269 (n + 1)

end A059269

/-! ## A059269.P17953795425290103002

`filter[A060679(n+1), A353470(#)]`
-/

namespace A059269.P17953795425290103002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353470 (f1 j).toNat = 1) n)

end

end A059269.P17953795425290103002

namespace A059269

/-- `filter[A060679(n+1), A353470(#)]` -/
def P17953795425290103002.Spec : Prop :=
  ∀ n, P17953795425290103002.a n = A059269 (n + 1)

end A059269

/-!
# A059270: a(n) is both the sum of n+1 consecutive integers and the sum of the n immediately higher consecutive integers.

The programs for A059270, the canonical program `A059270.P10030755250085824300` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059270 has offset 0).

The definition of A059270 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059270.P4437397527253148931

`n*(n+1)*(2*n+1)/2`
-/

namespace A059270.P4437397527253148931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (2 * n + 1) : ℚ) / 2

end

end A059270.P4437397527253148931

namespace A059270

/-- `n*(n+1)*(2*n+1)/2` -/
def P4437397527253148931.Spec : Prop :=
  ∀ n, P4437397527253148931.a n = (A059270 n : ℚ)

theorem P4437397527253148931.correct : P4437397527253148931.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A059270, Nat.add_sub_cancel, A059270.P4437397527253148931.a, A059270.P10030755250085824300.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A059270, Nat.add_sub_cancel, A059270.P4437397527253148931.a, A059270.P10030755250085824300.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A059270

/-! ## A059270.P10030755250085824300

`3*a(n-1)-3*a(n-2)+a(n-3)+6` with `a(0)=0, a(1)=3, a(2)=15`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059270

/-- `3*a(n-1)-3*a(n-2)+a(n-3)+6` -/
def P10030755250085824300.Spec : Prop :=
  ∀ n, P10030755250085824300.a n = A059270 n

theorem P10030755250085824300.correct : P10030755250085824300.Spec := by
  intro n
  simp only [A059270]

end A059270

/-! ## A059270.P10825405776132772265

`A000330(n)*3`
-/

namespace A059270.P10825405776132772265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n * 3

end

end A059270.P10825405776132772265

namespace A059270

/-- `A000330(n)*3` -/
def P10825405776132772265.Spec : Prop :=
  ∀ n, P10825405776132772265.a n = A059270 n

end A059270

/-! ## A059270.P3813224520509983839

`n^3+n²+A000217(n)`
-/

namespace A059270.P3813224520509983839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 + n ^ 2 : ℤ) + A000217 n

end

end A059270.P3813224520509983839

namespace A059270

/-- `n^3+n²+A000217(n)` -/
def P3813224520509983839.Spec : Prop :=
  ∀ n, P3813224520509983839.a n = A059270 n

end A059270

/-! ## A059270.P4902026783102997395

`a(n-1)+3*A000290(n)` with `a(0)=0`
-/

namespace A059270.P4902026783102997395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 3 * A000290 n

end

end A059270.P4902026783102997395

namespace A059270

/-- `a(n-1)+3*A000290(n)` -/
def P4902026783102997395.Spec : Prop :=
  ∀ n, P4902026783102997395.a n = A059270 n

end A059270

/-! ## A059270.P14981307977535052083

`A005408(n)*A000217(n)`
-/

namespace A059270.P14981307977535052083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A000217 n

end

end A059270.P14981307977535052083

namespace A059270

/-- `A005408(n)*A000217(n)` -/
def P14981307977535052083.Spec : Prop :=
  ∀ n, P14981307977535052083.a n = A059270 n

end A059270

/-! ## A059270.P14598526892098796715

`A000578(n+1)-A000326(n+1)`
-/

namespace A059270.P14598526892098796715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) - A000326 (n + 1)

end

end A059270.P14598526892098796715

namespace A059270

/-- `A000578(n+1)-A000326(n+1)` -/
def P14598526892098796715.Spec : Prop :=
  ∀ n, P14598526892098796715.a n = A059270 n

end A059270

/-! ## A059270.P14405199894606879397

`lcm(∑[n], Δ[n²])`
-/

namespace A059270.P14405199894606879397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A059270.P14405199894606879397

namespace A059270

/-- `lcm(∑[n], Δ[n²])` -/
def P14405199894606879397.Spec : Prop :=
  ∀ n, (P14405199894606879397.a n : ℤ) = A059270 n

end A059270

/-! ## A059270.P7283561284659640339

`Δ[C(n², 2)/2]`
-/

namespace A059270.P7283561284659640339
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2) 2 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059270.P7283561284659640339

namespace A059270

/-- `Δ[C(n², 2)/2]` -/
def P7283561284659640339.Spec : Prop :=
  ∀ n, P7283561284659640339.a n = (A059270 n : ℚ)

end A059270

/-! ## A059270.P1333354578727743296

`a(n-1)+3*n²` with `a(0)=0`
-/

namespace A059270.P1333354578727743296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 3 * n ^ 2

end

end A059270.P1333354578727743296

namespace A059270

/-- `a(n-1)+3*n²` -/
def P1333354578727743296.Spec : Prop :=
  ∀ n, (P1333354578727743296.a n : ℤ) = A059270 n

end A059270

/-! ## A059270.P12723374361667999745

`(2*n+1)*C(n+1, 2)`
-/

namespace A059270.P12723374361667999745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.choose (n + 1) 2

end

end A059270.P12723374361667999745

namespace A059270

/-- `(2*n+1)*C(n+1, 2)` -/
def P12723374361667999745.Spec : Prop :=
  ∀ n, (P12723374361667999745.a n : ℤ) = A059270 n

end A059270

/-! ## A059270.P11736315017146308570

`1/2*A055112(n)`
-/

namespace A059270.P11736315017146308570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A055112 n : ℚ)

end

end A059270.P11736315017146308570

namespace A059270

/-- `1/2*A055112(n)` -/
def P11736315017146308570.Spec : Prop :=
  ∀ n, P11736315017146308570.a n = (A059270 n : ℚ)

end A059270

/-!
# A059271: Transform of A059226 applied to sequence 0, 1, 0, 0, 0, 0, ...

The programs for A059271, there is no canonical definition to state claims against.
-/

/-! ## A059271.P3687087725493740424

`A066490(2*(A129331(n)+1))`
-/

namespace A059271.P3687087725493740424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066490 (2 * (A129331 n + 1)).toNat

end

end A059271.P3687087725493740424

/-! ## A059271.P4681231161550816781

`A056812(or(n+1, A078531(n)))`
-/

namespace A059271.P4681231161550816781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056812 (Int.lor (n + 1 : ℤ) (A078531 n)).toNat

end

end A059271.P4681231161550816781

/-!
# A059272: G.f. is g.f. for A059271 divided by g.f. for A059227.

The programs for A059272, there is no canonical definition to state claims against.
-/

/-! ## A059272.P10844347185624884625

`A059226(A347553(n+3))/2`
-/

namespace A059272.P10844347185624884625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059226 (A347553 (n + 3)).toNat : ℚ) / 2

end

end A059272.P10844347185624884625

/-! ## A059272.P10425075238887488709

`floor((A178334(n)+A059227(n))/2)`
-/

namespace A059272.P10425075238887488709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A178334 n + A059227 n : ℚ) / 2⌋

end

end A059272.P10425075238887488709

/-! ## A059272.P2622620842296328685

`ceil(A059226(A000096(n))*A178334(n)/2)`
-/

namespace A059272.P2622620842296328685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A059226 (A000096 n).toNat * A178334 n : ℚ) / 2⌉

end

end A059272.P2622620842296328685

/-! ## A059272.P10948350353759803630

`floor(A059227(n)*A115017(A014688(n+1)-(n+1))/2)`
-/

namespace A059272.P10948350353759803630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A059227 n * A115017 (A014688 (n + 1) - (n + 1 : ℤ)).toNat : ℚ) / 2⌋

end

end A059272.P10948350353759803630

/-! ## A059272.P10136921335982871091

`Δ[A059227(n)]%Δ[A059271(n)]`
-/

namespace A059272.P10136921335982871091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059227 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (f2 (n + 1) - f2 n)

end

end A059272.P10136921335982871091

/-!
# A059273: Transform of A059226 applied to sequence 0, 0, 1, 0, 0, 0, 0, ...

The programs for A059273, there is no canonical definition to state claims against.
-/

/-! ## A059273.P64470129101609127

`A172387(n)-A003173(A172381(n))`
-/

namespace A059273.P64470129101609127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172387 n - A003173 (A172381 n).toNat

end

end A059273.P64470129101609127

/-! ## A059273.P5444139968676394545

`A206240(n)-A130255(A389937(n))`
-/

namespace A059273.P5444139968676394545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206240 n - A130255 (A389937 n).toNat

end

end A059273.P5444139968676394545

/-! ## A059273.P4891610550686564344

`A026261(A064856(n))-A003173(A172381(n))`
-/

namespace A059273.P4891610550686564344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026261 (A064856 n).toNat - A003173 (A172381 n).toNat

end

end A059273.P4891610550686564344

/-!
# A059275: Transform of A059226 applied to sequence 1, 1, 1, 1, 1, 1, 1, ...

The programs for A059275, there is no canonical definition to state claims against.
-/

/-! ## A059275.P1826670141900914713

`A059274(∑[n]+n)`
-/

namespace A059275.P1826670141900914713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059274 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A059275.P1826670141900914713

/-! ## A059275.P14433510173608197869

`record[A059274(A038722(n+1))]`
-/

namespace A059275.P14433510173608197869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059274 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059275.P14433510173608197869

/-! ## A059275.P6174653360777644864

`record[A059274(n)/A081577(n)]`
-/

namespace A059275.P6174653360777644864
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059274 n : ℚ) / (A081577 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059275.P6174653360777644864

/-! ## A059275.P5955327880987677380

`record[A059274(n)/A201641(n)]`
-/

namespace A059275.P5955327880987677380
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059274 n : ℚ) / (A201641 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059275.P5955327880987677380

/-! ## A059275.P16369325748984974138

`lcm((-1)^n, A059274(A000096(n)))`
-/

namespace A059275.P16369325748984974138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A059274 (A000096 n).toNat)

end

end A059275.P16369325748984974138

/-! ## A059275.P16951405584252549134

`record[A059274(n)/A059274(n+1)]`
-/

namespace A059275.P16951405584252549134
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059274 n : ℚ) / (A059274 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059275.P16951405584252549134

/-! ## A059275.P8382419108631438717

`record[gcd(A059274(n), A059299(n))]`
-/

namespace A059275.P8382419108631438717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059274 n) (A059299 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059275.P8382419108631438717

/-!
# A059276: Row sums of triangle in A059274.

The programs for A059276, there is no canonical definition to state claims against.
-/

/-! ## A059276.P17078463776345598441

`A184618(floor(8^n/floor(3/acot(n))))`
-/

namespace A059276.P17078463776345598441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184618 ⌊(8 ^ n : ℚ) / (⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ : ℚ)⌋.toNat

end

end A059276.P17078463776345598441

/-! ## A059276.P12620936602496660804

`A184620(floor(8^n/floor(3/acot(n))))`
-/

namespace A059276.P12620936602496660804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184620 ⌊(8 ^ n : ℚ) / (⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ : ℚ)⌋.toNat

end

end A059276.P12620936602496660804

/-!
# A059278: G.f. is G(x*(1-x)/(1-2*x)) where G(x) is g.f. for Catalan numbers A000108.

The programs for A059278, there is no canonical definition to state claims against.
-/

/-! ## A059278.P15995251938348570729

`2*A109033(n)-1`
-/

namespace A059278.P15995251938348570729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109033 n - 1

end

end A059278.P15995251938348570729

/-! ## A059278.P12481824695107418650

`∑[2*A109034(n)]-1`
-/

namespace A059278.P12481824695107418650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A059278.P12481824695107418650

/-! ## A059278.P16467734781366030780

`or(-1, A007094(n))+2*A109033(n)`
-/

namespace A059278.P16467734781366030780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-1) (A007094 n) + 2 * A109033 n

end

end A059278.P16467734781366030780

/-! ## A059278.P4628240773517624292

`A109033(A028310(n))-(1-A109033(n))`
-/

namespace A059278.P4628240773517624292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109033 (A028310 n).toNat - (1 - A109033 n)

end

end A059278.P4628240773517624292

/-! ## A059278.P7830475273919739884

`A008683(A020483(n))+2*A109033(n)`
-/

namespace A059278.P7830475273919739884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A020483 n).toNat + 2 * A109033 n

end

end A059278.P7830475273919739884

/-! ## A059278.P7983174759375854407

`A008683(A005382(n+1))+2*A109033(n)`
-/

namespace A059278.P7983174759375854407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005382 (n + 1)).toNat + 2 * A109033 n

end

end A059278.P7983174759375854407

/-! ## A059278.P16609456098713004359

`A008683(A051077(n+1))+2*A109033(n)`
-/

namespace A059278.P16609456098713004359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A051077 (n + 1)).toNat + 2 * A109033 n

end

end A059278.P16609456098713004359

/-! ## A059278.P7188816441170973601

`A008683(A069483(n+1))+2*A109033(n)`
-/

namespace A059278.P7188816441170973601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A069483 (n + 1)).toNat + 2 * A109033 n

end

end A059278.P7188816441170973601

/-! ## A059278.P17082029841132277589

`A008683(A002148(n))+2*A109033(n)`
-/

namespace A059278.P17082029841132277589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002148 n).toNat + 2 * A109033 n

end

end A059278.P17082029841132277589

/-!
# A059279: G.f. is ((1-x)/(1-2*x)) * G(x*(1-x)/(1-2*x)) where G(x) is g.f. for Catalan numbers A000108.

The programs for A059279, there is no canonical definition to state claims against.
-/

/-! ## A059279.P9787529110432166531

`2*a(n-1)+2*A109034(n)` with `a(0)=1`
-/

namespace A059279.P9787529110432166531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + 2 * A109034 n

end

end A059279.P9787529110432166531

/-! ## A059279.P16586242310229553269

`∑[A049206(A049189(n+1))+A049188(n+1)]`
-/

namespace A059279.P16586242310229553269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049206 (A049189 (n + 1)).toNat + A049188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059279.P16586242310229553269

/-! ## A059279.P12598336249941345375

`A071357(n)+A005555(A307573(n))`
-/

namespace A059279.P12598336249941345375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071357 n + A005555 (A307573 n).toNat

end

end A059279.P12598336249941345375

/-!
# A059281: E.g.f.: ((1-x)/(1-2*x)) * exp(x*(1-x)/(1-2*x)).

The programs for A059281, there is no canonical definition to state claims against.
-/

/-! ## A059281.P18352803159871619786

`∑[A328399(∏[A121153(n+1)])]`
-/

namespace A059281.P18352803159871619786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121153 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059281.P18352803159871619786

/-! ## A059281.P4324418594821319894

`∑[A328399(∏[A283984(n+1)])]`
-/

namespace A059281.P4324418594821319894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283984 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059281.P4324418594821319894

/-!
# A059282: Number of symmetric trivalent (or cubic) connected graphs on 2n nodes (the Foster census).

The programs for A059282, there is no canonical definition to state claims against.
-/

/-! ## A059282.P17596598204674268501

`or(A000007(A029397(n)), A091430(n+1))`
-/

namespace A059282.P17596598204674268501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A029397 n).toNat) (A091430 (n + 1))

end

end A059282.P17596598204674268501

/-! ## A059282.P3214901288322350561

`A091430(n+1)+A000007(A091430(n+1)+A029397(n))`
-/

namespace A059282.P3214901288322350561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091430 (n + 1) + A000007 (A091430 (n + 1) + A029397 n).toNat

end

end A059282.P3214901288322350561

/-! ## A059282.P15987147799844642385

`A091430(n+1)^A262876(A014473(n))`
-/

namespace A059282.P15987147799844642385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091430 (n + 1) : ℚ) ^ (A262876 (A014473 n).toNat : ℤ)

end

end A059282.P15987147799844642385

/-! ## A059282.P9859251778867505349

`A091430(n+1)^A298858(A255238(n))`
-/

namespace A059282.P9859251778867505349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091430 (n + 1) : ℚ) ^ (A298858 (A255238 n).toNat : ℤ)

end

end A059282.P9859251778867505349

/-! ## A059282.P3723537679349473994

`A091430(n+1)^A091435(A297595(n+1))`
-/

namespace A059282.P3723537679349473994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091430 (n + 1) : ℚ) ^ (A091435 (A297595 (n + 1)).toNat : ℤ)

end

end A059282.P3723537679349473994

/-!
# A059283: Triangle T(n,k) (0<= k <=n) read by rows. Left edge is 1, 0, 0, ... Otherwise each entry is sum of entry to left, entries immediately above it to left and right and entry directly above it 2 rows back.

The programs for A059283, there is no canonical definition to state claims against.
-/

/-! ## A059283.P11434339156005908183

`A117707(A236396(n+1))`
-/

namespace A059283.P11434339156005908183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A236396 (n + 1)).toNat

end

end A059283.P11434339156005908183

/-! ## A059283.P94173104782524171

`A032153(n)%A118042(A135313(n))`
-/

namespace A059283.P94173104782524171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032153 n) (A118042 (A135313 n).toNat)

end

end A059283.P94173104782524171

/-! ## A059283.P16006261670476779479

`A127321(lcm(A080513(n), A347010(n)))`
-/

namespace A059283.P16006261670476779479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (Int.lcm (A080513 n) (A347010 n))

end

end A059283.P16006261670476779479

/-! ## A059283.P11616969788008132618

`A000194(A326500(n)^A194841(n+1))`
-/

namespace A059283.P11616969788008132618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (SequenceMachineLib.roundAway ((A326500 n : ℚ) ^ (A194841 (n + 1) : ℤ))).toNat

end

end A059283.P11616969788008132618

/-!
# A059284: Right edge of triangle in A059283.

The programs for A059284, there is no canonical definition to state claims against.
-/

/-! ## A059284.P1849679816512698062

`A059283(∑[n]+n)`
-/

namespace A059284.P1849679816512698062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059283 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A059284.P1849679816512698062

/-! ## A059284.P17641188526572065675

`or(1, A059283(A000096(n)))`
-/

namespace A059284.P17641188526572065675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A059283 (A000096 n).toNat)

end

end A059284.P17641188526572065675

/-! ## A059284.P3459050671378269751

`lcm(A008836(n+1), A059283(A000096(n)))`
-/

namespace A059284.P3459050671378269751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A059283 (A000096 n).toNat)

end

end A059284.P3459050671378269751

/-! ## A059284.P15923978889020926278

`A059283(C(n+2, 2)-1)+A008683(A017137(n)-2)`
-/

namespace A059284.P15923978889020926278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059283 (Nat.choose (n + 2) 2 - 1) + A008683 (A017137 n - 2).toNat

end

end A059284.P15923978889020926278

/-! ## A059284.P18379144506757289331

`A059283(A000096(n))+A010057(A084696(n+1))`
-/

namespace A059284.P18379144506757289331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059283 (A000096 n).toNat + A010057 (A084696 (n + 1)).toNat

end

end A059284.P18379144506757289331

/-! ## A059284.P7834901648143418457

`char[A002262(n)]*A059283(A000096(n))`
-/

namespace A059284.P7834901648143418457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A059283 (A000096 n).toNat

end

end A059284.P7834901648143418457

/-!
# A059285: Hilbert's Hamiltonian walk projected onto the second diagonal: M'(3) (difference between sequences A059253 and A059252; their sum is A059261).

The programs for A059285, there is no canonical definition to state claims against.
-/

/-! ## A059285.P13242699110325470757

`A059253(n)-A059252(n)`
-/

namespace A059285.P13242699110325470757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 n - A059252 n

end

end A059285.P13242699110325470757

/-! ## A059285.P1519958044815127826

`A163360(n)-A163358(n)`
-/

namespace A059285.P1519958044815127826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163360 n - A163358 n

end

end A059285.P1519958044815127826

/-! ## A059285.P9428192954032731507

`A341121(n)-A341120(n)`
-/

namespace A059285.P9428192954032731507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341121 n - A341120 n

end

end A059285.P9428192954032731507

/-! ## A059285.P17954177366035685927

`A059253(n)-∑[A163539(n)]`
-/

namespace A059285.P17954177366035685927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163539 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059285.P17954177366035685927

/-! ## A059285.P942099538583763448

`∑[A163538(n)]-A059252(n)`
-/

namespace A059285.P942099538583763448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A059252 n

end

end A059285.P942099538583763448

/-! ## A059285.P13242483140716044598

`∑[A163538(n)-A163539(n)]`
-/

namespace A059285.P13242483140716044598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163538 n - A163539 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059285.P13242483140716044598

/-! ## A059285.P5066910758062028488

`2*A059253(n)-A059261(n)`
-/

namespace A059285.P5066910758062028488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059253 n - A059261 n

end

end A059285.P5066910758062028488

/-! ## A059285.P12679915682697256343

`A059261(n)-2*A059252(n)`
-/

namespace A059285.P12679915682697256343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059261 n - 2 * A059252 n

end

end A059285.P12679915682697256343

/-! ## A059285.P15737254903841313882

`A163364(n+1)-A163362(n+1)`
-/

namespace A059285.P15737254903841313882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163364 (n + 1) - A163362 (n + 1)

end

end A059285.P15737254903841313882

/-! ## A059285.P5459710375733563418

`A163529(A166044(n))-A059252(n)`
-/

namespace A059285.P5459710375733563418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 (A166044 n).toNat - A059252 n

end

end A059285.P5459710375733563418

/-! ## A059285.P1020527314464837204

`A163360(n)-A163908(A163355(n))`
-/

namespace A059285.P1020527314464837204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163360 n - A163908 (A163355 n).toNat

end

end A059285.P1020527314464837204

/-! ## A059285.P12441597343050169402

`xor(A059252(n), A059905(n))-A059252(n)`
-/

namespace A059285.P12441597343050169402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059252 n) (A059905 n) - A059252 n

end

end A059285.P12441597343050169402

/-! ## A059285.P10953564145312023868

`A059253(n)-xor(A059253(n), A059905(n))`
-/

namespace A059285.P10953564145312023868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 n - Int.xor (A059253 n) (A059905 n)

end

end A059285.P10953564145312023868

/-! ## A059285.P16930328514677239858

`A283316(n+1)+A059253(n)-A341120(n)`
-/

namespace A059285.P16930328514677239858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283316 (n + 1) + (A059253 n - A341120 n)

end

end A059285.P16930328514677239858

/-! ## A059285.P7143772151104902329

`A341121(n)-(A283316(n+1)+A059252(n))`
-/

namespace A059285.P7143772151104902329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341121 n - (A283316 (n + 1) + A059252 n)

end

end A059285.P7143772151104902329

/-! ## A059285.P9694098530246272694

`A059905(A163356(n))-A059252(n)`
-/

namespace A059285.P9694098530246272694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A163356 n).toNat - A059252 n

end

end A059285.P9694098530246272694

/-! ## A059285.P16525857911019996530

`A163360(n)-A054239(A163356(n))`
-/

namespace A059285.P16525857911019996530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163360 n - A054239 (A163356 n).toNat

end

end A059285.P16525857911019996530

/-! ## A059285.P3569607869398272512

`A114327(A163358(n))`
-/

namespace A059285.P3569607869398272512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (A163358 n).toNat

end

end A059285.P3569607869398272512

/-! ## A059285.P14105747149045864584

`-A114327(A163360(n))`
-/

namespace A059285.P14105747149045864584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A114327 (A163360 n).toNat

end

end A059285.P14105747149045864584

/-! ## A059285.P16883369543480804185

`A059253(n)-A025581(A163360(n))`
-/

namespace A059285.P16883369543480804185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 n - A025581 (A163360 n).toNat

end

end A059285.P16883369543480804185

/-!
# A059286: Triangle T(n,k) (0 <= k <= n) with e.g.f. exp(x*y/(1-y)).

The programs for A059286, there is no canonical definition to state claims against.
-/

/-! ## A059286.P16023322265404973092

`A247245(n+1)%(∏{e}[A146523(n), A096465(#)]+1)`
-/

namespace A059286.P16023322265404973092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247245 (n + 1)) (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A096465 (Nat.factorization (f1 n).natAbs p) + 1)

end

end A059286.P16023322265404973092

/-!
# A059287: Primes p such that x^16 = 2 has no solution mod p, but x^8 = 2 has a solution mod p.

The programs for A059287, there is no canonical definition to state claims against.
-/

/-! ## A059287.P3192053978564069696

`∩[A045315(n+1), A070181(n+1)]`
-/

namespace A059287.P3192053978564069696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059287.P3192053978564069696

/-! ## A059287.P5877352869390316119

`∩[A070181(n+1), A070184(n+1)]`
-/

namespace A059287.P5877352869390316119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059287.P5877352869390316119

/-! ## A059287.P2220642730134448624

`∩[A070181(n+1), A252279(n+1)]`
-/

namespace A059287.P2220642730134448624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059287.P2220642730134448624

/-!
# A059288: a(n) = binomial(2*n,n) mod n.

The programs for A059288, the canonical program `A059288.P9445765243602031720` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059288 has offset 1).

The definition of A059288 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059288.P9445765243602031720

`C(2*(n+1), n+1)%(n+1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059288

/-- `C(2*(n+1), n+1)%(n+1)` -/
def P9445765243602031720.Spec : Prop :=
  ∀ n, (P9445765243602031720.a n : ℤ) = A059288 (n + 1)

theorem P9445765243602031720.correct : P9445765243602031720.Spec := by
  intro n
  simp only [A059288, Nat.add_sub_cancel]

end A059288

/-! ## A059288.P13176213030936718163

`A059289(n+1)-1`
-/

namespace A059288.P13176213030936718163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059289 (n + 1) - 1

end

end A059288.P13176213030936718163

namespace A059288

/-- `A059289(n+1)-1` -/
def P13176213030936718163.Spec : Prop :=
  ∀ n, P13176213030936718163.a n = A059288 (n + 1)

end A059288

/-! ## A059288.P14597858446208737934

`A053214(n+1)%(n+1)`
-/

namespace A059288.P14597858446208737934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053214 (n + 1)) (n + 1 : ℤ)

end

end A059288.P14597858446208737934

namespace A059288

/-- `A053214(n+1)%(n+1)` -/
def P14597858446208737934.Spec : Prop :=
  ∀ n, P14597858446208737934.a n = A059288 (n + 1)

end A059288

/-! ## A059288.P9916518783351603351

`A042970(2*(n+1))%(n+1)`
-/

namespace A059288.P9916518783351603351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A042970 (2 * (n + 1))) (n + 1 : ℤ)

end

end A059288.P9916518783351603351

namespace A059288

/-- `A042970(2*(n+1))%(n+1)` -/
def P9916518783351603351.Spec : Prop :=
  ∀ n, P9916518783351603351.a n = A059288 (n + 1)

end A059288

/-! ## A059288.P2333516423593962375

`(2*A099905(n+1))%(n+1)`
-/

namespace A059288.P2333516423593962375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A099905 (n + 1)) (n + 1 : ℤ)

end

end A059288.P2333516423593962375

namespace A059288

/-- `(2*A099905(n+1))%(n+1)` -/
def P2333516423593962375.Spec : Prop :=
  ∀ n, P2333516423593962375.a n = A059288 (n + 1)

end A059288

/-! ## A059288.P7552001434842544248

`(2*A099907(n+1))%(n+1)`
-/

namespace A059288.P7552001434842544248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A099907 (n + 1)) (n + 1 : ℤ)

end

end A059288.P7552001434842544248

namespace A059288

/-- `(2*A099907(n+1))%(n+1)` -/
def P7552001434842544248.Spec : Prop :=
  ∀ n, P7552001434842544248.a n = A059288 (n + 1)

end A059288

/-! ## A059288.P6667582842905046233

`(2*A099908(n+1))%(n+1)`
-/

namespace A059288.P6667582842905046233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A099908 (n + 1)) (n + 1 : ℤ)

end

end A059288.P6667582842905046233

namespace A059288

/-- `(2*A099908(n+1))%(n+1)` -/
def P6667582842905046233.Spec : Prop :=
  ∀ n, P6667582842905046233.a n = A059288 (n + 1)

end A059288

/-! ## A059288.P11236856019761800892

`A070198(n)%A059289(n+1)`
-/

namespace A059288.P11236856019761800892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A059289 (n + 1))

end

end A059288.P11236856019761800892

namespace A059288

/-- `A070198(n)%A059289(n+1)` -/
def P11236856019761800892.Spec : Prop :=
  ∀ n, P11236856019761800892.a n = A059288 (n + 1)

end A059288

/-! ## A059288.P2025196175620964719

`A079782(n+1)%A059289(n+1)`
-/

namespace A059288.P2025196175620964719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A059289 (n + 1))

end

end A059288.P2025196175620964719

namespace A059288

/-- `A079782(n+1)%A059289(n+1)` -/
def P2025196175620964719.Spec : Prop :=
  ∀ n, P2025196175620964719.a n = A059288 (n + 1)

end A059288

/-! ## A059288.P17013581732448636046

`A083685(n+1)%A059289(n+1)`
-/

namespace A059288.P17013581732448636046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A059289 (n + 1))

end

end A059288.P17013581732448636046

namespace A059288

/-- `A083685(n+1)%A059289(n+1)` -/
def P17013581732448636046.Spec : Prop :=
  ∀ n, P17013581732448636046.a n = A059288 (n + 1)

end A059288

/-! ## A059288.P14719754664790996566

`A121934(n+1)%A059289(n+1)`
-/

namespace A059288.P14719754664790996566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A059289 (n + 1))

end

end A059288.P14719754664790996566

namespace A059288

/-- `A121934(n+1)%A059289(n+1)` -/
def P14719754664790996566.Spec : Prop :=
  ∀ n, P14719754664790996566.a n = A059288 (n + 1)

end A059288

/-! ## A059288.P8617584868199527898

`A000108(n+1)%(n+1)`
-/

namespace A059288.P8617584868199527898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 (n + 1)) (n + 1 : ℤ)

end

end A059288.P8617584868199527898

namespace A059288

/-- `A000108(n+1)%(n+1)` -/
def P8617584868199527898.Spec : Prop :=
  ∀ n, P8617584868199527898.a n = A059288 (n + 1)

end A059288

/-! ## A059288.P2483281546496585128

`A246604(n+1)%(n+1)`
-/

namespace A059288.P2483281546496585128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246604 (n + 1)) (n + 1 : ℤ)

end

end A059288.P2483281546496585128

namespace A059288

/-- `A246604(n+1)%(n+1)` -/
def P2483281546496585128.Spec : Prop :=
  ∀ n, P2483281546496585128.a n = A059288 (n + 1)

end A059288

/-! ## A059288.P16338860573316330114

`A024498(n+1)%(n+2)`
-/

namespace A059288.P16338860573316330114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024498 (n + 1)) (n + 2 : ℤ)

end

end A059288.P16338860573316330114

namespace A059288

/-- `A024498(n+1)%(n+2)` -/
def P16338860573316330114.Spec : Prop :=
  ∀ n, P16338860573316330114.a n = A059288 (n + 1)

end A059288

/-! ## A059288.P17896740713995076595

`A120588(n+2)%(n+1)`
-/

namespace A059288.P17896740713995076595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120588 (n + 2)) (n + 1 : ℤ)

end

end A059288.P17896740713995076595

namespace A059288

/-- `A120588(n+2)%(n+1)` -/
def P17896740713995076595.Spec : Prop :=
  ∀ n, P17896740713995076595.a n = A059288 (n + 1)

end A059288

/-! ## A059288.P10255295183936413712

`A026008(2*n)%(n+1)`
-/

namespace A059288.P10255295183936413712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026008 (2 * n)) (n + 1 : ℤ)

end

end A059288.P10255295183936413712

namespace A059288

/-- `A026008(2*n)%(n+1)` -/
def P10255295183936413712.Spec : Prop :=
  ∀ n, P10255295183936413712.a n = A059288 (n + 1)

end A059288

/-! ## A059288.P4627878989480361950

`A208355(2*(n+1))%(n+1)`
-/

namespace A059288.P4627878989480361950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208355 (2 * (n + 1))) (n + 1 : ℤ)

end

end A059288.P4627878989480361950

namespace A059288

/-- `A208355(2*(n+1))%(n+1)` -/
def P4627878989480361950.Spec : Prop :=
  ∀ n, P4627878989480361950.a n = A059288 (n + 1)

end A059288

/-! ## A059288.P4194022317350404253

`A000063(2*n+5)%(n+1)`
-/

namespace A059288.P4194022317350404253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000063 (2 * n + 5)) (n + 1 : ℤ)

end

end A059288.P4194022317350404253

namespace A059288

/-- `A000063(2*n+5)%(n+1)` -/
def P4194022317350404253.Spec : Prop :=
  ∀ n, P4194022317350404253.a n = A059288 (n + 1)

end A059288

/-! ## A059288.P1957160716335194504

`A061557(n+1)%(n+1)`
-/

namespace A059288.P1957160716335194504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061557 (n + 1)) (n + 1 : ℤ)

end

end A059288.P1957160716335194504

namespace A059288

/-- `A061557(n+1)%(n+1)` -/
def P1957160716335194504.Spec : Prop :=
  ∀ n, P1957160716335194504.a n = A059288 (n + 1)

end A059288

/-! ## A059288.P15294831919696428867

`A000782(n+2)%(n+1)`
-/

namespace A059288.P15294831919696428867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000782 (n + 2)) (n + 1 : ℤ)

end

end A059288.P15294831919696428867

namespace A059288

/-- `A000782(n+2)%(n+1)` -/
def P15294831919696428867.Spec : Prop :=
  ∀ n, P15294831919696428867.a n = A059288 (n + 1)

end A059288

/-!
# A059289: a(n) = 1 + (binomial(2n,n) mod n).

The programs for A059289, the canonical program `A059289.P8177985377882671958` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059289 has offset 1).

The definition of A059289 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059289.P8177985377882671958

`1+C(2*(n+1), n+1)%(n+1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059289

/-- `1+C(2*(n+1), n+1)%(n+1)` -/
def P8177985377882671958.Spec : Prop :=
  ∀ n, (P8177985377882671958.a n : ℤ) = A059289 (n + 1)

theorem P8177985377882671958.correct : P8177985377882671958.Spec := by
  intro n
  simp only [A059289, Nat.add_sub_cancel]

end A059289

/-! ## A059289.P8424593623092388927

`A059288(n+1)+1`
-/

namespace A059289.P8424593623092388927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059288 (n + 1) + 1

end

end A059289.P8424593623092388927

namespace A059289

/-- `A059288(n+1)+1` -/
def P8424593623092388927.Spec : Prop :=
  ∀ n, P8424593623092388927.a n = A059289 (n + 1)

end A059289

/-! ## A059289.P1222729333423612830

`A053214(n+1)%(n+1)+1`
-/

namespace A059289.P1222729333423612830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053214 (n + 1)) (n + 1 : ℤ) + 1

end

end A059289.P1222729333423612830

namespace A059289

/-- `A053214(n+1)%(n+1)+1` -/
def P1222729333423612830.Spec : Prop :=
  ∀ n, P1222729333423612830.a n = A059289 (n + 1)

end A059289

/-! ## A059289.P7098168988654326477

`A042970(2*(n+1))%(n+1)+1`
-/

namespace A059289.P7098168988654326477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A042970 (2 * (n + 1))) (n + 1 : ℤ) + 1

end

end A059289.P7098168988654326477

namespace A059289

/-- `A042970(2*(n+1))%(n+1)+1` -/
def P7098168988654326477.Spec : Prop :=
  ∀ n, P7098168988654326477.a n = A059289 (n + 1)

end A059289

/-! ## A059289.P7545944178995748266

`(2*A099907(n+1))%(n+1)+1`
-/

namespace A059289.P7545944178995748266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A099907 (n + 1)) (n + 1 : ℤ) + 1

end

end A059289.P7545944178995748266

namespace A059289

/-- `(2*A099907(n+1))%(n+1)+1` -/
def P7545944178995748266.Spec : Prop :=
  ∀ n, P7545944178995748266.a n = A059289 (n + 1)

end A059289

/-! ## A059289.P13396084918489397280

`(2*A099908(n+1))%(n+1)+1`
-/

namespace A059289.P13396084918489397280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A099908 (n + 1)) (n + 1 : ℤ) + 1

end

end A059289.P13396084918489397280

namespace A059289

/-- `(2*A099908(n+1))%(n+1)+1` -/
def P13396084918489397280.Spec : Prop :=
  ∀ n, P13396084918489397280.a n = A059289 (n + 1)

end A059289

/-! ## A059289.P12554230880336729652

`record[A126120(n)]%(n+1)+1`
-/

namespace A059289.P12554230880336729652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ) + 1

end

end A059289.P12554230880336729652

namespace A059289

/-- `record[A126120(n)]%(n+1)+1` -/
def P12554230880336729652.Spec : Prop :=
  ∀ n, P12554230880336729652.a n = A059289 (n + 1)

end A059289

/-! ## A059289.P2523642990023282683

`A000108(n+1)%(n+1)+1`
-/

namespace A059289.P2523642990023282683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 (n + 1)) (n + 1 : ℤ) + 1

end

end A059289.P2523642990023282683

namespace A059289

/-- `A000108(n+1)%(n+1)+1` -/
def P2523642990023282683.Spec : Prop :=
  ∀ n, P2523642990023282683.a n = A059289 (n + 1)

end A059289

/-! ## A059289.P18278525315125257916

`record[A099364(n)]%(n+1)+1`
-/

namespace A059289.P18278525315125257916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ) + 1

end

end A059289.P18278525315125257916

namespace A059289

/-- `record[A099364(n)]%(n+1)+1` -/
def P18278525315125257916.Spec : Prop :=
  ∀ n, P18278525315125257916.a n = A059289 (n + 1)

end A059289

/-! ## A059289.P1394826376364298328

`A061557(n+1)%(n+1)+1`
-/

namespace A059289.P1394826376364298328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061557 (n + 1)) (n + 1 : ℤ) + 1

end

end A059289.P1394826376364298328

namespace A059289

/-- `A061557(n+1)%(n+1)+1` -/
def P1394826376364298328.Spec : Prop :=
  ∀ n, P1394826376364298328.a n = A059289 (n + 1)

end A059289

/-! ## A059289.P1599069535536400788

`Δ[A000984(n)]%(n+1)+1`
-/

namespace A059289.P1599069535536400788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ) + 1

end

end A059289.P1599069535536400788

namespace A059289

/-- `Δ[A000984(n)]%(n+1)+1` -/
def P1599069535536400788.Spec : Prop :=
  ∀ n, P1599069535536400788.a n = A059289 (n + 1)

end A059289

/-! ## A059289.P172731461910716381

`A000984(n+1)%(n+1)+1`
-/

namespace A059289.P172731461910716381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000984 (n + 1)) (n + 1 : ℤ) + 1

end

end A059289.P172731461910716381

namespace A059289

/-- `A000984(n+1)%(n+1)+1` -/
def P172731461910716381.Spec : Prop :=
  ∀ n, P172731461910716381.a n = A059289 (n + 1)

end A059289

/-! ## A059289.P11432376885041163690

`(A030662(n+1)+1)%(n+1)+1`
-/

namespace A059289.P11432376885041163690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030662 (n + 1) + 1) (n + 1 : ℤ) + 1

end

end A059289.P11432376885041163690

namespace A059289

/-- `(A030662(n+1)+1)%(n+1)+1` -/
def P11432376885041163690.Spec : Prop :=
  ∀ n, P11432376885041163690.a n = A059289 (n + 1)

end A059289

/-! ## A059289.P12451366328128638262

`Δ[A028329(n)/2]%(n+1)+1`
-/

namespace A059289.P12451366328128638262
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028329 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)) (n + 1 : ℤ) + 1

end

end A059289.P12451366328128638262

namespace A059289

/-- `Δ[A028329(n)/2]%(n+1)+1` -/
def P12451366328128638262.Spec : Prop :=
  ∀ n, P12451366328128638262.a n = A059289 (n + 1)

end A059289

/-! ## A059289.P17735343986617396425

`Δ[C(2*n, n)]%(n+1)+1`
-/

namespace A059289.P17735343986617396425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (n + 1 : ℤ) + 1

end

end A059289.P17735343986617396425

namespace A059289

/-- `Δ[C(2*n, n)]%(n+1)+1` -/
def P17735343986617396425.Spec : Prop :=
  ∀ n, P17735343986617396425.a n = A059289 (n + 1)

end A059289

/-!
# A059290: a(n) = round(1/144*n^2*(n + 3)).

The programs for A059290, the canonical program `A059290.P17517036768283745247` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059290 has offset 0).

The definition of A059290 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(1/144*n²*(n+3))` (program `A059290.P17517036768283745247`, by `A059290.P17517036768283745247.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A059290.P11099871888555438713

`round(n²*(n+3)/144)`
-/

namespace A059290.P11099871888555438713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 * (n + 3) : ℚ) / 144)

end

end A059290.P11099871888555438713

namespace A059290

/-- `round(n²*(n+3)/144)` -/
def P11099871888555438713.Spec : Prop :=
  ∀ n, P11099871888555438713.a n = A059290 n

theorem P11099871888555438713.correct : P11099871888555438713.Spec := by
  intro n
  simp only [A059290, Nat.add_sub_cancel, A059290.P11099871888555438713.a, A059290.P17517036768283745247.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A059290

/-! ## A059290.P17517036768283745247

`round(1/144*n²*(n+3))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059290

/-- `round(1/144*n²*(n+3))` -/
def P17517036768283745247.Spec : Prop :=
  ∀ n, P17517036768283745247.a n = A059290 n

theorem P17517036768283745247.correct : P17517036768283745247.Spec := by
  intro n
  simp only [A059290]

end A059290

/-! ## A059290.P3973004385695735337

`floor((11*n+9)^4/A076339(n*512+1))`
-/

namespace A059290.P3973004385695735337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((11 * n + 9) ^ 4 : ℚ) / (A076339 (n * 512 + 1) : ℚ)⌋

end

end A059290.P3973004385695735337

namespace A059290

/-- `floor((11*n+9)^4/A076339(n*512+1))` -/
def P3973004385695735337.Spec : Prop :=
  ∀ n, P3973004385695735337.a n = A059290 n

end A059290

/-! ## A059290.P10603689866564428794

`A031286(A274847(n+1))+A026810(n)`
-/

namespace A059290.P10603689866564428794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 (A274847 (n + 1)).toNat + A026810 n

end

end A059290.P10603689866564428794

namespace A059290

/-- `A031286(A274847(n+1))+A026810(n)` -/
def P10603689866564428794.Spec : Prop :=
  ∀ n, P10603689866564428794.a n = A059290 n

end A059290

/-!
# A059291: a(n) = round((n-1)^2*(n+5)/144).

The programs for A059291, the canonical program `A059291.P11290755705303199646` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059291 has offset 0).

The definition of A059291 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round((n-1)²*(n+5)/144)` (program `A059291.P11290755705303199646`, by `A059291.P11290755705303199646.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A059291.P11290755705303199646

`round((n-1)²*(n+5)/144)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059291

/-- `round((n-1)²*(n+5)/144)` -/
def P11290755705303199646.Spec : Prop :=
  ∀ n, P11290755705303199646.a n = A059291 n

theorem P11290755705303199646.correct : P11290755705303199646.Spec := by
  intro n
  simp only [A059291]

end A059291

/-! ## A059291.P6833789094906814214

`floor((∑[A011865(n+1)]+2)/4)`
-/

namespace A059291.P6833789094906814214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℤ) : ℚ) / 4⌋

end

end A059291.P6833789094906814214

namespace A059291

/-- `floor((∑[A011865(n+1)]+2)/4)` -/
def P6833789094906814214.Spec : Prop :=
  ∀ n, P6833789094906814214.a n = A059291 n

end A059291

/-! ## A059291.P13700148826472334249

`A347697(A006982(n))`
-/

namespace A059291.P13700148826472334249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A006982 n).toNat

end

end A059291.P13700148826472334249

namespace A059291

/-- `A347697(A006982(n))` -/
def P13700148826472334249.Spec : Prop :=
  ∀ n, P13700148826472334249.a n = A059291 n

end A059291

/-! ## A059291.P12327634945516859535

`A140473(A380371(n))`
-/

namespace A059291.P12327634945516859535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140473 (A380371 n).toNat

end

end A059291.P12327634945516859535

namespace A059291

/-- `A140473(A380371(n))` -/
def P12327634945516859535.Spec : Prop :=
  ∀ n, P12327634945516859535.a n = A059291 n

end A059291

/-!
# A059292: a(n) = n + 2 - (number of divisors of n).

The programs for A059292, the canonical program `A059292.P13391037705740320393` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059292 has offset 1).

The definition of A059292 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049820, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A059292.P13391037705740320393

`A049820(n+1)+2`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A059292

/-- `A049820(n+1)+2` -/
def P13391037705740320393.Spec : Prop :=
  ∀ n, P13391037705740320393.a n = A059292 (n + 1)

theorem P13391037705740320393.correct : P13391037705740320393.Spec := by
  intro n
  simp only [A059292, Nat.add_sub_cancel]

end A059292

/-! ## A059292.P4284029996255497779

`n+3-A000005(n+1)`
-/

namespace A059292.P4284029996255497779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A000005 (n + 1)

end

end A059292.P4284029996255497779

namespace A059292

/-- `n+3-A000005(n+1)` -/
def P4284029996255497779.Spec : Prop :=
  ∀ n, P4284029996255497779.a n = A059292 (n + 1)

end A059292

/-! ## A059292.P9338650735663313552

`n+3-∏{e}[n+1, #+1]`
-/

namespace A059292.P9338650735663313552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A059292.P9338650735663313552

namespace A059292

/-- `n+3-∏{e}[n+1, #+1]` -/
def P9338650735663313552.Spec : Prop :=
  ∀ n, P9338650735663313552.a n = A059292 (n + 1)

end A059292

/-! ## A059292.P12101533404817893459

`n+3-∑{d}[n+1, gcd(n, #)]`
-/

namespace A059292.P12101533404817893459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℤ)

end

end A059292.P12101533404817893459

namespace A059292

/-- `n+3-∑{d}[n+1, gcd(n, #)]` -/
def P12101533404817893459.Spec : Prop :=
  ∀ n, P12101533404817893459.a n = A059292 (n + 1)

end A059292

/-! ## A059292.P18442001155273540938

`∑{d}[n+1, or(#, -1)]+n+3`
-/

namespace A059292.P18442001155273540938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.lor (d : ℤ) (-1) + (n + 3 : ℤ)

end

end A059292.P18442001155273540938

namespace A059292

/-- `∑{d}[n+1, or(#, -1)]+n+3` -/
def P18442001155273540938.Spec : Prop :=
  ∀ n, P18442001155273540938.a n = A059292 (n + 1)

end A059292

/-! ## A059292.P7659622111743394400

`n+3-∑{d}[n+1, ceil(1/#)]`
-/

namespace A059292.P7659622111743394400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - ∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉

end

end A059292.P7659622111743394400

namespace A059292

/-- `n+3-∑{d}[n+1, ceil(1/#)]` -/
def P7659622111743394400.Spec : Prop :=
  ∀ n, P7659622111743394400.a n = A059292 (n + 1)

end A059292

/-! ## A059292.P5015310273053185803

`n-∑{d}[n+1, n²%#]+2`
-/

namespace A059292.P5015310273053185803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), n ^ 2 % d : ℕ) : ℤ) + 2

end

end A059292.P5015310273053185803

namespace A059292

/-- `n-∑{d}[n+1, n²%#]+2` -/
def P5015310273053185803.Spec : Prop :=
  ∀ n, P5015310273053185803.a n = A059292 (n + 1)

end A059292

/-! ## A059292.P6408618448598890439

`A062968(n+1)+1`
-/

namespace A059292.P6408618448598890439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062968 (n + 1) + 1

end

end A059292.P6408618448598890439

namespace A059292

/-- `A062968(n+1)+1` -/
def P6408618448598890439.Spec : Prop :=
  ∀ n, P6408618448598890439.a n = A059292 (n + 1)

end A059292

/-! ## A059292.P4900470427383614814

`3-Δ[A006218(n)]+n`
-/

namespace A059292.P4900470427383614814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A059292.P4900470427383614814

namespace A059292

/-- `3-Δ[A006218(n)]+n` -/
def P4900470427383614814.Spec : Prop :=
  ∀ n, P4900470427383614814.a n = A059292 (n + 1)

end A059292

/-! ## A059292.P6590896763809670728

`n+3-Δ[A054519(n)]`
-/

namespace A059292.P6590896763809670728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (f1 (n + 1) - f1 n)

end

end A059292.P6590896763809670728

namespace A059292

/-- `n+3-Δ[A054519(n)]` -/
def P6590896763809670728.Spec : Prop :=
  ∀ n, P6590896763809670728.a n = A059292 (n + 1)

end A059292

/-! ## A059292.P13443222416492221939

`A378216(n+1)+1+n`
-/

namespace A059292.P13443222416492221939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378216 (n + 1) + 1 + (n : ℤ)

end

end A059292.P13443222416492221939

namespace A059292

/-- `A378216(n+1)+1+n` -/
def P13443222416492221939.Spec : Prop :=
  ∀ n, P13443222416492221939.a n = A059292 (n + 1)

end A059292

/-! ## A059292.P8395282661801981136

`A286002(n+1)+1-n`
-/

namespace A059292.P8395282661801981136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286002 (n + 1) + (1 - (n : ℤ))

end

end A059292.P8395282661801981136

namespace A059292

/-- `A286002(n+1)+1-n` -/
def P8395282661801981136.Spec : Prop :=
  ∀ n, P8395282661801981136.a n = A059292 (n + 1)

end A059292

/-! ## A059292.P13906000125032733131

`2-A032741(n+1)+n`
-/

namespace A059292.P13906000125032733131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A032741 (n + 1) + (n : ℤ)

end

end A059292.P13906000125032733131

namespace A059292

/-- `2-A032741(n+1)+n` -/
def P13906000125032733131.Spec : Prop :=
  ∀ n, P13906000125032733131.a n = A059292 (n + 1)

end A059292

/-! ## A059292.P16553243658650188635

`4-A334954(n+1)+n`
-/

namespace A059292.P16553243658650188635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A334954 (n + 1) + (n : ℤ)

end

end A059292.P16553243658650188635

namespace A059292

/-- `4-A334954(n+1)+n` -/
def P16553243658650188635.Spec : Prop :=
  ∀ n, P16553243658650188635.a n = A059292 (n + 1)

end A059292

/-! ## A059292.P13551284626886735782

`∑[1-A341062(n+1)]+2`
-/

namespace A059292.P13551284626886735782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A341062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A059292.P13551284626886735782

namespace A059292

/-- `∑[1-A341062(n+1)]+2` -/
def P13551284626886735782.Spec : Prop :=
  ∀ n, P13551284626886735782.a n = A059292 (n + 1)

end A059292

/-! ## A059292.P1871154003783075320

`2-log2(A100577(n+1))+n`
-/

namespace A059292.P1871154003783075320
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 - Real.logb 2 (A100577 (n + 1) : ℝ) + (n : ℝ)

end

end A059292.P1871154003783075320

namespace A059292

/-- `2-log2(A100577(n+1))+n` -/
def P1871154003783075320.Spec : Prop :=
  ∀ n, P1871154003783075320.a n = (A059292 (n + 1) : ℝ)

end A059292

/-! ## A059292.P9545842566891750198

`A069553(n+1)/(n+1)+1`
-/

namespace A059292.P9545842566891750198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069553 (n + 1) : ℚ) / (n + 1 : ℚ) + 1

end

end A059292.P9545842566891750198

namespace A059292

/-- `A069553(n+1)/(n+1)+1` -/
def P9545842566891750198.Spec : Prop :=
  ∀ n, P9545842566891750198.a n = (A059292 (n + 1) : ℚ)

end A059292

/-! ## A059292.P10682983679772098330

`n+2-A338117(2*(n+1))`
-/

namespace A059292.P10682983679772098330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A338117 (2 * (n + 1))

end

end A059292.P10682983679772098330

namespace A059292

/-- `n+2-A338117(2*(n+1))` -/
def P10682983679772098330.Spec : Prop :=
  ∀ n, P10682983679772098330.a n = A059292 (n + 1)

end A059292

/-! ## A059292.P10006579493413126576

`2*n+3-A158907(n+1)`
-/

namespace A059292.P10006579493413126576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A158907 (n + 1)

end

end A059292.P10006579493413126576

namespace A059292

/-- `2*n+3-A158907(n+1)` -/
def P10006579493413126576.Spec : Prop :=
  ∀ n, P10006579493413126576.a n = A059292 (n + 1)

end A059292

/-! ## A059292.P15346937775954651709

`∑{d}[n+1, A000010(#)-1]+2`
-/

namespace A059292.P15346937775954651709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 d - 1) + 2

end

end A059292.P15346937775954651709

namespace A059292

/-- `∑{d}[n+1, A000010(#)-1]+2` -/
def P15346937775954651709.Spec : Prop :=
  ∀ n, P15346937775954651709.a n = A059292 (n + 1)

end A059292

/-!
# A059293: a(n) = round(n*(5*n - 14)/12) + 1.

The programs for A059293, the canonical program `A059293.P14947799454595105359` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059293 has offset 0).

The definition of A059293 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(n*(5*n-14)/12)+1` (program `A059293.P14947799454595105359`, by `A059293.P14947799454595105359.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A059293.P14947799454595105359

`round(n*(5*n-14)/12)+1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059293

/-- `round(n*(5*n-14)/12)+1` -/
def P14947799454595105359.Spec : Prop :=
  ∀ n, P14947799454595105359.a n = A059293 n

theorem P14947799454595105359.correct : P14947799454595105359.Spec := by
  intro n
  simp only [A059293]

end A059293

/-! ## A059293.P12681140013450043545

`Δ[∑[A002579(n+1)]-A001844(n)]`
-/

namespace A059293.P12681140013450043545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002579 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059293.P12681140013450043545

namespace A059293

/-- `Δ[∑[A002579(n+1)]-A001844(n)]` -/
def P12681140013450043545.Spec : Prop :=
  ∀ n, P12681140013450043545.a n = A059293 n

end A059293

/-! ## A059293.P8063502126801807424

`A002578(A233583(n+1)+C(2, n+2))`
-/

namespace A059293.P8063502126801807424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002578 (A233583 (n + 1) + (Nat.choose 2 (n + 2) : ℤ)).toNat

end

end A059293.P8063502126801807424

namespace A059293

/-- `A002578(A233583(n+1)+C(2, n+2))` -/
def P8063502126801807424.Spec : Prop :=
  ∀ n, P8063502126801807424.a n = A059293 n

end A059293

/-! ## A059293.P2855570730705653378

`A002578(A233583(n+1)+A000007(n))`
-/

namespace A059293.P2855570730705653378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002578 (A233583 (n + 1) + A000007 n).toNat

end

end A059293.P2855570730705653378

namespace A059293

/-- `A002578(A233583(n+1)+A000007(n))` -/
def P2855570730705653378.Spec : Prop :=
  ∀ n, P2855570730705653378.a n = A059293 n

end A059293

/-! ## A059293.P10614593261846209052

`A002578(A233583(n+1))^(A000225(n)%2)`
-/

namespace A059293.P10614593261846209052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002578 (A233583 (n + 1)).toNat : ℚ) ^ (Int.tmod (A000225 n) 2 : ℤ)

end

end A059293.P10614593261846209052

namespace A059293

/-- `A002578(A233583(n+1))^(A000225(n)%2)` -/
def P10614593261846209052.Spec : Prop :=
  ∀ n, P10614593261846209052.a n = (A059293 n : ℚ)

end A059293

/-!
# A059294: 2-boustrophedon transform applied to 1, 0, 0, 0, ...

The programs for A059294, there is no canonical definition to state claims against.
-/

/-! ## A059294.P18091531703595331659

`A106242(∑[n]+n)`
-/

namespace A059294.P18091531703595331659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106242 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A059294.P18091531703595331659

/-! ## A059294.P10437888682825707751

`or(1, A106242(A000096(n)))`
-/

namespace A059294.P10437888682825707751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A106242 (A000096 n).toNat)

end

end A059294.P10437888682825707751

/-! ## A059294.P10556238478555217954

`char[A004442(n)]*A106242(A000096(n))`
-/

namespace A059294.P10556238478555217954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A106242 (A000096 n).toNat

end

end A059294.P10556238478555217954

/-! ## A059294.P16439181207996836824

`C(A000010(n+1), n)!*A106242(A000096(n))`
-/

namespace A059294.P16439181207996836824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.choose (A000010 (n + 1)).toNat n) : ℤ) * A106242 (A000096 n).toNat

end

end A059294.P16439181207996836824

/-! ## A059294.P14916130611820320690

`A053164(A003056(n)+1)*A106242(A000096(n))`
-/

namespace A059294.P14916130611820320690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053164 (A003056 n + 1).toNat * A106242 (A000096 n).toNat

end

end A059294.P14916130611820320690

/-! ## A059294.P16598740286136203839

`A053164(A281379(n+1)+1)*A106242(A000096(n))`
-/

namespace A059294.P16598740286136203839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053164 (A281379 (n + 1) + 1).toNat * A106242 (A000096 n).toNat

end

end A059294.P16598740286136203839

/-! ## A059294.P11599490449783674129

`A053164(A281205(n+1)+1)*A106242(A000096(n))`
-/

namespace A059294.P11599490449783674129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053164 (A281205 (n + 1) + 1).toNat * A106242 (A000096 n).toNat

end

end A059294.P11599490449783674129

/-!
# A059295: 2-boustrophedon transform (see A059294) of 1, 1, 1, 1, ...

The programs for A059295, there is no canonical definition to state claims against.
-/

/-! ## A059295.P6683246413779170184

`A278496(a(n-1)²+n+1)` with `a(0)=1`
-/

namespace A059295.P6683246413779170184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A278496 (a (n - 1) ^ 2 + (n + 1 : ℤ)).toNat

end

end A059295.P6683246413779170184

/-! ## A059295.P15500766305281370862

`∑[A012884(A018078(n))]`
-/

namespace A059295.P15500766305281370862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012884 (A018078 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059295.P15500766305281370862

/-!
# A059296: 2-boustrophedon transform (see A059294) of 0, 1, 0, 0, 0, ...

The programs for A059296, there is no canonical definition to state claims against.
-/

/-! ## A059296.P4693738051276860282

`or(n, A110532(A207652(n)))`
-/

namespace A059296.P4693738051276860282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A110532 (A207652 n).toNat)

end

end A059296.P4693738051276860282

/-! ## A059296.P15704179131001378610

`A066888(n*A318230(n))`
-/

namespace A059296.P15704179131001378610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066888 ((n : ℤ) * A318230 n).toNat

end

end A059296.P15704179131001378610

/-!
# A059297: Triangle of idempotent numbers binomial(n,k)*k^(n-k), version 1.

The programs for A059297, the canonical program `A059297.P2013230887832402571` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059297 has offset 0).

The definition of A059297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3425 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059297.P2013230887832402571

`A004248(n)*A007318(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A059297

/-- `A004248(n)*A007318(n)` -/
def P2013230887832402571.Spec : Prop :=
  ∀ n, P2013230887832402571.a n = A059297 n

theorem P2013230887832402571.correct : P2013230887832402571.Spec := by
  intro n
  simp only [A059297]

end A059297

/-! ## A059297.P7465459753238555658

`A004248(n)*A091918(n)`
-/

namespace A059297.P7465459753238555658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 n * A091918 n

end

end A059297.P7465459753238555658

namespace A059297

/-- `A004248(n)*A091918(n)` -/
def P7465459753238555658.Spec : Prop :=
  ∀ n, P7465459753238555658.a n = A059297 n

end A059297

/-! ## A059297.P8676621905234208841

`A004248(n)*A132749(n)`
-/

namespace A059297.P8676621905234208841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 n * A132749 n

end

end A059297.P8676621905234208841

namespace A059297

/-- `A004248(n)*A132749(n)` -/
def P8676621905234208841.Spec : Prop :=
  ∀ n, P8676621905234208841.a n = A059297 n

end A059297

/-! ## A059297.P2099611902200754226

`A004248(n)*A135227(n)`
-/

namespace A059297.P2099611902200754226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 n * A135227 n

end

end A059297.P2099611902200754226

namespace A059297

/-- `A004248(n)*A135227(n)` -/
def P2099611902200754226.Spec : Prop :=
  ∀ n, P2099611902200754226.a n = A059297 n

end A059297

/-! ## A059297.P11707665845051528571

`A004248(n)*A183154(n)`
-/

namespace A059297.P11707665845051528571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 n * A183154 n

end

end A059297.P11707665845051528571

namespace A059297

/-- `A004248(n)*A183154(n)` -/
def P11707665845051528571.Spec : Prop :=
  ∀ n, P11707665845051528571.a n = A059297 n

end A059297

/-! ## A059297.P11815284475355144063

`A004248(n)*A206735(n)`
-/

namespace A059297.P11815284475355144063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 n * A206735 n

end

end A059297.P11815284475355144063

namespace A059297

/-- `A004248(n)*A206735(n)` -/
def P11815284475355144063.Spec : Prop :=
  ∀ n, P11815284475355144063.a n = A059297 n

end A059297

/-! ## A059297.P2792742332355046276

`(A003992(n)-A055651(n))*A007318(n)`
-/

namespace A059297.P2792742332355046276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003992 n - A055651 n) * A007318 n

end

end A059297.P2792742332355046276

namespace A059297

/-- `(A003992(n)-A055651(n))*A007318(n)` -/
def P2792742332355046276.Spec : Prop :=
  ∀ n, P2792742332355046276.a n = A059297 n

end A059297

/-! ## A059297.P7477381928362869042

`A002262(n)^A025581(n)*A007318(n)`
-/

namespace A059297.P7477381928362869042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n : ℚ) ^ (A025581 n : ℤ) * (A007318 n : ℚ)

end

end A059297.P7477381928362869042

namespace A059297

/-- `A002262(n)^A025581(n)*A007318(n)` -/
def P7477381928362869042.Spec : Prop :=
  ∀ n, P7477381928362869042.a n = (A059297 n : ℚ)

end A059297

/-! ## A059297.P13847521519150943846

`A059299(A061579(n))`
-/

namespace A059297.P13847521519150943846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059299 (A061579 n).toNat

end

end A059297.P13847521519150943846

namespace A059297

/-- `A059299(A061579(n))` -/
def P13847521519150943846.Spec : Prop :=
  ∀ n, P13847521519150943846.a n = A059297 n

end A059297

/-! ## A059297.P4039455299241558287

`A059299(A038722(n+1)-1)`
-/

namespace A059297.P4039455299241558287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059299 (A038722 (n + 1) - 1).toNat

end

end A059297.P4039455299241558287

namespace A059297

/-- `A059299(A038722(n+1)-1)` -/
def P4039455299241558287.Spec : Prop :=
  ∀ n, P4039455299241558287.a n = A059297 n

end A059297

/-! ## A059297.P7618457503471154494

`A059299(A038722(n+2))`
-/

namespace A059297.P7618457503471154494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059299 (A038722 (n + 2)).toNat

end

end A059297.P7618457503471154494

namespace A059297

/-- `A059299(A038722(n+2))` -/
def P7618457503471154494.Spec : Prop :=
  ∀ n, P7618457503471154494.a n = A059297 n

end A059297

/-!
# A059298: Triangle of idempotent numbers binomial(n,k)*k^(n-k), version 2.

The programs for A059298, the canonical program `A059298.P2758492723283308098` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059298 has offset 0).

The definition of A059298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059298.P5906437996805874457

`A059297(comp[∑[n]])`
-/

namespace A059298.P5906437996805874457
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059297 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A059298.P5906437996805874457

namespace A059298

/-- `A059297(comp[∑[n]])` -/
def P5906437996805874457.Spec : Prop :=
  ∀ n, P5906437996805874457.a n = A059298 n

end A059298

/-! ## A059298.P8280878497520723449

`A007318(n)*A089944(n)`
-/

namespace A059298.P8280878497520723449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A089944 n

end

end A059298.P8280878497520723449

namespace A059298

/-- `A007318(n)*A089944(n)` -/
def P8280878497520723449.Spec : Prop :=
  ∀ n, P8280878497520723449.a n = A059298 n

end A059298

/-! ## A059298.P2758492723283308098

`A009998(n)*A135278(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A059298

/-- `A009998(n)*A135278(n)` -/
def P2758492723283308098.Spec : Prop :=
  ∀ n, P2758492723283308098.a n = A059298 n

theorem P2758492723283308098.correct : P2758492723283308098.Spec := by
  intro n
  simp only [A059298]

end A059298

/-! ## A059298.P4464166814355778236

`A009998(n)*A074909(n+1)`
-/

namespace A059298.P4464166814355778236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 n * A074909 (n + 1)

end

end A059298.P4464166814355778236

namespace A059298

/-- `A009998(n)*A074909(n+1)` -/
def P4464166814355778236.Spec : Prop :=
  ∀ n, P4464166814355778236.a n = A059298 n

end A059298

/-! ## A059298.P15354809132024922077

`A009998(n)*A074909(n)*ratio[A074909(n)]`
-/

namespace A059298.P15354809132024922077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009998 n * A074909 n : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A059298.P15354809132024922077

namespace A059298

/-- `A009998(n)*A074909(n)*ratio[A074909(n)]` -/
def P15354809132024922077.Spec : Prop :=
  ∀ n, P15354809132024922077.a n = (A059298 n : ℚ)

end A059298

/-! ## A059298.P5415013289107335175

`A059300(A061579(n))`
-/

namespace A059298.P5415013289107335175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059300 (A061579 n).toNat

end

end A059298.P5415013289107335175

namespace A059298

/-- `A059300(A061579(n))` -/
def P5415013289107335175.Spec : Prop :=
  ∀ n, P5415013289107335175.a n = A059298 n

end A059298

/-! ## A059298.P3404380619102456390

`A059300(A038722(n+1)-1)`
-/

namespace A059298.P3404380619102456390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059300 (A038722 (n + 1) - 1).toNat

end

end A059298.P3404380619102456390

namespace A059298

/-- `A059300(A038722(n+1)-1)` -/
def P3404380619102456390.Spec : Prop :=
  ∀ n, P3404380619102456390.a n = A059298 n

end A059298

/-! ## A059298.P11283280280666659151

`A059300(A038722(n+2))`
-/

namespace A059298.P11283280280666659151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059300 (A038722 (n + 2)).toNat

end

end A059298.P11283280280666659151

namespace A059298

/-- `A059300(A038722(n+2))` -/
def P11283280280666659151.Spec : Prop :=
  ∀ n, P11283280280666659151.a n = A059298 n

end A059298

/-! ## A059298.P6159524002384990850

`A199673(n+1)/A166350(n+1)`
-/

namespace A059298.P6159524002384990850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199673 (n + 1) : ℚ) / (A166350 (n + 1) : ℚ)

end

end A059298.P6159524002384990850

namespace A059298

/-- `A199673(n+1)/A166350(n+1)` -/
def P6159524002384990850.Spec : Prop :=
  ∀ n, P6159524002384990850.a n = (A059298 n : ℚ)

end A059298

/-! ## A059298.P4192816794288311710

`A059299(A380649(n+1))`
-/

namespace A059298.P4192816794288311710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059299 (A380649 (n + 1)).toNat

end

end A059298.P4192816794288311710

namespace A059298

/-- `A059299(A380649(n+1))` -/
def P4192816794288311710.Spec : Prop :=
  ∀ n, P4192816794288311710.a n = A059298 n

end A059298

/-!
# A059299: Triangle of idempotent numbers (version 3), T(n, k) = binomial(n, k) * (n - k)^k.

The programs for A059299, the canonical program `A059299.P9005971410581366406` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059299 has offset 0).

The definition of A059299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3458 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059299.P9005971410581366406

`A003992(n)*A007318(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A059299

/-- `A003992(n)*A007318(n)` -/
def P9005971410581366406.Spec : Prop :=
  ∀ n, P9005971410581366406.a n = A059299 n

theorem P9005971410581366406.correct : P9005971410581366406.Spec := by
  intro n
  simp only [A059299]

end A059299

/-! ## A059299.P6200885042380316290

`A007318(n)*A004248(A061579(n))`
-/

namespace A059299.P6200885042380316290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A004248 (A061579 n).toNat

end

end A059299.P6200885042380316290

namespace A059299

/-- `A007318(n)*A004248(A061579(n))` -/
def P6200885042380316290.Spec : Prop :=
  ∀ n, P6200885042380316290.a n = A059299 n

end A059299

/-! ## A059299.P4005959513629984241

`(A055651(n)+A004248(n))*A007318(n)`
-/

namespace A059299.P4005959513629984241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055651 n + A004248 n) * A007318 n

end

end A059299.P4005959513629984241

namespace A059299

/-- `(A055651(n)+A004248(n))*A007318(n)` -/
def P4005959513629984241.Spec : Prop :=
  ∀ n, P4005959513629984241.a n = A059299 n

end A059299

/-! ## A059299.P9642553155607873278

`A059297(A061579(n))`
-/

namespace A059299.P9642553155607873278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059297 (A061579 n).toNat

end

end A059299.P9642553155607873278

namespace A059299

/-- `A059297(A061579(n))` -/
def P9642553155607873278.Spec : Prop :=
  ∀ n, P9642553155607873278.a n = A059299 n

end A059299

/-! ## A059299.P3543076169519910309

`A216255(n+1)/A002024(n+1)`
-/

namespace A059299.P3543076169519910309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216255 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)

end

end A059299.P3543076169519910309

namespace A059299

/-- `A216255(n+1)/A002024(n+1)` -/
def P3543076169519910309.Spec : Prop :=
  ∀ n, P3543076169519910309.a n = (A059299 n : ℚ)

end A059299

/-! ## A059299.P1772149977638840907

`A216255(n+1)/A183110(n+1)`
-/

namespace A059299.P1772149977638840907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216255 (n + 1) : ℚ) / (A183110 (n + 1) : ℚ)

end

end A059299.P1772149977638840907

namespace A059299

/-- `A216255(n+1)/A183110(n+1)` -/
def P1772149977638840907.Spec : Prop :=
  ∀ n, P1772149977638840907.a n = (A059299 n : ℚ)

end A059299

/-! ## A059299.P16229169969903674913

`A216255(n+1)/A376239(n+1)`
-/

namespace A059299.P16229169969903674913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216255 (n + 1) : ℚ) / (A376239 (n + 1) : ℚ)

end

end A059299.P16229169969903674913

namespace A059299

/-- `A216255(n+1)/A376239(n+1)` -/
def P16229169969903674913.Spec : Prop :=
  ∀ n, P16229169969903674913.a n = (A059299 n : ℚ)

end A059299

/-! ## A059299.P9153782379514257888

`A366230(n)/A213936(n+1)`
-/

namespace A059299.P9153782379514257888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366230 n : ℚ) / (A213936 (n + 1) : ℚ)

end

end A059299.P9153782379514257888

namespace A059299

/-- `A366230(n)/A213936(n+1)` -/
def P9153782379514257888.Spec : Prop :=
  ∀ n, P9153782379514257888.a n = (A059299 n : ℚ)

end A059299

