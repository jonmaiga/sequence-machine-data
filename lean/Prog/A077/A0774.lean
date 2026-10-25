import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B006.C002
import Seq.B007.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A077400: Triangular numbers that are 7 times triangular numbers.

The programs for A077400, there is no canonical definition to state claims against.
-/

/-! ## A077400.P9320702769236409386

`7*A077399(n)`
-/

namespace A077400.P9320702769236409386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A077399 n

end

end A077400.P9320702769236409386

/-! ## A077400.P11526240535108327300

`A195917(n+1)-A077399(n)`
-/

namespace A077400.P11526240535108327300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195917 (n + 1) - A077399 n

end

end A077400.P11526240535108327300

/-! ## A077400.P5614719802614452310

`A161852(n+1)²-1-A077399(n)`
-/

namespace A077400.P5614719802614452310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161852 (n + 1) ^ 2 - 1 - A077399 n

end

end A077400.P5614719802614452310

/-! ## A077400.P984826645554959528

`7*(A077398(n)+A077398(n)²)/2`
-/

namespace A077400.P984826645554959528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * ((A077398 n + A077398 n ^ 2 : ℚ) / 2)

end

end A077400.P984826645554959528

/-! ## A077400.P6627318529870056675

`A007750(comp[or(2, n)-1])-A077399(n)`
-/

namespace A077400.P6627318529870056675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007750 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - A077399 n

end

end A077400.P6627318529870056675

/-! ## A077400.P16849709790642515178

`A007750(A014601(n))-A077399(n)`
-/

namespace A077400.P16849709790642515178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007750 (A014601 n).toNat - A077399 n

end

end A077400.P16849709790642515178

/-! ## A077400.P13420104573250871342

`C(A077401(n)+1, 2)`
-/

namespace A077400.P13420104573250871342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A077401 n + 1).toNat 2

end

end A077400.P13420104573250871342

/-!
# A077401: Second member of Diophantine pair (m,k) that satisfies 7*(m^2 + m) = k^2 + k; a(n) = k.

The programs for A077401, the canonical program `A077401.P17746106980255005460` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077401 has offset 0).

The definition of A077401 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077401.P17746106980255005460

`16*a(n-2)-a(n-4)+7` with `a(0)=0, a(1)=6, a(2)=14, a(3)=104`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077401

/-- `16*a(n-2)-a(n-4)+7` -/
def P17746106980255005460.Spec : Prop :=
  ∀ n, P17746106980255005460.a n = A077401 n

theorem P17746106980255005460.correct : P17746106980255005460.Spec := by
  intro n
  simp only [A077401]

end A077401

/-! ## A077401.P1907477809205524690

`ceil(sqrt(7)*A077398(n))`
-/

namespace A077401.P1907477809205524690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (7 : ℝ) * (A077398 n : ℝ)⌉

end

end A077401.P1907477809205524690

namespace A077401

/-- `ceil(sqrt(7)*A077398(n))` -/
def P1907477809205524690.Spec : Prop :=
  ∀ n, P1907477809205524690.a n = A077401 n

end A077401

/-! ## A077401.P58550182622737567

`floor(A195878(n+1)/2)`
-/

namespace A077401.P58550182622737567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A195878 (n + 1) : ℚ) / 2⌋

end

end A077401.P58550182622737567

namespace A077401

/-- `floor(A195878(n+1)/2)` -/
def P58550182622737567.Spec : Prop :=
  ∀ n, P58550182622737567.a n = A077401 n

end A077401

/-! ## A077401.P10231531268849075033

`ceil(A195878(n+1)/2-A033999(n)²)`
-/

namespace A077401.P10231531268849075033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A195878 (n + 1) : ℚ) / 2 - (A033999 n ^ 2 : ℚ)⌉

end

end A077401.P10231531268849075033

namespace A077401

/-- `ceil(A195878(n+1)/2-A033999(n)²)` -/
def P10231531268849075033.Spec : Prop :=
  ∀ n, P10231531268849075033.a n = A077401 n

end A077401

/-! ## A077401.P14776565485015940087

`(A195878(n+1)-1)/A020639(2*(n+1))`
-/

namespace A077401.P14776565485015940087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195878 (n + 1) - 1 : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A077401.P14776565485015940087

namespace A077401

/-- `(A195878(n+1)-1)/A020639(2*(n+1))` -/
def P14776565485015940087.Spec : Prop :=
  ∀ n, P14776565485015940087.a n = (A077401 n : ℚ)

end A077401

/-! ## A077401.P3214030963049363197

`ceil(A195878(n+1)/2-A007318(and(3, -n)!))`
-/

namespace A077401.P3214030963049363197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A195878 (n + 1) : ℚ) / 2 - (A007318 (Nat.factorial (Int.land 3 (-(n : ℤ))).toNat) : ℚ)⌉

end

end A077401.P3214030963049363197

namespace A077401

/-- `ceil(A195878(n+1)/2-A007318(and(3, -n)!))` -/
def P3214030963049363197.Spec : Prop :=
  ∀ n, P3214030963049363197.a n = A077401 n

end A077401

/-! ## A077401.P10668320585345019817

`(A195878(n+1)-1)/A000005(record[A014963(n+2)])`
-/

namespace A077401.P10668320585345019817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195878 (n + 1) - 1 : ℚ) / (A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ)

end

end A077401.P10668320585345019817

namespace A077401

/-- `(A195878(n+1)-1)/A000005(record[A014963(n+2)])` -/
def P10668320585345019817.Spec : Prop :=
  ∀ n, P10668320585345019817.a n = (A077401 n : ℚ)

end A077401

/-! ## A077401.P12046440528164352571

`(A195878(n+1)-1)/A000005(A138980(n))`
-/

namespace A077401.P12046440528164352571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195878 (n + 1) - 1 : ℚ) / (A000005 (A138980 n).toNat : ℚ)

end

end A077401.P12046440528164352571

namespace A077401

/-- `(A195878(n+1)-1)/A000005(A138980(n))` -/
def P12046440528164352571.Spec : Prop :=
  ∀ n, P12046440528164352571.a n = (A077401 n : ℚ)

end A077401

/-!
# A077402: Reverse and Add! carried out in base 3; number of steps needed to reach a palindrome, or -1 if no palindrome is ever reached.

The programs for A077402, there is no canonical definition to state claims against.
-/

/-! ## A077402.P5824619384827344129

`and(A007610(A000285(n)), A289816(n))`
-/

namespace A077402.P5824619384827344129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007610 (A000285 n).toNat) (A289816 n)

end

end A077402.P5824619384827344129

/-! ## A077402.P9955560473906744815

`A273943(A001317(n))%A331742(n)`
-/

namespace A077402.P9955560473906744815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273943 (A001317 n).toNat) (A331742 n)

end

end A077402.P9955560473906744815

/-! ## A077402.P11066180457297615898

`A273943(A004729(n))%A331742(n)`
-/

namespace A077402.P11066180457297615898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273943 (A004729 n).toNat) (A331742 n)

end

end A077402.P11066180457297615898

/-! ## A077402.P1988954218669894760

`A273943(A053576(n))%A331742(n)`
-/

namespace A077402.P1988954218669894760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273943 (A053576 n).toNat) (A331742 n)

end

end A077402.P1988954218669894760

/-! ## A077402.P2561578670292593086

`A345937(A022131(n))%A339666(n+1)`
-/

namespace A077402.P2561578670292593086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345937 (A022131 n).toNat) (A339666 (n + 1))

end

end A077402.P2561578670292593086

/-!
# A077403: In base 3: smallest number that requires n Reverse and Add! steps to reach a palindrome.

The programs for A077403, there is no canonical definition to state claims against.
-/

/-! ## A077403.P18317937476208628098

`xor(A000079(n), A020653(A171777(n)))`
-/

namespace A077403.P18317937476208628098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000079 n) (A020653 (A171777 n).toNat)

end

end A077403.P18317937476208628098

/-! ## A077403.P3910121038861568501

`A212200(A051256(n+2))%A100307(n)`
-/

namespace A077403.P3910121038861568501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212200 (A051256 (n + 2)).toNat) (A100307 n)

end

end A077403.P3910121038861568501

/-!
# A077404: Trajectory of n under the Reverse and Add! operation carried out in base 3 (presumably) does not reach a palindrome.

The programs for A077404, there is no canonical definition to state claims against.
-/

/-! ## A077404.P5207895415949047491

`eq[A077402(n), A077594(n)]`
-/

namespace A077404.P5207895415949047491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077402 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077594 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077404.P5207895415949047491

/-! ## A077404.P273862249992588382

`eq[A077402(n), A260196(n)]`
-/

namespace A077404.P273862249992588382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077402 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077404.P273862249992588382

/-! ## A077404.P4290423738348619635

`eq[A077402(n), A153881(n+1)]`
-/

namespace A077404.P4290423738348619635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077402 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077404.P4290423738348619635

/-! ## A077404.P16197863195439265681

`eq[A077402(n), A328455(n+1)]`
-/

namespace A077404.P16197863195439265681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077402 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077404.P16197863195439265681

/-! ## A077404.P4703774190533800869

`eq[A060376(n), A077402(n)]`
-/

namespace A077404.P4703774190533800869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077402 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077404.P4703774190533800869

/-!
# A077406: In base 3: n sets a new record for the number of Reverse and Add! steps needed to reach a palindrome starting with n.

The programs for A077406, there is no canonical definition to state claims against.
-/

/-! ## A077406.P16052202843457380621

`A077403(A077407(n+1))`
-/

namespace A077406.P16052202843457380621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077403 (A077407 (n + 1)).toNat

end

end A077406.P16052202843457380621

/-! ## A077406.P1478623390967256781

`A077403(lt[A165012(2*(n+1)), A047813(n+4)])`
-/

namespace A077406.P1478623390967256781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165012 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077403 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A077406.P1478623390967256781

/-!
# A077409: Bisection (even part) of Chebyshev sequence with Diophantine property.

The programs for A077409, the canonical program `A077409.P14000900255688225066` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077409 has offset 0).

The definition of A077409 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077409.P14000900255688225066

`10*a(n-1)-a(n-2)` with `a(0)=7, a(1)=59`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077409

/-- `10*a(n-1)-a(n-2)` -/
def P14000900255688225066.Spec : Prop :=
  ∀ n, P14000900255688225066.a n = A077409 n

theorem P14000900255688225066.correct : P14000900255688225066.Spec := by
  intro n
  simp only [A077409]

end A077409

/-! ## A077409.P18027413366022770258

`sqrt(24*A077251(n)²+25)`
-/

namespace A077409.P18027413366022770258
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (24 * A077251 n ^ 2 + 25 : ℝ)

end

end A077409.P18027413366022770258

namespace A077409

/-- `sqrt(24*A077251(n)²+25)` -/
def P18027413366022770258.Spec : Prop :=
  ∀ n, P18027413366022770258.a n = (A077409 n : ℝ)

end A077409

/-! ## A077409.P12256995888628516990

`ogf((7-11x)/(1-10x+x^2))`
-/

namespace A077409.P12256995888628516990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -11] [1, -10, 1] n

end

end A077409.P12256995888628516990

namespace A077409

/-- `ogf((7-11x)/(1-10x+x^2))` -/
def P12256995888628516990.Spec : Prop :=
  ∀ n, P12256995888628516990.a n = A077409 n

end A077409

/-! ## A077409.P12127454623324154750

`A077411(2*n)`
-/

namespace A077409.P12127454623324154750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077411 (2 * n)

end

end A077409.P12127454623324154750

namespace A077409

/-- `A077411(2*n)` -/
def P12127454623324154750.Spec : Prop :=
  ∀ n, P12127454623324154750.a n = A077409 n

end A077409

/-! ## A077409.P14611530493307584205

`A106330(3*n+2)`
-/

namespace A077409.P14611530493307584205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106330 (3 * n + 2)

end

end A077409.P14611530493307584205

namespace A077409

/-- `A106330(3*n+2)` -/
def P14611530493307584205.Spec : Prop :=
  ∀ n, P14611530493307584205.a n = A077409 n

end A077409

/-! ## A077409.P17868755663482816287

`A001079(n)+Δ[A122653(n)]`
-/

namespace A077409.P17868755663482816287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 n + (f1 (n + 1) - f1 n)

end

end A077409.P17868755663482816287

namespace A077409

/-- `A001079(n)+Δ[A122653(n)]` -/
def P17868755663482816287.Spec : Prop :=
  ∀ n, P17868755663482816287.a n = A077409 n

end A077409

/-! ## A077409.P6179917190421884107

`A077250(n)-Δ[A001079(n)]`
-/

namespace A077409.P6179917190421884107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077250 n - (f1 (n + 1) - f1 n)

end

end A077409.P6179917190421884107

namespace A077409

/-- `A077250(n)-Δ[A001079(n)]` -/
def P6179917190421884107.Spec : Prop :=
  ∀ n, P6179917190421884107.a n = A077409 n

end A077409

/-! ## A077409.P9868915069422027156

`record[A077411(n)/A000034(n)]`
-/

namespace A077409.P9868915069422027156
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077411 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077409.P9868915069422027156

namespace A077409

/-- `record[A077411(n)/A000034(n)]` -/
def P9868915069422027156.Spec : Prop :=
  ∀ n, P9868915069422027156.a n = (A077409 n : ℚ)

end A077409

/-! ## A077409.P12169888888433923862

`A087799(n)+A001079(n+1)`
-/

namespace A077409.P12169888888433923862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087799 n + A001079 (n + 1)

end

end A077409.P12169888888433923862

namespace A077409

/-- `A087799(n)+A001079(n+1)` -/
def P12169888888433923862.Spec : Prop :=
  ∀ n, P12169888888433923862.a n = A077409 n

end A077409

/-! ## A077409.P431832386774080785

`7*A138288(n)-A122652(n)`
-/

namespace A077409.P431832386774080785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A138288 n - A122652 n

end

end A077409.P431832386774080785

namespace A077409

/-- `7*A138288(n)-A122652(n)` -/
def P431832386774080785.Spec : Prop :=
  ∀ n, P431832386774080785.a n = A077409 n

end A077409

/-! ## A077409.P9300533403235108028

`A001079(n)+abs(Δ[A146311(n)])`
-/

namespace A077409.P9300533403235108028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 n + |f1 (n + 1) - f1 n|

end

end A077409.P9300533403235108028

namespace A077409

/-- `A001079(n)+abs(Δ[A146311(n)])` -/
def P9300533403235108028.Spec : Prop :=
  ∀ n, P9300533403235108028.a n = A077409 n

end A077409

/-! ## A077409.P5551607855443868431

`A001079(n+1)+2*A001079(n)`
-/

namespace A077409.P5551607855443868431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 (n + 1) + 2 * A001079 n

end

end A077409.P5551607855443868431

namespace A077409

/-- `A001079(n+1)+2*A001079(n)` -/
def P5551607855443868431.Spec : Prop :=
  ∀ n, P5551607855443868431.a n = A077409 n

end A077409

/-! ## A077409.P5214664453447757976

`A001079(n)+Δ[A157084(n)-A001079(n)]`
-/

namespace A077409.P5214664453447757976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157084 n - A001079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 n + (f1 (n + 1) - f1 n)

end

end A077409.P5214664453447757976

namespace A077409

/-- `A001079(n)+Δ[A157084(n)-A001079(n)]` -/
def P5214664453447757976.Spec : Prop :=
  ∀ n, P5214664453447757976.a n = A077409 n

end A077409

/-! ## A077409.P12965455168731511904

`A077250(n)+A001079(n)-A001079(n+1)`
-/

namespace A077409.P12965455168731511904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077250 n + A001079 n - A001079 (n + 1)

end

end A077409.P12965455168731511904

namespace A077409

/-- `A077250(n)+A001079(n)-A001079(n+1)` -/
def P12965455168731511904.Spec : Prop :=
  ∀ n, P12965455168731511904.a n = A077409 n

end A077409

/-! ## A077409.P8737878458801635707

`A132596(n+1)+A171640(n+2)+A087799(n)`
-/

namespace A077409.P8737878458801635707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132596 (n + 1) + (A171640 (n + 2) + A087799 n)

end

end A077409.P8737878458801635707

namespace A077409

/-- `A132596(n+1)+A171640(n+2)+A087799(n)` -/
def P8737878458801635707.Spec : Prop :=
  ∀ n, P8737878458801635707.a n = A077409 n

end A077409

/-!
# A077410: Combined Diophantine Chebyshev sequences A077249 and A077251.

The programs for A077410, the canonical program `A077410.P15301486694705534275` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077410 has offset 0).

The definition of A077410 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077411, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A077410.P15301486694705534275

`sqrt((A077411(n)²-25)/24)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A077410

/-- `sqrt((A077411(n)²-25)/24)` -/
def P15301486694705534275.Spec : Prop :=
  ∀ n, P15301486694705534275.a n = (A077410 n : ℝ)

end A077410

/-! ## A077410.P9543068075070559167

`A106331(A007494(n+1))`
-/

namespace A077410.P9543068075070559167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106331 (A007494 (n + 1)).toNat

end

end A077410.P9543068075070559167

namespace A077410

/-- `A106331(A007494(n+1))` -/
def P9543068075070559167.Spec : Prop :=
  ∀ n, P9543068075070559167.a n = A077410 n

end A077410

/-! ## A077410.P16764666903082969363

`A106331(A294732(n+3))`
-/

namespace A077410.P16764666903082969363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106331 (A294732 (n + 3)).toNat

end

end A077410.P16764666903082969363

namespace A077410

/-- `A106331(A294732(n+3))` -/
def P16764666903082969363.Spec : Prop :=
  ∀ n, P16764666903082969363.a n = A077410 n

end A077410

/-! ## A077410.P17024715415768306806

`A106331(∑[A000034(n+1)])`
-/

namespace A077410.P17024715415768306806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106331 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A077410.P17024715415768306806

namespace A077410

/-- `A106331(∑[A000034(n+1)])` -/
def P17024715415768306806.Spec : Prop :=
  ∀ n, P17024715415768306806.a n = A077410 n

end A077410

/-! ## A077410.P12578922573999100497

`A106331(∑[2/A000034(n)])`
-/

namespace A077410.P12578922573999100497
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106331 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A077410.P12578922573999100497

namespace A077410

/-- `A106331(∑[2/A000034(n)])` -/
def P12578922573999100497.Spec : Prop :=
  ∀ n, P12578922573999100497.a n = A077410 n

end A077410

/-! ## A077410.P7426530461996646657

`∑[A040001(n)*A080872(n)]`
-/

namespace A077410.P7426530461996646657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A080872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077410.P7426530461996646657

namespace A077410

/-- `∑[A040001(n)*A080872(n)]` -/
def P7426530461996646657.Spec : Prop :=
  ∀ n, P7426530461996646657.a n = A077410 n

end A077410

/-! ## A077410.P13126816429590067408

`floor(A077411(n)/sqrt(24))`
-/

namespace A077410.P13126816429590067408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077411 n : ℝ) / Real.sqrt (24 : ℝ)⌋

end

end A077410.P13126816429590067408

namespace A077410

/-- `floor(A077411(n)/sqrt(24))` -/
def P13126816429590067408.Spec : Prop :=
  ∀ n, P13126816429590067408.a n = A077410 n

end A077410

/-! ## A077410.P17222830819428707932

`A106331(A045506(n+1))`
-/

namespace A077410.P17222830819428707932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106331 (A045506 (n + 1)).toNat

end

end A077410.P17222830819428707932

namespace A077410

/-- `A106331(A045506(n+1))` -/
def P17222830819428707932.Spec : Prop :=
  ∀ n, P17222830819428707932.a n = A077410 n

end A077410

/-!
# A077411: Combined Diophantine Chebyshev sequences A077409 and A077250.

The programs for A077411, the canonical program `A077411.P3896618251849263146` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077411 has offset 0).

The definition of A077411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077411.P13254999802095582389

`sqrt(24*A077410(n)²+25)`
-/

namespace A077411.P13254999802095582389
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (24 * A077410 n ^ 2 + 25 : ℝ)

end

end A077411.P13254999802095582389

namespace A077411

/-- `sqrt(24*A077410(n)²+25)` -/
def P13254999802095582389.Spec : Prop :=
  ∀ n, P13254999802095582389.a n = (A077411 n : ℝ)

end A077411

/-! ## A077411.P3896618251849263146

`A106330(∑[gcd(2, n)])`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A077411

/-- `A106330(∑[gcd(2, n)])` -/
def P3896618251849263146.Spec : Prop :=
  ∀ n, P3896618251849263146.a n = A077411 n

theorem P3896618251849263146.correct : P3896618251849263146.Spec := by
  intro n
  simp only [A077411]

end A077411

/-! ## A077411.P17178858682286910556

`A106330(A007494(n+1))`
-/

namespace A077411.P17178858682286910556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106330 (A007494 (n + 1)).toNat

end

end A077411.P17178858682286910556

namespace A077411

/-- `A106330(A007494(n+1))` -/
def P17178858682286910556.Spec : Prop :=
  ∀ n, P17178858682286910556.a n = A077411 n

end A077411

/-! ## A077411.P163909465557518008

`A106330(A032766(n)+2)`
-/

namespace A077411.P163909465557518008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106330 (A032766 n + 2).toNat

end

end A077411.P163909465557518008

namespace A077411

/-- `A106330(A032766(n)+2)` -/
def P163909465557518008.Spec : Prop :=
  ∀ n, P163909465557518008.a n = A077411 n

end A077411

/-! ## A077411.P3005759154446952184

`A106330(A294732(n+3))`
-/

namespace A077411.P3005759154446952184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106330 (A294732 (n + 3)).toNat

end

end A077411.P3005759154446952184

namespace A077411

/-- `A106330(A294732(n+3))` -/
def P3005759154446952184.Spec : Prop :=
  ∀ n, P3005759154446952184.a n = A077411 n

end A077411

/-! ## A077411.P15575243875827356974

`A106330(∑[A000034(n+1)])`
-/

namespace A077411.P15575243875827356974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106330 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A077411.P15575243875827356974

namespace A077411

/-- `A106330(∑[A000034(n+1)])` -/
def P15575243875827356974.Spec : Prop :=
  ∀ n, P15575243875827356974.a n = A077411 n

end A077411

/-! ## A077411.P3350570309158472813

`A106330(∑[2/A000034(n)])`
-/

namespace A077411.P3350570309158472813
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106330 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A077411.P3350570309158472813

namespace A077411

/-- `A106330(∑[2/A000034(n)])` -/
def P3350570309158472813.Spec : Prop :=
  ∀ n, P3350570309158472813.a n = A077411 n

end A077411

/-! ## A077411.P12828480510902765189

`A106330(A008619(3*n)+1)`
-/

namespace A077411.P12828480510902765189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106330 (A008619 (3 * n) + 1).toNat

end

end A077411.P12828480510902765189

namespace A077411

/-- `A106330(A008619(3*n)+1)` -/
def P12828480510902765189.Spec : Prop :=
  ∀ n, P12828480510902765189.a n = A077411 n

end A077411

/-! ## A077411.P132867997308589205

`A106330(A004526(3*n)+2)`
-/

namespace A077411.P132867997308589205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106330 (A004526 (3 * n) + 2).toNat

end

end A077411.P132867997308589205

namespace A077411

/-- `A106330(A004526(3*n)+2)` -/
def P132867997308589205.Spec : Prop :=
  ∀ n, P132867997308589205.a n = A077411 n

end A077411

/-! ## A077411.P12421228532282440067

`A106330(A008619(n)+1+n)`
-/

namespace A077411.P12421228532282440067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106330 (A008619 n + 1 + (n : ℤ)).toNat

end

end A077411.P12421228532282440067

namespace A077411

/-- `A106330(A008619(n)+1+n)` -/
def P12421228532282440067.Spec : Prop :=
  ∀ n, P12421228532282440067.a n = A077411 n

end A077411

/-! ## A077411.P4018194978657162681

`A106330(A004526(n)+2+n)`
-/

namespace A077411.P4018194978657162681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106330 (A004526 n + 2 + (n : ℤ)).toNat

end

end A077411.P4018194978657162681

namespace A077411

/-- `A106330(A004526(n)+2+n)` -/
def P4018194978657162681.Spec : Prop :=
  ∀ n, P4018194978657162681.a n = A077411 n

end A077411

/-!
# A077412: Chebyshev U(n,x) polynomial evaluated at x=8.

The programs for A077412, the canonical program `A077412.P12560134607077167080` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077412 has offset 0).

The definition of A077412 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077412.P12560134607077167080

`16*a(n-1)-a(n-2)` with `a(0)=1, a(1)=16`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077412

/-- `16*a(n-1)-a(n-2)` -/
def P12560134607077167080.Spec : Prop :=
  ∀ n, P12560134607077167080.a n = A077412 n

theorem P12560134607077167080.correct : P12560134607077167080.Spec := by
  intro n
  simp only [A077412]

end A077412

/-! ## A077412.P859243975131580965

`((8+3*sqrt(7))^(n+1)-(8-3*sqrt(7))^(n+1))/(6*sqrt(7))`
-/

namespace A077412.P859243975131580965
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((8 + 3 * Real.sqrt (7 : ℝ)) ^ (n + 1) - (8 - 3 * Real.sqrt (7 : ℝ)) ^ (n + 1)) / (6 * Real.sqrt (7 : ℝ))

end

end A077412.P859243975131580965

namespace A077412

/-- `((8+3*sqrt(7))^(n+1)-(8-3*sqrt(7))^(n+1))/(6*sqrt(7))` -/
def P859243975131580965.Spec : Prop :=
  ∀ n, P859243975131580965.a n = (A077412 n : ℝ)

theorem P859243975131580965.correct : P859243975131580965.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A077412, Nat.add_sub_cancel, A077412.P859243975131580965.a, A077412.P12560134607077167080.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A077412, Nat.add_sub_cancel, A077412.P859243975131580965.a, A077412.P12560134607077167080.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A077412

/-! ## A077412.P10278454680551797735

`sqrt((A001081(n+1)²-1)/63)`
-/

namespace A077412.P10278454680551797735
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A001081 (n + 1) ^ 2 - 1 : ℚ) / 63 : ℝ)

end

end A077412.P10278454680551797735

namespace A077412

/-- `sqrt((A001081(n+1)²-1)/63)` -/
def P10278454680551797735.Spec : Prop :=
  ∀ n, P10278454680551797735.a n = (A077412 n : ℝ)

end A077412

/-! ## A077412.P6474330687197445668

`ogf(1/(1-16x+x^2))`
-/

namespace A077412.P6474330687197445668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -16, 1] n

end

end A077412.P6474330687197445668

namespace A077412

/-- `ogf(1/(1-16x+x^2))` -/
def P6474330687197445668.Spec : Prop :=
  ∀ n, P6474330687197445668.a n = A077412 n

end A077412

/-! ## A077412.P5706185282695577248

`∑[ceil((sqrt(63)+8)^n)]-a(n-1)` with `a(0)=1`
-/

namespace A077412.P5706185282695577248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (63 : ℝ) + 8) ^ n⌉

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A077412.P5706185282695577248

namespace A077412

/-- `∑[ceil((sqrt(63)+8)^n)]-a(n-1)` -/
def P5706185282695577248.Spec : Prop :=
  ∀ n, P5706185282695577248.a n = A077412 n

end A077412

/-! ## A077412.P12359881335979535255

`A041111(Δ[n²])`
-/

namespace A077412.P12359881335979535255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041111 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A077412.P12359881335979535255

namespace A077412

/-- `A041111(Δ[n²])` -/
def P12359881335979535255.Spec : Prop :=
  ∀ n, P12359881335979535255.a n = A077412 n

end A077412

/-! ## A077412.P2094938525031636905

`∑[A157456(n+1)]`
-/

namespace A077412.P2094938525031636905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077412.P2094938525031636905

namespace A077412

/-- `∑[A157456(n+1)]` -/
def P2094938525031636905.Spec : Prop :=
  ∀ n, P2094938525031636905.a n = A077412 n

end A077412

/-! ## A077412.P14549346759072901256

`∑[A041111(2*n)]`
-/

namespace A077412.P14549346759072901256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041111 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077412.P14549346759072901256

namespace A077412

/-- `∑[A041111(2*n)]` -/
def P14549346759072901256.Spec : Prop :=
  ∀ n, P14549346759072901256.a n = A077412 n

end A077412

/-! ## A077412.P11710887694259824654

`∑[A243469(Δ[n²])]`
-/

namespace A077412.P11710887694259824654
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243469 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077412.P11710887694259824654

namespace A077412

/-- `∑[A243469(Δ[n²])]` -/
def P11710887694259824654.Spec : Prop :=
  ∀ n, P11710887694259824654.a n = A077412 n

end A077412

/-! ## A077412.P6429707642954576163

`∑[A243470(2*n+1)]`
-/

namespace A077412.P6429707642954576163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243470 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077412.P6429707642954576163

namespace A077412

/-- `∑[A243470(2*n+1)]` -/
def P6429707642954576163.Spec : Prop :=
  ∀ n, P6429707642954576163.a n = A077412 n

end A077412

/-!
# A077413: Bisection (odd part) of Chebyshev sequence with Diophantine property.

The programs for A077413, the canonical program `A077413.P4178834392395573588` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077413 has offset 0).

The definition of A077413 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077413.P4178834392395573588

`6*a(n-1)-a(n-2)` with `a(0)=2, a(1)=13`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077413

/-- `6*a(n-1)-a(n-2)` -/
def P4178834392395573588.Spec : Prop :=
  ∀ n, P4178834392395573588.a n = A077413 n

theorem P4178834392395573588.correct : P4178834392395573588.Spec := by
  intro n
  simp only [A077413]

end A077413

/-! ## A077413.P10644698460950653780

`ogf((2+x)/(1-6x+x^2))`
-/

namespace A077413.P10644698460950653780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, -6, 1] n

end

end A077413.P10644698460950653780

namespace A077413

/-- `ogf((2+x)/(1-6x+x^2))` -/
def P10644698460950653780.Spec : Prop :=
  ∀ n, P10644698460950653780.a n = A077413 n

end A077413

/-! ## A077413.P4845063529833670077

`A077241(Δ[n²])`
-/

namespace A077413.P4845063529833670077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077241 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A077413.P4845063529833670077

namespace A077413

/-- `A077241(Δ[n²])` -/
def P4845063529833670077.Spec : Prop :=
  ∀ n, P4845063529833670077.a n = A077413 n

end A077413

/-! ## A077413.P3847167274517474659

`A164541(n)-a(n-1)` with `a(0)=2`
-/

namespace A077413.P3847167274517474659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A164541 n - a (n - 1)

end

end A077413.P3847167274517474659

namespace A077413

/-- `A164541(n)-a(n-1)` -/
def P3847167274517474659.Spec : Prop :=
  ∀ n, P3847167274517474659.a n = A077413 n

end A077413

/-! ## A077413.P9695509870516457818

`∑[A221172(2*n+1)]-1`
-/

namespace A077413.P9695509870516457818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A077413.P9695509870516457818

namespace A077413

/-- `∑[A221172(2*n+1)]-1` -/
def P9695509870516457818.Spec : Prop :=
  ∀ n, P9695509870516457818.a n = A077413 n

end A077413

/-! ## A077413.P15806345503133819493

`A054489(n)+A001541(n)`
-/

namespace A077413.P15806345503133819493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054489 n + A001541 n

end

end A077413.P15806345503133819493

namespace A077413

/-- `A054489(n)+A001541(n)` -/
def P15806345503133819493.Spec : Prop :=
  ∀ n, P15806345503133819493.a n = A077413 n

end A077413

/-! ## A077413.P7054691015860355850

`A038761(n)+A038723(n)`
-/

namespace A077413.P7054691015860355850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038761 n + A038723 n

end

end A077413.P7054691015860355850

namespace A077413

/-- `A038761(n)+A038723(n)` -/
def P7054691015860355850.Spec : Prop :=
  ∀ n, P7054691015860355850.a n = A077413 n

end A077413

/-! ## A077413.P10887906020250325957

`A054490(n)+A038725(n)`
-/

namespace A077413.P10887906020250325957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054490 n + A038725 n

end

end A077413.P10887906020250325957

namespace A077413

/-- `A054490(n)+A038725(n)` -/
def P10887906020250325957.Spec : Prop :=
  ∀ n, P10887906020250325957.a n = A077413 n

end A077413

/-! ## A077413.P14935236593767316678

`A275794(n)-A001542(n)`
-/

namespace A077413.P14935236593767316678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275794 n - A001542 n

end

end A077413.P14935236593767316678

namespace A077413

/-- `A275794(n)-A001542(n)` -/
def P14935236593767316678.Spec : Prop :=
  ∀ n, P14935236593767316678.a n = A077413 n

end A077413

/-! ## A077413.P18141301444241549354

`A001109(n)+Δ[A011900(n)]`
-/

namespace A077413.P18141301444241549354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n + (f1 (n + 1) - f1 n)

end

end A077413.P18141301444241549354

namespace A077413

/-- `A001109(n)+Δ[A011900(n)]` -/
def P18141301444241549354.Spec : Prop :=
  ∀ n, P18141301444241549354.a n = A077413 n

end A077413

/-! ## A077413.P5872717703682803748

`A001109(n)+Δ[A053141(n)]`
-/

namespace A077413.P5872717703682803748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053141 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n + (f1 (n + 1) - f1 n)

end

end A077413.P5872717703682803748

namespace A077413

/-- `A001109(n)+Δ[A053141(n)]` -/
def P5872717703682803748.Spec : Prop :=
  ∀ n, P5872717703682803748.a n = A077413 n

end A077413

/-! ## A077413.P2483328206612594083

`Δ[A053142(n)+A001108(n)]`
-/

namespace A077413.P2483328206612594083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053142 n + A001108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077413.P2483328206612594083

namespace A077413

/-- `Δ[A053142(n)+A001108(n)]` -/
def P2483328206612594083.Spec : Prop :=
  ∀ n, P2483328206612594083.a n = A077413 n

end A077413

/-! ## A077413.P12676354689628112967

`A002315(n)+Δ[A053142(n)]`
-/

namespace A077413.P12676354689628112967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n + (f1 (n + 1) - f1 n)

end

end A077413.P12676354689628112967

namespace A077413

/-- `A002315(n)+Δ[A053142(n)]` -/
def P12676354689628112967.Spec : Prop :=
  ∀ n, P12676354689628112967.a n = A077413 n

end A077413

/-! ## A077413.P10813772726872308728

`A054488(n)+Δ[A001109(n)]`
-/

namespace A077413.P10813772726872308728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054488 n + (f1 (n + 1) - f1 n)

end

end A077413.P10813772726872308728

namespace A077413

/-- `A054488(n)+Δ[A001109(n)]` -/
def P10813772726872308728.Spec : Prop :=
  ∀ n, P10813772726872308728.a n = A077413 n

end A077413

/-! ## A077413.P14066772516839993008

`Δ[A001541(n)]-A001109(n)`
-/

namespace A077413.P14066772516839993008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001109 n

end

end A077413.P14066772516839993008

namespace A077413

/-- `Δ[A001541(n)]-A001109(n)` -/
def P14066772516839993008.Spec : Prop :=
  ∀ n, P14066772516839993008.a n = A077413 n

end A077413

/-! ## A077413.P18272480775663296485

`A001542(n+1)+A001109(n)`
-/

namespace A077413.P18272480775663296485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 (n + 1) + A001109 n

end

end A077413.P18272480775663296485

namespace A077413

/-- `A001542(n+1)+A001109(n)` -/
def P18272480775663296485.Spec : Prop :=
  ∀ n, P18272480775663296485.a n = A077413 n

end A077413

/-! ## A077413.P9059137340972777836

`A002315(n)+A001109(n+1)`
-/

namespace A077413.P9059137340972777836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n + A001109 (n + 1)

end

end A077413.P9059137340972777836

namespace A077413

/-- `A002315(n)+A001109(n+1)` -/
def P9059137340972777836.Spec : Prop :=
  ∀ n, P9059137340972777836.a n = A077413 n

end A077413

/-! ## A077413.P10854905098769636327

`A038725(n+1)+A001542(n)`
-/

namespace A077413.P10854905098769636327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038725 (n + 1) + A001542 n

end

end A077413.P10854905098769636327

namespace A077413

/-- `A038725(n+1)+A001542(n)` -/
def P10854905098769636327.Spec : Prop :=
  ∀ n, P10854905098769636327.a n = A077413 n

end A077413

/-! ## A077413.P16497123286024182556

`A054488(n)+A001653(n+1)`
-/

namespace A077413.P16497123286024182556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054488 n + A001653 (n + 1)

end

end A077413.P16497123286024182556

namespace A077413

/-- `A054488(n)+A001653(n+1)` -/
def P16497123286024182556.Spec : Prop :=
  ∀ n, P16497123286024182556.a n = A077413 n

end A077413

/-! ## A077413.P12872375207681817674

`A054488(n)+A182190(n)+1`
-/

namespace A077413.P12872375207681817674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054488 n + (A182190 n + 1)

end

end A077413.P12872375207681817674

namespace A077413

/-- `A054488(n)+A182190(n)+1` -/
def P12872375207681817674.Spec : Prop :=
  ∀ n, P12872375207681817674.a n = A077413 n

end A077413

/-!
# A077414: a(n) = n*(n - 1)*(n + 2)/2.

The programs for A077414, the canonical program `A077414.P6592463368723657491` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077414 has offset 1).

The definition of A077414 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*n*(n+3)/2` (program `A077414.P6268718655973390357`, by `A077414.P6268718655973390357.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077414.P5170632594295303983

`(n+1)*(C(n+2, 2)-1)`
-/

namespace A077414.P5170632594295303983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((Nat.choose (n + 2) 2 : ℤ) - 1)

end

end A077414.P5170632594295303983

namespace A077414

/-- `(n+1)*(C(n+2, 2)-1)` -/
def P5170632594295303983.Spec : Prop :=
  ∀ n, P5170632594295303983.a n = A077414 (n + 1)

end A077414

/-! ## A077414.P6268718655973390357

`(n+1)*n*(n+3)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077414.P6268718655973390357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * n * (n + 3) : ℚ) / 2

end

end A077414.P6268718655973390357

namespace A077414

/-- `(n+1)*n*(n+3)/2` -/
def P6268718655973390357.Spec : Prop :=
  ∀ n, P6268718655973390357.a n = (A077414 (n + 1) : ℚ)

theorem P6268718655973390357.correct : P6268718655973390357.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A077414, Nat.add_sub_cancel, A077414.P6268718655973390357.a, A077414.P6592463368723657491.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A077414, Nat.add_sub_cancel, A077414.P6268718655973390357.a, A077414.P6592463368723657491.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A077414

/-! ## A077414.P6592463368723657491

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=4, a(2)=15, a(3)=36`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077414

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P6592463368723657491.Spec : Prop :=
  ∀ n, P6592463368723657491.a n = A077414 (n + 1)

theorem P6592463368723657491.correct : P6592463368723657491.Spec := by
  intro n
  simp only [A077414, Nat.add_sub_cancel]

end A077414

/-! ## A077414.P15805899217487943027

`∑[∑[4*n]-C(n, 2)]`
-/

namespace A077414.P15805899217487943027
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077414.P15805899217487943027

namespace A077414

/-- `∑[∑[4*n]-C(n, 2)]` -/
def P15805899217487943027.Spec : Prop :=
  ∀ n, P15805899217487943027.a n = A077414 (n + 1)

end A077414

/-! ## A077414.P17407175521111589696

`∑[∑[a(n-1)+3]]` with `a(0)=0, a(1)=4`
-/

namespace A077414.P17407175521111589696
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077414.P17407175521111589696

namespace A077414

/-- `∑[∑[a(n-1)+3]]` -/
def P17407175521111589696.Spec : Prop :=
  ∀ n, (P17407175521111589696.a n : ℤ) = A077414 (n + 1)

end A077414

/-! ## A077414.P1175920021149182052

`∑[∑[record[xor(1, n+1)]+n]]`
-/

namespace A077414.P1175920021149182052
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077414.P1175920021149182052

namespace A077414

/-- `∑[∑[record[xor(1, n+1)]+n]]` -/
def P1175920021149182052.Spec : Prop :=
  ∀ n, (P1175920021149182052.a n : ℤ) = A077414 (n + 1)

end A077414

/-! ## A077414.P13868603160490071270

`floor((n+1)/acot(∑[n]+n))`
-/

namespace A077414.P13868603160490071270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℝ)⌋

end

end A077414.P13868603160490071270

namespace A077414

/-- `floor((n+1)/acot(∑[n]+n))` -/
def P13868603160490071270.Spec : Prop :=
  ∀ n, P13868603160490071270.a n = A077414 (n + 1)

end A077414

/-! ## A077414.P2514571453340571887

`∑[∑[ogf((4x-x^2)/(1-2x+x^2))]]`
-/

namespace A077414.P2514571453340571887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, -1] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077414.P2514571453340571887

namespace A077414

/-- `∑[∑[ogf((4x-x^2)/(1-2x+x^2))]]` -/
def P2514571453340571887.Spec : Prop :=
  ∀ n, P2514571453340571887.a n = A077414 (n + 1)

end A077414

/-! ## A077414.P17365967118937485884

`ogf((4x-x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A077414.P17365967118937485884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, -1] [1, -4, 6, -4, 1] n

end

end A077414.P17365967118937485884

namespace A077414

/-- `ogf((4x-x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P17365967118937485884.Spec : Prop :=
  ∀ n, P17365967118937485884.a n = A077414 (n + 1)

end A077414

/-! ## A077414.P17338365831223311317

`∑[n-∑[a(n-1)-3]]` with `a(0)=0`
-/

namespace A077414.P17338365831223311317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077414.P17338365831223311317

namespace A077414

/-- `∑[n-∑[a(n-1)-3]]` -/
def P17338365831223311317.Spec : Prop :=
  ∀ n, P17338365831223311317.a n = A077414 (n + 1)

end A077414

/-! ## A077414.P8810859145332871223

`sqrt(C(n+1, 2)²*(n+3)²)`
-/

namespace A077414.P8810859145332871223
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.choose (n + 1) 2 ^ 2 * (n + 3) ^ 2 : ℝ)

end

end A077414.P8810859145332871223

namespace A077414

/-- `sqrt(C(n+1, 2)²*(n+3)²)` -/
def P8810859145332871223.Spec : Prop :=
  ∀ n, P8810859145332871223.a n = (A077414 (n + 1) : ℝ)

end A077414

/-! ## A077414.P10596521108728548772

`-((n+3)*Δ[-C(n+1, 3)])`
-/

namespace A077414.P10596521108728548772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose (n + 1) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 3 : ℤ) * (f1 (n + 1) - f1 n))

end

end A077414.P10596521108728548772

namespace A077414

/-- `-((n+3)*Δ[-C(n+1, 3)])` -/
def P10596521108728548772.Spec : Prop :=
  ∀ n, P10596521108728548772.a n = A077414 (n + 1)

end A077414

/-! ## A077414.P1467377228493132504

`lcm(n+3, (n+3)*C(n+1, 2))`
-/

namespace A077414.P1467377228493132504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 3) ((n + 3) * Nat.choose (n + 1) 2)

end

end A077414.P1467377228493132504

namespace A077414

/-- `lcm(n+3, (n+3)*C(n+1, 2))` -/
def P1467377228493132504.Spec : Prop :=
  ∀ n, (P1467377228493132504.a n : ℤ) = A077414 (n + 1)

end A077414

/-! ## A077414.P10277520333459996513

`C(n+1, 2)+n*C(n+2, 2)`
-/

namespace A077414.P10277520333459996513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + n * Nat.choose (n + 2) 2

end

end A077414.P10277520333459996513

namespace A077414

/-- `C(n+1, 2)+n*C(n+2, 2)` -/
def P10277520333459996513.Spec : Prop :=
  ∀ n, (P10277520333459996513.a n : ℤ) = A077414 (n + 1)

end A077414

/-! ## A077414.P1630203230998785315

`∑[C(n+1, 2)+(n+1)²-1]`
-/

namespace A077414.P1630203230998785315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 2 : ℤ) + (((n + 1) ^ 2 : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077414.P1630203230998785315

namespace A077414

/-- `∑[C(n+1, 2)+(n+1)²-1]` -/
def P1630203230998785315.Spec : Prop :=
  ∀ n, P1630203230998785315.a n = A077414 (n + 1)

end A077414

/-! ## A077414.P4743052115144195520

`∑[n]+C((n+1)², 2)/(n+1)`
-/

namespace A077414.P4743052115144195520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (Nat.choose ((n + 1) ^ 2) 2 : ℚ) / (n + 1 : ℚ)

end

end A077414.P4743052115144195520

namespace A077414

/-- `∑[n]+C((n+1)², 2)/(n+1)` -/
def P4743052115144195520.Spec : Prop :=
  ∀ n, P4743052115144195520.a n = (A077414 (n + 1) : ℚ)

end A077414

/-! ## A077414.P8033671550980733787

`lcm(n+2, (n+1)²)/2-(n+1)`
-/

namespace A077414.P8033671550980733787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 2) ((n + 1) ^ 2) : ℚ) / 2 - (n + 1 : ℚ)

end

end A077414.P8033671550980733787

namespace A077414

/-- `lcm(n+2, (n+1)²)/2-(n+1)` -/
def P8033671550980733787.Spec : Prop :=
  ∀ n, P8033671550980733787.a n = (A077414 (n + 1) : ℚ)

end A077414

/-! ## A077414.P13615480441717553497

`round((n+1)/acot(∑[n+1])-(n+1))`
-/

namespace A077414.P13615480441717553497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - (n + 1 : ℝ))

end

end A077414.P13615480441717553497

namespace A077414

/-- `round((n+1)/acot(∑[n+1])-(n+1))` -/
def P13615480441717553497.Spec : Prop :=
  ∀ n, P13615480441717553497.a n = A077414 (n + 1)

end A077414

/-! ## A077414.P1108837582216146202

`(n+1)*(n²+1)-a(n-2)` with `a(0)=0, a(1)=4`
-/

namespace A077414.P1108837582216146202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  ((n + 1) * (n ^ 2 + 1) : ℤ) - a (n - 2)

end

end A077414.P1108837582216146202

namespace A077414

/-- `(n+1)*(n²+1)-a(n-2)` -/
def P1108837582216146202.Spec : Prop :=
  ∀ n, P1108837582216146202.a n = A077414 (n + 1)

end A077414

/-! ## A077414.P7374791663142932221

`(n+1)²+a(n-1)+a(n-1)/n` with `a(0)=0`
-/

namespace A077414.P7374791663142932221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  ((n + 1) ^ 2 : ℚ) + (a (n - 1) + a (n - 1) / (n : ℚ))

end

end A077414.P7374791663142932221

namespace A077414

/-- `(n+1)²+a(n-1)+a(n-1)/n` -/
def P7374791663142932221.Spec : Prop :=
  ∀ n, P7374791663142932221.a n = (A077414 (n + 1) : ℚ)

end A077414

/-!
# A077415: a(n) = n*(n+2)*(n-2)/3.

The programs for A077415, the canonical program `A077415.P16136648752436168051` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077415 has offset 2).

The definition of A077415 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077415.P9325661983449277242

`(n+2)*(n+4)*n/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077415.P9325661983449277242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (n + 4) * n : ℚ) / 3

end

end A077415.P9325661983449277242

namespace A077415

/-- `(n+2)*(n+4)*n/3` -/
def P9325661983449277242.Spec : Prop :=
  ∀ n, P9325661983449277242.a n = (A077415 (n + 2) : ℚ)

end A077415

/-! ## A077415.P16494835029430589977

`A084990(n+1)-1`
-/

namespace A077415.P16494835029430589977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084990 (n + 1) - 1

end

end A077415.P16494835029430589977

namespace A077415

/-- `A084990(n+1)-1` -/
def P16494835029430589977.Spec : Prop :=
  ∀ n, P16494835029430589977.a n = A077415 (n + 2)

end A077415

/-! ## A077415.P4439438408966365540

`A077414(n+2)-C(n+4, 3)`
-/

namespace A077415.P4439438408966365540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077414 (n + 2) - (Nat.choose (n + 4) 3 : ℤ)

end

end A077415.P4439438408966365540

namespace A077415

/-- `A077414(n+2)-C(n+4, 3)` -/
def P4439438408966365540.Spec : Prop :=
  ∀ n, P4439438408966365540.a n = A077415 (n + 2)

end A077415

/-! ## A077415.P16136648752436168051

`A077414(n+2)-A000292(n+2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A077415

/-- `A077414(n+2)-A000292(n+2)` -/
def P16136648752436168051.Spec : Prop :=
  ∀ n, P16136648752436168051.a n = A077415 (n + 2)

theorem P16136648752436168051.correct : P16136648752436168051.Spec := by
  intro n
  simp only [A077415, Nat.add_sub_cancel]

end A077415

/-! ## A077415.P17741455009177027954

`∑[ceil(n/acot(n+3))]`
-/

namespace A077415.P17741455009177027954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / SequenceMachineLib.acot (n + 3 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077415.P17741455009177027954

namespace A077415

/-- `∑[ceil(n/acot(n+3))]` -/
def P17741455009177027954.Spec : Prop :=
  ∀ n, P17741455009177027954.a n = A077415 (n + 2)

end A077415

/-! ## A077415.P3053566778887792664

`record[2*C(n+1, 3)-n]`
-/

namespace A077415.P3053566778887792664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (n + 1) 3 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077415.P3053566778887792664

namespace A077415

/-- `record[2*C(n+1, 3)-n]` -/
def P3053566778887792664.Spec : Prop :=
  ∀ n, P3053566778887792664.a n = A077415 (n + 2)

end A077415

/-! ## A077415.P7059585952073774303

`∑[∑[a(n-1)+2]]` with `a(0)=0, a(1)=5, a(2)=6`
-/

namespace A077415.P7059585952073774303
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 5, 6] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077415.P7059585952073774303

namespace A077415

/-- `∑[∑[a(n-1)+2]]` -/
def P7059585952073774303.Spec : Prop :=
  ∀ n, (P7059585952073774303.a n : ℤ) = A077415 (n + 2)

end A077415

/-! ## A077415.P11518960614243757362

`∑[(n+1)²+n-floor(acot(n))]`
-/

namespace A077415.P11518960614243757362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + n : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077415.P11518960614243757362

namespace A077415

/-- `∑[(n+1)²+n-floor(acot(n))]` -/
def P11518960614243757362.Spec : Prop :=
  ∀ n, P11518960614243757362.a n = A077415 (n + 2)

end A077415

/-! ## A077415.P7644037037114720684

`abs(2*C(n+3, 3)-(n+2))`
-/

namespace A077415.P7644037037114720684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * Nat.choose (n + 3) 3 : ℤ) - (n + 2 : ℤ)|

end

end A077415.P7644037037114720684

namespace A077415

/-- `abs(2*C(n+3, 3)-(n+2))` -/
def P7644037037114720684.Spec : Prop :=
  ∀ n, P7644037037114720684.a n = A077415 (n + 2)

end A077415

/-! ## A077415.P17490206042027964932

`xor(-1, ∑[n+3-(n+2)²])`
-/

namespace A077415.P17490206042027964932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - ((n + 2) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077415.P17490206042027964932

namespace A077415

/-- `xor(-1, ∑[n+3-(n+2)²])` -/
def P17490206042027964932.Spec : Prop :=
  ∀ n, P17490206042027964932.a n = A077415 (n + 2)

end A077415

/-! ## A077415.P6071954938128787650

`floor(∑[∑[4*n]]-a(n-2))` with `a(0)=0, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A077415.P6071954938128787650
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 2)

end

end A077415.P6071954938128787650

namespace A077415

/-- `floor(∑[∑[4*n]]-a(n-2))` -/
def P6071954938128787650.Spec : Prop :=
  ∀ n, P6071954938128787650.a n = A077415 (n + 2)

end A077415

/-! ## A077415.P12553692031989243068

`abs((n+1)²+a(n-1)+n)` with `a(0)=0`
-/

namespace A077415.P12553692031989243068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (n + 1) ^ 2 + (a (n - 1) + n)

end

end A077415.P12553692031989243068

namespace A077415

/-- `abs((n+1)²+a(n-1)+n)` -/
def P12553692031989243068.Spec : Prop :=
  ∀ n, (P12553692031989243068.a n : ℤ) = A077415 (n + 2)

end A077415

/-! ## A077415.P13689320488271327562

`floor((n+1)²+a(n-1)+n)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A077415.P13689320488271327562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (n + 1) ^ 2 + (a (n - 1) + n)

end

end A077415.P13689320488271327562

namespace A077415

/-- `floor((n+1)²+a(n-1)+n)` -/
def P13689320488271327562.Spec : Prop :=
  ∀ n, (P13689320488271327562.a n : ℤ) = A077415 (n + 2)

end A077415

/-! ## A077415.P9657380478814101614

`ceil((n+1)²+a(n-1)+n)` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A077415.P9657380478814101614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (n + 1) ^ 2 + (a (n - 1) + n)

end

end A077415.P9657380478814101614

namespace A077415

/-- `ceil((n+1)²+a(n-1)+n)` -/
def P9657380478814101614.Spec : Prop :=
  ∀ n, (P9657380478814101614.a n : ℤ) = A077415 (n + 2)

end A077415

/-! ## A077415.P10354694262944504668

`round((n+1)²+a(n-1)+n)` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A077415.P10354694262944504668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (n + 1) ^ 2 + (a (n - 1) + n)

end

end A077415.P10354694262944504668

namespace A077415

/-- `round((n+1)²+a(n-1)+n)` -/
def P10354694262944504668.Spec : Prop :=
  ∀ n, (P10354694262944504668.a n : ℤ) = A077415 (n + 2)

end A077415

/-! ## A077415.P17205455383089758881

`∑[(C(2, n+2)-(n+1))²+n]`
-/

namespace A077415.P17205455383089758881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose 2 (n + 2) : ℤ) - (n + 1 : ℤ)) ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077415.P17205455383089758881

namespace A077415

/-- `∑[(C(2, n+2)-(n+1))²+n]` -/
def P17205455383089758881.Spec : Prop :=
  ∀ n, P17205455383089758881.a n = A077415 (n + 2)

end A077415

/-! ## A077415.P2442107101120364236

`∑[(n+1)²%((n+1)^3)+n]`
-/

namespace A077415.P2442107101120364236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 % (n + 1) ^ 3 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077415.P2442107101120364236

namespace A077415

/-- `∑[(n+1)²%((n+1)^3)+n]` -/
def P2442107101120364236.Spec : Prop :=
  ∀ n, (P2442107101120364236.a n : ℤ) = A077415 (n + 2)

end A077415

/-! ## A077415.P15845970208119343030

`record[a(n-1)+n²-(n+1)]` with `a(0)=0`
-/

namespace A077415.P15845970208119343030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + ((n ^ 2 : ℤ) - (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077415.P15845970208119343030

namespace A077415

/-- `record[a(n-1)+n²-(n+1)]` -/
def P15845970208119343030.Spec : Prop :=
  ∀ n, P15845970208119343030.a n = A077415 (n + 2)

end A077415

/-! ## A077415.P13039690151824406166

`floor(∑[lcm(n+1, n+2)]-(n+ϕ))`
-/

namespace A077415.P13039690151824406166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - ((n : ℝ) + Real.goldenRatio)⌋

end

end A077415.P13039690151824406166

namespace A077415

/-- `floor(∑[lcm(n+1, n+2)]-(n+ϕ))` -/
def P13039690151824406166.Spec : Prop :=
  ∀ n, P13039690151824406166.a n = A077415 (n + 2)

end A077415

/-! ## A077415.P12630092689655304084

`∑[xor((n+1)², round(acot(n+1)))+n]`
-/

namespace A077415.P12630092689655304084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n + 1) ^ 2 : ℤ) (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n + 1 : ℝ))) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077415.P12630092689655304084

namespace A077415

/-- `∑[xor((n+1)², round(acot(n+1)))+n]` -/
def P12630092689655304084.Spec : Prop :=
  ∀ n, P12630092689655304084.a n = A077415 (n + 2)

end A077415

/-!
# A077416: Chebyshev S-sequence with Diophantine property.

The programs for A077416, the canonical program `A077416.P7614750659029496959` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077416 has offset 0).

The definition of A077416 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077416.P7614750659029496959

`12*a(n-1)-a(n-2)` with `a(0)=1, a(1)=13`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077416

/-- `12*a(n-1)-a(n-2)` -/
def P7614750659029496959.Spec : Prop :=
  ∀ n, P7614750659029496959.a n = A077416 n

theorem P7614750659029496959.correct : P7614750659029496959.Spec := by
  intro n
  simp only [A077416]

end A077416

/-! ## A077416.P16054131994228593239

`sqrt((7*A077417(n)²-2)/5)`
-/

namespace A077416.P16054131994228593239
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((7 * A077417 n ^ 2 - 2 : ℚ) / 5 : ℝ)

end

end A077416.P16054131994228593239

namespace A077416

/-- `sqrt((7*A077417(n)²-2)/5)` -/
def P16054131994228593239.Spec : Prop :=
  ∀ n, P16054131994228593239.a n = (A077416 n : ℝ)

end A077416

/-! ## A077416.P6116385043189637748

`ogf((1+x)/(1-12x+x^2))`
-/

namespace A077416.P6116385043189637748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -12, 1] n

end

end A077416.P6116385043189637748

namespace A077416

/-- `ogf((1+x)/(1-12x+x^2))` -/
def P6116385043189637748.Spec : Prop :=
  ∀ n, P6116385043189637748.a n = A077416 n

end A077416

/-! ## A077416.P8284139134411291278

`Δ[A098299(n)]`
-/

namespace A077416.P8284139134411291278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077416.P8284139134411291278

namespace A077416

/-- `Δ[A098299(n)]` -/
def P8284139134411291278.Spec : Prop :=
  ∀ n, P8284139134411291278.a n = A077416 n

end A077416

/-! ## A077416.P10986196587080858537

`∑[A087800(n)]-1`
-/

namespace A077416.P10986196587080858537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A077416.P10986196587080858537

namespace A077416

/-- `∑[A087800(n)]-1` -/
def P10986196587080858537.Spec : Prop :=
  ∀ n, P10986196587080858537.a n = A077416 n

end A077416

/-! ## A077416.P7174903810356057838

`Δ[A023038(n)/5]`
-/

namespace A077416.P7174903810356057838
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023038 n : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077416.P7174903810356057838

namespace A077416

/-- `Δ[A023038(n)/5]` -/
def P7174903810356057838.Spec : Prop :=
  ∀ n, P7174903810356057838.a n = (A077416 n : ℚ)

end A077416

/-! ## A077416.P10125353594020036372

`A164826(2*(n+1))`
-/

namespace A077416.P10125353594020036372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164826 (2 * (n + 1))

end

end A077416.P10125353594020036372

namespace A077416

/-- `A164826(2*(n+1))` -/
def P10125353594020036372.Spec : Prop :=
  ∀ n, P10125353594020036372.a n = A077416 n

end A077416

/-! ## A077416.P14866146032967698964

`A041058(2*n)/5`
-/

namespace A077416.P14866146032967698964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041058 (2 * n) : ℚ) / 5

end

end A077416.P14866146032967698964

namespace A077416

/-- `A041058(2*n)/5` -/
def P14866146032967698964.Spec : Prop :=
  ∀ n, P14866146032967698964.a n = (A077416 n : ℚ)

end A077416

/-! ## A077416.P898383288670781718

`Δ[A080875(2*n)/5]`
-/

namespace A077416.P898383288670781718
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080875 (2 * n) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077416.P898383288670781718

namespace A077416

/-- `Δ[A080875(2*n)/5]` -/
def P898383288670781718.Spec : Prop :=
  ∀ n, P898383288670781718.a n = (A077416 n : ℚ)

end A077416

/-! ## A077416.P12310182251275327084

`2*A133272(n+1)-1`
-/

namespace A077416.P12310182251275327084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133272 (n + 1) - 1

end

end A077416.P12310182251275327084

namespace A077416

/-- `2*A133272(n+1)-1` -/
def P12310182251275327084.Spec : Prop :=
  ∀ n, P12310182251275327084.a n = A077416 n

end A077416

/-!
# A077417: Chebyshev T-sequence with Diophantine property.

The programs for A077417, the canonical program `A077417.P742856966080571848` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077417 has offset 0).

The definition of A077417 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077417.P742856966080571848

`12*a(n-1)-a(n-2)` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077417

/-- `12*a(n-1)-a(n-2)` -/
def P742856966080571848.Spec : Prop :=
  ∀ n, P742856966080571848.a n = A077417 n

theorem P742856966080571848.correct : P742856966080571848.Spec := by
  intro n
  simp only [A077417]

end A077417

/-! ## A077417.P15166827556715358733

`sqrt(A098309(2*n+1))`
-/

namespace A077417.P15166827556715358733
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A098309 (2 * n + 1) : ℝ)

end

end A077417.P15166827556715358733

namespace A077417

/-- `sqrt(A098309(2*n+1))` -/
def P15166827556715358733.Spec : Prop :=
  ∀ n, P15166827556715358733.a n = (A077417 n : ℝ)

end A077417

/-! ## A077417.P6168130862365338494

`sqrt((5*A077416(n)²+2)/7)`
-/

namespace A077417.P6168130862365338494
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((5 * A077416 n ^ 2 + 2 : ℚ) / 7 : ℝ)

end

end A077417.P6168130862365338494

namespace A077417

/-- `sqrt((5*A077416(n)²+2)/7)` -/
def P6168130862365338494.Spec : Prop :=
  ∀ n, P6168130862365338494.a n = (A077417 n : ℝ)

end A077417

/-! ## A077417.P871774910633520288

`ogf((1-x)/(1-12x+x^2))`
-/

namespace A077417.P871774910633520288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -12, 1] n

end

end A077417.P871774910633520288

namespace A077417

/-- `ogf((1-x)/(1-12x+x^2))` -/
def P871774910633520288.Spec : Prop :=
  ∀ n, P871774910633520288.a n = A077417 n

end A077417

/-! ## A077417.P16245320949170441925

`A041059(2*n)`
-/

namespace A077417.P16245320949170441925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041059 (2 * n)

end

end A077417.P16245320949170441925

namespace A077417

/-- `A041059(2*n)` -/
def P16245320949170441925.Spec : Prop :=
  ∀ n, P16245320949170441925.a n = A077417 n

end A077417

/-! ## A077417.P7777451246254542800

`A080875(Δ[n²])`
-/

namespace A077417.P7777451246254542800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080875 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A077417.P7777451246254542800

namespace A077417

/-- `A080875(Δ[n²])` -/
def P7777451246254542800.Spec : Prop :=
  ∀ n, P7777451246254542800.a n = A077417 n

end A077417

/-! ## A077417.P8229612607414062756

`A385121(n+1)/2`
-/

namespace A077417.P8229612607414062756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385121 (n + 1) : ℚ) / 2

end

end A077417.P8229612607414062756

namespace A077417

/-- `A385121(n+1)/2` -/
def P8229612607414062756.Spec : Prop :=
  ∀ n, P8229612607414062756.a n = (A077417 n : ℚ)

end A077417

/-! ## A077417.P3577298774710905686

`2*A253621(n+1)-1`
-/

namespace A077417.P3577298774710905686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253621 (n + 1) - 1

end

end A077417.P3577298774710905686

namespace A077417

/-- `2*A253621(n+1)-1` -/
def P3577298774710905686.Spec : Prop :=
  ∀ n, P3577298774710905686.a n = A077417 n

end A077417

/-! ## A077417.P3447009638916242330

`A087800(n)-a(n-1)` with `a(0)=1`
-/

namespace A077417.P3447009638916242330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A087800 n - a (n - 1)

end

end A077417.P3447009638916242330

namespace A077417

/-- `A087800(n)-a(n-1)` -/
def P3447009638916242330.Spec : Prop :=
  ∀ n, P3447009638916242330.a n = A077417 n

end A077417

/-! ## A077417.P2978821520119520506

`or(1, A041059(A004277(n)))`
-/

namespace A077417.P2978821520119520506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A041059 (A004277 n).toNat)

end

end A077417.P2978821520119520506

namespace A077417

/-- `or(1, A041059(A004277(n)))` -/
def P2978821520119520506.Spec : Prop :=
  ∀ n, P2978821520119520506.a n = A077417 n

end A077417

/-!
# A077418: Number of divisors of Fibonacci(n+2)-1.

The programs for A077418, the canonical program `A077418.P7081460192770050012` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077418 has offset 1).

The definition of A077418 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077418.P7081460192770050012

`A000005(A000071(n+3))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A077418

/-- `A000005(A000071(n+3))` -/
def P7081460192770050012.Spec : Prop :=
  ∀ n, P7081460192770050012.a n = A077418 (n + 1)

theorem P7081460192770050012.correct : P7081460192770050012.Spec := by
  intro n
  simp only [A077418, Nat.add_sub_cancel]

end A077418

/-! ## A077418.P18078095688356471684

`∏{e}[ceil(ϕ*a(n-1)), #+1]` with `a(0)=1`
-/

namespace A077418.P18078095688356471684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌈Real.goldenRatio * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A077418.P18078095688356471684

namespace A077418

/-- `∏{e}[ceil(ϕ*a(n-1)), #+1]` -/
def P18078095688356471684.Spec : Prop :=
  ∀ n, (P18078095688356471684.a n : ℤ) = A077418 (n + 1)

end A077418

/-! ## A077418.P1140340992539312832

`∏{e}[floor(ϕ*a(n-1))+1, #+1]` with `a(0)=1`
-/

namespace A077418.P1140340992539312832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋ + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A077418.P1140340992539312832

namespace A077418

/-- `∏{e}[floor(ϕ*a(n-1))+1, #+1]` -/
def P1140340992539312832.Spec : Prop :=
  ∀ n, (P1140340992539312832.a n : ℤ) = A077418 (n + 1)

end A077418

/-! ## A077418.P8389937170213991440

`∏{e}[round(ϕ*a(n-1))+1, #+1]` with `a(0)=1, a(1)=2`
-/

namespace A077418.P8389937170213991440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A077418.P8389937170213991440

namespace A077418

/-- `∏{e}[round(ϕ*a(n-1))+1, #+1]` -/
def P8389937170213991440.Spec : Prop :=
  ∀ n, (P8389937170213991440.a n : ℤ) = A077418 (n + 1)

end A077418

/-! ## A077418.P2060259399824283912

`∏{e}[∑[a(n-1)+a(n-2)], #+1]` with `a(0)=1, a(1)=1`
-/

namespace A077418.P2060259399824283912
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (n - 1) + f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A077418.P2060259399824283912

namespace A077418

/-- `∏{e}[∑[a(n-1)+a(n-2)], #+1]` -/
def P2060259399824283912.Spec : Prop :=
  ∀ n, (P2060259399824283912.a n : ℤ) = A077418 (n + 1)

end A077418

/-!
# A077419: Largest Whitney number of Fibonacci lattices J(Z_n).

The programs for A077419, there is no canonical definition to state claims against.
-/

/-! ## A077419.P2966237368072405722

`A079487(record[A245300(n)])`
-/

namespace A077419.P2966237368072405722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A077419.P2966237368072405722

/-! ## A077419.P11178733196852836774

`A079487(A007590(n)+n)`
-/

namespace A077419.P11178733196852836774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (A007590 n + (n : ℤ)).toNat

end

end A077419.P11178733196852836774

/-! ## A077419.P14776116051926706827

`A079487(∑[A063196(n+1)])`
-/

namespace A077419.P14776116051926706827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A077419.P14776116051926706827

/-! ## A077419.P644892193726149849

`A079487(A123108(n)+∑[n])`
-/

namespace A077419.P644892193726149849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (A123108 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A077419.P644892193726149849

/-! ## A077419.P12986189659423940317

`A079487(record[A007590(n)-n])`
-/

namespace A077419.P12986189659423940317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A077419.P12986189659423940317

/-! ## A077419.P17635750284538113448

`A079487(A000982(n+1)-1)`
-/

namespace A077419.P17635750284538113448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (A000982 (n + 1) - 1).toNat

end

end A077419.P17635750284538113448

/-! ## A077419.P10207083422575496150

`A079487(A004526(n)+A000217(n))`
-/

namespace A077419.P10207083422575496150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (A004526 n + A000217 n).toNat

end

end A077419.P10207083422575496150

/-! ## A077419.P11389106780263080939

`A079487(A161680(n+1)+A123108(n))`
-/

namespace A077419.P11389106780263080939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (A161680 (n + 1) + A123108 n).toNat

end

end A077419.P11389106780263080939

/-! ## A077419.P15693784854126512247

`A079487(∑[A042963(n+1)]-A000124(n))`
-/

namespace A077419.P15693784854126512247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (∑ j ∈ Finset.range (n + 1), f1 j - A000124 n).toNat

end

end A077419.P15693784854126512247

/-! ## A077419.P13676845005306913601

`A079487(A004526(n²)+n)`
-/

namespace A077419.P13676845005306913601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (A004526 (n ^ 2) + (n : ℤ)).toNat

end

end A077419.P13676845005306913601

/-!
# A077420: Bisection of Chebyshev sequence T(n,3) (odd part) with Diophantine property.

The programs for A077420, the canonical program `A077420.P7318676230197988644` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077420 has offset 0).

The definition of A077420 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077420.P7318676230197988644

`34*a(n-1)-a(n-2)` with `a(0)=1, a(1)=33`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077420

/-- `34*a(n-1)-a(n-2)` -/
def P7318676230197988644.Spec : Prop :=
  ∀ n, P7318676230197988644.a n = A077420 n

theorem P7318676230197988644.correct : P7318676230197988644.Spec := by
  intro n
  simp only [A077420]

end A077420

/-! ## A077420.P7892479260023864411

`A003499(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A077420.P7892479260023864411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003499 (2 * n) - a (n - 1)

end

end A077420.P7892479260023864411

namespace A077420

/-- `A003499(2*n)-a(n-1)` -/
def P7892479260023864411.Spec : Prop :=
  ∀ n, P7892479260023864411.a n = A077420 n

end A077420

/-! ## A077420.P5945531641889044168

`((1+sqrt(2))^(4*n+2)+(1-sqrt(2))^(4*n+2))/6`
-/

namespace A077420.P5945531641889044168
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (2 : ℝ)) ^ (4 * n + 2) + (1 - Real.sqrt (2 : ℝ)) ^ (4 * n + 2)) / 6

end

end A077420.P5945531641889044168

namespace A077420

/-- `((1+sqrt(2))^(4*n+2)+(1-sqrt(2))^(4*n+2))/6` -/
def P5945531641889044168.Spec : Prop :=
  ∀ n, P5945531641889044168.a n = (A077420 n : ℝ)

end A077420

/-! ## A077420.P6756594466333429429

`Δ[A091761(n)]`
-/

namespace A077420.P6756594466333429429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077420.P6756594466333429429

namespace A077420

/-- `Δ[A091761(n)]` -/
def P6756594466333429429.Spec : Prop :=
  ∀ n, P6756594466333429429.a n = A077420 n

end A077420

/-! ## A077420.P15281145138393265662

`A041027(2*n)`
-/

namespace A077420.P15281145138393265662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041027 (2 * n)

end

end A077420.P15281145138393265662

namespace A077420

/-- `A041027(2*n)` -/
def P15281145138393265662.Spec : Prop :=
  ∀ n, P15281145138393265662.a n = A077420 n

end A077420

/-! ## A077420.P3296459862813121604

`A041127(2*n)`
-/

namespace A077420.P3296459862813121604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041127 (2 * n)

end

end A077420.P3296459862813121604

namespace A077420

/-- `A041127(2*n)` -/
def P3296459862813121604.Spec : Prop :=
  ∀ n, P3296459862813121604.a n = A077420 n

end A077420

/-! ## A077420.P2931601513280890616

`A041543(2*n)`
-/

namespace A077420.P2931601513280890616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041543 (2 * n)

end

end A077420.P2931601513280890616

namespace A077420

/-- `A041543(2*n)` -/
def P2931601513280890616.Spec : Prop :=
  ∀ n, P2931601513280890616.a n = A077420 n

end A077420

/-! ## A077420.P4440362749141497319

`A144533(Δ[n²])`
-/

namespace A077420.P4440362749141497319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144533 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A077420.P4440362749141497319

namespace A077420

/-- `A144533(Δ[n²])` -/
def P4440362749141497319.Spec : Prop :=
  ∀ n, P4440362749141497319.a n = A077420 n

end A077420

/-! ## A077420.P4397129715725206891

`A101892(4*n+2)`
-/

namespace A077420.P4397129715725206891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101892 (4 * n + 2)

end

end A077420.P4397129715725206891

namespace A077420

/-- `A101892(4*n+2)` -/
def P4397129715725206891.Spec : Prop :=
  ∀ n, P4397129715725206891.a n = A077420 n

end A077420

/-! ## A077420.P14220359620367995009

`floor(A165518(n+1)/3)`
-/

namespace A077420.P14220359620367995009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A165518 (n + 1) : ℚ) / 3⌋

end

end A077420.P14220359620367995009

namespace A077420

/-- `floor(A165518(n+1)/3)` -/
def P14220359620367995009.Spec : Prop :=
  ∀ n, P14220359620367995009.a n = A077420 n

end A077420

/-!
# A077421: Chebyshev sequence U(n,11)=S(n,22) with Diophantine property.

The programs for A077421, the canonical program `A077421.P11984468828011570067` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077421 has offset 0).

The definition of A077421 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077421.P11984468828011570067

`sqrt((A077422(n+1)²-1)/30)/2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A077421

/-- `sqrt((A077422(n+1)²-1)/30)/2` -/
def P11984468828011570067.Spec : Prop :=
  ∀ n, P11984468828011570067.a n = (A077421 n : ℝ)

end A077421

/-! ## A077421.P4250081275251235758

`ogf(1/(1-22x+x^2))`
-/

namespace A077421.P4250081275251235758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -22, 1] n

end

end A077421.P4250081275251235758

namespace A077421

/-- `ogf(1/(1-22x+x^2))` -/
def P4250081275251235758.Spec : Prop :=
  ∀ n, P4250081275251235758.a n = A077421 n

end A077421

/-! ## A077421.P1647532115046946448

`22*a(n-1)-a(n-2)` with `a(0)=1, a(1)=22`
-/

namespace A077421.P1647532115046946448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 22] fun n a =>
  22 * a (n - 1) - a (n - 2)

end

end A077421.P1647532115046946448

namespace A077421

/-- `22*a(n-1)-a(n-2)` -/
def P1647532115046946448.Spec : Prop :=
  ∀ n, P1647532115046946448.a n = A077421 n

end A077421

/-! ## A077421.P10557218244871671335

`A041219(Δ[n²])`
-/

namespace A077421.P10557218244871671335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041219 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A077421.P10557218244871671335

namespace A077421

/-- `A041219(Δ[n²])` -/
def P10557218244871671335.Spec : Prop :=
  ∀ n, P10557218244871671335.a n = A077421 n

end A077421

/-! ## A077421.P4172446975259250692

`∑[A157014(n+1)]`
-/

namespace A077421.P4172446975259250692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077421.P4172446975259250692

namespace A077421

/-- `∑[A157014(n+1)]` -/
def P4172446975259250692.Spec : Prop :=
  ∀ n, P4172446975259250692.a n = A077421 n

end A077421

/-! ## A077421.P17042401429100462517

`∑[A041049(2*n)]`
-/

namespace A077421.P17042401429100462517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041049 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077421.P17042401429100462517

namespace A077421

/-- `∑[A041049(2*n)]` -/
def P17042401429100462517.Spec : Prop :=
  ∀ n, P17042401429100462517.a n = A077421 n

end A077421

/-! ## A077421.P4081343988631437693

`∑[A041219(2*n)]`
-/

namespace A077421.P4081343988631437693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041219 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077421.P4081343988631437693

namespace A077421

/-- `∑[A041219(2*n)]` -/
def P4081343988631437693.Spec : Prop :=
  ∀ n, P4081343988631437693.a n = A077421 n

end A077421

/-! ## A077421.P5626704696074256912

`∑[A153317(2*n)]`
-/

namespace A077421.P5626704696074256912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153317 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077421.P5626704696074256912

namespace A077421

/-- `∑[A153317(2*n)]` -/
def P5626704696074256912.Spec : Prop :=
  ∀ n, P5626704696074256912.a n = A077421 n

end A077421

/-! ## A077421.P12263326844594711384

`A041049(Δ[n²])/2`
-/

namespace A077421.P12263326844594711384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041049 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A077421.P12263326844594711384

namespace A077421

/-- `A041049(Δ[n²])/2` -/
def P12263326844594711384.Spec : Prop :=
  ∀ n, P12263326844594711384.a n = (A077421 n : ℚ)

end A077421

/-! ## A077421.P6455418311164433669

`∑[A133275(n+1)/3]`
-/

namespace A077421.P6455418311164433669
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133275 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077421.P6455418311164433669

namespace A077421

/-- `∑[A133275(n+1)/3]` -/
def P6455418311164433669.Spec : Prop :=
  ∀ n, P6455418311164433669.a n = (A077421 n : ℚ)

end A077421

/-!
# A077422: Chebyshev sequence T(n,11) with Diophantine property.

The programs for A077422, the canonical program `A077422.P190014747257137210` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077422 has offset 0).

The definition of A077422 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077422.P190014747257137210

`22*a(n-1)-a(n-2)` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077422

/-- `22*a(n-1)-a(n-2)` -/
def P190014747257137210.Spec : Prop :=
  ∀ n, P190014747257137210.a n = A077422 n

theorem P190014747257137210.correct : P190014747257137210.Spec := by
  intro n
  simp only [A077422]

end A077422

/-! ## A077422.P18233284747945587728

`ogf((1-11x)/(1-22x+x^2))`
-/

namespace A077422.P18233284747945587728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -11] [1, -22, 1] n

end

end A077422.P18233284747945587728

namespace A077422

/-- `ogf((1-11x)/(1-22x+x^2))` -/
def P18233284747945587728.Spec : Prop :=
  ∀ n, P18233284747945587728.a n = A077422 n

end A077422

/-! ## A077422.P3444554968053855404

`((11+2*sqrt(30))^n+(11-2*sqrt(30))^n)/2`
-/

namespace A077422.P3444554968053855404
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((11 + 2 * Real.sqrt (30 : ℝ)) ^ n + (11 - 2 * Real.sqrt (30 : ℝ)) ^ n) / 2

end

end A077422.P3444554968053855404

namespace A077422

/-- `((11+2*sqrt(30))^n+(11-2*sqrt(30))^n)/2` -/
def P3444554968053855404.Spec : Prop :=
  ∀ n, P3444554968053855404.a n = (A077422 n : ℝ)

theorem P3444554968053855404.correct : P3444554968053855404.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A077422, Nat.add_sub_cancel, A077422.P3444554968053855404.a, A077422.P190014747257137210.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A077422, Nat.add_sub_cancel, A077422.P3444554968053855404.a, A077422.P190014747257137210.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A077422

/-! ## A077422.P15758321143815971657

`floor(A090730(n)/2)`
-/

namespace A077422.P15758321143815971657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A090730 n : ℚ) / 2⌋

end

end A077422.P15758321143815971657

namespace A077422

/-- `floor(A090730(n)/2)` -/
def P15758321143815971657.Spec : Prop :=
  ∀ n, P15758321143815971657.a n = A077422 n

end A077422

/-! ## A077422.P5180882734170825768

`2*A322707(n)+1`
-/

namespace A077422.P5180882734170825768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A322707 n + 1

end

end A077422.P5180882734170825768

namespace A077422

/-- `2*A322707(n)+1` -/
def P5180882734170825768.Spec : Prop :=
  ∀ n, P5180882734170825768.a n = A077422 n

end A077422

/-! ## A077422.P17195522864797114028

`A153318(A004273(n))`
-/

namespace A077422.P17195522864797114028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153318 (A004273 n).toNat

end

end A077422.P17195522864797114028

namespace A077422

/-- `A153318(A004273(n))` -/
def P17195522864797114028.Spec : Prop :=
  ∀ n, P17195522864797114028.a n = A077422 n

end A077422

/-! ## A077422.P5778066871111599052

`A153318(2*n+1-A382713(2*n))`
-/

namespace A077422.P5778066871111599052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153318 ((2 * n + 1 : ℤ) - A382713 (2 * n)).toNat

end

end A077422.P5778066871111599052

namespace A077422

/-- `A153318(2*n+1-A382713(2*n))` -/
def P5778066871111599052.Spec : Prop :=
  ∀ n, P5778066871111599052.a n = A077422 n

end A077422

/-! ## A077422.P13813632555496991272

`A090730(n)/2*A020639(gcd(n, n+1))`
-/

namespace A077422.P13813632555496991272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090730 n : ℚ) / 2 * (A020639 (Nat.gcd n (n + 1)) : ℚ)

end

end A077422.P13813632555496991272

namespace A077422

/-- `A090730(n)/2*A020639(gcd(n, n+1))` -/
def P13813632555496991272.Spec : Prop :=
  ∀ n, P13813632555496991272.a n = (A077422 n : ℚ)

end A077422

/-! ## A077422.P14281694786159480358

`A153318(2*n+1-A072996(2*n+1))`
-/

namespace A077422.P14281694786159480358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153318 ((2 * n + 1 : ℤ) - A072996 (2 * n + 1)).toNat

end

end A077422.P14281694786159480358

namespace A077422

/-- `A153318(2*n+1-A072996(2*n+1))` -/
def P14281694786159480358.Spec : Prop :=
  ∀ n, P14281694786159480358.a n = A077422 n

end A077422

/-! ## A077422.P17613072589544061983

`A103737(2*n+1)+A103737(2*(n+1))+1`
-/

namespace A077422.P17613072589544061983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103737 (2 * n + 1) + (A103737 (2 * (n + 1)) + 1)

end

end A077422.P17613072589544061983

namespace A077422

/-- `A103737(2*n+1)+A103737(2*(n+1))+1` -/
def P17613072589544061983.Spec : Prop :=
  ∀ n, P17613072589544061983.a n = A077422 n

end A077422

/-!
# A077423: Chebyshev sequence U(n,12)=S(n,24) with Diophantine property.

The programs for A077423, the canonical program `A077423.P7460122472437008509` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077423 has offset 0).

The definition of A077423 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077423.P7460122472437008509

`24*a(n-1)-a(n-2)` with `a(0)=1, a(1)=24`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077423

/-- `24*a(n-1)-a(n-2)` -/
def P7460122472437008509.Spec : Prop :=
  ∀ n, P7460122472437008509.a n = A077423 n

theorem P7460122472437008509.correct : P7460122472437008509.Spec := by
  intro n
  simp only [A077423]

end A077423

/-! ## A077423.P799822485419579833

`sqrt((A077424(n+1)²-1)/143)`
-/

namespace A077423.P799822485419579833
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A077424 (n + 1) ^ 2 - 1 : ℚ) / 143 : ℝ)

end

end A077423.P799822485419579833

namespace A077423

/-- `sqrt((A077424(n+1)²-1)/143)` -/
def P799822485419579833.Spec : Prop :=
  ∀ n, P799822485419579833.a n = (A077423 n : ℝ)

end A077423

/-! ## A077423.P18114622310811196775

`ogf(1/(1-24x+x^2))`
-/

namespace A077423.P18114622310811196775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -24, 1] n

end

end A077423.P18114622310811196775

namespace A077423

/-- `ogf(1/(1-24x+x^2))` -/
def P18114622310811196775.Spec : Prop :=
  ∀ n, P18114622310811196775.a n = A077423 n

end A077423

/-! ## A077423.P10703604862511406102

`A041263(Δ[n²])`
-/

namespace A077423.P10703604862511406102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041263 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A077423.P10703604862511406102

namespace A077423

/-- `A041263(Δ[n²])` -/
def P10703604862511406102.Spec : Prop :=
  ∀ n, P10703604862511406102.a n = A077423 n

end A077423

/-! ## A077423.P6366001318042719265

`∑[A159664(n+1)]`
-/

namespace A077423.P6366001318042719265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077423.P6366001318042719265

namespace A077423

/-- `∑[A159664(n+1)]` -/
def P6366001318042719265.Spec : Prop :=
  ∀ n, P6366001318042719265.a n = A077423 n

end A077423

/-! ## A077423.P1669645435801797502

`∑[A041263(2*n)]`
-/

namespace A077423.P1669645435801797502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041263 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077423.P1669645435801797502

namespace A077423

/-- `∑[A041263(2*n)]` -/
def P1669645435801797502.Spec : Prop :=
  ∀ n, P1669645435801797502.a n = A077423 n

end A077423

/-! ## A077423.P6992661501235379465

`A159661(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A077423.P6992661501235379465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A159661 (n + 1) - a (n - 1)

end

end A077423.P6992661501235379465

namespace A077423

/-- `A159661(n+1)-a(n-1)` -/
def P6992661501235379465.Spec : Prop :=
  ∀ n, P6992661501235379465.a n = A077423 n

end A077423

/-! ## A077423.P18039186267215857660

`A077424(n)+12*a(n-1)` with `a(0)=1`
-/

namespace A077423.P18039186267215857660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077424 n + 12 * a (n - 1)

end

end A077423.P18039186267215857660

namespace A077423

/-- `A077424(n)+12*a(n-1)` -/
def P18039186267215857660.Spec : Prop :=
  ∀ n, P18039186267215857660.a n = A077423 n

end A077423

/-! ## A077423.P4877194680363551013

`25*a(n-1)-A159661(n)` with `a(0)=1`
-/

namespace A077423.P4877194680363551013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  25 * a (n - 1) - A159661 n

end

end A077423.P4877194680363551013

namespace A077423

/-- `25*a(n-1)-A159661(n)` -/
def P4877194680363551013.Spec : Prop :=
  ∀ n, P4877194680363551013.a n = A077423 n

end A077423

/-! ## A077423.P2929963717199327785

`∑[record[A041263(A014681(n))]]`
-/

namespace A077423.P2929963717199327785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041263 (A014681 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077423.P2929963717199327785

namespace A077423

/-- `∑[record[A041263(A014681(n))]]` -/
def P2929963717199327785.Spec : Prop :=
  ∀ n, P2929963717199327785.a n = A077423 n

end A077423

/-!
# A077424: Chebyshev sequence T(n,12) with Diophantine property.

The programs for A077424, the canonical program `A077424.P16660609408730404990` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077424 has offset 0).

The definition of A077424 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077424.P16660609408730404990

`24*a(n-1)-a(n-2)` with `a(0)=1, a(1)=12`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077424

/-- `24*a(n-1)-a(n-2)` -/
def P16660609408730404990.Spec : Prop :=
  ∀ n, P16660609408730404990.a n = A077424 n

theorem P16660609408730404990.correct : P16660609408730404990.Spec := by
  intro n
  simp only [A077424]

end A077424

/-! ## A077424.P5380806511686398018

`ogf((1-12x)/(1-24x+x^2))`
-/

namespace A077424.P5380806511686398018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -12] [1, -24, 1] n

end

end A077424.P5380806511686398018

namespace A077424

/-- `ogf((1-12x)/(1-24x+x^2))` -/
def P5380806511686398018.Spec : Prop :=
  ∀ n, P5380806511686398018.a n = A077424 n

end A077424

/-! ## A077424.P18068988584566615594

`A090732(n)/2`
-/

namespace A077424.P18068988584566615594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090732 n : ℚ) / 2

end

end A077424.P18068988584566615594

namespace A077424

/-- `A090732(n)/2` -/
def P18068988584566615594.Spec : Prop :=
  ∀ n, P18068988584566615594.a n = (A077424 n : ℚ)

end A077424

/-! ## A077424.P7164773962431395941

`record[gcd(A027656(n), A041262(n))]`
-/

namespace A077424.P7164773962431395941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027656 n) (A041262 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077424.P7164773962431395941

namespace A077424

/-- `record[gcd(A027656(n), A041262(n))]` -/
def P7164773962431395941.Spec : Prop :=
  ∀ n, (P7164773962431395941.a n : ℤ) = A077424 n

end A077424

/-! ## A077424.P11029010122209699094

`(A159664(n+1)+A159664(A028310(n)))/2`
-/

namespace A077424.P11029010122209699094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159664 (n + 1) + A159664 (A028310 n).toNat : ℚ) / 2

end

end A077424.P11029010122209699094

namespace A077424

/-- `(A159664(n+1)+A159664(A028310(n)))/2` -/
def P11029010122209699094.Spec : Prop :=
  ∀ n, P11029010122209699094.a n = (A077424 n : ℚ)

end A077424

/-! ## A077424.P2432814243084401016

`A101124(eq[13, A002260(n+1)])`
-/

namespace A077424.P2432814243084401016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A077424.P2432814243084401016

namespace A077424

/-- `A101124(eq[13, A002260(n+1)])` -/
def P2432814243084401016.Spec : Prop :=
  ∀ n, P2432814243084401016.a n = A077424 n

end A077424

/-! ## A077424.P6352854634579750886

`A041262(2*n+1)-A041262(2*n)`
-/

namespace A077424.P6352854634579750886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041262 (2 * n + 1) - A041262 (2 * n)

end

end A077424.P6352854634579750886

namespace A077424

/-- `A041262(2*n+1)-A041262(2*n)` -/
def P6352854634579750886.Spec : Prop :=
  ∀ n, P6352854634579750886.a n = A077424 n

end A077424

/-! ## A077424.P13693596526676512089

`A322836(eq[12, A025581(n)])`
-/

namespace A077424.P13693596526676512089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A077424.P13693596526676512089

namespace A077424

/-- `A322836(eq[12, A025581(n)])` -/
def P13693596526676512089.Spec : Prop :=
  ∀ n, P13693596526676512089.a n = A077424 n

end A077424

/-! ## A077424.P3962911956440613330

`A322836(eq[13, A004736(n+1)])`
-/

namespace A077424.P3962911956440613330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A077424.P3962911956440613330

namespace A077424

/-- `A322836(eq[13, A004736(n+1)])` -/
def P3962911956440613330.Spec : Prop :=
  ∀ n, P3962911956440613330.a n = A077424 n

end A077424

/-!
# A077425: a(n) == 1 (mod 4) (see A016813), but not a square (i.e., not in A000290).

The programs for A077425, the canonical program `A077425.P1482060704504981513` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077425 has offset 1).

The definition of A077425 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077425.P1235531819378545826

`4*comp[∑[2*n]]+1`
-/

namespace A077425.P1235531819378545826
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A077425.P1235531819378545826

namespace A077425

/-- `4*comp[∑[2*n]]+1` -/
def P1235531819378545826.Spec : Prop :=
  ∀ n, (P1235531819378545826.a n : ℤ) = A077425 (n + 1)

end A077425

/-! ## A077425.P17790386673142846117

`xor(1, 4*comp[n²+n])`
-/

namespace A077425.P17790386673142846117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (4 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A077425.P17790386673142846117

namespace A077425

/-- `xor(1, 4*comp[n²+n])` -/
def P17790386673142846117.Spec : Prop :=
  ∀ n, (P17790386673142846117.a n : ℤ) = A077425 (n + 1)

end A077425

/-! ## A077425.P1482060704504981513

`∑[A000122(n)²+4]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A077425

/-- `∑[A000122(n)²+4]` -/
def P1482060704504981513.Spec : Prop :=
  ∀ n, P1482060704504981513.a n = A077425 (n + 1)

theorem P1482060704504981513.correct : P1482060704504981513.Spec := by
  intro n
  simp only [A077425, Nat.add_sub_cancel]

end A077425

/-! ## A077425.P9222318804555157932

`eq[2*val(n+1, 2), A169695(n)]`
-/

namespace A077425.P9222318804555157932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A077425.P9222318804555157932

namespace A077425

/-- `eq[2*val(n+1, 2), A169695(n)]` -/
def P9222318804555157932.Spec : Prop :=
  ∀ n, (P9222318804555157932.a n : ℤ) = A077425 (n + 1)

end A077425

/-! ## A077425.P6392170251300871157

`A004766(comp[∑[2*n]])`
-/

namespace A077425.P6392170251300871157
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A077425.P6392170251300871157

namespace A077425

/-- `A004766(comp[∑[2*n]])` -/
def P6392170251300871157.Spec : Prop :=
  ∀ n, P6392170251300871157.a n = A077425 (n + 1)

end A077425

/-! ## A077425.P4949076284271869604

`filter[A004766(n+1), A049240(#)]`
-/

namespace A077425.P4949076284271869604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A077425.P4949076284271869604

namespace A077425

/-- `filter[A004766(n+1), A049240(#)]` -/
def P4949076284271869604.Spec : Prop :=
  ∀ n, P4949076284271869604.a n = A077425 (n + 1)

end A077425

/-! ## A077425.P12363435487478768910

`filter[A004766(n+1), A323158(#)]`
-/

namespace A077425.P12363435487478768910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A077425.P12363435487478768910

namespace A077425

/-- `filter[A004766(n+1), A323158(#)]` -/
def P12363435487478768910.Spec : Prop :=
  ∀ n, P12363435487478768910.a n = A077425 (n + 1)

end A077425

/-! ## A077425.P7883012589738841681

`filter[A004766(n+1), A324903(#)]`
-/

namespace A077425.P7883012589738841681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A077425.P7883012589738841681

namespace A077425

/-- `filter[A004766(n+1), A324903(#)]` -/
def P7883012589738841681.Spec : Prop :=
  ∀ n, P7883012589738841681.a n = A077425 (n + 1)

end A077425

/-! ## A077425.P14002796373176318861

`filter[A004766(n+1), A324908(#)]`
-/

namespace A077425.P14002796373176318861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A077425.P14002796373176318861

namespace A077425

/-- `filter[A004766(n+1), A324908(#)]` -/
def P14002796373176318861.Spec : Prop :=
  ∀ n, P14002796373176318861.a n = A077425 (n + 1)

end A077425

/-! ## A077425.P8684758432406229899

`filter[A004766(n+1), A374474(#)]`
-/

namespace A077425.P8684758432406229899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A077425.P8684758432406229899

namespace A077425

/-- `filter[A004766(n+1), A374474(#)]` -/
def P8684758432406229899.Spec : Prop :=
  ∀ n, P8684758432406229899.a n = A077425 (n + 1)

end A077425

/-! ## A077425.P12076724487396633330

`A016813(comp[∑[2*n]])`
-/

namespace A077425.P12076724487396633330
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A077425.P12076724487396633330

namespace A077425

/-- `A016813(comp[∑[2*n]])` -/
def P12076724487396633330.Spec : Prop :=
  ∀ n, P12076724487396633330.a n = A077425 (n + 1)

end A077425

/-! ## A077425.P8946965662978997426

`filter[A016813(n), A049240(#)]`
-/

namespace A077425.P8946965662978997426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A077425.P8946965662978997426

namespace A077425

/-- `filter[A016813(n), A049240(#)]` -/
def P8946965662978997426.Spec : Prop :=
  ∀ n, P8946965662978997426.a n = A077425 (n + 1)

end A077425

/-! ## A077425.P14510101405258566209

`filter[A016813(n), A323158(#)]`
-/

namespace A077425.P14510101405258566209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A077425.P14510101405258566209

namespace A077425

/-- `filter[A016813(n), A323158(#)]` -/
def P14510101405258566209.Spec : Prop :=
  ∀ n, P14510101405258566209.a n = A077425 (n + 1)

end A077425

/-! ## A077425.P590847660885468008

`filter[A016813(n), A324903(#)]`
-/

namespace A077425.P590847660885468008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A077425.P590847660885468008

namespace A077425

/-- `filter[A016813(n), A324903(#)]` -/
def P590847660885468008.Spec : Prop :=
  ∀ n, P590847660885468008.a n = A077425 (n + 1)

end A077425

/-! ## A077425.P15581787450037103725

`filter[A016813(n), A324908(#)]`
-/

namespace A077425.P15581787450037103725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A077425.P15581787450037103725

namespace A077425

/-- `filter[A016813(n), A324908(#)]` -/
def P15581787450037103725.Spec : Prop :=
  ∀ n, P15581787450037103725.a n = A077425 (n + 1)

end A077425

/-! ## A077425.P12483014562401318943

`filter[A016813(n), A374474(#)]`
-/

namespace A077425.P12483014562401318943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A077425.P12483014562401318943

namespace A077425

/-- `filter[A016813(n), A374474(#)]` -/
def P12483014562401318943.Spec : Prop :=
  ∀ n, P12483014562401318943.a n = A077425 (n + 1)

end A077425

/-! ## A077425.P11125455673571015681

`filter[A277549(n+1), A324908(#)]`
-/

namespace A077425.P11125455673571015681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A077425.P11125455673571015681

namespace A077425

/-- `filter[A277549(n+1), A324908(#)]` -/
def P11125455673571015681.Spec : Prop :=
  ∀ n, P11125455673571015681.a n = A077425 (n + 1)

end A077425

/-! ## A077425.P11659504305574079174

`filter[A304868(n+1), A323158(#)]`
-/

namespace A077425.P11659504305574079174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A077425.P11659504305574079174

namespace A077425

/-- `filter[A304868(n+1), A323158(#)]` -/
def P11659504305574079174.Spec : Prop :=
  ∀ n, P11659504305574079174.a n = A077425 (n + 1)

end A077425

/-! ## A077425.P4897001780238009707

`filter[A304868(n+1), A324908(#)]`
-/

namespace A077425.P4897001780238009707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A077425.P4897001780238009707

namespace A077425

/-- `filter[A304868(n+1), A324908(#)]` -/
def P4897001780238009707.Spec : Prop :=
  ∀ n, P4897001780238009707.a n = A077425 (n + 1)

end A077425

/-! ## A077425.P2879475546678852607

`filter[A304868(n+1), A374474(#)]`
-/

namespace A077425.P2879475546678852607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A077425.P2879475546678852607

namespace A077425

/-- `filter[A304868(n+1), A374474(#)]` -/
def P2879475546678852607.Spec : Prop :=
  ∀ n, P2879475546678852607.a n = A077425 (n + 1)

end A077425

/-!
# A077426: Nonsquare integers k such that the continued fraction (sqrt(k)+1)/2 has odd period length.

The programs for A077426, there is no canonical definition to state claims against.
-/

/-! ## A077426.P13578493102899350111

`∩[2*n+1, A003814(n+1)]`
-/

namespace A077426.P13578493102899350111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077426.P13578493102899350111

/-! ## A077426.P13890237361018381702

`∩[2*n+1, A226696(n+1)]`
-/

namespace A077426.P13890237361018381702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077426.P13890237361018381702

/-! ## A077426.P7495117044260888655

`∩[2*n+1, A031396(n+2)]`
-/

namespace A077426.P7495117044260888655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077426.P7495117044260888655

/-! ## A077426.P10888417718375813898

`filter[A003814(n+1), A035263(#)]`
-/

namespace A077426.P10888417718375813898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A077426.P10888417718375813898

/-! ## A077426.P14299486080891507914

`filter[A003814(n+1), A093719(#)]`
-/

namespace A077426.P14299486080891507914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A077426.P14299486080891507914

/-! ## A077426.P13354043175391746607

`filter[A003814(n+1), A152822(#)]`
-/

namespace A077426.P13354043175391746607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A077426.P13354043175391746607

/-! ## A077426.P18292830256625556530

`filter[A003814(n+1), A187074(#)]`
-/

namespace A077426.P18292830256625556530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A077426.P18292830256625556530

/-! ## A077426.P13930483528555255405

`filter[A226696(n+1), A039982(#)]`
-/

namespace A077426.P13930483528555255405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A077426.P13930483528555255405

/-! ## A077426.P6726846343712066499

`filter[A226696(n+1), A093719(#)]`
-/

namespace A077426.P6726846343712066499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A077426.P6726846343712066499

/-! ## A077426.P4147594200108694999

`filter[A226696(n+1), A098725(#)]`
-/

namespace A077426.P4147594200108694999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A077426.P4147594200108694999

/-! ## A077426.P10821973544645575386

`filter[A031396(n+1), A323158(#)]`
-/

namespace A077426.P10821973544645575386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A077426.P10821973544645575386

/-! ## A077426.P11917725558465692683

`filter[A031396(n+1), A324908(#)]`
-/

namespace A077426.P11917725558465692683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A077426.P11917725558465692683

/-! ## A077426.P9585986469558091527

`filter[A031396(n+1), A355450(#)]`
-/

namespace A077426.P9585986469558091527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A077426.P9585986469558091527

/-! ## A077426.P8709314885188799745

`filter[A226696(n+1), A166486(#)]`
-/

namespace A077426.P8709314885188799745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A077426.P8709314885188799745

/-! ## A077426.P7880938695580862746

`filter[A226696(n+1), A320106(#)]`
-/

namespace A077426.P7880938695580862746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A077426.P7880938695580862746

/-! ## A077426.P8168545986416974945

`filter[A226696(n+1), A323158(#)]`
-/

namespace A077426.P8168545986416974945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A077426.P8168545986416974945

/-! ## A077426.P13353715952710543232

`∩[A003814(n+1), A016813(n)]`
-/

namespace A077426.P13353715952710543232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077426.P13353715952710543232

/-! ## A077426.P235631804416294519

`∩[A226696(n+1), A016813(n)]`
-/

namespace A077426.P235631804416294519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077426.P235631804416294519

/-! ## A077426.P16939982485481635828

`∩[A003814(n+1), A004613(n+1)]`
-/

namespace A077426.P16939982485481635828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077426.P16939982485481635828

/-! ## A077426.P7819908928017465542

`∩[A003814(n+1), A004766(n+1)]`
-/

namespace A077426.P7819908928017465542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077426.P7819908928017465542

/-!
# A077427: Primitive period length of (regular) continued fraction of (sqrt(D(n))+1)/2 for D(n)=A077425(n).

The programs for A077427, there is no canonical definition to state claims against.
-/

/-! ## A077427.P7423424361271838045

`A146326(4*comp[∑[2*n]]+1)`
-/

namespace A077427.P7423424361271838045
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (4 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A077427.P7423424361271838045

/-! ## A077427.P13931235086775663120

`A146326(A077425(n+1))%(n+2)`
-/

namespace A077427.P13931235086775663120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146326 (A077425 (n + 1)).toNat) (n + 2 : ℤ)

end

end A077427.P13931235086775663120

/-! ## A077427.P17990463131459039803

`A146326(A077425(n+1))^A000041(C(3, n²))`
-/

namespace A077427.P17990463131459039803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146326 (A077425 (n + 1)).toNat : ℚ) ^ (A000041 (Nat.choose 3 (n ^ 2)) : ℤ)

end

end A077427.P17990463131459039803

/-! ## A077427.P10076035318598779989

`A008783(comp[∑[2*n]])`
-/

namespace A077427.P10076035318598779989
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008783 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A077427.P10076035318598779989

/-! ## A077427.P5833528945689047691

`A000196(A008783(∑[(char[(n+1)²]+1)!])²)`
-/

namespace A077427.P5833528945689047691
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((if ∃ j, f2 j = n then 1 else 0) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A008783 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A077427.P5833528945689047691

/-! ## A077427.P10294383126795110603

`A037213(A008783(∑[(char[(n+1)²]+1)!])²)`
-/

namespace A077427.P10294383126795110603
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((if ∃ j, f2 j = n then 1 else 0) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A008783 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A077427.P10294383126795110603

/-! ## A077427.P14279974882322909298

`A000196(A008783(∑[(char[(n+1)²]+1)%3])²)`
-/

namespace A077427.P14279974882322909298
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0) + 1) % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A008783 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A077427.P14279974882322909298

/-! ## A077427.P14468657665045504768

`A000196(A008783(comp[n²+n]%(2*(n+1)))²)`
-/

namespace A077427.P14468657665045504768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A008783 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % (2 * (n + 1))) ^ 2).toNat

end

end A077427.P14468657665045504768

/-! ## A077427.P17411949018611055943

`gcd(A000122(n), A008783(A078358(n+1)))`
-/

namespace A077427.P17411949018611055943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000122 n) (A008783 (A078358 (n + 1)).toNat)

end

end A077427.P17411949018611055943

/-!
# A077428: Minimal (positive) solution a(n) of Pell equation a(n)^2 - D(n)*b(n)^2 = +4 with D(n)= A077425(n). The companion sequence is b(n)=A078355(n).

The programs for A077428, there is no canonical definition to state claims against.
-/

/-! ## A077428.P461061985780086545

`ceil(sqrt(A077425(n+1))*A078355(n+1))`
-/

namespace A077428.P461061985780086545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A077425 (n + 1) : ℝ) * (A078355 (n + 1) : ℝ)⌉

end

end A077428.P461061985780086545

/-!
# A077429: a(n) = floor(log_10(n^2)).

The programs for A077429, the canonical program `A077429.P5554938724611329357` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077429 has offset 1).

The definition of A077429 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077429.P4474903852957558985

`floor(2*log(n+1)/log(10))`
-/

namespace A077429.P4474903852957558985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (Real.log (n + 1 : ℝ) / Real.log (10 : ℝ))⌋

end

end A077429.P4474903852957558985

namespace A077429

/-- `floor(2*log(n+1)/log(10))` -/
def P4474903852957558985.Spec : Prop :=
  ∀ n, P4474903852957558985.a n = A077429 (n + 1)

end A077429

/-! ## A077429.P15990065593286520408

`∑[char[A049416(n+1)]]`
-/

namespace A077429.P15990065593286520408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049416 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077429.P15990065593286520408

namespace A077429

/-- `∑[char[A049416(n+1)]]` -/
def P15990065593286520408.Spec : Prop :=
  ∀ n, (P15990065593286520408.a n : ℤ) = A077429 (n + 1)

end A077429

/-! ## A077429.P6806071483996124628

`∑[char[∑[A049415(n+1)]]]`
-/

namespace A077429.P6806071483996124628
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077429.P6806071483996124628

namespace A077429

/-- `∑[char[∑[A049415(n+1)]]]` -/
def P6806071483996124628.Spec : Prop :=
  ∀ n, (P6806071483996124628.a n : ℤ) = A077429 (n + 1)

end A077429

/-! ## A077429.P13176850170444752830

`∑[char[A114322(2*(n+1))]]`
-/

namespace A077429.P13176850170444752830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114322 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077429.P13176850170444752830

namespace A077429

/-- `∑[char[A114322(2*(n+1))]]` -/
def P13176850170444752830.Spec : Prop :=
  ∀ n, (P13176850170444752830.a n : ℤ) = A077429 (n + 1)

end A077429

/-! ## A077429.P47449242478891403

`∑{digits}[(n+1)², A036370(#)]-1`
-/

namespace A077429.P47449242478891403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A036370 x).sum - 1

end

end A077429.P47449242478891403

namespace A077429

/-- `∑{digits}[(n+1)², A036370(#)]-1` -/
def P47449242478891403.Spec : Prop :=
  ∀ n, P47449242478891403.a n = A077429 (n + 1)

end A077429

/-! ## A077429.P3998735308053242624

`A002266(A004219(n+1))`
-/

namespace A077429.P3998735308053242624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A004219 (n + 1)).toNat

end

end A077429.P3998735308053242624

namespace A077429

/-- `A002266(A004219(n+1))` -/
def P3998735308053242624.Spec : Prop :=
  ∀ n, P3998735308053242624.a n = A077429 (n + 1)

end A077429

/-! ## A077429.P16277711887751044707

`A059995(2*A004219(n+1))`
-/

namespace A077429.P16277711887751044707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (2 * A004219 (n + 1)).toNat

end

end A077429.P16277711887751044707

namespace A077429

/-- `A059995(2*A004219(n+1))` -/
def P16277711887751044707.Spec : Prop :=
  ∀ n, P16277711887751044707.a n = A077429 (n + 1)

end A077429

/-! ## A077429.P13063096598627772318

`A004216(n+1)+A000520(n+1)`
-/

namespace A077429.P13063096598627772318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (n + 1) + A000520 (n + 1)

end

end A077429.P13063096598627772318

namespace A077429

/-- `A004216(n+1)+A000520(n+1)` -/
def P13063096598627772318.Spec : Prop :=
  ∀ n, P13063096598627772318.a n = A077429 (n + 1)

theorem P13063096598627772318.correct : P13063096598627772318.Spec := by
  intro n
  simp only [A077429, Nat.add_sub_cancel, A077429.P13063096598627772318.a, A077429.P5554938724611329357.f1, A077429.P5554938724611329357.a, A000520, A000520.P740625616792287926.a, A004216, A004216.P11701108540860389608.a, A007318, A007318.P302227728145965961.a, A055642, A055642.P4465932992276854035.f1, A055642.P4465932992276854035.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A077429

/-! ## A077429.P5554938724611329357

`∑{digits}[(n+1)², A007318(A007318(#))]-1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A077429

/-- `∑{digits}[(n+1)², A007318(A007318(#))]-1` -/
def P5554938724611329357.Spec : Prop :=
  ∀ n, P5554938724611329357.a n = A077429 (n + 1)

theorem P5554938724611329357.correct : P5554938724611329357.Spec := by
  intro n
  simp only [A077429, Nat.add_sub_cancel]

end A077429

/-! ## A077429.P177901668449496274

`∑[abs(Δ[A185679(n)])]`
-/

namespace A077429.P177901668449496274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185679 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077429.P177901668449496274

namespace A077429

/-- `∑[abs(Δ[A185679(n)])]` -/
def P177901668449496274.Spec : Prop :=
  ∀ n, P177901668449496274.a n = A077429 (n + 1)

end A077429

/-! ## A077429.P9290879495449788289

`A185679(n+1)-1`
-/

namespace A077429.P9290879495449788289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185679 (n + 1) - 1

end

end A077429.P9290879495449788289

namespace A077429

/-- `A185679(n+1)-1` -/
def P9290879495449788289.Spec : Prop :=
  ∀ n, P9290879495449788289.a n = A077429 (n + 1)

end A077429

/-! ## A077429.P16351441501535941979

`∑[A000045(Δ[A185679(n)])]`
-/

namespace A077429.P16351441501535941979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185679 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077429.P16351441501535941979

namespace A077429

/-- `∑[A000045(Δ[A185679(n)])]` -/
def P16351441501535941979.Spec : Prop :=
  ∀ n, P16351441501535941979.a n = A077429 (n + 1)

end A077429

/-! ## A077429.P12258853927500766323

`∑[A000217(Δ[A185679(n)])]`
-/

namespace A077429.P12258853927500766323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185679 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077429.P12258853927500766323

namespace A077429

/-- `∑[A000217(Δ[A185679(n)])]` -/
def P12258853927500766323.Spec : Prop :=
  ∀ n, P12258853927500766323.a n = A077429 (n + 1)

end A077429

/-! ## A077429.P18374902686035482694

`∑[A000225(Δ[A185679(n)])]`
-/

namespace A077429.P18374902686035482694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185679 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077429.P18374902686035482694

namespace A077429

/-- `∑[A000225(Δ[A185679(n)])]` -/
def P18374902686035482694.Spec : Prop :=
  ∀ n, P18374902686035482694.a n = A077429 (n + 1)

end A077429

/-! ## A077429.P16975419071533103959

`A110655(A242374(n+1))-1`
-/

namespace A077429.P16975419071533103959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A242374 (n + 1)).toNat - 1

end

end A077429.P16975419071533103959

namespace A077429

/-- `A110655(A242374(n+1))-1` -/
def P16975419071533103959.Spec : Prop :=
  ∀ n, P16975419071533103959.a n = A077429 (n + 1)

end A077429

/-! ## A077429.P3572637899845485369

`A004218(A085717(n))`
-/

namespace A077429.P3572637899845485369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A085717 n).toNat

end

end A077429.P3572637899845485369

namespace A077429

/-- `A004218(A085717(n))` -/
def P3572637899845485369.Spec : Prop :=
  ∀ n, P3572637899845485369.a n = A077429 (n + 1)

end A077429

/-! ## A077429.P12833449407691112527

`A004216((n+1)²)`
-/

namespace A077429.P12833449407691112527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 ((n + 1) ^ 2)

end

end A077429.P12833449407691112527

namespace A077429

/-- `A004216((n+1)²)` -/
def P12833449407691112527.Spec : Prop :=
  ∀ n, P12833449407691112527.a n = A077429 (n + 1)

end A077429

/-! ## A077429.P8227977556367765472

`∑[Δ[A055642(n²)]²]`
-/

namespace A077429.P8227977556367765472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077429.P8227977556367765472

namespace A077429

/-- `∑[Δ[A055642(n²)]²]` -/
def P8227977556367765472.Spec : Prop :=
  ∀ n, P8227977556367765472.a n = A077429 (n + 1)

end A077429

/-! ## A077429.P15438054957161256651

`A055642((n+1)²)-1`
-/

namespace A077429.P15438054957161256651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 ((n + 1) ^ 2) - 1

end

end A077429.P15438054957161256651

namespace A077429

/-- `A055642((n+1)²)-1` -/
def P15438054957161256651.Spec : Prop :=
  ∀ n, P15438054957161256651.a n = A077429 (n + 1)

end A077429

/-! ## A077429.P15900498071780075409

`dr(A004216(∑[2*n+1]))`
-/

namespace A077429.P15900498071780075409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A004216 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A077429.P15900498071780075409

namespace A077429

/-- `dr(A004216(∑[2*n+1]))` -/
def P15900498071780075409.Spec : Prop :=
  ∀ n, (P15900498071780075409.a n : ℤ) = A077429 (n + 1)

end A077429

/-!
# A077430: a(n) = floor(log_10(2*n^2)) + 1.

The programs for A077430, the canonical program `A077430.P6721808312944328443` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077430 has offset 1).

The definition of A077430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077430.P6721808312944328443

`∑{digits}[∑[4*n+1], and(1, #)!]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077430

/-- `∑{digits}[∑[4*n+1], and(1, #)!]` -/
def P6721808312944328443.Spec : Prop :=
  ∀ n, (P6721808312944328443.a n : ℤ) = A077430 (n + 1)

theorem P6721808312944328443.correct : P6721808312944328443.Spec := by
  intro n
  simp only [A077430, Nat.add_sub_cancel]

end A077430

/-! ## A077430.P11737834617429359458

`∑{digits}[2*(n+1)², ((-1)^#)²]`
-/

namespace A077430.P11737834617429359458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ((-1) ^ x) ^ 2).sum

end

end A077430.P11737834617429359458

namespace A077430

/-- `∑{digits}[2*(n+1)², ((-1)^#)²]` -/
def P11737834617429359458.Spec : Prop :=
  ∀ n, P11737834617429359458.a n = A077430 (n + 1)

end A077430

/-! ## A077430.P8287790464415563131

`∑[char[A109999(n+1)]]+1`
-/

namespace A077430.P8287790464415563131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109999 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A077430.P8287790464415563131

namespace A077430

/-- `∑[char[A109999(n+1)]]+1` -/
def P8287790464415563131.Spec : Prop :=
  ∀ n, (P8287790464415563131.a n : ℤ) = A077430 (n + 1)

end A077430

/-! ## A077430.P16946008529214421384

`A048379(∑[char[A109999(n+1)]])`
-/

namespace A077430.P16946008529214421384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109999 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077430.P16946008529214421384

namespace A077430

/-- `A048379(∑[char[A109999(n+1)]])` -/
def P16946008529214421384.Spec : Prop :=
  ∀ n, P16946008529214421384.a n = A077430 (n + 1)

end A077430

/-! ## A077430.P4716077827586234229

`∑{digits}[A158493(n+1), A036608(#)]-1`
-/

namespace A077430.P4716077827586234229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A036608 x).sum - 1

end

end A077430.P4716077827586234229

namespace A077430

/-- `∑{digits}[A158493(n+1), A036608(#)]-1` -/
def P4716077827586234229.Spec : Prop :=
  ∀ n, P4716077827586234229.a n = A077430 (n + 1)

end A077430

/-! ## A077430.P2626011544446550768

`A081604(lt[n, A325005(n+1)])`
-/

namespace A077430.P2626011544446550768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A077430.P2626011544446550768

namespace A077430

/-- `A081604(lt[n, A325005(n+1)])` -/
def P2626011544446550768.Spec : Prop :=
  ∀ n, P2626011544446550768.a n = A077430 (n + 1)

end A077430

/-! ## A077430.P14017438276711628989

`A081604(A290726(n+1)+n)`
-/

namespace A077430.P14017438276711628989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A290726 (n + 1) + (n : ℤ)).toNat

end

end A077430.P14017438276711628989

namespace A077430

/-- `A081604(A290726(n+1)+n)` -/
def P14017438276711628989.Spec : Prop :=
  ∀ n, P14017438276711628989.a n = A077430 (n + 1)

end A077430

/-! ## A077430.P120399179595967411

`A004218(2*(n+1)²)`
-/

namespace A077430.P120399179595967411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (2 * (n + 1) ^ 2)

end

end A077430.P120399179595967411

namespace A077430

/-- `A004218(2*(n+1)²)` -/
def P120399179595967411.Spec : Prop :=
  ∀ n, P120399179595967411.a n = A077430 (n + 1)

end A077430

/-! ## A077430.P696147527437647610

`A055642(∑[4*n+1]+1)`
-/

namespace A077430.P696147527437647610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A077430.P696147527437647610

namespace A077430

/-- `A055642(∑[4*n+1]+1)` -/
def P696147527437647610.Spec : Prop :=
  ∀ n, P696147527437647610.a n = A077430 (n + 1)

end A077430

/-! ## A077430.P1382366605758698918

`A391991((2*n+1)*(n+3))`
-/

namespace A077430.P1382366605758698918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391991 ((2 * n + 1) * (n + 3))

end

end A077430.P1382366605758698918

namespace A077430

/-- `A391991((2*n+1)*(n+3))` -/
def P1382366605758698918.Spec : Prop :=
  ∀ n, P1382366605758698918.a n = A077430 (n + 1)

end A077430

/-!
# A077431: n repeated in decimal representation, but separated by enough zeros that the square has the pattern (n^2)(2n^2)(n^2).

The programs for A077431, there is no canonical definition to state claims against.
-/

/-! ## A077431.P7198371625788484815

`sqrt(A077432(n+1))`
-/

namespace A077431.P7198371625788484815
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A077432 (n + 1) : ℝ)

end

end A077431.P7198371625788484815

/-! ## A077431.P1145367666532893959

`A248422((n+1)²)/(2*(n+1))`
-/

namespace A077431.P1145367666532893959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248422 ((n + 1) ^ 2) : ℚ) / (2 * (n + 1) : ℚ)

end

end A077431.P1145367666532893959

/-! ## A077431.P18081763996461240503

`A020338(C(2*(n+1), 2))/(2*n+1)`
-/

namespace A077431.P18081763996461240503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020338 (Nat.choose (2 * (n + 1)) 2) : ℚ) / (2 * n + 1 : ℚ)

end

end A077431.P18081763996461240503

/-! ## A077431.P15531816556659268817

`A020338(A001972(4*n))/Δ[n²]`
-/

namespace A077431.P15531816556659268817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020338 (A001972 (4 * n)).toNat : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A077431.P15531816556659268817

/-! ## A077431.P7595352813006450612

`A020338(A000217(2*n+1))/Δ[n²]`
-/

namespace A077431.P7595352813006450612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020338 (A000217 (2 * n + 1)).toNat : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A077431.P7595352813006450612

/-! ## A077431.P1785659315758037702

`A020338(A000096(2*n)+1)/(2*n+1)`
-/

namespace A077431.P1785659315758037702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020338 (A000096 (2 * n) + 1).toNat : ℚ) / (2 * n + 1 : ℚ)

end

end A077431.P1785659315758037702

/-!
# A077432: Squares of the form u'v'w, where in decimal representation u=n^2, v=2*n^2 and w=n^2 possibly with a leading zero.

The programs for A077432, there is no canonical definition to state claims against.
-/

/-! ## A077432.P18137772608324239825

`A077431(n+1)²`
-/

namespace A077432.P18137772608324239825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077431 (n + 1) ^ 2

end

end A077432.P18137772608324239825

/-! ## A077432.P5730502830577926919

`A077431(A000027(n+1))*A077431(n+1)`
-/

namespace A077432.P5730502830577926919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077431 (A000027 (n + 1)).toNat * A077431 (n + 1)

end

end A077432.P5730502830577926919

/-! ## A077432.P16646110109366974007

`A077431(A008611(3*n+2))*A077431(n+1)`
-/

namespace A077432.P16646110109366974007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077431 (A008611 (3 * n + 2)).toNat * A077431 (n + 1)

end

end A077432.P16646110109366974007

/-! ## A077432.P10062814181885751292

`A077431(n+1)^A351236(A038872(n+1))`
-/

namespace A077432.P10062814181885751292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077431 (n + 1) : ℚ) ^ (A351236 (A038872 (n + 1)).toNat : ℤ)

end

end A077432.P10062814181885751292

/-! ## A077432.P17061795047356851280

`A077431(n+1)^A301830(A000040(n+1))`
-/

namespace A077432.P17061795047356851280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077431 (n + 1) : ℚ) ^ (A301830 (A000040 (n + 1)).toNat : ℤ)

end

end A077432.P17061795047356851280

/-! ## A077432.P5677808802264734041

`A077431(n+1)^A301830(A136059(n+1))`
-/

namespace A077432.P5677808802264734041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077431 (n + 1) : ℚ) ^ (A301830 (A136059 (n + 1)).toNat : ℤ)

end

end A077432.P5677808802264734041

/-! ## A077432.P4196152258566807154

`record[A077431(A134478(n))²]`
-/

namespace A077432.P4196152258566807154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077431 (A134478 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077432.P4196152258566807154

/-! ## A077432.P10370595484715989349

`record[A077431(A028920(n))²]`
-/

namespace A077432.P10370595484715989349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077431 (A028920 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077432.P10370595484715989349

/-! ## A077432.P14964288119488407014

`(A248422((n+1)²)/(2*(n+1)))²`
-/

namespace A077432.P14964288119488407014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A248422 ((n + 1) ^ 2) : ℚ) / (2 * (n + 1) : ℚ)) ^ 2

end

end A077432.P14964288119488407014

/-! ## A077432.P3759741963523476768

`(A020338(C(2*(n+1), 2))/(2*n+1))²`
-/

namespace A077432.P3759741963523476768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A020338 (Nat.choose (2 * (n + 1)) 2) : ℚ) / (2 * n + 1 : ℚ)) ^ 2

end

end A077432.P3759741963523476768

/-!
# A077433: Number of separating zeros to represent A077431.

The programs for A077433, the canonical program `A077433.P5984932603153973634` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077433 has offset 1).

The definition of A077433 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077430, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A077433.P5984932603153973634

`floor(A077430(n+1)/2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A077433

/-- `floor(A077430(n+1)/2)` -/
def P5984932603153973634.Spec : Prop :=
  ∀ n, P5984932603153973634.a n = A077433 (n + 1)

theorem P5984932603153973634.correct : P5984932603153973634.Spec := by
  intro n
  simp only [A077433, Nat.add_sub_cancel]

end A077433

/-! ## A077433.P15820879746318523915

`floor(∑{digits}[∑[4*n+1], and(1, #)!]/2)`
-/

namespace A077433.P15820879746318523915
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (Nat.land 1 x)).sum : ℕ) : ℚ) / 2⌋

end

end A077433.P15820879746318523915

namespace A077433

/-- `floor(∑{digits}[∑[4*n+1], and(1, #)!]/2)` -/
def P15820879746318523915.Spec : Prop :=
  ∀ n, P15820879746318523915.a n = A077433 (n + 1)

end A077433

/-! ## A077433.P1924782594579172558

`∑[char[A109999(2*n+1)]]`
-/

namespace A077433.P1924782594579172558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109999 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077433.P1924782594579172558

namespace A077433

/-- `∑[char[A109999(2*n+1)]]` -/
def P1924782594579172558.Spec : Prop :=
  ∀ n, (P1924782594579172558.a n : ℤ) = A077433 (n + 1)

end A077433

/-! ## A077433.P16825325775666973697

`∑[char[A022839(A011557(n))]]`
-/

namespace A077433.P16825325775666973697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (A011557 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077433.P16825325775666973697

namespace A077433

/-- `∑[char[A022839(A011557(n))]]` -/
def P16825325775666973697.Spec : Prop :=
  ∀ n, (P16825325775666973697.a n : ℤ) = A077433 (n + 1)

end A077433

/-! ## A077433.P7051299428000606108

`A055642(A211422(3*(n+1)))-2`
-/

namespace A077433.P7051299428000606108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A211422 (3 * (n + 1))).toNat - 2

end

end A077433.P7051299428000606108

namespace A077433

/-- `A055642(A211422(3*(n+1)))-2` -/
def P7051299428000606108.Spec : Prop :=
  ∀ n, P7051299428000606108.a n = A077433 (n + 1)

end A077433

/-! ## A077433.P9082466442835161365

`floor(log(log(A296991(3*n+5))))`
-/

namespace A077433.P9082466442835161365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.log (A296991 (3 * n + 5) : ℝ))⌋

end

end A077433.P9082466442835161365

namespace A077433

/-- `floor(log(log(A296991(3*n+5))))` -/
def P9082466442835161365.Spec : Prop :=
  ∀ n, P9082466442835161365.a n = A077433 (n + 1)

end A077433

/-! ## A077433.P1320390021186858664

`A274070(A000040(n+1)-n)`
-/

namespace A077433.P1320390021186858664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274070 (A000040 (n + 1) - (n : ℤ)).toNat

end

end A077433.P1320390021186858664

namespace A077433

/-- `A274070(A000040(n+1)-n)` -/
def P1320390021186858664.Spec : Prop :=
  ∀ n, P1320390021186858664.a n = A077433 (n + 1)

end A077433

/-! ## A077433.P17433541928532204106

`A055642(A039949(n+1))-2`
-/

namespace A077433.P17433541928532204106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A039949 (n + 1)).toNat - 2

end

end A077433.P17433541928532204106

namespace A077433

/-- `A055642(A039949(n+1))-2` -/
def P17433541928532204106.Spec : Prop :=
  ∀ n, P17433541928532204106.a n = A077433 (n + 1)

end A077433

/-! ## A077433.P11337161815929077784

`A211666(A029000(n))`
-/

namespace A077433.P11337161815929077784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211666 (A029000 n).toNat

end

end A077433.P11337161815929077784

namespace A077433

/-- `A211666(A029000(n))` -/
def P11337161815929077784.Spec : Prop :=
  ∀ n, P11337161815929077784.a n = A077433 (n + 1)

end A077433

/-! ## A077433.P11866572141553307693

`A390766((n+1)²)-A390766(n+1)`
-/

namespace A077433.P11866572141553307693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390766 ((n + 1) ^ 2) - A390766 (n + 1)

end

end A077433.P11866572141553307693

namespace A077433

/-- `A390766((n+1)²)-A390766(n+1)` -/
def P11866572141553307693.Spec : Prop :=
  ∀ n, P11866572141553307693.a n = A077433 (n + 1)

end A077433

/-!
# A077435: Number of right triangles whose vertices are lattice points in {1,2,...,n} X {1,2,...,n}.

The programs for A077435, there is no canonical definition to state claims against.
-/

/-! ## A077435.P14793550872361591135

`A045996(n+1)-(A190020(n+1)+A190019(n+1))`
-/

namespace A077435.P14793550872361591135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045996 (n + 1) - (A190020 (n + 1) + A190019 (n + 1))

end

end A077435.P14793550872361591135

/-!
# A077436: Let B(n) be the sum of binary digits of n. This sequence contains n such that B(n) = B(n^2).

The programs for A077436, the canonical program `A077436.P405008130095313056` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077436 has offset 1).

The definition of A077436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077436.P405008130095313056

`eq[0, A232243(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A077436

/-- `eq[0, A232243(n)]` -/
def P405008130095313056.Spec : Prop :=
  ∀ n, (P405008130095313056.a n : ℤ) = A077436 (n + 1)

theorem P405008130095313056.correct : P405008130095313056.Spec := by
  intro n
  simp only [A077436, Nat.add_sub_cancel]

end A077436

/-! ## A077436.P5342133954873563261

`eq[A000120(n), A159918(n)]`
-/

namespace A077436.P5342133954873563261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077436.P5342133954873563261

namespace A077436

/-- `eq[A000120(n), A159918(n)]` -/
def P5342133954873563261.Spec : Prop :=
  ∀ n, (P5342133954873563261.a n : ℤ) = A077436 (n + 1)

end A077436

/-! ## A077436.P15985403047010557852

`lt[A119282(A232243(n)²)², 1]`
-/

namespace A077436.P15985403047010557852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 (A232243 n ^ 2).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A077436.P15985403047010557852

namespace A077436

/-- `lt[A119282(A232243(n)²)², 1]` -/
def P15985403047010557852.Spec : Prop :=
  ∀ n, (P15985403047010557852.a n : ℤ) = A077436 (n + 1)

end A077436

/-! ## A077436.P5824615631103519434

`lt[A130472(A232243(n)²)², 1]`
-/

namespace A077436.P5824615631103519434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (A232243 n ^ 2).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A077436.P5824615631103519434

namespace A077436

/-- `lt[A130472(A232243(n)²)², 1]` -/
def P5824615631103519434.Spec : Prop :=
  ∀ n, (P5824615631103519434.a n : ℤ) = A077436 (n + 1)

end A077436

/-! ## A077436.P12105856483384283622

`lt[(A001068(n)*A232243(n)+2)², 31]`
-/

namespace A077436.P12105856483384283622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001068 n * A232243 n + 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A077436.P12105856483384283622

namespace A077436

/-- `lt[(A001068(n)*A232243(n)+2)², 31]` -/
def P12105856483384283622.Spec : Prop :=
  ∀ n, (P12105856483384283622.a n : ℤ) = A077436 (n + 1)

end A077436

/-! ## A077436.P6457289905871943316

`lt[(A032766(n)*A232243(n)+2)², 31]`
-/

namespace A077436.P6457289905871943316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032766 n * A232243 n + 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A077436.P6457289905871943316

namespace A077436

/-- `lt[(A032766(n)*A232243(n)+2)², 31]` -/
def P6457289905871943316.Spec : Prop :=
  ∀ n, (P6457289905871943316.a n : ℤ) = A077436 (n + 1)

end A077436

/-! ## A077436.P2817021115340001025

`lt[(A000040(n+1)*A232243(n)+2)², 31]`
-/

namespace A077436.P2817021115340001025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) * A232243 n + 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A077436.P2817021115340001025

namespace A077436

/-- `lt[(A000040(n+1)*A232243(n)+2)², 31]` -/
def P2817021115340001025.Spec : Prop :=
  ∀ n, (P2817021115340001025.a n : ℤ) = A077436 (n + 1)

end A077436

/-! ## A077436.P12625245102619215016

`lt[(A056809(n+1)*A232243(n)+2)², 31]`
-/

namespace A077436.P12625245102619215016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056809 (n + 1) * A232243 n + 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A077436.P12625245102619215016

namespace A077436

/-- `lt[(A056809(n+1)*A232243(n)+2)², 31]` -/
def P12625245102619215016.Spec : Prop :=
  ∀ n, (P12625245102619215016.a n : ℤ) = A077436 (n + 1)

end A077436

/-! ## A077436.P16932050733855862300

`lt[(A158776(n)/2*A232243(n)+2)², 31]`
-/

namespace A077436.P16932050733855862300
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A158776 n : ℚ) / 2 * (A232243 n : ℚ) + 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A077436.P16932050733855862300

namespace A077436

/-- `lt[(A158776(n)/2*A232243(n)+2)², 31]` -/
def P16932050733855862300.Spec : Prop :=
  ∀ n, (P16932050733855862300.a n : ℤ) = A077436 (n + 1)

end A077436

/-! ## A077436.P25719994609969247

`eq[A023416(A001316(n)), A159918(n)]`
-/

namespace A077436.P25719994609969247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A001316 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077436.P25719994609969247

namespace A077436

/-- `eq[A023416(A001316(n)), A159918(n)]` -/
def P25719994609969247.Spec : Prop :=
  ∀ n, (P25719994609969247.a n : ℤ) = A077436 (n + 1)

end A077436

/-! ## A077436.P13726687154445598120

`eq[A001222(A071044(n)), A159918(n)]`
-/

namespace A077436.P13726687154445598120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A071044 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077436.P13726687154445598120

namespace A077436

/-- `eq[A001222(A071044(n)), A159918(n)]` -/
def P13726687154445598120.Spec : Prop :=
  ∀ n, (P13726687154445598120.a n : ℤ) = A077436 (n + 1)

end A077436

/-! ## A077436.P14151926627519501640

`eq[A159918(A038573(n)), A159918(n)]`
-/

namespace A077436.P14151926627519501640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (A038573 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077436.P14151926627519501640

namespace A077436

/-- `eq[A159918(A038573(n)), A159918(n)]` -/
def P14151926627519501640.Spec : Prop :=
  ∀ n, (P14151926627519501640.a n : ℤ) = A077436 (n + 1)

end A077436

/-! ## A077436.P11225453331297663996

`eq[A159918(A001316(n)-1), A159918(n)]`
-/

namespace A077436.P11225453331297663996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (A001316 n - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077436.P11225453331297663996

namespace A077436

/-- `eq[A159918(A001316(n)-1), A159918(n)]` -/
def P11225453331297663996.Spec : Prop :=
  ∀ n, (P11225453331297663996.a n : ℤ) = A077436 (n + 1)

end A077436

/-! ## A077436.P7243008334393450925

`eq[A159918(A073138(n)), A159918(n)]`
-/

namespace A077436.P7243008334393450925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (A073138 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077436.P7243008334393450925

namespace A077436

/-- `eq[A159918(A073138(n)), A159918(n)]` -/
def P7243008334393450925.Spec : Prop :=
  ∀ n, (P7243008334393450925.a n : ℤ) = A077436 (n + 1)

end A077436

/-! ## A077436.P6908242037221853524

`eq[A001222(A286588(n)), A159918(n)]`
-/

namespace A077436.P6908242037221853524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A286588 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077436.P6908242037221853524

namespace A077436

/-- `eq[A001222(A286588(n)), A159918(n)]` -/
def P6908242037221853524.Spec : Prop :=
  ∀ n, (P6908242037221853524.a n : ℤ) = A077436 (n + 1)

end A077436

/-! ## A077436.P1682132636163514323

`lt[A232243(2*n)², 1]`
-/

namespace A077436.P1682132636163514323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 (2 * n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A077436.P1682132636163514323

namespace A077436

/-- `lt[A232243(2*n)², 1]` -/
def P1682132636163514323.Spec : Prop :=
  ∀ n, (P1682132636163514323.a n : ℤ) = A077436 (n + 1)

end A077436

/-! ## A077436.P2591091583661848528

`∪[A023758(n+1), A091819(n+1)]`
-/

namespace A077436.P2591091583661848528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A077436.P2591091583661848528

namespace A077436

/-- `∪[A023758(n+1), A091819(n+1)]` -/
def P2591091583661848528.Spec : Prop :=
  ∀ n, (P2591091583661848528.a n : ℤ) = A077436 (n + 1)

end A077436

/-!
# A077437: Squares whose decimal digits are nonsquares (2, 3, 5, 6, 7, 8).

The programs for A077437, there is no canonical definition to state claims against.
-/

/-! ## A077437.P4821201536232038428

`A160109(n+1)²`
-/

namespace A077437.P4821201536232038428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160109 (n + 1) ^ 2

end

end A077437.P4821201536232038428

/-! ## A077437.P12308593217309933750

`record[A160109(A126759(n))²]`
-/

namespace A077437.P12308593217309933750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160109 (A126759 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077437.P12308593217309933750

/-! ## A077437.P13915879341563288629

`record[A160109(A133310(n))²]`
-/

namespace A077437.P13915879341563288629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160109 (A133310 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077437.P13915879341563288629

/-! ## A077437.P16933250782694101570

`A000463(2*A160109(n+1))`
-/

namespace A077437.P16933250782694101570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (2 * A160109 (n + 1)).toNat

end

end A077437.P16933250782694101570

/-! ## A077437.P9813044132764227869

`A002620(2*A160109(n+1))`
-/

namespace A077437.P9813044132764227869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A160109 (n + 1)).toNat

end

end A077437.P9813044132764227869

/-! ## A077437.P16664341242192659703

`A160109(n+1)^A020639(2*(n+1))`
-/

namespace A077437.P16664341242192659703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160109 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A077437.P16664341242192659703

/-! ## A077437.P4243208998191692431

`A160109(n+1)^A000040(gcd(n, n+1))`
-/

namespace A077437.P4243208998191692431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160109 (n + 1) : ℚ) ^ (A000040 (Nat.gcd n (n + 1)) : ℤ)

end

end A077437.P4243208998191692431

/-! ## A077437.P3140729224575512716

`A160109(n+1)^A001222(3*p?[round(8*n/7)])`
-/

namespace A077437.P3140729224575512716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160109 (n + 1) : ℚ) ^ (A001222 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℤ)

end

end A077437.P3140729224575512716

/-! ## A077437.P15797165639872293504

`A160109(n+1)^A000005(A002146(n))`
-/

namespace A077437.P15797165639872293504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160109 (n + 1) : ℚ) ^ (A000005 (A002146 n).toNat : ℤ)

end

end A077437.P15797165639872293504

/-! ## A077437.P419870133970105314

`record[A160109(A126759(n))]*A160109(n+1)`
-/

namespace A077437.P419870133970105314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160109 (A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A160109 (n + 1)

end

end A077437.P419870133970105314

/-!
# A077438: Numbers k such that Sum_{d|k} mu(d) mu(n/d)^2 = -1.

The programs for A077438, the canonical program `A077438.P1829940462926558059` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077438 has offset 1).

The definition of A077438 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030059, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A077438.P1829940462926558059

`A030059(n+1)²`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A077438

/-- `A030059(n+1)²` -/
def P1829940462926558059.Spec : Prop :=
  ∀ n, P1829940462926558059.a n = A077438 (n + 1)

theorem P1829940462926558059.correct : P1829940462926558059.Spec := by
  intro n
  simp only [A077438, Nat.add_sub_cancel]

end A077438

/-! ## A077438.P14628312481772894468

`record[A080305(n+2)²]`
-/

namespace A077438.P14628312481772894468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080305 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077438.P14628312481772894468

namespace A077438

/-- `record[A080305(n+2)²]` -/
def P14628312481772894468.Spec : Prop :=
  ∀ n, P14628312481772894468.a n = A077438 (n + 1)

end A077438

/-! ## A077438.P14111624540761012092

`ceil(sqrt(A370494(n+1)))²`
-/

namespace A077438.P14111624540761012092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A370494 (n + 1) : ℝ)⌉ ^ 2

end

end A077438.P14111624540761012092

namespace A077438

/-- `ceil(sqrt(A370494(n+1)))²` -/
def P14111624540761012092.Spec : Prop :=
  ∀ n, P14111624540761012092.a n = A077438 (n + 1)

end A077438

/-! ## A077438.P6316697563599323827

`(lt[A008683(n+1), 0]+1)²`
-/

namespace A077438.P6316697563599323827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) ^ 2

end

end A077438.P6316697563599323827

namespace A077438

/-- `(lt[A008683(n+1), 0]+1)²` -/
def P6316697563599323827.Spec : Prop :=
  ∀ n, (P6316697563599323827.a n : ℤ) = A077438 (n + 1)

end A077438

/-! ## A077438.P6143283426663174080

`(eq[1, A252233(n+1)]+1)²`
-/

namespace A077438.P6143283426663174080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252233 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A077438.P6143283426663174080

namespace A077438

/-- `(eq[1, A252233(n+1)]+1)²` -/
def P6143283426663174080.Spec : Prop :=
  ∀ n, (P6143283426663174080.a n : ℤ) = A077438 (n + 1)

end A077438

/-! ## A077438.P15462937012553894755

`(lt[1, A080305(n+1)]+1)²`
-/

namespace A077438.P15462937012553894755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080305 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) ^ 2

end

end A077438.P15462937012553894755

namespace A077438

/-- `(lt[1, A080305(n+1)]+1)²` -/
def P15462937012553894755.Spec : Prop :=
  ∀ n, (P15462937012553894755.a n : ℤ) = A077438 (n + 1)

end A077438

/-! ## A077438.P7957336020834917445

`(eq[2, A346488(n+1)]+1)²`
-/

namespace A077438.P7957336020834917445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346488 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A077438.P7957336020834917445

namespace A077438

/-- `(eq[2, A346488(n+1)]+1)²` -/
def P7957336020834917445.Spec : Prop :=
  ∀ n, (P7957336020834917445.a n : ℤ) = A077438 (n + 1)

end A077438

/-! ## A077438.P17541747957813384470

`(eq[1, -A008683(n+2)]+2)²`
-/

namespace A077438.P17541747957813384470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008683 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2) ^ 2

end

end A077438.P17541747957813384470

namespace A077438

/-- `(eq[1, -A008683(n+2)]+2)²` -/
def P17541747957813384470.Spec : Prop :=
  ∀ n, (P17541747957813384470.a n : ℤ) = A077438 (n + 1)

end A077438

/-! ## A077438.P13129027545579328500

`A370494(n+1)+A030059(n+1)`
-/

namespace A077438.P13129027545579328500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370494 (n + 1) + A030059 (n + 1)

end

end A077438.P13129027545579328500

namespace A077438

/-- `A370494(n+1)+A030059(n+1)` -/
def P13129027545579328500.Spec : Prop :=
  ∀ n, P13129027545579328500.a n = A077438 (n + 1)

end A077438

/-! ## A077438.P10022453645757221095

`record[A000217(n+1)+A000217(A080305(n+2))]`
-/

namespace A077438.P10022453645757221095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + A000217 (A080305 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077438.P10022453645757221095

namespace A077438

/-- `record[A000217(n+1)+A000217(A080305(n+2))]` -/
def P10022453645757221095.Spec : Prop :=
  ∀ n, P10022453645757221095.a n = A077438 (n + 1)

end A077438

/-! ## A077438.P10328733047848334375

`∩[A005117(n+1), A211338(n+1)]²`
-/

namespace A077438.P10328733047848334375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A077438.P10328733047848334375

namespace A077438

/-- `∩[A005117(n+1), A211338(n+1)]²` -/
def P10328733047848334375.Spec : Prop :=
  ∀ n, (P10328733047848334375.a n : ℤ) = A077438 (n + 1)

end A077438

/-! ## A077438.P5199356904962111111

`∩[A005117(n+1), A279457(n+1)]²`
-/

namespace A077438.P5199356904962111111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A077438.P5199356904962111111

namespace A077438

/-- `∩[A005117(n+1), A279457(n+1)]²` -/
def P5199356904962111111.Spec : Prop :=
  ∀ n, (P5199356904962111111.a n : ℤ) = A077438 (n + 1)

end A077438

/-! ## A077438.P4536141225543849139

`∩[A000028(n+1), A005117(n+1)]²`
-/

namespace A077438.P4536141225543849139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A077438.P4536141225543849139

namespace A077438

/-- `∩[A000028(n+1), A005117(n+1)]²` -/
def P4536141225543849139.Spec : Prop :=
  ∀ n, (P4536141225543849139.a n : ℤ) = A077438 (n + 1)

end A077438

/-! ## A077438.P14392246332244205817

`∩[A005117(n+1), A026424(n+1)]²`
-/

namespace A077438.P14392246332244205817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A077438.P14392246332244205817

namespace A077438

/-- `∩[A005117(n+1), A026424(n+1)]²` -/
def P14392246332244205817.Spec : Prop :=
  ∀ n, (P14392246332244205817.a n : ℤ) = A077438 (n + 1)

end A077438

/-! ## A077438.P5843625375234711003

`∩[A005117(n+1), A030230(n+1)]²`
-/

namespace A077438.P5843625375234711003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A077438.P5843625375234711003

namespace A077438

/-- `∩[A005117(n+1), A030230(n+1)]²` -/
def P5843625375234711003.Spec : Prop :=
  ∀ n, (P5843625375234711003.a n : ℤ) = A077438 (n + 1)

end A077438

/-! ## A077438.P8503744622571681244

`∩[A000028(n+1), A144338(n+1)]²`
-/

namespace A077438.P8503744622571681244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A077438.P8503744622571681244

namespace A077438

/-- `∩[A000028(n+1), A144338(n+1)]²` -/
def P8503744622571681244.Spec : Prop :=
  ∀ n, (P8503744622571681244.a n : ℤ) = A077438 (n + 1)

end A077438

/-! ## A077438.P9538696755321900443

`∩[A026416(n+1), A144338(n+1)]²`
-/

namespace A077438.P9538696755321900443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A077438.P9538696755321900443

namespace A077438

/-- `∩[A026416(n+1), A144338(n+1)]²` -/
def P9538696755321900443.Spec : Prop :=
  ∀ n, (P9538696755321900443.a n : ℤ) = A077438 (n + 1)

end A077438

/-! ## A077438.P13905841734759791799

`∩[A026422(n+1), A144338(n+1)]²`
-/

namespace A077438.P13905841734759791799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A077438.P13905841734759791799

namespace A077438

/-- `∩[A026422(n+1), A144338(n+1)]²` -/
def P13905841734759791799.Spec : Prop :=
  ∀ n, (P13905841734759791799.a n : ℤ) = A077438 (n + 1)

end A077438

/-! ## A077438.P3889387412007445736

`∩[A026424(n+1), A144338(n+1)]²`
-/

namespace A077438.P3889387412007445736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A077438.P3889387412007445736

namespace A077438

/-- `∩[A026424(n+1), A144338(n+1)]²` -/
def P3889387412007445736.Spec : Prop :=
  ∀ n, (P3889387412007445736.a n : ℤ) = A077438 (n + 1)

end A077438

/-! ## A077438.P1806829627240859983

`∩[A030230(n+1), A144338(n+1)]²`
-/

namespace A077438.P1806829627240859983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A077438.P1806829627240859983

namespace A077438

/-- `∩[A030230(n+1), A144338(n+1)]²` -/
def P1806829627240859983.Spec : Prop :=
  ∀ n, (P1806829627240859983.a n : ℤ) = A077438 (n + 1)

end A077438

/-!
# A077439: Numbers k such that k and k^2 have square decimal digits.

The programs for A077439, there is no canonical definition to state claims against.
-/

/-! ## A077439.P7247764403889399806

`sqrt(A077440(n+1))`
-/

namespace A077439.P7247764403889399806
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A077440 (n + 1) : ℝ)

end

end A077439.P7247764403889399806

/-! ## A077439.P14518618211466512206

`∩[A136841(n+1), A136858(n+1)]`
-/

namespace A077439.P14518618211466512206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077439.P14518618211466512206

/-! ## A077439.P3814527019252527098

`∩[A136841(n+1), A136862(n+1)]`
-/

namespace A077439.P3814527019252527098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077439.P3814527019252527098

/-! ## A077439.P10650924895229580031

`∩[A136841(n+1), A136867(n+1)]`
-/

namespace A077439.P10650924895229580031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077439.P10650924895229580031

/-! ## A077439.P8229423345694075807

`∩[A136858(n+1), A136862(n+1)]`
-/

namespace A077439.P8229423345694075807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077439.P8229423345694075807

/-! ## A077439.P8520921112407876779

`∩[A136858(n+1), A136867(n+1)]`
-/

namespace A077439.P8520921112407876779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077439.P8520921112407876779

/-! ## A077439.P17972252550917558040

`∩[A136862(n+1), A136867(n+1)]`
-/

namespace A077439.P17972252550917558040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077439.P17972252550917558040

/-! ## A077439.P1844364361595644715

`∩[A136841(n+1), A136865(n+1)]`
-/

namespace A077439.P1844364361595644715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077439.P1844364361595644715

/-! ## A077439.P3145551035439634779

`∩[A136858(n+1), A136865(n+1)]`
-/

namespace A077439.P3145551035439634779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077439.P3145551035439634779

/-! ## A077439.P10147434777698506357

`∩[A136862(n+1), A136865(n+1)]`
-/

namespace A077439.P10147434777698506357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077439.P10147434777698506357

/-!
# A077440: Squares and their roots having square decimal digits.

The programs for A077440, there is no canonical definition to state claims against.
-/

/-! ## A077440.P17100180818101212547

`A077439(n+1)²`
-/

namespace A077440.P17100180818101212547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077439 (n + 1) ^ 2

end

end A077440.P17100180818101212547

/-! ## A077440.P12894654925095289435

`A077439(A000027(n+1))^2`
-/

namespace A077440.P12894654925095289435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077439 (A000027 (n + 1)).toNat ^ 2

end

end A077440.P12894654925095289435

/-! ## A077440.P10776309052478021890

`A077439(A078898(2*(n+1)))^2`
-/

namespace A077440.P10776309052478021890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077439 (A078898 (2 * (n + 1))).toNat ^ 2

end

end A077440.P10776309052478021890

/-! ## A077440.P18090800949875903976

`A077439(A000027(n+1))*A077439(n+1)`
-/

namespace A077440.P18090800949875903976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077439 (A000027 (n + 1)).toNat * A077439 (n + 1)

end

end A077440.P18090800949875903976

/-! ## A077440.P15071324522365780640

`∩[A136841(n+1), A136858(n+1)]²`
-/

namespace A077440.P15071324522365780640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A077440.P15071324522365780640

/-! ## A077440.P16011345576594674363

`∩[A136858(n+1), A136862(n+1)]²`
-/

namespace A077440.P16011345576594674363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A077440.P16011345576594674363

/-! ## A077440.P14688987580402551910

`∩[A136858(n+1), A136865(n+1)]²`
-/

namespace A077440.P14688987580402551910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A077440.P14688987580402551910

/-! ## A077440.P11055977679644991563

`∩[A136862(n+1), A136865(n+1)]²`
-/

namespace A077440.P11055977679644991563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A077440.P11055977679644991563

/-! ## A077440.P2074146171064886343

`∩[A136865(n+1), A136867(n+1)]²`
-/

namespace A077440.P2074146171064886343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A077440.P2074146171064886343

/-! ## A077440.P17401314433603372493

`∩[A136821(n+1), A136867(n+1)]²`
-/

namespace A077440.P17401314433603372493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A077440.P17401314433603372493

/-!
# A077442: 2*a(n)^2 + 7 is a square.

The programs for A077442, the canonical program `A077442.P5365725196135431376` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077442 has offset 0).

The definition of A077442 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077442.P5365725196135431376

`6*a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=19`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077442

/-- `6*a(n-2)-a(n-4)` -/
def P5365725196135431376.Spec : Prop :=
  ∀ n, P5365725196135431376.a n = A077442 n

theorem P5365725196135431376.correct : P5365725196135431376.Spec := by
  intro n
  simp only [A077442]

end A077442

/-! ## A077442.P16123293010644474543

`A082981(Δ[n²])`
-/

namespace A077442.P16123293010644474543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082981 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A077442.P16123293010644474543

namespace A077442

/-- `A082981(Δ[n²])` -/
def P16123293010644474543.Spec : Prop :=
  ∀ n, P16123293010644474543.a n = A077442 n

end A077442

/-! ## A077442.P6361320638497893806

`2*A216134(n)+1`
-/

namespace A077442.P6361320638497893806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A216134 n + 1

end

end A077442.P6361320638497893806

namespace A077442

/-- `2*A216134(n)+1` -/
def P6361320638497893806.Spec : Prop :=
  ∀ n, P6361320638497893806.a n = A077442 n

end A077442

/-! ## A077442.P10096658828164885833

`∑[2*A079496(n)]-1`
-/

namespace A077442.P10096658828164885833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079496 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A077442.P10096658828164885833

namespace A077442

/-- `∑[2*A079496(n)]-1` -/
def P10096658828164885833.Spec : Prop :=
  ∀ n, P10096658828164885833.a n = A077442 n

end A077442

/-! ## A077442.P16056588722006883657

`2*A216162(Δ[n²])+1`
-/

namespace A077442.P16056588722006883657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A216162 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A077442.P16056588722006883657

namespace A077442

/-- `2*A216162(Δ[n²])+1` -/
def P16056588722006883657.Spec : Prop :=
  ∀ n, P16056588722006883657.a n = A077442 n

end A077442

/-! ## A077442.P2377323756517801519

`A266504(A042964(n+1))`
-/

namespace A077442.P2377323756517801519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266504 (A042964 (n + 1)).toNat

end

end A077442.P2377323756517801519

namespace A077442

/-- `A266504(A042964(n+1))` -/
def P2377323756517801519.Spec : Prop :=
  ∀ n, P2377323756517801519.a n = A077442 n

end A077442

/-! ## A077442.P2168428666990692819

`A266506(A047406(n+1))`
-/

namespace A077442.P2168428666990692819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266506 (A047406 (n + 1)).toNat

end

end A077442.P2168428666990692819

namespace A077442

/-- `A266506(A047406(n+1))` -/
def P2168428666990692819.Spec : Prop :=
  ∀ n, P2168428666990692819.a n = A077442 n

end A077442

/-! ## A077442.P15339538257426267380

`A266504(A053438(n+1))`
-/

namespace A077442.P15339538257426267380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266504 (A053438 (n + 1)).toNat

end

end A077442.P15339538257426267380

namespace A077442

/-- `A266504(A053438(n+1))` -/
def P15339538257426267380.Spec : Prop :=
  ∀ n, P15339538257426267380.a n = A077442 n

end A077442

/-! ## A077442.P15855873411498492278

`A266504(A042948(n)+2)`
-/

namespace A077442.P15855873411498492278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266504 (A042948 n + 2).toNat

end

end A077442.P15855873411498492278

namespace A077442

/-- `A266504(A042948(n)+2)` -/
def P15855873411498492278.Spec : Prop :=
  ∀ n, P15855873411498492278.a n = A077442 n

end A077442

/-! ## A077442.P13896335461280510061

`A266504(lt[n, A266491(n)])`
-/

namespace A077442.P13896335461280510061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266504 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A077442.P13896335461280510061

namespace A077442

/-- `A266504(lt[n, A266491(n)])` -/
def P13896335461280510061.Spec : Prop :=
  ∀ n, P13896335461280510061.a n = A077442 n

end A077442

/-! ## A077442.P1568847323023332226

`A216134(n)+∑[A079496(n)]`
-/

namespace A077442.P1568847323023332226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079496 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216134 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077442.P1568847323023332226

namespace A077442

/-- `A216134(n)+∑[A079496(n)]` -/
def P1568847323023332226.Spec : Prop :=
  ∀ n, P1568847323023332226.a n = A077442 n

end A077442

/-! ## A077442.P16801309943283890766

`A266506(A047550(n+1)-1)`
-/

namespace A077442.P16801309943283890766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266506 (A047550 (n + 1) - 1).toNat

end

end A077442.P16801309943283890766

namespace A077442

/-- `A266506(A047550(n+1)-1)` -/
def P16801309943283890766.Spec : Prop :=
  ∀ n, P16801309943283890766.a n = A077442 n

end A077442

/-! ## A077442.P10757930676497436623

`A266504(A080412(2*n+1))`
-/

namespace A077442.P10757930676497436623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266504 (A080412 (2 * n + 1)).toNat

end

end A077442.P10757930676497436623

namespace A077442

/-- `A266504(A080412(2*n+1))` -/
def P10757930676497436623.Spec : Prop :=
  ∀ n, P10757930676497436623.a n = A077442 n

end A077442

/-! ## A077442.P111644298476150456

`A266504(A338062(n+2)-2)`
-/

namespace A077442.P111644298476150456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266504 (A338062 (n + 2) - 2).toNat

end

end A077442.P111644298476150456

namespace A077442

/-- `A266504(A338062(n+2)-2)` -/
def P111644298476150456.Spec : Prop :=
  ∀ n, P111644298476150456.a n = A077442 n

end A077442

/-! ## A077442.P10111498614129223031

`A143608(n)+A000129(n+1)`
-/

namespace A077442.P10111498614129223031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143608 n + A000129 (n + 1)

end

end A077442.P10111498614129223031

namespace A077442

/-- `A143608(n)+A000129(n+1)` -/
def P10111498614129223031.Spec : Prop :=
  ∀ n, P10111498614129223031.a n = A077442 n

end A077442

/-! ## A077442.P9424277918624657232

`A364319(n)+A124124(n+1)`
-/

namespace A077442.P9424277918624657232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364319 n + A124124 (n + 1)

end

end A077442.P9424277918624657232

namespace A077442

/-- `A364319(n)+A124124(n+1)` -/
def P9424277918624657232.Spec : Prop :=
  ∀ n, P9424277918624657232.a n = A077442 n

end A077442

/-! ## A077442.P9339440355013078541

`A006452(n+2)-A006452(n)`
-/

namespace A077442.P9339440355013078541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 (n + 2) - A006452 n

end

end A077442.P9339440355013078541

namespace A077442

/-- `A006452(n+2)-A006452(n)` -/
def P9339440355013078541.Spec : Prop :=
  ∀ n, P9339440355013078541.a n = A077442 n

end A077442

/-! ## A077442.P6966674367305062102

`A266504(eq[n, A266491(n)]+2)`
-/

namespace A077442.P6966674367305062102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266504 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A077442.P6966674367305062102

namespace A077442

/-- `A266504(eq[n, A266491(n)]+2)` -/
def P6966674367305062102.Spec : Prop :=
  ∀ n, P6966674367305062102.a n = A077442 n

end A077442

/-! ## A077442.P17107979047305188807

`Δ[A006452(n+1)+A006452(n)]`
-/

namespace A077442.P17107979047305188807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 (n + 1) + A006452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077442.P17107979047305188807

namespace A077442

/-- `Δ[A006452(n+1)+A006452(n)]` -/
def P17107979047305188807.Spec : Prop :=
  ∀ n, P17107979047305188807.a n = A077442 n

end A077442

/-!
# A077443: Numbers k such that (k^2 - 7)/2 is a square.

The programs for A077443, the canonical program `A077443.P9244369192480918975` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077443 has offset 1).

The definition of A077443 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077443.P9244369192480918975

`2*A124124(n+1)+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A077443

/-- `2*A124124(n+1)+1` -/
def P9244369192480918975.Spec : Prop :=
  ∀ n, P9244369192480918975.a n = A077443 (n + 1)

theorem P9244369192480918975.correct : P9244369192480918975.Spec := by
  intro n
  simp only [A077443, Nat.add_sub_cancel]

end A077443

/-! ## A077443.P2850349579601951649

`sqrt(8*A216134(n)²+8*A216134(n)+9)`
-/

namespace A077443.P2850349579601951649
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (8 * A216134 n ^ 2 + 8 * A216134 n + 9 : ℝ)

end

end A077443.P2850349579601951649

namespace A077443

/-- `sqrt(8*A216134(n)²+8*A216134(n)+9)` -/
def P2850349579601951649.Spec : Prop :=
  ∀ n, P2850349579601951649.a n = (A077443 (n + 1) : ℝ)

end A077443

/-! ## A077443.P1943455264279841354

`2*(∑[A143608(n)]+1)+1`
-/

namespace A077443.P1943455264279841354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A077443.P1943455264279841354

namespace A077443

/-- `2*(∑[A143608(n)]+1)+1` -/
def P1943455264279841354.Spec : Prop :=
  ∀ n, P1943455264279841354.a n = A077443 (n + 1)

end A077443

/-! ## A077443.P12087119870317284611

`A266505(A042964(n+1))`
-/

namespace A077443.P12087119870317284611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266505 (A042964 (n + 1)).toNat

end

end A077443.P12087119870317284611

namespace A077443

/-- `A266505(A042964(n+1))` -/
def P12087119870317284611.Spec : Prop :=
  ∀ n, P12087119870317284611.a n = A077443 (n + 1)

end A077443

/-! ## A077443.P8279089482632875844

`A266506(A047550(n+1))`
-/

namespace A077443.P8279089482632875844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266506 (A047550 (n + 1)).toNat

end

end A077443.P8279089482632875844

namespace A077443

/-- `A266506(A047550(n+1))` -/
def P8279089482632875844.Spec : Prop :=
  ∀ n, P8279089482632875844.a n = A077443 (n + 1)

end A077443

/-! ## A077443.P11043816023870883240

`A266505(A053438(n+1))`
-/

namespace A077443.P11043816023870883240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266505 (A053438 (n + 1)).toNat

end

end A077443.P11043816023870883240

namespace A077443

/-- `A266505(A053438(n+1))` -/
def P11043816023870883240.Spec : Prop :=
  ∀ n, P11043816023870883240.a n = A077443 (n + 1)

end A077443

/-! ## A077443.P6096253558489691873

`A266505(A042948(n)+2)`
-/

namespace A077443.P6096253558489691873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266505 (A042948 n + 2).toNat

end

end A077443.P6096253558489691873

namespace A077443

/-- `A266505(A042948(n)+2)` -/
def P6096253558489691873.Spec : Prop :=
  ∀ n, P6096253558489691873.a n = A077443 (n + 1)

end A077443

/-! ## A077443.P13016759214260029220

`A266505(lt[n, A266491(n)])`
-/

namespace A077443.P13016759214260029220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266505 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A077443.P13016759214260029220

namespace A077443

/-- `A266505(lt[n, A266491(n)])` -/
def P13016759214260029220.Spec : Prop :=
  ∀ n, P13016759214260029220.a n = A077443 (n + 1)

end A077443

/-! ## A077443.P6785208799519645914

`A266506(A047406(n+1)+1)`
-/

namespace A077443.P6785208799519645914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266506 (A047406 (n + 1) + 1).toNat

end

end A077443.P6785208799519645914

namespace A077443

/-- `A266506(A047406(n+1)+1)` -/
def P6785208799519645914.Spec : Prop :=
  ∀ n, P6785208799519645914.a n = A077443 (n + 1)

end A077443

/-! ## A077443.P3528785142116170277

`A266505(A338062(n+2)-2)`
-/

namespace A077443.P3528785142116170277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266505 (A338062 (n + 2) - 2).toNat

end

end A077443.P3528785142116170277

namespace A077443

/-- `A266505(A338062(n+2)-2)` -/
def P3528785142116170277.Spec : Prop :=
  ∀ n, P3528785142116170277.a n = A077443 (n + 1)

end A077443

/-! ## A077443.P10233992396475565868

`A006452(n+2)+A006452(n)`
-/

namespace A077443.P10233992396475565868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 (n + 2) + A006452 n

end

end A077443.P10233992396475565868

namespace A077443

/-- `A006452(n+2)+A006452(n)` -/
def P10233992396475565868.Spec : Prop :=
  ∀ n, P10233992396475565868.a n = A077443 (n + 1)

end A077443

/-! ## A077443.P10162585929995336086

`A364319(n+2)-A364319(n)`
-/

namespace A077443.P10162585929995336086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364319 (n + 2) - A364319 n

end

end A077443.P10162585929995336086

namespace A077443

/-- `A364319(n+2)-A364319(n)` -/
def P10162585929995336086.Spec : Prop :=
  ∀ n, P10162585929995336086.a n = A077443 (n + 1)

end A077443

/-! ## A077443.P4214541359036613796

`A078057(n)+2*A079496(n)`
-/

namespace A077443.P4214541359036613796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n + 2 * A079496 n

end

end A077443.P4214541359036613796

namespace A077443

/-- `A078057(n)+2*A079496(n)` -/
def P4214541359036613796.Spec : Prop :=
  ∀ n, P4214541359036613796.a n = A077443 (n + 1)

end A077443

/-! ## A077443.P6180461703256770146

`A266505(eq[n, A266491(n)]+2)`
-/

namespace A077443.P6180461703256770146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266505 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A077443.P6180461703256770146

namespace A077443

/-- `A266505(eq[n, A266491(n)]+2)` -/
def P6180461703256770146.Spec : Prop :=
  ∀ n, P6180461703256770146.a n = A077443 (n + 1)

end A077443

/-! ## A077443.P6030215815436467887

`record[A249577(n)+A249576(n+1)]`
-/

namespace A077443.P6030215815436467887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249577 n + A249576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077443.P6030215815436467887

namespace A077443

/-- `record[A249577(n)+A249576(n+1)]` -/
def P6030215815436467887.Spec : Prop :=
  ∀ n, P6030215815436467887.a n = A077443 (n + 1)

end A077443

/-! ## A077443.P8488101406188342856

`A215936(n+1)+A000129(n+2)`
-/

namespace A077443.P8488101406188342856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215936 (n + 1) + A000129 (n + 2)

end

end A077443.P8488101406188342856

namespace A077443

/-- `A215936(n+1)+A000129(n+2)` -/
def P8488101406188342856.Spec : Prop :=
  ∀ n, P8488101406188342856.a n = A077443 (n + 1)

end A077443

/-! ## A077443.P12791880149803731188

`A215936(n+1)+A215928(n+2)`
-/

namespace A077443.P12791880149803731188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215936 (n + 1) + A215928 (n + 2)

end

end A077443.P12791880149803731188

namespace A077443

/-- `A215936(n+1)+A215928(n+2)` -/
def P12791880149803731188.Spec : Prop :=
  ∀ n, P12791880149803731188.a n = A077443 (n + 1)

end A077443

/-! ## A077443.P3225574817079656406

`A001333(n+1)+2*A079496(n)`
-/

namespace A077443.P3225574817079656406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) + 2 * A079496 n

end

end A077443.P3225574817079656406

namespace A077443

/-- `A001333(n+1)+2*A079496(n)` -/
def P3225574817079656406.Spec : Prop :=
  ∀ n, P3225574817079656406.a n = A077443 (n + 1)

end A077443

/-! ## A077443.P7465732591550505305

`A215936(n+1)-A176981(n+3)`
-/

namespace A077443.P7465732591550505305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215936 (n + 1) - A176981 (n + 3)

end

end A077443.P7465732591550505305

namespace A077443

/-- `A215936(n+1)-A176981(n+3)` -/
def P7465732591550505305.Spec : Prop :=
  ∀ n, P7465732591550505305.a n = A077443 (n + 1)

end A077443

/-!
# A077444: Numbers k such that (k^2 + 4)/2 is a square.

The programs for A077444, the canonical program `A077444.P16963848625483484455` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077444 has offset 1).

The definition of A077444 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077444.P16963848625483484455

`6*a(n-1)-a(n-2)` with `a(0)=2, a(1)=14`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077444

/-- `6*a(n-1)-a(n-2)` -/
def P16963848625483484455.Spec : Prop :=
  ∀ n, P16963848625483484455.a n = A077444 (n + 1)

theorem P16963848625483484455.correct : P16963848625483484455.Spec := by
  intro n
  simp only [A077444, Nat.add_sub_cancel]

end A077444

/-! ## A077444.P11193938296324269576

`2*A002315(n)`
-/

namespace A077444.P11193938296324269576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002315 n

end

end A077444.P11193938296324269576

namespace A077444

/-- `2*A002315(n)` -/
def P11193938296324269576.Spec : Prop :=
  ∀ n, P11193938296324269576.a n = A077444 (n + 1)

end A077444

/-! ## A077444.P6588119443241017172

`2*(A001109(n+1)+A001109(n))`
-/

namespace A077444.P6588119443241017172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001109 (n + 1) + A001109 n)

end

end A077444.P6588119443241017172

namespace A077444

/-- `2*(A001109(n+1)+A001109(n))` -/
def P6588119443241017172.Spec : Prop :=
  ∀ n, P6588119443241017172.a n = A077444 (n + 1)

end A077444

/-! ## A077444.P11291573790097618056

`(A003499(n+1)-A003499(n))/2`
-/

namespace A077444.P11291573790097618056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003499 (n + 1) - A003499 n : ℚ) / 2

end

end A077444.P11291573790097618056

namespace A077444

/-- `(A003499(n+1)-A003499(n))/2` -/
def P11291573790097618056.Spec : Prop :=
  ∀ n, P11291573790097618056.a n = (A077444 (n + 1) : ℚ)

end A077444

/-! ## A077444.P1913592403820139247

`2*sqrt(A001108(2*n+1))`
-/

namespace A077444.P1913592403820139247
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A001108 (2 * n + 1) : ℝ)

end

end A077444.P1913592403820139247

namespace A077444

/-- `2*sqrt(A001108(2*n+1))` -/
def P1913592403820139247.Spec : Prop :=
  ∀ n, P1913592403820139247.a n = (A077444 (n + 1) : ℝ)

end A077444

/-! ## A077444.P4461938480087421485

`2*sqrt(2*A001653(n+1)²-1)`
-/

namespace A077444.P4461938480087421485
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (2 * A001653 (n + 1) ^ 2 - 1 : ℝ)

end

end A077444.P4461938480087421485

namespace A077444

/-- `2*sqrt(2*A001653(n+1)²-1)` -/
def P4461938480087421485.Spec : Prop :=
  ∀ n, P4461938480087421485.a n = (A077444 (n + 1) : ℝ)

end A077444

/-! ## A077444.P328580446606612888

`sqrt(A003499(2*n+1)-2)`
-/

namespace A077444.P328580446606612888
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A003499 (2 * n + 1) - 2 : ℝ)

end

end A077444.P328580446606612888

namespace A077444

/-- `sqrt(A003499(2*n+1)-2)` -/
def P328580446606612888.Spec : Prop :=
  ∀ n, P328580446606612888.a n = (A077444 (n + 1) : ℝ)

end A077444

/-! ## A077444.P13499808857627218040

`sqrt(2*A075870(n+1)²-4)`
-/

namespace A077444.P13499808857627218040
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * A075870 (n + 1) ^ 2 - 4 : ℝ)

end

end A077444.P13499808857627218040

namespace A077444

/-- `sqrt(2*A075870(n+1)²-4)` -/
def P13499808857627218040.Spec : Prop :=
  ∀ n, P13499808857627218040.a n = (A077444 (n + 1) : ℝ)

end A077444

/-! ## A077444.P15105898009933288943

`ogf((2+2x)/(1-6x+x^2))`
-/

namespace A077444.P15105898009933288943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2] [1, -6, 1] n

end

end A077444.P15105898009933288943

namespace A077444

/-- `ogf((2+2x)/(1-6x+x^2))` -/
def P15105898009933288943.Spec : Prop :=
  ∀ n, P15105898009933288943.a n = A077444 (n + 1)

end A077444

/-! ## A077444.P18257042513184023390

`floor((sqrt(2)+1)^(2*n+1))`
-/

namespace A077444.P18257042513184023390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (2 : ℝ) + 1) ^ (2 * n + 1)⌋

end

end A077444.P18257042513184023390

namespace A077444

/-- `floor((sqrt(2)+1)^(2*n+1))` -/
def P18257042513184023390.Spec : Prop :=
  ∀ n, P18257042513184023390.a n = A077444 (n + 1)

end A077444

/-! ## A077444.P2545241031842003975

`lcm(2, ceil(∑[((sqrt(2)+1)^n)²]))`
-/

namespace A077444.P2545241031842003975
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (2 : ℝ) + 1) ^ n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A077444.P2545241031842003975

namespace A077444

/-- `lcm(2, ceil(∑[((sqrt(2)+1)^n)²]))` -/
def P2545241031842003975.Spec : Prop :=
  ∀ n, (P2545241031842003975.a n : ℤ) = A077444 (n + 1)

end A077444

/-! ## A077444.P13449028678241569945

`round(a(n-1)/(3-sqrt(8)))` with `a(0)=2, a(1)=14`
-/

namespace A077444.P13449028678241569945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 14] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ)))

end

end A077444.P13449028678241569945

namespace A077444

/-- `round(a(n-1)/(3-sqrt(8)))` -/
def P13449028678241569945.Spec : Prop :=
  ∀ n, P13449028678241569945.a n = A077444 (n + 1)

end A077444

/-! ## A077444.P16948016879427614572

`Δ[2*cosh(log((sqrt(2)+1)^n))²]`
-/

namespace A077444.P16948016879427614572
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.cosh (Real.log ((Real.sqrt (2 : ℝ) + 1) ^ n)) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077444.P16948016879427614572

namespace A077444

/-- `Δ[2*cosh(log((sqrt(2)+1)^n))²]` -/
def P16948016879427614572.Spec : Prop :=
  ∀ n, P16948016879427614572.a n = (A077444 (n + 1) : ℝ)

end A077444

/-! ## A077444.P12784191872717155909

`Δ[floor(a(n-1)/(3-sqrt(8)))]` with `a(0)=1, a(1)=3`
-/

namespace A077444.P12784191872717155909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  ⌊(f1 (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077444.P12784191872717155909

namespace A077444

/-- `Δ[floor(a(n-1)/(3-sqrt(8)))]` -/
def P12784191872717155909.Spec : Prop :=
  ∀ n, P12784191872717155909.a n = A077444 (n + 1)

end A077444

/-! ## A077444.P9176697908105225056

`or(2, 2*ceil(∑[((sqrt(2)+1)^n)²]))`
-/

namespace A077444.P9176697908105225056
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (2 : ℝ) + 1) ^ n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (2 * ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉)

end

end A077444.P9176697908105225056

namespace A077444

/-- `or(2, 2*ceil(∑[((sqrt(2)+1)^n)²]))` -/
def P9176697908105225056.Spec : Prop :=
  ∀ n, P9176697908105225056.a n = A077444 (n + 1)

end A077444

/-! ## A077444.P14126170393085071455

`Δ[A001541(n)]`
-/

namespace A077444.P14126170393085071455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077444.P14126170393085071455

namespace A077444

/-- `Δ[A001541(n)]` -/
def P14126170393085071455.Spec : Prop :=
  ∀ n, P14126170393085071455.a n = A077444 (n + 1)

end A077444

/-! ## A077444.P11409415866898178345

`A362545(n)+1`
-/

namespace A077444.P11409415866898178345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362545 n + 1

end

end A077444.P11409415866898178345

namespace A077444

/-- `A362545(n)+1` -/
def P11409415866898178345.Spec : Prop :=
  ∀ n, P11409415866898178345.a n = A077444 (n + 1)

end A077444

/-! ## A077444.P4506355685194788265

`A377725(n)-1`
-/

namespace A077444.P4506355685194788265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377725 n - 1

end

end A077444.P4506355685194788265

namespace A077444

/-- `A377725(n)-1` -/
def P4506355685194788265.Spec : Prop :=
  ∀ n, P4506355685194788265.a n = A077444 (n + 1)

end A077444

/-! ## A077444.P4401907004607881420

`A041010(2*n)`
-/

namespace A077444.P4401907004607881420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041010 (2 * n)

end

end A077444.P4401907004607881420

namespace A077444

/-- `A041010(2*n)` -/
def P4401907004607881420.Spec : Prop :=
  ∀ n, P4401907004607881420.a n = A077444 (n + 1)

end A077444

/-! ## A077444.P15248911440282171751

`A002203(Δ[n²])`
-/

namespace A077444.P15248911440282171751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A077444.P15248911440282171751

namespace A077444

/-- `A002203(Δ[n²])` -/
def P15248911440282171751.Spec : Prop :=
  ∀ n, P15248911440282171751.a n = A077444 (n + 1)

end A077444

/-!
# A077445: Numbers k such that (k^2 - 8)/2 is a square.

The programs for A077445, the canonical program `A077445.P2800442376569899426` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077445 has offset 1).

The definition of A077445 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077445.P2800442376569899426

`6*a(n-1)-a(n-2)` with `a(0)=4, a(1)=20`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077445

/-- `6*a(n-1)-a(n-2)` -/
def P2800442376569899426.Spec : Prop :=
  ∀ n, P2800442376569899426.a n = A077445 (n + 1)

theorem P2800442376569899426.correct : P2800442376569899426.Spec := by
  intro n
  simp only [A077445, Nat.add_sub_cancel]

end A077445

/-! ## A077445.P12081716715535603081

`2*A075870(n+1)`
-/

namespace A077445.P12081716715535603081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075870 (n + 1)

end

end A077445.P12081716715535603081

namespace A077445

/-- `2*A075870(n+1)` -/
def P12081716715535603081.Spec : Prop :=
  ∀ n, P12081716715535603081.a n = A077445 (n + 1)

end A077445

/-! ## A077445.P6046546723993801856

`4*A001653(n+1)`
-/

namespace A077445.P6046546723993801856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001653 (n + 1)

end

end A077445.P6046546723993801856

namespace A077445

/-- `4*A001653(n+1)` -/
def P6046546723993801856.Spec : Prop :=
  ∀ n, P6046546723993801856.a n = A077445 (n + 1)

end A077445

/-! ## A077445.P14850573890660273178

`(A003499(n+1)+A003499(n))/2`
-/

namespace A077445.P14850573890660273178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003499 (n + 1) + A003499 n : ℚ) / 2

end

end A077445.P14850573890660273178

namespace A077445

/-- `(A003499(n+1)+A003499(n))/2` -/
def P14850573890660273178.Spec : Prop :=
  ∀ n, P14850573890660273178.a n = (A077445 (n + 1) : ℚ)

end A077445

/-! ## A077445.P10673439065924900616

`sqrt(2*A003499(2*(n+1)-1)+4)`
-/

namespace A077445.P10673439065924900616
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * A003499 (2 * (n + 1) - 1) + 4 : ℝ)

end

end A077445.P10673439065924900616

namespace A077445

/-- `sqrt(2*A003499(2*(n+1)-1)+4)` -/
def P10673439065924900616.Spec : Prop :=
  ∀ n, P10673439065924900616.a n = (A077445 (n + 1) : ℝ)

end A077445

/-! ## A077445.P13153456181950772964

`ogf((4-4x)/(1-6x+x^2))`
-/

namespace A077445.P13153456181950772964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -4] [1, -6, 1] n

end

end A077445.P13153456181950772964

namespace A077445

/-- `ogf((4-4x)/(1-6x+x^2))` -/
def P13153456181950772964.Spec : Prop :=
  ∀ n, P13153456181950772964.a n = A077445 (n + 1)

end A077445

/-! ## A077445.P2325316612222414587

`record[a(n-2)-a(n-1)-a(n-1)]` with `a(0)=4, a(1)=0`
-/

namespace A077445.P2325316612222414587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 0] fun n f1 =>
  f1 (n - 2) - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077445.P2325316612222414587

namespace A077445

/-- `record[a(n-2)-a(n-1)-a(n-1)]` -/
def P2325316612222414587.Spec : Prop :=
  ∀ n, P2325316612222414587.a n = A077445 (n + 1)

end A077445

/-! ## A077445.P8277152936715778935

`(2+sqrt(2))*(3+2*sqrt(2))^n+(2-sqrt(2))*(3-2*sqrt(2))^n`
-/

namespace A077445.P8277152936715778935
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 + Real.sqrt (2 : ℝ)) * (3 + 2 * Real.sqrt (2 : ℝ)) ^ n + (2 - Real.sqrt (2 : ℝ)) * (3 - 2 * Real.sqrt (2 : ℝ)) ^ n

end

end A077445.P8277152936715778935

namespace A077445

/-- `(2+sqrt(2))*(3+2*sqrt(2))^n+(2-sqrt(2))*(3-2*sqrt(2))^n` -/
def P8277152936715778935.Spec : Prop :=
  ∀ n, P8277152936715778935.a n = (A077445 (n + 1) : ℝ)

theorem P8277152936715778935.correct : P8277152936715778935.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A077445, Nat.add_sub_cancel, A077445.P8277152936715778935.a, A077445.P2800442376569899426.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A077445, Nat.add_sub_cancel, A077445.P8277152936715778935.a, A077445.P2800442376569899426.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A077445

/-! ## A077445.P5621653191918301081

`Δ[A005319(n)]`
-/

namespace A077445.P5621653191918301081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077445.P5621653191918301081

namespace A077445

/-- `Δ[A005319(n)]` -/
def P5621653191918301081.Spec : Prop :=
  ∀ n, P5621653191918301081.a n = A077445 (n + 1)

end A077445

/-! ## A077445.P4295755818174740383

`A371596(Δ[n²])`
-/

namespace A077445.P4295755818174740383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371596 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A077445.P4295755818174740383

namespace A077445

/-- `A371596(Δ[n²])` -/
def P4295755818174740383.Spec : Prop :=
  ∀ n, P4295755818174740383.a n = A077445 (n + 1)

end A077445

/-! ## A077445.P3163328749946680739

`Δ[2*A001542(n)]`
-/

namespace A077445.P3163328749946680739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077445.P3163328749946680739

namespace A077445

/-- `Δ[2*A001542(n)]` -/
def P3163328749946680739.Spec : Prop :=
  ∀ n, P3163328749946680739.a n = A077445 (n + 1)

end A077445

/-! ## A077445.P10106327834030473588

`Δ[A089499(2*n)]`
-/

namespace A077445.P10106327834030473588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089499 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077445.P10106327834030473588

namespace A077445

/-- `Δ[A089499(2*n)]` -/
def P10106327834030473588.Spec : Prop :=
  ∀ n, P10106327834030473588.a n = A077445 (n + 1)

end A077445

/-! ## A077445.P7308529090653762942

`Δ[A143608(2*n)]`
-/

namespace A077445.P7308529090653762942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143608 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077445.P7308529090653762942

namespace A077445

/-- `Δ[A143608(2*n)]` -/
def P7308529090653762942.Spec : Prop :=
  ∀ n, P7308529090653762942.a n = A077445 (n + 1)

end A077445

/-! ## A077445.P8368060669462272427

`Δ[2*A182189(n)]`
-/

namespace A077445.P8368060669462272427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A182189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077445.P8368060669462272427

namespace A077445

/-- `Δ[2*A182189(n)]` -/
def P8368060669462272427.Spec : Prop :=
  ∀ n, P8368060669462272427.a n = A077445 (n + 1)

end A077445

/-! ## A077445.P4610279628195361051

`Δ[A081554(n)/2]`
-/

namespace A077445.P4610279628195361051
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081554 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077445.P4610279628195361051

namespace A077445

/-- `Δ[A081554(n)/2]` -/
def P4610279628195361051.Spec : Prop :=
  ∀ n, P4610279628195361051.a n = (A077445 (n + 1) : ℚ)

end A077445

/-! ## A077445.P12638681107922833759

`Δ[4*A001109(n)]`
-/

namespace A077445.P12638681107922833759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077445.P12638681107922833759

namespace A077445

/-- `Δ[4*A001109(n)]` -/
def P12638681107922833759.Spec : Prop :=
  ∀ n, P12638681107922833759.a n = A077445 (n + 1)

end A077445

/-! ## A077445.P196404017953024891

`record[4*A077985(n)]`
-/

namespace A077445.P196404017953024891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A077985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077445.P196404017953024891

namespace A077445

/-- `record[4*A077985(n)]` -/
def P196404017953024891.Spec : Prop :=
  ∀ n, P196404017953024891.a n = A077445 (n + 1)

end A077445

/-! ## A077445.P1532222489130701379

`Δ[A137199(Δ[n²])]`
-/

namespace A077445.P1532222489130701379
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137199 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077445.P1532222489130701379

namespace A077445

/-- `Δ[A137199(Δ[n²])]` -/
def P1532222489130701379.Spec : Prop :=
  ∀ n, P1532222489130701379.a n = A077445 (n + 1)

end A077445

/-! ## A077445.P13864048432534551638

`Δ[A163271(Δ[n²])]`
-/

namespace A077445.P13864048432534551638
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163271 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077445.P13864048432534551638

namespace A077445

/-- `Δ[A163271(Δ[n²])]` -/
def P13864048432534551638.Spec : Prop :=
  ∀ n, P13864048432534551638.a n = A077445 (n + 1)

end A077445

/-! ## A077445.P6383185603901390011

`4*(A182190(n)+1)`
-/

namespace A077445.P6383185603901390011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A182190 n + 1)

end

end A077445.P6383185603901390011

namespace A077445

/-- `4*(A182190(n)+1)` -/
def P6383185603901390011.Spec : Prop :=
  ∀ n, P6383185603901390011.a n = A077445 (n + 1)

end A077445

/-!
# A077446: Numbers k such that 2*k^2 + 14 is a square.

The programs for A077446, the canonical program `A077446.P13420193364077376453` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077446 has offset 1).

The definition of A077446 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077446.P13420193364077376453

`6*a(n-2)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=11, a(3)=31`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077446

/-- `6*a(n-2)-a(n-4)` -/
def P13420193364077376453.Spec : Prop :=
  ∀ n, P13420193364077376453.a n = A077446 (n + 1)

theorem P13420193364077376453.correct : P13420193364077376453.Spec := by
  intro n
  simp only [A077446, Nat.add_sub_cancel]

end A077446

/-! ## A077446.P9244627525528711944

`2*A006451(n)+1`
-/

namespace A077446.P9244627525528711944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006451 n + 1

end

end A077446.P9244627525528711944

namespace A077446

/-- `2*A006451(n)+1` -/
def P9244627525528711944.Spec : Prop :=
  ∀ n, P9244627525528711944.a n = A077446 (n + 1)

end A077446

/-! ## A077446.P15958499738032682574

`2*A364319(n+1)-1`
-/

namespace A077446.P15958499738032682574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A364319 (n + 1) - 1

end

end A077446.P15958499738032682574

namespace A077446

/-- `2*A364319(n+1)-1` -/
def P15958499738032682574.Spec : Prop :=
  ∀ n, P15958499738032682574.a n = A077446 (n + 1)

end A077446

/-! ## A077446.P9673725206557606198

`A266505(A042948(n+1))`
-/

namespace A077446.P9673725206557606198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266505 (A042948 (n + 1)).toNat

end

end A077446.P9673725206557606198

namespace A077446

/-- `A266505(A042948(n+1))` -/
def P9673725206557606198.Spec : Prop :=
  ∀ n, P9673725206557606198.a n = A077446 (n + 1)

end A077446

/-! ## A077446.P9180245996610510376

`A266505(A338062(n+1))`
-/

namespace A077446.P9180245996610510376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266505 (A338062 (n + 1)).toNat

end

end A077446.P9180245996610510376

namespace A077446

/-- `A266505(A338062(n+1))` -/
def P9180245996610510376.Spec : Prop :=
  ∀ n, P9180245996610510376.a n = A077446 (n + 1)

end A077446

/-! ## A077446.P3782078405815582446

`A266506(A047471(n+2))`
-/

namespace A077446.P3782078405815582446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266506 (A047471 (n + 2)).toNat

end

end A077446.P3782078405815582446

namespace A077446

/-- `A266506(A047471(n+2))` -/
def P3782078405815582446.Spec : Prop :=
  ∀ n, P3782078405815582446.a n = A077446 (n + 1)

end A077446

/-! ## A077446.P8724781087837688011

`A266506(A047467(n+2)+1)`
-/

namespace A077446.P8724781087837688011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266506 (A047467 (n + 2) + 1).toNat

end

end A077446.P8724781087837688011

namespace A077446

/-- `A266506(A047467(n+2)+1)` -/
def P8724781087837688011.Spec : Prop :=
  ∀ n, P8724781087837688011.a n = A077446 (n + 1)

end A077446

/-! ## A077446.P3224851982619803468

`A266505(A042964(n+2)-2)`
-/

namespace A077446.P3224851982619803468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266505 (A042964 (n + 2) - 2).toNat

end

end A077446.P3224851982619803468

namespace A077446

/-- `A266505(A042964(n+2)-2)` -/
def P3224851982619803468.Spec : Prop :=
  ∀ n, P3224851982619803468.a n = A077446 (n + 1)

end A077446

/-! ## A077446.P4759839881717635216

`A143608(n+1)+A143608(n)`
-/

namespace A077446.P4759839881717635216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143608 (n + 1) + A143608 n

end

end A077446.P4759839881717635216

namespace A077446

/-- `A143608(n+1)+A143608(n)` -/
def P4759839881717635216.Spec : Prop :=
  ∀ n, P4759839881717635216.a n = A077446 (n + 1)

end A077446

/-! ## A077446.P10025749188178285695

`A154141(n+1)-A006451(n)`
-/

namespace A077446.P10025749188178285695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154141 (n + 1) - A006451 n

end

end A077446.P10025749188178285695

namespace A077446

/-- `A154141(n+1)-A006451(n)` -/
def P10025749188178285695.Spec : Prop :=
  ∀ n, P10025749188178285695.a n = A077446 (n + 1)

end A077446

/-! ## A077446.P17932690460141194015

`A266505(lt[A266491(n), 2*n])`
-/

namespace A077446.P17932690460141194015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266491 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266505 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A077446.P17932690460141194015

namespace A077446

/-- `A266505(lt[A266491(n), 2*n])` -/
def P17932690460141194015.Spec : Prop :=
  ∀ n, P17932690460141194015.a n = A077446 (n + 1)

end A077446

/-! ## A077446.P13195676361443673332

`A266505(lt[A266491(n)/2, n])`
-/

namespace A077446.P13195676361443673332
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266491 n : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266505 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A077446.P13195676361443673332

namespace A077446

/-- `A266505(lt[A266491(n)/2, n])` -/
def P13195676361443673332.Spec : Prop :=
  ∀ n, P13195676361443673332.a n = A077446 (n + 1)

end A077446

/-! ## A077446.P10997598256243119778

`A266505(lt[A266491(n)-n, n])`
-/

namespace A077446.P10997598256243119778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266491 n - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266505 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A077446.P10997598256243119778

namespace A077446

/-- `A266505(lt[A266491(n)-n, n])` -/
def P10997598256243119778.Spec : Prop :=
  ∀ n, P10997598256243119778.a n = A077446 (n + 1)

end A077446

/-! ## A077446.P6877791098235233026

`A000129(n+2)-A215936(n+1)`
-/

namespace A077446.P6877791098235233026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 2) - A215936 (n + 1)

end

end A077446.P6877791098235233026

namespace A077446

/-- `A000129(n+2)-A215936(n+1)` -/
def P6877791098235233026.Spec : Prop :=
  ∀ n, P6877791098235233026.a n = A077446 (n + 1)

end A077446

/-! ## A077446.P9054431424788633031

`A215928(n+2)-A215936(n+1)`
-/

namespace A077446.P9054431424788633031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (n + 2) - A215936 (n + 1)

end

end A077446.P9054431424788633031

namespace A077446

/-- `A215928(n+2)-A215936(n+1)` -/
def P9054431424788633031.Spec : Prop :=
  ∀ n, P9054431424788633031.a n = A077446 (n + 1)

end A077446

/-! ## A077446.P11240347000103636823

`A078057(n+1)-2*A079496(n)`
-/

namespace A077446.P11240347000103636823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 (n + 1) - 2 * A079496 n

end

end A077446.P11240347000103636823

namespace A077446

/-- `A078057(n+1)-2*A079496(n)` -/
def P11240347000103636823.Spec : Prop :=
  ∀ n, P11240347000103636823.a n = A077446 (n + 1)

end A077446

/-! ## A077446.P9358377416346547678

`A276599(n+1)+Δ[A079496(n)/2]`
-/

namespace A077446.P9358377416346547678
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079496 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276599 (n + 1) : ℚ) + (f1 (n + 1) - f1 n)

end

end A077446.P9358377416346547678

namespace A077446

/-- `A276599(n+1)+Δ[A079496(n)/2]` -/
def P9358377416346547678.Spec : Prop :=
  ∀ n, P9358377416346547678.a n = (A077446 (n + 1) : ℚ)

end A077446

/-! ## A077446.P9119322041959634164

`A266505(eq[2*A266491(n), A004277(n)])`
-/

namespace A077446.P9119322041959634164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A266491 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266505 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A077446.P9119322041959634164

namespace A077446

/-- `A266505(eq[2*A266491(n), A004277(n)])` -/
def P9119322041959634164.Spec : Prop :=
  ∀ n, P9119322041959634164.a n = A077446 (n + 1)

end A077446

/-! ## A077446.P13154598602239867477

`A266505(eq[A004277(n)/2, A266491(n)])`
-/

namespace A077446.P13154598602239867477
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266505 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A077446.P13154598602239867477

namespace A077446

/-- `A266505(eq[A004277(n)/2, A266491(n)])` -/
def P13154598602239867477.Spec : Prop :=
  ∀ n, P13154598602239867477.a n = A077446 (n + 1)

end A077446

/-!
# A077447: Numbers k such that (k^2 - 14)/2 is a square.

The programs for A077447, the canonical program `A077447.P9636244619073163294` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077447 has offset 1).

The definition of A077447 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077447.P9636244619073163294

`6*a(n-2)-a(n-4)` with `a(0)=4, a(1)=8, a(2)=16, a(3)=44`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077447

/-- `6*a(n-2)-a(n-4)` -/
def P9636244619073163294.Spec : Prop :=
  ∀ n, P9636244619073163294.a n = A077447 (n + 1)

theorem P9636244619073163294.correct : P9636244619073163294.Spec := by
  intro n
  simp only [A077447, Nat.add_sub_cancel]

end A077447

/-! ## A077447.P14529873875218262014

`4*A006452(n+1)`
-/

namespace A077447.P14529873875218262014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A006452 (n + 1)

end

end A077447.P14529873875218262014

namespace A077447

/-- `4*A006452(n+1)` -/
def P14529873875218262014.Spec : Prop :=
  ∀ n, P14529873875218262014.a n = A077447 (n + 1)

end A077447

/-! ## A077447.P2768497644229530217

`2*A217975(n+1)`
-/

namespace A077447.P2768497644229530217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A217975 (n + 1)

end

end A077447.P2768497644229530217

namespace A077447

/-- `2*A217975(n+1)` -/
def P2768497644229530217.Spec : Prop :=
  ∀ n, P2768497644229530217.a n = A077447 (n + 1)

end A077447

/-! ## A077447.P12074965806151942024

`4*A216162(2*(n+1))`
-/

namespace A077447.P12074965806151942024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A216162 (2 * (n + 1))

end

end A077447.P12074965806151942024

namespace A077447

/-- `4*A216162(2*(n+1))` -/
def P12074965806151942024.Spec : Prop :=
  ∀ n, P12074965806151942024.a n = A077447 (n + 1)

end A077447

/-! ## A077447.P14947640156558822337

`record[2*Δ[A276600(n+1)]]`
-/

namespace A077447.P14947640156558822337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276600 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077447.P14947640156558822337

namespace A077447

/-- `record[2*Δ[A276600(n+1)]]` -/
def P14947640156558822337.Spec : Prop :=
  ∀ n, P14947640156558822337.a n = A077447 (n + 1)

end A077447

/-! ## A077447.P8559135568678398051

`2*A266504(A042948(n+1))`
-/

namespace A077447.P8559135568678398051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A266504 (A042948 (n + 1)).toNat

end

end A077447.P8559135568678398051

namespace A077447

/-- `2*A266504(A042948(n+1))` -/
def P8559135568678398051.Spec : Prop :=
  ∀ n, P8559135568678398051.a n = A077447 (n + 1)

end A077447

/-! ## A077447.P13036100797276610672

`2*A266504(A338062(n+1))`
-/

namespace A077447.P13036100797276610672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A266504 (A338062 (n + 1)).toNat

end

end A077447.P13036100797276610672

namespace A077447

/-- `2*A266504(A338062(n+1))` -/
def P13036100797276610672.Spec : Prop :=
  ∀ n, P13036100797276610672.a n = A077447 (n + 1)

end A077447

/-! ## A077447.P14855937053393079191

`2*A266506(A047467(n+2))`
-/

namespace A077447.P14855937053393079191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A266506 (A047467 (n + 2)).toNat

end

end A077447.P14855937053393079191

namespace A077447

/-- `2*A266506(A047467(n+2))` -/
def P14855937053393079191.Spec : Prop :=
  ∀ n, P14855937053393079191.a n = A077447 (n + 1)

end A077447

/-! ## A077447.P75816408126499896

`A006452(n+1)+A217975(n+1)+A006452(n+1)`
-/

namespace A077447.P75816408126499896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 (n + 1) + (A217975 (n + 1) + A006452 (n + 1))

end

end A077447.P75816408126499896

namespace A077447

/-- `A006452(n+1)+A217975(n+1)+A006452(n+1)` -/
def P75816408126499896.Spec : Prop :=
  ∀ n, P75816408126499896.a n = A077447 (n + 1)

end A077447

/-! ## A077447.P1159241602801994376

`A077443(n+1)+A077443(n+1)-A143609(A109613(n))`
-/

namespace A077447.P1159241602801994376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077443 (n + 1) + (A077443 (n + 1) - A143609 (A109613 n).toNat)

end

end A077447.P1159241602801994376

namespace A077447

/-- `A077443(n+1)+A077443(n+1)-A143609(A109613(n))` -/
def P1159241602801994376.Spec : Prop :=
  ∀ n, P1159241602801994376.a n = A077447 (n + 1)

end A077447

/-! ## A077447.P114570850694473589

`Δ[4*∑[A006452(n)]]`
-/

namespace A077447.P114570850694473589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077447.P114570850694473589

namespace A077447

/-- `Δ[4*∑[A006452(n)]]` -/
def P114570850694473589.Spec : Prop :=
  ∀ n, P114570850694473589.a n = A077447 (n + 1)

end A077447

/-! ## A077447.P13297817116295775934

`lcm(4, record[Δ[A106526(n+1)]])`
-/

namespace A077447.P13297817116295775934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106526 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A077447.P13297817116295775934

namespace A077447

/-- `lcm(4, record[Δ[A106526(n+1)]])` -/
def P13297817116295775934.Spec : Prop :=
  ∀ n, (P13297817116295775934.a n : ℤ) = A077447 (n + 1)

end A077447

/-! ## A077447.P13909202681508468936

`A133325(n+1)-A077443(n+1)`
-/

namespace A077447.P13909202681508468936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133325 (n + 1) - A077443 (n + 1)

end

end A077447.P13909202681508468936

namespace A077447

/-- `A133325(n+1)-A077443(n+1)` -/
def P13909202681508468936.Spec : Prop :=
  ∀ n, P13909202681508468936.a n = A077447 (n + 1)

theorem P13909202681508468936.correct : P13909202681508468936.Spec := by
  intro n
  simp only [A077447, Nat.add_sub_cancel, A077447.P13909202681508468936.a, A077447.P9636244619073163294.a, A077443, A077443.P9244369192480918975.a, A133325, A133325.P15127350892995211202.a, A124124, A124124.P2045263938805169186.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077447

/-! ## A077447.P14351580434880192288

`A077443(n+2)-A077446(n+1)`
-/

namespace A077447.P14351580434880192288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077443 (n + 2) - A077446 (n + 1)

end

end A077447.P14351580434880192288

namespace A077447

/-- `A077443(n+2)-A077446(n+1)` -/
def P14351580434880192288.Spec : Prop :=
  ∀ n, P14351580434880192288.a n = A077447 (n + 1)

end A077447

/-! ## A077447.P15337369581388028946

`A006451(n+2)-A154141(n+1)`
-/

namespace A077447.P15337369581388028946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 (n + 2) - A154141 (n + 1)

end

end A077447.P15337369581388028946

namespace A077447

/-- `A006451(n+2)-A154141(n+1)` -/
def P15337369581388028946.Spec : Prop :=
  ∀ n, P15337369581388028946.a n = A077447 (n + 1)

end A077447

/-! ## A077447.P13324595663200460408

`2*(A077443(n+2)-A077442(n+1))`
-/

namespace A077447.P13324595663200460408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A077443 (n + 2) - A077442 (n + 1))

end

end A077447.P13324595663200460408

namespace A077447

/-- `2*(A077443(n+2)-A077442(n+1))` -/
def P13324595663200460408.Spec : Prop :=
  ∀ n, P13324595663200460408.a n = A077447 (n + 1)

end A077447

/-! ## A077447.P7070143866061224618

`2*A077443(n+1)-A143609(A109613(n))`
-/

namespace A077447.P7070143866061224618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077443 (n + 1) - A143609 (A109613 n).toNat

end

end A077447.P7070143866061224618

namespace A077447

/-- `2*A077443(n+1)-A143609(A109613(n))` -/
def P7070143866061224618.Spec : Prop :=
  ∀ n, P7070143866061224618.a n = A077447 (n + 1)

end A077447

/-! ## A077447.P7935896002831335436

`A077442(n+1)+A217975(n+1)-A077446(n+1)`
-/

namespace A077447.P7935896002831335436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077442 (n + 1) + (A217975 (n + 1) - A077446 (n + 1))

end

end A077447.P7935896002831335436

namespace A077447

/-- `A077442(n+1)+A217975(n+1)-A077446(n+1)` -/
def P7935896002831335436.Spec : Prop :=
  ∀ n, P7935896002831335436.a n = A077447 (n + 1)

end A077447

/-! ## A077447.P17044435954818282533

`2*2*sqrt(A306561(n+1))`
-/

namespace A077447.P17044435954818282533
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * (2 * Real.sqrt (A306561 (n + 1) : ℝ))

end

end A077447.P17044435954818282533

namespace A077447

/-- `2*2*sqrt(A306561(n+1))` -/
def P17044435954818282533.Spec : Prop :=
  ∀ n, P17044435954818282533.a n = (A077447 (n + 1) : ℝ)

end A077447

/-!
# A077448: Numbers k such that Sum_{d|k} mu(d)*mu(k/d)^2 = +1.

The programs for A077448, the canonical program `A077448.P14987210060085299177` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077448 has offset 1).

The definition of A077448 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030229, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A077448.P14987210060085299177

`A030229(n+1)²`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A077448

/-- `A030229(n+1)²` -/
def P14987210060085299177.Spec : Prop :=
  ∀ n, P14987210060085299177.a n = A077448 (n + 1)

theorem P14987210060085299177.correct : P14987210060085299177.Spec := by
  intro n
  simp only [A077448, Nat.add_sub_cancel]

end A077448

/-! ## A077448.P15405688580403697890

`record[A080304(n+1)²]`
-/

namespace A077448.P15405688580403697890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080304 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077448.P15405688580403697890

namespace A077448

/-- `record[A080304(n+1)²]` -/
def P15405688580403697890.Spec : Prop :=
  ∀ n, P15405688580403697890.a n = A077448 (n + 1)

end A077448

/-! ## A077448.P16562728146589192793

`(lt[0, A008683(n+1)]+1)²`
-/

namespace A077448.P16562728146589192793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) ^ 2

end

end A077448.P16562728146589192793

namespace A077448

/-- `(lt[0, A008683(n+1)]+1)²` -/
def P16562728146589192793.Spec : Prop :=
  ∀ n, (P16562728146589192793.a n : ℤ) = A077448 (n + 1)

end A077448

/-! ## A077448.P6002035923936264807

`(eq[1, A353629(n+1)]+1)²`
-/

namespace A077448.P6002035923936264807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353629 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A077448.P6002035923936264807

namespace A077448

/-- `(eq[1, A353629(n+1)]+1)²` -/
def P6002035923936264807.Spec : Prop :=
  ∀ n, (P6002035923936264807.a n : ℤ) = A077448 (n + 1)

end A077448

/-! ## A077448.P775750430994038499

`(eq[1, A008683(C(n+1, n))]+1)²`
-/

namespace A077448.P775750430994038499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.choose (n + 1) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A077448.P775750430994038499

namespace A077448

/-- `(eq[1, A008683(C(n+1, n))]+1)²` -/
def P775750430994038499.Spec : Prop :=
  ∀ n, (P775750430994038499.a n : ℤ) = A077448 (n + 1)

end A077448

/-! ## A077448.P18346356136814429361

`record[(-(n+2))^(A008683(n+2)+1)]`
-/

namespace A077448.P18346356136814429361
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-(n + 2 : ℤ) : ℚ) ^ (A008683 (n + 2) + 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077448.P18346356136814429361

namespace A077448

/-- `record[(-(n+2))^(A008683(n+2)+1)]` -/
def P18346356136814429361.Spec : Prop :=
  ∀ n, P18346356136814429361.a n = (A077448 (n + 1) : ℚ)

end A077448

/-! ## A077448.P12193123204841185447

`(eq[1, A008683(2*n+1-n)]+1)²`
-/

namespace A077448.P12193123204841185447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * n + 1 - n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A077448.P12193123204841185447

namespace A077448

/-- `(eq[1, A008683(2*n+1-n)]+1)²` -/
def P12193123204841185447.Spec : Prop :=
  ∀ n, (P12193123204841185447.a n : ℤ) = A077448 (n + 1)

end A077448

/-! ## A077448.P17373851651477364652

`A370495(n+1)+A030229(n+1)`
-/

namespace A077448.P17373851651477364652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370495 (n + 1) + A030229 (n + 1)

end

end A077448.P17373851651477364652

namespace A077448

/-- `A370495(n+1)+A030229(n+1)` -/
def P17373851651477364652.Spec : Prop :=
  ∀ n, P17373851651477364652.a n = A077448 (n + 1)

end A077448

/-! ## A077448.P14332222739082534173

`record[A000027(n+1)*A008683(n+1)]²`
-/

namespace A077448.P14332222739082534173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A077448.P14332222739082534173

namespace A077448

/-- `record[A000027(n+1)*A008683(n+1)]²` -/
def P14332222739082534173.Spec : Prop :=
  ∀ n, P14332222739082534173.a n = A077448 (n + 1)

end A077448

/-! ## A077448.P15930129724056435301

`eq[2, A008683(n)+A007318(a(n-1))]²` with `a(0)=0`
-/

namespace A077448.P15930129724056435301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A008683 n + A007318 (f2 (n - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A077448.P15930129724056435301

namespace A077448

/-- `eq[2, A008683(n)+A007318(a(n-1))]²` -/
def P15930129724056435301.Spec : Prop :=
  ∀ n, (P15930129724056435301.a n : ℤ) = A077448 (n + 1)

end A077448

/-! ## A077448.P5623781118246423456

`record[A055615(n+1)]²`
-/

namespace A077448.P5623781118246423456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A077448.P5623781118246423456

namespace A077448

/-- `record[A055615(n+1)]²` -/
def P5623781118246423456.Spec : Prop :=
  ∀ n, P5623781118246423456.a n = A077448 (n + 1)

end A077448

/-! ## A077448.P10769772628340528119

`record[A378997(n+1)]²`
-/

namespace A077448.P10769772628340528119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A077448.P10769772628340528119

namespace A077448

/-- `record[A378997(n+1)]²` -/
def P10769772628340528119.Spec : Prop :=
  ∀ n, P10769772628340528119.a n = A077448 (n + 1)

end A077448

/-! ## A077448.P3617959187332081861

`record[A325126(record[A325126(n+1)])]²`
-/

namespace A077448.P3617959187332081861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325126 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325126 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A077448.P3617959187332081861

namespace A077448

/-- `record[A325126(record[A325126(n+1)])]²` -/
def P3617959187332081861.Spec : Prop :=
  ∀ n, P3617959187332081861.a n = A077448 (n + 1)

end A077448

/-! ## A077448.P4031496426898023104

`record[A000027(n+1)*A055615(n+1)]`
-/

namespace A077448.P4031496426898023104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A055615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077448.P4031496426898023104

namespace A077448

/-- `record[A000027(n+1)*A055615(n+1)]` -/
def P4031496426898023104.Spec : Prop :=
  ∀ n, P4031496426898023104.a n = A077448 (n + 1)

end A077448

/-! ## A077448.P17554538878760054166

`record[A055615(n+1)*A336319(n+1)]`
-/

namespace A077448.P17554538878760054166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1) * A336319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077448.P17554538878760054166

namespace A077448

/-- `record[A055615(n+1)*A336319(n+1)]` -/
def P17554538878760054166.Spec : Prop :=
  ∀ n, P17554538878760054166.a n = A077448 (n + 1)

end A077448

/-! ## A077448.P9968016826795386741

`record[A018252(n+1)*A008683(A018252(n+1))]²`
-/

namespace A077448.P9968016826795386741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) * A008683 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A077448.P9968016826795386741

namespace A077448

/-- `record[A018252(n+1)*A008683(A018252(n+1))]²` -/
def P9968016826795386741.Spec : Prop :=
  ∀ n, P9968016826795386741.a n = A077448 (n + 1)

end A077448

/-! ## A077448.P1420333319009540669

`record[A359588(record[A359588(n+1)])]²`
-/

namespace A077448.P1420333319009540669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359588 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359588 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A077448.P1420333319009540669

namespace A077448

/-- `record[A359588(record[A359588(n+1)])]²` -/
def P1420333319009540669.Spec : Prop :=
  ∀ n, P1420333319009540669.a n = A077448 (n + 1)

end A077448

/-! ## A077448.P7255651996061332966

`∩[A062503(n+1), A069067(n+1)]`
-/

namespace A077448.P7255651996061332966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077448.P7255651996061332966

namespace A077448

/-- `∩[A062503(n+1), A069067(n+1)]` -/
def P7255651996061332966.Spec : Prop :=
  ∀ n, (P7255651996061332966.a n : ℤ) = A077448 (n + 1)

end A077448

/-! ## A077448.P17163070639775167139

`∩[A359157(n+1), A014528(n)]²`
-/

namespace A077448.P17163070639775167139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014528 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A077448.P17163070639775167139

namespace A077448

/-- `∩[A359157(n+1), A014528(n)]²` -/
def P17163070639775167139.Spec : Prop :=
  ∀ n, (P17163070639775167139.a n : ℤ) = A077448 (n + 1)

end A077448

/-! ## A077448.P12433159618319429040

`record[∏{p}[n, -#]]²`
-/

namespace A077448.P12433159618319429040
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A077448.P12433159618319429040

namespace A077448

/-- `record[∏{p}[n, -#]]²` -/
def P12433159618319429040.Spec : Prop :=
  ∀ n, P12433159618319429040.a n = A077448 (n + 1)

end A077448

/-!
# A077450: Continued fraction expansion of (29+sqrt(145))/12.

The programs for A077450, the canonical program `A077450.P12049194069988922741` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077450 has offset 0).

The definition of A077450 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077450.P12049194069988922741

`a(n-5)` with `a(0)=3, a(1)=2, a(2)=2, a(3)=1, a(4)=1, a(5)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077450

/-- `a(n-5)` -/
def P12049194069988922741.Spec : Prop :=
  ∀ n, (P12049194069988922741.a n : ℤ) = A077450 n

theorem P12049194069988922741.correct : P12049194069988922741.Spec := by
  intro n
  simp only [A077450]

end A077450

/-!
# A077454: a(n) = sigma_3(n^3)/sigma(n^3).

The programs for A077454, the canonical program `A077454.P16236692966555869725` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077454 has offset 1).

The definition of A077454 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001158, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A077454.P16236692966555869725

`A001158((n+1)^3)/A000203((n+1)^3)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A077454

/-- `A001158((n+1)^3)/A000203((n+1)^3)` -/
def P16236692966555869725.Spec : Prop :=
  ∀ n, P16236692966555869725.a n = (A077454 (n + 1) : ℚ)

end A077454

/-! ## A077454.P13012440020101228056

`A258331(n+1)/A175926(n+1)`
-/

namespace A077454.P13012440020101228056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258331 (n + 1) : ℚ) / (A175926 (n + 1) : ℚ)

end

end A077454.P13012440020101228056

namespace A077454

/-- `A258331(n+1)/A175926(n+1)` -/
def P13012440020101228056.Spec : Prop :=
  ∀ n, P13012440020101228056.a n = (A077454 (n + 1) : ℚ)

end A077454

/-! ## A077454.P15376622820434796769

`A258331(n+1)/∑{d}[n+1, #*A160889(#)]`
-/

namespace A077454.P15376622820434796769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258331 (n + 1) : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A160889 d : ℤ) : ℚ)

end

end A077454.P15376622820434796769

namespace A077454

/-- `A258331(n+1)/∑{d}[n+1, #*A160889(#)]` -/
def P15376622820434796769.Spec : Prop :=
  ∀ n, P15376622820434796769.a n = (A077454 (n + 1) : ℚ)

end A077454

/-! ## A077454.P8467042051094865187

`A258331(n+1)/A076401(A340699(n+1))`
-/

namespace A077454.P8467042051094865187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258331 (n + 1) : ℚ) / (A076401 (A340699 (n + 1)).toNat : ℚ)

end

end A077454.P8467042051094865187

namespace A077454

/-- `A258331(n+1)/A076401(A340699(n+1))` -/
def P8467042051094865187.Spec : Prop :=
  ∀ n, P8467042051094865187.a n = (A077454 (n + 1) : ℚ)

end A077454

/-! ## A077454.P2199029403281724483

`A258331(n+1)/∑{d}[n+1, #*A254981(A000290(#))]`
-/

namespace A077454.P2199029403281724483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258331 (n + 1) : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A254981 (A000290 d).toNat : ℤ) : ℚ)

end

end A077454.P2199029403281724483

namespace A077454

/-- `A258331(n+1)/∑{d}[n+1, #*A254981(A000290(#))]` -/
def P2199029403281724483.Spec : Prop :=
  ∀ n, P2199029403281724483.a n = (A077454 (n + 1) : ℚ)

end A077454

/-! ## A077454.P2715634220777491229

`A258331(n+1)/∑{d}[A000578(n+1), #]`
-/

namespace A077454.P2715634220777491229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258331 (n + 1) : ℚ) / ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℚ)

end

end A077454.P2715634220777491229

namespace A077454

/-- `A258331(n+1)/∑{d}[A000578(n+1), #]` -/
def P2715634220777491229.Spec : Prop :=
  ∀ n, P2715634220777491229.a n = (A077454 (n + 1) : ℚ)

end A077454

/-!
# A077455: a(n) = sigma_4(n^4)/sigma(n^4).

The programs for A077455, the canonical program `A077455.P10638361790126608453` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077455 has offset 1).

The definition of A077455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077455.P10638361790126608453

`A057660((n+1)²)*A077457(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A077455

/-- `A057660((n+1)²)*A077457(n+1)` -/
def P10638361790126608453.Spec : Prop :=
  ∀ n, P10638361790126608453.a n = A077455 (n + 1)

theorem P10638361790126608453.correct : P10638361790126608453.Spec := by
  intro n
  simp only [A077455, Nat.add_sub_cancel]

end A077455

/-!
# A077457: a(n) = sigma_4(n^4)/sigma_2(n^4).

The programs for A077457, the canonical program `A077457.P11706829085176532255` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077457 has offset 1).

The definition of A077457 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A001159, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A077457.P11706829085176532255

`A001159((n+1)^4)/A001157((n+1)^4)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A077457

/-- `A001159((n+1)^4)/A001157((n+1)^4)` -/
def P11706829085176532255.Spec : Prop :=
  ∀ n, P11706829085176532255.a n = (A077457 (n + 1) : ℚ)

end A077457

/-! ## A077457.P18079953718019764939

`A084218((n+1)²)`
-/

namespace A077457.P18079953718019764939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084218 ((n + 1) ^ 2)

end

end A077457.P18079953718019764939

namespace A077457

/-- `A084218((n+1)²)` -/
def P18079953718019764939.Spec : Prop :=
  ∀ n, P18079953718019764939.a n = A077457 (n + 1)

end A077457

/-! ## A077457.P14138014710419263305

`∑{d}[(n+1)², #*A000056(#)]`
-/

namespace A077457.P14138014710419263305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000056 d

end

end A077457.P14138014710419263305

namespace A077457

/-- `∑{d}[(n+1)², #*A000056(#)]` -/
def P14138014710419263305.Spec : Prop :=
  ∀ n, P14138014710419263305.a n = A077457 (n + 1)

end A077457

/-! ## A077457.P14867537579563575123

`or(1, A084218(A000290(n+1)))`
-/

namespace A077457.P14867537579563575123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A084218 (A000290 (n + 1)).toNat)

end

end A077457.P14867537579563575123

namespace A077457

/-- `or(1, A084218(A000290(n+1)))` -/
def P14867537579563575123.Spec : Prop :=
  ∀ n, P14867537579563575123.a n = A077457 (n + 1)

end A077457

/-! ## A077457.P14625722375187140027

`A084218(A000290(n+1))+char[A017500(n)]`
-/

namespace A077457.P14625722375187140027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017500 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084218 (A000290 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A077457.P14625722375187140027

namespace A077457

/-- `A084218(A000290(n+1))+char[A017500(n)]` -/
def P14625722375187140027.Spec : Prop :=
  ∀ n, P14625722375187140027.a n = A077457 (n + 1)

end A077457

/-! ## A077457.P5279026177805945338

`char[A077264(n)]*A084218(A000290(n+1))`
-/

namespace A077457.P5279026177805945338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077264 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A084218 (A000290 (n + 1)).toNat

end

end A077457.P5279026177805945338

namespace A077457

/-- `char[A077264(n)]*A084218(A000290(n+1))` -/
def P5279026177805945338.Spec : Prop :=
  ∀ n, P5279026177805945338.a n = A077457 (n + 1)

end A077457

/-! ## A077457.P14361532771842858590

`A084218(A000290(n+1))+n*A000007(n)`
-/

namespace A077457.P14361532771842858590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084218 (A000290 (n + 1)).toNat + (n : ℤ) * A000007 n

end

end A077457.P14361532771842858590

namespace A077457

/-- `A084218(A000290(n+1))+n*A000007(n)` -/
def P14361532771842858590.Spec : Prop :=
  ∀ n, P14361532771842858590.a n = A077457 (n + 1)

end A077457

/-! ## A077457.P12645474521195734991

`A084218(A000290(n+1))+char[A002025(n+1)]`
-/

namespace A077457.P12645474521195734991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002025 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084218 (A000290 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A077457.P12645474521195734991

namespace A077457

/-- `A084218(A000290(n+1))+char[A002025(n+1)]` -/
def P12645474521195734991.Spec : Prop :=
  ∀ n, P12645474521195734991.a n = A077457 (n + 1)

end A077457

/-! ## A077457.P14227538597035135425

`char[A175676(n+1)]*A084218(A000290(n+1))`
-/

namespace A077457.P14227538597035135425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A084218 (A000290 (n + 1)).toNat

end

end A077457.P14227538597035135425

namespace A077457

/-- `char[A175676(n+1)]*A084218(A000290(n+1))` -/
def P14227538597035135425.Spec : Prop :=
  ∀ n, P14227538597035135425.a n = A077457 (n + 1)

end A077457

/-! ## A077457.P16845083454722009643

`A084218(A000290(n+1))+char[A076150(n+1)-1]`
-/

namespace A077457.P16845083454722009643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076150 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084218 (A000290 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A077457.P16845083454722009643

namespace A077457

/-- `A084218(A000290(n+1))+char[A076150(n+1)-1]` -/
def P16845083454722009643.Spec : Prop :=
  ∀ n, P16845083454722009643.a n = A077457 (n + 1)

end A077457

/-! ## A077457.P2040062330278600858

`A008683(A108633(n+1))*A084218(A000290(n+1))`
-/

namespace A077457.P2040062330278600858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A108633 (n + 1)).toNat * A084218 (A000290 (n + 1)).toNat

end

end A077457.P2040062330278600858

namespace A077457

/-- `A008683(A108633(n+1))*A084218(A000290(n+1))` -/
def P2040062330278600858.Spec : Prop :=
  ∀ n, P2040062330278600858.a n = A077457 (n + 1)

end A077457

/-!
# A077458: a(n) = (a(n-1)*a(n-2) + a(n-2)*a(n-3) + 1)/a(n-4).

The programs for A077458, the canonical program `A077458.P15606449721265410948` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077458 has offset 1).

The definition of A077458 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077458.P15606449721265410948

`(a(n-1)*a(n-2)+a(n-2)*a(n-3)+1)/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077458

/-- `(a(n-1)*a(n-2)+a(n-2)*a(n-3)+1)/a(n-4)` -/
def P15606449721265410948.Spec : Prop :=
  ∀ n, P15606449721265410948.a n = (A077458 (n + 1) : ℚ)

end A077458

/-! ## A077458.P18319186702301474950

`A324751(A030436(n))`
-/

namespace A077458.P18319186702301474950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324751 (A030436 n).toNat

end

end A077458.P18319186702301474950

namespace A077458

/-- `A324751(A030436(n))` -/
def P18319186702301474950.Spec : Prop :=
  ∀ n, P18319186702301474950.a n = A077458 (n + 1)

end A077458

/-! ## A077458.P7202113165462470132

`A129263(A247326(n))`
-/

namespace A077458.P7202113165462470132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129263 (A247326 n).toNat

end

end A077458.P7202113165462470132

namespace A077458

/-- `A129263(A247326(n))` -/
def P7202113165462470132.Spec : Prop :=
  ∀ n, P7202113165462470132.a n = A077458 (n + 1)

end A077458

/-! ## A077458.P14528796366148336637

`A324751(A270879(n))`
-/

namespace A077458.P14528796366148336637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324751 (A270879 n).toNat

end

end A077458.P14528796366148336637

namespace A077458

/-- `A324751(A270879(n))` -/
def P14528796366148336637.Spec : Prop :=
  ∀ n, P14528796366148336637.a n = A077458 (n + 1)

end A077458

/-!
# A077459: Numbers k such that k and 3*k have the same digital binary sum.

The programs for A077459, the canonical program `A077459.P11243262185449011416` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077459 has offset 1).

The definition of A077459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3712 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077459.P11243262185449011416

`eq[A060632(3*n), A060632(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A077459

/-- `eq[A060632(3*n), A060632(n)]` -/
def P11243262185449011416.Spec : Prop :=
  ∀ n, (P11243262185449011416.a n : ℤ) = A077459 (n + 1)

theorem P11243262185449011416.correct : P11243262185449011416.Spec := by
  intro n
  simp only [A077459, Nat.add_sub_cancel]

end A077459

/-! ## A077459.P5810338096873768449

`eq[A001316(3*n), A001316(n)]`
-/

namespace A077459.P5810338096873768449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077459.P5810338096873768449

namespace A077459

/-- `eq[A001316(3*n), A001316(n)]` -/
def P5810338096873768449.Spec : Prop :=
  ∀ n, (P5810338096873768449.a n : ℤ) = A077459 (n + 1)

end A077459

/-! ## A077459.P4859008357859664907

`eq[A328472(2*n+1), A328472(3*n+1)]/2`
-/

namespace A077459.P4859008357859664907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328472 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328472 (3 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A077459.P4859008357859664907

namespace A077459

/-- `eq[A328472(2*n+1), A328472(3*n+1)]/2` -/
def P4859008357859664907.Spec : Prop :=
  ∀ n, P4859008357859664907.a n = (A077459 (n + 1) : ℚ)

end A077459

/-! ## A077459.P6687051927849914420

`eq[0, A334913(n)]`
-/

namespace A077459.P6687051927849914420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334913 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A077459.P6687051927849914420

namespace A077459

/-- `eq[0, A334913(n)]` -/
def P6687051927849914420.Spec : Prop :=
  ∀ n, (P6687051927849914420.a n : ℤ) = A077459 (n + 1)

end A077459

/-! ## A077459.P3133039118974339186

`eq[a(and(n, n-1))+1, A036555(n)]` with `a(0)=0, a(1)=0`
-/

namespace A077459.P3133039118974339186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036555 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A077459.P3133039118974339186

namespace A077459

/-- `eq[a(and(n, n-1))+1, A036555(n)]` -/
def P3133039118974339186.Spec : Prop :=
  ∀ n, (P3133039118974339186.a n : ℤ) = A077459 (n + 1)

end A077459

/-! ## A077459.P17962070096646240846

`eq[A000120(n), A036555(n)]`
-/

namespace A077459.P17962070096646240846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036555 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077459.P17962070096646240846

namespace A077459

/-- `eq[A000120(n), A036555(n)]` -/
def P17962070096646240846.Spec : Prop :=
  ∀ n, (P17962070096646240846.a n : ℤ) = A077459 (n + 1)

end A077459

/-! ## A077459.P8507162451392813312

`eq[A001316(n), A134660(n)]`
-/

namespace A077459.P8507162451392813312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134660 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077459.P8507162451392813312

namespace A077459

/-- `eq[A001316(n), A134660(n)]` -/
def P8507162451392813312.Spec : Prop :=
  ∀ n, (P8507162451392813312.a n : ℤ) = A077459 (n + 1)

end A077459

/-! ## A077459.P5267600802701218247

`eq[Δ[A006046(n)], A134660(n)]`
-/

namespace A077459.P5267600802701218247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134660 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A077459.P5267600802701218247

namespace A077459

/-- `eq[Δ[A006046(n)], A134660(n)]` -/
def P5267600802701218247.Spec : Prop :=
  ∀ n, (P5267600802701218247.a n : ℤ) = A077459 (n + 1)

end A077459

/-! ## A077459.P18191739433596087585

`eq[A134660(n)+A006046(2*n), A006046(2*n+1)]`
-/

namespace A077459.P18191739433596087585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134660 n + A006046 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077459.P18191739433596087585

namespace A077459

/-- `eq[A134660(n)+A006046(2*n), A006046(2*n+1)]` -/
def P18191739433596087585.Spec : Prop :=
  ∀ n, (P18191739433596087585.a n : ℤ) = A077459 (n + 1)

end A077459

/-! ## A077459.P7367021002491869948

`eq[A050315(3*n), A050315(n)]`
-/

namespace A077459.P7367021002491869948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077459.P7367021002491869948

namespace A077459

/-- `eq[A050315(3*n), A050315(n)]` -/
def P7367021002491869948.Spec : Prop :=
  ∀ n, (P7367021002491869948.a n : ℤ) = A077459 (n + 1)

end A077459

/-! ## A077459.P3817877528077024000

`eq[A000120(A006257(3*n)), A000120(n)]`
-/

namespace A077459.P3817877528077024000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A006257 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077459.P3817877528077024000

namespace A077459

/-- `eq[A000120(A006257(3*n)), A000120(n)]` -/
def P3817877528077024000.Spec : Prop :=
  ∀ n, (P3817877528077024000.a n : ℤ) = A077459 (n + 1)

end A077459

/-! ## A077459.P15679516019680988281

`lt[abs(A001316(12*n)-A001316(n)), 1]`
-/

namespace A077459.P15679516019680988281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001316 (12 * n) - A001316 n|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A077459.P15679516019680988281

namespace A077459

/-- `lt[abs(A001316(12*n)-A001316(n)), 1]` -/
def P15679516019680988281.Spec : Prop :=
  ∀ n, (P15679516019680988281.a n : ℤ) = A077459 (n + 1)

end A077459

/-! ## A077459.P13641921614319467727

`eq[A000120(3*n), A000120(n)]`
-/

namespace A077459.P13641921614319467727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077459.P13641921614319467727

namespace A077459

/-- `eq[A000120(3*n), A000120(n)]` -/
def P13641921614319467727.Spec : Prop :=
  ∀ n, (P13641921614319467727.a n : ℤ) = A077459 (n + 1)

end A077459

/-! ## A077459.P12142649392304981066

`eq[A038573(3*n), A038573(n)]`
-/

namespace A077459.P12142649392304981066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077459.P12142649392304981066

namespace A077459

/-- `eq[A038573(3*n), A038573(n)]` -/
def P12142649392304981066.Spec : Prop :=
  ∀ n, (P12142649392304981066.a n : ℤ) = A077459 (n + 1)

end A077459

/-! ## A077459.P10673736175528660619

`eq[A048883(3*n), A048883(n)]`
-/

namespace A077459.P10673736175528660619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077459.P10673736175528660619

namespace A077459

/-- `eq[A048883(3*n), A048883(n)]` -/
def P10673736175528660619.Spec : Prop :=
  ∀ n, (P10673736175528660619.a n : ℤ) = A077459 (n + 1)

end A077459

/-! ## A077459.P5972361450929230534

`eq[A061338(3*n), A061338(n)]`
-/

namespace A077459.P5972361450929230534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061338 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061338 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077459.P5972361450929230534

namespace A077459

/-- `eq[A061338(3*n), A061338(n)]` -/
def P5972361450929230534.Spec : Prop :=
  ∀ n, (P5972361450929230534.a n : ℤ) = A077459 (n + 1)

end A077459

/-! ## A077459.P17216301277915940819

`eq[A071044(3*n), A071044(n)]`
-/

namespace A077459.P17216301277915940819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077459.P17216301277915940819

namespace A077459

/-- `eq[A071044(3*n), A071044(n)]` -/
def P17216301277915940819.Spec : Prop :=
  ∀ n, (P17216301277915940819.a n : ℤ) = A077459 (n + 1)

end A077459

/-! ## A077459.P11996218589955647258

`eq[A096288(3*n), A096288(n)]`
-/

namespace A077459.P11996218589955647258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096288 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096288 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077459.P11996218589955647258

namespace A077459

/-- `eq[A096288(3*n), A096288(n)]` -/
def P11996218589955647258.Spec : Prop :=
  ∀ n, (P11996218589955647258.a n : ℤ) = A077459 (n + 1)

end A077459

/-! ## A077459.P8522760075278219844

`eq[A102376(3*n), A102376(n)]`
-/

namespace A077459.P8522760075278219844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077459.P8522760075278219844

namespace A077459

/-- `eq[A102376(3*n), A102376(n)]` -/
def P8522760075278219844.Spec : Prop :=
  ∀ n, (P8522760075278219844.a n : ℤ) = A077459 (n + 1)

end A077459

/-! ## A077459.P10595327150855936378

`eq[A105321(3*n), A105321(n)]`
-/

namespace A077459.P10595327150855936378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105321 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105321 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077459.P10595327150855936378

namespace A077459

/-- `eq[A105321(3*n), A105321(n)]` -/
def P10595327150855936378.Spec : Prop :=
  ∀ n, (P10595327150855936378.a n : ℤ) = A077459 (n + 1)

end A077459

/-!
# A077460: Number of nonisomorphic ways a loop can cross a road (running East-West) 2n times.

The programs for A077460, there is no canonical definition to state claims against.
-/

/-! ## A077460.P11514080786357283812

`A300763(floor(sqrt(A213863(n))))`
-/

namespace A077460.P11514080786357283812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (Int.sqrt (A213863 n)).toNat

end

end A077460.P11514080786357283812

/-! ## A077460.P9421100941010511365

`A034887(ceil(A120606(n)/3^n))`
-/

namespace A077460.P9421100941010511365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 ⌈(A120606 n : ℚ) / (3 ^ n : ℚ)⌉.toNat

end

end A077460.P9421100941010511365

/-! ## A077460.P2993840003872711465

`A008612(A352855(n))+char[2^n-1]`
-/

namespace A077460.P2993840003872711465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A352855 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A077460.P2993840003872711465

/-!
# A077462: Prime factor configuration patterns.

The programs for A077462, there is no canonical definition to state claims against.
-/

/-! ## A077462.P14369860187810959276

`(A079616(A028310(n))+1)%(n+1)`
-/

namespace A077462.P14369860187810959276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079616 (A028310 n).toNat + 1) (n + 1 : ℤ)

end

end A077462.P14369860187810959276

/-! ## A077462.P11824484895510299615

`A079616(A028310(n))+1-A000007(n)`
-/

namespace A077462.P11824484895510299615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079616 (A028310 n).toNat + (1 - A000007 n)

end

end A077462.P11824484895510299615

/-! ## A077462.P14237379081634209363

`A079616(A028310(n))+2-A054977(n)`
-/

namespace A077462.P14237379081634209363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079616 (A028310 n).toNat + (2 - A054977 n)

end

end A077462.P14237379081634209363

/-! ## A077462.P12719736344661187139

`A079616(A028310(n))+and(1, A000040(n+1))`
-/

namespace A077462.P12719736344661187139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079616 (A028310 n).toNat + Int.land 1 (A000040 (n + 1))

end

end A077462.P12719736344661187139

/-! ## A077462.P1432011575550502224

`A079616(A028310(n))+1-A010051(2*(n+1))`
-/

namespace A077462.P1432011575550502224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079616 (A028310 n).toNat + (1 - A010051 (2 * (n + 1)))

end

end A077462.P1432011575550502224

/-! ## A077462.P3617749874878958153

`A089309(n²)+A079616(A065033(2*n))`
-/

namespace A077462.P3617749874878958153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (n ^ 2) + A079616 (A065033 (2 * n)).toNat

end

end A077462.P3617749874878958153

/-!
# A077463: Number of primes p such that n < p < 2n-2.

The programs for A077463, the canonical program `A077463.P3404474754757640182` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077463 has offset 1).

The definition of A077463 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077463.P15661025461747250202

`A060715(n+1)-char[floor(p?[2*n+1]/2)]`
-/

namespace A077463.P15661025461747250202
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A077463.P15661025461747250202

namespace A077463

/-- `A060715(n+1)-char[floor(p?[2*n+1]/2)]` -/
def P15661025461747250202.Spec : Prop :=
  ∀ n, P15661025461747250202.a n = A077463 (n + 1)

end A077463

/-! ## A077463.P7102997616798890365

`A278617(n+1)-∑[∑{p}[n+1, (#%n)%#]]`
-/

namespace A077463.P7102997616798890365
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p % n % p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278617 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A077463.P7102997616798890365

namespace A077463

/-- `A278617(n+1)-∑[∑{p}[n+1, (#%n)%#]]` -/
def P7102997616798890365.Spec : Prop :=
  ∀ n, P7102997616798890365.a n = A077463 (n + 1)

end A077463

/-! ## A077463.P3404474754757640182

`A060715(n+1)-A101264(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A077463

/-- `A060715(n+1)-A101264(n)` -/
def P3404474754757640182.Spec : Prop :=
  ∀ n, P3404474754757640182.a n = A077463 (n + 1)

theorem P3404474754757640182.correct : P3404474754757640182.Spec := by
  intro n
  simp only [A077463, Nat.add_sub_cancel]

end A077463

/-! ## A077463.P1519091059966914512

`A278617(n+1)-A033270(n+1)`
-/

namespace A077463.P1519091059966914512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278617 (n + 1) - A033270 (n + 1)

end

end A077463.P1519091059966914512

namespace A077463

/-- `A278617(n+1)-A033270(n+1)` -/
def P1519091059966914512.Spec : Prop :=
  ∀ n, P1519091059966914512.a n = A077463 (n + 1)

end A077463

/-! ## A077463.P15018815068365211334

`A060715(n+1)-A010051(2*n+1)`
-/

namespace A077463.P15018815068365211334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (n + 1) - A010051 (2 * n + 1)

end

end A077463.P15018815068365211334

namespace A077463

/-- `A060715(n+1)-A010051(2*n+1)` -/
def P15018815068365211334.Spec : Prop :=
  ∀ n, P15018815068365211334.a n = A077463 (n + 1)

end A077463

/-! ## A077463.P8156273973144503212

`A000720(A377994(n+1))-A000720(n+1)`
-/

namespace A077463.P8156273973144503212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A377994 (n + 1)).toNat - A000720 (n + 1)

end

end A077463.P8156273973144503212

namespace A077463

/-- `A000720(A377994(n+1))-A000720(n+1)` -/
def P8156273973144503212.Spec : Prop :=
  ∀ n, P8156273973144503212.a n = A077463 (n + 1)

end A077463

/-! ## A077463.P16542796869918877709

`A099801(n)-(A101264(n)+A000720(n+1))`
-/

namespace A077463.P16542796869918877709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 n - (A101264 n + A000720 (n + 1))

end

end A077463.P16542796869918877709

namespace A077463

/-- `A099801(n)-(A101264(n)+A000720(n+1))` -/
def P16542796869918877709.Spec : Prop :=
  ∀ n, P16542796869918877709.a n = A077463 (n + 1)

end A077463

/-! ## A077463.P18146957722871844035

`A230980(2*n)-∑[∑{p}[n+1, val(#, n+1)]]`
-/

namespace A077463.P18146957722871844035
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (2 * n) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A077463.P18146957722871844035

namespace A077463

/-- `A230980(2*n)-∑[∑{p}[n+1, val(#, n+1)]]` -/
def P18146957722871844035.Spec : Prop :=
  ∀ n, P18146957722871844035.a n = A077463 (n + 1)

end A077463

/-! ## A077463.P15044033400120571396

`A230980(2*n)-A000720(n+1)`
-/

namespace A077463.P15044033400120571396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (2 * n) - A000720 (n + 1)

end

end A077463.P15044033400120571396

namespace A077463

/-- `A230980(2*n)-A000720(n+1)` -/
def P15044033400120571396.Spec : Prop :=
  ∀ n, P15044033400120571396.a n = A077463 (n + 1)

end A077463

/-! ## A077463.P2446717953065848441

`A230980(2*n)-A230980(n+1)`
-/

namespace A077463.P2446717953065848441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (2 * n) - A230980 (n + 1)

end

end A077463.P2446717953065848441

namespace A077463

/-- `A230980(2*n)-A230980(n+1)` -/
def P2446717953065848441.Spec : Prop :=
  ∀ n, P2446717953065848441.a n = A077463 (n + 1)

end A077463

/-! ## A077463.P2166772860870197496

`A294602(2*n+1)-A010051(n+1)`
-/

namespace A077463.P2166772860870197496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294602 (2 * n + 1) - A010051 (n + 1)

end

end A077463.P2166772860870197496

namespace A077463

/-- `A294602(2*n+1)-A010051(n+1)` -/
def P2166772860870197496.Spec : Prop :=
  ∀ n, P2166772860870197496.a n = A077463 (n + 1)

end A077463

/-! ## A077463.P9560202576716133317

`A302480(A130773(n+1))`
-/

namespace A077463.P9560202576716133317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302480 (A130773 (n + 1)).toNat

end

end A077463.P9560202576716133317

namespace A077463

/-- `A302480(A130773(n+1))` -/
def P9560202576716133317.Spec : Prop :=
  ∀ n, P9560202576716133317.a n = A077463 (n + 1)

end A077463

/-! ## A077463.P5705806980203752208

`A302480(A267872(n+1))`
-/

namespace A077463.P5705806980203752208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302480 (A267872 (n + 1)).toNat

end

end A077463.P5705806980203752208

namespace A077463

/-- `A302480(A267872(n+1))` -/
def P5705806980203752208.Spec : Prop :=
  ∀ n, P5705806980203752208.a n = A077463 (n + 1)

end A077463

/-! ## A077463.P18430614361639881807

`A302480(A140139(n+2))`
-/

namespace A077463.P18430614361639881807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302480 (A140139 (n + 2)).toNat

end

end A077463.P18430614361639881807

namespace A077463

/-- `A302480(A140139(n+2))` -/
def P18430614361639881807.Spec : Prop :=
  ∀ n, P18430614361639881807.a n = A077463 (n + 1)

end A077463

/-!
# A077465: Values of n such that A006046(n)/n^theta, where theta=log(3)/log(2), is a local minimum, computed according to Harborth's recurrence.

The programs for A077465, there is no canonical definition to state claims against.
-/

/-! ## A077465.P8691216837913348784

`filter[A084230(n+1), A373851(#)]`
-/

namespace A077465.P8691216837913348784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373851 (f1 j).toNat = 1) n)

end

end A077465.P8691216837913348784

/-! ## A077465.P13240457736506248130

`A080241(n)+A000010(A003945(n))`
-/

namespace A077465.P13240457736506248130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080241 n + A000010 (A003945 n).toNat

end

end A077465.P13240457736506248130

/-! ## A077465.P8276372260421835564

`A080241(n)+A000010(A042950(n))`
-/

namespace A077465.P8276372260421835564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080241 n + A000010 (A042950 n).toNat

end

end A077465.P8276372260421835564

/-! ## A077465.P6689250842381290728

`A084230(∑[A136480(A297570(n))])`
-/

namespace A077465.P6689250842381290728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A297570 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084230 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A077465.P6689250842381290728

/-! ## A077465.P1336250265041569456

`∩[A045749(n), A084230(n+1)]`
-/

namespace A077465.P1336250265041569456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045749 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077465.P1336250265041569456

/-!
# A077466: a(n) = A006046(A077465(n)).

The programs for A077466, there is no canonical definition to state claims against.
-/

/-! ## A077466.P3032081710446604855

`A006046(A077465(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077466.P3032081710446604855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (A077465 (n + 1)).toNat

end

end A077466.P3032081710446604855

/-! ## A077466.P2733194887965026552

`A006046(A084230(n+1)^or(1, floor(n/π)))`
-/

namespace A077466.P2733194887965026552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (SequenceMachineLib.roundAway ((A084230 (n + 1) : ℚ) ^ (Int.lor 1 ⌊(n : ℝ) / Real.pi⌋ : ℤ))).toNat

end

end A077466.P2733194887965026552

/-! ## A077466.P14015712804874124240

`A006046(A084230(n+1)^A359762(n))`
-/

namespace A077466.P14015712804874124240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (SequenceMachineLib.roundAway ((A084230 (n + 1) : ℚ) ^ (A359762 n : ℤ))).toNat

end

end A077466.P14015712804874124240

/-!
# A077467: Sum of binary digits of A077465(n).

The programs for A077467, there is no canonical definition to state claims against.
-/

/-! ## A077467.P2630696484897929276

`A273190(A000124(2*n+3)-A333939(2*n+1))`
-/

namespace A077467.P2630696484897929276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A000124 (2 * n + 3) - A333939 (2 * n + 1)).toNat

end

end A077467.P2630696484897929276

/-! ## A077467.P2696898054099469657

`A008619(A109234(n+1)%A121269(2*n+3))`
-/

namespace A077467.P2696898054099469657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.tmod (A109234 (n + 1)) (A121269 (2 * n + 3))).toNat

end

end A077467.P2696898054099469657

/-! ## A077467.P6536046929041097712

`A134914(A274008(n))`
-/

namespace A077467.P6536046929041097712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (A274008 n).toNat

end

end A077467.P6536046929041097712

/-! ## A077467.P9101551258355618081

`A105224(A000217(2*n+3)-A280317(3*n+2))`
-/

namespace A077467.P9101551258355618081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A000217 (2 * n + 3) - A280317 (3 * n + 2)).toNat

end

end A077467.P9101551258355618081

/-! ## A077467.P15454341398364166795

`A105564(A206911(n+2))`
-/

namespace A077467.P15454341398364166795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105564 (A206911 (n + 2)).toNat

end

end A077467.P15454341398364166795

/-!
# A077468: Greedy powers of (2/3): Sum_{n>=1} (2/3)^a(n) = 1.

The programs for A077468, there is no canonical definition to state claims against.
-/

/-! ## A077468.P10295794955203611734

`∑[A058841(n)+1]`
-/

namespace A077468.P10295794955203611734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058841 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077468.P10295794955203611734

/-! ## A077468.P8007983188997231798

`lt[acot(n), A058840(n)]`
-/

namespace A077468.P8007983188997231798
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058840 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A077468.P8007983188997231798

/-! ## A077468.P15752060425416406567

`filter[n+1, A058840(#)]`
-/

namespace A077468.P15752060425416406567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A058840 (f1 j) = 1) n)

end

end A077468.P15752060425416406567

/-! ## A077468.P3123697082731437339

`lt[0, A058840(n+1)]+1`
-/

namespace A077468.P3123697082731437339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058840 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A077468.P3123697082731437339

/-! ## A077468.P1588341919378663070

`eq[3, gcd(27, A058842(n+1))]`
-/

namespace A077468.P1588341919378663070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 27 (A058842 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077468.P1588341919378663070

/-! ## A077468.P8940848976951712315

`∑[A005496(A058841(n))]`
-/

namespace A077468.P8940848976951712315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A058841 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077468.P8940848976951712315

/-! ## A077468.P9570842391456992865

`eq[A054977(n), A058840(n)]`
-/

namespace A077468.P9570842391456992865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058840 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077468.P9570842391456992865

/-! ## A077468.P14806711061270200581

`eq[A057427(n), A058840(n)]`
-/

namespace A077468.P14806711061270200581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058840 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077468.P14806711061270200581

/-! ## A077468.P6966346844652959568

`eq[A058840(n), A158388(n)]`
-/

namespace A077468.P6966346844652959568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058840 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077468.P6966346844652959568

/-!
# A077476: Numbers n such that the digital binary sum of n equals core(n), the squarefree part of n.

The programs for A077476, there is no canonical definition to state claims against.
-/

/-! ## A077476.P11133962644036653521

`eq[A000120(n), A007913(A008574(n))]`
-/

namespace A077476.P11133962644036653521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077476.P11133962644036653521

/-! ## A077476.P11109207929939639312

`eq[A000120(n), A007913(A028310(n))]`
-/

namespace A077476.P11109207929939639312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077476.P11109207929939639312

/-! ## A077476.P9947891419050873569

`record[A217434(A328612(n)²)]`
-/

namespace A077476.P9947891419050873569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217434 (A328612 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077476.P9947891419050873569

/-! ## A077476.P16059050091496462579

`∩[A165404(n), A330710(n+1)]`
-/

namespace A077476.P16059050091496462579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165404 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077476.P16059050091496462579

/-!
# A077477: Least positive integers not excluded by the rule that if n is present then 2n+1 and 3n+1 are not allowed.

The programs for A077477, there is no canonical definition to state claims against.
-/

/-! ## A077477.P1867211530308292595

`A325496(n)+a(n-1)` with `a(0)=1`
-/

namespace A077477.P1867211530308292595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325496 n + a (n - 1)

end

end A077477.P1867211530308292595

/-! ## A077477.P12900999612606245393

`∑[A325496(n^(n²%(n+1)))]`
-/

namespace A077477.P12900999612606245393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325496 (n ^ (n ^ 2 % (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077477.P12900999612606245393

/-! ## A077477.P4499914551828854939

`∑[A325496(A028310(n))]`
-/

namespace A077477.P4499914551828854939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325496 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077477.P4499914551828854939

/-! ## A077477.P16689619909388702518

`∑[A325496(A000007(n)+n)]`
-/

namespace A077477.P16689619909388702518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325496 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077477.P16689619909388702518

/-! ## A077477.P8312858043368383859

`∑[A325496(xor(n, A000007(n)))]`
-/

namespace A077477.P8312858043368383859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325496 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077477.P8312858043368383859

/-! ## A077477.P6653534257710147352

`∑[A325496(A036987(2*n)+n)]`
-/

namespace A077477.P6653534257710147352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325496 (A036987 (2 * n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077477.P6653534257710147352

/-! ## A077477.P7780243309456662642

`∑[A325496(n+1)]+1-A325496(n+1)`
-/

namespace A077477.P7780243309456662642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A325496 (n + 1))

end

end A077477.P7780243309456662642

/-! ## A077477.P17353594421748205603

`∑[A325496(A123108(2*n))]`
-/

namespace A077477.P17353594421748205603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325496 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077477.P17353594421748205603

/-! ## A077477.P7745119031568254514

`∑[A325496(A073424(p?[2*n+1])+n)]`
-/

namespace A077477.P7745119031568254514
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325496 (A073424 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077477.P7745119031568254514

/-! ## A077477.P1753475617150950686

`∑[A325496(A073424(∑[n]+1)+n)]`
-/

namespace A077477.P1753475617150950686
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325496 (A073424 (∑ j ∈ Finset.range (n + 1), f2 j + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077477.P1753475617150950686

/-! ## A077477.P6760873120115478422

`∑[A325496(1-(A073424(∑[n])-n))]`
-/

namespace A077477.P6760873120115478422
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325496 (1 - (A073424 (∑ j ∈ Finset.range (n + 1), f2 j) - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077477.P6760873120115478422

/-!
# A077478: Rectangular array R read by antidiagonals: R(i,j) is the number of integers k that divide both i and j (i >= 1, j >= 1).

The programs for A077478, the canonical program `A077478.P13653691619814893632` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077478 has offset 1).

The definition of A077478 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077478.P13653691619814893632

`∏{e}[A003989(n+1), #+1]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A077478

/-- `∏{e}[A003989(n+1), #+1]` -/
def P13653691619814893632.Spec : Prop :=
  ∀ n, (P13653691619814893632.a n : ℤ) = A077478 (n + 1)

theorem P13653691619814893632.correct : P13653691619814893632.Spec := by
  intro n
  simp only [A077478, Nat.add_sub_cancel]

end A077478

/-! ## A077478.P12699187952747925378

`A000005(A003989(n+1))`
-/

namespace A077478.P12699187952747925378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003989 (n + 1)).toNat

end

end A077478.P12699187952747925378

namespace A077478

/-- `A000005(A003989(n+1))` -/
def P12699187952747925378.Spec : Prop :=
  ∀ n, P12699187952747925378.a n = A077478 (n + 1)

end A077478

/-! ## A077478.P15448443107169999319

`A046951(A003989(n+1)²)`
-/

namespace A077478.P15448443107169999319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A003989 (n + 1) ^ 2).toNat

end

end A077478.P15448443107169999319

namespace A077478

/-- `A046951(A003989(n+1)²)` -/
def P15448443107169999319.Spec : Prop :=
  ∀ n, P15448443107169999319.a n = A077478 (n + 1)

end A077478

/-! ## A077478.P7615836144233397170

`A322483(A003989(n+1)²)`
-/

namespace A077478.P7615836144233397170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (A003989 (n + 1) ^ 2).toNat

end

end A077478.P7615836144233397170

namespace A077478

/-- `A322483(A003989(n+1)²)` -/
def P7615836144233397170.Spec : Prop :=
  ∀ n, P7615836144233397170.a n = A077478 (n + 1)

end A077478

/-! ## A077478.P13749217900476068965

`A144515(C(A003989(n+1), 2))`
-/

namespace A077478.P13749217900476068965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144515 (Nat.choose (A003989 (n + 1)).toNat 2)

end

end A077478.P13749217900476068965

namespace A077478

/-- `A144515(C(A003989(n+1), 2))` -/
def P13749217900476068965.Spec : Prop :=
  ∀ n, P13749217900476068965.a n = A077478 (n + 1)

end A077478

/-! ## A077478.P7244728340218008743

`∑{d}[A003989(n+1), #/A000027(#)]`
-/

namespace A077478.P7244728340218008743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) / (A000027 d : ℚ)

end

end A077478.P7244728340218008743

namespace A077478

/-- `∑{d}[A003989(n+1), #/A000027(#)]` -/
def P7244728340218008743.Spec : Prop :=
  ∀ n, P7244728340218008743.a n = (A077478 (n + 1) : ℚ)

end A077478

/-! ## A077478.P14959978338762872898

`∑{d}[A003989(n+1), #/A028310(#)]`
-/

namespace A077478.P14959978338762872898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) / (A028310 d : ℚ)

end

end A077478.P14959978338762872898

namespace A077478

/-- `∑{d}[A003989(n+1), #/A028310(#)]` -/
def P14959978338762872898.Spec : Prop :=
  ∀ n, P14959978338762872898.a n = (A077478 (n + 1) : ℚ)

end A077478

/-! ## A077478.P6745818632110107997

`A000005(gcd(A128227(n), A193592(n)))`
-/

namespace A077478.P6745818632110107997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A128227 n) (A193592 n))

end

end A077478.P6745818632110107997

namespace A077478

/-- `A000005(gcd(A128227(n), A193592(n)))` -/
def P6745818632110107997.Spec : Prop :=
  ∀ n, P6745818632110107997.a n = A077478 (n + 1)

end A077478

/-! ## A077478.P16422844402908452192

`A000005(gcd(A004736(n+1), A049581(n)))`
-/

namespace A077478.P16422844402908452192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A004736 (n + 1)) (A049581 n))

end

end A077478.P16422844402908452192

namespace A077478

/-- `A000005(gcd(A004736(n+1), A049581(n)))` -/
def P16422844402908452192.Spec : Prop :=
  ∀ n, P16422844402908452192.a n = A077478 (n + 1)

end A077478

/-! ## A077478.P2556626958313888902

`A000005(gcd(A002260(n+1), A176270(n)))`
-/

namespace A077478.P2556626958313888902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A002260 (n + 1)) (A176270 n))

end

end A077478.P2556626958313888902

namespace A077478

/-- `A000005(gcd(A002260(n+1), A176270(n)))` -/
def P2556626958313888902.Spec : Prop :=
  ∀ n, P2556626958313888902.a n = A077478 (n + 1)

end A077478

/-! ## A077478.P14983198807673685297

`A000005(gcd(A025581(n)+1, A002262(n+1)))`
-/

namespace A077478.P14983198807673685297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A025581 n + 1) (A002262 (n + 1)))

end

end A077478.P14983198807673685297

namespace A077478

/-- `A000005(gcd(A025581(n)+1, A002262(n+1)))` -/
def P14983198807673685297.Spec : Prop :=
  ∀ n, P14983198807673685297.a n = A077478 (n + 1)

end A077478

/-! ## A077478.P16367969624394818207

`A000005(gcd(A208233(n+1), A208234(n+1)))`
-/

namespace A077478.P16367969624394818207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A208233 (n + 1)) (A208234 (n + 1)))

end

end A077478.P16367969624394818207

namespace A077478

/-- `A000005(gcd(A208233(n+1), A208234(n+1)))` -/
def P16367969624394818207.Spec : Prop :=
  ∀ n, P16367969624394818207.a n = A077478 (n + 1)

end A077478

/-! ## A077478.P9912681523450059191

`A051194(comp[∑[n]])`
-/

namespace A077478.P9912681523450059191
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051194 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A077478.P9912681523450059191

namespace A077478

/-- `A051194(comp[∑[n]])` -/
def P9912681523450059191.Spec : Prop :=
  ∀ n, P9912681523450059191.a n = A077478 (n + 1)

end A077478

/-! ## A077478.P17490997752739257550

`A000005(A050873(comp[∑[n]]))`
-/

namespace A077478.P17490997752739257550
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A050873 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A077478.P17490997752739257550

namespace A077478

/-- `A000005(A050873(comp[∑[n]]))` -/
def P17490997752739257550.Spec : Prop :=
  ∀ n, P17490997752739257550.a n = A077478 (n + 1)

end A077478

/-! ## A077478.P14224069223741601467

`A000005(A067815(A189151(n+1)))`
-/

namespace A077478.P14224069223741601467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A067815 (A189151 (n + 1)).toNat).toNat

end

end A077478.P14224069223741601467

namespace A077478

/-- `A000005(A067815(A189151(n+1)))` -/
def P14224069223741601467.Spec : Prop :=
  ∀ n, P14224069223741601467.a n = A077478 (n + 1)

end A077478

/-! ## A077478.P13789965247723284904

`A010553((A204116(n+1)+1)/2)`
-/

namespace A077478.P13789965247723284904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (SequenceMachineLib.roundAway ((A204116 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A077478.P13789965247723284904

namespace A077478

/-- `A010553((A204116(n+1)+1)/2)` -/
def P13789965247723284904.Spec : Prop :=
  ∀ n, P13789965247723284904.a n = A077478 (n + 1)

end A077478

/-! ## A077478.P15642160225354252869

`A000005(A002260(A286101(n+1)))`
-/

namespace A077478.P15642160225354252869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002260 (A286101 (n + 1)).toNat).toNat

end

end A077478.P15642160225354252869

namespace A077478

/-- `A000005(A002260(A286101(n+1)))` -/
def P15642160225354252869.Spec : Prop :=
  ∀ n, P15642160225354252869.a n = A077478 (n + 1)

end A077478

/-! ## A077478.P11049581192801915649

`A272171(A286102(n+1))`
-/

namespace A077478.P11049581192801915649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272171 (A286102 (n + 1)).toNat

end

end A077478.P11049581192801915649

namespace A077478

/-- `A272171(A286102(n+1))` -/
def P11049581192801915649.Spec : Prop :=
  ∀ n, P11049581192801915649.a n = A077478 (n + 1)

end A077478

/-! ## A077478.P3717421467857532805

`A000005(A003983(A285724(n+1)))`
-/

namespace A077478.P3717421467857532805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003983 (A285724 (n + 1)).toNat).toNat

end

end A077478.P3717421467857532805

namespace A077478

/-- `A000005(A003983(A285724(n+1)))` -/
def P3717421467857532805.Spec : Prop :=
  ∀ n, P3717421467857532805.a n = A077478 (n + 1)

end A077478

/-! ## A077478.P5114811023305896569

`A154402(A131816(n))`
-/

namespace A077478.P5114811023305896569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154402 (A131816 n).toNat

end

end A077478.P5114811023305896569

namespace A077478

/-- `A154402(A131816(n))` -/
def P5114811023305896569.Spec : Prop :=
  ∀ n, P5114811023305896569.a n = A077478 (n + 1)

end A077478

/-!
# A077479: Number of distinct prime factors of numbers m with BigOmega(m) == 0 modulo omega(m).

The programs for A077479, the canonical program `A077479.P14556647003131889653` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077479 has offset 1).

The definition of A077479 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A067340, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A077479.P14556647003131889653

`A001221(A067340(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A077479

/-- `A001221(A067340(n+1))` -/
def P14556647003131889653.Spec : Prop :=
  ∀ n, P14556647003131889653.a n = A077479 (n + 1)

theorem P14556647003131889653.correct : P14556647003131889653.Spec := by
  intro n
  simp only [A077479, Nat.add_sub_cancel]

end A077479

/-! ## A077479.P7192515089074271590

`∑{d}[A067340(n+1), A010051(#)]`
-/

namespace A077479.P7192515089074271590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010051 d

end

end A077479.P7192515089074271590

namespace A077479

/-- `∑{d}[A067340(n+1), A010051(#)]` -/
def P7192515089074271590.Spec : Prop :=
  ∀ n, P7192515089074271590.a n = A077479 (n + 1)

end A077479

/-! ## A077479.P4068672545199224310

`∑{p}[A067340(n+1), A001222(#)]`
-/

namespace A077479.P4068672545199224310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A077479.P4068672545199224310

namespace A077479

/-- `∑{p}[A067340(n+1), A001222(#)]` -/
def P4068672545199224310.Spec : Prop :=
  ∀ n, P4068672545199224310.a n = A077479 (n + 1)

end A077479

/-! ## A077479.P7960290367610538476

`A001222(∏{p}[A067340(n+1), #])`
-/

namespace A077479.P7960290367610538476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A077479.P7960290367610538476

namespace A077479

/-- `A001222(∏{p}[A067340(n+1), #])` -/
def P7960290367610538476.Spec : Prop :=
  ∀ n, P7960290367610538476.a n = A077479 (n + 1)

end A077479

/-! ## A077479.P6197028913863075599

`A077480(n+1)/A077481(n+1)`
-/

namespace A077479.P6197028913863075599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077480 (n + 1) : ℚ) / (A077481 (n + 1) : ℚ)

end

end A077479.P6197028913863075599

namespace A077479

/-- `A077480(n+1)/A077481(n+1)` -/
def P6197028913863075599.Spec : Prop :=
  ∀ n, P6197028913863075599.a n = (A077479 (n + 1) : ℚ)

end A077479

/-! ## A077479.P3062356526998046354

`A001222(A067340(n+1))/A077481(n+1)`
-/

namespace A077479.P3062356526998046354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A067340 (n + 1)).toNat : ℚ) / (A077481 (n + 1) : ℚ)

end

end A077479.P3062356526998046354

namespace A077479

/-- `A001222(A067340(n+1))/A077481(n+1)` -/
def P3062356526998046354.Spec : Prop :=
  ∀ n, P3062356526998046354.a n = (A077479 (n + 1) : ℚ)

end A077479

/-! ## A077479.P13981918936222071008

`A077480(n+1)/A070012(A067340(n+1))`
-/

namespace A077479.P13981918936222071008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077480 (n + 1) : ℚ) / (A070012 (A067340 (n + 1)).toNat : ℚ)

end

end A077479.P13981918936222071008

namespace A077479

/-- `A077480(n+1)/A070012(A067340(n+1))` -/
def P13981918936222071008.Spec : Prop :=
  ∀ n, P13981918936222071008.a n = (A077479 (n + 1) : ℚ)

end A077479

/-! ## A077479.P4561664290267806580

`A001221(eq[A070012(n+2), A070014(n+2)]+2)`
-/

namespace A077479.P4561664290267806580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070012 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070014 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A077479.P4561664290267806580

namespace A077479

/-- `A001221(eq[A070012(n+2), A070014(n+2)]+2)` -/
def P4561664290267806580.Spec : Prop :=
  ∀ n, P4561664290267806580.a n = A077479 (n + 1)

end A077479

/-! ## A077479.P2433776419501743900

`A001222(A007947(A067340(n+1)²))`
-/

namespace A077479.P2433776419501743900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (A067340 (n + 1) ^ 2).toNat).toNat

end

end A077479.P2433776419501743900

namespace A077479

/-- `A001222(A007947(A067340(n+1)²))` -/
def P2433776419501743900.Spec : Prop :=
  ∀ n, P2433776419501743900.a n = A077479 (n + 1)

end A077479

/-! ## A077479.P13119209130412766145

`A001222(A034444(A067340(n+1)²))`
-/

namespace A077479.P13119209130412766145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A034444 (A067340 (n + 1) ^ 2).toNat).toNat

end

end A077479.P13119209130412766145

namespace A077479

/-- `A001222(A034444(A067340(n+1)²))` -/
def P13119209130412766145.Spec : Prop :=
  ∀ n, P13119209130412766145.a n = A077479 (n + 1)

end A077479

/-!
# A077480: Total number of prime factors of numbers m with bigomega(m) == 0 modulo omega(m) (counted with repetition).

The programs for A077480, the canonical program `A077480.P421012863486371594` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077480 has offset 1).

The definition of A077480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6905 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077480.P7620496766627168063

`∑{e}[A067340(n+1), #]`
-/

namespace A077480.P7620496766627168063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067340 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A077480.P7620496766627168063

namespace A077480

/-- `∑{e}[A067340(n+1), #]` -/
def P7620496766627168063.Spec : Prop :=
  ∀ n, (P7620496766627168063.a n : ℤ) = A077480 (n + 1)

end A077480

/-! ## A077480.P17927865735467792816

`A001222(A067340(n+1))`
-/

namespace A077480.P17927865735467792816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A067340 (n + 1)).toNat

end

end A077480.P17927865735467792816

namespace A077480

/-- `A001222(A067340(n+1))` -/
def P17927865735467792816.Spec : Prop :=
  ∀ n, P17927865735467792816.a n = A077480 (n + 1)

end A077480

/-! ## A077480.P138951002632853953

`A077479(n+1)*A077481(n+1)`
-/

namespace A077480.P138951002632853953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077479 (n + 1) * A077481 (n + 1)

end

end A077480.P138951002632853953

namespace A077480

/-- `A077479(n+1)*A077481(n+1)` -/
def P138951002632853953.Spec : Prop :=
  ∀ n, P138951002632853953.a n = A077480 (n + 1)

end A077480

/-! ## A077480.P7962720229573393570

`A001221(A067340(n+1))*A077481(n+1)`
-/

namespace A077480.P7962720229573393570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A067340 (n + 1)).toNat * A077481 (n + 1)

end

end A077480.P7962720229573393570

namespace A077480

/-- `A001221(A067340(n+1))*A077481(n+1)` -/
def P7962720229573393570.Spec : Prop :=
  ∀ n, P7962720229573393570.a n = A077480 (n + 1)

end A077480

/-! ## A077480.P6363510484655603883

`A070012(A067340(n+1))*A077479(n+1)`
-/

namespace A077480.P6363510484655603883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070012 (A067340 (n + 1)).toNat * A077479 (n + 1)

end

end A077480.P6363510484655603883

namespace A077480

/-- `A070012(A067340(n+1))*A077479(n+1)` -/
def P6363510484655603883.Spec : Prop :=
  ∀ n, P6363510484655603883.a n = A077480 (n + 1)

end A077480

/-! ## A077480.P421012863486371594

`A001222(eq[A070012(n+2), A070014(n+2)]+2)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A077480

/-- `A001222(eq[A070012(n+2), A070014(n+2)]+2)` -/
def P421012863486371594.Spec : Prop :=
  ∀ n, P421012863486371594.a n = A077480 (n + 1)

theorem P421012863486371594.correct : P421012863486371594.Spec := by
  intro n
  simp only [A077480, Nat.add_sub_cancel]

end A077480

/-! ## A077480.P9988271964080672574

`∑{d}[A067340(n+1), A001221(A014963(#))]`
-/

namespace A077480.P9988271964080672574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 (A014963 d).toNat

end

end A077480.P9988271964080672574

namespace A077480

/-- `∑{d}[A067340(n+1), A001221(A014963(#))]` -/
def P9988271964080672574.Spec : Prop :=
  ∀ n, P9988271964080672574.a n = A077480 (n + 1)

end A077480

/-! ## A077480.P471388710169707034

`A046660(A067340(n+1)²)-A046660(A067340(n+1))`
-/

namespace A077480.P471388710169707034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A067340 (n + 1) ^ 2).toNat - A046660 (A067340 (n + 1)).toNat

end

end A077480.P471388710169707034

namespace A077480

/-- `A046660(A067340(n+1)²)-A046660(A067340(n+1))` -/
def P471388710169707034.Spec : Prop :=
  ∀ n, P471388710169707034.a n = A077480 (n + 1)

end A077480

/-!
# A077481: Quotient A077480(n) / A077479(n).

The programs for A077481, the canonical program `A077481.P7431961850676343439` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077481 has offset 1).

The definition of A077481 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077479, A077480, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A077481.P7431961850676343439

`A077480(n+1)/A077479(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A077481

/-- `A077480(n+1)/A077479(n+1)` -/
def P7431961850676343439.Spec : Prop :=
  ∀ n, P7431961850676343439.a n = (A077481 (n + 1) : ℚ)

end A077481

/-! ## A077481.P14240213832561433264

`A001222(A067340(n+1))/A077479(n+1)`
-/

namespace A077481.P14240213832561433264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A067340 (n + 1)).toNat : ℚ) / (A077479 (n + 1) : ℚ)

end

end A077481.P14240213832561433264

namespace A077481

/-- `A001222(A067340(n+1))/A077479(n+1)` -/
def P14240213832561433264.Spec : Prop :=
  ∀ n, P14240213832561433264.a n = (A077481 (n + 1) : ℚ)

end A077481

/-! ## A077481.P4411338521235893215

`A077480(n+1)/A001221(A067340(n+1))`
-/

namespace A077481.P4411338521235893215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077480 (n + 1) : ℚ) / (A001221 (A067340 (n + 1)).toNat : ℚ)

end

end A077481.P4411338521235893215

namespace A077481

/-- `A077480(n+1)/A001221(A067340(n+1))` -/
def P4411338521235893215.Spec : Prop :=
  ∀ n, P4411338521235893215.a n = (A077481 (n + 1) : ℚ)

end A077481

/-! ## A077481.P2391684487572203395

`A070012(A067340(n+1))`
-/

namespace A077481.P2391684487572203395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070012 (A067340 (n + 1)).toNat

end

end A077481.P2391684487572203395

namespace A077481

/-- `A070012(A067340(n+1))` -/
def P2391684487572203395.Spec : Prop :=
  ∀ n, P2391684487572203395.a n = A077481 (n + 1)

end A077481

/-! ## A077481.P14620390868352825919

`A070013(A067340(2*n+1-n))`
-/

namespace A077481.P14620390868352825919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070013 (A067340 (2 * n + 1 - n)).toNat

end

end A077481.P14620390868352825919

namespace A077481

/-- `A070013(A067340(2*n+1-n))` -/
def P14620390868352825919.Spec : Prop :=
  ∀ n, P14620390868352825919.a n = A077481 (n + 1)

end A077481

/-! ## A077481.P14280036288903160112

`A088529(A067340(n+1)%(3*(n+1)))`
-/

namespace A077481.P14280036288903160112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088529 (Int.tmod (A067340 (n + 1)) (3 * (n + 1) : ℤ)).toNat

end

end A077481.P14280036288903160112

namespace A077481

/-- `A088529(A067340(n+1)%(3*(n+1)))` -/
def P14280036288903160112.Spec : Prop :=
  ∀ n, P14280036288903160112.a n = A077481 (n + 1)

end A077481

/-! ## A077481.P2054445746164205839

`A088529(A067340(n+1)-val(2*n+1, 2))`
-/

namespace A077481.P2054445746164205839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088529 (A067340 (n + 1) - (SequenceMachineLib.valuation (2 * n + 1) 2 : ℤ)).toNat

end

end A077481.P2054445746164205839

namespace A077481

/-- `A088529(A067340(n+1)-val(2*n+1, 2))` -/
def P2054445746164205839.Spec : Prop :=
  ∀ n, P2054445746164205839.a n = A077481 (n + 1)

end A077481

/-! ## A077481.P3659545402771011025

`A088529(A067340(n+1))%A014439(n+1)`
-/

namespace A077481.P3659545402771011025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088529 (A067340 (n + 1)).toNat) (A014439 (n + 1))

end

end A077481.P3659545402771011025

namespace A077481

/-- `A088529(A067340(n+1))%A014439(n+1)` -/
def P3659545402771011025.Spec : Prop :=
  ∀ n, P3659545402771011025.a n = A077481 (n + 1)

end A077481

/-! ## A077481.P4071717475384037594

`A070012(eq[A070012(n+2), A070014(n+2)]+2)`
-/

namespace A077481.P4071717475384037594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070012 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070014 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070012 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A077481.P4071717475384037594

namespace A077481

/-- `A070012(eq[A070012(n+2), A070014(n+2)]+2)` -/
def P4071717475384037594.Spec : Prop :=
  ∀ n, P4071717475384037594.a n = A077481 (n + 1)

end A077481

/-! ## A077481.P17365656046068687877

`A070012(eq[A070012(n+2), A088529(n+2)]+2)`
-/

namespace A077481.P17365656046068687877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070012 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088529 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070012 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A077481.P17365656046068687877

namespace A077481

/-- `A070012(eq[A070012(n+2), A088529(n+2)]+2)` -/
def P17365656046068687877.Spec : Prop :=
  ∀ n, P17365656046068687877.a n = A077481 (n + 1)

end A077481

/-! ## A077481.P3556093432148563524

`A070013(eq[A070013(n+2), A088529(n+2)]+2)`
-/

namespace A077481.P3556093432148563524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070013 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088529 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070013 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A077481.P3556093432148563524

namespace A077481

/-- `A070013(eq[A070013(n+2), A088529(n+2)]+2)` -/
def P3556093432148563524.Spec : Prop :=
  ∀ n, P3556093432148563524.a n = A077481 (n + 1)

end A077481

/-! ## A077481.P14603280905588764901

`A070014(eq[A070014(n+2), A088529(n+2)]+2)`
-/

namespace A077481.P14603280905588764901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070014 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088529 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070014 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A077481.P14603280905588764901

namespace A077481

/-- `A070014(eq[A070014(n+2), A088529(n+2)]+2)` -/
def P14603280905588764901.Spec : Prop :=
  ∀ n, P14603280905588764901.a n = A077481 (n + 1)

end A077481

/-!
# A077483: Numerator of the probability P(n) of the occurrence of a 2D self-trapping walk of length n.

The programs for A077483, there is no canonical definition to state claims against.
-/

/-! ## A077483.P6422147007142632890

`A205649(3*(n+1))*A316631(A078526(n+7))`
-/

namespace A077483.P6422147007142632890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205649 (3 * (n + 1)) * A316631 (A078526 (n + 7)).toNat

end

end A077483.P6422147007142632890

/-!
# A077484: Probability P(n) of the occurrence of a 2D self-trapping walk of length n: Exponent of 2 in the denominator.

The programs for A077484, there is no canonical definition to state claims against.
-/

/-! ## A077484.P16534310802538807613

`and(A324690(n), A335599(n))`
-/

namespace A077484.P16534310802538807613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A324690 n) (A335599 n)

end

end A077484.P16534310802538807613

/-! ## A077484.P16903134461022623700

`A001951(A004524(n))%A209137(n+1)`
-/

namespace A077484.P16903134461022623700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001951 (A004524 n).toNat) (A209137 (n + 1))

end

end A077484.P16903134461022623700

/-! ## A077484.P11084631329957849215

`and(A134119(A232011(n+1)), A324690(n))`
-/

namespace A077484.P11084631329957849215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134119 (A232011 (n + 1)).toNat) (A324690 n)

end

end A077484.P11084631329957849215

/-!
# A077485: a(1) = 1, then smallest n-digit square which leaves a square at every step if most significant digit and least significant digit are deleted until a one-or two-digit digit square is obtained. a(2n) = 0 if no such square exists. a(2n+1) = 10^2n only if no nontrivial candidate exists.

The programs for A077485, there is no canonical definition to state claims against.
-/

/-! ## A077485.P4196944272307762908

`A058933(8*5^n)²`
-/

namespace A077485.P4196944272307762908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (8 * 5 ^ n) ^ 2

end

end A077485.P4196944272307762908

/-!
# A077487: Squares which leave a square at every step if most significant digit and least significant digit are deleted until a one-digit or two-digit square is obtained.

The programs for A077487, there is no canonical definition to state claims against.
-/

/-! ## A077487.P58983298826818583

`A262690(A077355(n+2))`
-/

namespace A077487.P58983298826818583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262690 (A077355 (n + 2)).toNat

end

end A077487.P58983298826818583

/-! ## A077487.P12136314119388045137

`A077355(A281873(n+2))`
-/

namespace A077487.P12136314119388045137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077355 (A281873 (n + 2)).toNat

end

end A077487.P12136314119388045137

/-! ## A077487.P18422993864131915438

`filter[A077355(n+2), A005171(#)]`
-/

namespace A077487.P18422993864131915438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077355 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A077487.P18422993864131915438

/-! ## A077487.P5095922511372995307

`filter[A077355(n+2), A035263(#)]`
-/

namespace A077487.P5095922511372995307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077355 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A077487.P5095922511372995307

/-! ## A077487.P10208750032496557353

`filter[A077355(n+2), A053866(#)]`
-/

namespace A077487.P10208750032496557353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077355 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053866 (f1 j).toNat = 1) n)

end

end A077487.P10208750032496557353

/-!
# A077488: All possible products in increasing order of two distinct members of the unary sequence 1, 11, 111, 1111, 11111, ...given by A000042.

The programs for A077488, there is no canonical definition to state claims against.
-/

/-! ## A077488.P4580883275194967203

`∩[A273977(n+1), A334131(n+1)]`
-/

namespace A077488.P4580883275194967203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077488.P4580883275194967203

/-! ## A077488.P11881041191638507243

`∩[A273978(n+1), A308365(n+1)]`
-/

namespace A077488.P11881041191638507243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077488.P11881041191638507243

/-! ## A077488.P10525772253994105775

`∩[A273978(n+1), A334131(n+1)]`
-/

namespace A077488.P10525772253994105775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077488.P10525772253994105775

/-! ## A077488.P1809349493863367916

`or(A154103(A140992(n)), A334131(n+3))`
-/

namespace A077488.P1809349493863367916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A154103 (A140992 n).toNat) (A334131 (n + 3))

end

end A077488.P1809349493863367916

/-! ## A077488.P8924988900653164980

`A334131(n+3)+A010815(A257890(n+2))`
-/

namespace A077488.P8924988900653164980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334131 (n + 3) + A010815 (A257890 (n + 2)).toNat

end

end A077488.P8924988900653164980

/-!
# A077489: a(n) = smallest multiple of 4 with sum of digits = n.

The programs for A077489, there is no canonical definition to state claims against.
-/

/-! ## A077489.P15067185329446992767

`4*A077490(n+1)`
-/

namespace A077489.P15067185329446992767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A077490 (n + 1)

end

end A077489.P15067185329446992767

/-! ## A077489.P10164976783210765822

`A008574(A077490(n+1))`
-/

namespace A077489.P10164976783210765822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A077490 (n + 1)).toNat

end

end A077489.P10164976783210765822

/-! ## A077489.P3467025575189841666

`A131098(A077490(n+1)+1)+1`
-/

namespace A077489.P3467025575189841666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (A077490 (n + 1) + 1).toNat + 1

end

end A077489.P3467025575189841666

/-! ## A077489.P6387169503880653872

`A022144(A077490(ϕ²-(ϕ-n)))/2`
-/

namespace A077489.P6387169503880653872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022144 (A077490 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat).toNat : ℚ) / 2

end

end A077489.P6387169503880653872

/-! ## A077489.P14736867481650521754

`A008586(A077490(n+1)%A125646(n+1))`
-/

namespace A077489.P14736867481650521754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (Int.tmod (A077490 (n + 1)) (A125646 (n + 1))).toNat

end

end A077489.P14736867481650521754

/-!
# A077490: a(n) = smallest k such that 4k has a digit sum = n.

The programs for A077490, there is no canonical definition to state claims against.
-/

/-! ## A077490.P4785215706857000260

`A077489(n+1)/4`
-/

namespace A077490.P4785215706857000260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077489 (n + 1) : ℚ) / 4

end

end A077490.P4785215706857000260

/-! ## A077490.P11498706093526820300

`(2^A008683(A020483(n)))²*A077489(n+1)`
-/

namespace A077490.P11498706093526820300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ)) ^ 2 * (A077489 (n + 1) : ℚ)

end

end A077490.P11498706093526820300

/-! ## A077490.P3580970016279265016

`A110962(A077489(n+1))`
-/

namespace A077490.P3580970016279265016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (A077489 (n + 1)).toNat

end

end A077490.P3580970016279265016

/-! ## A077490.P15049111694923523996

`A117358(2*A077489(n+1))`
-/

namespace A077490.P15049111694923523996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (2 * A077489 (n + 1)).toNat

end

end A077490.P15049111694923523996

/-! ## A077490.P12085583151631155969

`A324245(A077489(n+1)+2)`
-/

namespace A077490.P12085583151631155969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324245 (A077489 (n + 1) + 2).toNat

end

end A077490.P12085583151631155969

/-!
# A077491: a(n) = smallest k such that 2k has digit sum = n.

The programs for A077491, there is no canonical definition to state claims against.
-/

/-! ## A077491.P12269092111036912872

`A069532(n+1)/2`
-/

namespace A077491.P12269092111036912872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069532 (n + 1) : ℚ) / 2

end

end A077491.P12269092111036912872

/-! ## A077491.P6020457539618673011

`floor(A205960(n+2)/2)`
-/

namespace A077491.P6020457539618673011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A205960 (n + 2) : ℚ) / 2⌋

end

end A077491.P6020457539618673011

/-! ## A077491.P9069535737333804397

`∑[Δ[A205960(n+1)]/2]`
-/

namespace A077491.P9069535737333804397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205960 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077491.P9069535737333804397

/-! ## A077491.P975258227418019977

`1/2*A069532(A008619(2*n))`
-/

namespace A077491.P975258227418019977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A069532 (A008619 (2 * n)).toNat : ℚ)

end

end A077491.P975258227418019977

/-! ## A077491.P5244993647070452746

`xor(1, A205960(A020725(n+1)))/2`
-/

namespace A077491.P5244993647070452746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A205960 (A020725 (n + 1)).toNat) : ℚ) / 2

end

end A077491.P5244993647070452746

/-!
# A077492: a(n) = smallest k such that 5k has a digit sum = n.

The programs for A077492, there is no canonical definition to state claims against.
-/

/-! ## A077492.P14899382987144717130

`A069534(n+1)/5`
-/

namespace A077492.P14899382987144717130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069534 (n + 1) : ℚ) / 5

end

end A077492.P14899382987144717130

/-! ## A077492.P12562524767845865815

`A002266(A069534(n+1))`
-/

namespace A077492.P12562524767845865815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A069534 (n + 1)).toNat

end

end A077492.P12562524767845865815

/-! ## A077492.P4316051027255319770

`A058207(A069534(n+1)-4)`
-/

namespace A077492.P4316051027255319770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058207 (A069534 (n + 1) - 4).toNat

end

end A077492.P4316051027255319770

/-! ## A077492.P8242225804536017233

`A058207(lcm(5, A069534(n+1)))`
-/

namespace A077492.P8242225804536017233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058207 (Int.lcm 5 (A069534 (n + 1)))

end

end A077492.P8242225804536017233

/-! ## A077492.P13509256459178024168

`A058207(or(char[4], A069534(n+1)))`
-/

namespace A077492.P13509256459178024168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058207 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A069534 (n + 1))).toNat

end

end A077492.P13509256459178024168

/-!
# A077493: a(n) = smallest multiple of 7 with a digit sum = n.

The programs for A077493, there is no canonical definition to state claims against.
-/

/-! ## A077493.P17040439945452517278

`7*A077494(n+2)`
-/

namespace A077493.P17040439945452517278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A077494 (n + 2)

end

end A077493.P17040439945452517278

/-! ## A077493.P1559765877263172761

`A008589(A077494(n+2))`
-/

namespace A077493.P1559765877263172761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (A077494 (n + 2)).toNat

end

end A077493.P1559765877263172761

/-! ## A077493.P13581687858238662010

`A077494(A020725(n+1))+A008458(A077494(n+2))`
-/

namespace A077493.P13581687858238662010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077494 (A020725 (n + 1)).toNat + A008458 (A077494 (n + 2)).toNat

end

end A077493.P13581687858238662010

/-!
# A077494: a(n) = smallest k such that the digit sum of 7k is n.

The programs for A077494, there is no canonical definition to state claims against.
-/

/-! ## A077494.P9967952677471721973

`A077493(n+2)/7`
-/

namespace A077494.P9967952677471721973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077493 (n + 2) : ℚ) / 7

end

end A077494.P9967952677471721973

/-! ## A077494.P14789014387842812494

`A106608(A077493(n+2))`
-/

namespace A077494.P14789014387842812494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (A077493 (n + 2)).toNat

end

end A077494.P14789014387842812494

/-!
# A077495: a(n) = smallest k such that the digit sum of 8k is n.

The programs for A077495, there is no canonical definition to state claims against.
-/

/-! ## A077495.P6365860495233551423

`A069536(n)/8`
-/

namespace A077495.P6365860495233551423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069536 n : ℚ) / 8

end

end A077495.P6365860495233551423

/-! ## A077495.P13919337389153477817

`A006085(A069536(n))`
-/

namespace A077495.P13919337389153477817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006085 (A069536 n).toNat

end

end A077495.P13919337389153477817

/-! ## A077495.P10228453967592843316

`A110658(A069536(n)+1)`
-/

namespace A077495.P10228453967592843316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110658 (A069536 n + 1).toNat

end

end A077495.P10228453967592843316

/-! ## A077495.P673847116655472654

`A257848(A069536(n)+1)`
-/

namespace A077495.P673847116655472654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257848 (A069536 n + 1).toNat

end

end A077495.P673847116655472654

/-! ## A077495.P3407262488814732988

`A025480(A069536(n)+3)`
-/

namespace A077495.P3407262488814732988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A069536 n + 3).toNat

end

end A077495.P3407262488814732988

/-!
# A077497: Primes of the form 2^r*5^s + 1.

The programs for A077497, there is no canonical definition to state claims against.
-/

/-! ## A077497.P14437671483331956349

`∩[A158911(n+1)+2, A219669(n+1)]`
-/

namespace A077497.P14437671483331956349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158911 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077497.P14437671483331956349

/-! ## A077497.P15694467356162180062

`∩[A158911(n+1)+2, A219697(n+1)]`
-/

namespace A077497.P15694467356162180062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158911 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077497.P15694467356162180062

/-! ## A077497.P11162979545244958111

`p?[A003592(n+1)+1]`
-/

namespace A077497.P11162979545244958111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077497.P11162979545244958111

/-! ## A077497.P3585146776902343429

`p?[A158911(n+1)+2]`
-/

namespace A077497.P3585146776902343429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158911 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077497.P3585146776902343429

/-! ## A077497.P5947257749715940551

`∩[A002200(n+1), A045309(n+1)]`
-/

namespace A077497.P5947257749715940551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077497.P5947257749715940551

/-!
# A077498: Primes of the form 2^r*7^s + 1.

The programs for A077498, there is no canonical definition to state claims against.
-/

/-! ## A077498.P6318470450923211955

`∩[A174144(n+1), A349678(n+1)]`
-/

namespace A077498.P6318470450923211955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077498.P6318470450923211955

/-! ## A077498.P6995110806361449406

`p?[A003591(n+1)+1]`
-/

namespace A077498.P6995110806361449406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003591 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077498.P6995110806361449406

/-! ## A077498.P13154176493212775532

`p?[A165742(n)+a(n-1)]` with `a(0)=2`
-/

namespace A077498.P13154176493212775532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A165742 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077498.P13154176493212775532

/-! ## A077498.P16553399607987785418

`p?[∑[A165742(abs(1-n)+1)]]`
-/

namespace A077498.P16553399607987785418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165742 (|1 - (n : ℤ)| + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077498.P16553399607987785418

/-!
# A077499: Primes of the form 2^r*11^s + 1.

The programs for A077499, there is no canonical definition to state claims against.
-/

/-! ## A077499.P15488537956746045339

`p?[A003596(n+1)+1]`
-/

namespace A077499.P15488537956746045339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003596 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077499.P15488537956746045339

/-! ## A077499.P2148824837781272443

`record[A020639(A003596(n+1)+1)]`
-/

namespace A077499.P2148824837781272443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003596 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077499.P2148824837781272443

/-! ## A077499.P13352061839193090686

`record[A166333(A003596(n+1))]`
-/

namespace A077499.P13352061839193090686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (A003596 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077499.P13352061839193090686

/-! ## A077499.P17468135743300253928

`filter[A293048(n+1), A131735(#)]`
-/

namespace A077499.P17468135743300253928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131735 (f1 j).toNat = 1) n)

end

end A077499.P17468135743300253928

