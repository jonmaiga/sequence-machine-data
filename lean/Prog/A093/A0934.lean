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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A093406: a(n) = 4*a(n-1) - 6*a(n-2) + 4*a(n-3) + a(n-4).

The programs for A093406, the canonical program `A093406.P7933679172267748246` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093406 has offset 1).

The definition of A093406 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-6*a(n-2)+4*a(n-3)+a(n-4)` (program `A093406.P7933679172267748246`, by `A093406.P7933679172267748246.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093406.P13087518876145720482

`ogf((1-x+5x^2+x^3)/(1-4x+6x^2-4x^3-x^4))`
-/

namespace A093406.P13087518876145720482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 5, 1] [1, -4, 6, -4, -1] n

end

end A093406.P13087518876145720482

namespace A093406

/-- `ogf((1-x+5x^2+x^3)/(1-4x+6x^2-4x^3-x^4))` -/
def P13087518876145720482.Spec : Prop :=
  ∀ n, P13087518876145720482.a n = A093406 (n + 1)

end A093406

/-! ## A093406.P7933679172267748246

`4*a(n-1)-6*a(n-2)+4*a(n-3)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=11, a(3)=31`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A093406

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)+a(n-4)` -/
def P7933679172267748246.Spec : Prop :=
  ∀ n, P7933679172267748246.a n = A093406 (n + 1)

theorem P7933679172267748246.correct : P7933679172267748246.Spec := by
  intro n
  simp only [A093406, Nat.add_sub_cancel]

end A093406

/-! ## A093406.P16269587255306403057

`A097081(n+3)`
-/

namespace A093406.P16269587255306403057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097081 (n + 3)

end

end A093406.P16269587255306403057

namespace A093406

/-- `A097081(n+3)` -/
def P16269587255306403057.Spec : Prop :=
  ∀ n, P16269587255306403057.a n = A093406 (n + 1)

end A093406

/-! ## A093406.P17781024689468638287

`record[A097081(n)-char[1]]`
-/

namespace A093406.P17781024689468638287
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097081 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093406.P17781024689468638287

namespace A093406

/-- `record[A097081(n)-char[1]]` -/
def P17781024689468638287.Spec : Prop :=
  ∀ n, P17781024689468638287.a n = A093406 (n + 1)

end A093406

/-! ## A093406.P2636895943710647317

`record[A097081(A008611(n))]`
-/

namespace A093406.P2636895943710647317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097081 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093406.P2636895943710647317

namespace A093406

/-- `record[A097081(A008611(n))]` -/
def P2636895943710647317.Spec : Prop :=
  ∀ n, P2636895943710647317.a n = A093406 (n + 1)

end A093406

/-! ## A093406.P10779330369098750821

`record[A097081(A008612(n))]`
-/

namespace A093406.P10779330369098750821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097081 (A008612 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093406.P10779330369098750821

namespace A093406

/-- `record[A097081(A008612(n))]` -/
def P10779330369098750821.Spec : Prop :=
  ∀ n, P10779330369098750821.a n = A093406 (n + 1)

end A093406

/-! ## A093406.P11700093566953318977

`Δ[A119330(n+2)]`
-/

namespace A093406.P11700093566953318977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119330 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093406.P11700093566953318977

namespace A093406

/-- `Δ[A119330(n+2)]` -/
def P11700093566953318977.Spec : Prop :=
  ∀ n, P11700093566953318977.a n = A093406 (n + 1)

end A093406

/-! ## A093406.P9262689608949004451

`A119330(n+3)-A119330(n+2)`
-/

namespace A093406.P9262689608949004451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119330 (n + 3) - A119330 (n + 2)

end

end A093406.P9262689608949004451

namespace A093406

/-- `A119330(n+3)-A119330(n+2)` -/
def P9262689608949004451.Spec : Prop :=
  ∀ n, P9262689608949004451.a n = A093406 (n + 1)

end A093406

/-! ## A093406.P10536937024855383547

`record[A097081(A134478(n))]`
-/

namespace A093406.P10536937024855383547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097081 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093406.P10536937024855383547

namespace A093406

/-- `record[A097081(A134478(n))]` -/
def P10536937024855383547.Spec : Prop :=
  ∀ n, P10536937024855383547.a n = A093406 (n + 1)

end A093406

/-! ## A093406.P10099423110216387189

`record[A097081(A004788(n))]`
-/

namespace A093406.P10099423110216387189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097081 (A004788 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093406.P10099423110216387189

namespace A093406

/-- `record[A097081(A004788(n))]` -/
def P10099423110216387189.Spec : Prop :=
  ∀ n, P10099423110216387189.a n = A093406 (n + 1)

end A093406

/-!
# A093407: For p = prime(n), the least k such that p divides the numerator of a sum 1/k + 1/x1 +...+ 1/xm, where x1,...,xm (for any m) are distinct positive integers <= k.

The programs for A093407, there is no canonical definition to state claims against.
-/

/-! ## A093407.P13502477297430579770

`A054030(A323861(n+1)+A112868(2*(n+1)))`
-/

namespace A093407.P13502477297430579770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054030 (A323861 (n + 1) + A112868 (2 * (n + 1))).toNat

end

end A093407.P13502477297430579770

/-!
# A093411: Divide n by the largest factorial that divides it and repeat until an odd number is reached, which will be the result; a(0) = 0.

The programs for A093411, there is no canonical definition to state claims against.
-/

/-! ## A093411.P4860188676826539915

`n/A329379((2*n)%(n+1)+1)`
-/

namespace A093411.P4860188676826539915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A329379 (2 * n % (n + 1) + 1) : ℚ)

end

end A093411.P4860188676826539915

/-! ## A093411.P6337229242919652779

`n/A329379(A028310(n))`
-/

namespace A093411.P6337229242919652779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A329379 (A028310 n).toNat : ℚ)

end

end A093411.P6337229242919652779

/-! ## A093411.P10292629244799235659

`n/A329379(A065190(n+1))`
-/

namespace A093411.P10292629244799235659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A329379 (A065190 (n + 1)).toNat : ℚ)

end

end A093411.P10292629244799235659

/-! ## A093411.P13232917038688136118

`n/A329379(A000007(n)+n)`
-/

namespace A093411.P13232917038688136118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A329379 (A000007 n + (n : ℤ)).toNat : ℚ)

end

end A093411.P13232917038688136118

/-! ## A093411.P135406142930148350

`n/A329379(A065033(2*n))`
-/

namespace A093411.P135406142930148350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A329379 (A065033 (2 * n)).toNat : ℚ)

end

end A093411.P135406142930148350

/-! ## A093411.P511276949514799208

`n/A329379(A328613(n))`
-/

namespace A093411.P511276949514799208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A329379 (A328613 n).toNat : ℚ)

end

end A093411.P511276949514799208

/-! ## A093411.P2899349121338664229

`gcd(n, A109375(A142150(n)))`
-/

namespace A093411.P2899349121338664229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A109375 (A142150 n).toNat)

end

end A093411.P2899349121338664229

/-! ## A093411.P10440974223328634039

`A109375(A142150(n))+n*A059841(n+1)`
-/

namespace A093411.P10440974223328634039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109375 (A142150 n).toNat + (n : ℤ) * A059841 (n + 1)

end

end A093411.P10440974223328634039

/-! ## A093411.P640735086122789426

`2*n+A109375(A142150(n))-n*A134451(n)`
-/

namespace A093411.P640735086122789426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A109375 (A142150 n).toNat - (n : ℤ) * A134451 n)

end

end A093411.P640735086122789426

/-! ## A093411.P10998404139400986374

`lcm(A009001(n), A109375(A026741(n)))`
-/

namespace A093411.P10998404139400986374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A009001 n) (A109375 (A026741 n).toNat)

end

end A093411.P10998404139400986374

/-!
# A093412: Triangle read by rows: a(n, k) is the numerator of (n + (n-1) + ... + (n-k+1))/(1 + 2 + ... + k), 0 < k <= n.

The programs for A093412, there is no canonical definition to state claims against.
-/

/-! ## A093412.P16776160125884713887

`A167192(A341706(comp[∑[n]]+1))`
-/

namespace A093412.P16776160125884713887
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167192 (A341706 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)).toNat

end

end A093412.P16776160125884713887

/-! ## A093412.P3069306041588883767

`A112543(A185871(n+1)-A002262(n))`
-/

namespace A093412.P3069306041588883767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112543 (A185871 (n + 1) - A002262 n).toNat

end

end A093412.P3069306041588883767

/-! ## A093412.P17768845749762076787

`A217029(A185871(n+1)-A002262(n))`
-/

namespace A093412.P17768845749762076787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217029 (A185871 (n + 1) - A002262 n).toNat

end

end A093412.P17768845749762076787

/-! ## A093412.P12884308685581485716

`A125165(n)/gcd(A125165(n), A125233(n))`
-/

namespace A093412.P12884308685581485716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125165 n : ℚ) / (Int.gcd (A125165 n) (A125233 n) : ℚ)

end

end A093412.P12884308685581485716

/-! ## A093412.P14142263858807515034

`A119308(n)/gcd(A001263(n+1), A119308(n))`
-/

namespace A093412.P14142263858807515034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119308 n : ℚ) / (Int.gcd (A001263 (n + 1)) (A119308 n) : ℚ)

end

end A093412.P14142263858807515034

/-! ## A093412.P13286240018295708066

`A093415(n+1)/A001263(n+1)*A119308(n)`
-/

namespace A093412.P13286240018295708066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093415 (n + 1) : ℚ) / (A001263 (n + 1) : ℚ) * (A119308 n : ℚ)

end

end A093412.P13286240018295708066

/-! ## A093412.P4710448284692551227

`lcm(A108838(n+2), A119308(n))/A108838(n+2)`
-/

namespace A093412.P4710448284692551227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A108838 (n + 2)) (A119308 n) : ℚ) / (A108838 (n + 2) : ℚ)

end

end A093412.P4710448284692551227

/-! ## A093412.P2292968740261947639

`lcm(A070543(n+1), A141419(n+1))/A070543(n+1)`
-/

namespace A093412.P2292968740261947639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A070543 (n + 1)) (A141419 (n + 1)) : ℚ) / (A070543 (n + 1) : ℚ)

end

end A093412.P2292968740261947639

/-!
# A093413: Largest number in row n of A093412.

The programs for A093413, there is no canonical definition to state claims against.
-/

/-! ## A093413.P1113988542685011928

`A124741(2*n+3)+char[1]`
-/

namespace A093413.P1113988542685011928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (2 * n + 3) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A093413.P1113988542685011928

/-! ## A093413.P4078432008889185103

`A094727(A124741(2*n+3)+∑[n])`
-/

namespace A093413.P4078432008889185103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (A124741 (2 * n + 3) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A093413.P4078432008889185103

/-! ## A093413.P4789781825149463289

`A132440(∑[n])+A124741(2*n+3)`
-/

namespace A093413.P4789781825149463289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132440 (∑ j ∈ Finset.range (n + 1), f1 j) + A124741 (2 * n + 3)

end

end A093413.P4789781825149463289

/-! ## A093413.P12556894317045378111

`A124741(2*n+3)*A329684(n+1)`
-/

namespace A093413.P12556894317045378111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (2 * n + 3) * A329684 (n + 1)

end

end A093413.P12556894317045378111

/-! ## A093413.P5239248911778114109

`A124741(2*n+3)*A283149(n+5)`
-/

namespace A093413.P5239248911778114109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (2 * n + 3) * A283149 (n + 5)

end

end A093413.P5239248911778114109

/-! ## A093413.P1556618158687010603

`A000010(C(2, n)+1)*A124741(2*n+3)`
-/

namespace A093413.P1556618158687010603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.choose 2 n + 1) * A124741 (2 * n + 3)

end

end A093413.P1556618158687010603

/-!
# A093415: Triangle read by rows: a(n, k) is the denominator of (n + (n-1) + ... + (n-k+1))/(1 + 2 + ... + k), 0 < k <= n.

The programs for A093415, the canonical program `A093415.P9113600648614518425` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093415 has offset 1).

The definition of A093415 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093415.P9113600648614518425

`(col(n)+2)/gcd(2*(row(n)+1)+2, col(n)+2)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A093415

/-- `(col(n)+2)/gcd(2*(row(n)+1)+2, col(n)+2)` -/
def P9113600648614518425.Spec : Prop :=
  ∀ n, P9113600648614518425.a n = (A093415 (n + 1) : ℚ)

end A093415

/-! ## A093415.P2986559457080036298

`lcm(2, A112544(n+2))/2`
-/

namespace A093415.P2986559457080036298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A112544 (n + 2)) : ℚ) / 2

end

end A093415.P2986559457080036298

namespace A093415

/-- `lcm(2, A112544(n+2))/2` -/
def P2986559457080036298.Spec : Prop :=
  ∀ n, P2986559457080036298.a n = (A093415 (n + 1) : ℚ)

end A093415

/-! ## A093415.P7977461770862010638

`A026741(A112544(n+2))`
-/

namespace A093415.P7977461770862010638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A112544 (n + 2)).toNat

end

end A093415.P7977461770862010638

namespace A093415

/-- `A026741(A112544(n+2))` -/
def P7977461770862010638.Spec : Prop :=
  ∀ n, P7977461770862010638.a n = A093415 (n + 1)

end A093415

/-! ## A093415.P4140632980739584540

`A060819(2*A112544(n+2))`
-/

namespace A093415.P4140632980739584540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (2 * A112544 (n + 2)).toNat

end

end A093415.P4140632980739584540

namespace A093415

/-- `A060819(2*A112544(n+2))` -/
def P4140632980739584540.Spec : Prop :=
  ∀ n, P4140632980739584540.a n = A093415 (n + 1)

end A093415

/-! ## A093415.P14548195698642238458

`A006370(lcm(2, A112544(n+2)))`
-/

namespace A093415.P14548195698642238458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (Int.lcm 2 (A112544 (n + 2)))

end

end A093415.P14548195698642238458

namespace A093415

/-- `A006370(lcm(2, A112544(n+2)))` -/
def P14548195698642238458.Spec : Prop :=
  ∀ n, P14548195698642238458.a n = A093415 (n + 1)

end A093415

/-! ## A093415.P2364780845905650190

`A112544(A185871(n+1)-A002262(n))`
-/

namespace A093415.P2364780845905650190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112544 (A185871 (n + 1) - A002262 n).toNat

end

end A093415.P2364780845905650190

namespace A093415

/-- `A112544(A185871(n+1)-A002262(n))` -/
def P2364780845905650190.Spec : Prop :=
  ∀ n, P2364780845905650190.a n = A093415 (n + 1)

end A093415

/-! ## A093415.P9858529887982007793

`A026741(A002260(n+2)/A003989(n+2))`
-/

namespace A093415.P9858529887982007793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((A002260 (n + 2) : ℚ) / (A003989 (n + 2) : ℚ))).toNat

end

end A093415.P9858529887982007793

namespace A093415

/-- `A026741(A002260(n+2)/A003989(n+2))` -/
def P9858529887982007793.Spec : Prop :=
  ∀ n, P9858529887982007793.a n = A093415 (n + 1)

end A093415

/-! ## A093415.P5061014225468129025

`lcm(A001263(n+1), A119308(n))/A119308(n)`
-/

namespace A093415.P5061014225468129025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A001263 (n + 1)) (A119308 n) : ℚ) / (A119308 n : ℚ)

end

end A093415.P5061014225468129025

namespace A093415

/-- `lcm(A001263(n+1), A119308(n))/A119308(n)` -/
def P5061014225468129025.Spec : Prop :=
  ∀ n, P5061014225468129025.a n = (A093415 (n + 1) : ℚ)

end A093415

/-! ## A093415.P2948890939159093045

`A001263(n+1)/gcd(A108838(n+2), A119308(n))`
-/

namespace A093415.P2948890939159093045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) / (Int.gcd (A108838 (n + 2)) (A119308 n) : ℚ)

end

end A093415.P2948890939159093045

namespace A093415

/-- `A001263(n+1)/gcd(A108838(n+2), A119308(n))` -/
def P2948890939159093045.Spec : Prop :=
  ∀ n, P2948890939159093045.a n = (A093415 (n + 1) : ℚ)

end A093415

/-! ## A093415.P1402350979096064426

`A000120(A213243(A000120(A228035(n+1))))`
-/

namespace A093415.P1402350979096064426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A213243 (A000120 (A228035 (n + 1)).toNat).toNat).toNat

end

end A093415.P1402350979096064426

namespace A093415

/-- `A000120(A213243(A000120(A228035(n+1))))` -/
def P1402350979096064426.Spec : Prop :=
  ∀ n, P1402350979096064426.a n = A093415 (n + 1)

end A093415

/-!
# A093418: Numerator of -3*n + 2*(1+n)*HarmonicNumber(n).

The programs for A093418, there is no canonical definition to state claims against.
-/

/-! ## A093418.P4383949082052982455

`A115107(n)+n*A096620(n)`
-/

namespace A093418.P4383949082052982455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115107 n + (n : ℤ) * A096620 n

end

end A093418.P4383949082052982455

/-! ## A093418.P2965600509509015713

`(A160048(n+1)+A115107(n))/2`
-/

namespace A093418.P2965600509509015713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160048 (n + 1) + A115107 n : ℚ) / 2

end

end A093418.P2965600509509015713

/-! ## A093418.P5824037813685186736

`A160048(n+1)-n*A096620(n)`
-/

namespace A093418.P5824037813685186736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160048 (n + 1) - (n : ℤ) * A096620 n

end

end A093418.P5824037813685186736

/-! ## A093418.P7162321859335216427

`A160048(n+1)-n*A027611(n+1)/A043529(n)`
-/

namespace A093418.P7162321859335216427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160048 (n + 1) : ℚ) - (n : ℚ) * ((A027611 (n + 1) : ℚ) / (A043529 n : ℚ))

end

end A093418.P7162321859335216427

/-! ## A093418.P8025749247227427063

`A160048(n+1)-n*A027611(n+1)/gcd(2, A001405(n))`
-/

namespace A093418.P8025749247227427063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160048 (n + 1) : ℚ) - (n : ℚ) * ((A027611 (n + 1) : ℚ) / (Int.gcd 2 (A001405 n) : ℚ))

end

end A093418.P8025749247227427063

/-!
# A093419: Denominators of row sums in triangle described in A093412.

The programs for A093419, the canonical program `A093419.P5391515486937506102` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093419 has offset 1).

The definition of A093419 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093419.P17012037346722899092

`A096620(1+n)`
-/

namespace A093419.P17012037346722899092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096620 (1 + n)

end

end A093419.P17012037346722899092

namespace A093419

/-- `A096620(1+n)` -/
def P17012037346722899092.Spec : Prop :=
  ∀ n, P17012037346722899092.a n = A093419 (n + 1)

end A093419

/-! ## A093419.P8334573371632787167

`abs(Δ[-∑[A096620(n)]])`
-/

namespace A093419.P8334573371632787167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096620 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A093419.P8334573371632787167

namespace A093419

/-- `abs(Δ[-∑[A096620(n)]])` -/
def P8334573371632787167.Spec : Prop :=
  ∀ n, P8334573371632787167.a n = A093419 (n + 1)

end A093419

/-! ## A093419.P5391515486937506102

`lcm(2, A027611(n+2))/2`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A093419

/-- `lcm(2, A027611(n+2))/2` -/
def P5391515486937506102.Spec : Prop :=
  ∀ n, P5391515486937506102.a n = (A093419 (n + 1) : ℚ)

end A093419

/-! ## A093419.P7357268074029223521

`or(char[1], A096620(n-or(n, -1)))`
-/

namespace A093419.P7357268074029223521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A096620 ((n : ℤ) - Int.lor (n : ℤ) (-1)).toNat)

end

end A093419.P7357268074029223521

namespace A093419

/-- `or(char[1], A096620(n-or(n, -1)))` -/
def P7357268074029223521.Spec : Prop :=
  ∀ n, P7357268074029223521.a n = A093419 (n + 1)

end A093419

/-! ## A093419.P3770828137862820518

`A027611(n+2)/A043529(n+1)`
-/

namespace A093419.P3770828137862820518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027611 (n + 2) : ℚ) / (A043529 (n + 1) : ℚ)

end

end A093419.P3770828137862820518

namespace A093419

/-- `A027611(n+2)/A043529(n+1)` -/
def P3770828137862820518.Spec : Prop :=
  ∀ n, P3770828137862820518.a n = (A093419 (n + 1) : ℚ)

end A093419

/-!
# A093421: Triangle read by rows: T(n,k) is the denominator of f(n, k) = (Product_{i = 0..k-1} (n-i))/(Sum_{i = 1..k} i) for 1 <= k <= n.

The programs for A093421, the canonical program `A093421.P16990172732608459439` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093421 has offset 1).

The definition of A093421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093421.P8894122389352161860

`gcd(comp[∑[n]]-n, A093423(n+1))`
-/

namespace A093421.P8894122389352161860
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) (A093423 (n + 1))

end

end A093421.P8894122389352161860

namespace A093421

/-- `gcd(comp[∑[n]]-n, A093423(n+1))` -/
def P8894122389352161860.Spec : Prop :=
  ∀ n, (P8894122389352161860.a n : ℤ) = A093421 (n + 1)

end A093421

/-! ## A093421.P8458932434302233100

`gcd(1-A008279(n), A193605(n))`
-/

namespace A093421.P8458932434302233100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A008279 n) (A193605 n)

end

end A093421.P8458932434302233100

namespace A093421

/-- `gcd(1-A008279(n), A193605(n))` -/
def P8458932434302233100.Spec : Prop :=
  ∀ n, (P8458932434302233100.a n : ℤ) = A093421 (n + 1)

end A093421

/-! ## A093421.P16990172732608459439

`gcd(or(1, A121757(n)), A061885(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A093421

/-- `gcd(or(1, A121757(n)), A061885(n))` -/
def P16990172732608459439.Spec : Prop :=
  ∀ n, (P16990172732608459439.a n : ℤ) = A093421 (n + 1)

theorem P16990172732608459439.correct : P16990172732608459439.Spec := by
  intro n
  simp only [A093421, Nat.add_sub_cancel]

end A093421

/-! ## A093421.P10782918173239335610

`gcd(A093423(n+1), A093445(n+1))`
-/

namespace A093421.P10782918173239335610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A093423 (n + 1)) (A093445 (n + 1))

end

end A093421.P10782918173239335610

namespace A093421

/-- `gcd(A093423(n+1), A093445(n+1))` -/
def P10782918173239335610.Spec : Prop :=
  ∀ n, (P10782918173239335610.a n : ℤ) = A093421 (n + 1)

end A093421

/-! ## A093421.P15653350065427101809

`gcd(A068424(n+1)+1, A281881(n+1))`
-/

namespace A093421.P15653350065427101809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068424 (n + 1) + 1) (A281881 (n + 1))

end

end A093421.P15653350065427101809

namespace A093421

/-- `gcd(A068424(n+1)+1, A281881(n+1))` -/
def P15653350065427101809.Spec : Prop :=
  ∀ n, (P15653350065427101809.a n : ℤ) = A093421 (n + 1)

end A093421

/-! ## A093421.P8045622848534588808

`gcd(A099020(n), A110560(A002262(n)))`
-/

namespace A093421.P8045622848534588808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099020 n) (A110560 (A002262 n).toNat)

end

end A093421.P8045622848534588808

namespace A093421

/-- `gcd(A099020(n), A110560(A002262(n)))` -/
def P8045622848534588808.Spec : Prop :=
  ∀ n, (P8045622848534588808.a n : ℤ) = A093421 (n + 1)

end A093421

/-! ## A093421.P6221239864081040172

`gcd(A020639(A093423(n+1)), A003992(n))`
-/

namespace A093421.P6221239864081040172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020639 (A093423 (n + 1)).toNat) (A003992 n)

end

end A093421.P6221239864081040172

namespace A093421

/-- `gcd(A020639(A093423(n+1)), A003992(n))` -/
def P6221239864081040172.Spec : Prop :=
  ∀ n, (P6221239864081040172.a n : ℤ) = A093421 (n + 1)

end A093421

/-! ## A093421.P8602536472043555916

`A020639(gcd(A004247(n), A093423(n+1)))`
-/

namespace A093421.P8602536472043555916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A004247 n) (A093423 (n + 1)))

end

end A093421.P8602536472043555916

namespace A093421

/-- `A020639(gcd(A004247(n), A093423(n+1)))` -/
def P8602536472043555916.Spec : Prop :=
  ∀ n, P8602536472043555916.a n = A093421 (n + 1)

end A093421

/-! ## A093421.P13521440624917430569

`gcd(A070543(n+1), A090585(A002260(n+1)))`
-/

namespace A093421.P13521440624917430569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A070543 (n + 1)) (A090585 (A002260 (n + 1)).toNat)

end

end A093421.P13521440624917430569

namespace A093421

/-- `gcd(A070543(n+1), A090585(A002260(n+1)))` -/
def P13521440624917430569.Spec : Prop :=
  ∀ n, (P13521440624917430569.a n : ℤ) = A093421 (n + 1)

end A093421

/-! ## A093421.P14378452928466927844

`lcm(A093423(n+1), A119308(n))/A119308(n)`
-/

namespace A093421.P14378452928466927844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A093423 (n + 1)) (A119308 n) : ℚ) / (A119308 n : ℚ)

end

end A093421.P14378452928466927844

namespace A093421

/-- `lcm(A093423(n+1), A119308(n))/A119308(n)` -/
def P14378452928466927844.Spec : Prop :=
  ∀ n, P14378452928466927844.a n = (A093421 (n + 1) : ℚ)

end A093421

/-!
# A093423: Consider the triangle whose first part is shown as an example in the entry A093422. If the n-th term of the triangle read by rows is a fraction then a(n) is the denominator of the fraction, otherwise a(n)=1.

The programs for A093423, the canonical program `A093423.P17422038579525010043` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093423 has offset 1).

The definition of A093423 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2413 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093423.P17422038579525010043

`lcm(A068424(n+1), A141419(n+1))/A068424(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A093423

/-- `lcm(A068424(n+1), A141419(n+1))/A068424(n+1)` -/
def P17422038579525010043.Spec : Prop :=
  ∀ n, P17422038579525010043.a n = (A093423 (n + 1) : ℚ)

end A093423

/-! ## A093423.P11627592635552722555

`gcd(A003961(A336675(n)), A029655(n))`
-/

namespace A093423.P11627592635552722555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003961 (A336675 n).toNat) (A029655 n)

end

end A093423.P11627592635552722555

namespace A093423

/-- `gcd(A003961(A336675(n)), A029655(n))` -/
def P11627592635552722555.Spec : Prop :=
  ∀ n, (P11627592635552722555.a n : ℤ) = A093423 (n + 1)

end A093423

/-! ## A093423.P10415680251385435051

`gcd(A030101(A029655(n)), A214082(n+1))`
-/

namespace A093423.P10415680251385435051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030101 (A029655 n).toNat) (A214082 (n + 1))

end

end A093423.P10415680251385435051

namespace A093423

/-- `gcd(A030101(A029655(n)), A214082(n+1))` -/
def P10415680251385435051.Spec : Prop :=
  ∀ n, (P10415680251385435051.a n : ℤ) = A093423 (n + 1)

end A093423

/-! ## A093423.P17162380545116817196

`gcd(A121306(n), A348605(A054455(n)))`
-/

namespace A093423.P17162380545116817196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A121306 n) (A348605 (A054455 n).toNat)

end

end A093423.P17162380545116817196

namespace A093423

/-- `gcd(A121306(n), A348605(A054455(n)))` -/
def P17162380545116817196.Spec : Prop :=
  ∀ n, (P17162380545116817196.a n : ℤ) = A093423 (n + 1)

end A093423

/-! ## A093423.P8954757882808159612

`A000005(A028356(n)^A200038(n+1))`
-/

namespace A093423.P8954757882808159612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A028356 n : ℚ) ^ (A200038 (n + 1) : ℤ))).toNat

end

end A093423.P8954757882808159612

namespace A093423

/-- `A000005(A028356(n)^A200038(n+1))` -/
def P8954757882808159612.Spec : Prop :=
  ∀ n, P8954757882808159612.a n = A093423 (n + 1)

end A093423

/-!
# A093424: Number of two-dimensional burst patterns of size n, i.e., translation inequivalent subsets of the grid Z^2 which can be covered by a connected subset of n elements (in the sense of von Neumann neighborhoods).

The programs for A093424, there is no canonical definition to state claims against.
-/

/-! ## A093424.P3724351263336349527

`A004525(xor(A049315(n), A160408(n)))`
-/

namespace A093424.P3724351263336349527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.xor (A049315 n) (A160408 n)).toNat

end

end A093424.P3724351263336349527

/-!
# A093426: Number of different two-dimensional burst patterns in the hexagonal graph.

The programs for A093426, there is no canonical definition to state claims against.
-/

/-! ## A093426.P3164816674648577568

`Δ[A323224(A059993(n)+2)]`
-/

namespace A093426.P3164816674648577568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323224 (A059993 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093426.P3164816674648577568

/-!
# A093427: Number of different two-dimensional burst patterns in the grid graph with eight neighbors.

The programs for A093427, there is no canonical definition to state claims against.
-/

/-! ## A093427.P10875655002925987428

`A313447(n*A143549(n))`
-/

namespace A093427.P10875655002925987428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313447 ((n : ℤ) * A143549 n).toNat

end

end A093427.P10875655002925987428

/-!
# A093428: Prime numbers which are successors of a power of a Fibonacci number.

The programs for A093428, there is no canonical definition to state claims against.
-/

/-! ## A093428.P11196068840811584585

`record[A089120(A181212(n+1))]`
-/

namespace A093428.P11196068840811584585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (A181212 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093428.P11196068840811584585

/-!
# A093429: Number of distinct prime factors of (prime(1)*...*prime(n))+(prime(n+1)*...*prime(2n)), where prime(n) is the n-th prime.

The programs for A093429, there is no canonical definition to state claims against.
-/

/-! ## A093429.P13133005631461110584

`A055642(A262072(2*n)+1+n)`
-/

namespace A093429.P13133005631461110584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A262072 (2 * n) + 1 + (n : ℤ)).toNat

end

end A093429.P13133005631461110584

/-! ## A093429.P13804167096090658080

`A001221(A344914(n)+A126064(n))`
-/

namespace A093429.P13804167096090658080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A344914 n + A126064 n).toNat

end

end A093429.P13804167096090658080

/-! ## A093429.P8793442466142553087

`A096825(or(A007690(3*n), A080791(n)))`
-/

namespace A093429.P8793442466142553087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096825 (Int.lor (A007690 (3 * n)) (A080791 n)).toNat

end

end A093429.P8793442466142553087

/-! ## A093429.P5628678838253562986

`∑{d}[A344914(n)+A126064(n), A010051(#)]`
-/

namespace A093429.P5628678838253562986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344914 n + A126064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010051 d

end

end A093429.P5628678838253562986

/-! ## A093429.P12917990912039011868

`A001222(A220570(n+1)+A034363(2*(n+2)))`
-/

namespace A093429.P12917990912039011868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A220570 (n + 1) + A034363 (2 * (n + 2))).toNat

end

end A093429.P12917990912039011868

/-!
# A093430: Triangle read by rows: T(n,k) = lcm(n, n-1, ..., n-k+2, n-k+1)/lcm(1, 2, ..., k) (1 <= k <= n).

The programs for A093430, there is no canonical definition to state claims against.
-/

/-! ## A093430.P4122134833550662808

`A067049(comp[∑[n]])`
-/

namespace A093430.P4122134833550662808
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067049 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A093430.P4122134833550662808

/-! ## A093430.P15578836219184708686

`or(char[2], A067049(A014132(n+1)))`
-/

namespace A093430.P15578836219184708686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A067049 (A014132 (n + 1)).toNat)

end

end A093430.P15578836219184708686

/-! ## A093430.P13348745782409856717

`xor(1, xor(1, A067049(A003057(n+2)+n)))`
-/

namespace A093430.P13348745782409856717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A067049 (A003057 (n + 2) + (n : ℤ)).toNat))

end

end A093430.P13348745782409856717

/-! ## A093430.P17636025293260755153

`gcd(A000038(n), A067049(A014132(n+1)))`
-/

namespace A093430.P17636025293260755153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A067049 (A014132 (n + 1)).toNat)

end

end A093430.P17636025293260755153

/-! ## A093430.P5929947828314887742

`A067049(A003057(n+2)+n)+A008683(lcm(4, n+1))`
-/

namespace A093430.P5929947828314887742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067049 (A003057 (n + 2) + (n : ℤ)).toNat + A008683 (Nat.lcm 4 (n + 1))

end

end A093430.P5929947828314887742

/-! ## A093430.P12044918437631511833

`A093919(n+1)/A120108(A112367(n))`
-/

namespace A093430.P12044918437631511833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093919 (n + 1) : ℚ) / (A120108 (A112367 n).toNat : ℚ)

end

end A093430.P12044918437631511833

/-! ## A093430.P14804879221825676916

`A093919(n+1)/A003418(A002260(n+1))`
-/

namespace A093430.P14804879221825676916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093919 (n + 1) : ℚ) / (A003418 (A002260 (n + 1)).toNat : ℚ)

end

end A093430.P14804879221825676916

/-! ## A093430.P13907940146913118093

`A067049(A014132(n+1))+A000038(A067049(n))`
-/

namespace A093430.P13907940146913118093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067049 (A014132 (n + 1)).toNat + A000038 (A067049 n).toNat

end

end A093430.P13907940146913118093

/-! ## A093430.P7511420996627017113

`A241475(n+1)/a(n-1)` with `a(0)=1`
-/

namespace A093430.P7511420996627017113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A241475 (n + 1) : ℚ) / a (n - 1)

end

end A093430.P7511420996627017113

/-!
# A093431: a(n) = Sum_{k=1..n} (lcm(n,n-1,...,n-k+2,n-k+1)/lcm(1,2,...,k)).

The programs for A093431, there is no canonical definition to state claims against.
-/

/-! ## A093431.P5807868275311752899

`A061297(n+1)-1`
-/

namespace A093431.P5807868275311752899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061297 (n + 1) - 1

end

end A093431.P5807868275311752899

/-! ## A093431.P1927786042348052167

`Δ[∑[A061297(n)]-n]`
-/

namespace A093431.P1927786042348052167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061297 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093431.P1927786042348052167

/-! ## A093431.P1679841647529706417

`Δ[A001489(n)+∑[A061297(n)]]`
-/

namespace A093431.P1679841647529706417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061297 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093431.P1679841647529706417

/-! ## A093431.P4487298525357695629

`Δ[A024000(n)+∑[A061297(n)]]`
-/

namespace A093431.P4487298525357695629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061297 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093431.P4487298525357695629

/-! ## A093431.P3563818982112213524

`A001489(n+1)+A061297(n+1)+n`
-/

namespace A093431.P3563818982112213524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 1) + (A061297 (n + 1) + (n : ℤ))

end

end A093431.P3563818982112213524

/-!
# A093432: a(n) = lcm_{k=1..n} (lcm(n,n-1,...,n-k+2,n-k+1)/lcm(1,2,...,k)).

The programs for A093432, there is no canonical definition to state claims against.
-/

/-! ## A093432.P10816811534393231586

`A028310(lcm(A099946(n+2), A131738(n)))`
-/

namespace A093432.P10816811534393231586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lcm (A099946 (n + 2)) (A131738 n))

end

end A093432.P10816811534393231586

/-! ## A093432.P4756221343217555779

`A028310(A099946(n+2)*A330741(n+1))`
-/

namespace A093432.P4756221343217555779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A099946 (n + 2) * A330741 (n + 1)).toNat

end

end A093432.P4756221343217555779

/-! ## A093432.P193123315172987450

`lcm(A027449(n+2)/(2*n+3), A289207(A077168(n+2)))`
-/

namespace A093432.P193123315172987450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A027449 (n + 2) : ℚ) / (2 * n + 3 : ℚ))) (A289207 (A077168 (n + 2)).toNat)

end

end A093432.P193123315172987450

/-! ## A093432.P4047694661315157956

`A106614(A002944(n+2)/A324369(n+1))`
-/

namespace A093432.P4047694661315157956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (SequenceMachineLib.roundAway ((A002944 (n + 2) : ℚ) / (A324369 (n + 1) : ℚ))).toNat

end

end A093432.P4047694661315157956

/-! ## A093432.P7144558327746345671

`A334721(n+2)/A306209(A051190(n+1))`
-/

namespace A093432.P7144558327746345671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334721 (n + 2) : ℚ) / (A306209 (A051190 (n + 1)).toNat : ℚ)

end

end A093432.P7144558327746345671

/-!
# A093433: a(n) = (p(1)*...*p(n)) + (p(n+1)*...*p(2n)) where p(n) is the n-th prime.

The programs for A093433, the canonical program `A093433.P16673850305755188745` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093433 has offset 0).

The definition of A093433 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093433.P16673850305755188745

`A002110(n)+A107712(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A093433

/-- `A002110(n)+A107712(n)` -/
def P16673850305755188745.Spec : Prop :=
  ∀ n, P16673850305755188745.a n = A093433 n

theorem P16673850305755188745.correct : P16673850305755188745.Spec := by
  intro n
  simp only [A093433]

end A093433

/-! ## A093433.P14372527318879691131

`A107712(n)+∏[lt[∏{d}[n, #], n+1]]`
-/

namespace A093433.P14372527318879691131
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), d

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107712 n + ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A093433.P14372527318879691131

namespace A093433

/-- `A107712(n)+∏[lt[∏{d}[n, #], n+1]]` -/
def P14372527318879691131.Spec : Prop :=
  ∀ n, P14372527318879691131.a n = A093433 n

end A093433

/-! ## A093433.P9187298032516673321

`A107712(n)+A096334(∑[n])`
-/

namespace A093433.P9187298032516673321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107712 n + A096334 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093433.P9187298032516673321

namespace A093433

/-- `A107712(n)+A096334(∑[n])` -/
def P9187298032516673321.Spec : Prop :=
  ∀ n, P9187298032516673321.a n = A093433 n

end A093433

/-! ## A093433.P8389911644565914426

`A121281(∑[n])+A107712(n)`
-/

namespace A093433.P8389911644565914426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121281 (∑ j ∈ Finset.range (n + 1), f1 j) + A107712 n

end

end A093433.P8389911644565914426

namespace A093433

/-- `A121281(∑[n])+A107712(n)` -/
def P8389911644565914426.Spec : Prop :=
  ∀ n, P8389911644565914426.a n = A093433 n

end A093433

/-! ## A093433.P7086531704482454108

`A107712(n)+record[A096334(n)]`
-/

namespace A093433.P7086531704482454108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107712 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093433.P7086531704482454108

namespace A093433

/-- `A107712(n)+record[A096334(n)]` -/
def P7086531704482454108.Spec : Prop :=
  ∀ n, P7086531704482454108.a n = A093433 n

end A093433

/-!
# A093434: a(n) = Product_{i=1..n} (2*n-i)*(2*n+i).

The programs for A093434, the canonical program `A093434.P6773893714073702822` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093434 has offset 1).

The definition of A093434 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093434.P6773893714073702822

`(3*(n+1))!/(2*(n+1)!)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A093434

/-- `(3*(n+1))!/(2*(n+1)!)` -/
def P6773893714073702822.Spec : Prop :=
  ∀ n, P6773893714073702822.a n = (A093434 (n + 1) : ℚ)

end A093434

/-! ## A093434.P16368360240772437272

`3*A001525(n+1)`
-/

namespace A093434.P16368360240772437272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001525 (n + 1)

end

end A093434.P16368360240772437272

namespace A093434

/-- `3*A001525(n+1)` -/
def P16368360240772437272.Spec : Prop :=
  ∀ n, P16368360240772437272.a n = A093434 (n + 1)

end A093434

/-! ## A093434.P16768210431067611642

`A064350(n+1)/2`
-/

namespace A093434.P16768210431067611642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064350 (n + 1) : ℚ) / 2

end

end A093434.P16768210431067611642

namespace A093434

/-- `A064350(n+1)/2` -/
def P16768210431067611642.Spec : Prop :=
  ∀ n, P16768210431067611642.a n = (A093434 (n + 1) : ℚ)

end A093434

/-! ## A093434.P10745861459447883834

`A101109(3*(n+1))/2`
-/

namespace A093434.P10745861459447883834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101109 (3 * (n + 1)) : ℚ) / 2

end

end A093434.P10745861459447883834

namespace A093434

/-- `A101109(3*(n+1))/2` -/
def P10745861459447883834.Spec : Prop :=
  ∀ n, P10745861459447883834.a n = (A093434 (n + 1) : ℚ)

end A093434

/-! ## A093434.P8123920143171566057

`3*a(n-1)*A001504(n)` with `a(0)=3`
-/

namespace A093434.P8123920143171566057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  3 * a (n - 1) * A001504 n

end

end A093434.P8123920143171566057

namespace A093434

/-- `3*a(n-1)*A001504(n)` -/
def P8123920143171566057.Spec : Prop :=
  ∀ n, P8123920143171566057.a n = A093434 (n + 1)

end A093434

/-!
# A093437: a(n) = largest prime of the form n!/k! + 1.

The programs for A093437, there is no canonical definition to state claims against.
-/

/-! ## A093437.P10499503945483416465

`p?[A341617(n+1)+A178395(n)]`
-/

namespace A093437.P10499503945483416465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341617 (n + 1) + A178395 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093437.P10499503945483416465

/-! ## A093437.P10735773219779213400

`p?[A341617(n+1)+A220777(n)]`
-/

namespace A093437.P10735773219779213400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341617 (n + 1) + A220777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093437.P10735773219779213400

/-! ## A093437.P14897207236203999001

`p?[A341617(n+1)+A034853(n+3)]`
-/

namespace A093437.P14897207236203999001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341617 (n + 1) + A034853 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093437.P14897207236203999001

/-! ## A093437.P11931219099638526292

`p?[A341617(n+1)+A341592(2*n+1)]`
-/

namespace A093437.P11931219099638526292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341617 (n + 1) + A341592 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093437.P11931219099638526292

/-!
# A093438: Least distinct prime p such that p-1 has the prime signature of n, or 0 if no such prime exists.

The programs for A093438, there is no canonical definition to state claims against.
-/

/-! ## A093438.P16540857905892315392

`A145105(A112417(n+2))`
-/

namespace A093438.P16540857905892315392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145105 (A112417 (n + 2)).toNat

end

end A093438.P16540857905892315392

/-! ## A093438.P2904265283802699282

`A181105(∑[n+1]+1)`
-/

namespace A093438.P2904265283802699282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181105 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A093438.P2904265283802699282

/-! ## A093438.P8729449789257052591

`Δ[∑{p}[A135060(n+1), #]]`
-/

namespace A093438.P8729449789257052591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135060 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A093438.P8729449789257052591

/-! ## A093438.P3827381519286034119

`C(n+2, (A001222(n+2)^n²)²)`
-/

namespace A093438.P3827381519286034119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) ((A001222 (n + 2) ^ n ^ 2) ^ 2).toNat

end

end A093438.P3827381519286034119

/-! ## A093438.P6538020794190335047

`A145105(A352844(n))`
-/

namespace A093438.P6538020794190335047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145105 (A352844 n).toNat

end

end A093438.P6538020794190335047

/-!
# A093439: Least number n with a given prime signature such that all numbers >= n with this prime signature are one less than a composite number.

The programs for A093439, there is no canonical definition to state claims against.
-/

/-! ## A093439.P3279852849914141771

`record[A084936(A097218(n+1))]`
-/

namespace A093439.P3279852849914141771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084936 (A097218 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093439.P3279852849914141771

/-!
# A093440: Number of n X n symmetric binary matrices with each element either the sum mod 2 of its diagonal neighbors or the sum mod 2 of its antidiagonal neighbors.

The programs for A093440, there is no canonical definition to state claims against.
-/

/-! ## A093440.P8236708710828629535

`A255734(A301231(n))`
-/

namespace A093440.P8236708710828629535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255734 (A301231 n).toNat

end

end A093440.P8236708710828629535

/-!
# A093442: a(n) = (A093441(n+1)-1)/(A093441(n)-1).

The programs for A093442, there is no canonical definition to state claims against.
-/

/-! ## A093442.P12545425109466515018

`A006530(A006519(n+1)*A083771(n+2))`
-/

namespace A093442.P12545425109466515018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006519 (n + 1) * A083771 (n + 2)).toNat

end

end A093442.P12545425109466515018

/-! ## A093442.P1699300475303951656

`A083771(n+2)*A318812(A005384(n+1))`
-/

namespace A093442.P1699300475303951656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083771 (n + 2) * A318812 (A005384 (n + 1)).toNat

end

end A093442.P1699300475303951656

/-! ## A093442.P17401159257205530127

`A083771(n+2)%A358466(A301697(n+3))`
-/

namespace A093442.P17401159257205530127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083771 (n + 2)) (A358466 (A301697 (n + 3)).toNat)

end

end A093442.P17401159257205530127

/-! ## A093442.P15873567701083196542

`A032742(3*A083771(n+2))`
-/

namespace A093442.P15873567701083196542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (3 * A083771 (n + 2)).toNat

end

end A093442.P15873567701083196542

/-! ## A093442.P12122049104590032582

`A033677(3*A083771(n+2))`
-/

namespace A093442.P12122049104590032582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (3 * A083771 (n + 2)).toNat

end

end A093442.P12122049104590032582

/-! ## A093442.P16379362514011290535

`A133419(3*A083771(n+2))`
-/

namespace A093442.P16379362514011290535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133419 (3 * A083771 (n + 2)).toNat

end

end A093442.P16379362514011290535

/-! ## A093442.P1070382839121448101

`A289436(3*A083771(n+2))`
-/

namespace A093442.P1070382839121448101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289436 (3 * A083771 (n + 2)).toNat

end

end A093442.P1070382839121448101

/-! ## A093442.P17158947804067058629

`A006530((A077774(n+1)+1)*A083771(n+2))`
-/

namespace A093442.P17158947804067058629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((A077774 (n + 1) + 1) * A083771 (n + 2)).toNat

end

end A093442.P17158947804067058629

/-! ## A093442.P7962118163672729545

`and(1, A020639((A089528(n+1)-3)/2))*A083771(n+2)`
-/

namespace A093442.P7962118163672729545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A020639 (SequenceMachineLib.roundAway ((A089528 (n + 1) - 3 : ℚ) / 2)).toNat) * A083771 (n + 2)

end

end A093442.P7962118163672729545

/-! ## A093442.P6704368823606254240

`A212831(A083771(n+2))%A020639((A089528(n+1)-3)/2)`
-/

namespace A093442.P6704368823606254240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212831 (A083771 (n + 2)).toNat) (A020639 (SequenceMachineLib.roundAway ((A089528 (n + 1) - 3 : ℚ) / 2)).toNat)

end

end A093442.P6704368823606254240

/-! ## A093442.P3346622559704521626

`A212831(A083771(n+2))%A213708(A212502(2*n+1))`
-/

namespace A093442.P3346622559704521626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212831 (A083771 (n + 2)).toNat) (A213708 (A212502 (2 * n + 1)).toNat)

end

end A093442.P3346622559704521626

/-! ## A093442.P1385606667988857645

`gcd(2, A039726(2*n+3))*A083771(n+2)`
-/

namespace A093442.P1385606667988857645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A039726 (2 * n + 3)) : ℤ) * A083771 (n + 2)

end

end A093442.P1385606667988857645

/-! ## A093442.P5889921149577832132

`A083771(n+2)+C(A005235(n+1), A039726(2*n+3))`
-/

namespace A093442.P5889921149577832132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083771 (n + 2) + (Nat.choose (A005235 (n + 1)).toNat (A039726 (2 * n + 3)).toNat : ℤ)

end

end A093442.P5889921149577832132

/-! ## A093442.P8767713895709639468

`A083771(n+2)+C(A008578(n+1), A039726(2*n+3))`
-/

namespace A093442.P8767713895709639468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083771 (n + 2) + (Nat.choose (A008578 (n + 1)).toNat (A039726 (2 * n + 3)).toNat : ℤ)

end

end A093442.P8767713895709639468

/-! ## A093442.P12724855081492831323

`A083771(n+2)+C(A014574(n+1), A039726(2*n+3))`
-/

namespace A093442.P12724855081492831323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083771 (n + 2) + (Nat.choose (A014574 (n + 1)).toNat (A039726 (2 * n + 3)).toNat : ℤ)

end

end A093442.P12724855081492831323

/-! ## A093442.P15552979947197073239

`A083771(n+2)+C(A039726(n+1), A039726(2*n+3))`
-/

namespace A093442.P15552979947197073239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083771 (n + 2) + (Nat.choose (A039726 (n + 1)).toNat (A039726 (2 * n + 3)).toNat : ℤ)

end

end A093442.P15552979947197073239

/-! ## A093442.P17300781627146437292

`gcd(11, A359939(n+1))*A083771(n+2)`
-/

namespace A093442.P17300781627146437292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 11 (A359939 (n + 1)) : ℤ) * A083771 (n + 2)

end

end A093442.P17300781627146437292

/-! ## A093442.P504563385275640708

`A037277(A083771(n+2))`
-/

namespace A093442.P504563385275640708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037277 (A083771 (n + 2)).toNat

end

end A093442.P504563385275640708

/-! ## A093442.P3927455975293557939

`A001222(A087898(n+1))*A083771(n+2)`
-/

namespace A093442.P3927455975293557939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A087898 (n + 1)).toNat * A083771 (n + 2)

end

end A093442.P3927455975293557939

/-!
# A093445: The triangular triangle.

The programs for A093445, the canonical program `A093445.P508633320961369722` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093445 has offset 1).

The definition of A093445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093445.P4774673098670586050

`A107985(n)+A062707(n)`
-/

namespace A093445.P4774673098670586050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107985 n + A062707 n

end

end A093445.P4774673098670586050

namespace A093445

/-- `A107985(n)+A062707(n)` -/
def P4774673098670586050.Spec : Prop :=
  ∀ n, P4774673098670586050.a n = A093445 (n + 1)

end A093445

/-! ## A093445.P508633320961369722

`(n+1)*A025581(n)-(A002411(A025581(n))-(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A093445

/-- `(n+1)*A025581(n)-(A002411(A025581(n))-(n+1))` -/
def P508633320961369722.Spec : Prop :=
  ∀ n, P508633320961369722.a n = A093445 (n + 1)

theorem P508633320961369722.correct : P508633320961369722.Spec := by
  intro n
  simp only [A093445, Nat.add_sub_cancel]

end A093445

/-! ## A093445.P8020972377856806290

`A384125(n+1)+A128141(n+1)`
-/

namespace A093445.P8020972377856806290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384125 (n + 1) + A128141 (n + 1)

end

end A093445.P8020972377856806290

namespace A093445

/-- `A384125(n+1)+A128141(n+1)` -/
def P8020972377856806290.Spec : Prop :=
  ∀ n, P8020972377856806290.a n = A093445 (n + 1)

end A093445

/-! ## A093445.P10255078531677480145

`A110769((row(n)+1)²-n)`
-/

namespace A093445.P10255078531677480145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110769 ((SequenceMachineLib.triRow n + 1) ^ 2 - n)

end

end A093445.P10255078531677480145

namespace A093445

/-- `A110769((row(n)+1)²-n)` -/
def P10255078531677480145.Spec : Prop :=
  ∀ n, P10255078531677480145.a n = A093445 (n + 1)

end A093445

/-! ## A093445.P10267666159981774465

`A110769(A038722(n+1))`
-/

namespace A093445.P10267666159981774465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110769 (A038722 (n + 1)).toNat

end

end A093445.P10267666159981774465

namespace A093445

/-- `A110769(A038722(n+1))` -/
def P10267666159981774465.Spec : Prop :=
  ∀ n, P10267666159981774465.a n = A093445 (n + 1)

end A093445

/-! ## A093445.P11503360987919470490

`A110769(A061579(n)+1)`
-/

namespace A093445.P11503360987919470490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110769 (A061579 n + 1).toNat

end

end A093445.P11503360987919470490

namespace A093445

/-- `A110769(A061579(n)+1)` -/
def P11503360987919470490.Spec : Prop :=
  ∀ n, P11503360987919470490.a n = A093445 (n + 1)

end A093445

/-! ## A093445.P11478286499624348147

`A110769(A114327(n)+1+n)`
-/

namespace A093445.P11478286499624348147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110769 (A114327 n + 1 + (n : ℤ)).toNat

end

end A093445.P11478286499624348147

namespace A093445

/-- `A110769(A114327(n)+1+n)` -/
def P11478286499624348147.Spec : Prop :=
  ∀ n, P11478286499624348147.a n = A093445 (n + 1)

end A093445

/-! ## A093445.P15836168462041172699

`A110769(A093995(n+1)-n)`
-/

namespace A093445.P15836168462041172699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110769 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A093445.P15836168462041172699

namespace A093445

/-- `A110769(A093995(n+1)-n)` -/
def P15836168462041172699.Spec : Prop :=
  ∀ n, P15836168462041172699.a n = A093445 (n + 1)

end A093445

/-! ## A093445.P14678198388862805022

`A193977(n)-A049777(n+1)`
-/

namespace A093445.P14678198388862805022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193977 n - A049777 (n + 1)

end

end A093445.P14678198388862805022

namespace A093445

/-- `A193977(n)-A049777(n+1)` -/
def P14678198388862805022.Spec : Prop :=
  ∀ n, P14678198388862805022.a n = A093445 (n + 1)

end A093445

/-!
# A093446: Largest member of the n-th row of the triangular triangle (A093445).

The programs for A093446, the canonical program `A093446.P18408503001264720502` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093446 has offset 1).

The definition of A093446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093446.P18408503001264720502

`record[∑[A111651(n+1)]/A104709(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A093446

/-- `record[∑[A111651(n+1)]/A104709(n)]` -/
def P18408503001264720502.Spec : Prop :=
  ∀ n, P18408503001264720502.a n = (A093446 (n + 1) : ℚ)

end A093446

/-! ## A093446.P2312043137342446105

`record[∑[A111651(n+1)]/A262616(n)]`
-/

namespace A093446.P2312043137342446105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A262616 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093446.P2312043137342446105

namespace A093446

/-- `record[∑[A111651(n+1)]/A262616(n)]` -/
def P2312043137342446105.Spec : Prop :=
  ∀ n, P2312043137342446105.a n = (A093446 (n + 1) : ℚ)

end A093446

/-! ## A093446.P686640530604533143

`record[∑[A111651(n+1)]/A035324(n+1)]`
-/

namespace A093446.P686640530604533143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A035324 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093446.P686640530604533143

namespace A093446

/-- `record[∑[A111651(n+1)]/A035324(n+1)]` -/
def P686640530604533143.Spec : Prop :=
  ∀ n, P686640530604533143.a n = (A093446 (n + 1) : ℚ)

end A093446

/-! ## A093446.P13459858025484410216

`record[∑[A111651(n+1)]/A183110(n+1)]`
-/

namespace A093446.P13459858025484410216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A183110 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093446.P13459858025484410216

namespace A093446

/-- `record[∑[A111651(n+1)]/A183110(n+1)]` -/
def P13459858025484410216.Spec : Prop :=
  ∀ n, P13459858025484410216.a n = (A093446 (n + 1) : ℚ)

end A093446

/-!
# A093447: Triangle a(n,k) read by rows n which contain columns k=1,2,..,n, where each entry is the product of numbers (k-1)*n-T(k-2)+1 through k*n-T(k-1).

The programs for A093447, there is no canonical definition to state claims against.
-/

/-! ## A093447.P4799179050830664938

`A110770(A038722(n+1))*A166350(A038722(n+1))`
-/

namespace A093447.P4799179050830664938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110770 (A038722 (n + 1)).toNat * A166350 (A038722 (n + 1)).toNat

end

end A093447.P4799179050830664938

/-! ## A093447.P9625484690376298273

`A110768(∑[char[∑[n]]]²-n)`
-/

namespace A093447.P9625484690376298273
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110768 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A093447.P9625484690376298273

/-! ## A093447.P14196735729674219900

`lcm(val(n+1, 2)!, A110768(A114327(n)+1+n))`
-/

namespace A093447.P14196735729674219900
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (SequenceMachineLib.valuation (n + 1) 2) : ℤ) (A110768 (A114327 n + 1 + (n : ℤ)).toNat)

end

end A093447.P14196735729674219900

/-! ## A093447.P11612363596219641311

`A110768(A038722(n+1))%A216243(n)`
-/

namespace A093447.P11612363596219641311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110768 (A038722 (n + 1)).toNat) (A216243 n)

end

end A093447.P11612363596219641311

/-! ## A093447.P878616673233013242

`lcm(A110768(A038722(n+1)), A117373(n))`
-/

namespace A093447.P878616673233013242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A110768 (A038722 (n + 1)).toNat) (A117373 n)

end

end A093447.P878616673233013242

/-!
# A093448: Rows sums of the triangle A093447.

The programs for A093448, there is no canonical definition to state claims against.
-/

/-! ## A093448.P675567123542910702

`A227363(∑[n+1])`
-/

namespace A093448.P675567123542910702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227363 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093448.P675567123542910702

/-! ## A093448.P4229637395753735749

`A239519(∑[n+1])`
-/

namespace A093448.P4229637395753735749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239519 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093448.P4229637395753735749

/-! ## A093448.P17414484716605959395

`record[A227363(A038722(n+1))]`
-/

namespace A093448.P17414484716605959395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227363 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093448.P17414484716605959395

/-! ## A093448.P2146011614046276327

`record[A227363(A049777(n+1))]`
-/

namespace A093448.P2146011614046276327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227363 (A049777 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093448.P2146011614046276327

/-! ## A093448.P2543029117955785959

`record[A227363(A158823(n+1))]`
-/

namespace A093448.P2543029117955785959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227363 (A158823 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093448.P2543029117955785959

/-!
# A093449: Least number with n distinct prime divisors arising as the product of two or more consecutive integers.

The programs for A093449, there is no canonical definition to state claims against.
-/

/-! ## A093449.P4967234498676707432

`lcm(A002110(n), A340316(A054886(n)))`
-/

namespace A093449.P4967234498676707432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002110 n) (A340316 (A054886 n).toNat)

end

end A093449.P4967234498676707432

/-! ## A093449.P5927323918719279224

`A006530(A346686(n+1))*A002110(n)`
-/

namespace A093449.P5927323918719279224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A346686 (n + 1)).toNat * A002110 n

end

end A093449.P5927323918719279224

/-! ## A093449.P9120482984387237782

`A002110(n+2)/A331273(A307004(n+2))`
-/

namespace A093449.P9120482984387237782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 2) : ℚ) / (A331273 (A307004 (n + 2)).toNat : ℚ)

end

end A093449.P9120482984387237782

/-!
# A093451: Number of distinct prime divisors of Product_{k=1+(n-1)n/2..n(n+1)/2} k (i.e., of 1, 2*3, 4*5*6, 7*8*9*10, ...).

The programs for A093451, there is no canonical definition to state claims against.
-/

/-! ## A093451.P6041176348611741565

`A071625(A296556(n))+n`
-/

namespace A093451.P6041176348611741565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A296556 n).toNat + (n : ℤ)

end

end A093451.P6041176348611741565

/-! ## A093451.P14914075715197028627

`A320001(A230123(n))+n`
-/

namespace A093451.P14914075715197028627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320001 (A230123 n).toNat + (n : ℤ)

end

end A093451.P14914075715197028627

/-! ## A093451.P16309412715312479291

`A242481(Δ[A018182(n)])+n`
-/

namespace A093451.P16309412715312479291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018182 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242481 (f1 (n + 1) - f1 n).toNat + (n : ℤ)

end

end A093451.P16309412715312479291

/-! ## A093451.P2253841371649928407

`A095827(A347756(n+1))+n`
-/

namespace A093451.P2253841371649928407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095827 (A347756 (n + 1)).toNat + (n : ℤ)

end

end A093451.P2253841371649928407

/-! ## A093451.P11695471547231900899

`A352822(A048768(A085869(n+1)))+n`
-/

namespace A093451.P11695471547231900899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352822 (A048768 (A085869 (n + 1)).toNat).toNat + (n : ℤ)

end

end A093451.P11695471547231900899

/-!
# A093453: 1/1, 2*3/lcm(2,3), 4*5*6/lcm(4,5,6), 7*8*9*10/lcm(7,8,9,10), ...

The programs for A093453, there is no canonical definition to state claims against.
-/

/-! ## A093453.P9000020184793554131

`A057003(n+1)/A061431(n+1)`
-/

namespace A093453.P9000020184793554131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057003 (n + 1) : ℚ) / (A061431 (n + 1) : ℚ)

end

end A093453.P9000020184793554131

/-! ## A093453.P3583054569295833044

`ceil(A057003(n+1)/A091794(n))`
-/

namespace A093453.P3583054569295833044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057003 (n + 1) : ℚ) / (A091794 n : ℚ)⌉

end

end A093453.P3583054569295833044

/-! ## A093453.P5564714975191464675

`ceil(A057003(n+1)/A091795(n))`
-/

namespace A093453.P5564714975191464675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057003 (n + 1) : ℚ) / (A091795 n : ℚ)⌉

end

end A093453.P5564714975191464675

/-! ## A093453.P2641434342172624103

`round(A000007(n+1)+A057003(n+1)/A091795(n))`
-/

namespace A093453.P2641434342172624103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000007 (n + 1) : ℚ) + (A057003 (n + 1) : ℚ) / (A091795 n : ℚ))

end

end A093453.P2641434342172624103

/-! ## A093453.P4126990233494333963

`round(A008683(4*(n+1))+A057003(n+1)/A091795(n))`
-/

namespace A093453.P4126990233494333963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008683 (4 * (n + 1)) : ℚ) + (A057003 (n + 1) : ℚ) / (A091795 n : ℚ))

end

end A093453.P4126990233494333963

/-!
# A093454: a(n) = floor((LCM of next n numbers)/n!).

The programs for A093454, there is no canonical definition to state claims against.
-/

/-! ## A093454.P17377627698609353489

`A255734(C(2*n+1, comp[or(2, n)+n]))`
-/

namespace A093454.P17377627698609353489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255734 (Nat.choose (2 * n + 1) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A093454.P17377627698609353489

/-!
# A093455: a(n) = floor(A093456(n+1)/A093456(n)).

The programs for A093455, there is no canonical definition to state claims against.
-/

/-! ## A093455.P7255641023676538291

`floor(A093456(n+2)/A093456(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A093455.P7255641023676538291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A093456 (n + 2) : ℚ) / (A093456 (n + 1) : ℚ)⌋

end

end A093455.P7255641023676538291

/-! ## A093455.P10995466484193973234

`floor(ratio[A093456(n+1)])`
-/

namespace A093455.P10995466484193973234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A093455.P10995466484193973234

/-! ## A093455.P12524956178647972067

`floor(ratio[A095218(n+1)+A093457(n+1)])`
-/

namespace A093455.P12524956178647972067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095218 (n + 1) + A093457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A093455.P12524956178647972067

/-!
# A093456: Product of composite numbers among next n numbers.

The programs for A093456, there is no canonical definition to state claims against.
-/

/-! ## A093456.P12531260462737226558

`A057003(n+1)/A093457(n+1)`
-/

namespace A093456.P12531260462737226558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057003 (n + 1) : ℚ) / (A093457 (n + 1) : ℚ)

end

end A093456.P12531260462737226558

/-! ## A093456.P658470537082776060

`A095218(n+1)+A093457(n+1)`
-/

namespace A093456.P658470537082776060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095218 (n + 1) + A093457 (n + 1)

end

end A093456.P658470537082776060

/-! ## A093456.P3403949254035999521

`A095218(n+1)+ratio[A034386(A000217(n))]`
-/

namespace A093456.P3403949254035999521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A000217 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095218 (n + 1) : ℚ) + (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A093456.P3403949254035999521

/-! ## A093456.P15062216869234673879

`A095218(n+1)+ratio[A300951(A002378(n))]`
-/

namespace A093456.P15062216869234673879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 (A002378 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095218 (n + 1) : ℚ) + (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A093456.P15062216869234673879

/-! ## A093456.P8053666950203780030

`ratio[A049614(∑[n])]`
-/

namespace A093456.P8053666950203780030
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049614 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A093456.P8053666950203780030

/-!
# A093457: Product of primes in the range [T(n-1) + 1, T(n - 1) + n], where T(n) is the n-th triangular number.

The programs for A093457, there is no canonical definition to state claims against.
-/

/-! ## A093457.P8925381888438457150

`A057003(n+1)/A093456(n+1)`
-/

namespace A093457.P8925381888438457150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057003 (n + 1) : ℚ) / (A093456 (n + 1) : ℚ)

end

end A093457.P8925381888438457150

/-! ## A093457.P8933757938042663024

`ratio[A034386(∑[n])]`
-/

namespace A093457.P8933757938042663024
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A093457.P8933757938042663024

/-! ## A093457.P15811755096941428229

`ratio[A300951(∑[2*n])]`
-/

namespace A093457.P15811755096941428229
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A093457.P15811755096941428229

/-! ## A093457.P4667410129636241579

`ratio[-A034386(A000217(n))]`
-/

namespace A093457.P4667410129636241579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A034386 (A000217 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A093457.P4667410129636241579

/-! ## A093457.P9939149681930896881

`ratio[-A300951(A002378(n))]`
-/

namespace A093457.P9939149681930896881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A300951 (A002378 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A093457.P9939149681930896881

/-!
# A093458: Partial products of A073846.

The programs for A093458, there is no canonical definition to state claims against.
-/

/-! ## A093458.P6666681095500920604

`∏[A073846(n+1)]`
-/

namespace A093458.P6666681095500920604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A093458.P6666681095500920604

/-! ## A093458.P12922281285093409190

`∏[A236675(a(n-1))]` with `a(0)=1`
-/

namespace A093458.P12922281285093409190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A236675 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A093458.P12922281285093409190

/-! ## A093458.P12848116101109115714

`a(n-1)*A067747(n)` with `a(0)=1`
-/

namespace A093458.P12848116101109115714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A067747 n

end

end A093458.P12848116101109115714

/-! ## A093458.P4683147395624664095

`(A066251(n)+1)*a(n-1)` with `a(0)=1`
-/

namespace A093458.P4683147395624664095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A066251 n + 1) * a (n - 1)

end

end A093458.P4683147395624664095

/-! ## A093458.P5756604903221624230

`a(n-1)*A073846(A000027(n+1))` with `a(0)=1`
-/

namespace A093458.P5756604903221624230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A073846 (A000027 (n + 1)).toNat

end

end A093458.P5756604903221624230

/-! ## A093458.P8995171088877794767

`a(n-1)*A073846(A087156(n+1))` with `a(0)=1`
-/

namespace A093458.P8995171088877794767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A073846 (A087156 (n + 1)).toNat

end

end A093458.P8995171088877794767

/-! ## A093458.P12165141261289950644

`∏[A067747(n+1)]/A067747(n+1)`
-/

namespace A093458.P12165141261289950644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A067747 (n + 1) : ℚ)

end

end A093458.P12165141261289950644

/-!
# A093459: Terms of A093458 which are factorials.

The programs for A093459, there is no canonical definition to state claims against.
-/

/-! ## A093459.P7148077783239572159

`ceil(n*log(6))!`
-/

namespace A093459.P7148077783239572159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌈(n : ℝ) * Real.log (6 : ℝ)⌉.toNat

end

end A093459.P7148077783239572159

/-! ## A093459.P7055663972275921292

`record[(n%5+n)!]`
-/

namespace A093459.P7055663972275921292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 5 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093459.P7055663972275921292

/-! ## A093459.P15215724303377301409

`record[xor(1, ∑{digits}[Δ[n²], #])!]`
-/

namespace A093459.P15215724303377301409
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.xor 1 ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093459.P15215724303377301409

/-! ## A093459.P8715842371218763918

`∑{digits}[n, C(#, 9)]+comp[ceil(7*n/3)]!`
-/

namespace A093459.P8715842371218763918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈7 * ((n : ℚ) / 3)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose x 9).sum + Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

end

end A093459.P8715842371218763918

/-!
# A093460: a(n) = 2n^(n-1) - 1.

The programs for A093460, the canonical program `A093460.P8985438407633140045` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093460 has offset 1).

The definition of A093460 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)^n-1` (program `A093460.P8985438407633140045`, by `A093460.P8985438407633140045.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093460.P8985438407633140045

`2*(n+1)^n-1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A093460

/-- `2*(n+1)^n-1` -/
def P8985438407633140045.Spec : Prop :=
  ∀ n, P8985438407633140045.a n = A093460 (n + 1)

theorem P8985438407633140045.correct : P8985438407633140045.Spec := by
  intro n
  simp only [A093460, Nat.add_sub_cancel]

end A093460

/-! ## A093460.P15731729428887849402

`-or(1, -(2*(n+1)^n))`
-/

namespace A093460.P15731729428887849402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-(2 * (n + 1) ^ n : ℤ))

end

end A093460.P15731729428887849402

namespace A093460

/-- `-or(1, -(2*(n+1)^n))` -/
def P15731729428887849402.Spec : Prop :=
  ∀ n, P15731729428887849402.a n = A093460 (n + 1)

end A093460

/-! ## A093460.P1805325131150374441

`abs(1-2*A055860(n))`
-/

namespace A093460.P1805325131150374441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A055860 n|

end

end A093460.P1805325131150374441

namespace A093460

/-- `abs(1-2*A055860(n))` -/
def P1805325131150374441.Spec : Prop :=
  ∀ n, P1805325131150374441.a n = A093460 (n + 1)

end A093460

/-! ## A093460.P2705655027944930708

`abs(1-2*A000169(n+1))`
-/

namespace A093460.P2705655027944930708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A000169 (n + 1)|

end

end A093460.P2705655027944930708

namespace A093460

/-- `abs(1-2*A000169(n+1))` -/
def P2705655027944930708.Spec : Prop :=
  ∀ n, P2705655027944930708.a n = A093460 (n + 1)

end A093460

/-! ## A093460.P6920666198553555136

`Δ[∑[2*n*A000272(n)]-n]`
-/

namespace A093460.P6920666198553555136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A000272 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093460.P6920666198553555136

namespace A093460

/-- `Δ[∑[2*n*A000272(n)]-n]` -/
def P6920666198553555136.Spec : Prop :=
  ∀ n, P6920666198553555136.a n = A093460 (n + 1)

end A093460

/-! ## A093460.P11608587933650933001

`∑[A040000(n)*A178922(n)]`
-/

namespace A093460.P11608587933650933001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A178922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093460.P11608587933650933001

namespace A093460

/-- `∑[A040000(n)*A178922(n)]` -/
def P11608587933650933001.Spec : Prop :=
  ∀ n, P11608587933650933001.a n = A093460 (n + 1)

end A093460

/-! ## A093460.P10704903011038452566

`(2*A000169(n+1)-1)%A245409(n+3)`
-/

namespace A093460.P10704903011038452566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A000169 (n + 1) - 1) (A245409 (n + 3))

end

end A093460.P10704903011038452566

namespace A093460

/-- `(2*A000169(n+1)-1)%A245409(n+3)` -/
def P10704903011038452566.Spec : Prop :=
  ∀ n, P10704903011038452566.a n = A093460 (n + 1)

end A093460

/-! ## A093460.P7658220726798114427

`record[2*A128434(n)-1]`
-/

namespace A093460.P7658220726798114427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128434 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093460.P7658220726798114427

namespace A093460

/-- `record[2*A128434(n)-1]` -/
def P7658220726798114427.Spec : Prop :=
  ∀ n, P7658220726798114427.a n = A093460 (n + 1)

end A093460

/-!
# A093461: a(1)=1, a(n) = 2*(n^(n-1)-1)/(n-1) for n >= 2.

The programs for A093461, there is no canonical definition to state claims against.
-/

/-! ## A093461.P9598130209426015194

`lcm(2, n^C(2, a(n-1)))*A060072(n+1)` with `a(0)=1`
-/

namespace A093461.P9598130209426015194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.lcm 2 (n ^ Nat.choose 2 (a (n - 1)).toNat) : ℤ) * A060072 (n + 1)

end

end A093461.P9598130209426015194

/-! ## A093461.P2403813227202877521

`A028310(n)*A093462(n+1)`
-/

namespace A093461.P2403813227202877521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A093462 (n + 1)

end

end A093461.P2403813227202877521

/-! ## A093461.P9595207574883192569

`A000007(n)+2*A060072(n+1)`
-/

namespace A093461.P9595207574883192569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A060072 (n + 1)

end

end A093461.P9595207574883192569

/-! ## A093461.P7284633042697833528

`A003056(A000124(n))*A093462(n+1)`
-/

namespace A093461.P7284633042697833528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000124 n).toNat * A093462 (n + 1)

end

end A093461.P7284633042697833528

/-! ## A093461.P6092033211447623284

`A008619(A004273(n))*A093462(n+1)`
-/

namespace A093461.P6092033211447623284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004273 n).toNat * A093462 (n + 1)

end

end A093461.P6092033211447623284

/-!
# A093462: a(1)=1, a(n) = 2(n^(n-1)-1)/(n-1)^2.

The programs for A093462, there is no canonical definition to state claims against.
-/

/-! ## A093462.P1660270954092509517

`A093461(n+1)/A028310(n)`
-/

namespace A093462.P1660270954092509517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093461 (n + 1) : ℚ) / (A028310 n : ℚ)

end

end A093462.P1660270954092509517

/-! ## A093462.P14015321107528958059

`A093461(n+1)/A137735(n²)`
-/

namespace A093462.P14015321107528958059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093461 (n + 1) : ℚ) / (A137735 (n ^ 2) : ℚ)

end

end A093462.P14015321107528958059

/-! ## A093462.P8231195256442248583

`A093461(n+1)/A123108(2*n)`
-/

namespace A093462.P8231195256442248583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093461 (n + 1) : ℚ) / (A123108 (2 * n) : ℚ)

end

end A093462.P8231195256442248583

/-! ## A093462.P18214665275246881556

`A093461(n+1)/A007318(A000124(n))`
-/

namespace A093462.P18214665275246881556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093461 (n + 1) : ℚ) / (A007318 (A000124 n).toNat : ℚ)

end

end A093462.P18214665275246881556

/-! ## A093462.P1928769097925949941

`A093461(n+1)/A008619(A004273(n))`
-/

namespace A093462.P1928769097925949941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093461 (n + 1) : ℚ) / (A008619 (A004273 n).toNat : ℚ)

end

end A093462.P1928769097925949941

/-!
# A093463: a(1) = 1; for n>1, a(n) = n*a(n-1) + 1 if n is a prime else a(n) = n*a(n-1) - 1.

The programs for A093463, there is no canonical definition to state claims against.
-/

/-! ## A093463.P13487801675127068722

`A098558(n+1)-A093464(n+1)`
-/

namespace A093463.P13487801675127068722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098558 (n + 1) - A093464 (n + 1)

end

end A093463.P13487801675127068722

/-! ## A093463.P2069235878199287746

`A008683(A000041(A001222(n+1)))+(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A093463.P2069235878199287746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008683 (A000041 (A001222 (n + 1)).toNat).toNat + (n + 1 : ℤ) * a (n - 1)

end

end A093463.P2069235878199287746

/-! ## A093463.P5186861512082681175

`A182394(n^4)+(n+1)*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A093463.P5186861512082681175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A182394 (n ^ 4) + (n + 1 : ℤ) * a (n - 1)

end

end A093463.P5186861512082681175

/-! ## A093463.P11057128577506115812

`A014681(a(n-1))+n*a(n-1)` with `a(0)=1`
-/

namespace A093463.P11057128577506115812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014681 (a (n - 1)).toNat + (n : ℤ) * a (n - 1)

end

end A093463.P11057128577506115812

/-!
# A093464: a(1) = 1; for n>1, a(n) = n*a(n-1) - 1 if n is a prime else a(n) = n*a(n-1) + 1.

The programs for A093464, there is no canonical definition to state claims against.
-/

/-! ## A093464.P11430603744500678769

`A098558(n+1)-A093463(n+1)`
-/

namespace A093464.P11430603744500678769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098558 (n + 1) - A093463 (n + 1)

end

end A093464.P11430603744500678769

/-! ## A093464.P11286103665572672039

`A008683(A089026(n+1))+(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A093464.P11286103665572672039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008683 (A089026 (n + 1)).toNat + (n + 1 : ℤ) * a (n - 1)

end

end A093464.P11286103665572672039

/-! ## A093464.P16369466361670448328

`(n+1)*a(n-1)-A008683(A000041(A001222(n+1)))` with `a(0)=1`
-/

namespace A093464.P16369466361670448328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * a (n - 1) - A008683 (A000041 (A001222 (n + 1)).toNat).toNat

end

end A093464.P16369466361670448328

/-! ## A093464.P16662798041519525709

`or(A072839(n), A188813(A000124(n)))`
-/

namespace A093464.P16662798041519525709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A072839 n) (A188813 (A000124 n).toNat)

end

end A093464.P16662798041519525709

/-! ## A093464.P6377456573058255359

`or(A000166(A001104(n+1)), A219491(n))`
-/

namespace A093464.P6377456573058255359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000166 (A001104 (n + 1)).toNat) (A219491 n)

end

end A093464.P6377456573058255359

/-!
# A093466: Triangle read by rows: T(n,k) is the number of n X n binary matrices with k=0...n^2 ones, distinct up to cyclic shifts of rows and columns; reflection through any vertical or horizontal axis; and reflection through the main diagonal. Also, quasi-n-ominoes on a torus divided into a k X k grid.

The programs for A093466, there is no canonical definition to state claims against.
-/

/-! ## A093466.P6281961910952777379

`A082892(A054772(n))`
-/

namespace A093466.P6281961910952777379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082892 (A054772 n).toNat

end

end A093466.P6281961910952777379

/-!
# A093467: a(1) = 1, a(2) = 2; for n >= 2, a(n+1) = a(n) + Sum_{i = 1..n} (a(i) - a(1)).

The programs for A093467, the canonical program `A093467.P12839904867116062790` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093467 has offset 1).

The definition of A093467 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093467.P4986177720683968603

`ogf((1-2x-x^2+x^3)/(1-4x+4x^2-x^3))`
-/

namespace A093467.P4986177720683968603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -1, 1] [1, -4, 4, -1] n

end

end A093467.P4986177720683968603

namespace A093467

/-- `ogf((1-2x-x^2+x^3)/(1-4x+4x^2-x^3))` -/
def P4986177720683968603.Spec : Prop :=
  ∀ n, P4986177720683968603.a n = A093467 (n + 1)

end A093467

/-! ## A093467.P12839904867116062790

`3*a(n-1)-a(n-2)-1` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A093467

/-- `3*a(n-1)-a(n-2)-1` -/
def P12839904867116062790.Spec : Prop :=
  ∀ n, P12839904867116062790.a n = A093467 (n + 1)

theorem P12839904867116062790.correct : P12839904867116062790.Spec := by
  intro n
  simp only [A093467, Nat.add_sub_cancel]

end A093467

/-! ## A093467.P11144244778873824863

`∑[ogf((1-2x-x^2+x^3)/(1-3x+x^2))]`
-/

namespace A093467.P11144244778873824863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -1, 1] [1, -3, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093467.P11144244778873824863

namespace A093467

/-- `∑[ogf((1-2x-x^2+x^3)/(1-3x+x^2))]` -/
def P11144244778873824863.Spec : Prop :=
  ∀ n, P11144244778873824863.a n = A093467 (n + 1)

end A093467

/-! ## A093467.P1189614044682699669

`∑[ceil(ϕ²*a(n-1))]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A093467.P1189614044682699669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  ⌈Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093467.P1189614044682699669

namespace A093467

/-- `∑[ceil(ϕ²*a(n-1))]` -/
def P1189614044682699669.Spec : Prop :=
  ∀ n, P1189614044682699669.a n = A093467 (n + 1)

end A093467

/-! ## A093467.P2514593440372340720

`record[3-round(ϕ*a(n-1))]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A093467.P2514593440372340720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  3 - SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093467.P2514593440372340720

namespace A093467

/-- `record[3-round(ϕ*a(n-1))]` -/
def P2514593440372340720.Spec : Prop :=
  ∀ n, P2514593440372340720.a n = A093467 (n + 1)

end A093467

/-! ## A093467.P17808079363227901327

`round(ϕ*ϕ*a(n-1))-2` with `a(0)=1, a(1)=2`
-/

namespace A093467.P17808079363227901327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (Real.goldenRatio * (a (n - 1) : ℝ))) - 2

end

end A093467.P17808079363227901327

namespace A093467

/-- `round(ϕ*ϕ*a(n-1))-2` -/
def P17808079363227901327.Spec : Prop :=
  ∀ n, P17808079363227901327.a n = A093467 (n + 1)

end A093467

/-! ## A093467.P327963592041495616

`ceil((ϕ+1)*a(n-1))-2` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A093467.P327963592041495616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  ⌈(Real.goldenRatio + 1) * (a (n - 1) : ℝ)⌉ - 2

end

end A093467.P327963592041495616

namespace A093467

/-- `ceil((ϕ+1)*a(n-1))-2` -/
def P327963592041495616.Spec : Prop :=
  ∀ n, P327963592041495616.a n = A093467 (n + 1)

end A093467

/-! ## A093467.P16760432736471134498

`record[a(n-2)-a(n-1)]+1` with `a(0)=0, a(1)=1`
-/

namespace A093467.P16760432736471134498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A093467.P16760432736471134498

namespace A093467

/-- `record[a(n-2)-a(n-1)]+1` -/
def P16760432736471134498.Spec : Prop :=
  ∀ n, P16760432736471134498.a n = A093467 (n + 1)

end A093467

/-! ## A093467.P5341557265789768684

`record[1-(a(n-1)-a(n-2))]` with `a(0)=1, a(1)=2`
-/

namespace A093467.P5341557265789768684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  1 - (f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093467.P5341557265789768684

namespace A093467

/-- `record[1-(a(n-1)-a(n-2))]` -/
def P5341557265789768684.Spec : Prop :=
  ∀ n, P5341557265789768684.a n = A093467 (n + 1)

end A093467

/-! ## A093467.P1388012967723270280

`3*a(n-1)-(a(n-2)+1)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A093467.P1388012967723270280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  3 * a (n - 1) - (a (n - 2) + 1)

end

end A093467.P1388012967723270280

namespace A093467

/-- `3*a(n-1)-(a(n-2)+1)` -/
def P1388012967723270280.Spec : Prop :=
  ∀ n, P1388012967723270280.a n = A093467 (n + 1)

theorem P1388012967723270280.correct : P1388012967723270280.Spec := by
  intro n
  simp only [A093467, Nat.add_sub_cancel, A093467.P1388012967723270280.a, A093467.P12839904867116062790.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A093467

/-! ## A093467.P11308194600803036131

`2-A186025(n)`
-/

namespace A093467.P11308194600803036131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A186025 n

end

end A093467.P11308194600803036131

namespace A093467

/-- `2-A186025(n)` -/
def P11308194600803036131.Spec : Prop :=
  ∀ n, P11308194600803036131.a n = A093467 (n + 1)

end A093467

/-! ## A093467.P14006103752303685939

`record[2-A355020(n)]`
-/

namespace A093467.P14006103752303685939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A355020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093467.P14006103752303685939

namespace A093467

/-- `record[2-A355020(n)]` -/
def P14006103752303685939.Spec : Prop :=
  ∀ n, P14006103752303685939.a n = A093467 (n + 1)

end A093467

/-! ## A093467.P16628222980051323820

`∑[A088305(abs(1-n))]`
-/

namespace A093467.P16628222980051323820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093467.P16628222980051323820

namespace A093467

/-- `∑[A088305(abs(1-n))]` -/
def P16628222980051323820.Spec : Prop :=
  ∀ n, P16628222980051323820.a n = A093467 (n + 1)

end A093467

/-! ## A093467.P8347733215932692591

`record[A119282(n+1)+2]`
-/

namespace A093467.P8347733215932692591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093467.P8347733215932692591

namespace A093467

/-- `record[A119282(n+1)+2]` -/
def P8347733215932692591.Spec : Prop :=
  ∀ n, P8347733215932692591.a n = A093467 (n + 1)

end A093467

/-! ## A093467.P16062767079696068003

`∑[A000045(abs(2-n)+n)]`
-/

namespace A093467.P16062767079696068003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (|2 - (n : ℤ)| + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093467.P16062767079696068003

namespace A093467

/-- `∑[A000045(abs(2-n)+n)]` -/
def P16062767079696068003.Spec : Prop :=
  ∀ n, P16062767079696068003.a n = A093467 (n + 1)

end A093467

/-! ## A093467.P11041167185277647953

`A000045(comp[2*(n+1)])+1`
-/

namespace A093467.P11041167185277647953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1

end

end A093467.P11041167185277647953

namespace A093467

/-- `A000045(comp[2*(n+1)])+1` -/
def P11041167185277647953.Spec : Prop :=
  ∀ n, P11041167185277647953.a n = A093467 (n + 1)

end A093467

/-! ## A093467.P2570539829068168636

`record[A000045(lcm(8, n)/8)+1]`
-/

namespace A093467.P2570539829068168636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((Nat.lcm 8 n : ℚ) / 8)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093467.P2570539829068168636

namespace A093467

/-- `record[A000045(lcm(8, n)/8)+1]` -/
def P2570539829068168636.Spec : Prop :=
  ∀ n, P2570539829068168636.a n = A093467 (n + 1)

end A093467

/-! ## A093467.P18355422331264997379

`ceil((A000045(2*n)+1)/ϕ)`
-/

namespace A093467.P18355422331264997379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000045 (2 * n) + 1 : ℝ) / Real.goldenRatio⌉

end

end A093467.P18355422331264997379

namespace A093467

/-- `ceil((A000045(2*n)+1)/ϕ)` -/
def P18355422331264997379.Spec : Prop :=
  ∀ n, P18355422331264997379.a n = A093467 (n + 1)

end A093467

/-! ## A093467.P14936215835899410716

`record[n%2*A000045(n)+1]`
-/

namespace A093467.P14936215835899410716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A000045 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093467.P14936215835899410716

namespace A093467

/-- `record[n%2*A000045(n)+1]` -/
def P14936215835899410716.Spec : Prop :=
  ∀ n, P14936215835899410716.a n = A093467 (n + 1)

end A093467

/-!
# A093468: a(1) = 1, a(2) = 2; for n >= 2, a(n+1) = a(n) + Sum {a(n)-a(i), i = 1 to n}.

The programs for A093468, the canonical program `A093468.P479063714323299587` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093468 has offset 1).

The definition of A093468 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093468.P479063714323299587

`(n+1)*a(n-1)-n*a(n-2)` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A093468

/-- `(n+1)*a(n-1)-n*a(n-2)` -/
def P479063714323299587.Spec : Prop :=
  ∀ n, P479063714323299587.a n = A093468 (n + 1)

theorem P479063714323299587.correct : P479063714323299587.Spec := by
  intro n
  simp only [A093468, Nat.add_sub_cancel]

end A093468

/-! ## A093468.P2550959746970759030

`A014288(n)+1`
-/

namespace A093468.P2550959746970759030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014288 n + 1

end

end A093468.P2550959746970759030

namespace A093468

/-- `A014288(n)+1` -/
def P2550959746970759030.Spec : Prop :=
  ∀ n, P2550959746970759030.a n = A093468 (n + 1)

end A093468

/-! ## A093468.P15683969044241823073

`∑[∏[gcd(n, C(2, n))]]`
-/

namespace A093468.P15683969044241823073
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.choose 2 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093468.P15683969044241823073

namespace A093468

/-- `∑[∏[gcd(n, C(2, n))]]` -/
def P15683969044241823073.Spec : Prop :=
  ∀ n, (P15683969044241823073.a n : ℤ) = A093468 (n + 1)

end A093468

/-! ## A093468.P18223781744215708855

`∑[∏[n^(1-C(2, n))]]`
-/

namespace A093468.P18223781744215708855
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (1 - (Nat.choose 2 n : ℤ) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093468.P18223781744215708855

namespace A093468

/-- `∑[∏[n^(1-C(2, n))]]` -/
def P18223781744215708855.Spec : Prop :=
  ∀ n, P18223781744215708855.a n = (A093468 (n + 1) : ℚ)

end A093468

/-! ## A093468.P4133768408933059390

`∑[∏[C(n, n^C(2, n))]]`
-/

namespace A093468.P4133768408933059390
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (n ^ Nat.choose 2 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093468.P4133768408933059390

namespace A093468

/-- `∑[∏[C(n, n^C(2, n))]]` -/
def P4133768408933059390.Spec : Prop :=
  ∀ n, (P4133768408933059390.a n : ℤ) = A093468 (n + 1)

end A093468

/-! ## A093468.P13609500412557906074

`∑[∏[n^ceil(tanh(n-2))]]`
-/

namespace A093468.P13609500412557906074
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (⌈Real.tanh ((n : ℤ) - 2 : ℝ)⌉ : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093468.P13609500412557906074

namespace A093468

/-- `∑[∏[n^ceil(tanh(n-2))]]` -/
def P13609500412557906074.Spec : Prop :=
  ∀ n, P13609500412557906074.a n = (A093468 (n + 1) : ℚ)

end A093468

/-! ## A093468.P14518695889753069630

`∑[n*a(n-1)]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A093468.P14518695889753069630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093468.P14518695889753069630

namespace A093468

/-- `∑[n*a(n-1)]` -/
def P14518695889753069630.Spec : Prop :=
  ∀ n, (P14518695889753069630.a n : ℤ) = A093468 (n + 1)

end A093468

/-! ## A093468.P30202532712134042

`∑[∏[n^round(n/(n+3))]]`
-/

namespace A093468.P30202532712134042
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (SequenceMachineLib.roundAway ((n : ℚ) / (n + 3 : ℚ)) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093468.P30202532712134042

namespace A093468

/-- `∑[∏[n^round(n/(n+3))]]` -/
def P30202532712134042.Spec : Prop :=
  ∀ n, P30202532712134042.a n = (A093468 (n + 1) : ℚ)

end A093468

/-! ## A093468.P12172201412638590885

`a(n-1)-n*(a(n-2)-a(n-1))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A093468.P12172201412638590885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 1) - (n : ℤ) * (a (n - 2) - a (n - 1))

end

end A093468.P12172201412638590885

namespace A093468

/-- `a(n-1)-n*(a(n-2)-a(n-1))` -/
def P12172201412638590885.Spec : Prop :=
  ∀ n, P12172201412638590885.a n = A093468 (n + 1)

end A093468

/-! ## A093468.P5939660381961905438

`a(n-1)+A001710(n)` with `a(0)=1`
-/

namespace A093468.P5939660381961905438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A001710 n

end

end A093468.P5939660381961905438

namespace A093468

/-- `a(n-1)+A001710(n)` -/
def P5939660381961905438.Spec : Prop :=
  ∀ n, P5939660381961905438.a n = A093468 (n + 1)

end A093468

/-!
# A093469: Number of 6 X 6 binary matrices with n ones, distinct up to cyclic shifts of rows and/or columns; reflection through any vertical or horizontal axis; and reflection through the main diagonal. Also number of quasi-n-ominoes on a torus divided into a 6 X 6 grid.

The programs for A093469, there is no canonical definition to state claims against.
-/

/-! ## A093469.P7897386926337858941

`A093466(A266916(n+2))`
-/

namespace A093469.P7897386926337858941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093466 (A266916 (n + 2)).toNat

end

end A093469.P7897386926337858941

/-!
# A093470: a(n) = floor(n^(1/n)*10^n).

The programs for A093470, the canonical program `A093470.P13800341847904951309` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093470 has offset 1).

The definition of A093470 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)^(1/(n+1))*10^(n+1))` (program `A093470.P13800341847904951309`, by `A093470.P13800341847904951309.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093470.P13800341847904951309

`floor((n+1)^(1/(n+1))*10^(n+1))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A093470

/-- `floor((n+1)^(1/(n+1))*10^(n+1))` -/
def P13800341847904951309.Spec : Prop :=
  ∀ n, P13800341847904951309.a n = A093470 (n + 1)

theorem P13800341847904951309.correct : P13800341847904951309.Spec := by
  intro n
  simp only [A093470, Nat.add_sub_cancel]

end A093470

/-!
# A093471: a(n) = floor(n^(1/2)*10^n).

The programs for A093471, there is no canonical definition to state claims against.
-/

/-! ## A093471.P8505983001458400241

`floor(sqrt(n+1)*10^(n+1))`
-/

namespace A093471.P8505983001458400241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (n + 1 : ℝ) * (10 ^ (n + 1) : ℝ)⌋

end

end A093471.P8505983001458400241

/-!
# A093475: Beginning with 1, numbers such that no term can arise as a substring of the right concatenation of any combination of the previous terms.

The programs for A093475, there is no canonical definition to state claims against.
-/

/-! ## A093475.P8859272336523752954

`A080459(n+1)+A000035(A083209(3*n+1))`
-/

namespace A093475.P8859272336523752954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080459 (n + 1) + A000035 (A083209 (3 * n + 1)).toNat

end

end A093475.P8859272336523752954

/-! ## A093475.P7626138208998924768

`record[A051596(n+1)%(9*(n+1))]`
-/

namespace A093475.P7626138208998924768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051596 (n + 1)) (9 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093475.P7626138208998924768

/-! ## A093475.P2698383431370491663

`∑[A333271(Δ[A048335(n+1)])]`
-/

namespace A093475.P2698383431370491663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048335 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333271 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093475.P2698383431370491663

/-! ## A093475.P18247752855530451866

`eq[A001263(A206487(n+1)), A055640(n)]`
-/

namespace A093475.P18247752855530451866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A206487 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093475.P18247752855530451866

/-! ## A093475.P5268300803393295741

`∪[A037124(n+1), A399972(A066380(n))]`
-/

namespace A093475.P5268300803393295741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399972 (A066380 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A093475.P5268300803393295741

/-!
# A093476: Index of occurrence of the first 0 bit in binary representation of 3^n.

The programs for A093476, there is no canonical definition to state claims against.
-/

/-! ## A093476.P5546502387488751209

`A248138((n+3)*A008620(n))`
-/

namespace A093476.P5546502387488751209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248138 ((n + 3 : ℤ) * A008620 n).toNat

end

end A093476.P5546502387488751209

/-! ## A093476.P14883594061583699069

`p?[A055943(A275709(n)^and(1, n+1))]%7`
-/

namespace A093476.P14883594061583699069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055943 (A275709 n ^ Nat.land 1 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 7

end

end A093476.P14883594061583699069

/-! ## A093476.P7823886523896472026

`p?[A055942(n)]%A328613(A187829(n+1))`
-/

namespace A093476.P7823886523896472026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A328613 (A187829 (n + 1)).toNat)

end

end A093476.P7823886523896472026

/-! ## A093476.P12213675555335735010

`A007978(A046022(n+1)*A105599(n+1))`
-/

namespace A093476.P12213675555335735010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (A046022 (n + 1) * A105599 (n + 1)).toNat

end

end A093476.P12213675555335735010

/-! ## A093476.P10514687174811463671

`A316990(A384180(n+2))`
-/

namespace A093476.P10514687174811463671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316990 (A384180 (n + 2)).toNat

end

end A093476.P10514687174811463671

/-!
# A093479: Number of regular (infinite) apeirotopes of full rank in n-dimensional space.

The programs for A093479, the canonical program `A093479.P14227286363130198947` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093479 has offset 0).

The definition of A093479 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093479.P14227286363130198947

`ogf((x+5x^2+2x^3+10x^4-10x^5)/(1-x))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A093479

/-- `ogf((x+5x^2+2x^3+10x^4-10x^5)/(1-x))` -/
def P14227286363130198947.Spec : Prop :=
  ∀ n, P14227286363130198947.a n = A093479 n

theorem P14227286363130198947.correct : P14227286363130198947.Spec := by
  intro n
  simp only [A093479]

end A093479

/-!
# A093480: Numbers k such that k^3 - (k-1)^2 is prime.

The programs for A093480, there is no canonical definition to state claims against.
-/

/-! ## A093480.P15766611005019511857

`ceil(root(A154113(n+1), 3))`
-/

namespace A093480.P15766611005019511857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A154113 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉

end

end A093480.P15766611005019511857

/-! ## A093480.P16874529657974118275

`round(root(A154113(-xor(n, -1)), 3))`
-/

namespace A093480.P16874529657974118275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A154113 (-Int.xor (n : ℤ) (-1)).toNat : ℝ) ^ (1 / (3 : ℝ)))

end

end A093480.P16874529657974118275

/-! ## A093480.P4878192980101610137

`round(root(A154113(C(n+1, n)), 3))`
-/

namespace A093480.P4878192980101610137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A154113 (Nat.choose (n + 1) n) : ℝ) ^ (1 / (3 : ℝ)))

end

end A093480.P4878192980101610137

/-! ## A093480.P10523682545892960694

`round(root(A154113(Δ[n²]-n), 3))`
-/

namespace A093480.P10523682545892960694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A154113 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ) ^ (1 / (3 : ℝ)))

end

end A093480.P10523682545892960694

/-! ## A093480.P5622175724290771880

`floor(root(A154113(abs(2*n-n)+1), 3))+1`
-/

namespace A093480.P5622175724290771880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A154113 (|(2 * n : ℤ) - (n : ℤ)| + 1).toNat : ℝ) ^ (1 / (3 : ℝ))⌋ + 1

end

end A093480.P5622175724290771880

/-! ## A093480.P14034382604859938205

`A000027(round(root(A154113(n+1), 3)))`
-/

namespace A093480.P14034382604859938205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A154113 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

end

end A093480.P14034382604859938205

/-! ## A093480.P8558405985420662021

`A008683(4*(n+1))+round(root(A154113(n+1), 3))`
-/

namespace A093480.P8558405985420662021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) + SequenceMachineLib.roundAway ((A154113 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))

end

end A093480.P8558405985420662021

/-! ## A093480.P1386271031366173832

`round(root(A154113(n+1), 3))%A000041(n+3)`
-/

namespace A093480.P1386271031366173832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A154113 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))) (A000041 (n + 3))

end

end A093480.P1386271031366173832

/-! ## A093480.P13852816651525699773

`A154112(n+1)+1`
-/

namespace A093480.P13852816651525699773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154112 (n + 1) + 1

end

end A093480.P13852816651525699773

/-! ## A093480.P15650933059967824872

`A020725(A154112(n+1))`
-/

namespace A093480.P15650933059967824872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A154112 (n + 1)).toNat

end

end A093480.P15650933059967824872

/-!
# A093481: Least k such that (2n + k) + 1 and (2n*k) + 1 are both primes.

The programs for A093481, there is no canonical definition to state claims against.
-/

/-! ## A093481.P1259358098726688438

`2*A093312(n+1)`
-/

namespace A093481.P1259358098726688438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093312 (n + 1)

end

end A093481.P1259358098726688438

/-! ## A093481.P6045416251027889397

`A004277(A093312(1+n))`
-/

namespace A093481.P6045416251027889397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A093312 (1 + n)).toNat

end

end A093481.P6045416251027889397

/-! ## A093481.P6365147157836837603

`A004275(A093312(n+1)+1)`
-/

namespace A093481.P6365147157836837603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A093312 (n + 1) + 1).toNat

end

end A093481.P6365147157836837603

/-! ## A093481.P6717669860312609612

`A005843(A093312(n+1)%(n+4)²)`
-/

namespace A093481.P6717669860312609612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A093312 (n + 1)) ((n + 4) ^ 2 : ℤ)).toNat

end

end A093481.P6717669860312609612

/-! ## A093481.P7769033122541395714

`A093312(∑[n+1]-∑[n])+A093312(n+1)`
-/

namespace A093481.P7769033122541395714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093312 (∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j) + A093312 (n + 1)

end

end A093481.P7769033122541395714

/-! ## A093481.P17614412856438301564

`A005843(lcm(A093312(n+1), A131554(n)))`
-/

namespace A093481.P17614412856438301564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.lcm (A093312 (n + 1)) (A131554 n))

end

end A093481.P17614412856438301564

/-! ## A093481.P5156182644682442467

`A005843(or(A000007(n), A093312(n+1)))`
-/

namespace A093481.P5156182644682442467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.lor (A000007 n) (A093312 (n + 1))).toNat

end

end A093481.P5156182644682442467

/-! ## A093481.P9412353535585887636

`A000267(A093312(n+1)²)`
-/

namespace A093481.P9412353535585887636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A093312 (n + 1) ^ 2).toNat

end

end A093481.P9412353535585887636

/-! ## A093481.P15034715786976064487

`A001670(A093312(n+1)²)`
-/

namespace A093481.P15034715786976064487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001670 (A093312 (n + 1) ^ 2).toNat

end

end A093481.P15034715786976064487

/-! ## A093481.P14936120967779879306

`A027434(A093312(n+1)²)`
-/

namespace A093481.P14936120967779879306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (A093312 (n + 1) ^ 2).toNat

end

end A093481.P14936120967779879306

/-!
# A093483: a(1) = 2; for n>1, a(n) = smallest integer > a(n-1) such that a(n) + a(i) + 1 is prime for all 1 <= i <= n-1.

The programs for A093483, there is no canonical definition to state claims against.
-/

/-! ## A093483.P5619831475864144799

`floor(A180565(n+1)/2)`
-/

namespace A093483.P5619831475864144799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A180565 (n + 1) : ℚ) / 2⌋

end

end A093483.P5619831475864144799

/-! ## A093483.P213664102248102601

`(A180565(A000027(n+1))-1)/2`
-/

namespace A093483.P213664102248102601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180565 (A000027 (n + 1)).toNat - 1 : ℚ) / 2

end

end A093483.P213664102248102601

/-! ## A093483.P10160995470269760847

`(A180565(A090107(n+1))-1)/2`
-/

namespace A093483.P10160995470269760847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180565 (A090107 (n + 1)).toNat - 1 : ℚ) / 2

end

end A093483.P10160995470269760847

/-! ## A093483.P7936557584300221175

`(A180565(A180493(n+1))-1)/2`
-/

namespace A093483.P7936557584300221175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180565 (A180493 (n + 1)).toNat - 1 : ℚ) / 2

end

end A093483.P7936557584300221175

/-! ## A093483.P1675537285582252705

`ceil(A180565(n+1)/2)-A226273(A008624(n))`
-/

namespace A093483.P1675537285582252705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A180565 (n + 1) : ℚ) / 2⌉ - A226273 (A008624 n).toNat

end

end A093483.P1675537285582252705

/-!
# A093485: a(n) = (27*n^2 + 9*n + 2)/2.

The programs for A093485, the canonical program `A093485.P10182499291451249455` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093485 has offset 0).

The definition of A093485 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(27*n²+9*n+2)/2` (program `A093485.P17735267866048767445`, by `A093485.P17735267866048767445.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093485.P2848413452537559072

`ogf((1+16x+10x^2)/(1-3x+3x^2-x^3))`
-/

namespace A093485.P2848413452537559072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 16, 10] [1, -3, 3, -1] n

end

end A093485.P2848413452537559072

namespace A093485

/-- `ogf((1+16x+10x^2)/(1-3x+3x^2-x^3))` -/
def P2848413452537559072.Spec : Prop :=
  ∀ n, P2848413452537559072.a n = A093485 n

end A093485

/-! ## A093485.P17735267866048767445

`(27*n²+9*n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A093485.P17735267866048767445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (27 * n ^ 2 + 9 * n + 2 : ℚ) / 2

end

end A093485.P17735267866048767445

namespace A093485

/-- `(27*n²+9*n+2)/2` -/
def P17735267866048767445.Spec : Prop :=
  ∀ n, P17735267866048767445.a n = (A093485 n : ℚ)

theorem P17735267866048767445.correct : P17735267866048767445.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A093485, Nat.add_sub_cancel, A093485.P17735267866048767445.a, A093485.P10182499291451249455.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A093485, Nat.add_sub_cancel, A093485.P17735267866048767445.a, A093485.P10182499291451249455.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A093485

/-! ## A093485.P10182499291451249455

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=19, a(2)=64`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A093485

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P10182499291451249455.Spec : Prop :=
  ∀ n, P10182499291451249455.a n = A093485 n

theorem P10182499291451249455.correct : P10182499291451249455.Spec := by
  intro n
  simp only [A093485]

end A093485

/-! ## A093485.P12419771817141283591

`Δ[C(3*n, 3)]`
-/

namespace A093485.P12419771817141283591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A093485.P12419771817141283591

namespace A093485

/-- `Δ[C(3*n, 3)]` -/
def P12419771817141283591.Spec : Prop :=
  ∀ n, P12419771817141283591.a n = A093485 n

end A093485

/-! ## A093485.P11220305552366275002

`∑[a(n-1)+27]` with `a(0)=1, a(1)=18`
-/

namespace A093485.P11220305552366275002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 18] fun n f1 =>
  f1 (n - 1) + 27

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093485.P11220305552366275002

namespace A093485

/-- `∑[a(n-1)+27]` -/
def P11220305552366275002.Spec : Prop :=
  ∀ n, (P11220305552366275002.a n : ℤ) = A093485 n

end A093485

/-! ## A093485.P10795991908295641197

`a(n-1)+3*(3*n-1)*3` with `a(0)=1`
-/

namespace A093485.P10795991908295641197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 3 * (((3 * n : ℤ) - 1) * 3)

end

end A093485.P10795991908295641197

namespace A093485

/-- `a(n-1)+3*(3*n-1)*3` -/
def P10795991908295641197.Spec : Prop :=
  ∀ n, P10795991908295641197.a n = A093485 n

end A093485

/-! ## A093485.P8344857585296968385

`3*A081266(n)+1`
-/

namespace A093485.P8344857585296968385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A081266 n + 1

end

end A093485.P8344857585296968385

namespace A093485

/-- `3*A081266(n)+1` -/
def P8344857585296968385.Spec : Prop :=
  ∀ n, P8344857585296968385.a n = A093485 n

end A093485

/-! ## A093485.P2423518525920660293

`3*A038764(n)-2`
-/

namespace A093485.P2423518525920660293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A038764 n - 2

end

end A093485.P2423518525920660293

namespace A093485

/-- `3*A038764(n)-2` -/
def P2423518525920660293.Spec : Prop :=
  ∀ n, P2423518525920660293.a n = A093485 n

end A093485

/-! ## A093485.P8930488023749221003

`A144312(n)+(n+1)²`
-/

namespace A093485.P8930488023749221003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144312 n + ((n + 1) ^ 2 : ℤ)

end

end A093485.P8930488023749221003

namespace A093485

/-- `A144312(n)+(n+1)²` -/
def P8930488023749221003.Spec : Prop :=
  ∀ n, P8930488023749221003.a n = A093485 n

end A093485

/-! ## A093485.P185992642136981838

`abs(2-3*(A000217(3*n)+1))`
-/

namespace A093485.P185992642136981838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - 3 * (A000217 (3 * n) + 1)|

end

end A093485.P185992642136981838

namespace A093485

/-- `abs(2-3*(A000217(3*n)+1))` -/
def P185992642136981838.Spec : Prop :=
  ∀ n, P185992642136981838.a n = A093485 n

end A093485

/-! ## A093485.P12630095343937190054

`ceil((9*n*A016777(n)+1)/2)`
-/

namespace A093485.P12630095343937190054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(9 * ((n : ℤ) * A016777 n) + 1 : ℚ) / 2⌉

end

end A093485.P12630095343937190054

namespace A093485

/-- `ceil((9*n*A016777(n)+1)/2)` -/
def P12630095343937190054.Spec : Prop :=
  ∀ n, P12630095343937190054.a n = A093485 n

end A093485

/-! ## A093485.P2426043652341176159

`A022271(n)+A005892(n)`
-/

namespace A093485.P2426043652341176159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022271 n + A005892 n

end

end A093485.P2426043652341176159

namespace A093485

/-- `A022271(n)+A005892(n)` -/
def P2426043652341176159.Spec : Prop :=
  ∀ n, P2426043652341176159.a n = A093485 n

end A093485

/-! ## A093485.P1344472985396422909

`A033571(n)+A001106(n)`
-/

namespace A093485.P1344472985396422909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033571 n + A001106 n

end

end A093485.P1344472985396422909

namespace A093485

/-- `A033571(n)+A001106(n)` -/
def P1344472985396422909.Spec : Prop :=
  ∀ n, P1344472985396422909.a n = A093485 n

end A093485

/-! ## A093485.P1980213246828768595

`A022277(n)+A016754(n)`
-/

namespace A093485.P1980213246828768595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022277 n + A016754 n

end

end A093485.P1980213246828768595

namespace A093485

/-- `A022277(n)+A016754(n)` -/
def P1980213246828768595.Spec : Prop :=
  ∀ n, P1980213246828768595.a n = A093485 n

end A093485

/-! ## A093485.P12607032686376447490

`A022285(n)+A016813(n)`
-/

namespace A093485.P12607032686376447490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022285 n + A016813 n

end

end A093485.P12607032686376447490

namespace A093485

/-- `A022285(n)+A016813(n)` -/
def P12607032686376447490.Spec : Prop :=
  ∀ n, P12607032686376447490.a n = A093485 n

end A093485

/-! ## A093485.P7344868567615081873

`A022284(n)+A016861(n)`
-/

namespace A093485.P7344868567615081873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022284 n + A016861 n

end

end A093485.P7344868567615081873

namespace A093485

/-- `A022284(n)+A016861(n)` -/
def P7344868567615081873.Spec : Prop :=
  ∀ n, P7344868567615081873.a n = A093485 n

end A093485

/-! ## A093485.P18020895388915539493

`A033570(n)+A022272(n)`
-/

namespace A093485.P18020895388915539493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033570 n + A022272 n

end

end A093485.P18020895388915539493

namespace A093485

/-- `A033570(n)+A022272(n)` -/
def P18020895388915539493.Spec : Prop :=
  ∀ n, P18020895388915539493.a n = A093485 n

end A093485

/-! ## A093485.P9001890786808363728

`A062741(n)+A016778(n)`
-/

namespace A093485.P9001890786808363728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062741 n + A016778 n

end

end A093485.P9001890786808363728

namespace A093485

/-- `A062741(n)+A016778(n)` -/
def P9001890786808363728.Spec : Prop :=
  ∀ n, P9001890786808363728.a n = A093485 n

end A093485

/-! ## A093485.P9120915710968829413

`A045945(n)+A038764(n)`
-/

namespace A093485.P9120915710968829413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045945 n + A038764 n

end

end A093485.P9120915710968829413

namespace A093485

/-- `A045945(n)+A038764(n)` -/
def P9120915710968829413.Spec : Prop :=
  ∀ n, P9120915710968829413.a n = A093485 n

end A093485

/-! ## A093485.P4920423058975358381

`A081268(n)+A013656(n)`
-/

namespace A093485.P4920423058975358381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081268 n + A013656 n

end

end A093485.P4920423058975358381

namespace A093485

/-- `A081268(n)+A013656(n)` -/
def P4920423058975358381.Spec : Prop :=
  ∀ n, P4920423058975358381.a n = A093485 n

end A093485

/-!
# A093487: Smallest prime that begins with the digit reversal of prime(n).

The programs for A093487, there is no canonical definition to state claims against.
-/

/-! ## A093487.P5926544849060409924

`A018800(A004087(n+1))`
-/

namespace A093487.P5926544849060409924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018800 (A004087 (n + 1)).toNat

end

end A093487.P5926544849060409924

/-! ## A093487.P5955366753632655919

`A018800(A004086(p?[A001057(n)]))`
-/

namespace A093487.P5955366753632655919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018800 (A004086 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A093487.P5955366753632655919

/-! ## A093487.P2755549014561751851

`A018800(A004086(p?[A006370(n)]))`
-/

namespace A093487.P2755549014561751851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018800 (A004086 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A093487.P2755549014561751851

/-! ## A093487.P3018185873655818215

`A018800(A004086(p?[A014681(n)]))`
-/

namespace A093487.P3018185873655818215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018800 (A004086 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A093487.P3018185873655818215

/-! ## A093487.P13246644773981598948

`A018800(A004086(p?[A110514(n)]))`
-/

namespace A093487.P13246644773981598948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018800 (A004086 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A093487.P13246644773981598948

/-! ## A093487.P3391970125765762924

`A018800(A004086(p?[A236348(n)]))`
-/

namespace A093487.P3391970125765762924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018800 (A004086 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A093487.P3391970125765762924

/-! ## A093487.P16893724545448150928

`A018800(A004086(A000040(n+1)))`
-/

namespace A093487.P16893724545448150928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018800 (A004086 (A000040 (n + 1)).toNat).toNat

end

end A093487.P16893724545448150928

/-! ## A093487.P2196413262648968383

`A018800(A004086(A216884(n+1)))`
-/

namespace A093487.P2196413262648968383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018800 (A004086 (A216884 (n + 1)).toNat).toNat

end

end A093487.P2196413262648968383

/-! ## A093487.P16686359176827493370

`A018800(A004086(p?[A000463(n+1)]))`
-/

namespace A093487.P16686359176827493370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018800 (A004086 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A093487.P16686359176827493370

/-! ## A093487.P15569588954455640593

`A018800(A133019(n+1)/A000040(n+1))`
-/

namespace A093487.P15569588954455640593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018800 (SequenceMachineLib.roundAway ((A133019 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ))).toNat

end

end A093487.P15569588954455640593

/-!
# A093488: Define the signature symmetry of a number n to be k if n-r and n+r have the same prime signature for r = 1 to k but not for k+1. Sequence contains the signature symmetry of n.

The programs for A093488, there is no canonical definition to state claims against.
-/

/-! ## A093488.P17380037843450128034

`A353336(n+3)%A078929(A007534(n+1))`
-/

namespace A093488.P17380037843450128034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353336 (n + 3)) (A078929 (A007534 (n + 1)).toNat)

end

end A093488.P17380037843450128034

/-! ## A093488.P2353493019646154234

`val(A108501(A108467(n)), A108499(n+8))`
-/

namespace A093488.P2353493019646154234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A108501 (A108467 n).toNat).toNat (A108499 (n + 8)).toNat

end

end A093488.P2353493019646154234

/-! ## A093488.P10223995409921506846

`A000041(n)%A305875(A084564(n+1))`
-/

namespace A093488.P10223995409921506846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) (A305875 (A084564 (n + 1)).toNat)

end

end A093488.P10223995409921506846

/-! ## A093488.P640450954006217747

`and(A038769(n+1), A282665(A282647(n+1)))`
-/

namespace A093488.P640450954006217747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038769 (n + 1)) (A282665 (A282647 (n + 1)).toNat)

end

end A093488.P640450954006217747

/-! ## A093488.P1293614765161778471

`val(A327023(n), A001935(n)+2)`
-/

namespace A093488.P1293614765161778471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A327023 n).toNat (A001935 n + 2).toNat

end

end A093488.P1293614765161778471

/-!
# A093489: Define the total signature symmetry of a number n to be the number of values r takes such that n-r and n+r have the same prime signature. Sequence contains the total signature symmetry of n.

The programs for A093489, there is no canonical definition to state claims against.
-/

/-! ## A093489.P1764405267678103874

`n-A077563(2*(n+1))`
-/

namespace A093489.P1764405267678103874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A077563 (2 * (n + 1))

end

end A093489.P1764405267678103874

/-! ## A093489.P7683348804834092248

`A025581(A077563(2*(n+1))+A000217(n))`
-/

namespace A093489.P7683348804834092248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A077563 (2 * (n + 1)) + A000217 n).toNat

end

end A093489.P7683348804834092248

/-! ## A093489.P5385029366723771825

`A083891(A085629(n+1))%A000009(n)`
-/

namespace A093489.P5385029366723771825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083891 (A085629 (n + 1)).toNat) (A000009 n)

end

end A093489.P5385029366723771825

/-! ## A093489.P14242534643357865267

`A225541(C(comp[2*(n+3)], ∑{e}[n+1, #]))`
-/

namespace A093489.P14242534643357865267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225541 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

end

end A093489.P14242534643357865267

/-! ## A093489.P14534148627830494558

`A294937(n+1)+A001221(A077055(n))`
-/

namespace A093489.P14534148627830494558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (n + 1) + A001221 (A077055 n).toNat

end

end A093489.P14534148627830494558

/-!
# A093490: a(0) = 2; for n > 0, a(n) is the least prime of the form k*n*a(n-1) - 1.

The programs for A093490, there is no canonical definition to state claims against.
-/

/-! ## A093490.P7776162335117870684

`A139319(2*a(n-1))` with `a(0)=2`
-/

namespace A093490.P7776162335117870684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A139319 (2 * a (n - 1)).toNat

end

end A093490.P7776162335117870684

/-! ## A093490.P11849851073117858253

`A038700(a(n-1)*n)` with `a(0)=2`
-/

namespace A093490.P11849851073117858253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A038700 (a (n - 1) * (n : ℤ)).toNat

end

end A093490.P11849851073117858253

/-!
# A093492: Define the divisor symmetry of a number n to be k if n-r and n+r have the same number of divisors for r = 1 to k but not for k+1. Sequence contains the divisor symmetry of n.

The programs for A093492, there is no canonical definition to state claims against.
-/

/-! ## A093492.P9414268255267368804

`and(A225399(n), A265421(A001358(n+1)))`
-/

namespace A093492.P9414268255267368804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A225399 n) (A265421 (A001358 (n + 1)).toNat)

end

end A093492.P9414268255267368804

/-! ## A093492.P1988713358799975844

`and(A265421(A001358(n+1)), A333348(n))`
-/

namespace A093492.P1988713358799975844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A265421 (A001358 (n + 1)).toNat) (A333348 n)

end

end A093492.P1988713358799975844

/-! ## A093492.P10205377355650588915

`A225399(n*A285596(A225396(n)))`
-/

namespace A093492.P10205377355650588915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225399 ((n : ℤ) * A285596 (A225396 n).toNat).toNat

end

end A093492.P10205377355650588915

/-! ## A093492.P14756019227066260624

`and(A099244(n+1), A219636(A324039(n)))`
-/

namespace A093492.P14756019227066260624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099244 (n + 1)) (A219636 (A324039 n).toNat)

end

end A093492.P14756019227066260624

/-! ## A093492.P17810022642630829922

`A353377(A001402(n)*A022837(2*n+1))`
-/

namespace A093492.P17810022642630829922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353377 (A001402 n * A022837 (2 * n + 1)).toNat

end

end A093492.P17810022642630829922

/-!
# A093493: Define the total divisor symmetry of a number n to be the number of values r takes such that n-r and n+r have the same number of divisors. Sequence contains the total divisor symmetry of n.

The programs for A093493, there is no canonical definition to state claims against.
-/

/-! ## A093493.P11548147852735752803

`A333707(2*(n+1))`
-/

namespace A093493.P11548147852735752803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333707 (2 * (n + 1))

end

end A093493.P11548147852735752803

/-! ## A093493.P16726500943373176426

`A333626(2*(n+1))-1`
-/

namespace A093493.P16726500943373176426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333626 (2 * (n + 1)) - 1

end

end A093493.P16726500943373176426

/-! ## A093493.P7719268611679242285

`abs(1-A333626(n+2+n))`
-/

namespace A093493.P7719268611679242285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A333626 (n + 2 + n)|

end

end A093493.P7719268611679242285

/-! ## A093493.P5149304225009392605

`(A333626(Δ[n²]+1)-1)%(n+1)`
-/

namespace A093493.P5149304225009392605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333626 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat - 1) (n + 1 : ℤ)

end

end A093493.P5149304225009392605

/-! ## A093493.P8034457547638376053

`A023443(A333626(2*(n+1)))`
-/

namespace A093493.P8034457547638376053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A333626 (2 * (n + 1))).toNat

end

end A093493.P8034457547638376053

/-! ## A093493.P13450016717308280370

`A289207(A333626(2*(n+1))+1)`
-/

namespace A093493.P13450016717308280370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A333626 (2 * (n + 1)) + 1).toNat

end

end A093493.P13450016717308280370

/-! ## A093493.P3129933893464759437

`A118759(A333626(n+2+n)-1)`
-/

namespace A093493.P3129933893464759437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A333626 (n + 2 + n) - 1).toNat

end

end A093493.P3129933893464759437

/-! ## A093493.P823257263768503804

`A007318(C(2, n+2))+A333626(n+2+n)-2`
-/

namespace A093493.P823257263768503804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) + (A333626 (n + 2 + n) - 2)

end

end A093493.P823257263768503804

/-! ## A093493.P9646924052751900539

`A333626(n+2+n)-and(1, n)-A057427(A166586(n+1))`
-/

namespace A093493.P9646924052751900539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333626 (n + 2 + n) - (Nat.land 1 n : ℤ) - A057427 (A166586 (n + 1)).toNat

end

end A093493.P9646924052751900539

/-! ## A093493.P8788985334972998116

`A000040(n+1)+A333626(n+2+n)-(A006093(n+1)+2)`
-/

namespace A093493.P8788985334972998116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A333626 (n + 2 + n) - (A006093 (n + 1) + 2))

end

end A093493.P8788985334972998116

/-!
# A093499: Means referred to in A093498.

The programs for A093499, there is no canonical definition to state claims against.
-/

/-! ## A093499.P16978606633491394761

`A256450(n^A000994(n))`
-/

namespace A093499.P16978606633491394761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256450 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A000994 n : ℤ))).toNat

end

end A093499.P16978606633491394761

/-! ## A093499.P9544336136551128517

`A256450(n^A006966(n))`
-/

namespace A093499.P9544336136551128517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256450 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A006966 n : ℤ))).toNat

end

end A093499.P9544336136551128517

