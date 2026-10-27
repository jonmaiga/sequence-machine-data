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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
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
import Seq.B001.C011
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
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
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A029900: f(n) where strategic move on f(n) X 3 rectangle in Chomp is (n,1).

The programs for A029900, there is no canonical definition to state claims against.
-/

/-! ## A029900.P7974294027310012053

`eq[char[A029901(n)], A151933(n)]`
-/

namespace A029900.P7974294027310012053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029901 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A029900.P7974294027310012053

/-! ## A029900.P3387341047000043687

`A294937(A262554(n+1))+A189573(n+1)`
-/

namespace A029900.P3387341047000043687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (A262554 (n + 1)).toNat + A189573 (n + 1)

end

end A029900.P3387341047000043687

/-! ## A029900.P10352174624621069027

`A278044(A051026(n))+n`
-/

namespace A029900.P10352174624621069027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278044 (A051026 n).toNat + (n : ℤ)

end

end A029900.P10352174624621069027

/-!
# A029901: g(n), where strategic move on g(n) X 3 rectangle in Chomp is (h(n),2).

The programs for A029901, there is no canonical definition to state claims against.
-/

/-! ## A029901.P4449323348953806386

`comp[A029900(n)-1]+1`
-/

namespace A029901.P4449323348953806386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029900 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A029901.P4449323348953806386

/-! ## A029901.P6851026430069950130

`eq[char[A029900(n)], A151933(n)]`
-/

namespace A029901.P6851026430069950130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029900 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A029901.P6851026430069950130

/-! ## A029901.P6090174374801612572

`A080652(n+1)-A011731(A264954(n+1))`
-/

namespace A029901.P6090174374801612572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080652 (n + 1) - A011731 (A264954 (n + 1)).toNat

end

end A029901.P6090174374801612572

/-! ## A029901.P11441352671827920972

`A184741(n+1)-A010054(A291117(3*n+4))`
-/

namespace A029901.P11441352671827920972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184741 (n + 1) - A010054 (A291117 (3 * n + 4)).toNat

end

end A029901.P11441352671827920972

/-! ## A029901.P13147857972433878076

`A249351(A359348(n))+A086377(n+1)`
-/

namespace A029901.P13147857972433878076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249351 (A359348 n).toNat + A086377 (n + 1)

end

end A029901.P13147857972433878076

/-!
# A029902: h(n), where strategic move on g(n) X 3 rectangle in Chomp is (h(n),2). Conjectured to be complementary to r(n), see A029905.

The programs for A029902, there is no canonical definition to state claims against.
-/

/-! ## A029902.P10217058444905791139

`comp[A029905(n)]`
-/

namespace A029902.P10217058444905791139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029905 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A029902.P10217058444905791139

/-! ## A029902.P12453765650691301410

`comp[A002837(A029903(n))+n]%A349647(n+3)`
-/

namespace A029902.P12453765650691301410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A029903 n).toNat + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A349647 (n + 3))

end

end A029902.P12453765650691301410

/-! ## A029902.P13677190363204854760

`comp[A023443(A029903(n)+n)]%A349647(n+3)`
-/

namespace A029902.P13677190363204854760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A029903 n + (n : ℤ)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A349647 (n + 3))

end

end A029902.P13677190363204854760

/-! ## A029902.P13386968570794485974

`∑[A011558(A000041(2*n))]+n`
-/

namespace A029902.P13386968570794485974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (A000041 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A029902.P13386968570794485974

/-!
# A029903: p(n), where exists one-parameter family of strategic partitions (k+p(n)+q(n), k+q(n), r(n)) for k = 0,1,2,... in Chomp.

The programs for A029903, there is no canonical definition to state claims against.
-/

/-! ## A029903.P14815433832980681720

`A029905(n)+1-n`
-/

namespace A029903.P14815433832980681720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029905 n + (1 - (n : ℤ))

end

end A029903.P14815433832980681720

/-! ## A029903.P15758321023804547522

`comp[A029902(n)]+1-n`
-/

namespace A029903.P15758321023804547522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029902 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (1 - (n : ℤ))

end

end A029903.P15758321023804547522

/-! ## A029903.P9640462883560574290

`abs(A029905(n)+A024000(n))`
-/

namespace A029903.P9640462883560574290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A029905 n + A024000 n|

end

end A029903.P9640462883560574290

/-! ## A029903.P8482397336412708725

`abs(A023443(n)-A029905(n))`
-/

namespace A029903.P8482397336412708725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A023443 n - A029905 n|

end

end A029903.P8482397336412708725

/-! ## A029903.P18020874421714026041

`A024000(n)+comp[A029902(n)]`
-/

namespace A029903.P18020874421714026041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029902 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A029903.P18020874421714026041

/-!
# A029904: q(n), where exists one-parameter family of strategic partitions (k+p(n)+q(n), k+q(n), r(n)) for k = 0,1,2,... in Chomp.

The programs for A029904, there is no canonical definition to state claims against.
-/

/-! ## A029904.P7674846615220998831

`eq[A001222(A141214(n)), A258447(n)]`
-/

namespace A029904.P7674846615220998831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A141214 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258447 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029904.P7674846615220998831

/-!
# A029905: r(n), where exists one-parameter family of strategic partitions (k+p(n)+q(n), k+q(n), r(n)) for k = 0,1,2,... in Chomp.

The programs for A029905, there is no canonical definition to state claims against.
-/

/-! ## A029905.P12667096313753939299

`comp[A029902(n)]`
-/

namespace A029905.P12667096313753939299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029902 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A029905.P12667096313753939299

/-! ## A029905.P11993134482634918812

`A029903(n)-1+n`
-/

namespace A029905.P11993134482634918812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029903 n - 1 + (n : ℤ)

end

end A029905.P11993134482634918812

/-! ## A029905.P7546825539193264658

`A002837(A029903(n))+n`
-/

namespace A029905.P7546825539193264658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A029903 n).toNat + (n : ℤ)

end

end A029905.P7546825539193264658

/-! ## A029905.P4214253117497620752

`A023443(A029903(n)+n)`
-/

namespace A029905.P4214253117497620752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A029903 n + (n : ℤ)).toNat

end

end A029905.P4214253117497620752

/-!
# A029906: Zack's sequence (the pattern is evident).

The programs for A029906, the canonical program `A029906.P15630247913455669482` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029906 has offset 0).

The definition of A029906 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A029906.P15630247913455669482

`2*a(n-4)-a(n-8)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=0, a(5)=2, a(6)=2, a(7)=4`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029906

/-- `2*a(n-4)-a(n-8)` -/
def P15630247913455669482.Spec : Prop :=
  ∀ n, P15630247913455669482.a n = A029906 n

theorem P15630247913455669482.correct : P15630247913455669482.Spec := by
  intro n
  simp only [A029906]

end A029906

/-! ## A029906.P13888657902830922271

`round(sqrt(n%4))*∑[char[4*n]]`
-/

namespace A029906.P13888657902830922271
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((n % 4 : ℕ) : ℝ)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A029906.P13888657902830922271

namespace A029906

/-- `round(sqrt(n%4))*∑[char[4*n]]` -/
def P13888657902830922271.Spec : Prop :=
  ∀ n, P13888657902830922271.a n = A029906 n

end A029906

/-! ## A029906.P5942144652438100787

`a(and(3, n))+a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A029906.P5942144652438100787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2] fun n a =>
  a (Nat.land 3 n) + a (n - 4)

end

end A029906.P5942144652438100787

namespace A029906

/-- `a(and(3, n))+a(n-4)` -/
def P5942144652438100787.Spec : Prop :=
  ∀ n, (P5942144652438100787.a n : ℤ) = A029906 n

end A029906

/-! ## A029906.P17965469850840572378

`∑[3*n+2]%∑[gcd(4, n+2)]`
-/

namespace A029906.P17965469850840572378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A029906.P17965469850840572378

namespace A029906

/-- `∑[3*n+2]%∑[gcd(4, n+2)]` -/
def P17965469850840572378.Spec : Prop :=
  ∀ n, (P17965469850840572378.a n : ℤ) = A029906 n

end A029906

/-! ## A029906.P11209822614530639887

`ceil(n*A140081(n)/4)`
-/

namespace A029906.P11209822614530639887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) * A140081 n : ℚ) / 4⌉

end

end A029906.P11209822614530639887

namespace A029906

/-- `ceil(n*A140081(n)/4)` -/
def P11209822614530639887.Spec : Prop :=
  ∀ n, P11209822614530639887.a n = A029906 n

end A029906

/-! ## A029906.P13917450785469732871

`round(and(3, n)/2)*∑[A121262(n)]`
-/

namespace A029906.P13917450785469732871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.land 3 n : ℚ) / 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A029906.P13917450785469732871

namespace A029906

/-- `round(and(3, n)/2)*∑[A121262(n)]` -/
def P13917450785469732871.Spec : Prop :=
  ∀ n, P13917450785469732871.a n = A029906 n

end A029906

/-! ## A029906.P9664265984783770034

`A008621(n)*A140081(n)`
-/

namespace A029906.P9664265984783770034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n * A140081 n

end

end A029906.P9664265984783770034

namespace A029906

/-- `A008621(n)*A140081(n)` -/
def P9664265984783770034.Spec : Prop :=
  ∀ n, P9664265984783770034.a n = A029906 n

end A029906

/-! ## A029906.P4089685927050414669

`A110655(n)*A140081(n)`
-/

namespace A029906.P4089685927050414669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 n * A140081 n

end

end A029906.P4089685927050414669

namespace A029906

/-- `A110655(n)*A140081(n)` -/
def P4089685927050414669.Spec : Prop :=
  ∀ n, P4089685927050414669.a n = A029906 n

end A029906

/-! ## A029906.P3581065194774415816

`A282513(n)%A066530(n)`
-/

namespace A029906.P3581065194774415816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282513 n) (A066530 n)

end

end A029906.P3581065194774415816

namespace A029906

/-- `A282513(n)%A066530(n)` -/
def P3581065194774415816.Spec : Prop :=
  ∀ n, P3581065194774415816.a n = A029906 n

end A029906

/-! ## A029906.P16977652566905560169

`(A002265(n)+1)*A140081(n)`
-/

namespace A029906.P16977652566905560169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002265 n + 1) * A140081 n

end

end A029906.P16977652566905560169

namespace A029906

/-- `(A002265(n)+1)*A140081(n)` -/
def P16977652566905560169.Spec : Prop :=
  ∀ n, P16977652566905560169.a n = A029906 n

end A029906

/-! ## A029906.P1257096519580371624

`(A004526(A004526(n))+1)*A140081(n)`
-/

namespace A029906.P1257096519580371624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004526 (A004526 n).toNat + 1) * A140081 n

end

end A029906.P1257096519580371624

namespace A029906

/-- `(A004526(A004526(n))+1)*A140081(n)` -/
def P1257096519580371624.Spec : Prop :=
  ∀ n, P1257096519580371624.a n = A029906 n

end A029906

/-! ## A029906.P17354645682769463054

`(A130845(n)+1)*A000035(A026741(n))`
-/

namespace A029906.P17354645682769463054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130845 n + 1) * A000035 (A026741 n).toNat

end

end A029906.P17354645682769463054

namespace A029906

/-- `(A130845(n)+1)*A000035(A026741(n))` -/
def P17354645682769463054.Spec : Prop :=
  ∀ n, P17354645682769463054.a n = A029906 n

end A029906

/-! ## A029906.P15410438671520568565

`A110654((1-A102560(n))*A110654(n))`
-/

namespace A029906.P15410438671520568565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 ((1 - A102560 n) * A110654 n).toNat

end

end A029906.P15410438671520568565

namespace A029906

/-- `A110654((1-A102560(n))*A110654(n))` -/
def P15410438671520568565.Spec : Prop :=
  ∀ n, P15410438671520568565.a n = A029906 n

end A029906

/-! ## A029906.P4167501208868165554

`A001972(n)-A001972(n-A140081(n))`
-/

namespace A029906.P4167501208868165554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 n - A001972 ((n : ℤ) - A140081 n).toNat

end

end A029906.P4167501208868165554

namespace A029906

/-- `A001972(n)-A001972(n-A140081(n))` -/
def P4167501208868165554.Spec : Prop :=
  ∀ n, P4167501208868165554.a n = A029906 n

end A029906

/-! ## A029906.P17738805892115955230

`(A083219(n)-A004526(n))*A008621(n)`
-/

namespace A029906.P17738805892115955230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A083219 n - A004526 n) * A008621 n

end

end A029906.P17738805892115955230

namespace A029906

/-- `(A083219(n)-A004526(n))*A008621(n)` -/
def P17738805892115955230.Spec : Prop :=
  ∀ n, P17738805892115955230.a n = A029906 n

end A029906

/-! ## A029906.P8447424388777924968

`∑[A008621(n)]-A008619(n)*A008621(n)`
-/

namespace A029906.P8447424388777924968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008619 n * A008621 n

end

end A029906.P8447424388777924968

namespace A029906

/-- `∑[A008621(n)]-A008619(n)*A008621(n)` -/
def P8447424388777924968.Spec : Prop :=
  ∀ n, P8447424388777924968.a n = A029906 n

end A029906

/-! ## A029906.P13510097101773411931

`(A001068(n+1)-A140201(n))*A140081(n)`
-/

namespace A029906.P13510097101773411931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001068 (n + 1) - A140201 n) * A140081 n

end

end A029906.P13510097101773411931

namespace A029906

/-- `(A001068(n+1)-A140201(n))*A140081(n)` -/
def P13510097101773411931.Spec : Prop :=
  ∀ n, P13510097101773411931.a n = A029906 n

end A029906

/-! ## A029906.P16377824310178294587

`A036406(n)-A004526(n)*A004526(A004526(n))`
-/

namespace A029906.P16377824310178294587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036406 n - A004526 n * A004526 (A004526 n).toNat

end

end A029906.P16377824310178294587

namespace A029906

/-- `A036406(n)-A004526(n)*A004526(A004526(n))` -/
def P16377824310178294587.Spec : Prop :=
  ∀ n, P16377824310178294587.a n = A029906 n

end A029906

/-! ## A029906.P12722232657017637493

`Δ[A006002(n)]%A066530(n)`
-/

namespace A029906.P12722232657017637493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A066530 n)

end

end A029906.P12722232657017637493

namespace A029906

/-- `Δ[A006002(n)]%A066530(n)` -/
def P12722232657017637493.Spec : Prop :=
  ∀ n, P12722232657017637493.a n = A029906 n

end A029906

/-! ## A029906.P6457469249584632006

`A265431(n)%Δ[A265431(n)]`
-/

namespace A029906.P6457469249584632006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265431 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265431 n) (f1 (n + 1) - f1 n)

end

end A029906.P6457469249584632006

namespace A029906

/-- `A265431(n)%Δ[A265431(n)]` -/
def P6457469249584632006.Spec : Prop :=
  ∀ n, P6457469249584632006.a n = A029906 n

end A029906

/-!
# A029907: a(n+1) = a(n) + a(n-1) + Fibonacci(n), with a(0) = 0 and a(1) = 1.

The programs for A029907, the canonical program `A029907.P6582962671373940873` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029907 has offset 0).

The definition of A029907 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A029907.P7875314339678211560

`a(n-1)+a(n-2)+A000045(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A029907.P7875314339678211560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a (n - 2) + A000045 (n - 1)

end

end A029907.P7875314339678211560

namespace A029907

/-- `a(n-1)+a(n-2)+A000045(n-1)` -/
def P7875314339678211560.Spec : Prop :=
  ∀ n, P7875314339678211560.a n = A029907 n

end A029907

/-! ## A029907.P6582962671373940873

`A010049(n+1)+A152163(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029907

/-- `A010049(n+1)+A152163(n+1)` -/
def P6582962671373940873.Spec : Prop :=
  ∀ n, P6582962671373940873.a n = A029907 n

theorem P6582962671373940873.correct : P6582962671373940873.Spec := by
  intro n
  simp only [A029907]

end A029907

/-! ## A029907.P13669577194490482002

`1/5*(n*A000032(n)+4*A000045(n))`
-/

namespace A029907.P13669577194490482002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 5 * ((n : ℤ) * A000032 n + 4 * A000045 n : ℚ)

end

end A029907.P13669577194490482002

namespace A029907

/-- `1/5*(n*A000032(n)+4*A000045(n))` -/
def P13669577194490482002.Spec : Prop :=
  ∀ n, P13669577194490482002.a n = (A029907 n : ℚ)

end A029907

/-! ## A029907.P17365815024186072033

`ogf((x-x^3)/(1-2x-x^2+2x^3+x^4))`
-/

namespace A029907.P17365815024186072033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, -1] [1, -2, -1, 2, 1] n

end

end A029907.P17365815024186072033

namespace A029907

/-- `ogf((x-x^3)/(1-2x-x^2+2x^3+x^4))` -/
def P17365815024186072033.Spec : Prop :=
  ∀ n, P17365815024186072033.a n = A029907 n

end A029907

/-! ## A029907.P16715450863919994576

`A172050(n)-3*n`
-/

namespace A029907.P16715450863919994576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172050 n - (3 * n : ℤ)

end

end A029907.P16715450863919994576

namespace A029907

/-- `A172050(n)-3*n` -/
def P16715450863919994576.Spec : Prop :=
  ∀ n, P16715450863919994576.a n = A029907 n

theorem P16715450863919994576.correct : P16715450863919994576.Spec := by
  intro n
  simp only [A029907, Nat.add_sub_cancel, A029907.P16715450863919994576.a, A029907.P6582962671373940873.a, A010049, A010049.P2470396957428042949.a, A152163, A152163.P15912959983015136417.a, A172050, A172050.P796616272451847665.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029907

/-! ## A029907.P16400421619258285981

`A239342(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A029907.P16400421619258285981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A239342 n + a (n - 2)

end

end A029907.P16400421619258285981

namespace A029907

/-- `A239342(n)+a(n-2)` -/
def P16400421619258285981.Spec : Prop :=
  ∀ n, P16400421619258285981.a n = A029907 n

end A029907

/-! ## A029907.P10678595998353936779

`A001629(n)+A000045(n)`
-/

namespace A029907.P10678595998353936779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 n + A000045 n

end

end A029907.P10678595998353936779

namespace A029907

/-- `A001629(n)+A000045(n)` -/
def P10678595998353936779.Spec : Prop :=
  ∀ n, P10678595998353936779.a n = A029907 n

end A029907

/-! ## A029907.P8275565031392280645

`A001629(n)+abs(A236191(n))`
-/

namespace A029907.P8275565031392280645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 n + |A236191 n|

end

end A029907.P8275565031392280645

namespace A029907

/-- `A001629(n)+abs(A236191(n))` -/
def P8275565031392280645.Spec : Prop :=
  ∀ n, P8275565031392280645.a n = A029907 n

end A029907

/-! ## A029907.P5234681982572774719

`∑[A006367(n)]-A212804(n)`
-/

namespace A029907.P5234681982572774719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A212804 n

end

end A029907.P5234681982572774719

namespace A029907

/-- `∑[A006367(n)]-A212804(n)` -/
def P5234681982572774719.Spec : Prop :=
  ∀ n, P5234681982572774719.a n = A029907 n

end A029907

/-! ## A029907.P13878958948445926063

`A212804(n+1)+A001629(n)`
-/

namespace A029907.P13878958948445926063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + A001629 n

end

end A029907.P13878958948445926063

namespace A029907

/-- `A212804(n+1)+A001629(n)` -/
def P13878958948445926063.Spec : Prop :=
  ∀ n, P13878958948445926063.a n = A029907 n

end A029907

/-! ## A029907.P9811017154194434072

`A001611(n)+A001629(n)-1`
-/

namespace A029907.P9811017154194434072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + (A001629 n - 1)

end

end A029907.P9811017154194434072

namespace A029907

/-- `A001611(n)+A001629(n)-1` -/
def P9811017154194434072.Spec : Prop :=
  ∀ n, P9811017154194434072.a n = A029907 n

end A029907

/-! ## A029907.P903648855145142787

`A010049(n+1)-A212804(n)`
-/

namespace A029907.P903648855145142787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (n + 1) - A212804 n

end

end A029907.P903648855145142787

namespace A029907

/-- `A010049(n+1)-A212804(n)` -/
def P903648855145142787.Spec : Prop :=
  ∀ n, P903648855145142787.a n = A029907 n

end A029907

/-! ## A029907.P5619647561692857576

`A006367(n+2)-A000032(n)`
-/

namespace A029907.P5619647561692857576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006367 (n + 2) - A000032 n

end

end A029907.P5619647561692857576

namespace A029907

/-- `A006367(n+2)-A000032(n)` -/
def P5619647561692857576.Spec : Prop :=
  ∀ n, P5619647561692857576.a n = A029907 n

end A029907

/-! ## A029907.P13360940873866901000

`A001629(n)-A152163(n+2)`
-/

namespace A029907.P13360940873866901000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 n - A152163 (n + 2)

end

end A029907.P13360940873866901000

namespace A029907

/-- `A001629(n)-A152163(n+2)` -/
def P13360940873866901000.Spec : Prop :=
  ∀ n, P13360940873866901000.a n = A029907 n

end A029907

/-! ## A029907.P13494381934467616371

`A001629(n)+A002062(n)-n`
-/

namespace A029907.P13494381934467616371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 n + (A002062 n - (n : ℤ))

end

end A029907.P13494381934467616371

namespace A029907

/-- `A001629(n)+A002062(n)-n` -/
def P13494381934467616371.Spec : Prop :=
  ∀ n, P13494381934467616371.a n = A029907 n

end A029907

/-! ## A029907.P16143809722323809766

`A001629(n)+∑{d}[n, A007436(#)]`
-/

namespace A029907.P16143809722323809766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 n + ∑ d ∈ Nat.divisors (f1 n), A007436 d

end

end A029907.P16143809722323809766

namespace A029907

/-- `A001629(n)+∑{d}[n, A007436(#)]` -/
def P16143809722323809766.Spec : Prop :=
  ∀ n, P16143809722323809766.a n = A029907 n

end A029907

/-! ## A029907.P11329473565033839161

`A001629(n)+Δ[A000071(n+1)]`
-/

namespace A029907.P11329473565033839161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 n + (f1 (n + 1) - f1 n)

end

end A029907.P11329473565033839161

namespace A029907

/-- `A001629(n)+Δ[A000071(n+1)]` -/
def P11329473565033839161.Spec : Prop :=
  ∀ n, P11329473565033839161.a n = A029907 n

end A029907

/-! ## A029907.P3708282044929228540

`A010049(n+1)-Δ[A000045(n)]`
-/

namespace A029907.P3708282044929228540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029907.P3708282044929228540

namespace A029907

/-- `A010049(n+1)-Δ[A000045(n)]` -/
def P3708282044929228540.Spec : Prop :=
  ∀ n, P3708282044929228540.a n = A029907 n

end A029907

/-! ## A029907.P6261820898647009551

`A010049(n+1)-Δ[A001611(n)]`
-/

namespace A029907.P6261820898647009551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029907.P6261820898647009551

namespace A029907

/-- `A010049(n+1)-Δ[A001611(n)]` -/
def P6261820898647009551.Spec : Prop :=
  ∀ n, P6261820898647009551.a n = A029907 n

end A029907

/-! ## A029907.P18259945323092199661

`A208354(n+1)-A000045(n+1)`
-/

namespace A029907.P18259945323092199661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 (n + 1) - A000045 (n + 1)

end

end A029907.P18259945323092199661

namespace A029907

/-- `A208354(n+1)-A000045(n+1)` -/
def P18259945323092199661.Spec : Prop :=
  ∀ n, P18259945323092199661.a n = A029907 n

end A029907

/-!
# A029908: Starting with n, repeatedly sum prime factors (with multiplicity) until reaching 0 or a fixed point. Then a(n) is the fixed point (or 0).

The programs for A029908, there is no canonical definition to state claims against.
-/

/-! ## A029908.P374306668664459990

`A106492(A337310(n+1)%A002231(n+1))`
-/

namespace A029908.P374306668664459990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106492 (Int.tmod (A337310 (n + 1)) (A002231 (n + 1))).toNat

end

end A029908.P374306668664459990

/-! ## A029908.P11114517624822412967

`A338038(A337310(n+1))+A000007(A000040(n+1)²)`
-/

namespace A029908.P11114517624822412967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338038 (A337310 (n + 1)).toNat + A000007 (A000040 (n + 1) ^ 2).toNat

end

end A029908.P11114517624822412967

/-! ## A029908.P14630334097923827038

`A338038(A337310(n+1))+A000038(A000040(n+1)²)`
-/

namespace A029908.P14630334097923827038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338038 (A337310 (n + 1)).toNat + A000038 (A000040 (n + 1) ^ 2).toNat

end

end A029908.P14630334097923827038

/-! ## A029908.P5558775222942772436

`A001511(A000040(n+1)²)*A338038(A337310(n+1))`
-/

namespace A029908.P5558775222942772436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A000040 (n + 1) ^ 2).toNat * A338038 (A337310 (n + 1)).toNat

end

end A029908.P5558775222942772436

/-! ## A029908.P2252861500643943470

`A338038(A337310(n+1))%A000124(A000040(n+1)²)`
-/

namespace A029908.P2252861500643943470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338038 (A337310 (n + 1)).toNat) (A000124 (A000040 (n + 1) ^ 2).toNat)

end

end A029908.P2252861500643943470

/-!
# A029909: Starting with each nonprime number (A018252), repeatedly sum prime factors (with multiplicity) until reaching 0 or a fixed point. Then a(n) is the fixed point (or 0).

The programs for A029909, there is no canonical definition to state claims against.
-/

/-! ## A029909.P4264302639720285910

`A029908(A018252(n+1))`
-/

namespace A029909.P4264302639720285910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029908 (A018252 (n + 1)).toNat

end

end A029909.P4264302639720285910

/-! ## A029909.P16134904513809214152

`A029908(A141468(n+2))`
-/

namespace A029909.P16134904513809214152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029908 (A141468 (n + 2)).toNat

end

end A029909.P16134904513809214152

/-! ## A029909.P15112098829093115514

`A029908(comp[record[A008472(n+1)]])`
-/

namespace A029909.P15112098829093115514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029908 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A029909.P15112098829093115514

/-! ## A029909.P4810666934880965629

`A029908(record[gcd(n+1, A014684(n+1))])`
-/

namespace A029909.P4810666934880965629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A014684 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029908 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A029909.P4810666934880965629

/-! ## A029909.P7871945433402780166

`A029908(eq[A075860(n+1)%(n+1), A075860(n+1)]+1)`
-/

namespace A029909.P7871945433402780166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075860 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029908 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A029909.P7871945433402780166

/-! ## A029909.P3900208379455481540

`A029908(comp[A061397(n+1)])`
-/

namespace A029909.P3900208379455481540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029908 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A029909.P3900208379455481540

/-! ## A029909.P5044039108683431791

`A029908(comp[A075860(n+1)])`
-/

namespace A029909.P5044039108683431791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075860 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029908 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A029909.P5044039108683431791

/-! ## A029909.P13409282654220896591

`A029908(comp[A120007(n+1)])`
-/

namespace A029909.P13409282654220896591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120007 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029908 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A029909.P13409282654220896591

/-! ## A029909.P5256717414340767609

`A029908(record[A018252(A154958(n))])`
-/

namespace A029909.P5256717414340767609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A154958 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029908 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A029909.P5256717414340767609

/-!
# A029910: Start with n; if prime, stop; repeatedly sum prime factors (counted with multiplicity) and add 1, until reach 1, 6 or a prime.

The programs for A029910, there is no canonical definition to state claims against.
-/

/-! ## A029910.P15827346022950008448

`A029912(n+1)+A089026(n+1)-A029912(A089026(n+1))`
-/

namespace A029910.P15827346022950008448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029912 (n + 1) + (A089026 (n + 1) - A029912 (A089026 (n + 1)).toNat)

end

end A029910.P15827346022950008448

/-!
# A029911: Start with n; if prime, skip; repeatedly sum prime factors (counted with multiplicity) and add 1, until reach 1, 6 or a prime.

The programs for A029911, there is no canonical definition to state claims against.
-/

/-! ## A029911.P5981003013179635913

`A029910(Δ[A051349(n)])`
-/

namespace A029911.P5981003013179635913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029910 (f1 (n + 1) - f1 n).toNat

end

end A029911.P5981003013179635913

/-! ## A029911.P16733349963251007774

`A029912(Δ[A051349(n)])`
-/

namespace A029911.P16733349963251007774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029912 (f1 (n + 1) - f1 n).toNat

end

end A029911.P16733349963251007774

/-! ## A029911.P8837684833768114029

`A029910(A018252(n+1))`
-/

namespace A029911.P8837684833768114029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029910 (A018252 (n + 1)).toNat

end

end A029911.P8837684833768114029

/-! ## A029911.P14058800375659837886

`A029910(A141468(n+2))`
-/

namespace A029911.P14058800375659837886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029910 (A141468 (n + 2)).toNat

end

end A029911.P14058800375659837886

/-! ## A029911.P11921319109286505324

`A029912(record[A191558(n+1)])`
-/

namespace A029911.P11921319109286505324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029912 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A029911.P11921319109286505324

/-! ## A029911.P944022571773586809

`A029912(A018252(Δ[n²]-n))`
-/

namespace A029911.P944022571773586809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029912 (A018252 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A029911.P944022571773586809

/-! ## A029911.P11627671546047628834

`A029912(record[(n+1)*A005171(n+1)])`
-/

namespace A029911.P11627671546047628834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029912 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A029911.P11627671546047628834

/-! ## A029911.P6447240511840254440

`A029910(A051349(n+1)-A051349(n))`
-/

namespace A029911.P6447240511840254440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029910 (A051349 (n + 1) - A051349 n).toNat

end

end A029911.P6447240511840254440

/-! ## A029911.P6762713804558378749

`A029912(A051349(n+1)-A051349(n))`
-/

namespace A029911.P6762713804558378749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029912 (A051349 (n + 1) - A051349 n).toNat

end

end A029911.P6762713804558378749

/-! ## A029911.P1248283736029972727

`A029912(A073846(Δ[n²]))`
-/

namespace A029911.P1248283736029972727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029912 (A073846 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A029911.P1248283736029972727

/-!
# A029912: Start with n; repeatedly sum prime factors (counted with multiplicity) and add 1, until reach 1, 6 or a prime.

The programs for A029912, there is no canonical definition to state claims against.
-/

/-! ## A029912.P13410252727373015592

`A029910(A014683(n+1))`
-/

namespace A029912.P13410252727373015592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029910 (A014683 (n + 1)).toNat

end

end A029912.P13410252727373015592

/-! ## A029912.P4084854548072295959

`A029910(A036288(n+1))`
-/

namespace A029912.P4084854548072295959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029910 (A036288 (n + 1)).toNat

end

end A029912.P4084854548072295959

/-! ## A029912.P17087863356419981066

`A029910(A001414(n+1)+1)`
-/

namespace A029912.P17087863356419981066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029910 (A001414 (n + 1) + 1).toNat

end

end A029912.P17087863356419981066

/-! ## A029912.P13998251548211181445

`A029910(A113637(n+1)+1)`
-/

namespace A029912.P13998251548211181445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029910 (A113637 (n + 1) + 1).toNat

end

end A029912.P13998251548211181445

/-! ## A029912.P9044673978469871046

`A029910(A010051(n+1)+1+n)`
-/

namespace A029912.P9044673978469871046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029910 (A010051 (n + 1) + 1 + (n : ℤ)).toNat

end

end A029912.P9044673978469871046

/-! ## A029912.P3303814678712564215

`A029910(2-A005171(n+1)+n)`
-/

namespace A029912.P3303814678712564215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029910 (2 - A005171 (n + 1) + (n : ℤ)).toNat

end

end A029912.P3303814678712564215

/-!
# A029915: Convert n from yards to meters.

The programs for A029915, there is no canonical definition to state claims against.
-/

/-! ## A029915.P5014747414577549299

`A029917(3*n)`
-/

namespace A029915.P5014747414577549299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029917 (3 * n)

end

end A029915.P5014747414577549299

/-! ## A029915.P12145919879035297091

`A029917(A008486(n))%(n+1)`
-/

namespace A029915.P12145919879035297091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029917 (A008486 n).toNat) (n + 1 : ℤ)

end

end A029915.P12145919879035297091

/-! ## A029915.P7125556359269148122

`A029917(A008585(n))%(n+1)`
-/

namespace A029915.P7125556359269148122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029917 (A008585 n).toNat) (n + 1 : ℤ)

end

end A029915.P7125556359269148122

/-! ## A029915.P17099570334942833590

`lcm(A020985(n), A029917(A008486(n)))`
-/

namespace A029915.P17099570334942833590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A029917 (A008486 n).toNat)

end

end A029915.P17099570334942833590

/-! ## A029915.P11691922387507472801

`A029917(A008486(n))/A000038(n)!`
-/

namespace A029915.P11691922387507472801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029917 (A008486 n).toNat : ℚ) / (Nat.factorial (A000038 n).toNat : ℚ)

end

end A029915.P11691922387507472801

/-! ## A029915.P11235092080491032271

`A029917(A008486(n))+A000038(n+1)`
-/

namespace A029915.P11235092080491032271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029917 (A008486 n).toNat + A000038 (n + 1)

end

end A029915.P11235092080491032271

/-! ## A029915.P13292672644946779329

`A029917(A008585(n))+A000007(n+1)`
-/

namespace A029915.P13292672644946779329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029917 (A008585 n).toNat + A000007 (n + 1)

end

end A029915.P13292672644946779329

/-! ## A029915.P5750143589923419202

`A001489(n)+A029917(A008585(n))+n`
-/

namespace A029915.P5750143589923419202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (A029917 (A008585 n).toNat + (n : ℤ))

end

end A029915.P5750143589923419202

/-! ## A029915.P16600066602942385530

`A029917(A008486(n))/A000005(gcd(n, n+1))`
-/

namespace A029915.P16600066602942385530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029917 (A008486 n).toNat : ℚ) / (A000005 (Nat.gcd n (n + 1)) : ℚ)

end

end A029915.P16600066602942385530

/-! ## A029915.P12289333321962299135

`A000027(n+1)+A029917(A008486(n))-(n+1)`
-/

namespace A029915.P12289333321962299135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + (A029917 (A008486 n).toNat - (n + 1 : ℤ))

end

end A029915.P12289333321962299135

/-! ## A029915.P5279595482597542772

`A000720(A000040(n+1))+A029917(A008486(n))-(n+1)`
-/

namespace A029915.P5279595482597542772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000040 (n + 1)).toNat + (A029917 (A008486 n).toNat - (n + 1 : ℤ))

end

end A029915.P5279595482597542772

/-! ## A029915.P13841045810074615200

`A125117(A067497(n))+A029917(A008585(n))`
-/

namespace A029915.P13841045810074615200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125117 (A067497 n).toNat + A029917 (A008585 n).toNat

end

end A029915.P13841045810074615200

/-! ## A029915.P13745226305222473701

`A029917(A008585(n))^A001222(A084696(n+1))`
-/

namespace A029915.P13745226305222473701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029917 (A008585 n).toNat : ℚ) ^ (A001222 (A084696 (n + 1)).toNat : ℤ)

end

end A029915.P13745226305222473701

/-!
# A029916: Convert n from meters to yards.

The programs for A029916, there is no canonical definition to state claims against.
-/

/-! ## A029916.P5381985485809200410

`A002264(A029918(n)+1)`
-/

namespace A029916.P5381985485809200410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A029918 n + 1).toNat

end

end A029916.P5381985485809200410

/-! ## A029916.P13125444110434238959

`comp[A206818(record[A324467(3*n+1)])]`
-/

namespace A029916.P13125444110434238959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324467 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206818 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A029916.P13125444110434238959

/-! ## A029916.P6018648453331879613

`lt[A340734(A340745(n+4)), 9]`
-/

namespace A029916.P6018648453331879613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340734 (A340745 (n + 4)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A029916.P6018648453331879613

/-! ## A029916.P2441206506877737842

`comp[∑[A304523(A304518(n+5))]]`
-/

namespace A029916.P2441206506877737842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304523 (A304518 (n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A029916.P2441206506877737842

/-! ## A029916.P18321084960880933582

`comp[A162344(A144120(n+1)+A017473(n))-1]`
-/

namespace A029916.P18321084960880933582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162344 (A144120 (n + 1) + A017473 n).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A029916.P18321084960880933582

/-! ## A029916.P11125187589397341655

`A343609(A338857(n)+A332102(n))`
-/

namespace A029916.P11125187589397341655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A338857 n + A332102 n).toNat

end

end A029916.P11125187589397341655

/-!
# A029917: Convert n from feet to meters.

The programs for A029917, there is no canonical definition to state claims against.
-/

/-! ## A029917.P10103158252780011450

`round(A029915(n)/3)`
-/

namespace A029917.P10103158252780011450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A029915 n : ℚ) / 3)

end

end A029917.P10103158252780011450

/-! ## A029917.P14173089750520090626

`A002264(A029915(n)+1)`
-/

namespace A029917.P14173089750520090626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A029915 n + 1).toNat

end

end A029917.P14173089750520090626

/-! ## A029917.P15763533112350238091

`round((A172471((2*n)²)-n)/6)`
-/

namespace A029917.P15763533112350238091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A172471 ((2 * n) ^ 2) - (n : ℤ) : ℚ) / 6)

end

end A029917.P15763533112350238091

/-! ## A029917.P4001413572836307520

`A105564(A029915(n)+A008619(n))`
-/

namespace A029917.P4001413572836307520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105564 (A029915 n + A008619 n).toNat

end

end A029917.P4001413572836307520

/-! ## A029917.P12604747573899612873

`A002265(A174856(2*n+1)+floor(2*(n+1)/ϕ))`
-/

namespace A029917.P12604747573899612873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A174856 (2 * n + 1) + ⌊(2 * (n + 1) : ℝ) / Real.goldenRatio⌋).toNat

end

end A029917.P12604747573899612873

/-! ## A029917.P11359849882008575996

`(A080667(n+1)%(n+1))%A097274(n)`
-/

namespace A029917.P11359849882008575996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A080667 (n + 1)) (n + 1 : ℤ)) (A097274 n)

end

end A029917.P11359849882008575996

/-! ## A029917.P16363678939757113452

`A004526(A256502(n+1)%A167777(n+1))`
-/

namespace A029917.P16363678939757113452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.tmod (A256502 (n + 1)) (A167777 (n + 1))).toNat

end

end A029917.P16363678939757113452

/-!
# A029918: Convert n from meters to feet.

The programs for A029918, there is no canonical definition to state claims against.
-/

/-! ## A029918.P1108451450052593370

`A029916(3*n)`
-/

namespace A029918.P1108451450052593370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029916 (3 * n)

end

end A029918.P1108451450052593370

/-! ## A029918.P2395394418163424053

`A029916(A008585(n))%A005919(n)`
-/

namespace A029918.P2395394418163424053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029916 (A008585 n).toNat) (A005919 n)

end

end A029918.P2395394418163424053

/-! ## A029918.P18047786947284951941

`A029916(A008486(n))%A067713(n)`
-/

namespace A029918.P18047786947284951941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029916 (A008486 n).toNat) (A067713 n)

end

end A029918.P18047786947284951941

/-! ## A029918.P16707548021370725285

`A029916(A008585(n))+A000038(n+1)`
-/

namespace A029918.P16707548021370725285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029916 (A008585 n).toNat + A000038 (n + 1)

end

end A029918.P16707548021370725285

/-! ## A029918.P6872766124137083286

`A029916(A008585(n))/ceil(1/A000034(n))`
-/

namespace A029918.P6872766124137083286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029916 (A008585 n).toNat : ℚ) / (⌈1 / (A000034 n : ℚ)⌉ : ℚ)

end

end A029918.P6872766124137083286

/-! ## A029918.P10522530767031770594

`A029916(A008585(n))/A007318(C(2, n)+1)`
-/

namespace A029918.P10522530767031770594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029916 (A008585 n).toNat : ℚ) / (A007318 (Nat.choose 2 n + 1) : ℚ)

end

end A029918.P10522530767031770594

/-! ## A029918.P9858791078405808387

`A029916(A008585(n))+A000122(A000040(n+1))`
-/

namespace A029918.P9858791078405808387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029916 (A008585 n).toNat + A000122 (A000040 (n + 1)).toNat

end

end A029918.P9858791078405808387

/-! ## A029918.P6197579199128545048

`A029916(A008585(n))+A027656(A000040(n+2))`
-/

namespace A029918.P6197579199128545048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029916 (A008585 n).toNat + A027656 (A000040 (n + 2)).toNat

end

end A029918.P6197579199128545048

/-! ## A029918.P16440738987015837238

`A029916(A008585(n))/A007318(∑[n])`
-/

namespace A029918.P16440738987015837238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029916 (A008585 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A029918.P16440738987015837238

/-!
# A029919: Convert n from inches (") to centimeters (cm).

The programs for A029919, the canonical program `A029919.P6571910681801040718` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029919 has offset 0).

The definition of A029919 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A029919.P6571910681801040718

`round(n*254/100)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029919

/-- `round(n*254/100)` -/
def P6571910681801040718.Spec : Prop :=
  ∀ n, P6571910681801040718.a n = A029919 n

theorem P6571910681801040718.correct : P6571910681801040718.Spec := by
  intro n
  simp only [A029919]

end A029919

/-! ## A029919.P4646117053432070758

`A110654(A002266(floor((9*14*n+n)/5)))`
-/

namespace A029919.P4646117053432070758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A002266 ⌊(9 * (14 * n) + n : ℚ) / 5⌋.toNat).toNat

end

end A029919.P4646117053432070758

namespace A029919

/-- `A110654(A002266(floor((9*14*n+n)/5)))` -/
def P4646117053432070758.Spec : Prop :=
  ∀ n, P4646117053432070758.a n = A029919 n

end A029919

/-! ## A029919.P18050228965131416509

`A059995(A059995(4*n)+A008706(5*n+1))`
-/

namespace A029919.P18050228965131416509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A059995 (4 * n) + A008706 (5 * n + 1)).toNat

end

end A029919.P18050228965131416509

namespace A029919

/-- `A059995(A059995(4*n)+A008706(5*n+1))` -/
def P18050228965131416509.Spec : Prop :=
  ∀ n, P18050228965131416509.a n = A029919 n

end A029919

/-! ## A029919.P15897109595297356180

`floor(sqrt(sqrt(A113422(n*(5*n+2)))))`
-/

namespace A029919.P15897109595297356180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A113422 (n * (5 * n + 2)) : ℝ))⌋

end

end A029919.P15897109595297356180

namespace A029919

/-- `floor(sqrt(sqrt(A113422(n*(5*n+2)))))` -/
def P15897109595297356180.Spec : Prop :=
  ∀ n, P15897109595297356180.a n = A029919 n

end A029919

/-! ## A029919.P11086534633827923621

`A000196(n*A026351(4*n+1))`
-/

namespace A029919.P11086534633827923621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((n : ℤ) * A026351 (4 * n + 1)).toNat

end

end A029919.P11086534633827923621

namespace A029919

/-- `A000196(n*A026351(4*n+1))` -/
def P11086534633827923621.Spec : Prop :=
  ∀ n, P11086534633827923621.a n = A029919 n

end A029919

/-!
# A029920: Convert n from centimeters (cm) to inches (").

The programs for A029920, the canonical program `A029920.P12059621992727629411` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029920 has offset 0).

The definition of A029920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029920.P12059621992727629411

`round(sqrt(31*n/10*n/10/2))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029920

/-- `round(sqrt(31*n/10*n/10/2))` -/
def P12059621992727629411.Spec : Prop :=
  ∀ n, P12059621992727629411.a n = A029920 n

theorem P12059621992727629411.correct : P12059621992727629411.Spec := by
  intro n
  simp only [A029920]

end A029920

/-! ## A029920.P11633424473138084917

`A110654(A085269(2*n))`
-/

namespace A029920.P11633424473138084917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A085269 (2 * n)).toNat

end

end A029920.P11633424473138084917

namespace A029920

/-- `A110654(A085269(2*n))` -/
def P11633424473138084917.Spec : Prop :=
  ∀ n, P11633424473138084917.a n = A029920 n

end A029920

/-! ## A029920.P10560795755134317182

`A085269(2*n)-A085269(n)`
-/

namespace A029920.P10560795755134317182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085269 (2 * n) - A085269 n

end

end A029920.P10560795755134317182

namespace A029920

/-- `A085269(2*n)-A085269(n)` -/
def P10560795755134317182.Spec : Prop :=
  ∀ n, P10560795755134317182.a n = A029920 n

end A029920

/-! ## A029920.P5736541355339329920

`A247015(A247034(round(n/cot(3/8))))`
-/

namespace A029920.P5736541355339329920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247015 (A247034 (SequenceMachineLib.roundAway ((n : ℝ) / Real.cot ((3 : ℚ) / 8 : ℝ))).toNat).toNat

end

end A029920.P5736541355339329920

namespace A029920

/-- `A247015(A247034(round(n/cot(3/8))))` -/
def P5736541355339329920.Spec : Prop :=
  ∀ n, P5736541355339329920.a n = A029920 n

end A029920

/-! ## A029920.P6352633065796367169

`round(n/cot(3/8))*A057427((n+1)²)`
-/

namespace A029920.P6352633065796367169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.cot ((3 : ℚ) / 8 : ℝ)) * A057427 ((n + 1) ^ 2)

end

end A029920.P6352633065796367169

namespace A029920

/-- `round(n/cot(3/8))*A057427((n+1)²)` -/
def P6352633065796367169.Spec : Prop :=
  ∀ n, P6352633065796367169.a n = A029920 n

end A029920

/-! ## A029920.P16431836123816458379

`floor(∑[A320472(n)]/(2*n+3))`
-/

namespace A029920.P16431836123816458379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (2 * n + 3 : ℚ)⌋

end

end A029920.P16431836123816458379

namespace A029920

/-- `floor(∑[A320472(n)]/(2*n+3))` -/
def P16431836123816458379.Spec : Prop :=
  ∀ n, P16431836123816458379.a n = A029920 n

end A029920

/-!
# A029921: Convert n from miles to kilometers (km).

The programs for A029921, the canonical program `A029921.P10660007710439231407` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029921 has offset 0).

The definition of A029921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029921.P10660007710439231407

`A085270(2*n)-A085270(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029921

/-- `A085270(2*n)-A085270(n)` -/
def P10660007710439231407.Spec : Prop :=
  ∀ n, P10660007710439231407.a n = A029921 n

theorem P10660007710439231407.correct : P10660007710439231407.Spec := by
  intro n
  simp only [A029921]

end A029921

/-! ## A029921.P16159282770194536529

`A209229(A055999(n+3))+round(n*root(45, 8))`
-/

namespace A029921.P16159282770194536529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A055999 (n + 3)).toNat + SequenceMachineLib.roundAway ((n : ℝ) * (45 : ℝ) ^ (1 / (8 : ℝ)))

end

end A029921.P16159282770194536529

namespace A029921

/-- `A209229(A055999(n+3))+round(n*root(45, 8))` -/
def P16159282770194536529.Spec : Prop :=
  ∀ n, P16159282770194536529.a n = A029921 n

end A029921

/-! ## A029921.P10305880751693208219

`round(n*root(45, 8))-A000007(A014591(n))`
-/

namespace A029921.P10305880751693208219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * (45 : ℝ) ^ (1 / (8 : ℝ))) - A000007 (A014591 n).toNat

end

end A029921.P10305880751693208219

namespace A029921

/-- `round(n*root(45, 8))-A000007(A014591(n))` -/
def P10305880751693208219.Spec : Prop :=
  ∀ n, P10305880751693208219.a n = A029921 n

end A029921

/-! ## A029921.P1274126954205143451

`round(n*root(45, 8))%A000079(n+1)`
-/

namespace A029921.P1274126954205143451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n : ℝ) * (45 : ℝ) ^ (1 / (8 : ℝ)))) (A000079 (n + 1))

end

end A029921.P1274126954205143451

namespace A029921

/-- `round(n*root(45, 8))%A000079(n+1)` -/
def P1274126954205143451.Spec : Prop :=
  ∀ n, P1274126954205143451.a n = A029921 n

end A029921

/-! ## A029921.P10759180470010175896

`A209229(A005891(n+4))+round(n*root(45, 8))`
-/

namespace A029921.P10759180470010175896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A005891 (n + 4)).toNat + SequenceMachineLib.roundAway ((n : ℝ) * (45 : ℝ) ^ (1 / (8 : ℝ)))

end

end A029921.P10759180470010175896

namespace A029921

/-- `A209229(A005891(n+4))+round(n*root(45, 8))` -/
def P10759180470010175896.Spec : Prop :=
  ∀ n, P10759180470010175896.a n = A029921 n

end A029921

/-! ## A029921.P15651440591560266789

`A209229(A038580(n+1))+round(n*root(45, 8))`
-/

namespace A029921.P15651440591560266789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A038580 (n + 1)).toNat + SequenceMachineLib.roundAway ((n : ℝ) * (45 : ℝ) ^ (1 / (8 : ℝ)))

end

end A029921.P15651440591560266789

namespace A029921

/-- `A209229(A038580(n+1))+round(n*root(45, 8))` -/
def P15651440591560266789.Spec : Prop :=
  ∀ n, P15651440591560266789.a n = A029921 n

end A029921

/-! ## A029921.P4533318475351707041

`ceil(log(3*5^(n-1)))`
-/

namespace A029921.P4533318475351707041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (3 * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌉

end

end A029921.P4533318475351707041

namespace A029921

/-- `ceil(log(3*5^(n-1)))` -/
def P4533318475351707041.Spec : Prop :=
  ∀ n, P4533318475351707041.a n = A029921 n

end A029921

/-! ## A029921.P5714021935038414587

`floor(log(record[A118266(n)]))`
-/

namespace A029921.P5714021935038414587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)⌋

end

end A029921.P5714021935038414587

namespace A029921

/-- `floor(log(record[A118266(n)]))` -/
def P5714021935038414587.Spec : Prop :=
  ∀ n, P5714021935038414587.a n = A029921 n

end A029921

/-! ## A029921.P15344996915710106053

`floor(log(A037703(n+1)))`
-/

namespace A029921.P15344996915710106053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A037703 (n + 1) : ℝ)⌋

end

end A029921.P15344996915710106053

namespace A029921

/-- `floor(log(A037703(n+1)))` -/
def P15344996915710106053.Spec : Prop :=
  ∀ n, P15344996915710106053.a n = A029921 n

end A029921

/-! ## A029921.P1798330657758561769

`floor(log(ϕ*A000351(n)))`
-/

namespace A029921.P1798330657758561769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.goldenRatio * (A000351 n : ℝ))⌋

end

end A029921.P1798330657758561769

namespace A029921

/-- `floor(log(ϕ*A000351(n)))` -/
def P1798330657758561769.Spec : Prop :=
  ∀ n, P1798330657758561769.a n = A029921 n

end A029921

/-! ## A029921.P13815506973700993842

`floor(log(A118266(n+1)+1))`
-/

namespace A029921.P13815506973700993842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A118266 (n + 1) + 1 : ℝ)⌋

end

end A029921.P13815506973700993842

namespace A029921

/-- `floor(log(A118266(n+1)+1))` -/
def P13815506973700993842.Spec : Prop :=
  ∀ n, P13815506973700993842.a n = A029921 n

end A029921

/-!
# A029922: Convert n from kilometers (km) to miles.

The programs for A029922, the canonical program `A029922.P12532819948336392736` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029922 has offset 0).

The definition of A029922 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029922.P17120976683728503693

`round(n/log(5))%A000040(A320509(n))`
-/

namespace A029922.P17120976683728503693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n : ℝ) / Real.log (5 : ℝ))) (A000040 (A320509 n).toNat)

end

end A029922.P17120976683728503693

namespace A029922

/-- `round(n/log(5))%A000040(A320509(n))` -/
def P17120976683728503693.Spec : Prop :=
  ∀ n, P17120976683728503693.a n = A029922 n

end A029922

/-! ## A029922.P12532819948336392736

`A000038(A267368(n))+round(n/log(5))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A029922

/-- `A000038(A267368(n))+round(n/log(5))` -/
def P12532819948336392736.Spec : Prop :=
  ∀ n, P12532819948336392736.a n = A029922 n

theorem P12532819948336392736.correct : P12532819948336392736.Spec := by
  intro n
  simp only [A029922]

end A029922

/-! ## A029922.P2738534903648577579

`A000038(A076136(3*n+5))+round(n/log(5))`
-/

namespace A029922.P2738534903648577579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A076136 (3 * n + 5)).toNat + SequenceMachineLib.roundAway ((n : ℝ) / Real.log (5 : ℝ))

end

end A029922.P2738534903648577579

namespace A029922

/-- `A000038(A076136(3*n+5))+round(n/log(5))` -/
def P2738534903648577579.Spec : Prop :=
  ∀ n, P2738534903648577579.a n = A029922 n

end A029922

/-! ## A029922.P5988704922734016685

`A143259(A335785(n+1))+round(n/log(5))`
-/

namespace A029922.P5988704922734016685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143259 (A335785 (n + 1)).toNat + SequenceMachineLib.roundAway ((n : ℝ) / Real.log (5 : ℝ))

end

end A029922.P5988704922734016685

namespace A029922

/-- `A143259(A335785(n+1))+round(n/log(5))` -/
def P5988704922734016685.Spec : Prop :=
  ∀ n, P5988704922734016685.a n = A029922 n

end A029922

/-! ## A029922.P17318324276415796548

`round(n/log(5))*A327936(A126240(n+1))`
-/

namespace A029922.P17318324276415796548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.log (5 : ℝ)) * A327936 (A126240 (n + 1)).toNat

end

end A029922.P17318324276415796548

namespace A029922

/-- `round(n/log(5))*A327936(A126240(n+1))` -/
def P17318324276415796548.Spec : Prop :=
  ∀ n, P17318324276415796548.a n = A029922 n

end A029922

/-! ## A029922.P8744056098920121733

`round(n/log(5))*A033273(A162587(n+1))`
-/

namespace A029922.P8744056098920121733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.log (5 : ℝ)) * A033273 (A162587 (n + 1)).toNat

end

end A029922.P8744056098920121733

namespace A029922

/-- `round(n/log(5))*A033273(A162587(n+1))` -/
def P8744056098920121733.Spec : Prop :=
  ∀ n, P8744056098920121733.a n = A029922 n

end A029922

/-! ## A029922.P6343763638137154960

`A000038(A253563(n))+round(n/log(5))`
-/

namespace A029922.P6343763638137154960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A253563 n).toNat + SequenceMachineLib.roundAway ((n : ℝ) / Real.log (5 : ℝ))

end

end A029922.P6343763638137154960

namespace A029922

/-- `A000038(A253563(n))+round(n/log(5))` -/
def P6343763638137154960.Spec : Prop :=
  ∀ n, P6343763638137154960.a n = A029922 n

end A029922

/-! ## A029922.P16202384957833588091

`A000038(A050322(n+1))+round(n/log(5))`
-/

namespace A029922.P16202384957833588091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A050322 (n + 1)).toNat + SequenceMachineLib.roundAway ((n : ℝ) / Real.log (5 : ℝ))

end

end A029922.P16202384957833588091

namespace A029922

/-- `A000038(A050322(n+1))+round(n/log(5))` -/
def P16202384957833588091.Spec : Prop :=
  ∀ n, P16202384957833588091.a n = A029922 n

end A029922

/-! ## A029922.P2995535949678826238

`sqrt(A048760(round(n/log(5))²))`
-/

namespace A029922.P2995535949678826238
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A048760 (SequenceMachineLib.roundAway ((n : ℝ) / Real.log (5 : ℝ)) ^ 2).toNat : ℝ)

end

end A029922.P2995535949678826238

namespace A029922

/-- `sqrt(A048760(round(n/log(5))²))` -/
def P2995535949678826238.Spec : Prop :=
  ∀ n, P2995535949678826238.a n = (A029922 n : ℝ)

end A029922

/-! ## A029922.P9052661079976215239

`A172471(A004525(round(n/log(5))²))`
-/

namespace A029922.P9052661079976215239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A004525 (SequenceMachineLib.roundAway ((n : ℝ) / Real.log (5 : ℝ)) ^ 2).toNat).toNat

end

end A029922.P9052661079976215239

namespace A029922

/-- `A172471(A004525(round(n/log(5))²))` -/
def P9052661079976215239.Spec : Prop :=
  ∀ n, P9052661079976215239.a n = A029922 n

end A029922

/-!
# A029923: Convert n from pounds (lbs) to kilograms (kg).

The programs for A029923, there is no canonical definition to state claims against.
-/

/-! ## A029923.P11893839991513850568

`A121902(A001951(∑[floor(ϕ*(n+1))]))`
-/

namespace A029923.P11893839991513850568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A001951 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A029923.P11893839991513850568

/-! ## A029923.P2376664763992393517

`A100682(n+2)-A318666((3*n+4)²)`
-/

namespace A029923.P2376664763992393517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100682 (n + 2) - A318666 ((3 * n + 4) ^ 2)

end

end A029923.P2376664763992393517

/-! ## A029923.P8609795381045539250

`A100682(n+2)-A008683(A131208(n+1))²`
-/

namespace A029923.P8609795381045539250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100682 (n + 2) - A008683 (A131208 (n + 1)).toNat ^ 2

end

end A029923.P8609795381045539250

/-! ## A029923.P16276768229032176416

`A100682(n+2)-A000035(A100667(n+1))`
-/

namespace A029923.P16276768229032176416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100682 (n + 2) - A000035 (A100667 (n + 1)).toNat

end

end A029923.P16276768229032176416

/-! ## A029923.P7952745955640152681

`A100682(n+2)-A054977(A340509(n+1))`
-/

namespace A029923.P7952745955640152681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100682 (n + 2) - A054977 (A340509 (n + 1)).toNat

end

end A029923.P7952745955640152681

/-! ## A029923.P6073105533891725881

`A100682(n+2)-A054977(A340526(n+1))`
-/

namespace A029923.P6073105533891725881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100682 (n + 2) - A054977 (A340526 (n + 1)).toNat

end

end A029923.P6073105533891725881

/-! ## A029923.P8253615634767073259

`A100682(n+2)-A001222(A100667(n+2))`
-/

namespace A029923.P8253615634767073259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100682 (n + 2) - A001222 (A100667 (n + 2)).toNat

end

end A029923.P8253615634767073259

/-! ## A029923.P13916934708390706488

`A100682(n+2)-A054977(A058187(n))`
-/

namespace A029923.P13916934708390706488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100682 (n + 2) - A054977 (A058187 n).toNat

end

end A029923.P13916934708390706488

/-! ## A029923.P13749281100821645266

`A100682(n+2)-A054977(A259036(2*n+1))`
-/

namespace A029923.P13749281100821645266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100682 (n + 2) - A054977 (A259036 (2 * n + 1)).toNat

end

end A029923.P13749281100821645266

/-!
# A029924: Convert n from kilograms (kg) to pounds (lbs).

The programs for A029924, there is no canonical definition to state claims against.
-/

/-! ## A029924.P7610494280011371350

`A003056(A000201(A005448(n+1))-A347643(n))`
-/

namespace A029924.P7610494280011371350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000201 (A005448 (n + 1)).toNat - A347643 n).toNat

end

end A029924.P7610494280011371350

/-! ## A029924.P13699153067167634793

`A002024(∑[A000201(3*(n+1))])-3`
-/

namespace A029924.P13699153067167634793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 3

end

end A029924.P13699153067167634793

/-! ## A029924.P12949476633827501544

`A123578(∑[A000201(3*(n+1))])-3`
-/

namespace A029924.P12949476633827501544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 3

end

end A029924.P12949476633827501544

/-! ## A029924.P3639056347499222230

`A000196(2*n*A186222(n+1))`
-/

namespace A029924.P3639056347499222230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((2 * n : ℤ) * A186222 (n + 1)).toNat

end

end A029924.P3639056347499222230

/-! ## A029924.P4585496705257521989

`A057366(A160413(2*n+1))%A255208(n+1)`
-/

namespace A029924.P4585496705257521989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057366 (A160413 (2 * n + 1)).toNat) (A255208 (n + 1))

end

end A029924.P4585496705257521989

/-!
# A029925: Convert n from degrees Celsius to nearest integer Fahrenheit.

The programs for A029925, the canonical program `A029925.P17451106736802147785` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029925 has offset 0).

The definition of A029925 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A029925.P17451106736802147785

`floor((18*n+325)/10)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029925

/-- `floor((18*n+325)/10)` -/
def P17451106736802147785.Spec : Prop :=
  ∀ n, P17451106736802147785.a n = A029925 n

theorem P17451106736802147785.correct : P17451106736802147785.Spec := by
  intro n
  simp only [A029925]

end A029925

/-! ## A029925.P16808003337628416623

`A085259(n)+floor(A177154(n)/5)`
-/

namespace A029925.P16808003337628416623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085259 n + ⌊(A177154 n : ℚ) / 5⌋

end

end A029925.P16808003337628416623

namespace A029925

/-- `A085259(n)+floor(A177154(n)/5)` -/
def P16808003337628416623.Spec : Prop :=
  ∀ n, P16808003337628416623.a n = A029925 n

theorem P16808003337628416623.correct : P16808003337628416623.Spec := by
  intro n
  simp only [A029925, Nat.add_sub_cancel, A029925.P16808003337628416623.a, A029925.P17451106736802147785.a, A085259, A085259.P130799474644936207.a, A177154, A177154.P1181650162831006829.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029925

/-! ## A029925.P7434405083381818249

`∑[A053737(a(n-5))]` with `a(0)=32, a(1)=2, a(2)=2, a(3)=1, a(4)=2`
-/

namespace A029925.P7434405083381818249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [32, 2, 2, 1, 2] fun n f1 =>
  A053737 (f1 (n - 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029925.P7434405083381818249

namespace A029925

/-- `∑[A053737(a(n-5))]` -/
def P7434405083381818249.Spec : Prop :=
  ∀ n, P7434405083381818249.a n = A029925 n

end A029925

/-! ## A029925.P13211527150619780593

`A085259(n+3)-5`
-/

namespace A029925.P13211527150619780593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085259 (n + 3) - 5

end

end A029925.P13211527150619780593

namespace A029925

/-- `A085259(n+3)-5` -/
def P13211527150619780593.Spec : Prop :=
  ∀ n, P13211527150619780593.a n = A029925 n

end A029925

/-! ## A029925.P2594111153844921083

`A090223(n+18)+18+n`
-/

namespace A029925.P2594111153844921083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (n + 18) + 18 + (n : ℤ)

end

end A029925.P2594111153844921083

namespace A029925

/-- `A090223(n+18)+18+n` -/
def P2594111153844921083.Spec : Prop :=
  ∀ n, P2594111153844921083.a n = A029925 n

end A029925

/-! ## A029925.P2703755360583768259

`A187318(n+18)`
-/

namespace A029925.P2703755360583768259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187318 (n + 18)

end

end A029925.P2703755360583768259

namespace A029925

/-- `A187318(n+18)` -/
def P2703755360583768259.Spec : Prop :=
  ∀ n, P2703755360583768259.a n = A029925 n

end A029925

/-! ## A029925.P6301660356852416354

`A047367(2*(n+12))-n`
-/

namespace A029925.P6301660356852416354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047367 (2 * (n + 12)) - (n : ℤ)

end

end A029925.P6301660356852416354

namespace A029925

/-- `A047367(2*(n+12))-n` -/
def P6301660356852416354.Spec : Prop :=
  ∀ n, P6301660356852416354.a n = A029925 n

end A029925

/-!
# A029926: Convert n from degrees Fahrenheit to nearest integer Celsius.

The programs for A029926, the canonical program `A029926.P11559020506411148068` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029926 has offset 0).

The definition of A029926 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A029926.P11559020506411148068

`round(5*(n-32)/9)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029926

/-- `round(5*(n-32)/9)` -/
def P11559020506411148068.Spec : Prop :=
  ∀ n, P11559020506411148068.a n = A029926 n

theorem P11559020506411148068.correct : P11559020506411148068.Spec := by
  intro n
  simp only [A029926]

end A029926

/-! ## A029926.P570551139170289912

`A085268(n+3)-19`
-/

namespace A029926.P570551139170289912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085268 (n + 3 + 32) - 19

end

end A029926.P570551139170289912

namespace A029926

/-- `A085268(n+3)-19` -/
def P570551139170289912.Spec : Prop :=
  ∀ n, P570551139170289912.a n = A029926 n

end A029926

/-! ## A029926.P9048316675442925118

`A008620(A008620(A016885(n)))-19`
-/

namespace A029926.P9048316675442925118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A008620 (A016885 n).toNat).toNat - 19

end

end A029926.P9048316675442925118

namespace A029926

/-- `A008620(A008620(A016885(n)))-19` -/
def P9048316675442925118.Spec : Prop :=
  ∀ n, P9048316675442925118.a n = A029926 n

end A029926

/-! ## A029926.P4405062192824494581

`A008618(A017305(n))-18`
-/

namespace A029926.P4405062192824494581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A017305 n).toNat - 18

end

end A029926.P4405062192824494581

namespace A029926

/-- `A008618(A017305(n))-18` -/
def P4405062192824494581.Spec : Prop :=
  ∀ n, P4405062192824494581.a n = A029926 n

end A029926

/-! ## A029926.P2831129808608502984

`Δ[A025823(10*n+2)]-19`
-/

namespace A029926.P2831129808608502984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025823 (10 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 19

end

end A029926.P2831129808608502984

namespace A029926

/-- `Δ[A025823(10*n+2)]-19` -/
def P2831129808608502984.Spec : Prop :=
  ∀ n, P2831129808608502984.a n = A029926 n

end A029926

/-! ## A029926.P175121510662282011

`A033183(20*(n+3))-20`
-/

namespace A029926.P175121510662282011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (20 * (n + 3)) - 20

end

end A029926.P175121510662282011

namespace A029926

/-- `A033183(20*(n+3))-20` -/
def P175121510662282011.Spec : Prop :=
  ∀ n, P175121510662282011.a n = A029926 n

end A029926

/-!
# A029927: Convert n from nautical miles to statute miles.

The programs for A029927, there is no canonical definition to state claims against.
-/

/-! ## A029927.P8743056942505156063

`A123108(A034887(n))-A169585(A139874(n+1))+n`
-/

namespace A029927.P8743056942505156063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A034887 n).toNat - A169585 (A139874 (n + 1)).toNat + (n : ℤ)

end

end A029927.P8743056942505156063

/-! ## A029927.P832699412056298984

`A123108(A034887(n))/A054977(A008804(n))+n`
-/

namespace A029927.P832699412056298984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123108 (A034887 n).toNat : ℚ) / (A054977 (A008804 n).toNat : ℚ) + (n : ℚ)

end

end A029927.P832699412056298984

/-! ## A029927.P10991251804600758620

`A123108(A034887(n))+A089856(A089856(n))`
-/

namespace A029927.P10991251804600758620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A034887 n).toNat + A089856 (A089856 n).toNat

end

end A029927.P10991251804600758620

/-! ## A029927.P15471743692488993246

`A123108(A034887(n))%(A072088(n)+1)+n`
-/

namespace A029927.P15471743692488993246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123108 (A034887 n).toNat) (A072088 n + 1) + (n : ℤ)

end

end A029927.P15471743692488993246

/-! ## A029927.P16086808783252202619

`A123108(A034887(n))+A072089(A072088(n))`
-/

namespace A029927.P16086808783252202619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A034887 n).toNat + A072089 (A072088 n).toNat

end

end A029927.P16086808783252202619

/-! ## A029927.P615413202409608964

`A059995(A296350(n+1)+2)+n`
-/

namespace A029927.P615413202409608964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A296350 (n + 1) + 2).toNat + (n : ℤ)

end

end A029927.P615413202409608964

/-! ## A029927.P5367478258350487257

`A059995(A296350(n+2))+n`
-/

namespace A029927.P5367478258350487257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A296350 (n + 2)).toNat + (n : ℤ)

end

end A029927.P5367478258350487257

/-!
# A029928: Convert n from statute miles to nautical miles.

The programs for A029928, there is no canonical definition to state claims against.
-/

/-! ## A029928.P9865298888427981354

`ceil((A090848(n+1)-4)/3)`
-/

namespace A029928.P9865298888427981354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A090848 (n + 1) - 4 : ℚ) / 3⌉

end

end A029928.P9865298888427981354

/-! ## A029928.P16310408443676927913

`floor(A285526(n+1)/9)`
-/

namespace A029928.P16310408443676927913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A285526 (n + 1) : ℚ) / 9⌋

end

end A029928.P16310408443676927913

/-! ## A029928.P4215572906611245759

`A343609(A285526(n+1))`
-/

namespace A029928.P4215572906611245759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A285526 (n + 1)).toNat

end

end A029928.P4215572906611245759

/-! ## A029928.P2421030300654856766

`A152467(A141107(2*n+1))`
-/

namespace A029928.P2421030300654856766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A141107 (2 * n + 1)).toNat

end

end A029928.P2421030300654856766

/-!
# A029929: a(n) = n*(n + ceiling(2^n/12)).

The programs for A029929, the canonical program `A029929.P9949562801206903288` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029929 has offset 0).

The definition of A029929 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+ceil(2^n/12))` (program `A029929.P9949562801206903288`, by `A029929.P9949562801206903288.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A029929.P9949562801206903288

`n*(n+ceil(2^n/12))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029929

/-- `n*(n+ceil(2^n/12))` -/
def P9949562801206903288.Spec : Prop :=
  ∀ n, P9949562801206903288.a n = A029929 n

theorem P9949562801206903288.correct : P9949562801206903288.Spec := by
  intro n
  simp only [A029929]

end A029929

/-!
# A029930: If 2n = Sum 2^e_i, a(n) = Product 2^e_i.

The programs for A029930, the canonical program `A029930.P3707852897458008637` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029930 has offset 0).

The definition of A029930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029930.P4548409536229080118

`2^A029931(n)`
-/

namespace A029930.P4548409536229080118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A029931 n : ℤ)

end

end A029930.P4548409536229080118

namespace A029930

/-- `2^A029931(n)` -/
def P4548409536229080118.Spec : Prop :=
  ∀ n, P4548409536229080118.a n = (A029930 n : ℚ)

end A029930

/-! ## A029930.P3707852897458008637

`2*a(n-gcd(floor(n/2), a(n-1)))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029930

/-- `2*a(n-gcd(floor(n/2), a(n-1)))` -/
def P3707852897458008637.Spec : Prop :=
  ∀ n, (P3707852897458008637.a n : ℤ) = A029930 n

theorem P3707852897458008637.correct : P3707852897458008637.Spec := by
  intro n
  simp only [A029930]

end A029930

/-! ## A029930.P150389123038213145

`A000079(A029931(n))`
-/

namespace A029930.P150389123038213145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A029931 n).toNat

end

end A029930.P150389123038213145

namespace A029930

/-- `A000079(A029931(n))` -/
def P150389123038213145.Spec : Prop :=
  ∀ n, P150389123038213145.a n = A029930 n

end A029930

/-! ## A029930.P966646246096086460

`A011782(A029931(n)+1)`
-/

namespace A029930.P966646246096086460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A029931 n + 1).toNat

end

end A029930.P966646246096086460

namespace A029930

/-- `A011782(A029931(n)+1)` -/
def P966646246096086460.Spec : Prop :=
  ∀ n, P966646246096086460.a n = A029930 n

end A029930

/-! ## A029930.P6975274379634453209

`A131577(A029931(n)+1)`
-/

namespace A029930.P6975274379634453209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A029931 n + 1).toNat

end

end A029930.P6975274379634453209

namespace A029930

/-- `A131577(A029931(n)+1)` -/
def P6975274379634453209.Spec : Prop :=
  ∀ n, P6975274379634453209.a n = A029930 n

end A029930

/-! ## A029930.P15382015355784861608

`a(A004526(n))*A001316(n)` with `a(0)=1`
-/

namespace A029930.P15382015355784861608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A004526 n).toNat * A001316 n

end

end A029930.P15382015355784861608

namespace A029930

/-- `a(A004526(n))*A001316(n)` -/
def P15382015355784861608.Spec : Prop :=
  ∀ n, P15382015355784861608.a n = A029930 n

end A029930

/-! ## A029930.P13887561294679850960

`a(A123108(n))*A001316(n)` with `a(0)=1`
-/

namespace A029930.P13887561294679850960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A123108 n).toNat * A001316 n

end

end A029930.P13887561294679850960

namespace A029930

/-- `a(A123108(n))*A001316(n)` -/
def P13887561294679850960.Spec : Prop :=
  ∀ n, P13887561294679850960.a n = A029930 n

end A029930

/-! ## A029930.P6576992259054770628

`A000079(A073642(n)+A000120(n))`
-/

namespace A029930.P6576992259054770628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A073642 n + A000120 n).toNat

end

end A029930.P6576992259054770628

namespace A029930

/-- `A000079(A073642(n)+A000120(n))` -/
def P6576992259054770628.Spec : Prop :=
  ∀ n, P6576992259054770628.a n = A029930 n

end A029930

/-! ## A029930.P12143357347963111845

`2^A073642(2*n)`
-/

namespace A029930.P12143357347963111845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A073642 (2 * n) : ℤ)

end

end A029930.P12143357347963111845

namespace A029930

/-- `2^A073642(2*n)` -/
def P12143357347963111845.Spec : Prop :=
  ∀ n, P12143357347963111845.a n = (A029930 n : ℚ)

end A029930

/-! ## A029930.P5269410193722062078

`A059867(A004277(n))`
-/

namespace A029930.P5269410193722062078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059867 (A004277 n).toNat

end

end A029930.P5269410193722062078

namespace A029930

/-- `A059867(A004277(n))` -/
def P5269410193722062078.Spec : Prop :=
  ∀ n, P5269410193722062078.a n = A029930 n

end A029930

/-! ## A029930.P17541003939520467608

`A059867(A000069(n+1))`
-/

namespace A029930.P17541003939520467608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059867 (A000069 (n + 1)).toNat

end

end A029930.P17541003939520467608

namespace A029930

/-- `A059867(A000069(n+1))` -/
def P17541003939520467608.Spec : Prop :=
  ∀ n, P17541003939520467608.a n = A029930 n

end A029930

/-! ## A029930.P7959587122795105261

`A059867(A004275(n+1))`
-/

namespace A029930.P7959587122795105261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059867 (A004275 (n + 1)).toNat

end

end A029930.P7959587122795105261

namespace A029930

/-- `A059867(A004275(n+1))` -/
def P7959587122795105261.Spec : Prop :=
  ∀ n, P7959587122795105261.a n = A029930 n

end A029930

/-! ## A029930.P8254288882215882723

`A059867(A029739(n+1))`
-/

namespace A029930.P8254288882215882723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059867 (A029739 (n + 1)).toNat

end

end A029930.P8254288882215882723

namespace A029930

/-- `A059867(A029739(n+1))` -/
def P8254288882215882723.Spec : Prop :=
  ∀ n, P8254288882215882723.a n = A029930 n

end A029930

/-! ## A029930.P15749600888742918103

`A059867(A047236(n+1))`
-/

namespace A029930.P15749600888742918103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059867 (A047236 (n + 1)).toNat

end

end A029930.P15749600888742918103

namespace A029930

/-- `A059867(A047236(n+1))` -/
def P15749600888742918103.Spec : Prop :=
  ∀ n, P15749600888742918103.a n = A029930 n

end A029930

/-! ## A029930.P17799708182143259477

`A000079(A073642(2*n))`
-/

namespace A029930.P17799708182143259477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A073642 (2 * n)).toNat

end

end A029930.P17799708182143259477

namespace A029930

/-- `A000079(A073642(2*n))` -/
def P17799708182143259477.Spec : Prop :=
  ∀ n, P17799708182143259477.a n = A029930 n

end A029930

/-! ## A029930.P17363805956257277322

`A011782(A073642(2*n)+1)`
-/

namespace A029930.P17363805956257277322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A073642 (2 * n) + 1).toNat

end

end A029930.P17363805956257277322

namespace A029930

/-- `A011782(A073642(2*n)+1)` -/
def P17363805956257277322.Spec : Prop :=
  ∀ n, P17363805956257277322.a n = A029930 n

end A029930

/-! ## A029930.P7842639484884899353

`A059867(Δ[n²])`
-/

namespace A029930.P7842639484884899353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059867 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A029930.P7842639484884899353

namespace A029930

/-- `A059867(Δ[n²])` -/
def P7842639484884899353.Spec : Prop :=
  ∀ n, P7842639484884899353.a n = A029930 n

end A029930

/-! ## A029930.P14930324847601085610

`or(n, A059867(2*n+1))-n`
-/

namespace A029930.P14930324847601085610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A059867 (2 * n + 1)) - (n : ℤ)

end

end A029930.P14930324847601085610

namespace A029930

/-- `or(n, A059867(2*n+1))-n` -/
def P14930324847601085610.Spec : Prop :=
  ∀ n, P14930324847601085610.a n = A029930 n

end A029930

/-! ## A029930.P11477534933886968259

`A000051(A073642(2*n+1))-1`
-/

namespace A029930.P11477534933886968259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A073642 (2 * n + 1)).toNat - 1

end

end A029930.P11477534933886968259

namespace A029930

/-- `A000051(A073642(2*n+1))-1` -/
def P11477534933886968259.Spec : Prop :=
  ∀ n, P11477534933886968259.a n = A029930 n

end A029930

/-! ## A029930.P388310523319546837

`A006519(2*n+1)*A059867(2*n+1)`
-/

namespace A029930.P388310523319546837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 1) * A059867 (2 * n + 1)

end

end A029930.P388310523319546837

namespace A029930

/-- `A006519(2*n+1)*A059867(2*n+1)` -/
def P388310523319546837.Spec : Prop :=
  ∀ n, P388310523319546837.a n = A029930 n

end A029930

/-!
# A029931: If 2n = Sum 2^e_i, a(n) = Sum e_i.

The programs for A029931, the canonical program `A029931.P9873769426762813119` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029931 has offset 0).

The definition of A029931 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029930, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A029931.P9873769426762813119

`log2(A029930(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029931

/-- `log2(A029930(n))` -/
def P9873769426762813119.Spec : Prop :=
  ∀ n, P9873769426762813119.a n = (A029931 n : ℝ)

end A029931

/-! ## A029931.P12278308227142211708

`A073642(n)+A000120(n)`
-/

namespace A029931.P12278308227142211708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 n + A000120 n

end

end A029931.P12278308227142211708

namespace A029931

/-- `A073642(n)+A000120(n)` -/
def P12278308227142211708.Spec : Prop :=
  ∀ n, P12278308227142211708.a n = A029931 n

end A029931

/-! ## A029931.P16869580337544196893

`A087810(n)+a(n-1)` with `a(0)=0`
-/

namespace A029931.P16869580337544196893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A087810 n + a (n - 1)

end

end A029931.P16869580337544196893

namespace A029931

/-- `A087810(n)+a(n-1)` -/
def P16869580337544196893.Spec : Prop :=
  ∀ n, P16869580337544196893.a n = A029931 n

end A029931

/-! ## A029931.P14144409513210025787

`a(floor(n/2))+n-A011371(n)` with `a(0)=0`
-/

namespace A029931.P14144409513210025787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ) - A011371 n

end

end A029931.P14144409513210025787

namespace A029931

/-- `a(floor(n/2))+n-A011371(n)` -/
def P14144409513210025787.Spec : Prop :=
  ∀ n, P14144409513210025787.a n = A029931 n

end A029931

/-! ## A029931.P9903690580925729433

`A283981(n)+A280700(n)`
-/

namespace A029931.P9903690580925729433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283981 n + A280700 n

end

end A029931.P9903690580925729433

namespace A029931

/-- `A283981(n)+A280700(n)` -/
def P9903690580925729433.Spec : Prop :=
  ∀ n, P9903690580925729433.a n = A029931 n

end A029931

/-! ## A029931.P3523117370919450157

`A393336(n)+A359400(n)`
-/

namespace A029931.P3523117370919450157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393336 n + A359400 n

end

end A029931.P3523117370919450157

namespace A029931

/-- `A393336(n)+A359400(n)` -/
def P3523117370919450157.Spec : Prop :=
  ∀ n, P3523117370919450157.a n = A029931 n

end A029931

/-! ## A029931.P15503447434188419635

`A249154(n)-A198192(n)`
-/

namespace A029931.P15503447434188419635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249154 n - A198192 n

end

end A029931.P15503447434188419635

namespace A029931

/-- `A249154(n)-A198192(n)` -/
def P15503447434188419635.Spec : Prop :=
  ∀ n, P15503447434188419635.a n = A029931 n

end A029931

/-! ## A029931.P13201377522904109949

`A124757(n)+A029837(n+1)`
-/

namespace A029931.P13201377522904109949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 n + A029837 (n + 1)

end

end A029931.P13201377522904109949

namespace A029931

/-- `A124757(n)+A029837(n+1)` -/
def P13201377522904109949.Spec : Prop :=
  ∀ n, P13201377522904109949.a n = A029931 n

end A029931

/-! ## A029931.P14671199185180694997

`A073642(n)+n-A011371(n)`
-/

namespace A029931.P14671199185180694997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 n + ((n : ℤ) - A011371 n)

end

end A029931.P14671199185180694997

namespace A029931

/-- `A073642(n)+n-A011371(n)` -/
def P14671199185180694997.Spec : Prop :=
  ∀ n, P14671199185180694997.a n = A029931 n

end A029931

/-! ## A029931.P4145342872139030557

`val(A029930(n), A020639(2*(n+1)))`
-/

namespace A029931.P4145342872139030557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A029930 n).toNat (A020639 (2 * (n + 1))).toNat

end

end A029931.P4145342872139030557

namespace A029931

/-- `val(A029930(n), A020639(2*(n+1)))` -/
def P4145342872139030557.Spec : Prop :=
  ∀ n, (P4145342872139030557.a n : ℤ) = A029931 n

end A029931

/-! ## A029931.P6392587281578452691

`∑[A087810(n+1)]-A087810(n+1)`
-/

namespace A029931.P6392587281578452691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A087810 (n + 1)

end

end A029931.P6392587281578452691

namespace A029931

/-- `∑[A087810(n+1)]-A087810(n+1)` -/
def P6392587281578452691.Spec : Prop :=
  ∀ n, P6392587281578452691.a n = A029931 n

end A029931

/-! ## A029931.P10008894458399195517

`A055941(n)+A000217(A000120(n))`
-/

namespace A029931.P10008894458399195517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 n + A000217 (A000120 n).toNat

end

end A029931.P10008894458399195517

namespace A029931

/-- `A055941(n)+A000217(A000120(n))` -/
def P10008894458399195517.Spec : Prop :=
  ∀ n, P10008894458399195517.a n = A029931 n

end A029931

/-! ## A029931.P15118610586259165094

`A073642(A001316(n))+A073642(n)`
-/

namespace A029931.P15118610586259165094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A001316 n).toNat + A073642 n

end

end A029931.P15118610586259165094

namespace A029931

/-- `A073642(A001316(n))+A073642(n)` -/
def P15118610586259165094.Spec : Prop :=
  ∀ n, P15118610586259165094.a n = A029931 n

end A029931

/-! ## A029931.P15906964442418229514

`A124757(n)+A283982(n)+A280700(n)`
-/

namespace A029931.P15906964442418229514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 n + (A283982 n + A280700 n)

end

end A029931.P15906964442418229514

namespace A029931

/-- `A124757(n)+A283982(n)+A280700(n)` -/
def P15906964442418229514.Spec : Prop :=
  ∀ n, P15906964442418229514.a n = A029931 n

end A029931

/-! ## A029931.P13170924959307092290

`A101925(n)-A082851(A101925(n)-n)`
-/

namespace A029931.P13170924959307092290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101925 n - A082851 (A101925 n - (n : ℤ)).toNat

end

end A029931.P13170924959307092290

namespace A029931

/-- `A101925(n)-A082851(A101925(n)-n)` -/
def P13170924959307092290.Spec : Prop :=
  ∀ n, P13170924959307092290.a n = A029931 n

end A029931

/-! ## A029931.P16281422738926915152

`A197354(n)-A073642(n)`
-/

namespace A029931.P16281422738926915152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197354 n - A073642 n

end

end A029931.P16281422738926915152

namespace A029931

/-- `A197354(n)-A073642(n)` -/
def P16281422738926915152.Spec : Prop :=
  ∀ n, P16281422738926915152.a n = A029931 n

end A029931

/-! ## A029931.P4651065444157036510

`A230877(n)-A359495(n)`
-/

namespace A029931.P4651065444157036510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230877 n - A359495 n

end

end A029931.P4651065444157036510

namespace A029931

/-- `A230877(n)-A359495(n)` -/
def P4651065444157036510.Spec : Prop :=
  ∀ n, P4651065444157036510.a n = A029931 n

end A029931

/-! ## A029931.P5138267082789953600

`A000120(n)*A070939(n)-A231204(n)`
-/

namespace A029931.P5138267082789953600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A070939 n - A231204 n

end

end A029931.P5138267082789953600

namespace A029931

/-- `A000120(n)*A070939(n)-A231204(n)` -/
def P5138267082789953600.Spec : Prop :=
  ∀ n, P5138267082789953600.a n = A029931 n

end A029931

/-! ## A029931.P8769838718332343011

`A231204(n)-A359495(2*n)`
-/

namespace A029931.P8769838718332343011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231204 n - A359495 (2 * n)

end

end A029931.P8769838718332343011

namespace A029931

/-- `A231204(n)-A359495(2*n)` -/
def P8769838718332343011.Spec : Prop :=
  ∀ n, P8769838718332343011.a n = A029931 n

end A029931

/-! ## A029931.P9724022835569045844

`A359042(n)-A359495(2*n+1)`
-/

namespace A029931.P9724022835569045844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359042 n - A359495 (2 * n + 1)

end

end A029931.P9724022835569045844

namespace A029931

/-- `A359042(n)-A359495(2*n+1)` -/
def P9724022835569045844.Spec : Prop :=
  ∀ n, P9724022835569045844.a n = A029931 n

end A029931

/-!
# A029932: Primes with record values of the least positive prime primitive root.

The programs for A029932, there is no canonical definition to state claims against.
-/

/-! ## A029932.P2750198336944482051

`A084739(lt[n, A084767(2*(n+1))])`
-/

namespace A029932.P2750198336944482051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084767 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084739 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029932.P2750198336944482051

/-! ## A029932.P16974915152753576401

`A084739(lt[A084739(n+1), A019347(3*(n+1))]+1)`
-/

namespace A029932.P16974915152753576401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019347 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084739 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A029932.P16974915152753576401

/-!
# A029933: Numerator of n * Product_{d|n} (1 + 1/d).

The programs for A029933, there is no canonical definition to state claims against.
-/

/-! ## A029933.P5195731847190285954

`lcm(A162775(n+1), A347643(A036241(n+1)))`
-/

namespace A029933.P5195731847190285954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A162775 (n + 1)) (A347643 (A036241 (n + 1)).toNat)

end

end A029933.P5195731847190285954

/-!
# A029934: Denominator of n * Product_{d|n} (1 + 1/d).

The programs for A029934, there is no canonical definition to state claims against.
-/

/-! ## A029934.P6058478177958868740

`gcd(A136179(n+1), A242560(A057449(n+1)))`
-/

namespace A029934.P6058478177958868740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A136179 (n + 1)) (A242560 (A057449 (n + 1)).toNat)

end

end A029934.P6058478177958868740

/-! ## A029934.P5732779812480596612

`A295658(A032742(n+1)^(A316436(2*(n+1))-1))`
-/

namespace A029934.P5732779812480596612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295658 (SequenceMachineLib.roundAway ((A032742 (n + 1) : ℚ) ^ (A316436 (2 * (n + 1)) - 1 : ℤ))).toNat

end

end A029934.P5732779812480596612

/-! ## A029934.P2995234422092709202

`A295658(A032742(n+1)^(A325135(n+1)+A252464(n+1)))`
-/

namespace A029934.P2995234422092709202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295658 (SequenceMachineLib.roundAway ((A032742 (n + 1) : ℚ) ^ (A325135 (n + 1) + A252464 (n + 1) : ℤ))).toNat

end

end A029934.P2995234422092709202

/-! ## A029934.P2146932249842636141

`A295658(A032742(n+1)^(A318994(n+1)-A001222(n+1)))`
-/

namespace A029934.P2146932249842636141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295658 (SequenceMachineLib.roundAway ((A032742 (n + 1) : ℚ) ^ (A318994 (n + 1) - A001222 (n + 1) : ℤ))).toNat

end

end A029934.P2146932249842636141

/-! ## A029934.P1951249714846363176

`A295658(A032742(n+1)^(A000005(n+1)-A325794(n+1)))`
-/

namespace A029934.P1951249714846363176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295658 (SequenceMachineLib.roundAway ((A032742 (n + 1) : ℚ) ^ (A000005 (n + 1) - A325794 (n + 1) : ℤ))).toNat

end

end A029934.P1951249714846363176

/-!
# A029935: a(n) = Sum_{d divides n} phi(d)*phi(n/d).

The programs for A029935, the canonical program `A029935.P1636467149315566281` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029935 has offset 1).

The definition of A029935 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A029935.P1636467149315566281

`∑{d}[n+1, A000010(#)*A000010((n+1)/#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029935

/-- `∑{d}[n+1, A000010(#)*A000010((n+1)/#)]` -/
def P1636467149315566281.Spec : Prop :=
  ∀ n, P1636467149315566281.a n = A029935 (n + 1)

theorem P1636467149315566281.correct : P1636467149315566281.Spec := by
  intro n
  simp only [A029935, Nat.add_sub_cancel]

end A029935

/-! ## A029935.P1879375886170654422

`∑{d}[n+1, A143275(#)]`
-/

namespace A029935.P1879375886170654422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A143275 d

end

end A029935.P1879375886170654422

namespace A029935

/-- `∑{d}[n+1, A143275(#)]` -/
def P1879375886170654422.Spec : Prop :=
  ∀ n, P1879375886170654422.a n = A029935 (n + 1)

end A029935

/-! ## A029935.P10341757798019157006

`∑{d}[n+1, #*A007431((n+1)/#)]`
-/

namespace A029935.P10341757798019157006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007431 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A029935.P10341757798019157006

namespace A029935

/-- `∑{d}[n+1, #*A007431((n+1)/#)]` -/
def P10341757798019157006.Spec : Prop :=
  ∀ n, P10341757798019157006.a n = A029935 (n + 1)

end A029935

/-! ## A029935.P12779889171470569405

`A018804(n+1)-A063754(n+1)`
-/

namespace A029935.P12779889171470569405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) - A063754 (n + 1)

end

end A029935.P12779889171470569405

namespace A029935

/-- `A018804(n+1)-A063754(n+1)` -/
def P12779889171470569405.Spec : Prop :=
  ∀ n, P12779889171470569405.a n = A029935 (n + 1)

end A029935

/-! ## A029935.P3353634175018655265

`Δ[A209981(n)/32]-A063754(n+1)`
-/

namespace A029935.P3353634175018655265
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209981 n : ℚ) / 32

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A063754 (n + 1) : ℚ)

end

end A029935.P3353634175018655265

namespace A029935

/-- `Δ[A209981(n)/32]-A063754(n+1)` -/
def P3353634175018655265.Spec : Prop :=
  ∀ n, P3353634175018655265.a n = (A029935 (n + 1) : ℚ)

end A029935

/-! ## A029935.P10267550653085758151

`∑[Δ[A209295(n)]-1]-A063754(n+1)`
-/

namespace A029935.P10267550653085758151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209295 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A063754 (n + 1)

end

end A029935.P10267550653085758151

namespace A029935

/-- `∑[Δ[A209295(n)]-1]-A063754(n+1)` -/
def P10267550653085758151.Spec : Prop :=
  ∀ n, P10267550653085758151.a n = A029935 (n + 1)

end A029935

/-! ## A029935.P15017544096837722010

`A006579(n+1)+1+n-A063754(n+1)`
-/

namespace A029935.P15017544096837722010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006579 (n + 1) + 1 + (n : ℤ) - A063754 (n + 1)

end

end A029935.P15017544096837722010

namespace A029935

/-- `A006579(n+1)+1+n-A063754(n+1)` -/
def P15017544096837722010.Spec : Prop :=
  ∀ n, P15017544096837722010.a n = A029935 (n + 1)

end A029935

/-! ## A029935.P14513896015443145553

`A209295(n+1)-(n+1)-A063754(n+1)`
-/

namespace A029935.P14513896015443145553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209295 (n + 1) - (n + 1 : ℤ) - A063754 (n + 1)

end

end A029935.P14513896015443145553

namespace A029935

/-- `A209295(n+1)-(n+1)-A063754(n+1)` -/
def P14513896015443145553.Spec : Prop :=
  ∀ n, P14513896015443145553.a n = A029935 (n + 1)

end A029935

/-! ## A029935.P15361150073616541248

`A268631(n+1)+Δ[n²]-A063754(n+1)`
-/

namespace A029935.P15361150073616541248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268631 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - A063754 (n + 1)

end

end A029935.P15361150073616541248

namespace A029935

/-- `A268631(n+1)+Δ[n²]-A063754(n+1)` -/
def P15361150073616541248.Spec : Prop :=
  ∀ n, P15361150073616541248.a n = A029935 (n + 1)

end A029935

/-! ## A029935.P8211030715977532207

`∑{d}[n+1, A000203(#)*A007432((n+1)/#)]`
-/

namespace A029935.P8211030715977532207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A007432 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A029935.P8211030715977532207

namespace A029935

/-- `∑{d}[n+1, A000203(#)*A007432((n+1)/#)]` -/
def P8211030715977532207.Spec : Prop :=
  ∀ n, P8211030715977532207.a n = A029935 (n + 1)

end A029935

/-! ## A029935.P10516139343337302651

`∑{d}[n+1, A008683(#)*A018804((n+1)/#)]`
-/

namespace A029935.P10516139343337302651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A018804 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A029935.P10516139343337302651

namespace A029935

/-- `∑{d}[n+1, A008683(#)*A018804((n+1)/#)]` -/
def P10516139343337302651.Spec : Prop :=
  ∀ n, P10516139343337302651.a n = A029935 (n + 1)

end A029935

/-! ## A029935.P10868236064330468394

`∑{d}[n+1, A007427(#)*A038040((n+1)/#)]`
-/

namespace A029935.P10868236064330468394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A038040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A029935.P10868236064330468394

namespace A029935

/-- `∑{d}[n+1, A007427(#)*A038040((n+1)/#)]` -/
def P10868236064330468394.Spec : Prop :=
  ∀ n, P10868236064330468394.a n = A029935 (n + 1)

end A029935

/-! ## A029935.P18213909187684784846

`∑{d}[n+1, A007428(#)*A060640((n+1)/#)]`
-/

namespace A029935.P18213909187684784846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A060640 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A029935.P18213909187684784846

namespace A029935

/-- `∑{d}[n+1, A007428(#)*A060640((n+1)/#)]` -/
def P18213909187684784846.Spec : Prop :=
  ∀ n, P18213909187684784846.a n = A029935 (n + 1)

end A029935

/-! ## A029935.P1334005214844308848

`∑{d}[n+1, A063659(#)*A074722((n+1)/#)]`
-/

namespace A029935.P1334005214844308848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d * A074722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A029935.P1334005214844308848

namespace A029935

/-- `∑{d}[n+1, A063659(#)*A074722((n+1)/#)]` -/
def P1334005214844308848.Spec : Prop :=
  ∀ n, P1334005214844308848.a n = A029935 (n + 1)

end A029935

/-! ## A029935.P2176131620503046568

`∑{d}[n+1, A034761(#)*A247343((n+1)/#)]`
-/

namespace A029935.P2176131620503046568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034761 d * A247343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A029935.P2176131620503046568

namespace A029935

/-- `∑{d}[n+1, A034761(#)*A247343((n+1)/#)]` -/
def P2176131620503046568.Spec : Prop :=
  ∀ n, P2176131620503046568.a n = A029935 (n + 1)

end A029935

/-! ## A029935.P13540021870641557578

`∑{d}[n+1, A067856(#)*A255655((n+1)/#)]`
-/

namespace A029935.P13540021870641557578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A067856 d * A255655 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A029935.P13540021870641557578

namespace A029935

/-- `∑{d}[n+1, A067856(#)*A255655((n+1)/#)]` -/
def P13540021870641557578.Spec : Prop :=
  ∀ n, P13540021870641557578.a n = A029935 (n + 1)

end A029935

/-! ## A029935.P3279359456888237850

`∑{d}[n+1, A130107(#)*A206369((n+1)/#)]`
-/

namespace A029935.P3279359456888237850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130107 d * A206369 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A029935.P3279359456888237850

namespace A029935

/-- `∑{d}[n+1, A130107(#)*A206369((n+1)/#)]` -/
def P3279359456888237850.Spec : Prop :=
  ∀ n, P3279359456888237850.a n = A029935 (n + 1)

end A029935

/-! ## A029935.P13411966648570812766

`∑{d}[n+1, A023900(#)*A344683((n+1)/#)]`
-/

namespace A029935.P13411966648570812766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A344683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A029935.P13411966648570812766

namespace A029935

/-- `∑{d}[n+1, A023900(#)*A344683((n+1)/#)]` -/
def P13411966648570812766.Spec : Prop :=
  ∀ n, P13411966648570812766.a n = A029935 (n + 1)

end A029935

/-! ## A029935.P15286397462604388226

`∑{d}[n+1, A062570(#)*A326305((n+1)/#)]`
-/

namespace A029935.P15286397462604388226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062570 d * A326305 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A029935.P15286397462604388226

namespace A029935

/-- `∑{d}[n+1, A062570(#)*A326305((n+1)/#)]` -/
def P15286397462604388226.Spec : Prop :=
  ∀ n, P15286397462604388226.a n = A029935 (n + 1)

end A029935

/-! ## A029935.P5873530319475481894

`∑{d}[n+1, A069097(#)*A328502((n+1)/#)]`
-/

namespace A029935.P5873530319475481894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069097 d * A328502 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A029935.P5873530319475481894

namespace A029935

/-- `∑{d}[n+1, A069097(#)*A328502((n+1)/#)]` -/
def P5873530319475481894.Spec : Prop :=
  ∀ n, P5873530319475481894.a n = A029935 (n + 1)

end A029935

/-!
# A029936: Number of cusps of Gamma_1(n)\P_1(Q).

The programs for A029936, there is no canonical definition to state claims against.
-/

/-! ## A029936.P12974759913312030622

`A159050(n+1)+1-A029937(n+1)`
-/

namespace A029936.P12974759913312030622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159050 (n + 1) + (1 - A029937 (n + 1))

end

end A029936.P12974759913312030622

/-! ## A029936.P5817817156604520227

`ceil(A029935(n+1)/A020639(A000010(n+1)))`
-/

namespace A029936.P5817817156604520227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A029935 (n + 1) : ℚ) / (A020639 (A000010 (n + 1)).toNat : ℚ)⌉

end

end A029936.P5817817156604520227

/-! ## A029936.P12682661796361819022

`A083219(A029935(n+1))`
-/

namespace A029936.P12682661796361819022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083219 (A029935 (n + 1)).toNat

end

end A029936.P12682661796361819022

/-! ## A029936.P7936262661538474434

`A106249(A029935(n+1)+1)`
-/

namespace A029936.P7936262661538474434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (A029935 (n + 1) + 1).toNat

end

end A029936.P7936262661538474434

/-! ## A029936.P451708429365639162

`A004524(A029935(n+1)+2)`
-/

namespace A029936.P451708429365639162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A029935 (n + 1) + 2).toNat

end

end A029936.P451708429365639162

/-! ## A029936.P7670014909492060440

`A065033(A029935(n+1)+char[1])`
-/

namespace A029936.P7670014909492060440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A029935 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A029936.P7670014909492060440

/-! ## A029936.P7924398345323961462

`A117818(A029935(n+1)+char[3])`
-/

namespace A029936.P7924398345323961462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117818 (A029935 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A029936.P7924398345323961462

/-! ## A029936.P14118459897947629515

`A004525(A029935(n+1)-1)+1`
-/

namespace A029936.P14118459897947629515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A029935 (n + 1) - 1).toNat + 1

end

end A029936.P14118459897947629515

/-! ## A029936.P15566406261437270183

`A004525(A130706(n)+A029935(n+1))`
-/

namespace A029936.P15566406261437270183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A130706 n + A029935 (n + 1)).toNat

end

end A029936.P15566406261437270183

/-! ## A029936.P13939397828253513806

`A004525(A029935(n+1))-A159075(n)`
-/

namespace A029936.P13939397828253513806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A029935 (n + 1)).toNat - A159075 n

end

end A029936.P13939397828253513806

/-!
# A029937: Genus of modular curve X_1(n).

The programs for A029937, there is no canonical definition to state claims against.
-/

/-! ## A029937.P12970851008242374981

`A159050(n+1)+1-A029936(n+1)`
-/

namespace A029937.P12970851008242374981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159050 (n + 1) + (1 - A029936 (n + 1))

end

end A029937.P12970851008242374981

/-! ## A029937.P11491413100248606984

`∑{d}[n+1, A000005(#)*A159046((n+1)/#)]`
-/

namespace A029937.P11491413100248606984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A159046 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A029937.P11491413100248606984

/-! ## A029937.P15506532655934415210

`A159050(n+1)+A024000(A029936(n+1))`
-/

namespace A029937.P15506532655934415210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159050 (n + 1) + A024000 (A029936 (n + 1)).toNat

end

end A029937.P15506532655934415210

/-! ## A029937.P8152432168368402752

`A159050(n+1)+1-A083219(A029935(n+1))`
-/

namespace A029937.P8152432168368402752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159050 (n + 1) + (1 - A083219 (A029935 (n + 1)).toNat)

end

end A029937.P8152432168368402752

/-! ## A029937.P6112075891689187297

`A159050(n+1)-(A106249(A029935(n+1)+1)-1)`
-/

namespace A029937.P6112075891689187297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159050 (n + 1) - (A106249 (A029935 (n + 1) + 1).toNat - 1)

end

end A029937.P6112075891689187297

/-!
# A029938: a(n) = (p-5)(p-7)/24, where p=prime(n).

The programs for A029938, the canonical program `A029938.P14725197787229691073` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029938 has offset 3).

The definition of A029938 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A029938.P14725197787229691073

`(A000040(n+3)-5)*(A000040(n+3)-7)/24`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029938

/-- `(A000040(n+3)-5)*(A000040(n+3)-7)/24` -/
def P14725197787229691073.Spec : Prop :=
  ∀ n, P14725197787229691073.a n = (A029938 (n + 3) : ℚ)

end A029938

/-! ## A029938.P5486179168688584881

`C(∑[A028334(n+2)]-1, 2)/3`
-/

namespace A029938.P5486179168688584881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat 2 : ℚ) / 3

end

end A029938.P5486179168688584881

namespace A029938

/-- `C(∑[A028334(n+2)]-1, 2)/3` -/
def P5486179168688584881.Spec : Prop :=
  ∀ n, P5486179168688584881.a n = (A029938 (n + 3) : ℚ)

end A029938

/-! ## A029938.P13505322335970789005

`A024702(n+3)-∑[A028334(n+2)]`
-/

namespace A029938.P13505322335970789005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024702 (n + 3) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029938.P13505322335970789005

namespace A029938

/-- `A024702(n+3)-∑[A028334(n+2)]` -/
def P13505322335970789005.Spec : Prop :=
  ∀ n, P13505322335970789005.a n = A029938 (n + 3)

end A029938

/-! ## A029938.P6042201424779816214

`A024702(n+3)+1-A005097(n+2)`
-/

namespace A029938.P6042201424779816214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024702 (n + 3) + (1 - A005097 (n + 2))

end

end A029938.P6042201424779816214

namespace A029938

/-- `A024702(n+3)+1-A005097(n+2)` -/
def P6042201424779816214.Spec : Prop :=
  ∀ n, P6042201424779816214.a n = A029938 (n + 3)

end A029938

/-! ## A029938.P7904148857859858889

`A024702(n+3)+2-A006254(n+2)`
-/

namespace A029938.P7904148857859858889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024702 (n + 3) + (2 - A006254 (n + 2))

end

end A029938.P7904148857859858889

namespace A029938

/-- `A024702(n+3)+2-A006254(n+2)` -/
def P7904148857859858889.Spec : Prop :=
  ∀ n, P7904148857859858889.a n = A029938 (n + 3)

end A029938

/-! ## A029938.P18251105833753587914

`A007997(A006254(n+2))`
-/

namespace A029938.P18251105833753587914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007997 (A006254 (n + 2)).toNat

end

end A029938.P18251105833753587914

namespace A029938

/-- `A007997(A006254(n+2))` -/
def P18251105833753587914.Spec : Prop :=
  ∀ n, P18251105833753587914.a n = A029938 (n + 3)

end A029938

/-! ## A029938.P10508240653010352029

`A058212(A067076(n+2))`
-/

namespace A029938.P10508240653010352029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058212 (A067076 (n + 2)).toNat

end

end A029938.P10508240653010352029

namespace A029938

/-- `A058212(A067076(n+2))` -/
def P10508240653010352029.Spec : Prop :=
  ∀ n, P10508240653010352029.a n = A029938 (n + 3)

end A029938

/-! ## A029938.P13296150869418628197

`A029937(A004139(n+1))`
-/

namespace A029938.P13296150869418628197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029937 (A004139 (n + 1)).toNat

end

end A029938.P13296150869418628197

namespace A029938

/-- `A029937(A004139(n+1))` -/
def P13296150869418628197.Spec : Prop :=
  ∀ n, P13296150869418628197.a n = A029938 (n + 3)

end A029938

/-! ## A029938.P6190114624311440477

`A008799(A172367(n+1))`
-/

namespace A029938.P6190114624311440477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008799 (A172367 (n + 1)).toNat

end

end A029938.P6190114624311440477

namespace A029938

/-- `A008799(A172367(n+1))` -/
def P6190114624311440477.Spec : Prop :=
  ∀ n, P6190114624311440477.a n = A029938 (n + 3)

end A029938

/-! ## A029938.P3545788204613728955

`A029937(A215848(n+1))`
-/

namespace A029938.P3545788204613728955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029937 (A215848 (n + 1)).toNat

end

end A029938.P3545788204613728955

namespace A029938

/-- `A029937(A215848(n+1))` -/
def P3545788204613728955.Spec : Prop :=
  ∀ n, P3545788204613728955.a n = A029938 (n + 3)

end A029938

/-! ## A029938.P13700005114724802404

`A029937(A045319(n+2))`
-/

namespace A029938.P13700005114724802404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029937 (A045319 (n + 2)).toNat

end

end A029938.P13700005114724802404

namespace A029938

/-- `A029937(A045319(n+2))` -/
def P13700005114724802404.Spec : Prop :=
  ∀ n, P13700005114724802404.a n = A029938 (n + 3)

end A029938

/-! ## A029938.P2530503177022794114

`A029937(A045344(n+2))`
-/

namespace A029938.P2530503177022794114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029937 (A045344 (n + 2)).toNat

end

end A029938.P2530503177022794114

namespace A029938

/-- `A029937(A045344(n+2))` -/
def P2530503177022794114.Spec : Prop :=
  ∀ n, P2530503177022794114.a n = A029938 (n + 3)

end A029938

/-! ## A029938.P12430387660595803515

`A029937(A065091(n+2))`
-/

namespace A029938.P12430387660595803515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029937 (A065091 (n + 2)).toNat

end

end A029938.P12430387660595803515

namespace A029938

/-- `A029937(A065091(n+2))` -/
def P12430387660595803515.Spec : Prop :=
  ∀ n, P12430387660595803515.a n = A029938 (n + 3)

end A029938

/-! ## A029938.P3234951925621474230

`A029937(A140475(n+2))`
-/

namespace A029938.P3234951925621474230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029937 (A140475 (n + 2)).toNat

end

end A029938.P3234951925621474230

namespace A029938

/-- `A029937(A140475(n+2))` -/
def P3234951925621474230.Spec : Prop :=
  ∀ n, P3234951925621474230.a n = A029938 (n + 3)

end A029938

/-! ## A029938.P8629201714322793254

`A029937(A000040(n+3))`
-/

namespace A029938.P8629201714322793254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029937 (A000040 (n + 3)).toNat

end

end A029938.P8629201714322793254

namespace A029938

/-- `A029937(A000040(n+3))` -/
def P8629201714322793254.Spec : Prop :=
  ∀ n, P8629201714322793254.a n = A029938 (n + 3)

end A029938

/-! ## A029938.P15968772875230899922

`A309685(A173064(n+3))`
-/

namespace A029938.P15968772875230899922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309685 (A173064 (n + 3)).toNat

end

end A029938.P15968772875230899922

namespace A029938

/-- `A309685(A173064(n+3))` -/
def P15968772875230899922.Spec : Prop :=
  ∀ n, P15968772875230899922.a n = A029938 (n + 3)

end A029938

/-! ## A029938.P9568074313718782057

`A029937(p?[A175212(n+1)])`
-/

namespace A029938.P9568074313718782057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029937 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A029938.P9568074313718782057

namespace A029938

/-- `A029937(p?[A175212(n+1)])` -/
def P9568074313718782057.Spec : Prop :=
  ∀ n, P9568074313718782057.a n = A029938 (n + 3)

end A029938

/-! ## A029938.P13940115413234669023

`A091848(A173064(n+3)+1)`
-/

namespace A029938.P13940115413234669023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091848 (A173064 (n + 3) + 1).toNat

end

end A029938.P13940115413234669023

namespace A029938

/-- `A091848(A173064(n+3)+1)` -/
def P13940115413234669023.Spec : Prop :=
  ∀ n, P13940115413234669023.a n = A029938 (n + 3)

end A029938

/-! ## A029938.P9167461031660365368

`A008799(A000040(n+3)-4)`
-/

namespace A029938.P9167461031660365368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008799 (A000040 (n + 3) - 4).toNat

end

end A029938.P9167461031660365368

namespace A029938

/-- `A008799(A000040(n+3)-4)` -/
def P9167461031660365368.Spec : Prop :=
  ∀ n, P9167461031660365368.a n = A029938 (n + 3)

end A029938

/-!
# A029939: a(n) = Sum_{d|n} phi(d)^2.

The programs for A029939, the canonical program `A029939.P6455013968657218712` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029939 has offset 1).

The definition of A029939 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029939.P14807019793539411014

`∑{d}[n+1, A127473(#)]`
-/

namespace A029939.P14807019793539411014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A127473 d

end

end A029939.P14807019793539411014

namespace A029939

/-- `∑{d}[n+1, A127473(#)]` -/
def P14807019793539411014.Spec : Prop :=
  ∀ n, P14807019793539411014.a n = A029939 (n + 1)

end A029939

/-! ## A029939.P6455013968657218712

`∑{d}[n+1, A000010(#)²]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029939

/-- `∑{d}[n+1, A000010(#)²]` -/
def P6455013968657218712.Spec : Prop :=
  ∀ n, P6455013968657218712.a n = A029939 (n + 1)

theorem P6455013968657218712.correct : P6455013968657218712.Spec := by
  intro n
  simp only [A029939, Nat.add_sub_cancel]

end A029939

/-! ## A029939.P1712722613663036179

`∑{d}[n+1, (A109606(#)+1)²]`
-/

namespace A029939.P1712722613663036179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A109606 d + 1) ^ 2

end

end A029939.P1712722613663036179

namespace A029939

/-- `∑{d}[n+1, (A109606(#)+1)²]` -/
def P1712722613663036179.Spec : Prop :=
  ∀ n, P1712722613663036179.a n = A029939 (n + 1)

end A029939

/-! ## A029939.P12359062331606082590

`∑{d}[n+1, (A039649(#)-1)²]`
-/

namespace A029939.P12359062331606082590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A039649 d - 1) ^ 2

end

end A029939.P12359062331606082590

namespace A029939

/-- `∑{d}[n+1, (A039649(#)-1)²]` -/
def P12359062331606082590.Spec : Prop :=
  ∀ n, P12359062331606082590.a n = A029939 (n + 1)

end A029939

/-! ## A029939.P5531102415374864345

`∑{d}[n+1, A000010(lcm(2, #))^2]`
-/

namespace A029939.P5531102415374864345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (Nat.lcm 2 d) ^ 2

end

end A029939.P5531102415374864345

namespace A029939

/-- `∑{d}[n+1, A000010(lcm(2, #))^2]` -/
def P5531102415374864345.Spec : Prop :=
  ∀ n, P5531102415374864345.a n = A029939 (n + 1)

end A029939

/-! ## A029939.P9632951434606228118

`∑{d}[n+1, A000010((n+1)/#)^2]`
-/

namespace A029939.P9632951434606228118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ 2

end

end A029939.P9632951434606228118

namespace A029939

/-- `∑{d}[n+1, A000010((n+1)/#)^2]` -/
def P9632951434606228118.Spec : Prop :=
  ∀ n, P9632951434606228118.a n = A029939 (n + 1)

end A029939

/-! ## A029939.P4442131066368009331

`∑{d}[n+1, A130054(#)*A342534((n+1)/#)]`
-/

namespace A029939.P4442131066368009331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A342534 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A029939.P4442131066368009331

namespace A029939

/-- `∑{d}[n+1, A130054(#)*A342534((n+1)/#)]` -/
def P4442131066368009331.Spec : Prop :=
  ∀ n, P4442131066368009331.a n = A029939 (n + 1)

end A029939

/-! ## A029939.P5278906469700051792

`∑{d}[n+1, A023900(#)*A279912((n+1)/#)]`
-/

namespace A029939.P5278906469700051792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A279912 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A029939.P5278906469700051792

namespace A029939

/-- `∑{d}[n+1, A023900(#)*A279912((n+1)/#)]` -/
def P5278906469700051792.Spec : Prop :=
  ∀ n, P5278906469700051792.a n = A029939 (n + 1)

end A029939

/-! ## A029939.P2158902359193785660

`∑{d}[A267099(n+1), A354102(#)²]`
-/

namespace A029939.P2158902359193785660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A354102 d ^ 2

end

end A029939.P2158902359193785660

namespace A029939

/-- `∑{d}[A267099(n+1), A354102(#)²]` -/
def P2158902359193785660.Spec : Prop :=
  ∀ n, P2158902359193785660.a n = A029939 (n + 1)

end A029939

/-! ## A029939.P16075473322435643655

`∑{d}[A064549(n+1), A300717(#)²]`
-/

namespace A029939.P16075473322435643655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300717 d ^ 2

end

end A029939.P16075473322435643655

namespace A029939

/-- `∑{d}[A064549(n+1), A300717(#)²]` -/
def P16075473322435643655.Spec : Prop :=
  ∀ n, P16075473322435643655.a n = A029939 (n + 1)

end A029939

/-! ## A029939.P8463736028345000742

`A127477(∑[n]+1)`
-/

namespace A029939.P8463736028345000742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127477 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A029939.P8463736028345000742

namespace A029939

/-- `A127477(∑[n]+1)` -/
def P8463736028345000742.Spec : Prop :=
  ∀ n, P8463736028345000742.a n = A029939 (n + 1)

end A029939

/-! ## A029939.P8078810725207091678

`A074722((n+1)²)`
-/

namespace A029939.P8078810725207091678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074722 ((n + 1) ^ 2)

end

end A029939.P8078810725207091678

namespace A029939

/-- `A074722((n+1)²)` -/
def P8078810725207091678.Spec : Prop :=
  ∀ n, P8078810725207091678.a n = A029939 (n + 1)

end A029939

/-! ## A029939.P11668543155390235231

`∑{d}[n+1, A114810(#²)]`
-/

namespace A029939.P11668543155390235231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A114810 (d ^ 2)

end

end A029939.P11668543155390235231

namespace A029939

/-- `∑{d}[n+1, A114810(#²)]` -/
def P11668543155390235231.Spec : Prop :=
  ∀ n, P11668543155390235231.a n = A029939 (n + 1)

end A029939

/-!
# A029940: a(n) = Product_{d|n} phi(d).

The programs for A029940, the canonical program `A029940.P9006398651141651236` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029940 has offset 1).

The definition of A029940 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029940.P9006398651141651236

`∏{d}[n+1, A000010(#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029940

/-- `∏{d}[n+1, A000010(#)]` -/
def P9006398651141651236.Spec : Prop :=
  ∀ n, P9006398651141651236.a n = A029940 (n + 1)

theorem P9006398651141651236.correct : P9006398651141651236.Spec := by
  intro n
  simp only [A029940, Nat.add_sub_cancel]

end A029940

/-! ## A029940.P2388914640290646363

`∏{d}[n+1, sqrt(A127473(#))]`
-/

namespace A029940.P2388914640290646363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Real.sqrt (A127473 d : ℝ)

end

end A029940.P2388914640290646363

namespace A029940

/-- `∏{d}[n+1, sqrt(A127473(#))]` -/
def P2388914640290646363.Spec : Prop :=
  ∀ n, P2388914640290646363.a n = (A029940 (n + 1) : ℝ)

end A029940

/-! ## A029940.P1601368768192374040

`∏{d}[n+1, #-A051953(#)]`
-/

namespace A029940.P1601368768192374040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), ((d : ℤ) - A051953 d)

end

end A029940.P1601368768192374040

namespace A029940

/-- `∏{d}[n+1, #-A051953(#)]` -/
def P1601368768192374040.Spec : Prop :=
  ∀ n, P1601368768192374040.a n = A029940 (n + 1)

end A029940

/-! ## A029940.P11869002552641881352

`∏{d}[n+1, A002618(#)/#]`
-/

namespace A029940.P11869002552641881352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (A002618 d : ℚ) / (d : ℚ)

end

end A029940.P11869002552641881352

namespace A029940

/-- `∏{d}[n+1, A002618(#)/#]` -/
def P11869002552641881352.Spec : Prop :=
  ∀ n, P11869002552641881352.a n = (A029940 (n + 1) : ℚ)

end A029940

/-! ## A029940.P14283056453504967345

`∏{d}[n+1, A318830(#)+A049559(#)]`
-/

namespace A029940.P14283056453504967345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (A318830 d + A049559 d)

end

end A029940.P14283056453504967345

namespace A029940

/-- `∏{d}[n+1, A318830(#)+A049559(#)]` -/
def P14283056453504967345.Spec : Prop :=
  ∀ n, P14283056453504967345.a n = A029940 (n + 1)

end A029940

/-! ## A029940.P6120556912545957109

`∏{d}[n+1, A054522(A000217(#))]`
-/

namespace A029940.P6120556912545957109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A054522 (A000217 d).toNat

end

end A029940.P6120556912545957109

namespace A029940

/-- `∏{d}[n+1, A054522(A000217(#))]` -/
def P6120556912545957109.Spec : Prop :=
  ∀ n, P6120556912545957109.a n = A029940 (n + 1)

end A029940

/-! ## A029940.P16719661771939064787

`∏{d}[n+1, A057828(#²)]`
-/

namespace A029940.P16719661771939064787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A057828 (d ^ 2)

end

end A029940.P16719661771939064787

namespace A029940

/-- `∏{d}[n+1, A057828(#²)]` -/
def P16719661771939064787.Spec : Prop :=
  ∀ n, P16719661771939064787.a n = A029940 (n + 1)

end A029940

/-!
# A029942: Numbers k such that the decimal expansion of k^3 contains k as a substring.

The programs for A029942, there is no canonical definition to state claims against.
-/

/-! ## A029942.P15295184663625263609

`eq[2, A302322(A045537(n))]`
-/

namespace A029942.P15295184663625263609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (A045537 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029942.P15295184663625263609

/-! ## A029942.P4509678906647987587

`eq[1, A319571(A045537(n)²)]`
-/

namespace A029942.P4509678906647987587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319571 (A045537 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029942.P4509678906647987587

/-! ## A029942.P9941268948191910034

`eq[2, A025480(A045537(n)²)]`
-/

namespace A029942.P9941268948191910034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A045537 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029942.P9941268948191910034

/-! ## A029942.P10747446954105575910

`eq[2, A046927(A045537(n)²)]`
-/

namespace A029942.P10747446954105575910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046927 (A045537 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029942.P10747446954105575910

/-! ## A029942.P17066113713450154428

`eq[2, A117910(A045537(n)²)]`
-/

namespace A029942.P17066113713450154428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (A045537 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029942.P17066113713450154428

/-!
# A029943: Substring of both its square and its cube.

The programs for A029943, there is no canonical definition to state claims against.
-/

/-! ## A029943.P18044328328861386736

`∩[A018834(n+1), A029942(n+1)]`
-/

namespace A029943.P18044328328861386736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029943.P18044328328861386736

/-! ## A029943.P8754784901983403811

`∩[A018834(n+1), A075904(n+1)]`
-/

namespace A029943.P8754784901983403811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029943.P8754784901983403811

/-! ## A029943.P1902831927347524630

`∩[A018834(n+1), A075905(n+1)]`
-/

namespace A029943.P1902831927347524630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029943.P1902831927347524630

/-! ## A029943.P18431997554715943474

`A018834(lt[A242411(n+1), A375125(2*n)])`
-/

namespace A029943.P18431997554715943474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375125 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018834 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029943.P18431997554715943474

/-! ## A029943.P12342500241014115502

`A018834(lt[A249497(n+2), A113615(n+1)])`
-/

namespace A029943.P12342500241014115502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249497 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018834 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029943.P12342500241014115502

/-!
# A029944: a(n)^2 contains n-th prime as a substring.

The programs for A029944, there is no canonical definition to state claims against.
-/

/-! ## A029944.P12200464417549983619

`sqrt(A029945(n+1))`
-/

namespace A029944.P12200464417549983619
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029945 (n + 1) : ℝ)

end

end A029944.P12200464417549983619

/-! ## A029944.P15256494251457849207

`A038690(p?[comp[n²]])`
-/

namespace A029944.P15256494251457849207
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038690 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A029944.P15256494251457849207

/-! ## A029944.P16799291897056200618

`A038690(A000040(n+1))`
-/

namespace A029944.P16799291897056200618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038690 (A000040 (n + 1)).toNat

end

end A029944.P16799291897056200618

/-! ## A029944.P13211501764447194839

`A038690(A008578(n+2))`
-/

namespace A029944.P13211501764447194839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038690 (A008578 (n + 2)).toNat

end

end A029944.P13211501764447194839

/-! ## A029944.P8292715259084667530

`A038690(A182986(n+2))`
-/

namespace A029944.P8292715259084667530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038690 (A182986 (n + 2)).toNat

end

end A029944.P8292715259084667530

/-! ## A029944.P5041090088928211964

`A038690(eq[n, A062584(n)])`
-/

namespace A029944.P5041090088928211964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029944.P5041090088928211964

/-! ## A029944.P17923724862303825130

`A038690(record[A006530(n+2)])`
-/

namespace A029944.P17923724862303825130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038690 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A029944.P17923724862303825130

/-! ## A029944.P9525241058806830400

`A038690(record[A014963(n+2)])`
-/

namespace A029944.P9525241058806830400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038690 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A029944.P9525241058806830400

/-! ## A029944.P2882680712717404820

`A038690(record[A020639(n+2)])`
-/

namespace A029944.P2882680712717404820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038690 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A029944.P2882680712717404820

/-! ## A029944.P6554113390527429212

`A038690(eq[n, A038700(n+1)])`
-/

namespace A029944.P6554113390527429212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029944.P6554113390527429212

/-! ## A029944.P16643846818189513012

`A038690(record[A000010(n+1)+1])`
-/

namespace A029944.P16643846818189513012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038690 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A029944.P16643846818189513012

/-!
# A029945: Smallest square containing n-th prime as substring.

The programs for A029945, there is no canonical definition to state claims against.
-/

/-! ## A029945.P13357878778337913885

`A029944(n+1)²`
-/

namespace A029945.P13357878778337913885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029944 (n + 1) ^ 2

end

end A029945.P13357878778337913885

/-! ## A029945.P7265308878422202488

`A038690(p?[comp[n²]])²`
-/

namespace A029945.P7265308878422202488
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038690 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) ^ 2

end

end A029945.P7265308878422202488

/-! ## A029945.P5075748341203352213

`A086935(A000040(n+1))`
-/

namespace A029945.P5075748341203352213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086935 (A000040 (n + 1)).toNat

end

end A029945.P5075748341203352213

/-! ## A029945.P3350563973529807892

`A086935(A008578(n+2))`
-/

namespace A029945.P3350563973529807892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086935 (A008578 (n + 2)).toNat

end

end A029945.P3350563973529807892

/-! ## A029945.P3390551937624808848

`A086935(A182986(n+2))`
-/

namespace A029945.P3390551937624808848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086935 (A182986 (n + 2)).toNat

end

end A029945.P3390551937624808848

/-! ## A029945.P9347289096959770849

`A038690(eq[n, A062584(n)])²`
-/

namespace A029945.P9347289096959770849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) ^ 2

end

end A029945.P9347289096959770849

/-! ## A029945.P15133999032412080470

`A038690(record[A006530(n+2)])²`
-/

namespace A029945.P15133999032412080470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038690 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A029945.P15133999032412080470

/-! ## A029945.P9521701019186190811

`A038690(record[A014963(n+2)])²`
-/

namespace A029945.P9521701019186190811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038690 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A029945.P9521701019186190811

/-! ## A029945.P267435860456937684

`A038690(record[A020639(n+2)])²`
-/

namespace A029945.P267435860456937684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038690 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A029945.P267435860456937684

/-! ## A029945.P14431975052090968471

`A038690(eq[n, A038700(n+1)])²`
-/

namespace A029945.P14431975052090968471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) ^ 2

end

end A029945.P14431975052090968471

/-! ## A029945.P15462930031314993456

`A038690(record[A000010(n+1)+1])²`
-/

namespace A029945.P15462930031314993456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038690 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A029945.P15462930031314993456

/-! ## A029945.P13564112274052759862

`A029944(n+1)*A038690(A000040(n+1))`
-/

namespace A029945.P13564112274052759862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029944 (n + 1) * A038690 (A000040 (n + 1)).toNat

end

end A029945.P13564112274052759862

/-! ## A029945.P15823246257156848665

`A029944(n+1)*A038690(eq[n, A062584(n)])`
-/

namespace A029945.P15823246257156848665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029944 (n + 1) * A038690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029945.P15823246257156848665

/-! ## A029945.P1572779024528810049

`A029944(n+1)*A110654(2*A029944(n+1))`
-/

namespace A029945.P1572779024528810049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029944 (n + 1) * A110654 (2 * A029944 (n + 1)).toNat

end

end A029945.P1572779024528810049

/-!
# A029946: a(n)^3 contains n-th prime as a substring.

The programs for A029946, there is no canonical definition to state claims against.
-/

/-! ## A029946.P3925144333208430026

`root(A029947(n+1), 3)`
-/

namespace A029946.P3925144333208430026
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029947 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A029946.P3925144333208430026

/-! ## A029946.P4862898306437017819

`A029947(C(n+1, n))^(1/3)`
-/

namespace A029946.P4862898306437017819
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029947 (Nat.choose (n + 1) n) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A029946.P4862898306437017819

/-! ## A029946.P10397303141928490684

`(A029947(n+1)^(1/3))%A005843(n+1)²`
-/

namespace A029946.P10397303141928490684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A029947 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ))) (A005843 (n + 1) ^ 2)

end

end A029946.P10397303141928490684

/-! ## A029946.P6826839599648030927

`A029947(n*ceil(1/A174590(n+1))+1)^(1/3)`
-/

namespace A029946.P6826839599648030927
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029947 ((n : ℤ) * ⌈1 / (A174590 (n + 1) : ℚ)⌉ + 1).toNat : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A029946.P6826839599648030927

/-! ## A029946.P17890158669183734245

`A029947(A008619(2*n))^(1/3)`
-/

namespace A029946.P17890158669183734245
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029947 (A008619 (2 * n)).toNat : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A029946.P17890158669183734245

/-! ## A029946.P12544030840665272742

`A029947(n+1)^(1/3)*A001222(A329309(n))`
-/

namespace A029946.P12544030840665272742
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029947 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ) * (A001222 (A329309 n).toNat : ℝ)

end

end A029946.P12544030840665272742

/-!
# A029947: Smallest cube containing n-th prime as substring.

The programs for A029947, there is no canonical definition to state claims against.
-/

/-! ## A029947.P15291569233274383004

`A029946(n+1)^3`
-/

namespace A029947.P15291569233274383004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029946 (n + 1) ^ 3

end

end A029947.P15291569233274383004

/-! ## A029947.P16237142678534408147

`A029946(A000027(n+1))²*A029946(n+1)`
-/

namespace A029947.P16237142678534408147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029946 (A000027 (n + 1)).toNat ^ 2 * A029946 (n + 1)

end

end A029947.P16237142678534408147

/-! ## A029947.P5311008857494295462

`(A029946(n+1)%A029945(n+1))²*A029946(n+1)`
-/

namespace A029947.P5311008857494295462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029946 (n + 1)) (A029945 (n + 1)) ^ 2 * A029946 (n + 1)

end

end A029947.P5311008857494295462

/-! ## A029947.P6049993975155754655

`A029946(n+1)²%A052228(n+1)²*A029946(n+1)`
-/

namespace A029947.P6049993975155754655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029946 (n + 1) ^ 2) (A052228 (n + 1) ^ 2) * A029946 (n + 1)

end

end A029947.P6049993975155754655

/-! ## A029947.P18105395898391969654

`A000578(A029946(n+1))`
-/

namespace A029947.P18105395898391969654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A029946 (n + 1)).toNat

end

end A029947.P18105395898391969654

/-! ## A029947.P15023290393976966583

`A178983(p?[comp[n²]])`
-/

namespace A029947.P15023290393976966583
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178983 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A029947.P15023290393976966583

/-! ## A029947.P1758879880149472867

`A178983(Δ[A007504(n)])`
-/

namespace A029947.P1758879880149472867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178983 (f1 (n + 1) - f1 n).toNat

end

end A029947.P1758879880149472867

/-! ## A029947.P4019517067205350420

`A178983(record[A051698(n)])`
-/

namespace A029947.P4019517067205350420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178983 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A029947.P4019517067205350420

/-! ## A029947.P5966320292368044385

`A178983(A000040(n+1))`
-/

namespace A029947.P5966320292368044385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178983 (A000040 (n + 1)).toNat

end

end A029947.P5966320292368044385

/-! ## A029947.P12291599353627244432

`A178983(A008578(n+2))`
-/

namespace A029947.P12291599353627244432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178983 (A008578 (n + 2)).toNat

end

end A029947.P12291599353627244432

/-! ## A029947.P7927137508721833341

`A178983(A182986(n+2))`
-/

namespace A029947.P7927137508721833341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178983 (A182986 (n + 2)).toNat

end

end A029947.P7927137508721833341

/-! ## A029947.P4253735794094100757

`A178983(eq[2, A005127(n)])`
-/

namespace A029947.P4253735794094100757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178983 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029947.P4253735794094100757

/-! ## A029947.P16210084422701341961

`A178983(record[A006530(n+2)])`
-/

namespace A029947.P16210084422701341961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178983 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A029947.P16210084422701341961

/-! ## A029947.P10715423192406722872

`A178983(record[A014963(n+2)])`
-/

namespace A029947.P10715423192406722872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178983 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A029947.P10715423192406722872

/-! ## A029947.P11713505768943530098

`A178983(record[A020639(n+2)])`
-/

namespace A029947.P11713505768943530098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178983 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A029947.P11713505768943530098

/-! ## A029947.P3099881499961060354

`A178983(A007504(n+1)-A007504(n))`
-/

namespace A029947.P3099881499961060354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178983 (A007504 (n + 1) - A007504 n).toNat

end

end A029947.P3099881499961060354

/-!
# A029948: Smallest prime containing n-th square as substring.

The programs for A029948, there is no canonical definition to state claims against.
-/

/-! ## A029948.P16879218501294821845

`A062584(n²)`
-/

namespace A029948.P16879218501294821845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (n ^ 2)

end

end A029948.P16879218501294821845

/-! ## A029948.P16542808209413020349

`or(1, A062584(A000290(n)))`
-/

namespace A029948.P16542808209413020349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A062584 (A000290 n).toNat)

end

end A029948.P16542808209413020349

/-! ## A029948.P447747961351395944

`A062584(n^2)+n*A000007(n)`
-/

namespace A029948.P447747961351395944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (n ^ 2) + (n : ℤ) * A000007 n

end

end A029948.P447747961351395944

/-! ## A029948.P15658890616710248793

`A007318(C(2, n+2))*A062584(n^2)`
-/

namespace A029948.P15658890616710248793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A062584 (n ^ 2)

end

end A029948.P15658890616710248793

/-! ## A029948.P13753567294541363848

`A000005(gcd(n, n+1))*A062584(n^2)`
-/

namespace A029948.P13753567294541363848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd n (n + 1)) * A062584 (n ^ 2)

end

end A029948.P13753567294541363848

/-! ## A029948.P1745356034766799687

`A062584(A000290(n))+A000038(n+1)`
-/

namespace A029948.P1745356034766799687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A000290 n).toNat + A000038 (n + 1)

end

end A029948.P1745356034766799687

/-! ## A029948.P15048416231367648058

`A062584(A000290(n))%A069759(n+1)`
-/

namespace A029948.P15048416231367648058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062584 (A000290 n).toNat) (A069759 (n + 1))

end

end A029948.P15048416231367648058

/-! ## A029948.P7668073464057950122

`A062584(A000290(n))+char[A000292(n+8)]`
-/

namespace A029948.P7668073464057950122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 8)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A000290 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A029948.P7668073464057950122

/-! ## A029948.P4788426338089689038

`A001511(2*n+1)*A062584(A000290(n))`
-/

namespace A029948.P4788426338089689038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A062584 (A000290 n).toNat

end

end A029948.P4788426338089689038

/-! ## A029948.P14273629513271283814

`A062584(A000290(n))/A007310(n+1)%2`
-/

namespace A029948.P14273629513271283814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062584 (A000290 n).toNat : ℚ) / (Int.tmod (A007310 (n + 1)) 2 : ℚ)

end

end A029948.P14273629513271283814

/-! ## A029948.P17172990894601186959

`A062584(A000290(n))^A001222(A062584(n))`
-/

namespace A029948.P17172990894601186959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062584 (A000290 n).toNat : ℚ) ^ (A001222 (A062584 n).toNat : ℤ)

end

end A029948.P17172990894601186959

/-! ## A029948.P2003737442000992939

`A009195(A020639(n+2))*A062584(A000290(n))`
-/

namespace A029948.P2003737442000992939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (A020639 (n + 2)).toNat * A062584 (A000290 n).toNat

end

end A029948.P2003737442000992939

/-!
# A029949: Smallest prime containing n-th cube as substring.

The programs for A029949, there is no canonical definition to state claims against.
-/

/-! ## A029949.P9564065059490243603

`A062584(n^3)`
-/

namespace A029949.P9564065059490243603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (n ^ 3)

end

end A029949.P9564065059490243603

/-! ## A029949.P12779869142728503921

`or(1, A062584(A000578(n)))`
-/

namespace A029949.P12779869142728503921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A062584 (A000578 n).toNat)

end

end A029949.P12779869142728503921

/-! ## A029949.P16656837425879413655

`A185203(n)+A062584(A000578(n))`
-/

namespace A029949.P16656837425879413655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185203 n + A062584 (A000578 n).toNat

end

end A029949.P16656837425879413655

/-! ## A029949.P1680140832928365212

`A062584(A000578(n))%A074996(n)`
-/

namespace A029949.P1680140832928365212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062584 (A000578 n).toNat) (A074996 n)

end

end A029949.P1680140832928365212

/-!
# A029950: Odd palindromes.

The programs for A029950, there is no canonical definition to state claims against.
-/

/-! ## A029950.P12381642108088160787

`A002113(eq[1, A002113(n+1)%2]+1)`
-/

namespace A029950.P12381642108088160787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002113 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A029950.P12381642108088160787

/-! ## A029950.P9364038852325434289

`A002113(eq[1, gcd(2, A002113(n+1))]+1)`
-/

namespace A029950.P9364038852325434289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A002113 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A029950.P9364038852325434289

/-! ## A029950.P1560949464378152302

`A002113(eq[1, and(1, A002113(n+1))]+1)`
-/

namespace A029950.P1560949464378152302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A002113 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A029950.P1560949464378152302

/-! ## A029950.P1607182933728712024

`A002113(record[(n+1)*A002113(n+2)%2]+1)`
-/

namespace A029950.P1607182933728712024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A002113 (n + 2)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A029950.P1607182933728712024

/-! ## A029950.P15547478675401935742

`∩[2*n+1, A002113(n+1)]`
-/

namespace A029950.P15547478675401935742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029950.P15547478675401935742

/-! ## A029950.P3837655111258049570

`∩[2*n+1, A061917(n+1)]`
-/

namespace A029950.P3837655111258049570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029950.P3837655111258049570

/-! ## A029950.P12700718411690350142

`∩[2*n+1, A092361(n+1)]`
-/

namespace A029950.P12700718411690350142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029950.P12700718411690350142

/-! ## A029950.P13494133105952822192

`record[A000265(A002113(n+2))]`
-/

namespace A029950.P13494133105952822192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A002113 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029950.P13494133105952822192

/-! ## A029950.P16037110364654265808

`eq[or(1, n), A004086(n)]`
-/

namespace A029950.P16037110364654265808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029950.P16037110364654265808

/-! ## A029950.P10756025756962572213

`∩[A002113(n+1), Δ[n²]]`
-/

namespace A029950.P10756025756962572213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029950.P10756025756962572213

/-! ## A029950.P17015952348432487758

`eq[n, A004086(A093178(n))]`
-/

namespace A029950.P17015952348432487758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029950.P17015952348432487758

/-! ## A029950.P89458533419648775

`record[A093178(A002113(n+1))]`
-/

namespace A029950.P89458533419648775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A002113 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029950.P89458533419648775

/-! ## A029950.P5841159984692365102

`∩[A061917(n+1), A060747(n)]`
-/

namespace A029950.P5841159984692365102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029950.P5841159984692365102

/-! ## A029950.P10683188468245804954

`record[A047813(Δ[n²])]`
-/

namespace A029950.P10683188468245804954
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029950.P10683188468245804954

/-! ## A029950.P12076775928543781429

`record[A093030(Δ[n²])]`
-/

namespace A029950.P12076775928543781429
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093030 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029950.P12076775928543781429

/-! ## A029950.P3925940292511917555

`record[A331472(2*n+1)]`
-/

namespace A029950.P3925940292511917555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029950.P3925940292511917555

/-! ## A029950.P12363041771282890335

`filter[2*n+1, A136522(#)]`
-/

namespace A029950.P12363041771282890335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j) = 1) n)

end

end A029950.P12363041771282890335

/-! ## A029950.P14029750943364584822

`eq[(1-n)%2, A319387(n)]`
-/

namespace A029950.P14029750943364584822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - (n : ℤ)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029950.P14029750943364584822

/-! ## A029950.P3202009720251594936

`record[(2*n+1)²/A347346(2*n+1)]`
-/

namespace A029950.P3202009720251594936
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℚ) / (A347346 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029950.P3202009720251594936

/-!
# A029951: Even palindromes.

The programs for A029951, there is no canonical definition to state claims against.
-/

/-! ## A029951.P11218537603976817037

`2*A367807(n+1)`
-/

namespace A029951.P11218537603976817037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A367807 (n + 1)

end

end A029951.P11218537603976817037

/-! ## A029951.P17300725107839727258

`A002113(eq[0, A002113(n+1)%2]+1)`
-/

namespace A029951.P17300725107839727258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002113 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A029951.P17300725107839727258

/-! ## A029951.P3473959338204277800

`A002113(eq[2, gcd(2, A002113(n+1))]+1)`
-/

namespace A029951.P3473959338204277800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A002113 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A029951.P3473959338204277800

/-! ## A029951.P17124963423378315917

`A002113(eq[1, (-1)^A002113(n+1)]+1)`
-/

namespace A029951.P17124963423378315917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A002113 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1)

end

end A029951.P17124963423378315917

/-! ## A029951.P17738617953075139866

`record[A002113(n+2)%or(1, A002113(n+2))]`
-/

namespace A029951.P17738617953075139866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002113 (n + 2)) (Int.lor 1 (A002113 (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029951.P17738617953075139866

/-! ## A029951.P16333087623364570719

`∩[2*n, A002113(n+1)]`
-/

namespace A029951.P16333087623364570719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029951.P16333087623364570719

/-! ## A029951.P3716898792475548102

`eq[n%2+n, A004086(n)]`
-/

namespace A029951.P3716898792475548102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029951.P3716898792475548102

/-! ## A029951.P2248189466597645579

`record[A047813(2*n)]`
-/

namespace A029951.P2248189466597645579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029951.P2248189466597645579

/-! ## A029951.P13948963682735183026

`filter[2*n, A136522(#)]`
-/

namespace A029951.P13948963682735183026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j) = 1) n)

end

end A029951.P13948963682735183026

/-! ## A029951.P6641589711989783487

`A004093(A367807(n+1))`
-/

namespace A029951.P6641589711989783487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004093 (A367807 (n + 1)).toNat

end

end A029951.P6641589711989783487

/-!
# A029952: Palindromic in base 5.

The programs for A029952, there is no canonical definition to state claims against.
-/

/-! ## A029952.P14954373342726767732

`eq[0, A055951(n)]`
-/

namespace A029952.P14954373342726767732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055951 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029952.P14954373342726767732

/-! ## A029952.P609423570395273969

`eq[n, A030104(n)]`
-/

namespace A029952.P609423570395273969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029952.P609423570395273969

/-! ## A029952.P9126209949588094605

`eq[2*n, A055950(n)]`
-/

namespace A029952.P9126209949588094605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055950 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029952.P9126209949588094605

/-! ## A029952.P1676062412621112375

`eq[n, A264995(A091703(n))]`
-/

namespace A029952.P1676062412621112375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264995 (A091703 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029952.P1676062412621112375

/-! ## A029952.P5335699464874216950

`eq[A014263(n+1), A071241(n)]`
-/

namespace A029952.P5335699464874216950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071241 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029952.P5335699464874216950

/-! ## A029952.P16477637833137263783

`lt[(n-A030104(n))², A269266(n)]`
-/

namespace A029952.P16477637833137263783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A030104 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269266 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A029952.P16477637833137263783

/-! ## A029952.P1791483723685716948

`eq[A030101(n), A030101(A055950(n))]`
-/

namespace A029952.P1791483723685716948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A055950 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029952.P1791483723685716948

/-! ## A029952.P13804055322380234211

`eq[A030106(n), A030106(A055950(n)-n)]`
-/

namespace A029952.P13804055322380234211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030106 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030106 (A055950 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029952.P13804055322380234211

/-! ## A029952.P10554323844406323310

`eq[A055956(A055950(n)-n), A055956(n)]`
-/

namespace A029952.P10554323844406323310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055956 (A055950 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055956 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029952.P10554323844406323310

/-! ## A029952.P1945626156699025071

`eq[A230865(A055950(n)-n), A230865(n)]`
-/

namespace A029952.P1945626156699025071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230865 (A055950 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029952.P1945626156699025071

/-!
# A029953: Palindromic in base 6.

The programs for A029953, there is no canonical definition to state claims against.
-/

/-! ## A029953.P17715855076776264426

`eq[0, A055953(n)]`
-/

namespace A029953.P17715855076776264426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029953.P17715855076776264426

/-! ## A029953.P11521500752514779822

`eq[n, A030105(n)]`
-/

namespace A029953.P11521500752514779822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030105 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029953.P11521500752514779822

/-! ## A029953.P7766637017890367714

`eq[2*n, A055952(n)]`
-/

namespace A029953.P7766637017890367714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029953.P7766637017890367714

/-! ## A029953.P12155547505729694196

`eq[A055952(n)+n, A008585(n)]`
-/

namespace A029953.P12155547505729694196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055952 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029953.P12155547505729694196

/-! ## A029953.P3030167209123532487

`A030105(record[n/(1-A030105(n)+n)])`
-/

namespace A029953.P3030167209123532487
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (1 - A030105 n + (n : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030105 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A029953.P3030167209123532487

/-! ## A029953.P7906959260716127470

`eq[A004086(n), A004086(A055952(n)-n)]`
-/

namespace A029953.P7906959260716127470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A055952 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029953.P7906959260716127470

/-! ## A029953.P11089016082528147364

`eq[A001971(n), A001971(A055952(n)-n)]`
-/

namespace A029953.P11089016082528147364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (A055952 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029953.P11089016082528147364

/-! ## A029953.P12715040173967431878

`eq[A004277(n), A004277(A055952(n)-n)]`
-/

namespace A029953.P12715040173967431878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A055952 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029953.P12715040173967431878

/-! ## A029953.P14817901510314068192

`eq[n, A001281(A055952(n))]`
-/

namespace A029953.P14817901510314068192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A055952 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029953.P14817901510314068192

/-! ## A029953.P8226400929687868844

`eq[A000040(n+n+1), A000040(A055952(n)+1)]`
-/

namespace A029953.P8226400929687868844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A055952 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029953.P8226400929687868844

/-!
# A029954: Palindromic in base 7.

The programs for A029954, there is no canonical definition to state claims against.
-/

/-! ## A029954.P4831454916613184038

`eq[0, A055955(n)]`
-/

namespace A029954.P4831454916613184038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029954.P4831454916613184038

/-! ## A029954.P6951738456029113471

`eq[n, A030106(n)]`
-/

namespace A029954.P6951738456029113471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030106 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029954.P6951738456029113471

/-! ## A029954.P13219252518253695984

`eq[2*n, A055954(n)]`
-/

namespace A029954.P13219252518253695984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029954.P13219252518253695984

/-! ## A029954.P14626546376828670455

`A030106(record[n/(1-A030106(n)+n)])`
-/

namespace A029954.P14626546376828670455
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (1 - A030106 n + (n : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030106 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A029954.P14626546376828670455

/-! ## A029954.P1584422623812244517

`eq[A004086(A007093(n)), A007093(n)]`
-/

namespace A029954.P1584422623812244517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A007093 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029954.P1584422623812244517

/-! ## A029954.P13880324986329850285

`eq[A151800(A055954(n)-n), A151800(n)]`
-/

namespace A029954.P13880324986329850285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A055954 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029954.P13880324986329850285

/-! ## A029954.P9220622174990900978

`eq[n, A055954(A004525(n))]/2`
-/

namespace A029954.P9220622174990900978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055954 (A004525 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A029954.P9220622174990900978

/-! ## A029954.P2947659220586825009

`eq[n, A055954(A038572(n))]/2`
-/

namespace A029954.P2947659220586825009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055954 (A038572 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A029954.P2947659220586825009

/-! ## A029954.P8830334138706660044

`eq[n, A001281(A055954(n))]`
-/

namespace A029954.P8830334138706660044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A055954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029954.P8830334138706660044

/-! ## A029954.P2660511931243104318

`record[n+1-A100179(xor(n, A030106(n))+1)]`
-/

namespace A029954.P2660511931243104318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A100179 (Int.xor (n : ℤ) (A030106 n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029954.P2660511931243104318

/-!
# A029955: Palindromic in base 9.

The programs for A029955, there is no canonical definition to state claims against.
-/

/-! ## A029955.P17116227232611646541

`record[A265523(n)]`
-/

namespace A029955.P17116227232611646541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029955.P17116227232611646541

/-! ## A029955.P12177387568698708159

`eq[2*n, A055958(n)]`
-/

namespace A029955.P12177387568698708159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055958 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029955.P12177387568698708159

/-! ## A029955.P4837469955454405099

`A265523(eq[n, A265523(n)])`
-/

namespace A029955.P4837469955454405099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029955.P4837469955454405099

/-! ## A029955.P14867113782589884321

`A265523(lt[n, A265523(n)+1])`
-/

namespace A029955.P14867113782589884321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265523 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029955.P14867113782589884321

/-! ## A029955.P17486556513389998613

`lt[A055015(n-A265523(n)), 1]`
-/

namespace A029955.P17486556513389998613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055015 ((n : ℤ) - A265523 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A029955.P17486556513389998613

/-! ## A029955.P6374947035597762307

`lt[A062690(n-A265523(n)), 1]`
-/

namespace A029955.P6374947035597762307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062690 ((n : ℤ) - A265523 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A029955.P6374947035597762307

/-! ## A029955.P5541220587015574569

`A265523(lt[n-1, A265523(n)])`
-/

namespace A029955.P5541220587015574569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265523 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029955.P5541220587015574569

/-! ## A029955.P14413984664391745469

`eq[0, A055959(n)]`
-/

namespace A029955.P14413984664391745469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055959 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029955.P14413984664391745469

/-! ## A029955.P6582927766384745119

`eq[n, A030108(n)]`
-/

namespace A029955.P6582927766384745119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029955.P6582927766384745119

/-! ## A029955.P17090520037203417051

`A030108(record[n/(1-A030108(n)+n)])`
-/

namespace A029955.P17090520037203417051
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (1 - A030108 n + (n : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A029955.P17090520037203417051

/-! ## A029955.P16514049445844175183

`eq[A004277(n), A004277(A055958(n)/2)]`
-/

namespace A029955.P16514049445844175183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.roundAway ((A055958 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029955.P16514049445844175183

/-! ## A029955.P16143912691732369846

`eq[A061885(A055958(n)/2), A061885(n)]`
-/

namespace A029955.P16143912691732369846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 (SequenceMachineLib.roundAway ((A055958 n : ℚ) / 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029955.P16143912691732369846

/-! ## A029955.P9316076541079092358

`eq[A109043(A055958(n)/2), A109043(n)]`
-/

namespace A029955.P9316076541079092358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 (SequenceMachineLib.roundAway ((A055958 n : ℚ) / 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029955.P9316076541079092358

/-! ## A029955.P185346017128250407

`eq[A004277(n), A004277(A055958(n)-n)]`
-/

namespace A029955.P185346017128250407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A055958 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029955.P185346017128250407

/-! ## A029955.P5499208744803926894

`eq[A061885(A055958(n)-n), A061885(n)]`
-/

namespace A029955.P5499208744803926894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 (A055958 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029955.P5499208744803926894

/-! ## A029955.P4284911565828789869

`eq[A109043(A055958(n)-n), A109043(n)]`
-/

namespace A029955.P4284911565828789869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 (A055958 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029955.P4284911565828789869

/-! ## A029955.P13651272697930817354

`A028904(A118600(n+1))`
-/

namespace A029955.P13651272697930817354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A118600 (n + 1)).toNat

end

end A029955.P13651272697930817354

/-! ## A029955.P15356200134232917424

`eq[1, A056965(A052421(n+1))+1]`
-/

namespace A029955.P15356200134232917424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A052421 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029955.P15356200134232917424

/-!
# A029956: Numbers that are palindromic in base 11.

The programs for A029956, there is no canonical definition to state claims against.
-/

/-! ## A029956.P8703639850518402248

`eq[0, A055961(n)]`
-/

namespace A029956.P8703639850518402248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055961 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029956.P8703639850518402248

/-! ## A029956.P10747903731102224091

`eq[n, A056960(n)]`
-/

namespace A029956.P10747903731102224091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056960 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029956.P10747903731102224091

/-! ## A029956.P8280476612984777826

`eq[2*n, A055960(n)]`
-/

namespace A029956.P8280476612984777826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055960 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029956.P8280476612984777826

/-! ## A029956.P4909446917981708785

`record[n-A055961(n%(n+1))²]`
-/

namespace A029956.P4909446917981708785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055961 (n % (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029956.P4909446917981708785

/-! ## A029956.P13509181201534907433

`lt[(A004277(n)-A055960(n))², 2]`
-/

namespace A029956.P13509181201534907433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 n - A055960 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A029956.P13509181201534907433

/-! ## A029956.P9814355682673004305

`lt[(A016838(n)*A055961(n))², 1]`
-/

namespace A029956.P9814355682673004305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016838 n * A055961 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A029956.P9814355682673004305

/-! ## A029956.P12976243851918636922

`lt[(n-A056960(A028310(n)))², 2]`
-/

namespace A029956.P12976243851918636922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A056960 (A028310 n).toNat) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A029956.P12976243851918636922

/-! ## A029956.P9003496811431937095

`A056960(record[n/(1-A056960(n)+n)])`
-/

namespace A029956.P9003496811431937095
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (1 - A056960 n + (n : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056960 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A029956.P9003496811431937095

/-! ## A029956.P15585632630839532324

`record[n-lcm(A022838(n+1), A055961(n))]`
-/

namespace A029956.P15585632630839532324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Int.lcm (A022838 (n + 1)) (A055961 n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029956.P15585632630839532324

/-! ## A029956.P2235882509090031922

`lt[(A055961(n)*A122075(n))², 1]`
-/

namespace A029956.P2235882509090031922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055961 n * A122075 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A029956.P2235882509090031922

/-! ## A029956.P213798250923412643

`eq[A004277(n), A004277(A055960(n)/2)]`
-/

namespace A029956.P213798250923412643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.roundAway ((A055960 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029956.P213798250923412643

/-! ## A029956.P7988590068972883547

`eq[A004277(n), A004277(A055960(n)-n)]`
-/

namespace A029956.P7988590068972883547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A055960 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029956.P7988590068972883547

/-! ## A029956.P5022759656689021634

`lt[(A055921(n)*A055961(n))², 1]`
-/

namespace A029956.P5022759656689021634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055921 n * A055961 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A029956.P5022759656689021634

/-!
# A029957: Numbers that are palindromic in base 12.

The programs for A029957, there is no canonical definition to state claims against.
-/

/-! ## A029957.P2960660365941033442

`eq[0, A055963(n)]`
-/

namespace A029957.P2960660365941033442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029957.P2960660365941033442

/-! ## A029957.P18120340268927858892

`eq[n, A056961(n)]`
-/

namespace A029957.P18120340268927858892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056961 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029957.P18120340268927858892

/-! ## A029957.P15407237513402219321

`eq[2*n, A055962(n)]`
-/

namespace A029957.P15407237513402219321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055962 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029957.P15407237513402219321

/-! ## A029957.P6093869555892811576

`eq[n, A055962(n)+A001489(n)]`
-/

namespace A029957.P6093869555892811576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055962 n + A001489 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029957.P6093869555892811576

/-! ## A029957.P17123882510344936504

`record[A056961(n)-A055963(n)²]`
-/

namespace A029957.P17123882510344936504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056961 n - A055963 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029957.P17123882510344936504

/-! ## A029957.P10826991895643880640

`lt[(n-A056961(A028310(n)))², 2]`
-/

namespace A029957.P10826991895643880640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A056961 (A028310 n).toNat) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A029957.P10826991895643880640

/-! ## A029957.P15321320105994065199

`lt[(A055963(n)*A329879(n+1))², 1]`
-/

namespace A029957.P15321320105994065199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055963 n * A329879 (n + 1)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A029957.P15321320105994065199

/-! ## A029957.P11690967169427062167

`eq[A055962(n)-A055964(n), A055965(n)]`
-/

namespace A029957.P11690967169427062167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055962 n - A055964 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055965 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029957.P11690967169427062167

/-! ## A029957.P15672764649506554628

`eq[n, A006370(A055962(n))]`
-/

namespace A029957.P15672764649506554628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A055962 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029957.P15672764649506554628

/-! ## A029957.P11978168353193997645

`eq[A001489(n), A001489(A055962(n)-n)]`
-/

namespace A029957.P11978168353193997645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A055962 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029957.P11978168353193997645

/-! ## A029957.P2637191662159865002

`eq[A004277(n), A004277(A055962(n)-n)]`
-/

namespace A029957.P2637191662159865002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A055962 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029957.P2637191662159865002

/-! ## A029957.P8851821508598416600

`eq[A056964(A055962(n)-n), A056964(n)]`
-/

namespace A029957.P8851821508598416600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A055962 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029957.P8851821508598416600

/-!
# A029958: Numbers that are palindromic in base 13.

The programs for A029958, there is no canonical definition to state claims against.
-/

/-! ## A029958.P6963687635825634843

`A297280(A000007(n)+n)%A325316((n+3)*n/2+1)`
-/

namespace A029958.P6963687635825634843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297280 (A000007 n + (n : ℤ)).toNat) (A325316 (SequenceMachineLib.roundAway ((n + 3 : ℚ) * ((n : ℚ) / 2) + 1)).toNat)

end

end A029958.P6963687635825634843

/-! ## A029958.P14413922662776009735

`A297280(abs(1-n)+1)%A027588(n)`
-/

namespace A029958.P14413922662776009735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297280 (|1 - (n : ℤ)| + 1).toNat) (A027588 n)

end

end A029958.P14413922662776009735

/-! ## A029958.P998327103260712870

`A297280(A000007(n)+n)-A010815(A028388(n+1))`
-/

namespace A029958.P998327103260712870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297280 (A000007 n + (n : ℤ)).toNat - A010815 (A028388 (n + 1)).toNat

end

end A029958.P998327103260712870

/-! ## A029958.P3277948382695898993

`A297280(A000007(n)+n)%A023444(A108696(n+2)+1)`
-/

namespace A029958.P3277948382695898993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297280 (A000007 n + (n : ℤ)).toNat) (A023444 (A108696 (n + 2) + 1).toNat)

end

end A029958.P3277948382695898993

/-! ## A029958.P14743543300504776653

`A297280(A028310(n))%A250251(A301678(n))`
-/

namespace A029958.P14743543300504776653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297280 (A028310 n).toNat) (A250251 (A301678 n).toNat)

end

end A029958.P14743543300504776653

/-! ## A029958.P1577651490334283791

`A005171((2*n+1)²+1)*A297280(A000007(n)+n)`
-/

namespace A029958.P1577651490334283791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 ((2 * n + 1) ^ 2 + 1) * A297280 (A000007 n + (n : ℤ)).toNat

end

end A029958.P1577651490334283791

/-! ## A029958.P2396855521482178652

`A076530(n+1)%2*A297280(A000007(n)+n)`
-/

namespace A029958.P2396855521482178652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076530 (n + 1)) 2 * A297280 (A000007 n + (n : ℤ)).toNat

end

end A029958.P2396855521482178652

/-! ## A029958.P10749926445936433304

`A057427(n²)*A297280(A000007(n)+n)`
-/

namespace A029958.P10749926445936433304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n ^ 2) * A297280 (A000007 n + (n : ℤ)).toNat

end

end A029958.P10749926445936433304

/-! ## A029958.P11455065623558215623

`A297280(A028310(n))-A008683(A034714(n+1))`
-/

namespace A029958.P11455065623558215623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297280 (A028310 n).toNat - A008683 (A034714 (n + 1)).toNat

end

end A029958.P11455065623558215623

/-!
# A029959: Numbers that are palindromic in base 14.

The programs for A029959, there is no canonical definition to state claims against.
-/

/-! ## A029959.P19953238589245527

`A297283(A028310(n))%A314892(A030193(n))`
-/

namespace A029959.P19953238589245527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297283 (A028310 n).toNat) (A314892 (A030193 n).toNat)

end

end A029959.P19953238589245527

/-! ## A029959.P17720671207374358051

`A297283(A000038(n)+n)%A314892(A030193(n))`
-/

namespace A029959.P17720671207374358051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297283 (A000038 n + (n : ℤ)).toNat) (A314892 (A030193 n).toNat)

end

end A029959.P17720671207374358051

/-! ## A029959.P15935953303032713543

`∪[A297283(n+1)%A061813(n+1), A297283(n+1)]`
-/

namespace A029959.P15935953303032713543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297283 (n + 1)) (A061813 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A029959.P15935953303032713543

/-! ## A029959.P8727619238586016731

`A297283(abs(1-n)+1)%A061813(n+1)`
-/

namespace A029959.P8727619238586016731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297283 (|1 - (n : ℤ)| + 1).toNat) (A061813 (n + 1))

end

end A029959.P8727619238586016731

/-! ## A029959.P15554867980082221895

`A297283(A028310(n))%A278394(n)`
-/

namespace A029959.P15554867980082221895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297283 (A028310 n).toNat) (A278394 n)

end

end A029959.P15554867980082221895

/-! ## A029959.P11522169419411101672

`A001221(A137688(n))*A297283(A028310(n))`
-/

namespace A029959.P11522169419411101672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A137688 n).toNat * A297283 (A028310 n).toNat

end

end A029959.P11522169419411101672

/-! ## A029959.P16085770823330844664

`A297283(A028310(n))-A000007(∑[n])`
-/

namespace A029959.P16085770823330844664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297283 (A028310 n).toNat - A000007 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A029959.P16085770823330844664

/-! ## A029959.P10711911125683808304

`A297283(n^A178334(n))-A000007(n)`
-/

namespace A029959.P10711911125683808304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297283 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat - A000007 n

end

end A029959.P10711911125683808304

/-! ## A029959.P10119198465659812463

`A057427(n)*A297283(n^A178334(n))`
-/

namespace A029959.P10119198465659812463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A297283 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A029959.P10119198465659812463

/-! ## A029959.P15068616251996843761

`lcm(A062157(n), A297283(n^A178334(n)))`
-/

namespace A029959.P15068616251996843761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062157 n) (A297283 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat)

end

end A029959.P15068616251996843761

/-! ## A029959.P12471597874426883247

`char[A065648(n)]*A297283(n^A178334(n))`
-/

namespace A029959.P12471597874426883247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A297283 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A029959.P12471597874426883247

/-! ## A029959.P10461474306003580830

`A297283(n^A178334(n))%∑[A000041(n)]`
-/

namespace A029959.P10461474306003580830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297283 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A029959.P10461474306003580830

/-! ## A029959.P5568573764674846725

`A297283(n^A178334(n))-char[A283978(2*n)]`
-/

namespace A029959.P5568573764674846725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283978 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297283 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A029959.P5568573764674846725

/-! ## A029959.P9428025978394034299

`A008683(2*A000040(n+1))*A297283(n^A178334(n))`
-/

namespace A029959.P9428025978394034299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * A000040 (n + 1)).toNat * A297283 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A029959.P9428025978394034299

/-! ## A029959.P6316579937660417386

`A297283(A028310(n))-A010052(or(2, n)²-n)`
-/

namespace A029959.P6316579937660417386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297283 (A028310 n).toNat - A010052 (Nat.lor 2 n ^ 2 - n)

end

end A029959.P6316579937660417386

/-!
# A029960: Numbers that are palindromic in base 15.

The programs for A029960, there is no canonical definition to state claims against.
-/

/-! ## A029960.P9471241115362895908

`A297286(A028310(n))%A007088(A043320(n+1))`
-/

namespace A029960.P9471241115362895908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297286 (A028310 n).toNat) (A007088 (A043320 (n + 1)).toNat)

end

end A029960.P9471241115362895908

/-! ## A029960.P14827732073358347468

`A297286(A065033(2*n))%A005214(A005214(n+1))`
-/

namespace A029960.P14827732073358347468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297286 (A065033 (2 * n)).toNat) (A005214 (A005214 (n + 1)).toNat)

end

end A029960.P14827732073358347468

/-! ## A029960.P7735088728529477092

`A297286(A000038(n)+n)%A005214(A005214(n+1))`
-/

namespace A029960.P7735088728529477092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297286 (A000038 n + (n : ℤ)).toNat) (A005214 (A005214 (n + 1)).toNat)

end

end A029960.P7735088728529477092

/-! ## A029960.P15991396590927291306

`A297286(A028310(n))+A289741(A127335(n+1))`
-/

namespace A029960.P15991396590927291306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297286 (A028310 n).toNat + A289741 (A127335 (n + 1)).toNat

end

end A029960.P15991396590927291306

/-! ## A029960.P5910415770292290769

`A297286(A028310(n))-A135523(A001844(n))`
-/

namespace A029960.P5910415770292290769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297286 (A028310 n).toNat - A135523 (A001844 n).toNat

end

end A029960.P5910415770292290769

/-! ## A029960.P963354880659600656

`A165481(n²)*A297286(A028310(n))`
-/

namespace A029960.P963354880659600656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165481 (n ^ 2) * A297286 (A028310 n).toNat

end

end A029960.P963354880659600656

/-! ## A029960.P9780509375010230284

`lcm(A062157(66*n), A297286(A028310(n)))`
-/

namespace A029960.P9780509375010230284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062157 (66 * n)) (A297286 (A028310 n).toNat)

end

end A029960.P9780509375010230284

/-! ## A029960.P12239443564739637673

`A002828(n²)*A297286(A065033(2*n))`
-/

namespace A029960.P12239443564739637673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (n ^ 2) * A297286 (A065033 (2 * n)).toNat

end

end A029960.P12239443564739637673

/-! ## A029960.P421894681689674909

`A297286(A028310(n))-A010054(A000217(n+4)+5)`
-/

namespace A029960.P421894681689674909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297286 (A028310 n).toNat - A010054 (A000217 (n + 4) + 5).toNat

end

end A029960.P421894681689674909

/-! ## A029960.P2726442631286968302

`A297286(A000038(n)+n)%A038572(A001844(n))`
-/

namespace A029960.P2726442631286968302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297286 (A000038 n + (n : ℤ)).toNat) (A038572 (A001844 n).toNat)

end

end A029960.P2726442631286968302

/-!
# A029961: Palindromic in bases 4 and 10.

The programs for A029961, there is no canonical definition to state claims against.
-/

/-! ## A029961.P5596283508052542887

`∩[A002113(n+1), A014192(n+1)]`
-/

namespace A029961.P5596283508052542887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029961.P5596283508052542887

/-! ## A029961.P3988087082511803804

`∩[A014192(n+1), A173551(n+1)]`
-/

namespace A029961.P3988087082511803804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029961.P3988087082511803804

/-! ## A029961.P10170092703866153965

`eq[n, A030103(A004086(n))]`
-/

namespace A029961.P10170092703866153965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029961.P10170092703866153965

/-! ## A029961.P634994029210304295

`eq[A265525(n), A265546(n)]`
-/

namespace A029961.P634994029210304295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265546 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029961.P634994029210304295

/-! ## A029961.P3308244951933643569

`filter[A014192(n+1), A136522(#)]`
-/

namespace A029961.P3308244951933643569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A029961.P3308244951933643569

/-!
# A029962: Palindromic in bases 5 and 10.

The programs for A029962, there is no canonical definition to state claims against.
-/

/-! ## A029962.P11443228301890942129

`∩[A002113(n+1), A029952(n+1)]`
-/

namespace A029962.P11443228301890942129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029962.P11443228301890942129

/-! ## A029962.P15428608583054651088

`∩[A029952(n+1), A118600(n+1)]`
-/

namespace A029962.P15428608583054651088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029962.P15428608583054651088

/-! ## A029962.P18354083412828268643

`∩[A029952(n+1), A173551(n+1)]`
-/

namespace A029962.P18354083412828268643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029962.P18354083412828268643

/-! ## A029962.P17657011654938225709

`∩[A029952(n+1), A061917(n+1)]`
-/

namespace A029962.P17657011654938225709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029962.P17657011654938225709

/-!
# A029963: Palindromic in bases 6 and 10.

The programs for A029963, there is no canonical definition to state claims against.
-/

/-! ## A029963.P3595222818503459606

`∩[A002113(n+1), A029953(n+1)]`
-/

namespace A029963.P3595222818503459606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029963.P3595222818503459606

/-! ## A029963.P4477910081305590282

`∩[A029953(n+1), A173551(n+1)]`
-/

namespace A029963.P4477910081305590282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029963.P4477910081305590282

/-! ## A029963.P9779011985755516947

`eq[n, A030105(A004086(n))]`
-/

namespace A029963.P9779011985755516947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030105 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029963.P9779011985755516947

/-! ## A029963.P8337552358723157232

`eq[n, A020485(A030105(n))]`
-/

namespace A029963.P8337552358723157232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 (A030105 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029963.P8337552358723157232

/-!
# A029964: Palindromic in bases 7 and 10.

The programs for A029964, there is no canonical definition to state claims against.
-/

/-! ## A029964.P2278883647495614860

`∩[A002113(n+1), A029954(n+1)]`
-/

namespace A029964.P2278883647495614860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029964.P2278883647495614860

/-! ## A029964.P4599465927098055981

`∩[A029954(n+1), A050783(n+1)]`
-/

namespace A029964.P4599465927098055981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029964.P4599465927098055981

/-! ## A029964.P15975294138247509970

`∩[A029954(n+1), A173551(n+1)]`
-/

namespace A029964.P15975294138247509970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029964.P15975294138247509970

/-! ## A029964.P11610551119633028179

`eq[A020485(n), A030106(n)]`
-/

namespace A029964.P11610551119633028179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030106 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029964.P11610551119633028179

/-!
# A029965: Palindromic in bases 9 and 10.

The programs for A029965, there is no canonical definition to state claims against.
-/

/-! ## A029965.P7360151573159932849

`∩[A002113(n+1), A029955(n+1)]`
-/

namespace A029965.P7360151573159932849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029965.P7360151573159932849

/-! ## A029965.P15290116977451191354

`∩[A029955(n+1), A173551(n+1)]`
-/

namespace A029965.P15290116977451191354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029965.P15290116977451191354

/-! ## A029965.P4789549221287136643

`eq[n, A265523(A261423(n))]`
-/

namespace A029965.P4789549221287136643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265523 (A261423 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029965.P4789549221287136643

/-! ## A029965.P7294488318903266005

`eq[A262038(n), A265523(n)]`
-/

namespace A029965.P7294488318903266005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265523 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029965.P7294488318903266005

/-! ## A029965.P12490417642619557259

`eq[n, A265523(A265525(n))]`
-/

namespace A029965.P12490417642619557259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265523 (A265525 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029965.P12490417642619557259

/-!
# A029966: Palindromic in bases 10 and 11.

The programs for A029966, there is no canonical definition to state claims against.
-/

/-! ## A029966.P16805231795686618074

`∩[A002113(n+1), A029956(n+1)]`
-/

namespace A029966.P16805231795686618074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029966.P16805231795686618074

/-! ## A029966.P5955355877778717315

`eq[n, A056960(A004086(n))]`
-/

namespace A029966.P5955355877778717315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056960 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029966.P5955355877778717315

/-! ## A029966.P2258552694118536775

`eq[n, A056960(A047813(n))]`
-/

namespace A029966.P2258552694118536775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056960 (A047813 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029966.P2258552694118536775

/-! ## A029966.P926666496429475706

`eq[A055960(n), A056964(n)]`
-/

namespace A029966.P926666496429475706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055960 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029966.P926666496429475706

/-! ## A029966.P1519653592146380600

`eq[A055961(n), A056965(n)]`
-/

namespace A029966.P1519653592146380600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055961 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029966.P1519653592146380600

/-!
# A029967: Palindromic in bases 12 and 10.

The programs for A029967, there is no canonical definition to state claims against.
-/

/-! ## A029967.P3645782125095883301

`∩[A002113(n+1), A029957(n+1)]`
-/

namespace A029967.P3645782125095883301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029967.P3645782125095883301

/-! ## A029967.P14700039244589288582

`eq[n, A056961(A004086(n))]`
-/

namespace A029967.P14700039244589288582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056961 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029967.P14700039244589288582

/-! ## A029967.P8302650982483033424

`eq[A020485(n), A056961(n)]`
-/

namespace A029967.P8302650982483033424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056961 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029967.P8302650982483033424

/-! ## A029967.P5356894381841760928

`eq[n, A056961(A047813(n))]`
-/

namespace A029967.P5356894381841760928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056961 (A047813 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029967.P5356894381841760928

/-! ## A029967.P6177708797261473284

`eq[A052036(n), A055963(n)]`
-/

namespace A029967.P6177708797261473284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052036 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029967.P6177708797261473284

/-!
# A029968: Palindromic in bases 13 and 10.

The programs for A029968, there is no canonical definition to state claims against.
-/

/-! ## A029968.P2064540106635107024

`∩[A002113(n+1), A029958(n+1)]`
-/

namespace A029968.P2064540106635107024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029968.P2064540106635107024

/-! ## A029968.P12528953827632807721

`record[A047813(A029958(n+1))]`
-/

namespace A029968.P12528953827632807721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A029958 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029968.P12528953827632807721

/-! ## A029968.P17086353472162216215

`filter[A029958(n+1), A136522(#)]`
-/

namespace A029968.P17086353472162216215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A029968.P17086353472162216215

/-! ## A029968.P1412901404768613854

`∩[A029958(n+1), record[A331472(n)]]`
-/

namespace A029968.P1412901404768613854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029958 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029968.P1412901404768613854

/-!
# A029969: Numbers that are palindromic in bases 10 and 14.

The programs for A029969, there is no canonical definition to state claims against.
-/

/-! ## A029969.P13129673594806992900

`∩[A002113(n+1), A029959(n+1)]`
-/

namespace A029969.P13129673594806992900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029969.P13129673594806992900

/-! ## A029969.P16321139846153325405

`filter[A029959(n+1), A136522(#)]`
-/

namespace A029969.P16321139846153325405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A029969.P16321139846153325405

/-!
# A029970: Numbers that are palindromic in bases 10 and 15.

The programs for A029970, there is no canonical definition to state claims against.
-/

/-! ## A029970.P6742804966821427780

`∩[A002113(n+1), A029960(n+1)]`
-/

namespace A029970.P6742804966821427780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029970.P6742804966821427780

/-! ## A029970.P9585795420646795363

`∩[A029960(n+1), A262038(a(n-1)+1)]` with `a(0)=-1`
-/

namespace A029970.P9585795420646795363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f2 =>
  A262038 (f2 (n - 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029970.P9585795420646795363

/-! ## A029970.P11106101668578536794

`A221749(C(n, 10)+1)+n`
-/

namespace A029970.P11106101668578536794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221749 (Nat.choose n 10 + 1) + (n : ℤ)

end

end A029970.P11106101668578536794

/-! ## A029970.P18308472203388721668

`A001602((a(n-1)+a(n-9)-a(n-10))²)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=6, a(7)=7, a(8)=8, a(9)=9, a(10)=11`
-/

namespace A029970.P18308472203388721668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 11] fun n a =>
  A001602 ((a (n - 1) + a (n - 9) - a (n - 10)) ^ 2).toNat

end

end A029970.P18308472203388721668

/-! ## A029970.P7266814317895820661

`A222620(A088599(n+1))`
-/

namespace A029970.P7266814317895820661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222620 (A088599 (n + 1)).toNat

end

end A029970.P7266814317895820661

/-!
# A029971: Palindromic primes in base 3.

The programs for A029971, there is no canonical definition to state claims against.
-/

/-! ## A029971.P10781111563977643949

`A164125(n)+a(n-1)` with `a(0)=2`
-/

namespace A029971.P10781111563977643949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A164125 n + a (n - 1)

end

end A029971.P10781111563977643949

/-! ## A029971.P11395665640346666809

`∑[A164125(n)/2*a(A000038(n))]` with `a(0)=2`
-/

namespace A029971.P11395665640346666809
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  (A164125 n : ℚ) / 2 * f1 (A000038 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029971.P11395665640346666809

/-! ## A029971.P16413914114006507787

`p?[A014190(n+1)]`
-/

namespace A029971.P16413914114006507787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029971.P16413914114006507787

/-! ## A029971.P4577479527806897921

`p?[∑[A330312(n+1)]]`
-/

namespace A029971.P4577479527806897921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330312 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029971.P4577479527806897921

/-! ## A029971.P4549808095872015927

`p?[∪[A043001(3*n+4), A043002(n+1)]]`
-/

namespace A029971.P4549808095872015927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043001 (3 * n + 4)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043002 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A029971.P4549808095872015927

/-! ## A029971.P16027173900129212094

`∩[A014190(n+1), A074833(n+1)]`
-/

namespace A029971.P16027173900129212094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029971.P16027173900129212094

/-!
# A029972: Palindromic primes in base 4.

The programs for A029972, there is no canonical definition to state claims against.
-/

/-! ## A029972.P12174560463899259067

`p?[A014192(n+1)]`
-/

namespace A029972.P12174560463899259067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029972.P12174560463899259067

/-! ## A029972.P3511020656961837965

`p?[record[A014192(A052938(n))]]`
-/

namespace A029972.P3511020656961837965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029972.P3511020656961837965

/-! ## A029972.P162545525958692281

`p?[record[A014192(A133310(n))]]`
-/

namespace A029972.P162545525958692281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029972.P162545525958692281

/-! ## A029972.P14396424538467105652

`p?[record[A014192(A263111(n))]]`
-/

namespace A029972.P14396424538467105652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (A263111 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029972.P14396424538467105652

/-! ## A029972.P9299910892024544468

`p?[record[A014192(A328399(n))]]`
-/

namespace A029972.P9299910892024544468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029972.P9299910892024544468

/-! ## A029972.P34619111357411674

`∩[A014192(n+1), A074834(n+1)]`
-/

namespace A029972.P34619111357411674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029972.P34619111357411674

/-! ## A029972.P17567910595471897037

`∩[A014192(n+1), A049585(n+1)]`
-/

namespace A029972.P17567910595471897037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029972.P17567910595471897037

/-! ## A029972.P7891716113331467118

`∩[A014192(n+1), A058853(n+1)]`
-/

namespace A029972.P7891716113331467118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029972.P7891716113331467118

/-! ## A029972.P3997989387110508198

`∩[A000040(n+1), A014192(n+1)]`
-/

namespace A029972.P3997989387110508198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029972.P3997989387110508198

/-!
# A029973: Primes that are palindromic in base 5.

The programs for A029973, there is no canonical definition to state claims against.
-/

/-! ## A029973.P15638886837606800665

`p?[A029952(n+1)]`
-/

namespace A029973.P15638886837606800665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029973.P15638886837606800665

/-! ## A029973.P4928252976254807723

`p?[record[A029952(A133310(n))]]`
-/

namespace A029973.P4928252976254807723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029973.P4928252976254807723

/-! ## A029973.P13257574140349741770

`p?[record[A029952(A328399(n))]]`
-/

namespace A029973.P13257574140349741770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029973.P13257574140349741770

/-! ## A029973.P2205082808550205959

`record[A020639(A029952(n+3))]`
-/

namespace A029973.P2205082808550205959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A029952 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029973.P2205082808550205959

/-! ## A029973.P15176517184948248581

`filter[A029952(n+2), A010051(#)]`
-/

namespace A029973.P15176517184948248581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A029973.P15176517184948248581

/-! ## A029973.P8606142868418627858

`∩[A000040(n+1), A029952(n+1)]`
-/

namespace A029973.P8606142868418627858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029973.P8606142868418627858

/-! ## A029973.P10139958350499743743

`∩[A029952(n+1), A045319(n+1)]`
-/

namespace A029973.P10139958350499743743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029973.P10139958350499743743

/-! ## A029973.P9790410043775425665

`∩[A029952(n+1), A070159(n+1)]`
-/

namespace A029973.P9790410043775425665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029973.P9790410043775425665

/-! ## A029973.P7221888035837485718

`∩[A029952(n+1), A075235(n+1)]`
-/

namespace A029973.P7221888035837485718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029973.P7221888035837485718

/-!
# A029974: Primes that are palindromic in base 6.

The programs for A029974, there is no canonical definition to state claims against.
-/

/-! ## A029974.P13908755682387152614

`p?[A029953(n+1)]`
-/

namespace A029974.P13908755682387152614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029974.P13908755682387152614

/-! ## A029974.P5579649364877148385

`p?[record[A029953(A052938(n))]]`
-/

namespace A029974.P5579649364877148385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029974.P5579649364877148385

/-! ## A029974.P16565546354806069653

`p?[record[A029953(A328399(n))]]`
-/

namespace A029974.P16565546354806069653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029974.P16565546354806069653

/-! ## A029974.P3945511192929696640

`∩[A029953(n+1), A075236(n+1)]`
-/

namespace A029974.P3945511192929696640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029974.P3945511192929696640

/-! ## A029974.P12579144666502049957

`record[A020639(A029953(n+3))]`
-/

namespace A029974.P12579144666502049957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A029953 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029974.P12579144666502049957

/-! ## A029974.P17111980178451085442

`filter[A029953(n+2), A010051(#)]`
-/

namespace A029974.P17111980178451085442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A029974.P17111980178451085442

/-! ## A029974.P15637733412102639958

`∩[A000040(n+1), A029953(n+1)]`
-/

namespace A029974.P15637733412102639958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029974.P15637733412102639958

/-! ## A029974.P5282290198514824598

`∩[A029953(n+1), A070159(n+1)]`
-/

namespace A029974.P5282290198514824598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029974.P5282290198514824598

/-! ## A029974.P5293752138517839404

`∩[A029953(n+1), A106118(n+1)]`
-/

namespace A029974.P5293752138517839404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029974.P5293752138517839404

/-!
# A029975: Primes that are palindromic in base 7.

The programs for A029975, there is no canonical definition to state claims against.
-/

/-! ## A029975.P10915269827119368016

`p?[A029954(n+1)]`
-/

namespace A029975.P10915269827119368016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029975.P10915269827119368016

/-! ## A029975.P7661127761360145646

`p?[record[A029954(A324346(n))]]`
-/

namespace A029975.P7661127761360145646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029975.P7661127761360145646

/-! ## A029975.P2283062988931269222

`p?[record[A029954(A324347(n))]]`
-/

namespace A029975.P2283062988931269222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029975.P2283062988931269222

/-! ## A029975.P7950091743580466892

`p?[record[A029954(A328399(n))]]`
-/

namespace A029975.P7950091743580466892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029975.P7950091743580466892

/-! ## A029975.P7112671799883584905

`∩[A029954(n+1), A075237(n+1)]`
-/

namespace A029975.P7112671799883584905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029975.P7112671799883584905

/-! ## A029975.P9659089226313253210

`record[A020639(A029954(n+3))]`
-/

namespace A029975.P9659089226313253210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A029954 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029975.P9659089226313253210

/-! ## A029975.P14366749539007381696

`filter[A029954(n+2), A010051(#)]`
-/

namespace A029975.P14366749539007381696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A029975.P14366749539007381696

/-! ## A029975.P7814926904358631901

`∩[A000040(n+1), A029954(n+1)]`
-/

namespace A029975.P7814926904358631901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029975.P7814926904358631901

/-! ## A029975.P15268769670813300260

`∩[A029954(n+1), A049551(n+1)]`
-/

namespace A029975.P15268769670813300260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029975.P15268769670813300260

/-!
# A029976: Palindromic primes in base 8.

The programs for A029976, there is no canonical definition to state claims against.
-/

/-! ## A029976.P5519741709781244472

`p?[A029803(n+1)]`
-/

namespace A029976.P5519741709781244472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029976.P5519741709781244472

/-! ## A029976.P4251320504058820090

`∩[A029803(n+1), A075238(n+1)]`
-/

namespace A029976.P4251320504058820090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029976.P4251320504058820090

/-! ## A029976.P8123926349073782630

`record[A020639(A029803(n+3))]`
-/

namespace A029976.P8123926349073782630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A029803 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029976.P8123926349073782630

/-! ## A029976.P3401153827679777968

`filter[A029803(n+2), A010051(#)]`
-/

namespace A029976.P3401153827679777968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A029976.P3401153827679777968

/-! ## A029976.P2355815966645058534

`∩[A000040(n+1), A029803(n+1)]`
-/

namespace A029976.P2355815966645058534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029976.P2355815966645058534

/-! ## A029976.P4897922298606612266

`∩[A029803(n+1), A049551(n+1)]`
-/

namespace A029976.P4897922298606612266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029976.P4897922298606612266

/-! ## A029976.P4642362702110920368

`∩[A029803(n+1), A070159(n+1)]`
-/

namespace A029976.P4642362702110920368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029976.P4642362702110920368

/-! ## A029976.P5710014084873558004

`∩[A029803(n+1), A106118(n+1)]`
-/

namespace A029976.P5710014084873558004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029976.P5710014084873558004

/-! ## A029976.P8191266615665076365

`∩[A029803(n+1), A182140(n+1)]`
-/

namespace A029976.P8191266615665076365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029976.P8191266615665076365

/-!
# A029977: Primes that are palindromic in base 9.

The programs for A029977, there is no canonical definition to state claims against.
-/

/-! ## A029977.P653584216463981426

`p?[A029955(n+1)]`
-/

namespace A029977.P653584216463981426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029977.P653584216463981426

/-! ## A029977.P3383638373833511478

`p?[record[A029955(A331300(n))]]`
-/

namespace A029977.P3383638373833511478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (A331300 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029977.P3383638373833511478

/-! ## A029977.P6042646685106762162

`p?[record[A029955(A331303(n))]]`
-/

namespace A029977.P6042646685106762162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (A331303 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029977.P6042646685106762162

/-! ## A029977.P5284668549377584760

`record[A020639(A029955(n+3))]`
-/

namespace A029977.P5284668549377584760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A029955 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029977.P5284668549377584760

/-! ## A029977.P7205320074964038922

`filter[A029955(n+2), A010051(#)]`
-/

namespace A029977.P7205320074964038922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A029977.P7205320074964038922

/-! ## A029977.P16154934689281480312

`∩[A000040(n+1), A029955(n+1)]`
-/

namespace A029977.P16154934689281480312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029977.P16154934689281480312

/-! ## A029977.P11697699771795901680

`∩[A029955(n+1), A049585(n+1)]`
-/

namespace A029977.P11697699771795901680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029977.P11697699771795901680

/-! ## A029977.P14496905321928324913

`∩[A029955(n+1), A075239(n+1)]`
-/

namespace A029977.P14496905321928324913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029977.P14496905321928324913

/-! ## A029977.P1228854009567368093

`∩[A029955(n+1), A079603(n+1)]`
-/

namespace A029977.P1228854009567368093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029977.P1228854009567368093

/-!
# A029978: Primes that are palindromic in base 11.

The programs for A029978, there is no canonical definition to state claims against.
-/

/-! ## A029978.P15771539718401015004

`p?[A029956(n+1)]`
-/

namespace A029978.P15771539718401015004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029978.P15771539718401015004

/-! ## A029978.P14122198221962712021

`p?[record[A029956(A286544(n))]]`
-/

namespace A029978.P14122198221962712021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029956 (A286544 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029978.P14122198221962712021

/-! ## A029978.P16058618870035518353

`p?[record[A029956(A291766(n))]]`
-/

namespace A029978.P16058618870035518353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029956 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029978.P16058618870035518353

/-! ## A029978.P10786546682564747959

`p?[record[A029956(A292266(n))]]`
-/

namespace A029978.P10786546682564747959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029956 (A292266 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029978.P10786546682564747959

/-! ## A029978.P8209966530836555307

`∩[A029956(n+1), A049569(n+1)]`
-/

namespace A029978.P8209966530836555307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029978.P8209966530836555307

/-! ## A029978.P15745812581123898315

`∩[A029956(n+1), A058853(n+1)]`
-/

namespace A029978.P15745812581123898315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029978.P15745812581123898315

/-! ## A029978.P7043864505595064534

`∩[A029956(n+1), A216885(n+1)]`
-/

namespace A029978.P7043864505595064534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029978.P7043864505595064534

/-! ## A029978.P5168866089889158210

`∩[A000040(n+1), A029956(n+1)]`
-/

namespace A029978.P5168866089889158210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029978.P5168866089889158210

/-! ## A029978.P566049483504188375

`∩[A029956(n+1), A106118(n+1)]`
-/

namespace A029978.P566049483504188375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029978.P566049483504188375

/-! ## A029978.P10887055781089904560

`record[A020639(A029956(n+3))]`
-/

namespace A029978.P10887055781089904560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A029956 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029978.P10887055781089904560

/-!
# A029979: Primes that are palindromic in base 12.

The programs for A029979, there is no canonical definition to state claims against.
-/

/-! ## A029979.P9092043727825926354

`p?[A029957(n+1)]`
-/

namespace A029979.P9092043727825926354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029979.P9092043727825926354

/-! ## A029979.P13761609365975839246

`p?[record[A029957(A291766(n))]]`
-/

namespace A029979.P13761609365975839246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029957 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029979.P13761609365975839246

/-! ## A029979.P16399646090052646667

`p?[record[A029957(A292266(n))]]`
-/

namespace A029979.P16399646090052646667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029957 (A292266 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029979.P16399646090052646667

/-! ## A029979.P15021296573198087971

`p?[record[A029957(A324346(n))]]`
-/

namespace A029979.P15021296573198087971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029957 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029979.P15021296573198087971

/-! ## A029979.P11613069378530068608

`∩[A029957(n+1), A216883(n+1)]`
-/

namespace A029979.P11613069378530068608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029979.P11613069378530068608

/-! ## A029979.P18253133814321726889

`∩[A029957(n+1), A049585(n+1)]`
-/

namespace A029979.P18253133814321726889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029979.P18253133814321726889

/-! ## A029979.P11757596687517085896

`∩[A029957(n+1), A216887(n+1)]`
-/

namespace A029979.P11757596687517085896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029979.P11757596687517085896

/-! ## A029979.P4620201126071338859

`∩[A000040(n+1), A029957(n+1)]`
-/

namespace A029979.P4620201126071338859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029979.P4620201126071338859

/-! ## A029979.P9819223948471767346

`record[A020639(A029957(n+3))]`
-/

namespace A029979.P9819223948471767346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A029957 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029979.P9819223948471767346

/-! ## A029979.P16810066506035808365

`filter[A029957(n+2), A010051(#)]`
-/

namespace A029979.P16810066506035808365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029957 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A029979.P16810066506035808365

/-!
# A029980: Primes that are palindromic in base 13.

The programs for A029980, there is no canonical definition to state claims against.
-/

/-! ## A029980.P10853018912404742717

`p?[A029958(n+1)]`
-/

namespace A029980.P10853018912404742717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029980.P10853018912404742717

/-! ## A029980.P2980892805771452611

`p?[record[A029958(A052938(n))]]`
-/

namespace A029980.P2980892805771452611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029958 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029980.P2980892805771452611

/-! ## A029980.P13982597908618903861

`p?[record[A029958(A133310(n))]]`
-/

namespace A029980.P13982597908618903861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029958 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029980.P13982597908618903861

/-! ## A029980.P9813524431928262022

`p?[A029958(A052938(n))*A033999(n)]`
-/

namespace A029980.P9813524431928262022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029958 (A052938 n).toNat * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029980.P9813524431928262022

/-! ## A029980.P5717136424663813871

`∩[A029958(n+1), A216883(n+1)]`
-/

namespace A029980.P5717136424663813871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029980.P5717136424663813871

/-! ## A029980.P15528570530484348318

`∩[A029958(n+1), A049569(n+1)]`
-/

namespace A029980.P15528570530484348318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029980.P15528570530484348318

/-! ## A029980.P6753840100818694796

`∩[A029958(n+1), A049585(n+1)]`
-/

namespace A029980.P6753840100818694796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029980.P6753840100818694796

/-! ## A029980.P14568180522231098199

`∩[A000040(n+1), A029958(n+1)]`
-/

namespace A029980.P14568180522231098199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029980.P14568180522231098199

/-! ## A029980.P11072718027474137391

`∩[A029958(n+1), A182140(n+1)]`
-/

namespace A029980.P11072718027474137391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029980.P11072718027474137391

/-!
# A029981: Primes that are palindromic in base 14.

The programs for A029981, there is no canonical definition to state claims against.
-/

/-! ## A029981.P5714160444128454154

`p?[A029959(n+1)]`
-/

namespace A029981.P5714160444128454154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029981.P5714160444128454154

/-! ## A029981.P5592592421077287210

`p?[record[A029959(A052938(n))]]`
-/

namespace A029981.P5592592421077287210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029959 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029981.P5592592421077287210

/-! ## A029981.P4156698245563235421

`p?[record[A029959(A286544(n))]]`
-/

namespace A029981.P4156698245563235421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029959 (A286544 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029981.P4156698245563235421

/-! ## A029981.P16212580701927661764

`p?[record[A029959(A292266(n))]]`
-/

namespace A029981.P16212580701927661764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029959 (A292266 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029981.P16212580701927661764

/-! ## A029981.P6101818950356109131

`p?[record[A029959(A324346(n))]]`
-/

namespace A029981.P6101818950356109131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029959 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029981.P6101818950356109131

/-! ## A029981.P13738539035994200297

`p?[record[A029959(A349315(n))]]`
-/

namespace A029981.P13738539035994200297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029959 (A349315 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029981.P13738539035994200297

/-! ## A029981.P16413910834694162878

`p?[record[A029959(A263111(n))]]`
-/

namespace A029981.P16413910834694162878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029959 (A263111 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029981.P16413910834694162878

/-! ## A029981.P2062300780097775931

`record[A006530(A029959(n+3))]`
-/

namespace A029981.P2062300780097775931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A029959 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029981.P2062300780097775931

/-! ## A029981.P12794944909416027444

`filter[A029959(n+2), A010051(#)]`
-/

namespace A029981.P12794944909416027444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029959 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A029981.P12794944909416027444

/-!
# A029982: Palindromic primes in base 15.

The programs for A029982, there is no canonical definition to state claims against.
-/

/-! ## A029982.P5757499272246328607

`p?[A029960(n+1)]`
-/

namespace A029982.P5757499272246328607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029982.P5757499272246328607

/-! ## A029982.P17249196112305656069

`p?[record[A029960(A286544(n))]]`
-/

namespace A029982.P17249196112305656069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029960 (A286544 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029982.P17249196112305656069

/-! ## A029982.P11181121039087060717

`p?[record[A029960(A292266(n))]]`
-/

namespace A029982.P11181121039087060717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029960 (A292266 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A029982.P11181121039087060717

/-! ## A029982.P3143937058218747104

`∩[A029960(n+1), A095313(n+1)]`
-/

namespace A029982.P3143937058218747104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029982.P3143937058218747104

/-! ## A029982.P17630837193098248182

`∩[A029960(n+1), A216883(n+1)]`
-/

namespace A029982.P17630837193098248182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029982.P17630837193098248182

/-! ## A029982.P4644663188858391682

`∩[A029960(n+1), A058853(n+1)]`
-/

namespace A029982.P4644663188858391682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029982.P4644663188858391682

/-! ## A029982.P1236701043442081504

`∩[A029960(n+1), A216884(n+1)]`
-/

namespace A029982.P1236701043442081504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029982.P1236701043442081504

/-! ## A029982.P12807659593580454798

`∩[A029960(n+1), A216887(n+1)]`
-/

namespace A029982.P12807659593580454798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029982.P12807659593580454798

/-! ## A029982.P10042185940688801433

`∩[A000040(n+1), A029960(n+1)]`
-/

namespace A029982.P10042185940688801433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029982.P10042185940688801433

/-! ## A029982.P2156226754117085453

`∩[A029960(n+1), A070159(n+1)]`
-/

namespace A029982.P2156226754117085453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029982.P2156226754117085453

/-!
# A029983: Squares which are palindromes in base 2.

The programs for A029983, there is no canonical definition to state claims against.
-/

/-! ## A029983.P18369991060865071288

`A003166(n+1)²`
-/

namespace A029983.P18369991060865071288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003166 (n + 1) ^ 2

end

end A029983.P18369991060865071288

/-! ## A029983.P14091751725609359516

`A003166(n+1)^gcd(2, A037168(n+1))`
-/

namespace A029983.P14091751725609359516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003166 (n + 1) ^ Int.gcd 2 (A037168 (n + 1))

end

end A029983.P14091751725609359516

/-! ## A029983.P307042870396327523

`A003166(n+1)^A000005(A003147(n+1))`
-/

namespace A029983.P307042870396327523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003166 (n + 1) : ℚ) ^ (A000005 (A003147 (n + 1)).toNat : ℤ)

end

end A029983.P307042870396327523

/-! ## A029983.P7227998029585429507

`A003166(n+1)^A001221(A100484(n+1))`
-/

namespace A029983.P7227998029585429507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003166 (n + 1) : ℚ) ^ (A001221 (A100484 (n + 1)).toNat : ℤ)

end

end A029983.P7227998029585429507

/-! ## A029983.P17998243768139556724

`A003166(n+1)^p?[A014963(A031131(n+1))]`
-/

namespace A029983.P17998243768139556724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A031131 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003166 (n + 1) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A029983.P17998243768139556724

/-!
# A029984: Numbers k such that k^2 is palindromic in base 3.

The programs for A029984, there is no canonical definition to state claims against.
-/

/-! ## A029984.P15483650488549747448

`sqrt(A029985(n+1))`
-/

namespace A029984.P15483650488549747448
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029985 (n + 1) : ℝ)

end

end A029984.P15483650488549747448

/-! ## A029984.P1782473368621481076

`A029985(A028242(2*n))^(1-1/2)`
-/

namespace A029984.P1782473368621481076
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029985 (A028242 (2 * n)).toNat : ℝ) ^ (1 - (1 : ℚ) / 2 : ℝ)

end

end A029984.P1782473368621481076

/-! ## A029984.P153465329420100924

`A029985(n+1)^(A072706(n)/A032302(n))`
-/

namespace A029984.P153465329420100924
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029985 (n + 1) : ℝ) ^ ((A072706 n : ℚ) / (A032302 n : ℚ) : ℝ)

end

end A029984.P153465329420100924

/-! ## A029984.P6351369293662054942

`A029985(n+1)^(A011782(n)/A000079(n))`
-/

namespace A029984.P6351369293662054942
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029985 (n + 1) : ℝ) ^ ((A011782 n : ℚ) / (A000079 n : ℚ) : ℝ)

end

end A029984.P6351369293662054942

/-!
# A029985: Squares which are palindromes in base 3.

The programs for A029985, there is no canonical definition to state claims against.
-/

/-! ## A029985.P6209834179679556667

`A029984(n+1)²`
-/

namespace A029985.P6209834179679556667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029984 (n + 1) ^ 2

end

end A029985.P6209834179679556667

/-! ## A029985.P3374896289191051666

`A029984(2*(n+1)-(n+1))^2`
-/

namespace A029985.P3374896289191051666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029984 (2 * (n + 1) - (n + 1)) ^ 2

end

end A029985.P3374896289191051666

/-! ## A029985.P7544295892924322105

`record[A029984(A126759(n))²]`
-/

namespace A029985.P7544295892924322105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029984 (A126759 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029985.P7544295892924322105

/-! ## A029985.P1606867712491801

`record[A029984(A126759(n))]*A029984(n+1)`
-/

namespace A029985.P1606867712491801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029984 (A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A029984 (n + 1)

end

end A029985.P1606867712491801

/-! ## A029985.P51301093802042689

`A029984(A000027(n+1))*A029984(n+1)`
-/

namespace A029985.P51301093802042689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029984 (A000027 (n + 1)).toNat * A029984 (n + 1)

end

end A029985.P51301093802042689

/-! ## A029985.P1723297104752814358

`A029984(A000290(n+1)/(n+1))*A029984(n+1)`
-/

namespace A029985.P1723297104752814358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029984 (SequenceMachineLib.roundAway ((A000290 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat * A029984 (n + 1)

end

end A029985.P1723297104752814358

/-! ## A029985.P4737811247652143874

`A029984(n+1)%A029984(n+2)*A029984(n+1)`
-/

namespace A029985.P4737811247652143874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029984 (n + 1)) (A029984 (n + 2)) * A029984 (n + 1)

end

end A029985.P4737811247652143874

/-! ## A029985.P17389178746965955836

`A010052(A000290(n))*A029984(n+1)*A029984(n+1)`
-/

namespace A029985.P17389178746965955836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A000290 n).toNat * A029984 (n + 1) * A029984 (n + 1)

end

end A029985.P17389178746965955836

/-!
# A029986: Numbers k such that k^2 is palindromic in base 4.

The programs for A029986, there is no canonical definition to state claims against.
-/

/-! ## A029986.P15790873268416820930

`sqrt(A029987(n+1))`
-/

namespace A029986.P15790873268416820930
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029987 (n + 1) : ℝ)

end

end A029986.P15790873268416820930

/-! ## A029986.P13835743519069570745

`A029987(Δ[n²]-n)^(1/2)`
-/

namespace A029986.P13835743519069570745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029987 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A029986.P13835743519069570745

/-! ## A029986.P10996510390173287081

`record[sqrt(A029987(ceil(C(or(1, n), n)/2)))]`
-/

namespace A029986.P10996510390173287081
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029987 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029986.P10996510390173287081

/-! ## A029986.P5139557191274352239

`(A029987(n+1)^(1/2))%A185505(n+1)`
-/

namespace A029986.P5139557191274352239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A029987 (n + 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ))) (A185505 (n + 1))

end

end A029986.P5139557191274352239

/-! ## A029986.P15214309188378907724

`sqrt(∩[A014192(n+1), n²])`
-/

namespace A029986.P15214309188378907724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A029986.P15214309188378907724

/-!
# A029987: Squares which are palindromes in base 4.

The programs for A029987, there is no canonical definition to state claims against.
-/

/-! ## A029987.P12922675379142186142

`A029986(n+1)²`
-/

namespace A029987.P12922675379142186142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029986 (n + 1) ^ 2

end

end A029987.P12922675379142186142

/-! ## A029987.P15600719363023196086

`record[A029986(A100727(n))²]`
-/

namespace A029987.P15600719363023196086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029986 (A100727 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029987.P15600719363023196086

/-! ## A029987.P13816408696780042330

`record[A029986(A133310(n))²]`
-/

namespace A029987.P13816408696780042330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029986 (A133310 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029987.P13816408696780042330

/-! ## A029987.P7363696479915198135

`record[A029986(A152271(n))²]`
-/

namespace A029987.P7363696479915198135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029986 (A152271 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029987.P7363696479915198135

/-! ## A029987.P15748937292792662444

`record[A029986(A158416(n))²]`
-/

namespace A029987.P15748937292792662444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029986 (A158416 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029987.P15748937292792662444

/-! ## A029987.P1473801711407652112

`record[A029986(A328396(n))²]`
-/

namespace A029987.P1473801711407652112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029986 (A328396 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029987.P1473801711407652112

/-! ## A029987.P14883497804065916953

`A029986(A000027(n+1))^2`
-/

namespace A029987.P14883497804065916953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029986 (A000027 (n + 1)).toNat ^ 2

end

end A029987.P14883497804065916953

/-! ## A029987.P5149226806575233827

`A029986(A253554(2*(n+1)))^2`
-/

namespace A029987.P5149226806575233827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029986 (A253554 (2 * (n + 1))).toNat ^ 2

end

end A029987.P5149226806575233827

/-! ## A029987.P2520834316171438260

`A029986(A002264(3*n+4))^2`
-/

namespace A029987.P2520834316171438260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029986 (A002264 (3 * n + 4)).toNat ^ 2

end

end A029987.P2520834316171438260

/-! ## A029987.P12837999596494315674

`A029986(n+1)^(A000007(n)+2)`
-/

namespace A029987.P12837999596494315674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029986 (n + 1) : ℚ) ^ (A000007 n + 2 : ℤ)

end

end A029987.P12837999596494315674

/-! ## A029987.P1884677464064627682

`(A029986(n+1)%A002604(n))^2`
-/

namespace A029987.P1884677464064627682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029986 (n + 1)) (A002604 n) ^ 2

end

end A029987.P1884677464064627682

/-! ## A029987.P721588029603902018

`A029986(n+1)^gcd(2, A001316(n))`
-/

namespace A029987.P721588029603902018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029986 (n + 1) ^ Int.gcd 2 (A001316 n)

end

end A029987.P721588029603902018

/-! ## A029987.P2311133205529532853

`A029986(n+1)^A000034(2*n+1)`
-/

namespace A029987.P2311133205529532853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029986 (n + 1) : ℚ) ^ (A000034 (2 * n + 1) : ℤ)

end

end A029987.P2311133205529532853

/-! ## A029987.P14827175006534644402

`A029986(n+1)^A020639(2*(n+1))`
-/

namespace A029987.P14827175006534644402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029986 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A029987.P14827175006534644402

/-! ## A029987.P14301599512629629273

`A029986(n+1)^A001511(4*n+2)`
-/

namespace A029987.P14301599512629629273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029986 (n + 1) : ℚ) ^ (A001511 (4 * n + 2) : ℤ)

end

end A029987.P14301599512629629273

/-! ## A029987.P15864578945896832629

`A029986(n+1)^A000032(C(2, n+2))`
-/

namespace A029987.P15864578945896832629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029986 (n + 1) : ℚ) ^ (A000032 (Nat.choose 2 (n + 2)) : ℤ)

end

end A029987.P15864578945896832629

/-! ## A029987.P3805710286871004499

`A029986(n+1)^A000747(C(2, n+2))`
-/

namespace A029987.P3805710286871004499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029986 (n + 1) : ℚ) ^ (A000747 (Nat.choose 2 (n + 2)) : ℤ)

end

end A029987.P3805710286871004499

/-! ## A029987.P13137203156057797788

`A029986(n+1)^A000032(floor(1/(n+1)))`
-/

namespace A029987.P13137203156057797788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029986 (n + 1) : ℚ) ^ (A000032 ⌊1 / (n + 1 : ℚ)⌋.toNat : ℤ)

end

end A029987.P13137203156057797788

/-! ## A029987.P2391887226296057742

`A029986(n+1)^A000005(2*gcd(n, n+1))`
-/

namespace A029987.P2391887226296057742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029986 (n + 1) : ℚ) ^ (A000005 (2 * Nat.gcd n (n + 1)) : ℤ)

end

end A029987.P2391887226296057742

/-!
# A029988: Numbers k such that k^2 is palindromic in base 5.

The programs for A029988, there is no canonical definition to state claims against.
-/

/-! ## A029988.P12998346025777436480

`sqrt(A029989(n+1))`
-/

namespace A029988.P12998346025777436480
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029989 (n + 1) : ℝ)

end

end A029988.P12998346025777436480

/-! ## A029988.P15648715785859150712

`floor(sqrt(A029989(1-(n-2*n))))`
-/

namespace A029988.P15648715785859150712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A029989 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat)

end

end A029988.P15648715785859150712

/-! ## A029988.P401007009209245688

`record[sqrt(A029989(ceil(C(or(1, n), n)/2)))]`
-/

namespace A029988.P401007009209245688
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029989 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029988.P401007009209245688

/-! ## A029988.P1420747101857546673

`A029989(n+1)^(A062157(n+1)²/2)`
-/

namespace A029988.P1420747101857546673
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029989 (n + 1) : ℝ) ^ ((A062157 (n + 1) ^ 2 : ℚ) / 2 : ℝ)

end

end A029988.P1420747101857546673

/-! ## A029988.P4961909402558610159

`A029989(n+1)^(A000034(A222404(n))/2)`
-/

namespace A029988.P4961909402558610159
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029989 (n + 1) : ℝ) ^ ((A000034 (A222404 n).toNat : ℚ) / 2 : ℝ)

end

end A029988.P4961909402558610159

/-!
# A029989: Squares which are palindromes in base 5.

The programs for A029989, there is no canonical definition to state claims against.
-/

/-! ## A029989.P12179755935847772618

`A029988(n+1)²`
-/

namespace A029989.P12179755935847772618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029988 (n + 1) ^ 2

end

end A029989.P12179755935847772618

/-! ## A029989.P16575674203640745881

`A029988(A000027(n+1))^2`
-/

namespace A029989.P16575674203640745881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029988 (A000027 (n + 1)).toNat ^ 2

end

end A029989.P16575674203640745881

/-! ## A029989.P6417280354319419225

`A029988(A296885(n+1))^2`
-/

namespace A029989.P6417280354319419225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029988 (A296885 (n + 1)).toNat ^ 2

end

end A029989.P6417280354319419225

/-! ## A029989.P16720731606475868370

`A029988(A008619(2*n))^2`
-/

namespace A029989.P16720731606475868370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029988 (A008619 (2 * n)).toNat ^ 2

end

end A029989.P16720731606475868370

/-! ## A029989.P5929193774023947567

`record[A029988(A003963(n+1))^2]`
-/

namespace A029989.P5929193774023947567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029988 (A003963 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029989.P5929193774023947567

/-!
# A029990: Numbers k such that k^2 is palindromic in base 6.

The programs for A029990, there is no canonical definition to state claims against.
-/

/-! ## A029990.P12666906712083321190

`sqrt(A029991(n+1))`
-/

namespace A029990.P12666906712083321190
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029991 (n + 1) : ℝ)

end

end A029990.P12666906712083321190

/-! ## A029990.P5636452248574078160

`A029991(n+1)^(A054977(n)/2)`
-/

namespace A029990.P5636452248574078160
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029991 (n + 1) : ℝ) ^ ((A054977 n : ℚ) / 2 : ℝ)

end

end A029990.P5636452248574078160

/-! ## A029990.P492666541934331882

`A029991(n+1)^(A011782(n)/A000079(n))`
-/

namespace A029990.P492666541934331882
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029991 (n + 1) : ℝ) ^ ((A011782 n : ℚ) / (A000079 n : ℚ) : ℝ)

end

end A029990.P492666541934331882

/-!
# A029991: Squares which are palindromes in base 6.

The programs for A029991, there is no canonical definition to state claims against.
-/

/-! ## A029991.P15445292868700370062

`A029990(n+1)²`
-/

namespace A029991.P15445292868700370062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029990 (n + 1) ^ 2

end

end A029991.P15445292868700370062

/-! ## A029991.P7474922214726542285

`A029990(n+1)^A000034(2*n+1)`
-/

namespace A029991.P7474922214726542285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029990 (n + 1) : ℚ) ^ (A000034 (2 * n + 1) : ℤ)

end

end A029991.P7474922214726542285

/-! ## A029991.P9079637315311432474

`A029990(n+1)^(2%A054270(n+1))`
-/

namespace A029991.P9079637315311432474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029990 (n + 1) : ℚ) ^ (Int.tmod 2 (A054270 (n + 1)) : ℤ)

end

end A029991.P9079637315311432474

/-! ## A029991.P10187282217382406954

`A029990(n+1)^(A304618(n+2)%8)`
-/

namespace A029991.P10187282217382406954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029990 (n + 1) : ℚ) ^ (Int.tmod (A304618 (n + 2)) 8 : ℤ)

end

end A029991.P10187282217382406954

/-! ## A029991.P18428410611862272516

`A029990(n+1)^A000005(A007918(n))`
-/

namespace A029991.P18428410611862272516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029990 (n + 1) : ℚ) ^ (A000005 (A007918 n).toNat : ℤ)

end

end A029991.P18428410611862272516

/-! ## A029991.P9634334880472841590

`A029990(n+1)^A020639(A000118(n))`
-/

namespace A029991.P9634334880472841590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029990 (n + 1) : ℚ) ^ (A020639 (A000118 n).toNat : ℤ)

end

end A029991.P9634334880472841590

/-! ## A029991.P7474161340641743582

`A029990(n+1)^A020639(A008574(n))`
-/

namespace A029991.P7474161340641743582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029990 (n + 1) : ℚ) ^ (A020639 (A008574 n).toNat : ℤ)

end

end A029991.P7474161340641743582

/-! ## A029991.P8767182410655014478

`A029990(n+1)^A020639(A278251(n))`
-/

namespace A029991.P8767182410655014478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029990 (n + 1) : ℚ) ^ (A020639 (A278251 n).toNat : ℤ)

end

end A029991.P8767182410655014478

/-! ## A029991.P10171262552686197875

`A029990(n+1)^A020639(A007958(n+1))`
-/

namespace A029991.P10171262552686197875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029990 (n + 1) : ℚ) ^ (A020639 (A007958 (n + 1)).toNat : ℤ)

end

end A029991.P10171262552686197875

/-! ## A029991.P8679425348112845035

`A029990(n+1)^A020639(A224907(n+1))`
-/

namespace A029991.P8679425348112845035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029990 (n + 1) : ℚ) ^ (A020639 (A224907 (n + 1)).toNat : ℤ)

end

end A029991.P8679425348112845035

/-!
# A029992: Numbers k such that k^2 is palindromic in base 7.

The programs for A029992, there is no canonical definition to state claims against.
-/

/-! ## A029992.P5330751532331423390

`sqrt(A029993(n+1))`
-/

namespace A029992.P5330751532331423390
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029993 (n + 1) : ℝ)

end

end A029992.P5330751532331423390

/-! ## A029992.P13266146167649490030

`floor(sqrt(A029993(Δ[n²]-n)))`
-/

namespace A029992.P13266146167649490030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A029993 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A029992.P13266146167649490030

/-! ## A029992.P16391323168572904470

`record[sqrt(A029993(ceil(C(or(1, n), n)/2)))]`
-/

namespace A029992.P16391323168572904470
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029993 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029992.P16391323168572904470

/-! ## A029992.P14789461722069969243

`A029993(n+1)^(A014963(4*n+2)/2)`
-/

namespace A029992.P14789461722069969243
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029993 (n + 1) : ℝ) ^ ((A014963 (4 * n + 2) : ℚ) / 2 : ℝ)

end

end A029992.P14789461722069969243

/-! ## A029992.P13633109914938356288

`A029993(n+1)^((2*n+1)/A016825(n))`
-/

namespace A029992.P13633109914938356288
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029993 (n + 1) : ℝ) ^ ((2 * n + 1 : ℚ) / (A016825 n : ℚ) : ℝ)

end

end A029992.P13633109914938356288

/-! ## A029992.P2484296653635672316

`(A029993(n+1)*A054977(n))^4^(1/2-1)`
-/

namespace A029992.P2484296653635672316
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029993 (n + 1) * A054977 n : ℝ) ^ ((4 : ℝ) ^ ((1 : ℚ) / 2 - 1 : ℝ))

end

end A029992.P2484296653635672316

/-!
# A029993: Squares which are palindromes in base 7.

The programs for A029993, there is no canonical definition to state claims against.
-/

/-! ## A029993.P1752965910297025584

`A029992(n+1)²`
-/

namespace A029993.P1752965910297025584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029992 (n + 1) ^ 2

end

end A029993.P1752965910297025584

/-! ## A029993.P3627651738936995516

`A029992(n-log2(1/2))^2`
-/

namespace A029993.P3627651738936995516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029992 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat ^ 2

end

end A029993.P3627651738936995516

/-! ## A029993.P16872923992886049144

`record[A029992(A065648(n))²]`
-/

namespace A029993.P16872923992886049144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029992 (A065648 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029993.P16872923992886049144

/-! ## A029993.P9077044112355491513

`record[A029992(A109785(n))²]`
-/

namespace A029993.P9077044112355491513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029992 (A109785 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029993.P9077044112355491513

/-! ## A029993.P16078714571145069822

`record[A029992(A152271(n))²]`
-/

namespace A029993.P16078714571145069822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029992 (A152271 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029993.P16078714571145069822

/-! ## A029993.P13412886569547990113

`record[A029992(A286558(n))²]`
-/

namespace A029993.P13412886569547990113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029992 (A286558 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029993.P13412886569547990113

/-! ## A029993.P5260580724485689668

`record[A029992(A324346(n))²]`
-/

namespace A029993.P5260580724485689668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029992 (A324346 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029993.P5260580724485689668

/-! ## A029993.P5029856874749260429

`record[A029992(A328399(n))²]`
-/

namespace A029993.P5029856874749260429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029992 (A328399 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029993.P5029856874749260429

/-! ## A029993.P14530000052616004551

`(A020985(n)*A029992(n-log2(1/2)))²`
-/

namespace A029993.P14530000052616004551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020985 n * A029992 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat) ^ 2

end

end A029993.P14530000052616004551

/-! ## A029993.P14213436806485015078

`(A029992(n-log2(1/2))*A057428(n))²`
-/

namespace A029993.P14213436806485015078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A029992 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat * A057428 n) ^ 2

end

end A029993.P14213436806485015078

/-! ## A029993.P6141523215201341372

`A029992(n-log2(1/2))*A029992(n+1)`
-/

namespace A029993.P6141523215201341372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029992 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat * A029992 (n + 1)

end

end A029993.P6141523215201341372

/-! ## A029993.P16874195422245265784

`(A007318(C(2, n))*A029992(n-log2(1/2)))²`
-/

namespace A029993.P16874195422245265784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007318 (Nat.choose 2 n) * A029992 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat) ^ 2

end

end A029993.P16874195422245265784

/-! ## A029993.P5299497053849109730

`record[A029992(A065648(n))]*A029992(n+1)`
-/

namespace A029993.P5299497053849109730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029992 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A029992 (n + 1)

end

end A029993.P5299497053849109730

/-! ## A029993.P14690536551078150069

`record[A029992(A109785(n))]*A029992(n+1)`
-/

namespace A029993.P14690536551078150069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029992 (A109785 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A029992 (n + 1)

end

end A029993.P14690536551078150069

/-! ## A029993.P10332886505075140149

`record[A029992(A152271(n))]*A029992(n+1)`
-/

namespace A029993.P10332886505075140149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029992 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A029992 (n + 1)

end

end A029993.P10332886505075140149

/-! ## A029993.P7004816982613451981

`record[A029992(A286558(n))]*A029992(n+1)`
-/

namespace A029993.P7004816982613451981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029992 (A286558 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A029992 (n + 1)

end

end A029993.P7004816982613451981

/-! ## A029993.P7142647348259756792

`record[A029992(A324346(n))]*A029992(n+1)`
-/

namespace A029993.P7142647348259756792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029992 (A324346 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A029992 (n + 1)

end

end A029993.P7142647348259756792

/-! ## A029993.P4780474055900634113

`record[A029992(A328399(n))]*A029992(n+1)`
-/

namespace A029993.P4780474055900634113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029992 (A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A029992 (n + 1)

end

end A029993.P4780474055900634113

/-!
# A029994: Numbers k such that k^2 is palindromic in base 9.

The programs for A029994, there is no canonical definition to state claims against.
-/

/-! ## A029994.P1207919162555335653

`sqrt(A029995(n+1))`
-/

namespace A029994.P1207919162555335653
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029995 (n + 1) : ℝ)

end

end A029994.P1207919162555335653

/-! ## A029994.P7542509981838783182

`record[sqrt(A029995(ceil(C(or(1, n), n)/2)))]`
-/

namespace A029994.P7542509981838783182
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029995 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029994.P7542509981838783182

/-! ## A029994.P495016666891162930

`A029995(A028242(2*n))^(1-1/2)`
-/

namespace A029994.P495016666891162930
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029995 (A028242 (2 * n)).toNat : ℝ) ^ (1 - (1 : ℚ) / 2 : ℝ)

end

end A029994.P495016666891162930

/-! ## A029994.P12956257362603899570

`A029995(n+1)^(A011782(n)/A000079(n))`
-/

namespace A029994.P12956257362603899570
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029995 (n + 1) : ℝ) ^ ((A011782 n : ℚ) / (A000079 n : ℚ) : ℝ)

end

end A029994.P12956257362603899570

/-!
# A029995: Squares which are palindromes in base 9.

The programs for A029995, there is no canonical definition to state claims against.
-/

/-! ## A029995.P11277538869603990504

`A029994(n+1)²`
-/

namespace A029995.P11277538869603990504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029994 (n + 1) ^ 2

end

end A029995.P11277538869603990504

/-! ## A029995.P359351420409762534

`A029994(1-(n-2*n))^2`
-/

namespace A029995.P359351420409762534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029994 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat ^ 2

end

end A029995.P359351420409762534

/-! ## A029995.P10712218550528882190

`record[A029994(A065648(n))²]`
-/

namespace A029995.P10712218550528882190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029994 (A065648 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029995.P10712218550528882190

/-! ## A029995.P1365565013028908226

`record[A029994(A109785(n))²]`
-/

namespace A029995.P1365565013028908226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029994 (A109785 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029995.P1365565013028908226

/-! ## A029995.P9362058575960229320

`record[A029994(A126759(n))²]`
-/

namespace A029995.P9362058575960229320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029994 (A126759 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029995.P9362058575960229320

/-! ## A029995.P8555394264007904579

`record[A029994(A128227(n))²]`
-/

namespace A029995.P8555394264007904579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029994 (A128227 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029995.P8555394264007904579

/-! ## A029995.P12195031062285478634

`record[A029994(A152271(n))²]`
-/

namespace A029995.P12195031062285478634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029994 (A152271 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029995.P12195031062285478634

/-! ## A029995.P16071324609898670760

`record[A029994(A291766(n))²]`
-/

namespace A029995.P16071324609898670760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029994 (A291766 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029995.P16071324609898670760

/-! ## A029995.P2269048605275987976

`record[A029994(A323889(n))²]`
-/

namespace A029995.P2269048605275987976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029994 (A323889 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029995.P2269048605275987976

/-! ## A029995.P4683624850489210779

`(A029994(n+1)%A001769(n))^2`
-/

namespace A029995.P4683624850489210779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029994 (n + 1)) (A001769 n) ^ 2

end

end A029995.P4683624850489210779

/-!
# A029996: Numbers k such that k^2 is palindromic in base 11.

The programs for A029996, there is no canonical definition to state claims against.
-/

/-! ## A029996.P225495957134574248

`sqrt(A029997(n+1))`
-/

namespace A029996.P225495957134574248
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029997 (n + 1) : ℝ)

end

end A029996.P225495957134574248

/-! ## A029996.P12252438133607186125

`floor(sqrt(A029997(-xor(n, -1))))`
-/

namespace A029996.P12252438133607186125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A029997 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A029996.P12252438133607186125

/-! ## A029996.P15791962255025048128

`floor(sqrt(A029997(Δ[n²]-n)))`
-/

namespace A029996.P15791962255025048128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A029997 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A029996.P15791962255025048128

/-! ## A029996.P15269161017284333811

`record[sqrt(A029997(ceil(C(or(1, n), n)/2)))]`
-/

namespace A029996.P15269161017284333811
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029997 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029996.P15269161017284333811

/-! ## A029996.P17446500630392064451

`ceil(sqrt(A029997(ceil((3*n-(n-2))/2))))`
-/

namespace A029996.P17446500630392064451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A029997 ⌈((3 * n : ℤ) - ((n : ℤ) - 2) : ℚ) / 2⌉.toNat : ℝ)⌉

end

end A029996.P17446500630392064451

/-! ## A029996.P2967203898677044126

`A029997(2*n+1-n)^(1-1/2)`
-/

namespace A029996.P2967203898677044126
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029997 (2 * n + 1 - n) : ℝ) ^ (1 - (1 : ℚ) / 2 : ℝ)

end

end A029996.P2967203898677044126

/-!
# A029997: Squares which are palindromes in base 11.

The programs for A029997, there is no canonical definition to state claims against.
-/

/-! ## A029997.P10536631255613274980

`A029996(n+1)²`
-/

namespace A029997.P10536631255613274980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029996 (n + 1) ^ 2

end

end A029997.P10536631255613274980

/-! ## A029997.P5855824976902682546

`record[A029996(A344180(n))²]`
-/

namespace A029997.P5855824976902682546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029996 (A344180 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029997.P5855824976902682546

/-! ## A029997.P10248594708118457819

`A029996(A000027(n+1))^2`
-/

namespace A029997.P10248594708118457819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029996 (A000027 (n + 1)).toNat ^ 2

end

end A029997.P10248594708118457819

/-! ## A029997.P277055795302110320

`A029996(A289437(3*(n+1)))^2`
-/

namespace A029997.P277055795302110320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029996 (A289437 (3 * (n + 1))).toNat ^ 2

end

end A029997.P277055795302110320

/-! ## A029997.P3153662730573755947

`A029996(A028242(2*n+3))^2`
-/

namespace A029997.P3153662730573755947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029996 (A028242 (2 * n + 3)).toNat ^ 2

end

end A029997.P3153662730573755947

/-! ## A029997.P712300669478540770

`A029996(n+1)^(A000007(n)+2)`
-/

namespace A029997.P712300669478540770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029996 (n + 1) : ℚ) ^ (A000007 n + 2 : ℤ)

end

end A029997.P712300669478540770

/-! ## A029997.P7475490205843266799

`A029996(n+1)^gcd(2, A236378(n))`
-/

namespace A029997.P7475490205843266799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029996 (n + 1) ^ Int.gcd 2 (A236378 n)

end

end A029997.P7475490205843266799

/-! ## A029997.P14253025717373577325

`A029996(n+1)^A020639(2*(n+1))`
-/

namespace A029997.P14253025717373577325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029996 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A029997.P14253025717373577325

/-! ## A029997.P16124539164925691100

`A029996(n+1)^A000032(C(2, n+2))`
-/

namespace A029997.P16124539164925691100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029996 (n + 1) : ℚ) ^ (A000032 (Nat.choose 2 (n + 2)) : ℤ)

end

end A029997.P16124539164925691100

/-! ## A029997.P684399668152781513

`A029996(n+1)^A000010(4-C(2, 2*n))`
-/

namespace A029997.P684399668152781513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029996 (n + 1) : ℚ) ^ (A000010 (4 - Nat.choose 2 (2 * n)) : ℤ)

end

end A029997.P684399668152781513

/-! ## A029997.P13279168686228761758

`A029996(n+1)^A006530(4-C(2, 2*n))`
-/

namespace A029997.P13279168686228761758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029996 (n + 1) : ℚ) ^ (A006530 (4 - Nat.choose 2 (2 * n)) : ℤ)

end

end A029997.P13279168686228761758

/-! ## A029997.P466666581769270086

`A029996(n+1)^A014963(A001316(n))`
-/

namespace A029997.P466666581769270086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029996 (n + 1) : ℚ) ^ (A014963 (A001316 n).toNat : ℤ)

end

end A029997.P466666581769270086

/-! ## A029997.P4544441045761704316

`A029996(n+1)^A001285(A059268(n))`
-/

namespace A029997.P4544441045761704316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029996 (n + 1) : ℚ) ^ (A001285 (A059268 n).toNat : ℤ)

end

end A029997.P4544441045761704316

/-! ## A029997.P11367047273881044657

`A029996(n+1)^A083952(A017329(n))`
-/

namespace A029997.P11367047273881044657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029996 (n + 1) : ℚ) ^ (A083952 (A017329 n).toNat : ℤ)

end

end A029997.P11367047273881044657

/-! ## A029997.P13701952030095723514

`A029996(A000027(n+1))*A029996(n+1)`
-/

namespace A029997.P13701952030095723514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029996 (A000027 (n + 1)).toNat * A029996 (n + 1)

end

end A029997.P13701952030095723514

/-! ## A029997.P12362472899987554299

`A029996(n+1)^A000040(A007318(C(3, n)))`
-/

namespace A029997.P12362472899987554299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029996 (n + 1) : ℚ) ^ (A000040 (A007318 (Nat.choose 3 n)).toNat : ℤ)

end

end A029997.P12362472899987554299

/-! ## A029997.P17271733197796374356

`A029996(n+1)^A001285(A130321(n))`
-/

namespace A029997.P17271733197796374356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029996 (n + 1) : ℚ) ^ (A001285 (A130321 n).toNat : ℤ)

end

end A029997.P17271733197796374356

/-!
# A029998: Numbers k such that k^2 is palindromic in base 13.

The programs for A029998, there is no canonical definition to state claims against.
-/

/-! ## A029998.P53129159495782686

`sqrt(A029999(n+1))`
-/

namespace A029998.P53129159495782686
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029999 (n + 1) : ℝ)

end

end A029998.P53129159495782686

/-! ## A029998.P14337799954225821375

`floor(sqrt(A029999(-xor(n, -1))))`
-/

namespace A029998.P14337799954225821375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A029999 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A029998.P14337799954225821375

/-! ## A029998.P8338178762159399121

`record[sqrt(A029999(ceil(C(or(1, n), n)/2)))]`
-/

namespace A029998.P8338178762159399121
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029999 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029998.P8338178762159399121

/-! ## A029998.P3810117664601570074

`sqrt(A029999(-xor(n, -1)))*A178334(n)`
-/

namespace A029998.P3810117664601570074
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029999 (-Int.xor (n : ℤ) (-1)).toNat : ℝ) * (A178334 n : ℝ)

end

end A029998.P3810117664601570074

/-! ## A029998.P10933785042411874405

`A029999(A028242(2*n))^(1-1/2)`
-/

namespace A029998.P10933785042411874405
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029999 (A028242 (2 * n)).toNat : ℝ) ^ (1 - (1 : ℚ) / 2 : ℝ)

end

end A029998.P10933785042411874405

/-! ## A029998.P11767830088138114972

`A029999(n+1)^(A000034(A222404(n))/2)`
-/

namespace A029998.P11767830088138114972
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029999 (n + 1) : ℝ) ^ ((A000034 (A222404 n).toNat : ℚ) / 2 : ℝ)

end

end A029998.P11767830088138114972

/-!
# A029999: Squares which are palindromes in base 13.

The programs for A029999, there is no canonical definition to state claims against.
-/

/-! ## A029999.P10043434960667223087

`A029998(n+1)²`
-/

namespace A029999.P10043434960667223087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029998 (n + 1) ^ 2

end

end A029999.P10043434960667223087

/-! ## A029999.P1227021272065326595

`record[A029998(A117910(n))²]`
-/

namespace A029999.P1227021272065326595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029998 (A117910 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029999.P1227021272065326595

/-! ## A029999.P2816376089233533305

`record[A029998(A133310(n))²]`
-/

namespace A029999.P2816376089233533305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029998 (A133310 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029999.P2816376089233533305

/-! ## A029999.P11583145975740667338

`record[A029998(A152271(n))²]`
-/

namespace A029999.P11583145975740667338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029998 (A152271 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029999.P11583145975740667338

/-! ## A029999.P637380031546189991

`record[A029998(A286626(n))²]`
-/

namespace A029999.P637380031546189991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029998 (A286626 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029999.P637380031546189991

/-! ## A029999.P13948855128897173823

`A029998(A000027(n+1))^2`
-/

namespace A029999.P13948855128897173823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029998 (A000027 (n + 1)).toNat ^ 2

end

end A029999.P13948855128897173823

/-! ## A029999.P15859683563939706281

`A029998(n+1)^(A000038(n)+2)`
-/

namespace A029999.P15859683563939706281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029998 (n + 1) : ℚ) ^ (A000038 n + 2 : ℤ)

end

end A029999.P15859683563939706281

/-! ## A029999.P15063874843980284904

`A029998(n+1)^A100063(3*n)`
-/

namespace A029999.P15063874843980284904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029998 (n + 1) : ℚ) ^ (A100063 (3 * n) : ℤ)

end

end A029999.P15063874843980284904

/-! ## A029999.P3566655666024966322

`A029998(n+1)^(2%A304612(n))`
-/

namespace A029999.P3566655666024966322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029998 (n + 1) : ℚ) ^ (Int.tmod 2 (A304612 n) : ℤ)

end

end A029999.P3566655666024966322

/-! ## A029999.P2629454643152077392

`A029998(n+1)^A020639(2*(n+1))`
-/

namespace A029999.P2629454643152077392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029998 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A029999.P2629454643152077392

/-! ## A029999.P16047331543983490585

`A029998(n+1)^A001511(4*n+2)`
-/

namespace A029999.P16047331543983490585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029998 (n + 1) : ℚ) ^ (A001511 (4 * n + 2) : ℤ)

end

end A029999.P16047331543983490585

/-! ## A029999.P15121096417028071970

`A029998(n+1)^(A007318(C(2, n))+1)`
-/

namespace A029999.P15121096417028071970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029998 (n + 1) : ℚ) ^ (A007318 (Nat.choose 2 n) + 1 : ℤ)

end

end A029999.P15121096417028071970

/-! ## A029999.P9137687977861094667

`A029998(n+1)^A000032(C(2, n+2))`
-/

namespace A029999.P9137687977861094667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029998 (n + 1) : ℚ) ^ (A000032 (Nat.choose 2 (n + 2)) : ℤ)

end

end A029999.P9137687977861094667

/-! ## A029999.P5663040122011870979

`A029998(n+1)^(A304618(n+2)%8)`
-/

namespace A029999.P5663040122011870979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029998 (n + 1) : ℚ) ^ (Int.tmod (A304618 (n + 2)) 8 : ℤ)

end

end A029999.P5663040122011870979

/-! ## A029999.P2522438442358727589

`A029998(n+1)^A000040(gcd(n, n+1))`
-/

namespace A029999.P2522438442358727589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029998 (n + 1) : ℚ) ^ (A000040 (Nat.gcd n (n + 1)) : ℤ)

end

end A029999.P2522438442358727589

/-! ## A029999.P4884706928114119772

`A029998(n+1)^A000040((-1)^(2*n))`
-/

namespace A029999.P4884706928114119772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029998 (n + 1) : ℚ) ^ (A000040 ((-1) ^ (2 * n)).toNat : ℤ)

end

end A029999.P4884706928114119772

/-! ## A029999.P7826857270213908398

`record[A029998(A117910(n))]*A029998(n+1)`
-/

namespace A029999.P7826857270213908398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029998 (A117910 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A029998 (n + 1)

end

end A029999.P7826857270213908398

/-! ## A029999.P1283964196343605291

`record[A029998(A133310(n))]*A029998(n+1)`
-/

namespace A029999.P1283964196343605291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029998 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A029998 (n + 1)

end

end A029999.P1283964196343605291

/-! ## A029999.P14790544327460154286

`record[A029998(A152271(n))]*A029998(n+1)`
-/

namespace A029999.P14790544327460154286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029998 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A029998 (n + 1)

end

end A029999.P14790544327460154286

/-! ## A029999.P10652720104669013771

`A029998(A000027(n+1))*A029998(n+1)`
-/

namespace A029999.P10652720104669013771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029998 (A000027 (n + 1)).toNat * A029998 (n + 1)

end

end A029999.P10652720104669013771

