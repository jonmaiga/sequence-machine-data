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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
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
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A262301: Number of normal linear lambda terms of size n with no free variables.

The programs for A262301, there is no canonical definition to state claims against.
-/

/-! ## A262301.P11888589298206831299

`A318110(∑[n+1])`
-/

namespace A262301.P11888589298206831299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318110 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A262301.P11888589298206831299

/-! ## A262301.P948676277951838265

`record[A318110(n+1)]`
-/

namespace A262301.P948676277951838265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262301.P948676277951838265

/-! ## A262301.P12135192474614045730

`record[A318110(n)^A062157(n)]`
-/

namespace A262301.P12135192474614045730
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318110 n : ℚ) ^ (A062157 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262301.P12135192474614045730

/-! ## A262301.P13154551313315932064

`record[or(A000007(n), A318110(n))]`
-/

namespace A262301.P13154551313315932064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A318110 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262301.P13154551313315932064

/-! ## A262301.P6357964280099746352

`record[or(A023531(n), A318110(n))]`
-/

namespace A262301.P6357964280099746352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023531 n) (A318110 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262301.P6357964280099746352

/-!
# A262303: Length of sequence of lower halves of n: repeatedly apply x->floor(x/2) starting at n; a(n) = number of steps until reach one of 2,3,4.

The programs for A262303, there is no canonical definition to state claims against.
-/

/-! ## A262303.P11834093959434096341

`ceil(log2((n+3)/5))`
-/

namespace A262303.P11834093959434096341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((n + 3 : ℚ) / 5 : ℝ)⌉

end

end A262303.P11834093959434096341

/-! ## A262303.P11411898486110281507

`dr(floor(log2(5/(n+3))))`
-/

namespace A262303.P11411898486110281507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ⌊Real.logb 2 (5 / (n + 3 : ℚ) : ℝ)⌋

end

end A262303.P11411898486110281507

/-! ## A262303.P7083744191183203013

`floor(log2(n+3)-atan(4))`
-/

namespace A262303.P7083744191183203013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (n + 3 : ℝ) - Real.arctan (4 : ℝ)⌋

end

end A262303.P7083744191183203013

/-! ## A262303.P16293783587648608543

`∑[char[lcm(5, 2^n)-2]]`
-/

namespace A262303.P16293783587648608543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 5 (2 ^ n) : ℤ) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262303.P16293783587648608543

/-! ## A262303.P11889072320630065329

`∑{digits}[floor(log2(5/(n+3))), #]`
-/

namespace A262303.P11889072320630065329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (5 / (n + 3 : ℚ) : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A262303.P11889072320630065329

/-! ## A262303.P11208738557651550448

`floor(log2(ceil(2/(5*acot(n)))))`
-/

namespace A262303.P11208738557651550448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 ⌈2 / (5 * SequenceMachineLib.acot (n : ℝ))⌉.toNat

end

end A262303.P11208738557651550448

/-! ## A262303.P1271990743412730525

`floor(log2(∑[round(cos(n%5)²)]))`
-/

namespace A262303.P1271990743412730525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos ((n % 5 : ℕ) : ℝ) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A262303.P1271990743412730525

/-! ## A262303.P2589034572419780967

`∑[char[ogf((3-x)/(1-3x+2x^2))]]`
-/

namespace A262303.P2589034572419780967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1] [1, -3, 2] n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262303.P2589034572419780967

/-! ## A262303.P3821861452416517862

`floor(log2(ceil(or(1, 2*n)/5)))`
-/

namespace A262303.P3821861452416517862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 ⌈(Nat.lor 1 (2 * n) : ℚ) / 5⌉.toNat

end

end A262303.P3821861452416517862

/-! ## A262303.P10594366486852140688

`floor(log2(ceil(xor(1, 2*n)/5)))`
-/

namespace A262303.P10594366486852140688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 ⌈(Nat.xor 1 (2 * n) : ℚ) / 5⌉.toNat

end

end A262303.P10594366486852140688

/-!
# A262304: Tail of sequence of lower halves of n: repeatedly apply x->floor(x/2) starting at n until reach one of 2,3,4; a(n) = whichever of 2,3,4 is reached.

The programs for A262304, there is no canonical definition to state claims against.
-/

/-! ## A262304.P8883380275394243066

`a(floor(n/2)-1)` with `a(0)=2, a(1)=3, a(2)=4`
-/

namespace A262304.P8883380275394243066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4] fun n a =>
  a (⌊(n : ℚ) / 2⌋ - 1).toNat

end

end A262304.P8883380275394243066

/-! ## A262304.P11353503264371306155

`abs(a(∑[(n-1)%2]))` with `a(0)=2, a(1)=3, a(2)=4`
-/

namespace A262304.P11353503264371306155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) 2

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A262304.P11353503264371306155

/-! ## A262304.P6218468761750482615

`floor(a(gcd(n, ∑[n])-1))` with `a(0)=2, a(1)=3, a(2)=4, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A262304.P6218468761750482615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4, 2] fun n a =>
  a (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) - 1)

end

end A262304.P6218468761750482615

/-! ## A262304.P3491980247386918348

`ceil(a(∑[char[2*n]]-2))` with `a(0)=2, a(1)=3, a(2)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A262304.P3491980247386918348
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A262304.P3491980247386918348

/-! ## A262304.P1977367562047715833

`a(floor(cosh(log(n)))-1)%7` with `a(0)=2, a(1)=3, a(2)=4`
-/

namespace A262304.P1977367562047715833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4] fun n a =>
  a (⌊Real.cosh (Real.log (n : ℝ))⌋ - 1).toNat % 7

end

end A262304.P1977367562047715833

/-! ## A262304.P18144364539630732440

`abs(a(ceil((n-1)/2)-1))` with `a(0)=2, a(1)=3, a(2)=4`
-/

namespace A262304.P18144364539630732440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4] fun n a =>
  a (⌈((n : ℤ) - 1 : ℚ) / 2⌉ - 1).toNat

end

end A262304.P18144364539630732440

/-! ## A262304.P5288255258431017803

`dr(a(and(n, -2)/2-1))` with `a(0)=2, a(1)=3, a(2)=4`
-/

namespace A262304.P5288255258431017803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4] fun n a =>
  SequenceMachineLib.digitalRoot (a (SequenceMachineLib.roundAway ((Int.land (n : ℤ) (-2) : ℚ) / 2 - 1)).toNat : ℤ)

end

end A262304.P5288255258431017803

/-! ## A262304.P13862816283280494130

`round(a((n-and(1, n))/2-1))` with `a(0)=2, a(1)=3, a(2)=4`

`round` is left out, it is the identity on integers.
-/

namespace A262304.P13862816283280494130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4] fun n a =>
  a (SequenceMachineLib.roundAway (((n : ℤ) - (Nat.land 1 n : ℤ) : ℚ) / 2 - 1)).toNat

end

end A262304.P13862816283280494130

/-! ## A262304.P9974224897249992577

`floor(a(A004526(n)-1))` with `a(0)=2, a(1)=3, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A262304.P9974224897249992577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4] fun n a =>
  a (A004526 n - 1).toNat

end

end A262304.P9974224897249992577

/-! ## A262304.P15635665863670317456

`floor(a(A008619(n)-2))` with `a(0)=2, a(1)=3, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A262304.P15635665863670317456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4] fun n a =>
  a (A008619 n - 2).toNat

end

end A262304.P15635665863670317456

/-!
# A262305: Number of equivalence classes of strata Str((R_{!=0})^n) of polygon spaces.

The programs for A262305, there is no canonical definition to state claims against.
-/

/-! ## A262305.P10690153193462468348

`∑[A324751(2^n+1)]`
-/

namespace A262305.P10690153193462468348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324751 (2 ^ n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262305.P10690153193462468348

/-! ## A262305.P13028294522877459622

`Δ[A191890(ceil(ϕ*a(n-1)))]` with `a(0)=3`
-/

namespace A262305.P13028294522877459622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A191890 ⌈Real.goldenRatio * (f1 (n - 1) : ℝ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A262305.P13028294522877459622

/-!
# A262306: Number of equivalence classes of strata Str(R^n) of polygon spaces.

The programs for A262306, there is no canonical definition to state claims against.
-/

/-! ## A262306.P17657158067315639724

`A048865(a(n-1)²+1)+3` with `a(0)=1`
-/

namespace A262306.P17657158067315639724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A048865 (a (n - 1) ^ 2 + 1).toNat + 3

end

end A262306.P17657158067315639724

/-! ## A262306.P8049531839531037720

`A161655(n^floor(n-atan(n)))+2*n`
-/

namespace A262306.P8049531839531037720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161655 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ : ℤ))).toNat + (2 * n : ℤ)

end

end A262306.P8049531839531037720

/-!
# A262307: Array read by antidiagonals: T(m,n) = number of m X n binary matrices with all 1's connected and no zero rows or columns.

The programs for A262307, there is no canonical definition to state claims against.
-/

/-! ## A262307.P4188698674105947884

`A168551(n)+A002262(A174410(n))`
-/

namespace A262307.P4188698674105947884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168551 n + A002262 (A174410 n).toNat

end

end A262307.P4188698674105947884

/-! ## A262307.P18188241867342246880

`A168551(n)+A137579(A143007(n))`
-/

namespace A262307.P18188241867342246880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168551 n + A137579 (A143007 n).toNat

end

end A262307.P18188241867342246880

/-! ## A262307.P10682582286240871339

`or(A037227(A168549(n)), A168551(n))`
-/

namespace A262307.P10682582286240871339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037227 (A168549 n).toNat) (A168551 n)

end

end A262307.P10682582286240871339

/-! ## A262307.P9952570766861064059

`or(A096670(A188474(n)), A168551(n))`
-/

namespace A262307.P9952570766861064059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A096670 (A188474 n).toNat) (A168551 n)

end

end A262307.P9952570766861064059

/-! ## A262307.P11143448462980571635

`or(A168551(n), A309876(A062275(n)))`
-/

namespace A262307.P11143448462980571635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A168551 n) (A309876 (A062275 n).toNat)

end

end A262307.P11143448462980571635

/-!
# A262308: Bisection of A008705.

The programs for A262308, there is no canonical definition to state claims against.
-/

/-! ## A262308.P12354365822622695048

`A008705(Δ[n²])`
-/

namespace A262308.P12354365822622695048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008705 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A262308.P12354365822622695048

/-! ## A262308.P6248884713477136072

`or(char[1], A008705(2*n+1))`
-/

namespace A262308.P6248884713477136072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A008705 (2 * n + 1))

end

end A262308.P6248884713477136072

/-! ## A262308.P1136265476221984214

`xor(A000007(n+3), A008705(2*n+1))`
-/

namespace A262308.P1136265476221984214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (n + 3)) (A008705 (2 * n + 1))

end

end A262308.P1136265476221984214

/-! ## A262308.P3493706266682569358

`A008705(2*n+1)+char[A008689(n+1)]`
-/

namespace A262308.P3493706266682569358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008689 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008705 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A262308.P3493706266682569358

/-! ## A262308.P16541194187914208298

`xor(char[A008698(3*n+1)], A008705(2*n+1))`
-/

namespace A262308.P16541194187914208298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008698 (3 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A008705 (2 * n + 1))

end

end A262308.P16541194187914208298

/-! ## A262308.P924764810498807413

`2*A008705(2*n+1)/A000034(2*n+1)`
-/

namespace A262308.P924764810498807413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A008705 (2 * n + 1) : ℚ) / (A000034 (2 * n + 1) : ℚ)

end

end A262308.P924764810498807413

/-! ## A262308.P4153445229473087530

`A008705(A005408(n))+A000007(n+1)`
-/

namespace A262308.P4153445229473087530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008705 (A005408 n).toNat + A000007 (n + 1)

end

end A262308.P4153445229473087530

/-! ## A262308.P4085222855740709072

`A000034(2*n)*A008705(A005408(n))`
-/

namespace A262308.P4085222855740709072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A008705 (A005408 n).toNat

end

end A262308.P4085222855740709072

/-! ## A262308.P6608337897672573679

`A008705(A005408(n))-n*A000007(n)`
-/

namespace A262308.P6608337897672573679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008705 (A005408 n).toNat - (n : ℤ) * A000007 n

end

end A262308.P6608337897672573679

/-! ## A262308.P7559705400476056569

`A014963(A008653(n))*A008705(2*n+1)`
-/

namespace A262308.P7559705400476056569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008653 n).toNat * A008705 (2 * n + 1)

end

end A262308.P7559705400476056569

/-! ## A262308.P6285300495589950007

`A007318(A057944(n))*A008705(A005408(n))`
-/

namespace A262308.P6285300495589950007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A057944 n).toNat * A008705 (A005408 n).toNat

end

end A262308.P6285300495589950007

/-! ## A262308.P11003733659618805763

`A007318(A000217(n))*A008705(A005408(n))`
-/

namespace A262308.P11003733659618805763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A008705 (A005408 n).toNat

end

end A262308.P11003733659618805763

/-! ## A262308.P8173388835888776789

`A008705(A131507(∑[n]))%A000032(2*n)²`
-/

namespace A262308.P8173388835888776789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008705 (A131507 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat) (A000032 (2 * n) ^ 2)

end

end A262308.P8173388835888776789

/-!
# A262309: Bisection of A008705.

The programs for A262309, there is no canonical definition to state claims against.
-/

/-! ## A262309.P3145557041573926095

`A008705(2*n)`
-/

namespace A262309.P3145557041573926095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008705 (2 * n)

end

end A262309.P3145557041573926095

/-! ## A262309.P11128398919644799455

`A008705(A004277(n))+A000038(n)`
-/

namespace A262309.P11128398919644799455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008705 (A004277 n).toNat + A000038 n

end

end A262309.P11128398919644799455

/-! ## A262309.P4265210495365235919

`A008705(A004277(n))^A001221(A008578(n+1))`
-/

namespace A262309.P4265210495365235919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008705 (A004277 n).toNat : ℚ) ^ (A001221 (A008578 (n + 1)).toNat : ℤ)

end

end A262309.P4265210495365235919

/-! ## A262309.P9937669663247677795

`A008705(A005843(n))^A014963(∑[n+1])`
-/

namespace A262309.P9937669663247677795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008705 (A005843 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A262309.P9937669663247677795

/-! ## A262309.P13531576060031979146

`A008705(A005843(n))%A306127(n+1)`
-/

namespace A262309.P13531576060031979146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008705 (A005843 n).toNat) (A306127 (n + 1))

end

end A262309.P13531576060031979146

/-! ## A262309.P3259414412259768243

`A008705(A005843(n))^A178334(n)`
-/

namespace A262309.P3259414412259768243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008705 (A005843 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A262309.P3259414412259768243

/-!
# A262310: a(n) = coefficient of x^(2n) in the expansion of the modular form Product_{k>=1} (1-x^k)^n.

The programs for A262310, there is no canonical definition to state claims against.
-/

/-! ## A262310.P5522817926561998732

`A286354(∑[9*n]-n)`
-/

namespace A262310.P5522817926561998732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A262310.P5522817926561998732

/-! ## A262310.P13108340840575888556

`or(A000007(n), A286354(A062728(n)))`
-/

namespace A262310.P13108340840575888556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A286354 (A062728 n).toNat)

end

end A262310.P13108340840575888556

/-! ## A262310.P10013717712783993416

`or(A063524(n), A286354(A062728(n)))`
-/

namespace A262310.P10013717712783993416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 n) (A286354 (A062728 n).toNat)

end

end A262310.P10013717712783993416

/-! ## A262310.P12691696394126372258

`or(A178333(n), A286354(A062728(n)))`
-/

namespace A262310.P12691696394126372258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A178333 n) (A286354 (A062728 n).toNat)

end

end A262310.P12691696394126372258

/-! ## A262310.P13844445866444224583

`A286354(A062728(n))%A200424(n+1)`
-/

namespace A262310.P13844445866444224583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286354 (A062728 n).toNat) (A200424 (n + 1))

end

end A262310.P13844445866444224583

/-!
# A262311: Number of ordered ways to write n = x^2 + y^2 + phi(z^2) (0 <= x <= y and z > 0) with y or z prime, where phi(.) is Euler's totient function given by A000010.

The programs for A262311, there is no canonical definition to state claims against.
-/

/-! ## A262311.P14480411529464610177

`A196564(A007588(n)%A133551(n+3))`
-/

namespace A262311.P14480411529464610177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (Int.tmod (A007588 n) (A133551 (n + 3))).toNat

end

end A262311.P14480411529464610177

/-! ## A262311.P13350945996603400946

`∑{e}[A334290(A038754(n)), #]`
-/

namespace A262311.P13350945996603400946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334290 (A038754 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A262311.P13350945996603400946

/-! ## A262311.P14015070765459422527

`A131576(∑[A002378(A100484(n+1))])`
-/

namespace A262311.P14015070765459422527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A100484 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131576 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A262311.P14015070765459422527

/-! ## A262311.P4472460124143798124

`A001221(or(A026553(n), A034856(n+1)))`
-/

namespace A262311.P4472460124143798124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A026553 n) (A034856 (n + 1))).toNat

end

end A262311.P4472460124143798124

/-! ## A262311.P9720591613988942819

`A001221(or(A019262(n+3), A034856(n+1)))`
-/

namespace A262311.P9720591613988942819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A019262 (n + 3)) (A034856 (n + 1))).toNat

end

end A262311.P9720591613988942819

/-!
# A262312: The limit, as word-length approaches infinity, of the probability that a random binary word is an instance of the Zimin pattern "aba"; also the probability that a random infinite binary word begins with an even-length palindrome.

The programs for A262312, there is no canonical definition to state claims against.
-/

/-! ## A262312.P10416221872028494804

`9-A242430(n)`
-/

namespace A262312.P10416221872028494804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A242430 n

end

end A262312.P10416221872028494804

/-!
# A262314: Number of (n+2)X(2+2) 0..1 arrays with each row and column divisible by 7, read as a binary number with top and left being the most significant bits.

The programs for A262314, there is no canonical definition to state claims against.
-/

/-! ## A262314.P75749041275628294

`A262319(∑[n+1]+2)`
-/

namespace A262314.P75749041275628294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262319 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A262314.P75749041275628294

/-! ## A262314.P10268659745405602601

`A262917(∑[n+3]+2)`
-/

namespace A262314.P10268659745405602601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262917 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A262314.P10268659745405602601

/-! ## A262314.P17032742652089442918

`record[A262319(n+2)/A039758(n)]`
-/

namespace A262314.P17032742652089442918
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262319 (n + 2) : ℚ) / (A039758 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262314.P17032742652089442918

/-! ## A262314.P4617567894816788968

`record[A262319(n+2)/A109692(n)]`
-/

namespace A262314.P4617567894816788968
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262319 (n + 2) : ℚ) / (A109692 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262314.P4617567894816788968

/-! ## A262314.P1235617052347707644

`record[A262319(n+3)/A038231(n)]`
-/

namespace A262314.P1235617052347707644
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262319 (n + 3) : ℚ) / (A038231 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262314.P1235617052347707644

/-!
# A262315: Number of (n+2)X(3+2) 0..1 arrays with each row and column divisible by 7, read as a binary number with top and left being the most significant bits.

The programs for A262315, there is no canonical definition to state claims against.
-/

/-! ## A262315.P5767599654447144347

`A262319(∑[n+2]+4)`
-/

namespace A262315.P5767599654447144347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262319 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A262315.P5767599654447144347

/-! ## A262315.P4151421291381656264

`or(1, A262319(A167614(n+1)))`
-/

namespace A262315.P4151421291381656264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A262319 (A167614 (n + 1)).toNat)

end

end A262315.P4151421291381656264

/-! ## A262315.P7379042182029007272

`record[A262319(n+4)/A038231(n)]`
-/

namespace A262315.P7379042182029007272
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262319 (n + 4) : ℚ) / (A038231 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262315.P7379042182029007272

/-! ## A262315.P7428761008318639511

`record[A262319(n+4)/A132159(n)]`
-/

namespace A262315.P7428761008318639511
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262319 (n + 4) : ℚ) / (A132159 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262315.P7428761008318639511

/-! ## A262315.P10061659527648092817

`record[A262319(n+4)/A039758(n+1)]`
-/

namespace A262315.P10061659527648092817
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262319 (n + 4) : ℚ) / (A039758 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262315.P10061659527648092817

/-!
# A262316: Number of (n+2)X(4+2) 0..1 arrays with each row and column divisible by 7, read as a binary number with top and left being the most significant bits.

The programs for A262316, there is no canonical definition to state claims against.
-/

/-! ## A262316.P9679918395795525574

`A262319(A374004(n+1))`
-/

namespace A262316.P9679918395795525574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262319 (A374004 (n + 1)).toNat

end

end A262316.P9679918395795525574

/-! ## A262316.P13221143865289834691

`A262319(A141214(n)+7)`
-/

namespace A262316.P13221143865289834691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262319 (A141214 n + 7).toNat

end

end A262316.P13221143865289834691

/-! ## A262316.P151369309791336374

`A262319(A052905(n)+9)`
-/

namespace A262316.P151369309791336374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262319 (A052905 n + 9).toNat

end

end A262316.P151369309791336374

/-! ## A262316.P4864581152279566990

`A262319(A055999(n)+10)`
-/

namespace A262316.P4864581152279566990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262319 (A055999 n + 10).toNat

end

end A262316.P4864581152279566990

/-! ## A262316.P17500971691391224587

`A262319(eq[5, A066657(n)])`
-/

namespace A262316.P17500971691391224587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262316.P17500971691391224587

/-!
# A262317: Number of (n+2)X(5+2) 0..1 arrays with each row and column divisible by 7, read as a binary number with top and left being the most significant bits.

The programs for A262317, there is no canonical definition to state claims against.
-/

/-! ## A262317.P9605094793542572460

`A262319(A374005(n+1))`
-/

namespace A262317.P9605094793542572460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262319 (A374005 (n + 1)).toNat

end

end A262317.P9605094793542572460

/-! ## A262317.P15185384767739191339

`A262319(A167499(n+3))`
-/

namespace A262317.P15185384767739191339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262319 (A167499 (n + 3)).toNat

end

end A262317.P15185384767739191339

/-! ## A262317.P6035162973819963393

`A262319(A155212(n)+13)`
-/

namespace A262317.P6035162973819963393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262319 (A155212 n + 13).toNat

end

end A262317.P6035162973819963393

/-! ## A262317.P18371020028788014379

`A262319(A056000(n)+15)`
-/

namespace A262317.P18371020028788014379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262319 (A056000 n + 15).toNat

end

end A262317.P18371020028788014379

/-! ## A262317.P13891100594048759350

`A262319(eq[7, A066657(n)])`
-/

namespace A262317.P13891100594048759350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262317.P13891100594048759350

/-!
# A262318: Number of (n+2)X(6+2) 0..1 arrays with each row and column divisible by 7, read as a binary number with top and left being the most significant bits.

The programs for A262318, there is no canonical definition to state claims against.
-/

/-! ## A262318.P12349921434554223878

`A262319(A374007(n+1))`
-/

namespace A262318.P12349921434554223878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262319 (A374007 (n + 1)).toNat

end

end A262318.P12349921434554223878

/-! ## A262318.P13179403547814214888

`A262319(A166136(n+4))`
-/

namespace A262318.P13179403547814214888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262319 (A166136 (n + 4)).toNat

end

end A262318.P13179403547814214888

/-! ## A262318.P9378004999189660365

`A262319(A056115(n)+21)`
-/

namespace A262318.P9378004999189660365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262319 (A056115 n + 21).toNat

end

end A262318.P9378004999189660365

/-! ## A262318.P11827639398968973185

`A262319(A167499(n+4)+1)`
-/

namespace A262318.P11827639398968973185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262319 (A167499 (n + 4) + 1).toNat

end

end A262318.P11827639398968973185

/-!
# A262320: Number of ways to select a subset s from an n-set and then partition s into blocks of equal size.

The programs for A262320, there is no canonical definition to state claims against.
-/

/-! ## A262320.P64658922046062194

`1+A262280(n)`
-/

namespace A262320.P64658922046062194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A262280 n

end

end A262320.P64658922046062194

/-! ## A262320.P13494779931754473569

`∑[A262321(n)]`
-/

namespace A262320.P13494779931754473569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262320.P13494779931754473569

/-! ## A262320.P5026047762208840576

`1-A057428(n)*A262280(n)`
-/

namespace A262320.P5026047762208840576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057428 n * A262280 n

end

end A262320.P5026047762208840576

/-! ## A262320.P8769130892802807887

`A262280(n)-A008683(A007918(n))`
-/

namespace A262320.P8769130892802807887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262280 n - A008683 (A007918 n).toNat

end

end A262320.P8769130892802807887

/-! ## A262320.P2206578016386166208

`A262280(n)-A008683(A051698(n))`
-/

namespace A262320.P2206578016386166208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262280 n - A008683 (A051698 n).toNat

end

end A262320.P2206578016386166208

/-! ## A262320.P15504445321790598637

`A262280(n)-A008683(A061351(n))`
-/

namespace A262320.P15504445321790598637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262280 n - A008683 (A061351 n).toNat

end

end A262320.P15504445321790598637

/-! ## A262320.P9607136302451761515

`A262280(n)-A309873(A016825(n))`
-/

namespace A262320.P9607136302451761515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262280 n - A309873 (A016825 n).toNat

end

end A262320.P9607136302451761515

/-!
# A262321: Number of ways to select a subset s containing n from {1,...,n} and then partition s into blocks of equal size.

The programs for A262321, there is no canonical definition to state claims against.
-/

/-! ## A262321.P13533954378450902828

`abs(Δ[A262280(abs(1-n))])`
-/

namespace A262321.P13533954378450902828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262280 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A262321.P13533954378450902828

/-! ## A262321.P12407496070781272232

`Δ[A262280((n-1)^A051904(n²+1))]^A051904(n²+1)`
-/

namespace A262321.P12407496070781272232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262280 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) ^ (A051904 (n ^ 2 + 1) : ℤ))).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A051904 (n ^ 2 + 1) : ℤ)

end

end A262321.P12407496070781272232

/-! ## A262321.P4858393397955520043

`A005842(A115451(n))`
-/

namespace A262321.P4858393397955520043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005842 (A115451 n).toNat

end

end A262321.P4858393397955520043

/-!
# A262324: Conway's triangle of "happy factorizations" (flattened).

The programs for A262324, there is no canonical definition to state claims against.
-/

/-! ## A262324.P8565940248021466598

`gcd(floor(n/2), A023645(A125896(n)))`
-/

namespace A262324.P8565940248021466598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊(n : ℚ) / 2⌋ (A023645 (A125896 n).toNat)

end

end A262324.P8565940248021466598

/-! ## A262324.P997741090788238482

`A158632(A264217(n+1))%A008619(n)`
-/

namespace A262324.P997741090788238482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158632 (A264217 (n + 1)).toNat) (A008619 n)

end

end A262324.P997741090788238482

/-! ## A262324.P9874402950709311543

`A323579(A026215(n+1))%A008619(n)`
-/

namespace A262324.P9874402950709311543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323579 (A026215 (n + 1)).toNat) (A008619 n)

end

end A262324.P9874402950709311543

/-! ## A262324.P17880401146108623460

`gcd(A004526(n), A025826(A077559(n+1)))`
-/

namespace A262324.P17880401146108623460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004526 n) (A025826 (A077559 (n + 1)).toNat)

end

end A262324.P17880401146108623460

/-! ## A262324.P11198566997152429505

`∑{d}[A077168(n), A339382(#)]`
-/

namespace A262324.P11198566997152429505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A339382 d

end

end A262324.P11198566997152429505

/-!
# A262325: Number of (n+1)X(n+1) 0..1 arrays with each row and column divisible by 3, read as a binary number with top and left being the most significant bits.

The programs for A262325, there is no canonical definition to state claims against.
-/

/-! ## A262325.P18090367380010510886

`A262332(∑[4*n]+1)`
-/

namespace A262325.P18090367380010510886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262332 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A262325.P18090367380010510886

/-! ## A262325.P4224410441558658150

`record[gcd(A049581(n), A262332(n+1))]`
-/

namespace A262325.P4224410441558658150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A262332 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262325.P4224410441558658150

/-! ## A262325.P15164202002352685321

`A000041(C(n, 64)²)*A262332(A001844(n))`
-/

namespace A262325.P15164202002352685321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 64 ^ 2) * A262332 (A001844 n).toNat

end

end A262325.P15164202002352685321

/-! ## A262325.P12124867878799414120

`A000041(C(2, 2*n))*A262332(A001844(n))`
-/

namespace A262325.P12124867878799414120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (2 * n)) * A262332 (A001844 n).toNat

end

end A262325.P12124867878799414120

/-! ## A262325.P13220213565887156578

`A005117(gcd(n, n+1))*A262332(A001844(n))`
-/

namespace A262325.P13220213565887156578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (Nat.gcd n (n + 1)) * A262332 (A001844 n).toNat

end

end A262325.P13220213565887156578

/-!
# A262326: Number of (n+1) X (2+1) 0..1 arrays with each row and column divisible by 3, read as a binary number with top and left being the most significant bits.

The programs for A262326, the canonical program `A262326.P6721321125208910147` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262326 has offset 1).

The definition of A262326 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262326.P17438949859116060225

`ogf((-3+4x+9x^2)/(-1+3x+3x^2-9x^3))`
-/

namespace A262326.P17438949859116060225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4, -9] [1, -3, -3, 9] n

end

end A262326.P17438949859116060225

namespace A262326

/-- `ogf((-3+4x+9x^2)/(-1+3x+3x^2-9x^3))` -/
def P17438949859116060225.Spec : Prop :=
  ∀ n, P17438949859116060225.a n = A262326 (n + 1)

end A262326

/-! ## A262326.P6721321125208910147

`3*a(n-1)+3*a(n-2)-9*a(n-3)` with `a(0)=3, a(1)=5, a(2)=15`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A262326

/-- `3*a(n-1)+3*a(n-2)-9*a(n-3)` -/
def P6721321125208910147.Spec : Prop :=
  ∀ n, P6721321125208910147.a n = A262326 (n + 1)

theorem P6721321125208910147.correct : P6721321125208910147.Spec := by
  intro n
  simp only [A262326, Nat.add_sub_cancel]

end A262326

/-! ## A262326.P5978349373829108902

`Δ[A060647(n)]+3^n`
-/

namespace A262326.P5978349373829108902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060647 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (3 ^ n : ℤ)

end

end A262326.P5978349373829108902

namespace A262326

/-- `Δ[A060647(n)]+3^n` -/
def P5978349373829108902.Spec : Prop :=
  ∀ n, P5978349373829108902.a n = A262326 (n + 1)

end A262326

/-! ## A262326.P14614764683387746121

`A117855(n+1)+3^n`
-/

namespace A262326.P14614764683387746121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117855 (n + 1) + (3 ^ n : ℤ)

end

end A262326.P14614764683387746121

namespace A262326

/-- `A117855(n+1)+3^n` -/
def P14614764683387746121.Spec : Prop :=
  ∀ n, P14614764683387746121.a n = A262326 (n + 1)

end A262326

/-! ## A262326.P13632627787105214261

`A102345(n)+A062547(n)`
-/

namespace A262326.P13632627787105214261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102345 n + A062547 n

end

end A262326.P13632627787105214261

namespace A262326

/-- `A102345(n)+A062547(n)` -/
def P13632627787105214261.Spec : Prop :=
  ∀ n, P13632627787105214261.a n = A262326 (n + 1)

end A262326

/-! ## A262326.P6979946045756423738

`Δ[A060647(n)+A007051(n)]`
-/

namespace A262326.P6979946045756423738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060647 n + A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A262326.P6979946045756423738

namespace A262326

/-- `Δ[A060647(n)+A007051(n)]` -/
def P6979946045756423738.Spec : Prop :=
  ∀ n, P6979946045756423738.a n = A262326 (n + 1)

end A262326

/-! ## A262326.P3139347046878427094

`A038754(n)+Δ[A032120(n)]`
-/

namespace A262326.P3139347046878427094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n + (f1 (n + 1) - f1 n)

end

end A262326.P3139347046878427094

namespace A262326

/-- `A038754(n)+Δ[A032120(n)]` -/
def P3139347046878427094.Spec : Prop :=
  ∀ n, P3139347046878427094.a n = A262326 (n + 1)

end A262326

/-! ## A262326.P675905192339093931

`A254006(n)+A032124(n+1)`
-/

namespace A262326.P675905192339093931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 n + A032124 (n + 1)

end

end A262326.P675905192339093931

namespace A262326

/-- `A254006(n)+A032124(n+1)` -/
def P675905192339093931.Spec : Prop :=
  ∀ n, P675905192339093931.a n = A262326 (n + 1)

end A262326

/-! ## A262326.P6327015266209395523

`A122007(n+2)+A056449(n)`
-/

namespace A262326.P6327015266209395523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122007 (n + 2) + A056449 n

end

end A262326.P6327015266209395523

namespace A262326

/-- `A122007(n+2)+A056449(n)` -/
def P6327015266209395523.Spec : Prop :=
  ∀ n, P6327015266209395523.a n = A262326 (n + 1)

end A262326

/-! ## A262326.P17713037024772189410

`2*A108411(n)+A000244(n)`
-/

namespace A262326.P17713037024772189410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108411 n + A000244 n

end

end A262326.P17713037024772189410

namespace A262326

/-- `2*A108411(n)+A000244(n)` -/
def P17713037024772189410.Spec : Prop :=
  ∀ n, P17713037024772189410.a n = A262326 (n + 1)

end A262326

/-! ## A262326.P9260771629103832448

`(A056449(n)+2)*A108411(n)`
-/

namespace A262326.P9260771629103832448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056449 n + 2) * A108411 n

end

end A262326.P9260771629103832448

namespace A262326

/-- `(A056449(n)+2)*A108411(n)` -/
def P9260771629103832448.Spec : Prop :=
  ∀ n, P9260771629103832448.a n = A262326 (n + 1)

end A262326

/-! ## A262326.P11570013914543520904

`Δ[A060647(n)+abs(A076040(n))]`
-/

namespace A262326.P11570013914543520904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060647 n + |A076040 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A262326.P11570013914543520904

namespace A262326

/-- `Δ[A060647(n)+abs(A076040(n))]` -/
def P11570013914543520904.Spec : Prop :=
  ∀ n, P11570013914543520904.a n = A262326 (n + 1)

end A262326

/-! ## A262326.P11702779459981981978

`Δ[A117862(n)]+A168607(n)-2`
-/

namespace A262326.P11702779459981981978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A168607 n - 2)

end

end A262326.P11702779459981981978

namespace A262326

/-- `Δ[A117862(n)]+A168607(n)-2` -/
def P11702779459981981978.Spec : Prop :=
  ∀ n, P11702779459981981978.a n = A262326 (n + 1)

end A262326

/-! ## A262326.P1154687193497609428

`A000244(n)+Δ[2*A038754(n)]`
-/

namespace A262326.P1154687193497609428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n + (f1 (n + 1) - f1 n)

end

end A262326.P1154687193497609428

namespace A262326

/-- `A000244(n)+Δ[2*A038754(n)]` -/
def P1154687193497609428.Spec : Prop :=
  ∀ n, P1154687193497609428.a n = A262326 (n + 1)

end A262326

/-! ## A262326.P15942063791101665561

`A254006(2*n)+Δ[A060647(n)]`
-/

namespace A262326.P15942063791101665561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060647 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 (2 * n) + (f1 (n + 1) - f1 n)

end

end A262326.P15942063791101665561

namespace A262326

/-- `A254006(2*n)+Δ[A060647(n)]` -/
def P15942063791101665561.Spec : Prop :=
  ∀ n, P15942063791101665561.a n = A262326 (n + 1)

end A262326

/-! ## A262326.P3496056489848394412

`A122006(n+2)+A038754(n+1)`
-/

namespace A262326.P3496056489848394412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122006 (n + 2) + A038754 (n + 1)

end

end A262326.P3496056489848394412

namespace A262326

/-- `A122006(n+2)+A038754(n+1)` -/
def P3496056489848394412.Spec : Prop :=
  ∀ n, P3496056489848394412.a n = A262326 (n + 1)

end A262326

/-! ## A262326.P7444477746491172470

`A032120(n+1)-A167993(n+1)`
-/

namespace A262326.P7444477746491172470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032120 (n + 1) - A167993 (n + 1)

end

end A262326.P7444477746491172470

namespace A262326

/-- `A032120(n+1)-A167993(n+1)` -/
def P7444477746491172470.Spec : Prop :=
  ∀ n, P7444477746491172470.a n = A262326 (n + 1)

end A262326

/-! ## A262326.P10430438537031930570

`A122007(n+2)+A108411(n+1)`
-/

namespace A262326.P10430438537031930570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122007 (n + 2) + A108411 (n + 1)

end

end A262326.P10430438537031930570

namespace A262326

/-- `A122007(n+2)+A108411(n+1)` -/
def P10430438537031930570.Spec : Prop :=
  ∀ n, P10430438537031930570.a n = A262326 (n + 1)

end A262326

/-! ## A262326.P11465381994554119255

`(A108411(n+1)+2)*A108411(n)`
-/

namespace A262326.P11465381994554119255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108411 (n + 1) + 2) * A108411 n

end

end A262326.P11465381994554119255

namespace A262326

/-- `(A108411(n+1)+2)*A108411(n)` -/
def P11465381994554119255.Spec : Prop :=
  ∀ n, P11465381994554119255.a n = A262326 (n + 1)

end A262326

/-! ## A262326.P11391590176573305135

`A000244(n)+Δ[2*A062318(n+1)]`
-/

namespace A262326.P11391590176573305135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n + (f1 (n + 1) - f1 n)

end

end A262326.P11391590176573305135

namespace A262326

/-- `A000244(n)+Δ[2*A062318(n+1)]` -/
def P11391590176573305135.Spec : Prop :=
  ∀ n, P11391590176573305135.a n = A262326 (n + 1)

end A262326

/-!
# A262327: Number of (n+1) X (3+1) 0..1 arrays with each row and column divisible by 3, read as a binary number with top and left being the most significant bits.

The programs for A262327, the canonical program `A262327.P2100399082297439217` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262327 has offset 1).

The definition of A262327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262327.P2100399082297439217

`6*a(n-1)+9*a(n-2)-54*a(n-3)` with `a(0)=6, a(1)=15, a(2)=90`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A262327

/-- `6*a(n-1)+9*a(n-2)-54*a(n-3)` -/
def P2100399082297439217.Spec : Prop :=
  ∀ n, P2100399082297439217.a n = A262327 (n + 1)

theorem P2100399082297439217.correct : P2100399082297439217.Spec := by
  intro n
  simp only [A262327, Nat.add_sub_cancel]

end A262327

/-! ## A262327.P2659091450793849816

`A262332(∑[n+2]+4)`
-/

namespace A262327.P2659091450793849816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262332 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A262327.P2659091450793849816

namespace A262327

/-- `A262332(∑[n+2]+4)` -/
def P2659091450793849816.Spec : Prop :=
  ∀ n, P2659091450793849816.a n = A262327 (n + 1)

end A262327

/-! ## A262327.P16915539158846448885

`lcm(3, A262332(A167614(n+1)))`
-/

namespace A262327.P16915539158846448885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A262332 (A167614 (n + 1)).toNat)

end

end A262327.P16915539158846448885

namespace A262327

/-- `lcm(3, A262332(A167614(n+1)))` -/
def P16915539158846448885.Spec : Prop :=
  ∀ n, (P16915539158846448885.a n : ℤ) = A262327 (n + 1)

end A262327

/-! ## A262327.P2727671345401450617

`or(A175830(n), A262332(A167614(n+1)))`
-/

namespace A262327.P2727671345401450617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A175830 n) (A262332 (A167614 (n + 1)).toNat)

end

end A262327.P2727671345401450617

namespace A262327

/-- `or(A175830(n), A262332(A167614(n+1)))` -/
def P2727671345401450617.Spec : Prop :=
  ∀ n, P2727671345401450617.a n = A262327 (n + 1)

end A262327

/-!
# A262328: Number of (n+1) X (4+1) 0..1 arrays with each row and column divisible by 3, read as a binary number with top and left being the most significant bits.

The programs for A262328, there is no canonical definition to state claims against.
-/

/-! ## A262328.P2592573209426330010

`A262332(A141214(n+1))`
-/

namespace A262328.P2592573209426330010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262332 (A141214 (n + 1)).toNat

end

end A262328.P2592573209426330010

/-! ## A262328.P3020260794341631358

`A262332(A374004(n+1))`
-/

namespace A262328.P3020260794341631358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262332 (A374004 (n + 1)).toNat

end

end A262328.P3020260794341631358

/-! ## A262328.P16798517581080162822

`A262332(A052905(n)+9)`
-/

namespace A262328.P16798517581080162822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262332 (A052905 n + 9).toNat

end

end A262328.P16798517581080162822

/-! ## A262328.P631762873643042134

`A262332(A167614(n+2)+1)`
-/

namespace A262328.P631762873643042134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262332 (A167614 (n + 2) + 1).toNat

end

end A262328.P631762873643042134

/-! ## A262328.P16964613500890266637

`A262332(Δ[A023545(n+1)-n²])`
-/

namespace A262328.P16964613500890266637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262332 (f1 (n + 1) - f1 n).toNat

end

end A262328.P16964613500890266637

/-!
# A262329: Number of (n+1)X(5+1) 0..1 arrays with each row and column divisible by 3, read as a binary number with top and left being the most significant bits.

The programs for A262329, there is no canonical definition to state claims against.
-/

/-! ## A262329.P5591331186684347388

`A262332(A374005(n+1))`
-/

namespace A262329.P5591331186684347388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262332 (A374005 (n + 1)).toNat

end

end A262329.P5591331186684347388

/-! ## A262329.P5450251972420220409

`A262332(A167614(n+3)+2)`
-/

namespace A262329.P5450251972420220409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262332 (A167614 (n + 3) + 2).toNat

end

end A262329.P5450251972420220409

/-! ## A262329.P16676481291350314448

`A262332(A055998(n+2)+8)`
-/

namespace A262329.P16676481291350314448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262332 (A055998 (n + 2) + 8).toNat

end

end A262329.P16676481291350314448

/-! ## A262329.P10530006495694587455

`A262332(A173036(n)+A016825(n))`
-/

namespace A262329.P10530006495694587455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262332 (A173036 n + A016825 n).toNat

end

end A262329.P10530006495694587455

/-! ## A262329.P14786998919863835062

`record[A262332(A173036(n)-A016825(n))]`
-/

namespace A262329.P14786998919863835062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262332 (A173036 n - A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262329.P14786998919863835062

/-!
# A262330: Number of (n+1) X (6+1) 0..1 arrays with each row and column divisible by 3, read as a binary number with top and left being the most significant bits.

The programs for A262330, there is no canonical definition to state claims against.
-/

/-! ## A262330.P5661023283214710664

`A262332(A374007(n+1))`
-/

namespace A262330.P5661023283214710664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262332 (A374007 (n + 1)).toNat

end

end A262330.P5661023283214710664

/-! ## A262330.P9196267114508680591

`A262332(eq[3, A219347(n)])`
-/

namespace A262330.P9196267114508680591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262332 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262330.P9196267114508680591

/-! ## A262330.P18077707273194741124

`A262332(eq[5, A193592(n)])`
-/

namespace A262330.P18077707273194741124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262332 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262330.P18077707273194741124

/-! ## A262330.P10610785909930162666

`A262332(eq[8, A258709(n)])`
-/

namespace A262330.P10610785909930162666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262332 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262330.P10610785909930162666

/-! ## A262330.P1103291528278146479

`A262332(Δ[A023545(n+1)]+10)`
-/

namespace A262330.P1103291528278146479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262332 (f1 (n + 1) - f1 n + 10).toNat

end

end A262330.P1103291528278146479

/-!
# A262331: Number of (n+1)X(7+1) 0..1 arrays with each row and column divisible by 3, read as a binary number with top and left being the most significant bits.

The programs for A262331, there is no canonical definition to state claims against.
-/

/-! ## A262331.P9357380243584447218

`A262332(A374008(n+1))`
-/

namespace A262331.P9357380243584447218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262332 (A374008 (n + 1)).toNat

end

end A262331.P9357380243584447218

/-! ## A262331.P13185567239636249207

`A262332(eq[4, A219347(n)])`
-/

namespace A262331.P13185567239636249207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262332 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262331.P13185567239636249207

/-! ## A262331.P18444044954531851546

`A262332(eq[11, A066657(n)])`
-/

namespace A262331.P18444044954531851546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262332 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262331.P18444044954531851546

/-! ## A262331.P11165541237146051672

`A262332(eq[8, A131818(n+1)])`
-/

namespace A262331.P11165541237146051672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262332 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262331.P11165541237146051672

/-! ## A262331.P508812770059210609

`A262332(A000124(n+7)-(n+1))`
-/

namespace A262331.P508812770059210609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262332 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A262331.P508812770059210609

/-!
# A262333: Number of (n+3) X (1+3) 0..1 arrays with each row and column divisible by 9, read as a binary number with top and left being the most significant bits.

The programs for A262333, the canonical program `A262333.P16324266126069401609` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262333 has offset 1).

The definition of A262333 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262333.P16324266126069401609

`∑[2^n-a(n-3)]+1` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A262333

/-- `∑[2^n-a(n-3)]+1` -/
def P16324266126069401609.Spec : Prop :=
  ∀ n, P16324266126069401609.a n = A262333 (n + 1)

theorem P16324266126069401609.correct : P16324266126069401609.Spec := by
  intro n
  simp only [A262333, Nat.add_sub_cancel]

end A262333

/-! ## A262333.P9713501192095263394

`2*a(n-1)-floor(n/3)%2` with `a(0)=2`
-/

namespace A262333.P9713501192095263394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) - Int.tmod ⌊(n : ℚ) / 3⌋ 2

end

end A262333.P9713501192095263394

namespace A262333

/-- `2*a(n-1)-floor(n/3)%2` -/
def P9713501192095263394.Spec : Prop :=
  ∀ n, P9713501192095263394.a n = A262333 (n + 1)

end A262333

/-! ## A262333.P10097817858459331410

`A153234(n+4)+1`
-/

namespace A262333.P10097817858459331410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153234 (n + 4) + 1

end

end A262333.P10097817858459331410

namespace A262333

/-- `A153234(n+4)+1` -/
def P10097817858459331410.Spec : Prop :=
  ∀ n, P10097817858459331410.a n = A262333 (n + 1)

end A262333

/-! ## A262333.P13689154766418788504

`∑[A113405(n+3)]+1`
-/

namespace A262333.P13689154766418788504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A262333.P13689154766418788504

namespace A262333

/-- `∑[A113405(n+3)]+1` -/
def P13689154766418788504.Spec : Prop :=
  ∀ n, P13689154766418788504.a n = A262333 (n + 1)

end A262333

/-! ## A262333.P16550074540383292403

`A131666(n+4)+∑[n%3]%2`
-/

namespace A262333.P16550074540383292403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 (n + 4) + (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ)

end

end A262333.P16550074540383292403

namespace A262333

/-- `A131666(n+4)+∑[n%3]%2` -/
def P16550074540383292403.Spec : Prop :=
  ∀ n, P16550074540383292403.a n = A262333 (n + 1)

end A262333

/-! ## A262333.P7872997985246937152

`A171231(n)+A131666(n)`
-/

namespace A262333.P7872997985246937152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171231 n + A131666 n

end

end A262333.P7872997985246937152

namespace A262333

/-- `A171231(n)+A131666(n)` -/
def P7872997985246937152.Spec : Prop :=
  ∀ n, P7872997985246937152.a n = A262333 (n + 1)

end A262333

/-! ## A262333.P11386727704736350506

`A171231(n)+Δ[A113405(n)]`
-/

namespace A262333.P11386727704736350506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171231 n + (f1 (n + 1) - f1 n)

end

end A262333.P11386727704736350506

namespace A262333

/-- `A171231(n)+Δ[A113405(n)]` -/
def P11386727704736350506.Spec : Prop :=
  ∀ n, P11386727704736350506.a n = A262333 (n + 1)

end A262333

/-! ## A262333.P17962275423819704411

`1-∑[A113405(n)-A000079(n)]`
-/

namespace A262333.P17962275423819704411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 n - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262333.P17962275423819704411

namespace A262333

/-- `1-∑[A113405(n)-A000079(n)]` -/
def P17962275423819704411.Spec : Prop :=
  ∀ n, P17962275423819704411.a n = A262333 (n + 1)

end A262333

/-! ## A262333.P1355405429692448966

`∑[2*A011782(n)-A113405(n)]`
-/

namespace A262333.P1355405429692448966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011782 n - A113405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262333.P1355405429692448966

namespace A262333

/-- `∑[2*A011782(n)-A113405(n)]` -/
def P1355405429692448966.Spec : Prop :=
  ∀ n, P1355405429692448966.a n = A262333 (n + 1)

end A262333

/-! ## A262333.P8919688456277027100

`A131666(n+4)+char[A047245(n+1)]`
-/

namespace A262333.P8919688456277027100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047245 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 (n + 4) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A262333.P8919688456277027100

namespace A262333

/-- `A131666(n+4)+char[A047245(n+1)]` -/
def P8919688456277027100.Spec : Prop :=
  ∀ n, P8919688456277027100.a n = A262333 (n + 1)

end A262333

/-! ## A262333.P14553027944418524705

`A131666(n+4)+char[2*(n+1)-A105899(2*n)]`
-/

namespace A262333.P14553027944418524705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A105899 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 (n + 4) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A262333.P14553027944418524705

namespace A262333

/-- `A131666(n+4)+char[2*(n+1)-A105899(2*n)]` -/
def P14553027944418524705.Spec : Prop :=
  ∀ n, P14553027944418524705.a n = A262333 (n + 1)

end A262333

/-! ## A262333.P3699006956044902050

`A000051(n)+A131666(n)+A000975(n)`
-/

namespace A262333.P3699006956044902050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A131666 n + A000975 n)

end

end A262333.P3699006956044902050

namespace A262333

/-- `A000051(n)+A131666(n)+A000975(n)` -/
def P3699006956044902050.Spec : Prop :=
  ∀ n, P3699006956044902050.a n = A262333 (n + 1)

end A262333

/-! ## A262333.P2368480634559544691

`3*a(n-1)-2*a(n-2)-a(n-3)+3*a(n-4)-2*a(n-5)` with `a(0)=2, a(1)=4, a(2)=8, a(3)=15, a(4)=29`
-/

namespace A262333.P2368480634559544691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 8, 15, 29] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) - a (n - 3) + 3 * a (n - 4) - 2 * a (n - 5)

end

end A262333.P2368480634559544691

namespace A262333

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+3*a(n-4)-2*a(n-5)` -/
def P2368480634559544691.Spec : Prop :=
  ∀ n, P2368480634559544691.a n = A262333 (n + 1)

end A262333

/-! ## A262333.P54511495446770119

`Δ[A178742(n+3)]+1`
-/

namespace A262333.P54511495446770119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178742 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A262333.P54511495446770119

namespace A262333

/-- `Δ[A178742(n+3)]+1` -/
def P54511495446770119.Spec : Prop :=
  ∀ n, P54511495446770119.a n = A262333 (n + 1)

end A262333

/-! ## A262333.P1960838133479425070

`ceil(2^(n+4)/9)`
-/

namespace A262333.P1960838133479425070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ (n + 4) : ℚ) / 9⌉

end

end A262333.P1960838133479425070

namespace A262333

/-- `ceil(2^(n+4)/9)` -/
def P1960838133479425070.Spec : Prop :=
  ∀ n, P1960838133479425070.a n = A262333 (n + 1)

end A262333

/-! ## A262333.P2064809357761417389

`sqrt(A262334(n+1))`
-/

namespace A262333.P2064809357761417389
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262334 (n + 1) : ℝ)

end

end A262333.P2064809357761417389

namespace A262333

/-- `sqrt(A262334(n+1))` -/
def P2064809357761417389.Spec : Prop :=
  ∀ n, P2064809357761417389.a n = (A262333 (n + 1) : ℝ)

end A262333

/-! ## A262333.P14321927139827266907

`round(A001576(n+2)/A005010(n))`
-/

namespace A262333.P14321927139827266907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001576 (n + 2) : ℚ) / (A005010 n : ℚ))

end

end A262333.P14321927139827266907

namespace A262333

/-- `round(A001576(n+2)/A005010(n))` -/
def P14321927139827266907.Spec : Prop :=
  ∀ n, P14321927139827266907.a n = A262333 (n + 1)

end A262333

/-! ## A262333.P14597736625253155221

`A262335(n+1)^(1/3)`
-/

namespace A262333.P14597736625253155221
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A262335 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A262333.P14597736625253155221

namespace A262333

/-- `A262335(n+1)^(1/3)` -/
def P14597736625253155221.Spec : Prop :=
  ∀ n, P14597736625253155221.a n = (A262333 (n + 1) : ℝ)

end A262333

/-! ## A262333.P16564256982857318738

`A262335(n+1)/A262334(n+1)`
-/

namespace A262333.P16564256982857318738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262335 (n + 1) : ℚ) / (A262334 (n + 1) : ℚ)

end

end A262333.P16564256982857318738

namespace A262333

/-- `A262335(n+1)/A262334(n+1)` -/
def P16564256982857318738.Spec : Prop :=
  ∀ n, P16564256982857318738.a n = (A262333 (n + 1) : ℚ)

end A262333

/-!
# A262334: Number of (n+3)X(2+3) 0..1 arrays with each row and column divisible by 9, read as a binary number with top and left being the most significant bits.

The programs for A262334, the canonical program `A262334.P8980470518424327943` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262334 has offset 1).

The definition of A262334 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262334.P8980470518424327943

`A262333(n+1)²`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A262334

/-- `A262333(n+1)²` -/
def P8980470518424327943.Spec : Prop :=
  ∀ n, P8980470518424327943.a n = A262334 (n + 1)

theorem P8980470518424327943.correct : P8980470518424327943.Spec := by
  intro n
  simp only [A262334, Nat.add_sub_cancel]

end A262334

/-! ## A262334.P10930450385509604980

`(A153234(n+4)+1)²`
-/

namespace A262334.P10930450385509604980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A153234 (n + 4) + 1) ^ 2

end

end A262334.P10930450385509604980

namespace A262334

/-- `(A153234(n+4)+1)²` -/
def P10930450385509604980.Spec : Prop :=
  ∀ n, P10930450385509604980.a n = A262334 (n + 1)

end A262334

/-! ## A262334.P13655200705834462407

`ceil(sqrt(A262594(n+1)))²`
-/

namespace A262334.P13655200705834462407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A262594 (n + 1) : ℝ)⌉ ^ 2

end

end A262334.P13655200705834462407

namespace A262334

/-- `ceil(sqrt(A262594(n+1)))²` -/
def P13655200705834462407.Spec : Prop :=
  ∀ n, P13655200705834462407.a n = A262334 (n + 1)

end A262334

/-! ## A262334.P2965733134126208987

`ceil(2*sqrt(A262594(n)))²`
-/

namespace A262334.P2965733134126208987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sqrt (A262594 n : ℝ)⌉ ^ 2

end

end A262334.P2965733134126208987

namespace A262334

/-- `ceil(2*sqrt(A262594(n)))²` -/
def P2965733134126208987.Spec : Prop :=
  ∀ n, P2965733134126208987.a n = A262334 (n + 1)

end A262334

/-! ## A262334.P6136394419555375484

`(∑[A113405(n+3)]+1)²`
-/

namespace A262334.P6136394419555375484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A262334.P6136394419555375484

namespace A262334

/-- `(∑[A113405(n+3)]+1)²` -/
def P6136394419555375484.Spec : Prop :=
  ∀ n, P6136394419555375484.a n = A262334 (n + 1)

end A262334

/-! ## A262334.P16114983251644958612

`(Δ[A178742(n+3)]+1)²`
-/

namespace A262334.P16114983251644958612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178742 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) ^ 2

end

end A262334.P16114983251644958612

namespace A262334

/-- `(Δ[A178742(n+3)]+1)²` -/
def P16114983251644958612.Spec : Prop :=
  ∀ n, P16114983251644958612.a n = A262334 (n + 1)

end A262334

/-! ## A262334.P12882258142301144240

`(2^(n+1)-A153234(n+1))^2`
-/

namespace A262334.P12882258142301144240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) - A153234 (n + 1)) ^ 2

end

end A262334.P12882258142301144240

namespace A262334

/-- `(2^(n+1)-A153234(n+1))^2` -/
def P12882258142301144240.Spec : Prop :=
  ∀ n, P12882258142301144240.a n = A262334 (n + 1)

end A262334

/-! ## A262334.P1496575300654753872

`(A171231(n)+A131666(n))²`
-/

namespace A262334.P1496575300654753872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A171231 n + A131666 n) ^ 2

end

end A262334.P1496575300654753872

namespace A262334

/-- `(A171231(n)+A131666(n))²` -/
def P1496575300654753872.Spec : Prop :=
  ∀ n, P1496575300654753872.a n = A262334 (n + 1)

end A262334

/-! ## A262334.P4034547161442971595

`(A171231(n)+Δ[A113405(n)])²`
-/

namespace A262334.P4034547161442971595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A171231 n + (f1 (n + 1) - f1 n)) ^ 2

end

end A262334.P4034547161442971595

namespace A262334

/-- `(A171231(n)+Δ[A113405(n)])²` -/
def P4034547161442971595.Spec : Prop :=
  ∀ n, P4034547161442971595.a n = A262334 (n + 1)

end A262334

/-! ## A262334.P3052198243876193747

`(A000051(n)+A131666(n)+A000975(n))²`
-/

namespace A262334.P3052198243876193747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000051 n + (A131666 n + A000975 n)) ^ 2

end

end A262334.P3052198243876193747

namespace A262334

/-- `(A000051(n)+A131666(n)+A000975(n))²` -/
def P3052198243876193747.Spec : Prop :=
  ∀ n, P3052198243876193747.a n = A262334 (n + 1)

end A262334

/-! ## A262334.P3241663604757661556

`A262333(A000027(n+1))*A262333(n+1)`
-/

namespace A262334.P3241663604757661556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262333 (A000027 (n + 1)).toNat * A262333 (n + 1)

end

end A262334.P3241663604757661556

namespace A262334

/-- `A262333(A000027(n+1))*A262333(n+1)` -/
def P3241663604757661556.Spec : Prop :=
  ∀ n, P3241663604757661556.a n = A262334 (n + 1)

end A262334

/-! ## A262334.P3206393812282829066

`A262333(n+1)^A056619(A001122(n+1))`
-/

namespace A262334.P3206393812282829066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262333 (n + 1) : ℚ) ^ (A056619 (A001122 (n + 1)).toNat : ℤ)

end

end A262334.P3206393812282829066

namespace A262334

/-- `A262333(n+1)^A056619(A001122(n+1))` -/
def P3206393812282829066.Spec : Prop :=
  ∀ n, P3206393812282829066.a n = (A262334 (n + 1) : ℚ)

end A262334

/-! ## A262334.P9215575458965903808

`A262333(n+1)*A262333((n+1)%A006094(n+1))`
-/

namespace A262334.P9215575458965903808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262333 (n + 1) * A262333 (Int.tmod (n + 1 : ℤ) (A006094 (n + 1))).toNat

end

end A262334.P9215575458965903808

namespace A262334

/-- `A262333(n+1)*A262333((n+1)%A006094(n+1))` -/
def P9215575458965903808.Spec : Prop :=
  ∀ n, P9215575458965903808.a n = A262334 (n + 1)

end A262334

/-! ## A262334.P10377935585914032715

`A262335(n+1)^(2/3)`
-/

namespace A262334.P10377935585914032715
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A262335 (n + 1) : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A262334.P10377935585914032715

namespace A262334

/-- `A262335(n+1)^(2/3)` -/
def P10377935585914032715.Spec : Prop :=
  ∀ n, P10377935585914032715.a n = (A262334 (n + 1) : ℝ)

end A262334

/-! ## A262334.P13286301881535308741

`A262335(n+1)/A262333(n+1)`
-/

namespace A262334.P13286301881535308741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262335 (n + 1) : ℚ) / (A262333 (n + 1) : ℚ)

end

end A262334.P13286301881535308741

namespace A262334

/-- `A262335(n+1)/A262333(n+1)` -/
def P13286301881535308741.Spec : Prop :=
  ∀ n, P13286301881535308741.a n = (A262334 (n + 1) : ℚ)

end A262334

/-!
# A262335: Number of (n+3)X(3+3) 0..1 arrays with each row and column divisible by 9, read as a binary number with top and left being the most significant bits.

The programs for A262335, the canonical program `A262335.P10862925138812688300` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262335 has offset 1).

The definition of A262335 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262335.P10862925138812688300

`A262333(n+1)^3`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A262335

/-- `A262333(n+1)^3` -/
def P10862925138812688300.Spec : Prop :=
  ∀ n, P10862925138812688300.a n = A262335 (n + 1)

theorem P10862925138812688300.correct : P10862925138812688300.Spec := by
  intro n
  simp only [A262335, Nat.add_sub_cancel]

end A262335

/-! ## A262335.P3364790572760897251

`sqrt(A262334(n+1))^3`
-/

namespace A262335.P3364790572760897251
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262334 (n + 1) : ℝ) ^ 3

end

end A262335.P3364790572760897251

namespace A262335

/-- `sqrt(A262334(n+1))^3` -/
def P3364790572760897251.Spec : Prop :=
  ∀ n, P3364790572760897251.a n = (A262335 (n + 1) : ℝ)

end A262335

/-! ## A262335.P5191106990293836883

`(A153234(n+4)+1)^3`
-/

namespace A262335.P5191106990293836883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A153234 (n + 4) + 1) ^ 3

end

end A262335.P5191106990293836883

namespace A262335

/-- `(A153234(n+4)+1)^3` -/
def P5191106990293836883.Spec : Prop :=
  ∀ n, P5191106990293836883.a n = A262335 (n + 1)

end A262335

/-! ## A262335.P5877660033748075474

`(A171231(n)+A131666(n))^3`
-/

namespace A262335.P5877660033748075474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A171231 n + A131666 n) ^ 3

end

end A262335.P5877660033748075474

namespace A262335

/-- `(A171231(n)+A131666(n))^3` -/
def P5877660033748075474.Spec : Prop :=
  ∀ n, P5877660033748075474.a n = A262335 (n + 1)

end A262335

/-! ## A262335.P15420848176919553983

`A262333(n+1)*A262334(n+1)`
-/

namespace A262335.P15420848176919553983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262333 (n + 1) * A262334 (n + 1)

end

end A262335.P15420848176919553983

namespace A262335

/-- `A262333(n+1)*A262334(n+1)` -/
def P15420848176919553983.Spec : Prop :=
  ∀ n, P15420848176919553983.a n = A262335 (n + 1)

theorem P15420848176919553983.correct : P15420848176919553983.Spec := by
  intro n
  simp only [A262335, Nat.add_sub_cancel, A262335.P15420848176919553983.a, A262335.P10862925138812688300.a, A262333, A262333.P16324266126069401609.f1, A262333.P16324266126069401609.a, A262334, A262334.P8980470518424327943.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A262335

/-! ## A262335.P15775726130156651825

`A262333(A000027(n+1))²*A262333(n+1)`
-/

namespace A262335.P15775726130156651825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262333 (A000027 (n + 1)).toNat ^ 2 * A262333 (n + 1)

end

end A262335.P15775726130156651825

namespace A262335

/-- `A262333(A000027(n+1))²*A262333(n+1)` -/
def P15775726130156651825.Spec : Prop :=
  ∀ n, P15775726130156651825.a n = A262335 (n + 1)

end A262335

/-!
# A262336: Number of (n+3)X(4+3) 0..1 arrays with each row and column divisible by 9, read as a binary number with top and left being the most significant bits.

The programs for A262336, there is no canonical definition to state claims against.
-/

/-! ## A262336.P14584517227758622183

`A262338(A141214(n)+7)`
-/

namespace A262336.P14584517227758622183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262338 (A141214 n + 7).toNat

end

end A262336.P14584517227758622183

/-! ## A262336.P14812917792347866598

`A262338(A052905(n)+9)`
-/

namespace A262336.P14812917792347866598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262338 (A052905 n + 9).toNat

end

end A262336.P14812917792347866598

/-! ## A262336.P8977866378322025094

`A262338(A055999(n)+10)`
-/

namespace A262336.P8977866378322025094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262338 (A055999 n + 10).toNat

end

end A262336.P8977866378322025094

/-! ## A262336.P10521533746587959856

`A262338(eq[5, A066657(n)])`
-/

namespace A262336.P10521533746587959856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262336.P10521533746587959856

/-! ## A262336.P1580874072520458118

`A262338(A167614(n+2)+1)`
-/

namespace A262336.P1580874072520458118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262338 (A167614 (n + 2) + 1).toNat

end

end A262336.P1580874072520458118

/-!
# A262337: Number of (n+3)X(5+3) 0..1 arrays with each row and column divisible by 9, read as a binary number with top and left being the most significant bits.

The programs for A262337, there is no canonical definition to state claims against.
-/

/-! ## A262337.P17208366627895015148

`A262338(A167499(n+3))`
-/

namespace A262337.P17208366627895015148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262338 (A167499 (n + 3)).toNat

end

end A262337.P17208366627895015148

/-! ## A262337.P10064314829368656078

`A262338(A155212(n)+13)`
-/

namespace A262337.P10064314829368656078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262338 (A155212 n + 13).toNat

end

end A262337.P10064314829368656078

/-! ## A262337.P6151768645720090469

`A262338(A056000(n)+15)`
-/

namespace A262337.P6151768645720090469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262338 (A056000 n + 15).toNat

end

end A262337.P6151768645720090469

/-! ## A262337.P856926760962942760

`A262338(eq[7, A066657(n)])`
-/

namespace A262337.P856926760962942760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262337.P856926760962942760

/-!
# A262338: T(n,k)=Number of (n+3)X(k+3) 0..1 arrays with each row and column divisible by 9, read as a binary number with top and left being the most significant bits.

The programs for A262338, there is no canonical definition to state claims against.
-/

/-! ## A262338.P15940049462769469226

`A225099(A098361(n))+A189161(n+1)`
-/

namespace A262338.P15940049462769469226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225099 (A098361 n).toNat + A189161 (n + 1)

end

end A262338.P15940049462769469226

/-! ## A262338.P7293061029516816492

`A225099(A098361(n))+A189343(n+1)`
-/

namespace A262338.P7293061029516816492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225099 (A098361 n).toNat + A189343 (n + 1)

end

end A262338.P7293061029516816492

/-! ## A262338.P7442069438609465681

`A225099(A098361(n))+A189779(n+1)`
-/

namespace A262338.P7442069438609465681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225099 (A098361 n).toNat + A189779 (n + 1)

end

end A262338.P7442069438609465681

/-! ## A262338.P5364854130886702940

`A225099(A098361(n))+A189905(n+1)`
-/

namespace A262338.P5364854130886702940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225099 (A098361 n).toNat + A189905 (n + 1)

end

end A262338.P5364854130886702940

/-! ## A262338.P2330366798117465584

`A267735(n+1)+A225099(A098361(n))`
-/

namespace A262338.P2330366798117465584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267735 (n + 1) + A225099 (A098361 n).toNat

end

end A262338.P2330366798117465584

/-!
# A262339: Exceptional primes for Ramanujan's tau function.

The programs for A262339, there is no canonical definition to state claims against.
-/

/-! ## A262339.P17123986164528920840

`p?[A093936(n+2)+n]`
-/

namespace A262339.P17123986164528920840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093936 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262339.P17123986164528920840

/-!
# A262340: Primes of the form p^2 + b^4 where p is a prime.

The programs for A262340, there is no canonical definition to state claims against.
-/

/-! ## A262340.P2866722327872976718

`∩[A028916(n+1), A185086(n+1)]`
-/

namespace A262340.P2866722327872976718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262340.P2866722327872976718

/-! ## A262340.P13082621024056932070

`∩[A111925(n+1), A185086(n+1)]`
-/

namespace A262340.P13082621024056932070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262340.P13082621024056932070

/-! ## A262340.P4711793965507400142

`p?[A001222(A331435(n+1))*A028916(n+1)]`
-/

namespace A262340.P4711793965507400142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A331435 (n + 1)).toNat * A028916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262340.P4711793965507400142

/-! ## A262340.P8143252284398228844

`∩[A028916(n+1), A361300(n+1)]`
-/

namespace A262340.P8143252284398228844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262340.P8143252284398228844

/-!
# A262341: Largest primitive prime factor of Fibonacci number F(n), or 1 if no primitive.

The programs for A262341, there is no canonical definition to state claims against.
-/

/-! ## A262341.P4172208942044481570

`A006530(A178763(n+1))`
-/

namespace A262341.P4172208942044481570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A178763 (n + 1)).toNat

end

end A262341.P4172208942044481570

/-! ## A262341.P13454137845289185917

`A034699(and(-1, A178763(n+1)))`
-/

namespace A262341.P13454137845289185917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (Int.land (-1) (A178763 (n + 1))).toNat

end

end A262341.P13454137845289185917

/-! ## A262341.P14461837986643391033

`A088387(and(-1, A178763(n+1)))`
-/

namespace A262341.P14461837986643391033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (Int.land (-1) (A178763 (n + 1))).toNat

end

end A262341.P14461837986643391033

/-!
# A262342: Area of Lewis Carroll's paradoxical F(2n+1) X F(2n+3) rectangle.

The programs for A262342, the canonical program `A262342.P7885869021553694857` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262342 has offset 1).

The definition of A262342 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262342.P7885869021553694857

`8*a(n-1)-8*a(n-2)+a(n-3)` with `a(0)=10, a(1)=65, a(2)=442`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A262342

/-- `8*a(n-1)-8*a(n-2)+a(n-3)` -/
def P7885869021553694857.Spec : Prop :=
  ∀ n, P7885869021553694857.a n = A262342 (n + 1)

theorem P7885869021553694857.correct : P7885869021553694857.Spec := by
  intro n
  simp only [A262342, Nat.add_sub_cancel]

end A262342

/-! ## A262342.P8246747051179942116

`A064170(n+4)`
-/

namespace A262342.P8246747051179942116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064170 (n + 4)

end

end A262342.P8246747051179942116

namespace A262342

/-- `A064170(n+4)` -/
def P8246747051179942116.Spec : Prop :=
  ∀ n, P8246747051179942116.a n = A262342 (n + 1)

end A262342

/-! ## A262342.P4714317876817937439

`A190018(8*(n+1))`
-/

namespace A262342.P4714317876817937439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190018 (8 * (n + 1))

end

end A262342.P4714317876817937439

namespace A262342

/-- `A190018(8*(n+1))` -/
def P4714317876817937439.Spec : Prop :=
  ∀ n, P4714317876817937439.a n = A262342 (n + 1)

end A262342

/-! ## A262342.P10906687766139334123

`A059929(2*(n+1)+1)`
-/

namespace A262342.P10906687766139334123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059929 (2 * (n + 1) + 1)

end

end A262342.P10906687766139334123

namespace A262342

/-- `A059929(2*(n+1)+1)` -/
def P10906687766139334123.Spec : Prop :=
  ∀ n, P10906687766139334123.a n = A262342 (n + 1)

end A262342

/-! ## A262342.P4383176241203591841

`A166516(2*(n+1)+2)`
-/

namespace A262342.P4383176241203591841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166516 (2 * (n + 1) + 2)

end

end A262342.P4383176241203591841

namespace A262342

/-- `A166516(2*(n+1)+2)` -/
def P4383176241203591841.Spec : Prop :=
  ∀ n, P4383176241203591841.a n = A262342 (n + 1)

end A262342

/-! ## A262342.P5769117601643537259

`A245306(2*(n+1)+2)`
-/

namespace A262342.P5769117601643537259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245306 (2 * (n + 1) + 2)

end

end A262342.P5769117601643537259

namespace A262342

/-- `A245306(2*(n+1)+2)` -/
def P5769117601643537259.Spec : Prop :=
  ∀ n, P5769117601643537259.a n = A262342 (n + 1)

end A262342

/-! ## A262342.P6594270292686213803

`A070550(4*(n+1)+1)`
-/

namespace A262342.P6594270292686213803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070550 (4 * (n + 1) + 1)

end

end A262342.P6594270292686213803

namespace A262342

/-- `A070550(4*(n+1)+1)` -/
def P6594270292686213803.Spec : Prop :=
  ∀ n, P6594270292686213803.a n = A262342 (n + 1)

end A262342

/-! ## A262342.P14957104064705174771

`A236165(4*(n+1)+4)`
-/

namespace A262342.P14957104064705174771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236165 (4 * (n + 1) + 4)

end

end A262342.P14957104064705174771

namespace A262342

/-- `A236165(4*(n+1)+4)` -/
def P14957104064705174771.Spec : Prop :=
  ∀ n, P14957104064705174771.a n = A262342 (n + 1)

end A262342

/-! ## A262342.P16330768909409432687

`A000045(2*(n+1)+2)²+1`
-/

namespace A262342.P16330768909409432687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * (n + 1) + 2) ^ 2 + 1

end

end A262342.P16330768909409432687

namespace A262342

/-- `A000045(2*(n+1)+2)²+1` -/
def P16330768909409432687.Spec : Prop :=
  ∀ n, P16330768909409432687.a n = A262342 (n + 1)

end A262342

/-! ## A262342.P1633075692440502332

`A000045(2*(n+1)+1)*A000045(2*(n+1)+3)`
-/

namespace A262342.P1633075692440502332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * (n + 1) + 1) * A000045 (2 * (n + 1) + 3)

end

end A262342.P1633075692440502332

namespace A262342

/-- `A000045(2*(n+1)+1)*A000045(2*(n+1)+3)` -/
def P1633075692440502332.Spec : Prop :=
  ∀ n, P1633075692440502332.a n = A262342 (n + 1)

end A262342

/-! ## A262342.P1604918669815067871

`(A337928(n+2)-A337929(n+2))/2`
-/

namespace A262342.P1604918669815067871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337928 (n + 2) - A337929 (n + 2) : ℚ) / 2

end

end A262342.P1604918669815067871

namespace A262342

/-- `(A337928(n+2)-A337929(n+2))/2` -/
def P1604918669815067871.Spec : Prop :=
  ∀ n, P1604918669815067871.a n = (A262342 (n + 1) : ℚ)

end A262342

/-! ## A262342.P2245984333139390554

`A049684(n+2)+1`
-/

namespace A262342.P2245984333139390554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049684 (n + 2) + 1

end

end A262342.P2245984333139390554

namespace A262342

/-- `A049684(n+2)+1` -/
def P2245984333139390554.Spec : Prop :=
  ∀ n, P2245984333139390554.a n = A262342 (n + 1)

end A262342

/-! ## A262342.P13212221047204316403

`A360467(n+1)/2`
-/

namespace A262342.P13212221047204316403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360467 (n + 1) : ℚ) / 2

end

end A262342.P13212221047204316403

namespace A262342

/-- `A360467(n+1)/2` -/
def P13212221047204316403.Spec : Prop :=
  ∀ n, P13212221047204316403.a n = (A262342 (n + 1) : ℚ)

end A262342

/-! ## A262342.P964237689289386180

`Δ[A048575(n)]²+1`
-/

namespace A262342.P964237689289386180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 + 1

end

end A262342.P964237689289386180

namespace A262342

/-- `Δ[A048575(n)]²+1` -/
def P964237689289386180.Spec : Prop :=
  ∀ n, P964237689289386180.a n = A262342 (n + 1)

end A262342

/-! ## A262342.P9651881857210653367

`A080144(Δ[n²])+2`
-/

namespace A262342.P9651881857210653367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080144 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A262342.P9651881857210653367

namespace A262342

/-- `A080144(Δ[n²])+2` -/
def P9651881857210653367.Spec : Prop :=
  ∀ n, P9651881857210653367.a n = A262342 (n + 1)

end A262342

/-! ## A262342.P6812546773114778939

`A001906(n+2)²+1`
-/

namespace A262342.P6812546773114778939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 2) ^ 2 + 1

end

end A262342.P6812546773114778939

namespace A262342

/-- `A001906(n+2)²+1` -/
def P6812546773114778939.Spec : Prop :=
  ∀ n, P6812546773114778939.a n = A262342 (n + 1)

end A262342

/-! ## A262342.P1157887749085696639

`A088305(n+2)²+1`
-/

namespace A262342.P1157887749085696639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 (n + 2) ^ 2 + 1

end

end A262342.P1157887749085696639

namespace A262342

/-- `A088305(n+2)²+1` -/
def P1157887749085696639.Spec : Prop :=
  ∀ n, P1157887749085696639.a n = A262342 (n + 1)

end A262342

/-! ## A262342.P6433849182112126801

`A020701(2*n)²+1`
-/

namespace A262342.P6433849182112126801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 (2 * n) ^ 2 + 1

end

end A262342.P6433849182112126801

namespace A262342

/-- `A020701(2*n)²+1` -/
def P6433849182112126801.Spec : Prop :=
  ∀ n, P6433849182112126801.a n = A262342 (n + 1)

end A262342

/-! ## A262342.P12645469825645758065

`∑[A033890(n+1)]+2`
-/

namespace A262342.P12645469825645758065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A262342.P12645469825645758065

namespace A262342

/-- `∑[A033890(n+1)]+2` -/
def P12645469825645758065.Spec : Prop :=
  ∀ n, P12645469825645758065.a n = A262342 (n + 1)

end A262342

/-! ## A262342.P3509243972891269672

`Δ[Δ[A035508(n)]]²+1`
-/

namespace A262342.P3509243972891269672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035508 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 + 1

end

end A262342.P3509243972891269672

namespace A262342

/-- `Δ[Δ[A035508(n)]]²+1` -/
def P3509243972891269672.Spec : Prop :=
  ∀ n, P3509243972891269672.a n = A262342 (n + 1)

end A262342

/-!
# A262343: Numerator of 3*(1-2/n), for n >= 3.

The programs for A262343, the canonical program `A262343.P15826230461321476451` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262343 has offset 3).

The definition of A262343 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262343.P15826230461321476451

`gcd((1-n²)², ∑[3*n])`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A262343

/-- `gcd((1-n²)², ∑[3*n])` -/
def P15826230461321476451.Spec : Prop :=
  ∀ n, (P15826230461321476451.a n : ℤ) = A262343 (n + 3)

theorem P15826230461321476451.correct : P15826230461321476451.Spec := by
  intro n
  simp only [A262343, Nat.add_sub_cancel]

end A262343

/-! ## A262343.P4548748547881072722

`3*(n+1)/gcd(6, n+3)`
-/

namespace A262343.P4548748547881072722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℚ) / (Nat.gcd 6 (n + 3) : ℚ))

end

end A262343.P4548748547881072722

namespace A262343

/-- `3*(n+1)/gcd(6, n+3)` -/
def P4548748547881072722.Spec : Prop :=
  ∀ n, P4548748547881072722.a n = (A262343 (n + 3) : ℚ)

end A262343

/-! ## A262343.P8887599814207733460

`(4-gcd(3, n))*gcd(n+1, ∑[n])`
-/

namespace A262343.P8887599814207733460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - (Nat.gcd 3 n : ℤ)) * (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A262343.P8887599814207733460

namespace A262343

/-- `(4-gcd(3, n))*gcd(n+1, ∑[n])` -/
def P8887599814207733460.Spec : Prop :=
  ∀ n, P8887599814207733460.a n = A262343 (n + 3)

end A262343

/-! ## A262343.P1691002259293560215

`lcm(n+3, 3*(n+1))/(n+3)`
-/

namespace A262343.P1691002259293560215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 3) (3 * (n + 1)) : ℚ) / (n + 3 : ℚ)

end

end A262343.P1691002259293560215

namespace A262343

/-- `lcm(n+3, 3*(n+1))/(n+3)` -/
def P1691002259293560215.Spec : Prop :=
  ∀ n, P1691002259293560215.a n = (A262343 (n + 3) : ℚ)

end A262343

/-! ## A262343.P3482617416990890279

`3*(n+1)/A089145(n)`
-/

namespace A262343.P3482617416990890279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℚ) / (A089145 n : ℚ))

end

end A262343.P3482617416990890279

namespace A262343

/-- `3*(n+1)/A089145(n)` -/
def P3482617416990890279.Spec : Prop :=
  ∀ n, P3482617416990890279.a n = (A262343 (n + 3) : ℚ)

end A262343

/-! ## A262343.P784504538648077724

`A026741(n+1)*A169609(n)`
-/

namespace A262343.P784504538648077724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) * A169609 n

end

end A262343.P784504538648077724

namespace A262343

/-- `A026741(n+1)*A169609(n)` -/
def P784504538648077724.Spec : Prop :=
  ∀ n, P784504538648077724.a n = A262343 (n + 3)

end A262343

/-! ## A262343.P15790173530011009844

`A060789(n+1)*A168399(n)`
-/

namespace A262343.P15790173530011009844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (n + 1) * A168399 n

end

end A262343.P15790173530011009844

namespace A262343

/-- `A060789(n+1)*A168399(n)` -/
def P15790173530011009844.Spec : Prop :=
  ∀ n, P15790173530011009844.a n = A262343 (n + 3)

end A262343

/-! ## A262343.P15870329335372623188

`A169609(n)/2*A109043(n+1)`
-/

namespace A262343.P15870329335372623188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169609 n : ℚ) / 2 * (A109043 (n + 1) : ℚ)

end

end A262343.P15870329335372623188

namespace A262343

/-- `A169609(n)/2*A109043(n+1)` -/
def P15870329335372623188.Spec : Prop :=
  ∀ n, P15870329335372623188.a n = (A262343 (n + 3) : ℚ)

end A262343

/-! ## A262343.P9679296778799003879

`A000217(n+1)*A026741(n+1)/A234041(n)`
-/

namespace A262343.P9679296778799003879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 1) * A026741 (n + 1) : ℚ) / (A234041 n : ℚ)

end

end A262343.P9679296778799003879

namespace A262343

/-- `A000217(n+1)*A026741(n+1)/A234041(n)` -/
def P9679296778799003879.Spec : Prop :=
  ∀ n, P9679296778799003879.a n = (A262343 (n + 3) : ℚ)

end A262343

/-! ## A262343.P16799585093014510132

`A165351(n+1)/gcd(3, n)`
-/

namespace A262343.P16799585093014510132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165351 (n + 1) : ℚ) / (Nat.gcd 3 n : ℚ)

end

end A262343.P16799585093014510132

namespace A262343

/-- `A165351(n+1)/gcd(3, n)` -/
def P16799585093014510132.Spec : Prop :=
  ∀ n, P16799585093014510132.a n = (A262343 (n + 3) : ℚ)

end A262343

/-! ## A262343.P15708885961029318458

`(n+1)/2*A129203(n+2)`
-/

namespace A262343.P15708885961029318458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A129203 (n + 2) : ℚ)

end

end A262343.P15708885961029318458

namespace A262343

/-- `(n+1)/2*A129203(n+2)` -/
def P15708885961029318458.Spec : Prop :=
  ∀ n, P15708885961029318458.a n = (A262343 (n + 3) : ℚ)

end A262343

/-! ## A262343.P18084053327029296970

`(A145064(n+1)-A051176(n))*A026741(n+1)`
-/

namespace A262343.P18084053327029296970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A145064 (n + 1) - A051176 n) * A026741 (n + 1)

end

end A262343.P18084053327029296970

namespace A262343

/-- `(A145064(n+1)-A051176(n))*A026741(n+1)` -/
def P18084053327029296970.Spec : Prop :=
  ∀ n, P18084053327029296970.a n = A262343 (n + 3)

end A262343

/-! ## A262343.P3132260172350618016

`A329494(n+1)-A060789(n+3)`
-/

namespace A262343.P3132260172350618016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329494 (n + 1) - A060789 (n + 3)

end

end A262343.P3132260172350618016

namespace A262343

/-- `A329494(n+1)-A060789(n+3)` -/
def P3132260172350618016.Spec : Prop :=
  ∀ n, P3132260172350618016.a n = A262343 (n + 3)

end A262343

/-! ## A262343.P10689933919297788240

`A026741(n+1)*A144437(n+3)`
-/

namespace A262343.P10689933919297788240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) * A144437 (n + 3)

end

end A262343.P10689933919297788240

namespace A262343

/-- `A026741(n+1)*A144437(n+3)` -/
def P10689933919297788240.Spec : Prop :=
  ∀ n, P10689933919297788240.a n = A262343 (n + 3)

end A262343

/-! ## A262343.P1167780130605277517

`A109007(n+2)*A109007(n+1)*A026741(n+1)`
-/

namespace A262343.P1167780130605277517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109007 (n + 2) * A109007 (n + 1) * A026741 (n + 1)

end

end A262343.P1167780130605277517

namespace A262343

/-- `A109007(n+2)*A109007(n+1)*A026741(n+1)` -/
def P1167780130605277517.Spec : Prop :=
  ∀ n, P1167780130605277517.a n = A262343 (n + 3)

end A262343

/-! ## A262343.P3457350920679420452

`3*(n+1)/A089128(n+3)`
-/

namespace A262343.P3457350920679420452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℚ) / (A089128 (n + 3) : ℚ))

end

end A262343.P3457350920679420452

namespace A262343

/-- `3*(n+1)/A089128(n+3)` -/
def P3457350920679420452.Spec : Prop :=
  ∀ n, P3457350920679420452.a n = (A262343 (n + 3) : ℚ)

end A262343

/-! ## A262343.P2080816753430682477

`A008585(n+1)/A089128(n+3)`
-/

namespace A262343.P2080816753430682477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008585 (n + 1) : ℚ) / (A089128 (n + 3) : ℚ)

end

end A262343.P2080816753430682477

namespace A262343

/-- `A008585(n+1)/A089128(n+3)` -/
def P2080816753430682477.Spec : Prop :=
  ∀ n, P2080816753430682477.a n = (A262343 (n + 3) : ℚ)

end A262343

/-! ## A262343.P7385878549157547476

`(A051176(n+3)-A051176(n))*A026741(n+1)`
-/

namespace A262343.P7385878549157547476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051176 (n + 3) - A051176 n) * A026741 (n + 1)

end

end A262343.P7385878549157547476

namespace A262343

/-- `(A051176(n+3)-A051176(n))*A026741(n+1)` -/
def P7385878549157547476.Spec : Prop :=
  ∀ n, P7385878549157547476.a n = A262343 (n + 3)

end A262343

/-! ## A262343.P16619125791945118580

`A026741(n+1)*A028356(2*n)`
-/

namespace A262343.P16619125791945118580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) * A028356 (2 * n)

end

end A262343.P16619125791945118580

namespace A262343

/-- `A026741(n+1)*A028356(2*n)` -/
def P16619125791945118580.Spec : Prop :=
  ∀ n, P16619125791945118580.a n = A262343 (n + 3)

end A262343

/-! ## A262343.P15901533737897010625

`A060819(2*(n+1))*A144437(n+3)`
-/

namespace A262343.P15901533737897010625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (2 * (n + 1)) * A144437 (n + 3)

end

end A262343.P15901533737897010625

namespace A262343

/-- `A060819(2*(n+1))*A144437(n+3)` -/
def P15901533737897010625.Spec : Prop :=
  ∀ n, P15901533737897010625.a n = A262343 (n + 3)

end A262343

/-!
# A262344: Centered 11-gonal (or hendecagonal) primes.

The programs for A262344, there is no canonical definition to state claims against.
-/

/-! ## A262344.P6638417631406064425

`∩[A069125(n+1), A142049(n+1)]`
-/

namespace A262344.P6638417631406064425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262344.P6638417631406064425

/-! ## A262344.P9858641798709920790

`∩[A069125(n+1), A141849(n+1)]`
-/

namespace A262344.P9858641798709920790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262344.P9858641798709920790

/-! ## A262344.P2483349222128899281

`p?[11*C(n, 2)+1]`
-/

namespace A262344.P2483349222128899281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * Nat.choose n 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A262344.P2483349222128899281

/-! ## A262344.P10685640233158894894

`p?[a(n-1)+11*n]` with `a(0)=1`
-/

namespace A262344.P10685640233158894894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 11 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A262344.P10685640233158894894

/-! ## A262344.P6734617755929394334

`or(1, p?[A069125(n+1)])`
-/

namespace A262344.P6734617755929394334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A262344.P6734617755929394334

/-!
# A262346: Expansion of Product_{k>=1} (1-x^(3*k))/(1-x^(2*k)).

The programs for A262346, there is no canonical definition to state claims against.
-/

/-! ## A262346.P11670753169696864188

`A028999(A035363(n))+A035363(n)-A037907(A018116(n))`
-/

namespace A262346.P11670753169696864188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028999 (A035363 n).toNat + (A035363 n - A037907 (A018116 n).toNat)

end

end A262346.P11670753169696864188

/-!
# A262347: Number of subsets of [1..n] of maximal size that are free of 3-term arithmetic progressions.

The programs for A262347, there is no canonical definition to state claims against.
-/

/-! ## A262347.P16796274719630281866

`A334187(∑[A003002(n)]+n)`
-/

namespace A262347.P16796274719630281866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334187 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A262347.P16796274719630281866

/-! ## A262347.P14954925007490661911

`A334187(eq[0, A334892(n+1)])`
-/

namespace A262347.P14954925007490661911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334187 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262347.P14954925007490661911

/-! ## A262347.P16658271185689600506

`A334187(lt[A334892(n+1), 1])`
-/

namespace A262347.P16658271185689600506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334892 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334187 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A262347.P16658271185689600506

/-! ## A262347.P15209888973268389914

`A334187(lt[A334892(n), 1]-1)`
-/

namespace A262347.P15209888973268389914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334892 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334187 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n - 1)

end

end A262347.P15209888973268389914

/-!
# A262349: Sum of the divisors of the n-th Bell number.

The programs for A262349, there is no canonical definition to state claims against.
-/

/-! ## A262349.P13872695362162646330

`A000203(A000110(n))`
-/

namespace A262349.P13872695362162646330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000110 n).toNat

end

end A262349.P13872695362162646330

/-! ## A262349.P13499886569489097582

`∑{d}[A192127(n), #]`
-/

namespace A262349.P13499886569489097582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192127 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A262349.P13499886569489097582

/-! ## A262349.P16020467270404104488

`∑{d}[A192128(n), #]`
-/

namespace A262349.P16020467270404104488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192128 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A262349.P16020467270404104488

/-! ## A262349.P6736746323902831981

`∑{d}[A192867(n), #]`
-/

namespace A262349.P6736746323902831981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192867 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A262349.P6736746323902831981

/-! ## A262349.P4814223634053069493

`∑{d}[A287260(n), #]`
-/

namespace A262349.P4814223634053069493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287260 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A262349.P4814223634053069493

/-!
# A262350: a(1) = 2. For n>1, let s denote the binary string of a(n-1) with the leftmost 1 and following consecutive 0's removed. Then a(n) is the smallest prime not yet present whose binary representation begins with s.

The programs for A262350, there is no canonical definition to state claims against.
-/

/-! ## A262350.P9564532483863146107

`p?[A316885(n+1)-A316896(3*(n+1))]`
-/

namespace A262350.P9564532483863146107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316885 (n + 1) - A316896 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262350.P9564532483863146107

/-! ## A262350.P8596900724156703707

`A350179(lcm(A099884(n), A147485(n+1)))`
-/

namespace A262350.P8596900724156703707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350179 (Int.lcm (A099884 n) (A147485 (n + 1)))

end

end A262350.P8596900724156703707

/-!
# A262351: Sum of the parts in the partitions of n into exactly two squarefree parts.

The programs for A262351, there is no canonical definition to state claims against.
-/

/-! ## A262351.P2096184182993145320

`(n+1)*A071068(n+1)`
-/

namespace A262351.P2096184182993145320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A071068 (n + 1)

end

end A262351.P2096184182993145320

/-! ## A262351.P12424922182982432782

`(n+1)*ceil(A098235(n+1)/2)`
-/

namespace A262351.P12424922182982432782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈(A098235 (n + 1) : ℚ) / 2⌉

end

end A262351.P12424922182982432782

/-! ## A262351.P3742297017486723445

`A261985(n+1)+A261927(n+1)`
-/

namespace A262351.P3742297017486723445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261985 (n + 1) + A261927 (n + 1)

end

end A262351.P3742297017486723445

/-! ## A262351.P2247328662215036042

`(n+1)*A110654(A098235(n+1))`
-/

namespace A262351.P2247328662215036042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A110654 (A098235 (n + 1)).toNat

end

end A262351.P2247328662215036042

/-! ## A262351.P7891108558659707998

`(n+1)*A004526(A098235(n+1)+1)`
-/

namespace A262351.P7891108558659707998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004526 (A098235 (n + 1) + 1).toNat

end

end A262351.P7891108558659707998

/-! ## A262351.P7664487501966308831

`floor(A071068(n+1)/acot(A000027(n+1)))`
-/

namespace A262351.P7664487501966308831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A071068 (n + 1) : ℝ) / SequenceMachineLib.acot (A000027 (n + 1) : ℝ)⌋

end

end A262351.P7664487501966308831

/-! ## A262351.P4972123614508429943

`A071068(A080513(2*n))*A080513(2*n)`
-/

namespace A262351.P4972123614508429943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071068 (A080513 (2 * n)).toNat * A080513 (2 * n)

end

end A262351.P4972123614508429943

/-! ## A262351.P2756367040664926424

`(n+1)*(A098235(n+1)-A098236(n+1))`
-/

namespace A262351.P2756367040664926424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A098235 (n + 1) - A098236 (n + 1))

end

end A262351.P2756367040664926424

/-!
# A262352: a(n) = Sum_{k=0..n} (-1)^k*floor(k^(1/4)).

The programs for A262352, the canonical program `A262352.P2782104960793938701` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262352 has offset 0).

The definition of A262352 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262352.P2782104960793938701

`floor(n^(1/4))*(-1)^n/2-((-1)^(floor(n^(1/4))+1)+1)/4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A262352

/-- `floor(n^(1/4))*(-1)^n/2-((-1)^(floor(n^(1/4))+1)+1)/4` -/
def P2782104960793938701.Spec : Prop :=
  ∀ n, P2782104960793938701.a n = (A262352 n : ℚ)

end A262352

/-! ## A262352.P2236355102760107101

`∑[A033999(n)*A255270(n)]`
-/

namespace A262352.P2236355102760107101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A255270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262352.P2236355102760107101

namespace A262352

/-- `∑[A033999(n)*A255270(n)]` -/
def P2236355102760107101.Spec : Prop :=
  ∀ n, P2236355102760107101.a n = A262352 n

end A262352

/-! ## A262352.P15493181364122859572

`∑[A000196(A000196(n))*A033999(n)]`
-/

namespace A262352.P15493181364122859572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000196 n).toNat * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262352.P15493181364122859572

namespace A262352

/-- `∑[A000196(A000196(n))*A033999(n)]` -/
def P15493181364122859572.Spec : Prop :=
  ∀ n, P15493181364122859572.a n = A262352 n

end A262352

/-! ## A262352.P10595945289655637252

`∑[(n-A014681(n))*A000196(A000196(n))]`
-/

namespace A262352.P10595945289655637252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A014681 n) * A000196 (A000196 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262352.P10595945289655637252

namespace A262352

/-- `∑[(n-A014681(n))*A000196(A000196(n))]` -/
def P10595945289655637252.Spec : Prop :=
  ∀ n, P10595945289655637252.a n = A262352 n

end A262352

/-! ## A262352.P1189549027411943010

`∑[A000196(A000196(n))/A033999(n+2)]`
-/

namespace A262352.P1189549027411943010
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000196 (A000196 n).toNat : ℚ) / (A033999 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262352.P1189549027411943010

namespace A262352

/-- `∑[A000196(A000196(n))/A033999(n+2)]` -/
def P1189549027411943010.Spec : Prop :=
  ∀ n, P1189549027411943010.a n = (A262352 n : ℚ)

end A262352

/-! ## A262352.P16631259607717261226

`A270370(A382108(n))`
-/

namespace A262352.P16631259607717261226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270370 (A382108 n).toNat

end

end A262352.P16631259607717261226

namespace A262352

/-- `A270370(A382108(n))` -/
def P16631259607717261226.Spec : Prop :=
  ∀ n, P16631259607717261226.a n = A262352 n

end A262352

/-!
# A262353: a(n) = ceiling((3-sqrt(5))*10^(2*n+1)).

The programs for A262353, the canonical program `A262353.P5551208321174375410` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262353 has offset 0).

The definition of A262353 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((3-sqrt(5))*10^(2*n+1))` (program `A262353.P5551208321174375410`, by `A262353.P5551208321174375410.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A262353.P5551208321174375410

`ceil((3-sqrt(5))*10^(2*n+1))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A262353

/-- `ceil((3-sqrt(5))*10^(2*n+1))` -/
def P5551208321174375410.Spec : Prop :=
  ∀ n, P5551208321174375410.a n = A262353 n

theorem P5551208321174375410.correct : P5551208321174375410.Spec := by
  intro n
  simp only [A262353]

end A262353

/-!
# A262354: a(n) is the number of 2 X 2 matrices over Z_p with determinant in {1,-1} where p = prime(n).

The programs for A262354, the canonical program `A262354.P4317031643290507164` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262354 has offset 1).

The definition of A262354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262354.P4955044182003349874

`A040002(n)*A127918(n+1)`
-/

namespace A262354.P4955044182003349874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n * A127918 (n + 1)

end

end A262354.P4955044182003349874

namespace A262354

/-- `A040002(n)*A127918(n+1)` -/
def P4955044182003349874.Spec : Prop :=
  ∀ n, P4955044182003349874.a n = A262354 (n + 1)

end A262354

/-! ## A262354.P12051404534454426337

`A040006(n)*A127919(n+1)`
-/

namespace A262354.P12051404534454426337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 n * A127919 (n + 1)

end

end A262354.P12051404534454426337

namespace A262354

/-- `A040006(n)*A127919(n+1)` -/
def P12051404534454426337.Spec : Prop :=
  ∀ n, P12051404534454426337.a n = A262354 (n + 1)

end A262354

/-! ## A262354.P8529399796647736720

`A040030(n)*A127920(n+1)`
-/

namespace A262354.P8529399796647736720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040030 n * A127920 (n + 1)

end

end A262354.P8529399796647736720

namespace A262354

/-- `A040030(n)*A127920(n+1)` -/
def P8529399796647736720.Spec : Prop :=
  ∀ n, P8529399796647736720.a n = A262354 (n + 1)

end A262354

/-! ## A262354.P8901299656342523413

`A117762(n+1)*A123932(n)`
-/

namespace A262354.P8901299656342523413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117762 (n + 1) * A123932 n

end

end A262354.P8901299656342523413

namespace A262354

/-- `A117762(n+1)*A123932(n)` -/
def P8901299656342523413.Spec : Prop :=
  ∀ n, P8901299656342523413.a n = A262354 (n + 1)

end A262354

/-! ## A262354.P9411684247961433200

`A244509(n+1)/A130290(n+1)`
-/

namespace A262354.P9411684247961433200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244509 (n + 1) : ℚ) / (A130290 (n + 1) : ℚ)

end

end A262354.P9411684247961433200

namespace A262354

/-- `A244509(n+1)/A130290(n+1)` -/
def P9411684247961433200.Spec : Prop :=
  ∀ n, P9411684247961433200.a n = (A262354 (n + 1) : ℚ)

end A262354

/-! ## A262354.P4317031643290507164

`gcd(A138404(n+1), A244509(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A262354

/-- `gcd(A138404(n+1), A244509(n+1))` -/
def P4317031643290507164.Spec : Prop :=
  ∀ n, (P4317031643290507164.a n : ℤ) = A262354 (n + 1)

theorem P4317031643290507164.correct : P4317031643290507164.Spec := by
  intro n
  simp only [A262354, Nat.add_sub_cancel]

end A262354

/-! ## A262354.P15225520886378319899

`A127917(n+1)²/A117762(n+1)`
-/

namespace A262354.P15225520886378319899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127917 (n + 1) ^ 2 : ℚ) / (A117762 (n + 1) : ℚ)

end

end A262354.P15225520886378319899

namespace A262354

/-- `A127917(n+1)²/A117762(n+1)` -/
def P15225520886378319899.Spec : Prop :=
  ∀ n, P15225520886378319899.a n = (A262354 (n + 1) : ℚ)

end A262354

/-! ## A262354.P3334868811750032063

`2*A065430(A000040(n+1))`
-/

namespace A262354.P3334868811750032063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065430 (A000040 (n + 1)).toNat

end

end A262354.P3334868811750032063

namespace A262354

/-- `2*A065430(A000040(n+1))` -/
def P3334868811750032063.Spec : Prop :=
  ∀ n, P3334868811750032063.a n = A262354 (n + 1)

end A262354

/-!
# A262357: Number of ordered ways to write n as w^2 + x^2 + y^2 + z^2 with w^2*x^2 + 5*x^2*y^2 + 80*y^2*z^2 + 20*z^2*w^2 a square, where w is a positive integer and x,y,z are nonnegative integers.

The programs for A262357, there is no canonical definition to state claims against.
-/

/-! ## A262357.P2866844586947912195

`A001222(A255748(n+1)+p?[A007318(n)])`
-/

namespace A262357.P2866844586947912195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A255748 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A262357.P2866844586947912195

/-!
# A262360: Fixed points of A262356 and of A262358.

The programs for A262360, there is no canonical definition to state claims against.
-/

/-! ## A262360.P11584370253372475489

`record[gcd(n²+n, A147820(n+1))]`
-/

namespace A262360.P11584370253372475489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 + n : ℤ) (A147820 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262360.P11584370253372475489

/-! ## A262360.P10842555915142445853

`record[(n+1)*A351241(n+5)%4]`
-/

namespace A262360.P10842555915142445853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A351241 (n + 5)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262360.P10842555915142445853

/-! ## A262360.P5354751390011290421

`A088185(A151766(n+1))`
-/

namespace A262360.P5354751390011290421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088185 (A151766 (n + 1)).toNat

end

end A262360.P5354751390011290421

/-! ## A262360.P16135010175649608590

`A056239(2*A271482(n))`
-/

namespace A262360.P16135010175649608590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (2 * A271482 n).toNat

end

end A262360.P16135010175649608590

/-! ## A262360.P5007672893519868789

`A003266(A061674(n))+n`
-/

namespace A262360.P5007672893519868789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003266 (A061674 n).toNat + (n : ℤ)

end

end A262360.P5007672893519868789

/-!
# A262361: a(n) = L(L(L(n))), where L(n) are Lucas numbers A000032.

The programs for A262361, there is no canonical definition to state claims against.
-/

/-! ## A262361.P8450441400402079746

`A005371(A000032(n))`
-/

namespace A262361.P8450441400402079746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005371 (A000032 n).toNat

end

end A262361.P8450441400402079746

/-!
# A262363: Primes in A262356.

The programs for A262363, there is no canonical definition to state claims against.
-/

/-! ## A262363.P4689841463374438811

`A262356(A262371(n+1))`
-/

namespace A262363.P4689841463374438811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262356 (A262371 (n + 1)).toNat

end

end A262363.P4689841463374438811

/-! ## A262363.P1401773353002908277

`p?[A262356(n+1)]`
-/

namespace A262363.P1401773353002908277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262363.P1401773353002908277

/-! ## A262363.P7091800520796621224

`filter[A262356(n+1), A010051(#)]`
-/

namespace A262363.P7091800520796621224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A262363.P7091800520796621224

/-! ## A262363.P741707658198429592

`filter[A262356(n+2), A080339(#)]`
-/

namespace A262363.P741707658198429592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262356 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A262363.P741707658198429592

/-! ## A262363.P16510442523353235878

`A073350(A055931(n+1))`
-/

namespace A262363.P16510442523353235878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073350 (A055931 (n + 1)).toNat

end

end A262363.P16510442523353235878

/-!
# A262364: Expansion of Product_{k>=1} (1-x^(5*k))/(1-x^(2*k)).

The programs for A262364, there is no canonical definition to state claims against.
-/

/-! ## A262364.P7688045262629721552

`A109389(3*n)-A000035(A104576(2*n+1))`
-/

namespace A262364.P7688045262629721552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109389 (3 * n) - A000035 (A104576 (2 * n + 1)).toNat

end

end A262364.P7688045262629721552

/-! ## A262364.P13385115679080941982

`A027636(n)-A004216(A027611(n+1))`
-/

namespace A262364.P13385115679080941982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027636 n - A004216 (A027611 (n + 1)).toNat

end

end A262364.P13385115679080941982

/-!
# A262366: a(n) is the n-th prime whose binary expansion begins with the binary expansion of n.

The programs for A262366, there is no canonical definition to state claims against.
-/

/-! ## A262366.P12452791719028536618

`A262365(∑[4*n]+1)`
-/

namespace A262366.P12452791719028536618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262365 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A262366.P12452791719028536618

/-! ## A262366.P14266682466775589768

`A000027(A262365(n²+(n+1)²))`
-/

namespace A262366.P14266682466775589768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A262365 (n ^ 2 + (n + 1) ^ 2)).toNat

end

end A262366.P14266682466775589768

/-! ## A262366.P8966460002728954913

`A262365((n+1)²+n²)%A275163(n)`
-/

namespace A262366.P8966460002728954913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262365 ((n + 1) ^ 2 + n ^ 2)) (A275163 n)

end

end A262366.P8966460002728954913

/-! ## A262366.P16296665089570360530

`A007318(C(3, n))*A262365(A001844(n))`
-/

namespace A262366.P16296665089570360530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A262365 (A001844 n).toNat

end

end A262366.P16296665089570360530

/-! ## A262366.P2852999610268404040

`A007318(floor(1/(n+1)))*A262365(A001844(n))`
-/

namespace A262366.P2852999610268404040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊1 / (n + 1 : ℚ)⌋.toNat * A262365 (A001844 n).toNat

end

end A262366.P2852999610268404040

/-!
# A262367: Fixed points of permutations A262323 and A262255.

The programs for A262367, there is no canonical definition to state claims against.
-/

/-! ## A262367.P8191862956771465845

`eq[n, A262323(A028310(n))]`
-/

namespace A262367.P8191862956771465845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262323 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A262367.P8191862956771465845

/-!
# A262368: Expansion of f(x^2, x^2) * f(x, x^2)^2 in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A262368, there is no canonical definition to state claims against.
-/

/-! ## A262368.P3101301197792593854

`A261426(4*n)`
-/

namespace A262368.P3101301197792593854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261426 (4 * n)

end

end A262368.P3101301197792593854

/-! ## A262368.P14094467966614189401

`A263433(2*n)`
-/

namespace A262368.P14094467966614189401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263433 (2 * n)

end

end A262368.P14094467966614189401

/-! ## A262368.P16498121293161673152

`A263433(n+n)+A069847(A251557(n+1))`
-/

namespace A262368.P16498121293161673152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263433 (n + n) + A069847 (A251557 (n + 1)).toNat

end

end A262368.P16498121293161673152

/-! ## A262368.P14565946770505177475

`A261444(8*n)`
-/

namespace A262368.P14565946770505177475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261444 (8 * n)

end

end A262368.P14565946770505177475

/-! ## A262368.P1700003875917191722

`A263527(8*n)`
-/

namespace A262368.P1700003875917191722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263527 (8 * n)

end

end A262368.P1700003875917191722

/-! ## A262368.P13745950436270692557

`A329957(8*n)`
-/

namespace A262368.P13745950436270692557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329957 (8 * n)

end

end A262368.P13745950436270692557

/-! ## A262368.P5624917727896354092

`A213624(9*n)`
-/

namespace A262368.P5624917727896354092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213624 (9 * n)

end

end A262368.P5624917727896354092

/-! ## A262368.P13027935204299820546

`abs(A246833(9*n))`
-/

namespace A262368.P13027935204299820546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A246833 (9 * n)|

end

end A262368.P13027935204299820546

/-! ## A262368.P5233316614967387059

`A045832(12*n+1)`
-/

namespace A262368.P5233316614967387059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045832 (12 * n + 1)

end

end A262368.P5233316614967387059

/-! ## A262368.P5338208454776751107

`A263444(A017545(2*n))`
-/

namespace A262368.P5338208454776751107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263444 (A017545 (2 * n)).toNat

end

end A262368.P5338208454776751107

/-! ## A262368.P10344445126921511526

`A263444(A017545(n)+A017545(n)-2)`
-/

namespace A262368.P10344445126921511526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263444 (A017545 n + (A017545 n - 2)).toNat

end

end A262368.P10344445126921511526

/-! ## A262368.P12808676694022655557

`A263444(A017545(n)-(2-A017545(n)))`
-/

namespace A262368.P12808676694022655557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263444 (A017545 n - (2 - A017545 n)).toNat

end

end A262368.P12808676694022655557

/-! ## A262368.P10858395089941436930

`A000196(A263433(n+n)²)`
-/

namespace A262368.P10858395089941436930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A263433 (n + n) ^ 2).toNat

end

end A262368.P10858395089941436930

/-!
# A262371: Positions of prime numbers in A262356.

The programs for A262371, there is no canonical definition to state claims against.
-/

/-! ## A262371.P15686610847341429976

`A262358(A262363(n+1))`
-/

namespace A262371.P15686610847341429976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262358 (A262363 (n + 1)).toNat

end

end A262371.P15686610847341429976

/-! ## A262371.P17656874983637626243

`A262358(p?[A262356(n+1)])`
-/

namespace A262371.P17656874983637626243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262358 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A262371.P17656874983637626243

/-! ## A262371.P2303193900490994338

`A217721(A217685(n+1))+A217689(n+1)`
-/

namespace A262371.P2303193900490994338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217721 (A217685 (n + 1)).toNat + A217689 (n + 1)

end

end A262371.P2303193900490994338

/-! ## A262371.P12188817655103413112

`eq[A187360(n+1), A292108(A226290(n+4))]`
-/

namespace A262371.P12188817655103413112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292108 (A226290 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A262371.P12188817655103413112

/-! ## A262371.P1637665362356221289

`A107631(A225377(n+1))`
-/

namespace A262371.P1637665362356221289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107631 (A225377 (n + 1)).toNat

end

end A262371.P1637665362356221289

/-!
# A262372: Number T(n,k) of ordered pairs (p,q) of permutations of [n] with equal up-down signatures and p(1)=q(1)=k if n>0; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A262372, there is no canonical definition to state claims against.
-/

/-! ## A262372.P8853011584231056764

`A228351(A038202(n+4))*A333213(n)`
-/

namespace A262372.P8853011584231056764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228351 (A038202 (n + 4)).toNat * A333213 n

end

end A262372.P8853011584231056764

/-! ## A262372.P7117940349553288558

`A165453(A266886(n+1)!*A084938(n))`
-/

namespace A262372.P7117940349553288558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165453 ((Nat.factorial (A266886 (n + 1)).toNat : ℤ) * A084938 n).toNat

end

end A262372.P7117940349553288558

/-! ## A262372.P9827032858119649020

`A165453(lcm(A266886(n+1)!, A084938(n)))`
-/

namespace A262372.P9827032858119649020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165453 (Int.lcm (Nat.factorial (A266886 (n + 1)).toNat : ℤ) (A084938 n))

end

end A262372.P9827032858119649020

/-! ## A262372.P12932031232071062762

`A165453(A165490(n))%A165467(2*(n+2))`
-/

namespace A262372.P12932031232071062762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165453 (A165490 n).toNat) (A165467 (2 * (n + 2)))

end

end A262372.P12932031232071062762

/-!
# A262374: a(1) = 1; for n > 1, let s denote the binary representation of a(n-1) with the first bit omitted. Then a(n) is the smallest number not yet present whose binary representation starts with s, omitting leading zeros.

The programs for A262374, there is no canonical definition to state claims against.
-/

/-! ## A262374.P16010529542010851268

`A068505(A262381(n+1))`
-/

namespace A262374.P16010529542010851268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (A262381 (n + 1)).toNat

end

end A262374.P16010529542010851268

/-!
# A262375: Smallest prime factor of 4*n! - 1.

The programs for A262375, there is no canonical definition to state claims against.
-/

/-! ## A262375.P3992022149254639937

`A090368(2*n!)`
-/

namespace A262375.P3992022149254639937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (2 * Nat.factorial n)

end

end A262375.P3992022149254639937

/-! ## A262375.P3594643114583225135

`A102457(4*n!)`
-/

namespace A262375.P3594643114583225135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102457 (4 * Nat.factorial n)

end

end A262375.P3594643114583225135

/-! ## A262375.P16597541107127243581

`A079879(4*n!-1)`
-/

namespace A262375.P16597541107127243581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079879 (4 * Nat.factorial n - 1)

end

end A262375.P16597541107127243581

/-!
# A262376: a(n) = Sum_{k=0..n} (k! - k).

The programs for A262376, the canonical program `A262376.P17778025391810916089` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262376 has offset 0).

The definition of A262376 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262376.P17778025391810916089

`A003422(n+1)-A000217(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A262376

/-- `A003422(n+1)-A000217(n)` -/
def P17778025391810916089.Spec : Prop :=
  ∀ n, P17778025391810916089.a n = A262376 n

theorem P17778025391810916089.correct : P17778025391810916089.Spec := by
  intro n
  simp only [A262376]

end A262376

/-! ## A262376.P12012090063853516844

`∑[n!-n]`
-/

namespace A262376.P12012090063853516844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262376.P12012090063853516844

namespace A262376

/-- `∑[n!-n]` -/
def P12012090063853516844.Spec : Prop :=
  ∀ n, P12012090063853516844.a n = A262376 n

end A262376

/-! ## A262376.P17645208379094263816

`∑[∏[round(1/acot(n))]-n]`
-/

namespace A262376.P17645208379094263816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262376.P17645208379094263816

namespace A262376

/-- `∑[∏[round(1/acot(n))]-n]` -/
def P17645208379094263816.Spec : Prop :=
  ∀ n, P17645208379094263816.a n = A262376 n

end A262376

/-! ## A262376.P4832093147166706545

`∑[∏[ceil(abs(γ-n))]-n]`
-/

namespace A262376.P4832093147166706545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262376.P4832093147166706545

namespace A262376

/-- `∑[∏[ceil(abs(γ-n))]-n]` -/
def P4832093147166706545.Spec : Prop :=
  ∀ n, P4832093147166706545.a n = A262376 n

end A262376

/-! ## A262376.P15459097054391162754

`a(n-1)+n!-n` with `a(0)=1`
-/

namespace A262376.P15459097054391162754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((Nat.factorial n : ℤ) - (n : ℤ))

end

end A262376.P15459097054391162754

namespace A262376

/-- `a(n-1)+n!-n` -/
def P15459097054391162754.Spec : Prop :=
  ∀ n, P15459097054391162754.a n = A262376 n

end A262376

/-! ## A262376.P6242531616249284062

`a(n-1)-(n-n!)` with `a(0)=1`
-/

namespace A262376.P6242531616249284062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ((n : ℤ) - (Nat.factorial n : ℤ))

end

end A262376.P6242531616249284062

namespace A262376

/-- `a(n-1)-(n-n!)` -/
def P6242531616249284062.Spec : Prop :=
  ∀ n, P6242531616249284062.a n = A262376 n

end A262376

/-! ## A262376.P8121310800962892741

`∑[n*a(n-1)]-∑[n]` with `a(0)=1`
-/

namespace A262376.P8121310800962892741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  n * f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A262376.P8121310800962892741

namespace A262376

/-- `∑[n*a(n-1)]-∑[n]` -/
def P8121310800962892741.Spec : Prop :=
  ∀ n, P8121310800962892741.a n = A262376 n

end A262376

/-! ## A262376.P17554033385371539212

`∑[a(n-1)/n^(-1)]-∑[n]` with `a(0)=1`
-/

namespace A262376.P17554033385371539212
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / (n : ℚ) ^ (-1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A262376.P17554033385371539212

namespace A262376

/-- `∑[a(n-1)/n^(-1)]-∑[n]` -/
def P17554033385371539212.Spec : Prop :=
  ∀ n, P17554033385371539212.a n = (A262376 n : ℚ)

end A262376

/-! ## A262376.P3224871630756375059

`A143122(∑[n])-∑[n]`
-/

namespace A262376.P3224871630756375059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143122 (∑ j ∈ Finset.range (n + 1), f1 j) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A262376.P3224871630756375059

namespace A262376

/-- `A143122(∑[n])-∑[n]` -/
def P3224871630756375059.Spec : Prop :=
  ∀ n, P3224871630756375059.a n = A262376 n

end A262376

/-! ## A262376.P11103431387660515972

`A005096(n)+a(n-1)` with `a(0)=1`
-/

namespace A262376.P11103431387660515972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005096 n + a (n - 1)

end

end A262376.P11103431387660515972

namespace A262376

/-- `A005096(n)+a(n-1)` -/
def P11103431387660515972.Spec : Prop :=
  ∀ n, P11103431387660515972.a n = A262376 n

end A262376

/-!
# A262377: Primes in A262358.

The programs for A262377, there is no canonical definition to state claims against.
-/

/-! ## A262377.P5464078660856077042

`p?[A262358(n+1)]`
-/

namespace A262377.P5464078660856077042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262377.P5464078660856077042

/-! ## A262377.P16695601562264295694

`A262358(A262378(n+1))`
-/

namespace A262377.P16695601562264295694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262358 (A262378 (n + 1)).toNat

end

end A262377.P16695601562264295694

/-! ## A262377.P647515250198594560

`filter[A262358(n+1), A010051(#)]`
-/

namespace A262377.P647515250198594560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A262377.P647515250198594560

/-! ## A262377.P17421677058468245607

`filter[A262358(n+2), A080339(#)]`
-/

namespace A262377.P17421677058468245607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262358 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A262377.P17421677058468245607

/-! ## A262377.P3454529748016374368

`eq[A003415(n), A140213(A152079(3*n+1))]`
-/

namespace A262377.P3454529748016374368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140213 (A152079 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A262377.P3454529748016374368

/-!
# A262378: Positions of prime numbers in A262358.

The programs for A262378, there is no canonical definition to state claims against.
-/

/-! ## A262378.P5995351854151646415

`A262356(A262377(n+1))`
-/

namespace A262378.P5995351854151646415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262356 (A262377 (n + 1)).toNat

end

end A262378.P5995351854151646415

/-! ## A262378.P5423452588514992077

`A262356(p?[A262358(n+1)])`
-/

namespace A262378.P5423452588514992077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262356 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A262378.P5423452588514992077

/-! ## A262378.P11640033400600524896

`A262356(filter[A262358(n+2), A080339(#)])`
-/

namespace A262378.P11640033400600524896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262358 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262356 (f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)).toNat

end

end A262378.P11640033400600524896

/-!
# A262379: Number of ordered pairs (p,q) of permutations of [2n] with equal up-down signatures and p(1)=q(1)=n.

The programs for A262379, there is no canonical definition to state claims against.
-/

/-! ## A262379.P17755815888715593692

`A262372(∑[4*n])`
-/

namespace A262379.P17755815888715593692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A262379.P17755815888715593692

/-! ## A262379.P12958433007183558180

`A007318(C(2, n))*A262372(A046092(n))`
-/

namespace A262379.P12958433007183558180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A262372 (A046092 n).toNat

end

end A262379.P12958433007183558180

/-! ## A262379.P9893672085410546204

`A000203(gcd(n, n+1))*A262372(A046092(n))`
-/

namespace A262379.P9893672085410546204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.gcd n (n + 1)) * A262372 (A046092 n).toNat

end

end A262379.P9893672085410546204

/-! ## A262379.P10496859999541028162

`A007318(((-1)^n)²)*A262372(A046092(n))`
-/

namespace A262379.P10496859999541028162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (((-1) ^ n) ^ 2).toNat * A262372 (A046092 n).toNat

end

end A262379.P10496859999541028162

/-! ## A262379.P6020745617606961290

`A001221(3-or(n, -2))*A262372(A046092(n))`
-/

namespace A262379.P6020745617606961290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (3 - Int.lor (n : ℤ) (-2)).toNat * A262372 (A046092 n).toNat

end

end A262379.P6020745617606961290

/-!
# A262380: Expansion of Product_{k>=1} 1/((1+x^k)*(1-x^k)^4).

The programs for A262380, there is no canonical definition to state claims against.
-/

/-! ## A262380.P6969339757895044951

`∑[A183567(3*n+2)%A005344(n+1)]`
-/

namespace A262380.P6969339757895044951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183567 (3 * n + 2 + 10)) (A005344 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262380.P6969339757895044951

/-! ## A262380.P12186786624251359557

`∑[A183567(3*n+2)]%A195684(3*n+2)`
-/

namespace A262380.P12186786624251359557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183567 (3 * n + 2 + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A195684 (3 * n + 2))

end

end A262380.P12186786624251359557

/-! ## A262380.P440395384441531855

`A086080(A002295(n))+A064173(3*n+2)`
-/

namespace A262380.P440395384441531855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086080 (A002295 n).toNat + A064173 (3 * n + 2)

end

end A262380.P440395384441531855

/-!
# A262381: A262374 written in base 2.

The programs for A262381, there is no canonical definition to state claims against.
-/

/-! ## A262381.P4212664887205210738

`A007088(A262374(n+1))`
-/

namespace A262381.P4212664887205210738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A262374 (n + 1)).toNat

end

end A262381.P4212664887205210738

/-! ## A262381.P8437180609473030823

`A185544(2*A262374(n+1))`
-/

namespace A262381.P8437180609473030823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A262374 (n + 1)).toNat

end

end A262381.P8437180609473030823

/-! ## A262381.P3342679232370004528

`A115846(lcm(A185974(n), A262388(n+1)))`
-/

namespace A262381.P3342679232370004528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115846 (Int.lcm (A185974 n) (A262388 (n + 1)))

end

end A262381.P3342679232370004528

/-! ## A262381.P15366753700195694370

`A115846(and(A185974(n), A203966(n+1)))`
-/

namespace A262381.P15366753700195694370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115846 (Int.land (A185974 n) (A203966 (n + 1))).toNat

end

end A262381.P15366753700195694370

/-! ## A262381.P4659757068775687319

`A115846(and(A203966(n+1), A262388(n+1)))`
-/

namespace A262381.P4659757068775687319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115846 (Int.land (A203966 (n + 1)) (A262388 (n + 1))).toNat

end

end A262381.P4659757068775687319

/-!
# A262389: Numbers whose last digit is composite.

The programs for A262389, the canonical program `A262389.P16715488790439287143` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262389 has offset 1).

The definition of A262389 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262389.P16715488790439287143

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=4, a(1)=6, a(2)=8, a(3)=9, a(4)=14`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A262389

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P16715488790439287143.Spec : Prop :=
  ∀ n, P16715488790439287143.a n = A262389 (n + 1)

theorem P16715488790439287143.correct : P16715488790439287143.Spec := by
  intro n
  simp only [A262389, Nat.add_sub_cancel]

end A262389

/-! ## A262389.P17111888731143989614

`a(n-4)+10` with `a(0)=4, a(1)=6, a(2)=8, a(3)=9`
-/

namespace A262389.P17111888731143989614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 6, 8, 9] fun n a =>
  a (n - 4) + 10

end

end A262389.P17111888731143989614

namespace A262389

/-- `a(n-4)+10` -/
def P17111888731143989614.Spec : Prop :=
  ∀ n, (P17111888731143989614.a n : ℤ) = A262389 (n + 1)

end A262389

/-! ## A262389.P5117381792781424475

`record[xor(4, n)]+∑[∑[n]%2]`
-/

namespace A262389.P5117381792781424475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A262389.P5117381792781424475

namespace A262389

/-- `record[xor(4, n)]+∑[∑[n]%2]` -/
def P5117381792781424475.Spec : Prop :=
  ∀ n, (P5117381792781424475.a n : ℤ) = A262389 (n + 1)

end A262389

/-! ## A262389.P18202809680168510832

`∑[abs(a(n-4))]` with `a(0)=4, a(1)=2, a(2)=2, a(3)=1, a(4)=5`
-/

namespace A262389.P18202809680168510832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 2, 2, 1, 5] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262389.P18202809680168510832

namespace A262389

/-- `∑[abs(a(n-4))]` -/
def P18202809680168510832.Spec : Prop :=
  ∀ n, (P18202809680168510832.a n : ℤ) = A262389 (n + 1)

end A262389

/-! ## A262389.P11007626970514879577

`∑[floor(a(n-4))]` with `a(0)=4, a(1)=2, a(2)=2, a(3)=1, a(4)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A262389.P11007626970514879577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 2, 2, 1, 5] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262389.P11007626970514879577

namespace A262389

/-- `∑[floor(a(n-4))]` -/
def P11007626970514879577.Spec : Prop :=
  ∀ n, (P11007626970514879577.a n : ℤ) = A262389 (n + 1)

end A262389

/-! ## A262389.P5304392720979732626

`∑[a(n-4)%6]` with `a(0)=4, a(1)=2, a(2)=2, a(3)=1, a(4)=5`
-/

namespace A262389.P5304392720979732626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 2, 2, 1, 5] fun n f1 =>
  f1 (n - 4) % 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262389.P5304392720979732626

namespace A262389

/-- `∑[a(n-4)%6]` -/
def P5304392720979732626.Spec : Prop :=
  ∀ n, (P5304392720979732626.a n : ℤ) = A262389 (n + 1)

end A262389

/-! ## A262389.P17379279561088630273

`∑[∑[A228826(n)]²]+n`
-/

namespace A262389.P17379279561088630273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228826 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A262389.P17379279561088630273

namespace A262389

/-- `∑[∑[A228826(n)]²]+n` -/
def P17379279561088630273.Spec : Prop :=
  ∀ n, P17379279561088630273.a n = A262389 (n + 1)

end A262389

/-! ## A262389.P299123134939129006

`∑[A000041(a(n%4))]` with `a(0)=4, a(1)=2, a(2)=2, a(3)=1`
-/

namespace A262389.P299123134939129006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 2, 2, 1] fun n f1 =>
  A000041 (f1 (n % 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262389.P299123134939129006

namespace A262389

/-- `∑[A000041(a(n%4))]` -/
def P299123134939129006.Spec : Prop :=
  ∀ n, P299123134939129006.a n = A262389 (n + 1)

end A262389

/-! ## A262389.P14991908163612143393

`∑[A000045(and(3, 3-n))²]+n`
-/

namespace A262389.P14991908163612143393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 3 (3 - (n : ℤ))).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A262389.P14991908163612143393

namespace A262389

/-- `∑[A000045(and(3, 3-n))²]+n` -/
def P14991908163612143393.Spec : Prop :=
  ∀ n, P14991908163612143393.a n = A262389 (n + 1)

end A262389

/-! ## A262389.P2403205776592505469

`A047582(n+1)+A008619(n)`
-/

namespace A262389.P2403205776592505469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047582 (n + 1) + A008619 n

end

end A262389.P2403205776592505469

namespace A262389

/-- `A047582(n+1)+A008619(n)` -/
def P2403205776592505469.Spec : Prop :=
  ∀ n, P2403205776592505469.a n = A262389 (n + 1)

end A262389

/-! ## A262389.P5736297200896878575

`A130731(n)+A047204(n+1)`
-/

namespace A262389.P5736297200896878575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130731 n + A047204 (n + 1)

end

end A262389.P5736297200896878575

namespace A262389

/-- `A130731(n)+A047204(n+1)` -/
def P5736297200896878575.Spec : Prop :=
  ∀ n, P5736297200896878575.a n = A262389 (n + 1)

end A262389

/-! ## A262389.P360315373099721197

`∪[A254755(n+1), A016897(n)]`
-/

namespace A262389.P360315373099721197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A262389.P360315373099721197

namespace A262389

/-- `∪[A254755(n+1), A016897(n)]` -/
def P360315373099721197.Spec : Prop :=
  ∀ n, (P360315373099721197.a n : ℤ) = A262389 (n + 1)

end A262389

/-! ## A262389.P6936036439757837749

`∪[A254755(n+1), A017377(n)]`
-/

namespace A262389.P6936036439757837749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A262389.P6936036439757837749

namespace A262389

/-- `∪[A254755(n+1), A017377(n)]` -/
def P6936036439757837749.Spec : Prop :=
  ∀ n, (P6936036439757837749.a n : ℤ) = A262389 (n + 1)

end A262389

/-! ## A262389.P6437940275277660726

`A125758(n+1)-A047479(n+1)`
-/

namespace A262389.P6437940275277660726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125758 (n + 1) - A047479 (n + 1)

end

end A262389.P6437940275277660726

namespace A262389

/-- `A125758(n+1)-A047479(n+1)` -/
def P6437940275277660726.Spec : Prop :=
  ∀ n, P6437940275277660726.a n = A262389 (n + 1)

end A262389

/-! ## A262389.P11634241150470810219

`A130727(A130766(n))+2*n+1`
-/

namespace A262389.P11634241150470810219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130727 (A130766 n).toNat + (2 * n : ℤ) + 1

end

end A262389.P11634241150470810219

namespace A262389

/-- `A130727(A130766(n))+2*n+1` -/
def P11634241150470810219.Spec : Prop :=
  ∀ n, P11634241150470810219.a n = A262389 (n + 1)

end A262389

/-! ## A262389.P3780430004653824894

`A102302(n+7)+A047415(n+1)`
-/

namespace A262389.P3780430004653824894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102302 (n + 7) + A047415 (n + 1)

end

end A262389.P3780430004653824894

namespace A262389

/-- `A102302(n+7)+A047415(n+1)` -/
def P3780430004653824894.Spec : Prop :=
  ∀ n, P3780430004653824894.a n = A262389 (n + 1)

end A262389

/-! ## A262389.P12246824449124028261

`A047206(A047250(n+2))`
-/

namespace A262389.P12246824449124028261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047206 (A047250 (n + 2)).toNat

end

end A262389.P12246824449124028261

namespace A262389

/-- `A047206(A047250(n+2))` -/
def P12246824449124028261.Spec : Prop :=
  ∀ n, P12246824449124028261.a n = A262389 (n + 1)

end A262389

/-! ## A262389.P13356029864323135245

`A160186(A047582(n+1))`
-/

namespace A262389.P13356029864323135245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160186 (A047582 (n + 1)).toNat

end

end A262389.P13356029864323135245

namespace A262389

/-- `A160186(A047582(n+1))` -/
def P13356029864323135245.Spec : Prop :=
  ∀ n, P13356029864323135245.a n = A262389 (n + 1)

end A262389

/-! ## A262389.P11309012255625999165

`A047201(A047492(n+2))`
-/

namespace A262389.P11309012255625999165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (A047492 (n + 2)).toNat

end

end A262389.P11309012255625999165

namespace A262389

/-- `A047201(A047492(n+2))` -/
def P11309012255625999165.Spec : Prop :=
  ∀ n, P11309012255625999165.a n = A262389 (n + 1)

end A262389

/-! ## A262389.P17155469986231273977

`A047207(A047507(n+2))`
-/

namespace A262389.P17155469986231273977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047207 (A047507 (n + 2)).toNat

end

end A262389.P17155469986231273977

namespace A262389

/-- `A047207(A047507(n+2))` -/
def P17155469986231273977.Spec : Prop :=
  ∀ n, P17155469986231273977.a n = A262389 (n + 1)

end A262389

/-!
# A262390: Subsequence of terms starting with 1 in A262356.

The programs for A262390, there is no canonical definition to state claims against.
-/

/-! ## A262390.P6309084060712041512

`A262356(A262393(n+1))`
-/

namespace A262390.P6309084060712041512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262356 (A262393 (n + 1)).toNat

end

end A262390.P6309084060712041512

/-!
# A262392: a(n) = A007504(n) + A010693(n).

The programs for A262392, the canonical program `A262392.P17406529640943534344` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262392 has offset 0).

The definition of A262392 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262392.P17406529640943534344

`A007504(n)+A010693(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A262392

/-- `A007504(n)+A010693(n)` -/
def P17406529640943534344.Spec : Prop :=
  ∀ n, P17406529640943534344.a n = A262392 n

theorem P17406529640943534344.correct : P17406529640943534344.Spec := by
  intro n
  simp only [A262392]

end A262392

/-! ## A262392.P17046080415806669729

`A036439(n+1)+n%2`
-/

namespace A262392.P17046080415806669729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (n + 1) + ((n % 2 : ℕ) : ℤ)

end

end A262392.P17046080415806669729

namespace A262392

/-- `A036439(n+1)+n%2` -/
def P17046080415806669729.Spec : Prop :=
  ∀ n, P17046080415806669729.a n = A262392 n

end A262392

/-! ## A262392.P17188215370355250328

`A014686(n)+a(n-1)` with `a(0)=2`
-/

namespace A262392.P17188215370355250328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A014686 n + a (n - 1)

end

end A262392.P17188215370355250328

namespace A262392

/-- `A014686(n)+a(n-1)` -/
def P17188215370355250328.Spec : Prop :=
  ∀ n, P17188215370355250328.a n = A262392 n

end A262392

/-! ## A262392.P14763616633941773755

`A011974(n)+a(n-2)` with `a(0)=2, a(1)=5`
-/

namespace A262392.P14763616633941773755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  A011974 n + a (n - 2)

end

end A262392.P14763616633941773755

namespace A262392

/-- `A011974(n)+a(n-2)` -/
def P14763616633941773755.Spec : Prop :=
  ∀ n, P14763616633941773755.a n = A262392 n

end A262392

/-! ## A262392.P1813788462174131060

`∑[A028815(n)]-or(1, n)+1`
-/

namespace A262392.P1813788462174131060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.lor 1 n : ℤ) + 1

end

end A262392.P1813788462174131060

namespace A262392

/-- `∑[A028815(n)]-or(1, n)+1` -/
def P1813788462174131060.Spec : Prop :=
  ∀ n, P1813788462174131060.a n = A262392 n

end A262392

/-! ## A262392.P14524539781879424563

`A000040(n)+a(n-1)-(-1)^n` with `a(0)=2`
-/

namespace A262392.P14524539781879424563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 n + a (n - 1) - (-1) ^ n

end

end A262392.P14524539781879424563

namespace A262392

/-- `A000040(n)+a(n-1)-(-1)^n` -/
def P14524539781879424563.Spec : Prop :=
  ∀ n, P14524539781879424563.a n = A262392 n

end A262392

/-! ## A262392.P9764949716082419613

`A000034(n)+A007504(n)+1`
-/

namespace A262392.P9764949716082419613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + (A007504 n + 1)

end

end A262392.P9764949716082419613

namespace A262392

/-- `A000034(n)+A007504(n)+1` -/
def P9764949716082419613.Spec : Prop :=
  ∀ n, P9764949716082419613.a n = A262392 n

theorem P9764949716082419613.correct : P9764949716082419613.Spec := by
  intro n
  simp only [A262392, Nat.add_sub_cancel, A262392.P9764949716082419613.a, A262392.P17406529640943534344.a, A000034, A000034.P10773112074177680709.a, A007504, A007504.P14310834286015847203.a, A010693, A010693.P9719559114122647880.a, A014284, A014284.P18183547548072881472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A262392

/-! ## A262392.P10911921862821208708

`A014284(n+1)+A000034(n)`
-/

namespace A262392.P10911921862821208708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 1) + A000034 n

end

end A262392.P10911921862821208708

namespace A262392

/-- `A014284(n+1)+A000034(n)` -/
def P10911921862821208708.Spec : Prop :=
  ∀ n, P10911921862821208708.a n = A262392 n

theorem P10911921862821208708.correct : P10911921862821208708.Spec := by
  intro n
  simp only [A262392, Nat.add_sub_cancel, A262392.P10911921862821208708.a, A262392.P17406529640943534344.a, A000034, A000034.P10773112074177680709.a, A007504, A007504.P14310834286015847203.a, A010693, A010693.P9719559114122647880.a, A014284, A014284.P18183547548072881472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A262392

/-! ## A262392.P9733302571778442448

`A036439(n+1)+A000035(n)`
-/

namespace A262392.P9733302571778442448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (n + 1) + A000035 n

end

end A262392.P9733302571778442448

namespace A262392

/-- `A036439(n+1)+A000035(n)` -/
def P9733302571778442448.Spec : Prop :=
  ∀ n, P9733302571778442448.a n = A262392 n

end A262392

/-! ## A262392.P2979930838070281073

`A000035(n)+A007504(n)+2`
-/

namespace A262392.P2979930838070281073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (A007504 n + 2)

end

end A262392.P2979930838070281073

namespace A262392

/-- `A000035(n)+A007504(n)+2` -/
def P2979930838070281073.Spec : Prop :=
  ∀ n, P2979930838070281073.a n = A262392 n

theorem P2979930838070281073.correct : P2979930838070281073.Spec := by
  intro n
  simp only [A262392, Nat.add_sub_cancel, A262392.P2979930838070281073.a, A262392.P17406529640943534344.a, A000035, A000035.P2023072528413494694.a, A007504, A007504.P14310834286015847203.a, A010693, A010693.P9719559114122647880.a, A014284, A014284.P18183547548072881472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A262392

/-! ## A262392.P6750403380896072379

`A227547(n+1)-A059841(n)`
-/

namespace A262392.P6750403380896072379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227547 (n + 1) - A059841 n

end

end A262392.P6750403380896072379

namespace A262392

/-- `A227547(n+1)-A059841(n)` -/
def P6750403380896072379.Spec : Prop :=
  ∀ n, P6750403380896072379.a n = A262392 n

end A262392

/-! ## A262392.P14812885177439616673

`or(A007504(n)+2, A057427(n))`
-/

namespace A262392.P14812885177439616673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007504 n + 2) (A057427 n)

end

end A262392.P14812885177439616673

namespace A262392

/-- `or(A007504(n)+2, A057427(n))` -/
def P14812885177439616673.Spec : Prop :=
  ∀ n, P14812885177439616673.a n = A262392 n

end A262392

/-! ## A262392.P14965230136450224506

`∑[A165326(n)+A008578(n+1)]`
-/

namespace A262392.P14965230136450224506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n + A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262392.P14965230136450224506

namespace A262392

/-- `∑[A165326(n)+A008578(n+1)]` -/
def P14965230136450224506.Spec : Prop :=
  ∀ n, P14965230136450224506.a n = A262392 n

end A262392

/-! ## A262392.P7085308474139768223

`A007504(n)+Δ[A008619(n)]+2`
-/

namespace A262392.P7085308474139768223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n + (f1 (n + 1) - f1 n + 2)

end

end A262392.P7085308474139768223

namespace A262392

/-- `A007504(n)+Δ[A008619(n)]+2` -/
def P7085308474139768223.Spec : Prop :=
  ∀ n, P7085308474139768223.a n = A262392 n

end A262392

/-! ## A262392.P11479458954202222731

`∑[A062157(n)+A008578(n+1)]+1`
-/

namespace A262392.P11479458954202222731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n + A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A262392.P11479458954202222731

namespace A262392

/-- `∑[A062157(n)+A008578(n+1)]+1` -/
def P11479458954202222731.Spec : Prop :=
  ∀ n, P11479458954202222731.a n = A262392 n

end A262392

/-! ## A262392.P7089141343629919064

`∑[A008578(n+1)-A033999(n)]+2`
-/

namespace A262392.P7089141343629919064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A262392.P7089141343629919064

namespace A262392

/-- `∑[A008578(n+1)-A033999(n)]+2` -/
def P7089141343629919064.Spec : Prop :=
  ∀ n, P7089141343629919064.a n = A262392 n

end A262392

/-! ## A262392.P2343279682511093659

`∑[A014686(n+1)]+2-A014686(n+1)`
-/

namespace A262392.P2343279682511093659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A014686 (n + 1))

end

end A262392.P2343279682511093659

namespace A262392

/-- `∑[A014686(n+1)]+2-A014686(n+1)` -/
def P2343279682511093659.Spec : Prop :=
  ∀ n, P2343279682511093659.a n = A262392 n

end A262392

/-! ## A262392.P13063192465845566738

`A007504(n)+A020639(A020639(n+1)+1)`
-/

namespace A262392.P13063192465845566738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n + A020639 (A020639 (n + 1) + 1).toNat

end

end A262392.P13063192465845566738

namespace A262392

/-- `A007504(n)+A020639(A020639(n+1)+1)` -/
def P13063192465845566738.Spec : Prop :=
  ∀ n, P13063192465845566738.a n = A262392 n

end A262392

/-! ## A262392.P6393776764981825015

`∪[A036439(2*n+1), A036439(2*(n+1))+1]`
-/

namespace A262392.P6393776764981825015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (2 * (n + 1)) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A262392.P6393776764981825015

namespace A262392

/-- `∪[A036439(2*n+1), A036439(2*(n+1))+1]` -/
def P6393776764981825015.Spec : Prop :=
  ∀ n, (P6393776764981825015.a n : ℤ) = A262392 n

end A262392

/-!
# A262393: Positions of numbers starting with 1 in A262356.

The programs for A262393, there is no canonical definition to state claims against.
-/

/-! ## A262393.P5221544143103217127

`A262358(A262390(n+1))`
-/

namespace A262393.P5221544143103217127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262358 (A262390 (n + 1)).toNat

end

end A262393.P5221544143103217127

/-! ## A262393.P12613936315697255079

`eq[1, A000030(A262356(1+n))]+1`
-/

namespace A262393.P12613936315697255079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A262356 (1 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A262393.P12613936315697255079

/-! ## A262393.P12036637936736017044

`eq[1, A000030(A262356(n*a(2%n-1)))]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A262393.P12036637936736017044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n f2 =>
  A000030 (A262356 ((n : ℤ) * f2 (2 % n - 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A262393.P12036637936736017044

/-! ## A262393.P11321919570623264640

`record[A000027(n+1)/A000030(A262356(n+1))]`
-/

namespace A262393.P11321919570623264640
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A000030 (A262356 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262393.P11321919570623264640

/-! ## A262393.P12713032059217570150

`record[A028310(n+1)/A000030(A262356(n+1))]`
-/

namespace A262393.P12713032059217570150
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (n + 1) : ℚ) / (A000030 (A262356 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262393.P12713032059217570150

/-! ## A262393.P7312063633347839133

`record[A028242(2*n)/A000030(A262356(n+1))]`
-/

namespace A262393.P7312063633347839133
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028242 (2 * n) : ℚ) / (A000030 (A262356 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262393.P7312063633347839133

/-! ## A262393.P13880536130886331889

`record[A328399(2*n)/A000030(A262356(n+1))]`
-/

namespace A262393.P13880536130886331889
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328399 (2 * n) : ℚ) / (A000030 (A262356 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262393.P13880536130886331889

/-!
# A262394: a(n) = (1/n)*Sum_{k=1..n} k*binomial(n,k-1)*binomial(2*n,n-k).

The programs for A262394, the canonical program `A262394.P9737599116573904129` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262394 has offset 1).

The definition of A262394 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262394.P9737599116573904129

`(n+3)*C(3*(n+1), n)/(3*(n+1))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A262394

/-- `(n+3)*C(3*(n+1), n)/(3*(n+1))` -/
def P9737599116573904129.Spec : Prop :=
  ∀ n, P9737599116573904129.a n = (A262394 (n + 1) : ℚ)

end A262394

/-! ## A262394.P6389446403058097706

`A052183(n+1)/3`
-/

namespace A262394.P6389446403058097706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052183 (n + 1) : ℚ) / 3

end

end A262394.P6389446403058097706

namespace A262394

/-- `A052183(n+1)/3` -/
def P6389446403058097706.Spec : Prop :=
  ∀ n, P6389446403058097706.a n = (A262394 (n + 1) : ℚ)

end A262394

/-! ## A262394.P1238905314786876986

`A165817(n+1)-A004319(n+1)`
-/

namespace A262394.P1238905314786876986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165817 (n + 1) - A004319 (n + 1)

end

end A262394.P1238905314786876986

namespace A262394

/-- `A165817(n+1)-A004319(n+1)` -/
def P1238905314786876986.Spec : Prop :=
  ∀ n, P1238905314786876986.a n = A262394 (n + 1)

end A262394

/-! ## A262394.P587275984307538843

`(A025174(n+1)+A001764(n+1))/2`
-/

namespace A262394.P587275984307538843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025174 (n + 1) + A001764 (n + 1) : ℚ) / 2

end

end A262394.P587275984307538843

namespace A262394

/-- `(A025174(n+1)+A001764(n+1))/2` -/
def P587275984307538843.Spec : Prop :=
  ∀ n, P587275984307538843.a n = (A262394 (n + 1) : ℚ)

end A262394

/-! ## A262394.P4327822228761843708

`A081204(2*n+1)-A004319(n+1)`
-/

namespace A262394.P4327822228761843708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081204 (2 * n + 1) - A004319 (n + 1)

end

end A262394.P4327822228761843708

namespace A262394

/-- `A081204(2*n+1)-A004319(n+1)` -/
def P4327822228761843708.Spec : Prop :=
  ∀ n, P4327822228761843708.a n = A262394 (n + 1)

end A262394

/-! ## A262394.P5557994975919120602

`A165817(n+1)-A127040(2*n+1)`
-/

namespace A262394.P5557994975919120602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165817 (n + 1) - A127040 (2 * n + 1)

end

end A262394.P5557994975919120602

namespace A262394

/-- `A165817(n+1)-A127040(2*n+1)` -/
def P5557994975919120602.Spec : Prop :=
  ∀ n, P5557994975919120602.a n = A262394 (n + 1)

end A262394

/-! ## A262394.P10493288865274447318

`(A099578(2*n+1)+A001764(n+1))/2`
-/

namespace A262394.P10493288865274447318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099578 (2 * n + 1) + A001764 (n + 1) : ℚ) / 2

end

end A262394.P10493288865274447318

namespace A262394

/-- `(A099578(2*n+1)+A001764(n+1))/2` -/
def P10493288865274447318.Spec : Prop :=
  ∀ n, P10493288865274447318.a n = (A262394 (n + 1) : ℚ)

end A262394

/-! ## A262394.P8489507806906093240

`2*A025174(n+1)-A127040(2*n+1)`
-/

namespace A262394.P8489507806906093240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025174 (n + 1) - A127040 (2 * n + 1)

end

end A262394.P8489507806906093240

namespace A262394

/-- `2*A025174(n+1)-A127040(2*n+1)` -/
def P8489507806906093240.Spec : Prop :=
  ∀ n, P8489507806906093240.a n = A262394 (n + 1)

end A262394

/-! ## A262394.P226363657135746235

`A227726(n+1)/2-A127040(2*n+1)`
-/

namespace A262394.P226363657135746235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227726 (n + 1) : ℚ) / 2 - (A127040 (2 * n + 1) : ℚ)

end

end A262394.P226363657135746235

namespace A262394

/-- `A227726(n+1)/2-A127040(2*n+1)` -/
def P226363657135746235.Spec : Prop :=
  ∀ n, P226363657135746235.a n = (A262394 (n + 1) : ℚ)

end A262394

/-! ## A262394.P4573904387600810074

`2*A127040(2*n)-A127040(2*n+1)`
-/

namespace A262394.P4573904387600810074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127040 (2 * n) - A127040 (2 * n + 1)

end

end A262394.P4573904387600810074

namespace A262394

/-- `2*A127040(2*n)-A127040(2*n+1)` -/
def P4573904387600810074.Spec : Prop :=
  ∀ n, P4573904387600810074.a n = A262394 (n + 1)

end A262394

/-! ## A262394.P13647544450809413200

`(A099578(2*n+1)-A134565(2*(n+1)))/2`
-/

namespace A262394.P13647544450809413200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099578 (2 * n + 1) - A134565 (2 * (n + 1)) : ℚ) / 2

end

end A262394.P13647544450809413200

namespace A262394

/-- `(A099578(2*n+1)-A134565(2*(n+1)))/2` -/
def P13647544450809413200.Spec : Prop :=
  ∀ n, P13647544450809413200.a n = (A262394 (n + 1) : ℚ)

end A262394

/-! ## A262394.P798074459925523085

`A045721(n)+A117671(n)-A004319(n+1)`
-/

namespace A262394.P798074459925523085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045721 n + (A117671 n - A004319 (n + 1))

end

end A262394.P798074459925523085

namespace A262394

/-- `A045721(n)+A117671(n)-A004319(n+1)` -/
def P798074459925523085.Spec : Prop :=
  ∀ n, P798074459925523085.a n = A262394 (n + 1)

end A262394

/-! ## A262394.P13368609017335287130

`A001764(n+1)+A004319(n+1)-A025174(n+1)`
-/

namespace A262394.P13368609017335287130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 (n + 1) + (A004319 (n + 1) - A025174 (n + 1))

end

end A262394.P13368609017335287130

namespace A262394

/-- `A001764(n+1)+A004319(n+1)-A025174(n+1)` -/
def P13368609017335287130.Spec : Prop :=
  ∀ n, P13368609017335287130.a n = A262394 (n + 1)

end A262394

/-! ## A262394.P17228855865227306811

`A005809(n+1)-(A025174(n+1)+A004319(n+1))`
-/

namespace A262394.P17228855865227306811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 (n + 1) - (A025174 (n + 1) + A004319 (n + 1))

end

end A262394.P17228855865227306811

namespace A262394

/-- `A005809(n+1)-(A025174(n+1)+A004319(n+1))` -/
def P17228855865227306811.Spec : Prop :=
  ∀ n, P17228855865227306811.a n = A262394 (n + 1)

end A262394

/-!
# A262395: Difference between the numbers of trees on n vertices with an even number and an odd number of leaves.

The programs for A262395, there is no canonical definition to state claims against.
-/

/-! ## A262395.P16337387893132971842

`A262430(n+2)-A262431(n+2)`
-/

namespace A262395.P16337387893132971842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262430 (n + 2) - A262431 (n + 2)

end

end A262395.P16337387893132971842

/-!
# A262396: Product of the sums and differences of the square roots of the first n positive integers, combined in all possible ways.

The programs for A262396, there is no canonical definition to state claims against.
-/

/-! ## A262396.P14659855011674514306

`(∑[n]-2)^A073786(n)`
-/

namespace A262396.P14659855011674514306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2 : ℚ) ^ (A073786 n : ℤ)

end

end A262396.P14659855011674514306

/-!
# A262397: a(n) = floor(A261327(n)/9).

The programs for A262397, the canonical program `A262397.P3567034082387782464` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262397 has offset 0).

The definition of A262397 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262397.P3567034082387782464

`floor(A261327(n)/9)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A262397

/-- `floor(A261327(n)/9)` -/
def P3567034082387782464.Spec : Prop :=
  ∀ n, P3567034082387782464.a n = A262397 n

theorem P3567034082387782464.correct : P3567034082387782464.Spec := by
  intro n
  simp only [A262397]

end A262397

/-! ## A262397.P4140720153167693065

`floor(A008810(n)/A040033(n))`
-/

namespace A262397.P4140720153167693065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008810 n : ℚ) / (A040033 n : ℚ)⌋

end

end A262397.P4140720153167693065

namespace A262397

/-- `floor(A008810(n)/A040033(n))` -/
def P4140720153167693065.Spec : Prop :=
  ∀ n, P4140720153167693065.a n = A262397 n

end A262397

/-! ## A262397.P8952386042353806513

`floor((A147685(n)-A056829(n))/3)`
-/

namespace A262397.P8952386042353806513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A147685 n - A056829 n : ℚ) / 3⌋

end

end A262397.P8952386042353806513

namespace A262397

/-- `floor((A147685(n)-A056829(n))/3)` -/
def P8952386042353806513.Spec : Prop :=
  ∀ n, P8952386042353806513.a n = A262397 n

end A262397

/-! ## A262397.P7558660456257429753

`floor(A000034(n)²*A004652(n)/9)`
-/

namespace A262397.P7558660456257429753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000034 n ^ 2 * A004652 n : ℚ) / 9⌋

end

end A262397.P7558660456257429753

namespace A262397

/-- `floor(A000034(n)²*A004652(n)/9)` -/
def P7558660456257429753.Spec : Prop :=
  ∀ n, P7558660456257429753.a n = A262397 n

end A262397

/-! ## A262397.P10595980124420257252

`floor(Δ[A047221(n+1)/9]*A033638(n))`
-/

namespace A262397.P10595980124420257252
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047221 (n + 1) : ℚ) / 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n) * (A033638 n : ℚ)⌋

end

end A262397.P10595980124420257252

namespace A262397

/-- `floor(Δ[A047221(n+1)/9]*A033638(n))` -/
def P10595980124420257252.Spec : Prop :=
  ∀ n, P10595980124420257252.a n = A262397 n

end A262397

/-! ## A262397.P8887570083304639256

`ceil(log2(A141044(n+3))+A261327(n)/9-1)`
-/

namespace A262397.P8887570083304639256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A141044 (n + 3) : ℝ) + ((A261327 n : ℚ) / 9 - 1 : ℝ)⌉

end

end A262397.P8887570083304639256

namespace A262397

/-- `ceil(log2(A141044(n+3))+A261327(n)/9-1)` -/
def P8887570083304639256.Spec : Prop :=
  ∀ n, P8887570083304639256.a n = A262397 n

end A262397

/-! ## A262397.P14420343134903088071

`A002264(A147685(n)-A056829(n))`
-/

namespace A262397.P14420343134903088071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A147685 n - A056829 n).toNat

end

end A262397.P14420343134903088071

namespace A262397

/-- `A002264(A147685(n)-A056829(n))` -/
def P14420343134903088071.Spec : Prop :=
  ∀ n, P14420343134903088071.a n = A262397 n

end A262397

/-! ## A262397.P8047229631141451871

`A343609(A261327(n))`
-/

namespace A262397.P8047229631141451871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A261327 n).toNat

end

end A262397.P8047229631141451871

namespace A262397

/-- `A343609(A261327(n))` -/
def P8047229631141451871.Spec : Prop :=
  ∀ n, P8047229631141451871.a n = A262397 n

end A262397

/-! ## A262397.P14868615292973136308

`A154958(A008611(A129194(n)))-1`
-/

namespace A262397.P14868615292973136308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 (A008611 (A129194 n).toNat).toNat - 1

end

end A262397.P14868615292973136308

namespace A262397

/-- `A154958(A008611(A129194(n)))-1` -/
def P14868615292973136308.Spec : Prop :=
  ∀ n, P14868615292973136308.a n = A262397 n

end A262397

/-! ## A262397.P3150233013613378893

`A002264(A002264(A247617(n²)))`
-/

namespace A262397.P3150233013613378893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A002264 (A247617 (n ^ 2)).toNat).toNat

end

end A262397.P3150233013613378893

namespace A262397

/-- `A002264(A002264(A247617(n²)))` -/
def P3150233013613378893.Spec : Prop :=
  ∀ n, P3150233013613378893.a n = A262397 n

end A262397

/-!
# A262398: a(n) = prime(n)! mod prime(n!).

The programs for A262398, the canonical program `A262398.P13811975359526140929` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262398 has offset 1).

The definition of A262398 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)!%A000040((n+1)!)` (program `A262398.P13811975359526140929`, by `A262398.P13811975359526140929.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A262398.P15212636228664894414

`A039716(n+1)%A062439(n+1)`
-/

namespace A262398.P15212636228664894414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039716 (n + 1)) (A062439 (n + 1))

end

end A262398.P15212636228664894414

namespace A262398

/-- `A039716(n+1)%A062439(n+1)` -/
def P15212636228664894414.Spec : Prop :=
  ∀ n, P15212636228664894414.a n = A262398 (n + 1)

end A262398

/-! ## A262398.P13811975359526140929

`A000040(n+1)!%A000040((n+1)!)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A262398

/-- `A000040(n+1)!%A000040((n+1)!)` -/
def P13811975359526140929.Spec : Prop :=
  ∀ n, P13811975359526140929.a n = A262398 (n + 1)

theorem P13811975359526140929.correct : P13811975359526140929.Spec := by
  intro n
  simp only [A262398, Nat.add_sub_cancel]

end A262398

/-! ## A262398.P6812266409299592818

`Δ[A007504(n)]!%A062439(n+1)`
-/

namespace A262398.P6812266409299592818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (f1 (n + 1) - f1 n).toNat : ℤ) (A062439 (n + 1))

end

end A262398.P6812266409299592818

namespace A262398

/-- `Δ[A007504(n)]!%A062439(n+1)` -/
def P6812266409299592818.Spec : Prop :=
  ∀ n, P6812266409299592818.a n = A262398 (n + 1)

end A262398

/-! ## A262398.P7192479170021151105

`p?[A259153(n)]!%A062439(n+1)`
-/

namespace A262398.P7192479170021151105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℤ) (A062439 (n + 1))

end

end A262398.P7192479170021151105

namespace A262398

/-- `p?[A259153(n)]!%A062439(n+1)` -/
def P7192479170021151105.Spec : Prop :=
  ∀ n, P7192479170021151105.a n = A262398 (n + 1)

end A262398

/-! ## A262398.P1578589743647620156

`(A008864(n+1)-1)!%A062439(n+1)`
-/

namespace A262398.P1578589743647620156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (A008864 (n + 1) - 1).toNat : ℤ) (A062439 (n + 1))

end

end A262398.P1578589743647620156

namespace A262398

/-- `(A008864(n+1)-1)!%A062439(n+1)` -/
def P1578589743647620156.Spec : Prop :=
  ∀ n, P1578589743647620156.a n = A262398 (n + 1)

theorem P1578589743647620156.correct : P1578589743647620156.Spec := by
  intro n
  simp only [A262398, Nat.add_sub_cancel, A262398.P1578589743647620156.a, A262398.P13811975359526140929.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A062439, A062439.P5675671138627473701.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A262398

