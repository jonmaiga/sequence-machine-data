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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A106302: Period of the Fibonacci 3-step sequence A000073 mod prime(n).

The programs for A106302, there is no canonical definition to state claims against.
-/

/-! ## A106302.P16278583560112771722

`A046738(p?[comp[n²]])`
-/

namespace A106302.P16278583560112771722
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046738 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A106302.P16278583560112771722

/-! ## A106302.P15496289005724751812

`A046738(A000040(n+1))`
-/

namespace A106302.P15496289005724751812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046738 (A000040 (n + 1)).toNat

end

end A106302.P15496289005724751812

/-! ## A106302.P11599932078464424018

`A046738(A008578(n+2))`
-/

namespace A106302.P11599932078464424018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046738 (A008578 (n + 2)).toNat

end

end A106302.P11599932078464424018

/-! ## A106302.P17248785329432118411

`A046738(A182986(n+2))`
-/

namespace A106302.P17248785329432118411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046738 (A182986 (n + 2)).toNat

end

end A106302.P17248785329432118411

/-! ## A106302.P16707488059919168257

`A046738(eq[1, A003415(n)])`
-/

namespace A106302.P16707488059919168257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106302.P16707488059919168257

/-! ## A106302.P12709925197106498491

`A046738(record[A006530(n+2)])`
-/

namespace A106302.P12709925197106498491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046738 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A106302.P12709925197106498491

/-! ## A106302.P9044088953139534492

`A046738(record[A014963(n+2)])`
-/

namespace A106302.P9044088953139534492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046738 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A106302.P9044088953139534492

/-! ## A106302.P9087000288665791880

`A046738(record[A020639(n+2)])`
-/

namespace A106302.P9087000288665791880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046738 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A106302.P9087000288665791880

/-! ## A106302.P17710131026914892327

`A046738(A100484(n+1)/2)`
-/

namespace A106302.P17710131026914892327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046738 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A106302.P17710131026914892327

/-! ## A106302.P7367111728132922802

`A046738(A137751(n+1)+A137750(n+1))`
-/

namespace A106302.P7367111728132922802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046738 (A137751 (n + 1) + A137750 (n + 1)).toNat

end

end A106302.P7367111728132922802

/-! ## A106302.P12238889313217202806

`A046734(A100484(n+1))`
-/

namespace A106302.P12238889313217202806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046734 (A100484 (n + 1)).toNat

end

end A106302.P12238889313217202806

/-! ## A106302.P4521461452608874434

`A046734(A001747(n+2))`
-/

namespace A106302.P4521461452608874434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046734 (A001747 (n + 2)).toNat

end

end A106302.P4521461452608874434

/-! ## A106302.P12065134574459313673

`A046734(2*A000040(n+1))`
-/

namespace A106302.P12065134574459313673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046734 (2 * A000040 (n + 1)).toNat

end

end A106302.P12065134574459313673

/-!
# A106303: Period of the Fibonacci 5-step sequence A001591 mod n.

The programs for A106303, there is no canonical definition to state claims against.
-/

/-! ## A106303.P11003633863571211238

`A106297(lcm(2, n)+n%2+1)`
-/

namespace A106303.P11003633863571211238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106297 (Nat.lcm 2 n + n % 2 + 1)

end

end A106303.P11003633863571211238

/-! ## A106303.P36616006929751265

`A106297(gcd(2*(n+1), (n+1)²))`
-/

namespace A106303.P36616006929751265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106297 (Nat.gcd (2 * (n + 1)) ((n + 1) ^ 2))

end

end A106303.P36616006929751265

/-! ## A106303.P2750817735596642731

`A106297(A022998(n+1))`
-/

namespace A106303.P2750817735596642731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106297 (A022998 (n + 1)).toNat

end

end A106303.P2750817735596642731

/-! ## A106303.P3989245062037504321

`A106297(A257088(n+1))`
-/

namespace A106303.P3989245062037504321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106297 (A257088 (n + 1)).toNat

end

end A106303.P3989245062037504321

/-! ## A106303.P16515738152540073121

`A106297((n+1)*A000034(n))`
-/

namespace A106303.P16515738152540073121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106297 ((n + 1 : ℤ) * A000034 n).toNat

end

end A106303.P16515738152540073121

/-! ## A106303.P16408297512973321287

`A106297(2*(n+1))`
-/

namespace A106303.P16408297512973321287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106297 (2 * (n + 1))

end

end A106303.P16408297512973321287

/-!
# A106304: Period of the Fibonacci 5-step sequence A001591 mod prime(n).

The programs for A106304, there is no canonical definition to state claims against.
-/

/-! ## A106304.P16713858371748615530

`A106298(n+1)+C(5, A008458(n))`
-/

namespace A106304.P16713858371748615530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106298 (n + 1) + (Nat.choose 5 (A008458 n).toNat : ℤ)

end

end A106304.P16713858371748615530

/-! ## A106304.P1668301828141794353

`A318382(comp[∑[n]]-n)+A106298(n+1)`
-/

namespace A106304.P1668301828141794353
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318382 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) + A106298 (n + 1)

end

end A106304.P1668301828141794353

/-! ## A106304.P1264084600560094337

`A106298(n+1)*A106303(ceil(2/(n+1)))`
-/

namespace A106304.P1264084600560094337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106298 (n + 1) * A106303 ⌈2 / (n + 1 : ℚ)⌉.toNat

end

end A106304.P1264084600560094337

/-! ## A106304.P13254497507231128675

`A339579(11*n+12)!*A106298(n+1)`
-/

namespace A106304.P13254497507231128675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A339579 (11 * n + 12)).toNat : ℤ) * A106298 (n + 1)

end

end A106304.P13254497507231128675

/-! ## A106304.P6440086790687643977

`A106298(n+1)+5*A046810(3*(n+1))`
-/

namespace A106304.P6440086790687643977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106298 (n + 1) + 5 * A046810 (3 * (n + 1))

end

end A106304.P6440086790687643977

/-! ## A106304.P9556905161851913559

`A027642(A088732(n))*A106298(n+1)`
-/

namespace A106304.P9556905161851913559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (A088732 n).toNat * A106298 (n + 1)

end

end A106304.P9556905161851913559

/-! ## A106304.P13460717302711624647

`A004016(A151909(n))*A106298(n+1)`
-/

namespace A106304.P13460717302711624647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (A151909 n).toNat * A106298 (n + 1)

end

end A106304.P13460717302711624647

/-! ## A106304.P15535756025574062931

`A001769(A049283(2*n+1))*A106298(n+1)`
-/

namespace A106304.P15535756025574062931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001769 (A049283 (2 * n + 1)).toNat * A106298 (n + 1)

end

end A106304.P15535756025574062931

/-! ## A106304.P9275466211517525450

`A106303(A000040(n+1))`
-/

namespace A106304.P9275466211517525450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106303 (A000040 (n + 1)).toNat

end

end A106304.P9275466211517525450

/-!
# A106305: Divisors of 10^14 - 1.

The programs for A106305, there is no canonical definition to state claims against.
-/

/-! ## A106305.P14942238255214379879

`or(A027894(n+1), A339170(A229521(n+1)))`
-/

namespace A106305.P14942238255214379879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A027894 (n + 1)) (A339170 (A229521 (n + 1)).toNat)

end

end A106305.P14942238255214379879

/-!
# A106306: Primes that yield a simple orbit structure in 2-step recursions.

The programs for A106306, there is no canonical definition to state claims against.
-/

/-! ## A106306.P15250025621319393302

`eq[2, A015135(n+1)]+1`
-/

namespace A106306.P15250025621319393302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015135 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A106306.P15250025621319393302

/-! ## A106306.P8597019052041873081

`eq[2, A015135(A028310(n))]`
-/

namespace A106306.P8597019052041873081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015135 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A106306.P8597019052041873081

/-! ## A106306.P14694745248588637771

`A020725(eq[2, A015135(n+1)])`
-/

namespace A106306.P14694745248588637771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106306.P14694745248588637771

/-! ## A106306.P5489771008574289173

`A059843(eq[2, A015135(n+1)])`
-/

namespace A106306.P5489771008574289173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106306.P5489771008574289173

/-! ## A106306.P2892604725105981479

`A141310(eq[2, A015135(n+1)])`
-/

namespace A106306.P2892604725105981479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106306.P2892604725105981479

/-! ## A106306.P5617848003282133761

`eq[2, A015135(A123108(2*n))]`
-/

namespace A106306.P5617848003282133761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015135 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A106306.P5617848003282133761

/-! ## A106306.P8282722774707913880

`eq[2, A015135(A000007(n)+n)]`
-/

namespace A106306.P8282722774707913880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015135 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A106306.P8282722774707913880

/-!
# A106308: Primes that yield a simple orbit structure in 4-step recursions.

The programs for A106308, there is no canonical definition to state claims against.
-/

/-! ## A106308.P11388430691415729497

`eq[2, A106289(n+1)]+1`
-/

namespace A106308.P11388430691415729497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106289 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A106308.P11388430691415729497

/-! ## A106308.P16745259039575910619

`eq[2, A106289(A028310(n))]`
-/

namespace A106308.P16745259039575910619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106289 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A106308.P16745259039575910619

/-! ## A106308.P16568754877161143645

`A020725(eq[2, A106289(n+1)])`
-/

namespace A106308.P16568754877161143645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106308.P16568754877161143645

/-! ## A106308.P14124667757547978250

`A141310(eq[2, A106289(n+1)])`
-/

namespace A106308.P14124667757547978250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106308.P14124667757547978250

/-!
# A106313: Differences between the prime-counting function and Gauss's approximation for number of primes < 10^n.

The programs for A106313, there is no canonical definition to state claims against.
-/

/-! ## A106313.P7444377451615281490

`A190802(n+1)-A006880(n+1)`
-/

namespace A106313.P7444377451615281490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190802 (n + 1) - A006880 (n + 1)

end

end A106313.P7444377451615281490

/-! ## A106313.P15306518304923135279

`A057752(n+1)-1`
-/

namespace A106313.P15306518304923135279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057752 (n + 1) - 1

end

end A106313.P15306518304923135279

/-! ## A106313.P8281822598654759750

`record[A057752(A038568(n))-1]`
-/

namespace A106313.P8281822598654759750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057752 (A038568 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106313.P8281822598654759750

/-! ## A106313.P17879761500951811553

`record[A057752(A193739(n))-1]`
-/

namespace A106313.P17879761500951811553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057752 (A193739 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106313.P17879761500951811553

/-! ## A106313.P120896341400495125

`A260196(n+2)+A057752(n+1)`
-/

namespace A106313.P120896341400495125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A057752 (n + 1)

end

end A106313.P120896341400495125

/-!
# A106314: Triangle T(n,k) composed of the squares min(n,k)^2.

The programs for A106314, the canonical program `A106314.P15491378883024418281` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106314 has offset 1).

The definition of A106314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106314.P5372837372566306038

`A003983(n+1)²`
-/

namespace A106314.P5372837372566306038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) ^ 2

end

end A106314.P5372837372566306038

namespace A106314

/-- `A003983(n+1)²` -/
def P5372837372566306038.Spec : Prop :=
  ∀ n, P5372837372566306038.a n = A106314 (n + 1)

end A106314

/-! ## A106314.P9470300252903596804

`(A004197(n)+1)²`
-/

namespace A106314.P9470300252903596804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004197 n + 1) ^ 2

end

end A106314.P9470300252903596804

namespace A106314

/-- `(A004197(n)+1)²` -/
def P9470300252903596804.Spec : Prop :=
  ∀ n, P9470300252903596804.a n = A106314 (n + 1)

end A106314

/-! ## A106314.P9099399352962887974

`A168281(n+1)/2`
-/

namespace A106314.P9099399352962887974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168281 (n + 1) : ℚ) / 2

end

end A106314.P9099399352962887974

namespace A106314

/-- `A168281(n+1)/2` -/
def P9099399352962887974.Spec : Prop :=
  ∀ n, P9099399352962887974.a n = (A106314 (n + 1) : ℚ)

theorem P9099399352962887974.correct : P9099399352962887974.Spec := by
  intro n
  simp only [A106314, Nat.add_sub_cancel, A106314.P9099399352962887974.a, A106314.P15491378883024418281.a, A036561, A036561.P7490084913005378529.a, A168281, A168281.P1468629803331935945.a, A002260, A002260.P769748059679640451.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A106314

/-! ## A106314.P12859692179735415035

`log2(A143086(n)+1)²`
-/

namespace A106314.P12859692179735415035
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A143086 n + 1 : ℝ) ^ 2

end

end A106314.P12859692179735415035

namespace A106314

/-- `log2(A143086(n)+1)²` -/
def P12859692179735415035.Spec : Prop :=
  ∀ n, P12859692179735415035.a n = (A106314 (n + 1) : ℝ)

end A106314

/-! ## A106314.P10506953020561780216

`(log2(A144464(n))+1)²`
-/

namespace A106314.P10506953020561780216
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.logb 2 (A144464 n : ℝ) + 1) ^ 2

end

end A106314.P10506953020561780216

namespace A106314

/-- `(log2(A144464(n))+1)²` -/
def P10506953020561780216.Spec : Prop :=
  ∀ n, P10506953020561780216.a n = (A106314 (n + 1) : ℝ)

end A106314

/-! ## A106314.P15491378883024418281

`(val(A036561(n), 6)+1)²`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A106314

/-- `(val(A036561(n), 6)+1)²` -/
def P15491378883024418281.Spec : Prop :=
  ∀ n, (P15491378883024418281.a n : ℤ) = A106314 (n + 1)

theorem P15491378883024418281.correct : P15491378883024418281.Spec := by
  intro n
  simp only [A106314, Nat.add_sub_cancel]

end A106314

/-! ## A106314.P16193560214442972638

`ceil(A157454(n+1)/2)²`
-/

namespace A106314.P16193560214442972638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157454 (n + 1) : ℚ) / 2⌉ ^ 2

end

end A106314.P16193560214442972638

namespace A106314

/-- `ceil(A157454(n+1)/2)²` -/
def P16193560214442972638.Spec : Prop :=
  ∀ n, P16193560214442972638.a n = A106314 (n + 1)

end A106314

/-! ## A106314.P7424111536160331667

`(A051125(n+1)-(∑[char[∑[n]]]+1))²`
-/

namespace A106314.P7424111536160331667
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051125 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)) ^ 2

end

end A106314.P7424111536160331667

namespace A106314

/-- `(A051125(n+1)-(∑[char[∑[n]]]+1))²` -/
def P7424111536160331667.Spec : Prop :=
  ∀ n, P7424111536160331667.a n = A106314 (n + 1)

end A106314

/-! ## A106314.P5916327210400479997

`A008621(A115281(n))²`
-/

namespace A106314.P5916327210400479997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A115281 n).toNat ^ 2

end

end A106314.P5916327210400479997

namespace A106314

/-- `A008621(A115281(n))²` -/
def P5916327210400479997.Spec : Prop :=
  ∀ n, P5916327210400479997.a n = A106314 (n + 1)

end A106314

/-! ## A106314.P9473622028723249573

`A008619(A157458(n))²`
-/

namespace A106314.P9473622028723249573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A157458 n).toNat ^ 2

end

end A106314.P9473622028723249573

namespace A106314

/-- `A008619(A157458(n))²` -/
def P9473622028723249573.Spec : Prop :=
  ∀ n, P9473622028723249573.a n = A106314 (n + 1)

end A106314

/-! ## A106314.P16316703683251740630

`A000290(A004197(n)+1)`
-/

namespace A106314.P16316703683251740630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A004197 n + 1).toNat

end

end A106314.P16316703683251740630

namespace A106314

/-- `A000290(A004197(n)+1)` -/
def P16316703683251740630.Spec : Prop :=
  ∀ n, P16316703683251740630.a n = A106314 (n + 1)

end A106314

/-! ## A106314.P6072951473038966769

`A001614(A106255(n+1))`
-/

namespace A106314.P6072951473038966769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001614 (A106255 (n + 1)).toNat

end

end A106314.P6072951473038966769

namespace A106314

/-- `A001614(A106255(n+1))` -/
def P6072951473038966769.Spec : Prop :=
  ∀ n, P6072951473038966769.a n = A106314 (n + 1)

end A106314

/-! ## A106314.P3032465479531787661

`A006446(A204028(n+1))`
-/

namespace A106314.P3032465479531787661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006446 (A204028 (n + 1)).toNat

end

end A106314.P3032465479531787661

namespace A106314

/-- `A006446(A204028(n+1))` -/
def P3032465479531787661.Spec : Prop :=
  ∀ n, P3032465479531787661.a n = A106314 (n + 1)

end A106314

/-! ## A106314.P15751179631667146460

`A002620(A157454(n+1)+1)`
-/

namespace A106314.P15751179631667146460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A157454 (n + 1) + 1).toNat

end

end A106314.P15751179631667146460

namespace A106314

/-- `A002620(A157454(n+1)+1)` -/
def P15751179631667146460.Spec : Prop :=
  ∀ n, P15751179631667146460.a n = A106314 (n + 1)

end A106314

/-! ## A106314.P15272919820205499748

`A002620(2*A003983(n+1))`
-/

namespace A106314.P15272919820205499748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A003983 (n + 1)).toNat

end

end A106314.P15272919820205499748

namespace A106314

/-- `A002620(2*A003983(n+1))` -/
def P15272919820205499748.Spec : Prop :=
  ∀ n, P15272919820205499748.a n = A106314 (n + 1)

end A106314

/-! ## A106314.P3344220002003563830

`A124258(2*A106255(n+1))`
-/

namespace A106314.P3344220002003563830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124258 (2 * A106255 (n + 1)).toNat

end

end A106314.P3344220002003563830

namespace A106314

/-- `A124258(2*A106255(n+1))` -/
def P3344220002003563830.Spec : Prop :=
  ∀ n, P3344220002003563830.a n = A106314 (n + 1)

end A106314

/-! ## A106314.P8931592290298645629

`A000982(2*A003983(n+1))/2`
-/

namespace A106314.P8931592290298645629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000982 (2 * A003983 (n + 1)).toNat : ℚ) / 2

end

end A106314.P8931592290298645629

namespace A106314

/-- `A000982(2*A003983(n+1))/2` -/
def P8931592290298645629.Spec : Prop :=
  ∀ n, P8931592290298645629.a n = (A106314 (n + 1) : ℚ)

end A106314

/-! ## A106314.P11505597805557688184

`A203990(n+1)-A003991(n+1)`
-/

namespace A106314.P11505597805557688184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203990 (n + 1) - A003991 (n + 1)

end

end A106314.P11505597805557688184

namespace A106314

/-- `A203990(n+1)-A003991(n+1)` -/
def P11505597805557688184.Spec : Prop :=
  ∀ n, P11505597805557688184.a n = A106314 (n + 1)

theorem P11505597805557688184.correct : P11505597805557688184.Spec := by
  intro n
  simp only [A106314, Nat.add_sub_cancel, A106314.P11505597805557688184.a, A106314.P15491378883024418281.a, A003991, A003991.P14084851459366035567.a, A036561, A036561.P7490084913005378529.a, A203990, A203990.P14919765066385001405.a, A002260, A002260.P769748059679640451.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A106314

/-! ## A106314.P10632048507882574655

`A098359(n+1)%A203996(n+1)`
-/

namespace A106314.P10632048507882574655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098359 (n + 1)) (A203996 (n + 1))

end

end A106314.P10632048507882574655

namespace A106314

/-- `A098359(n+1)%A203996(n+1)` -/
def P10632048507882574655.Spec : Prop :=
  ∀ n, P10632048507882574655.a n = A106314 (n + 1)

end A106314

/-! ## A106314.P17422613539717380800

`A003983(n+1)^A020639(2*(n+2))`
-/

namespace A106314.P17422613539717380800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003983 (n + 1) : ℚ) ^ (A020639 (2 * (n + 2)) : ℤ)

end

end A106314.P17422613539717380800

namespace A106314

/-- `A003983(n+1)^A020639(2*(n+2))` -/
def P17422613539717380800.Spec : Prop :=
  ∀ n, P17422613539717380800.a n = (A106314 (n + 1) : ℚ)

end A106314

/-!
# A106315: Harmonic residue of n.

The programs for A106315, the canonical program `A106315.P16848816282834775010` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106315 has offset 1).

The definition of A106315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106315.P4004196697983808007

`A038040(n+1)-A000203(n+1)*A240471(n+1)`
-/

namespace A106315.P4004196697983808007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) - A000203 (n + 1) * A240471 (n + 1)

end

end A106315.P4004196697983808007

namespace A106315

/-- `A038040(n+1)-A000203(n+1)*A240471(n+1)` -/
def P4004196697983808007.Spec : Prop :=
  ∀ n, P4004196697983808007.a n = A106315 (n + 1)

end A106315

/-! ## A106315.P16848816282834775010

`∑{d}[n+1, 1-#+n]%∑{d}[n+1, #]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106315

/-- `∑{d}[n+1, 1-#+n]%∑{d}[n+1, #]` -/
def P16848816282834775010.Spec : Prop :=
  ∀ n, P16848816282834775010.a n = A106315 (n + 1)

theorem P16848816282834775010.correct : P16848816282834775010.Spec := by
  intro n
  simp only [A106315, Nat.add_sub_cancel]

end A106315

/-! ## A106315.P6417438308466386050

`((n+1)*∏{e}[n+1, #+1])%∑{d}[n+1, #]`
-/

namespace A106315.P6417438308466386050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) % (∑ d ∈ Nat.divisors (f2 n), d)

end

end A106315.P6417438308466386050

namespace A106315

/-- `((n+1)*∏{e}[n+1, #+1])%∑{d}[n+1, #]` -/
def P6417438308466386050.Spec : Prop :=
  ∀ n, (P6417438308466386050.a n : ℤ) = A106315 (n + 1)

end A106315

/-! ## A106315.P815250606159254663

`A038040(n+1)%A000203(n+1)`
-/

namespace A106315.P815250606159254663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038040 (n + 1)) (A000203 (n + 1))

end

end A106315.P815250606159254663

namespace A106315

/-- `A038040(n+1)%A000203(n+1)` -/
def P815250606159254663.Spec : Prop :=
  ∀ n, P815250606159254663.a n = A106315 (n + 1)

end A106315

/-! ## A106315.P16027176477760912905

`A094471(n+1)%A000203(n+1)`
-/

namespace A106315.P16027176477760912905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094471 (n + 1)) (A000203 (n + 1))

end

end A106315.P16027176477760912905

namespace A106315

/-- `A094471(n+1)%A000203(n+1)` -/
def P16027176477760912905.Spec : Prop :=
  ∀ n, P16027176477760912905.a n = A106315 (n + 1)

end A106315

/-! ## A106315.P4612121300674032430

`A152211(n+1)%A000203(n+1)`
-/

namespace A106315.P4612121300674032430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152211 (n + 1)) (A000203 (n + 1))

end

end A106315.P4612121300674032430

namespace A106315

/-- `A152211(n+1)%A000203(n+1)` -/
def P4612121300674032430.Spec : Prop :=
  ∀ n, P4612121300674032430.a n = A106315 (n + 1)

end A106315

/-! ## A106315.P642092549724502313

`((n+1)*A000005(n+1))%A000203(n+1)`
-/

namespace A106315.P642092549724502313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * A000005 (n + 1)) (A000203 (n + 1))

end

end A106315.P642092549724502313

namespace A106315

/-- `((n+1)*A000005(n+1))%A000203(n+1)` -/
def P642092549724502313.Spec : Prop :=
  ∀ n, P642092549724502313.a n = A106315 (n + 1)

end A106315

/-! ## A106315.P1849119815383405534

`((1-A049820(n+1)+n)*(n+1))%A000203(n+1)`
-/

namespace A106315.P1849119815383405534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((1 - A049820 (n + 1) + (n : ℤ)) * (n + 1 : ℤ)) (A000203 (n + 1))

end

end A106315.P1849119815383405534

namespace A106315

/-- `((1-A049820(n+1)+n)*(n+1))%A000203(n+1)` -/
def P1849119815383405534.Spec : Prop :=
  ∀ n, P1849119815383405534.a n = A106315 (n + 1)

end A106315

/-! ## A106315.P5531401040060325381

`(A168014(n+1)+n+1)%A000203(n+1)`
-/

namespace A106315.P5531401040060325381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168014 (n + 1) + (n + 1 : ℤ)) (A000203 (n + 1))

end

end A106315.P5531401040060325381

namespace A106315

/-- `(A168014(n+1)+n+1)%A000203(n+1)` -/
def P5531401040060325381.Spec : Prop :=
  ∀ n, P5531401040060325381.a n = A106315 (n + 1)

end A106315

/-! ## A106315.P17940430150859865516

`((n+1)*∑{d}[n+1, A000040(#+1)%2])%A000203(n+1)`
-/

namespace A106315.P17940430150859865516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), Int.tmod (A000040 (d + 1)) 2)) (A000203 (n + 1))

end

end A106315.P17940430150859865516

namespace A106315

/-- `((n+1)*∑{d}[n+1, A000040(#+1)%2])%A000203(n+1)` -/
def P17940430150859865516.Spec : Prop :=
  ∀ n, P17940430150859865516.a n = A106315 (n + 1)

end A106315

/-! ## A106315.P16441576688446043743

`A324051(A005940(n+2))`
-/

namespace A106315.P16441576688446043743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324051 (A005940 (n + 2)).toNat

end

end A106315.P16441576688446043743

namespace A106315

/-- `A324051(A005940(n+2))` -/
def P16441576688446043743.Spec : Prop :=
  ∀ n, P16441576688446043743.a n = A106315 (n + 1)

end A106315

/-! ## A106315.P15305736331615831122

`A324051(A163511(A054429(n+1)))`
-/

namespace A106315.P15305736331615831122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324051 (A163511 (A054429 (n + 1)).toNat).toNat

end

end A106315.P15305736331615831122

namespace A106315

/-- `A324051(A163511(A054429(n+1)))` -/
def P15305736331615831122.Spec : Prop :=
  ∀ n, P15305736331615831122.a n = A106315 (n + 1)

end A106315

/-! ## A106315.P3201945692734739236

`A324051(A324641(n+2)-A324640(n+2))`
-/

namespace A106315.P3201945692734739236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324051 (A324641 (n + 2) - A324640 (n + 2)).toNat

end

end A106315.P3201945692734739236

namespace A106315

/-- `A324051(A324641(n+2)-A324640(n+2))` -/
def P3201945692734739236.Spec : Prop :=
  ∀ n, P3201945692734739236.a n = A106315 (n + 1)

end A106315

/-!
# A106316: Remainder of the harmonic residue of n when divided by n.

The programs for A106316, there is no canonical definition to state claims against.
-/

/-! ## A106316.P8962982013069206740

`(∑{d}[n+1, n+1+#]%∑{d}[n+1, #])%(n+1)`
-/

namespace A106316.P8962982013069206740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (n + 1 + d)) % (∑ d ∈ Nat.divisors (f2 n), d) % (n + 1)

end

end A106316.P8962982013069206740

/-! ## A106316.P12940867852309065810

`A106315(n+1)%(n+1)`
-/

namespace A106316.P12940867852309065810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106315 (n + 1)) (n + 1 : ℤ)

end

end A106316.P12940867852309065810

/-! ## A106316.P12800950800138473887

`∑{d}[n+1, #]-A324047(n+1)`
-/

namespace A106316.P12800950800138473887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A324047 (n + 1)

end

end A106316.P12800950800138473887

/-! ## A106316.P13935560630223384875

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-A324045(n+1)`
-/

namespace A106316.P13935560630223384875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) - (A324045 (n + 1) : ℚ)

end

end A106316.P13935560630223384875

/-! ## A106316.P13612775017474426132

`Δ[A002088(n)]-A324045(n+1)`
-/

namespace A106316.P13612775017474426132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A324045 (n + 1)

end

end A106316.P13612775017474426132

/-! ## A106316.P15514074520907425191

`Δ[A005728(n)]-A324045(n+1)`
-/

namespace A106316.P15514074520907425191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A324045 (n + 1)

end

end A106316.P15514074520907425191

/-! ## A106316.P8686831768313562548

`Δ[A160664(n)]-A324047(n+1)`
-/

namespace A106316.P8686831768313562548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A324047 (n + 1)

end

end A106316.P8686831768313562548

/-! ## A106316.P18265079163905630502

`A000010(n+1)-A324045(n+1)`
-/

namespace A106316.P18265079163905630502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A324045 (n + 1)

end

end A106316.P18265079163905630502

/-! ## A106316.P7701413019901091030

`A000203(n+1)-A324047(n+1)`
-/

namespace A106316.P7701413019901091030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A324047 (n + 1)

end

end A106316.P7701413019901091030

/-! ## A106316.P18098604765994753200

`A097012(n+1)-A324047(n+1)`
-/

namespace A106316.P18098604765994753200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097012 (n + 1) - A324047 (n + 1)

end

end A106316.P18098604765994753200

/-!
# A106317: Numbers k such that the remainder of the harmonic residue of k when divided by k is k-1.

The programs for A106317, there is no canonical definition to state claims against.
-/

/-! ## A106317.P2733387144009458900

`eq[n, A106315(n+1)]+1`
-/

namespace A106317.P2733387144009458900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106315 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A106317.P2733387144009458900

/-! ## A106317.P7985266743881025471

`∪[Δ[5^n+n], A015919(n+1)]`
-/

namespace A106317.P7985266743881025471
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A106317.P7985266743881025471

/-! ## A106317.P407880110215303223

`∪[Δ[5^n+n], A324050(n+1)]`
-/

namespace A106317.P407880110215303223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A106317.P407880110215303223

/-! ## A106317.P280090388544403799

`∪[C(5*n²+2, 2), A000040(n+1)]`
-/

namespace A106317.P280090388544403799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (5 * n ^ 2 + 2) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106317.P280090388544403799

/-! ## A106317.P14555703371340063469

`lt[(3*n)%(2-A000203(n+1)), 1]+1`
-/

namespace A106317.P14555703371340063469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * n : ℤ) (2 - A000203 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A106317.P14555703371340063469

/-!
# A106318: Bhaskara twins: n such that 2*n^2 = X^3 and 2*n^3 = Y^2.

The programs for A106318, the canonical program `A106318.P4247534376116463278` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106318 has offset 1).

The definition of A106318 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106318.P4247534376116463278

`2*(n+1)^6`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106318

/-- `2*(n+1)^6` -/
def P4247534376116463278.Spec : Prop :=
  ∀ n, (P4247534376116463278.a n : ℤ) = A106318 (n + 1)

theorem P4247534376116463278.correct : P4247534376116463278.Spec := by
  intro n
  simp only [A106318, Nat.add_sub_cancel]

end A106318

/-! ## A106318.P6927868649973186441

`∑[lcm(2, Δ[n^6])]`
-/

namespace A106318.P6927868649973186441
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106318.P6927868649973186441

namespace A106318

/-- `∑[lcm(2, Δ[n^6])]` -/
def P6927868649973186441.Spec : Prop :=
  ∀ n, (P6927868649973186441.a n : ℤ) = A106318 (n + 1)

end A106318

/-! ## A106318.P1080796191161113613

`record[2*(1-n)^6]`
-/

namespace A106318.P1080796191161113613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 - (n : ℤ)) ^ 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106318.P1080796191161113613

namespace A106318

/-- `record[2*(1-n)^6]` -/
def P1080796191161113613.Spec : Prop :=
  ∀ n, P1080796191161113613.a n = A106318 (n + 1)

end A106318

/-! ## A106318.P3591035538130777843

`floor(2/acot((n+1)^6))`
-/

namespace A106318.P3591035538130777843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot ((n + 1) ^ 6 : ℝ)⌋

end

end A106318.P3591035538130777843

namespace A106318

/-- `floor(2/acot((n+1)^6))` -/
def P3591035538130777843.Spec : Prop :=
  ∀ n, P3591035538130777843.a n = A106318 (n + 1)

end A106318

/-! ## A106318.P10027184765915239244

`2/tan(acot((n+1)^6))`
-/

namespace A106318.P10027184765915239244
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 / Real.tan (SequenceMachineLib.acot ((n + 1) ^ 6 : ℝ))

end

end A106318.P10027184765915239244

namespace A106318

/-- `2/tan(acot((n+1)^6))` -/
def P10027184765915239244.Spec : Prop :=
  ∀ n, P10027184765915239244.a n = (A106318 (n + 1) : ℝ)

end A106318

/-! ## A106318.P17863311571257375746

`(n+1)^6/cot(atan(2))`
-/

namespace A106318.P17863311571257375746
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 6 : ℝ) / Real.cot (Real.arctan (2 : ℝ))

end

end A106318.P17863311571257375746

namespace A106318

/-- `(n+1)^6/cot(atan(2))` -/
def P17863311571257375746.Spec : Prop :=
  ∀ n, P17863311571257375746.a n = (A106318 (n + 1) : ℝ)

end A106318

/-! ## A106318.P10672690688029833495

`2/record[(n-1)²]^-3`
-/

namespace A106318.P10672690688029833495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (-3 : ℤ)

end

end A106318.P10672690688029833495

namespace A106318

/-- `2/record[(n-1)²]^-3` -/
def P10672690688029833495.Spec : Prop :=
  ∀ n, P10672690688029833495.a n = (A106318 (n + 1) : ℚ)

end A106318

/-! ## A106318.P15534456588302058897

`((n+1)^3/cos(atan(1)))²`
-/

namespace A106318.P15534456588302058897
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 3 : ℝ) / Real.cos (Real.arctan (1 : ℝ))) ^ 2

end

end A106318.P15534456588302058897

namespace A106318

/-- `((n+1)^3/cos(atan(1)))²` -/
def P15534456588302058897.Spec : Prop :=
  ∀ n, P15534456588302058897.a n = (A106318 (n + 1) : ℝ)

end A106318

/-! ## A106318.P3187100131875249679

`((n+1)^3/sin(atan(1)))²`
-/

namespace A106318.P3187100131875249679
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 3 : ℝ) / Real.sin (Real.arctan (1 : ℝ))) ^ 2

end

end A106318.P3187100131875249679

namespace A106318

/-- `((n+1)^3/sin(atan(1)))²` -/
def P3187100131875249679.Spec : Prop :=
  ∀ n, P3187100131875249679.a n = (A106318 (n + 1) : ℝ)

end A106318

/-! ## A106318.P2474284915438394248

`((n+1)^3/cos(acot(1)))²`
-/

namespace A106318.P2474284915438394248
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 3 : ℝ) / Real.cos (SequenceMachineLib.acot (1 : ℝ))) ^ 2

end

end A106318.P2474284915438394248

namespace A106318

/-- `((n+1)^3/cos(acot(1)))²` -/
def P2474284915438394248.Spec : Prop :=
  ∀ n, P2474284915438394248.a n = (A106318 (n + 1) : ℝ)

end A106318

/-! ## A106318.P3912289819837341549

`((n+1)^3/sin(acot(1)))²`
-/

namespace A106318.P3912289819837341549
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 3 : ℝ) / Real.sin (SequenceMachineLib.acot (1 : ℝ))) ^ 2

end

end A106318.P3912289819837341549

namespace A106318

/-- `((n+1)^3/sin(acot(1)))²` -/
def P3912289819837341549.Spec : Prop :=
  ∀ n, P3912289819837341549.a n = (A106318 (n + 1) : ℝ)

end A106318

/-! ## A106318.P1969024129064102284

`∑[a(n-1)+4]^3/4` with `a(0)=2`
-/

namespace A106318.P1969024129064102284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 3 : ℕ) : ℚ) / 4

end

end A106318.P1969024129064102284

namespace A106318

/-- `∑[a(n-1)+4]^3/4` -/
def P1969024129064102284.Spec : Prop :=
  ∀ n, P1969024129064102284.a n = (A106318 (n + 1) : ℚ)

end A106318

/-! ## A106318.P9248966179793511161

`2/(n+1)^(gcd(n, n+1)-7)`
-/

namespace A106318.P9248966179793511161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) ^ ((Nat.gcd n (n + 1) : ℤ) - 7 : ℤ)

end

end A106318.P9248966179793511161

namespace A106318

/-- `2/(n+1)^(gcd(n, n+1)-7)` -/
def P9248966179793511161.Spec : Prop :=
  ∀ n, P9248966179793511161.a n = (A106318 (n + 1) : ℚ)

theorem P9248966179793511161.correct : P9248966179793511161.Spec := by
  intro n
  simp only [A106318, Nat.add_sub_cancel, A106318.P9248966179793511161.a, A106318.P4247534376116463278.a, SequenceMachineLib.memo_apply]
  try simp

end A106318

/-! ## A106318.P6870122679236090430

`a(n-1)/(n/(n+1))^6` with `a(0)=2`
-/

namespace A106318.P6870122679236090430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) / ((n : ℚ) / (n + 1 : ℚ)) ^ 6

end

end A106318.P6870122679236090430

namespace A106318

/-- `a(n-1)/(n/(n+1))^6` -/
def P6870122679236090430.Spec : Prop :=
  ∀ n, P6870122679236090430.a n = (A106318 (n + 1) : ℚ)

end A106318

/-! ## A106318.P2379844741011619845

`((n+1)*∑[a(n-1)+4])²/2` with `a(0)=2`
-/

namespace A106318.P2379844741011619845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2 : ℕ) : ℚ) / 2

end

end A106318.P2379844741011619845

namespace A106318

/-- `((n+1)*∑[a(n-1)+4])²/2` -/
def P2379844741011619845.Spec : Prop :=
  ∀ n, P2379844741011619845.a n = (A106318 (n + 1) : ℚ)

end A106318

/-! ## A106318.P13572863671705826265

`lcm(n+1, 2*((n+1)*(n+1)²)²)`
-/

namespace A106318.P13572863671705826265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (2 * ((n + 1) * (n + 1) ^ 2) ^ 2)

end

end A106318.P13572863671705826265

namespace A106318

/-- `lcm(n+1, 2*((n+1)*(n+1)²)²)` -/
def P13572863671705826265.Spec : Prop :=
  ∀ n, (P13572863671705826265.a n : ℤ) = A106318 (n + 1)

end A106318

/-! ## A106318.P8541690935433987015

`floor((n+1)²²*∑[a(n-1)+4])` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A106318.P8541690935433987015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A106318.P8541690935433987015

namespace A106318

/-- `floor((n+1)²²*∑[a(n-1)+4])` -/
def P8541690935433987015.Spec : Prop :=
  ∀ n, (P8541690935433987015.a n : ℤ) = A106318 (n + 1)

end A106318

/-! ## A106318.P17978470102679620369

`∑[2*A022522(n)]`
-/

namespace A106318.P17978470102679620369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106318.P17978470102679620369

namespace A106318

/-- `∑[2*A022522(n)]` -/
def P17978470102679620369.Spec : Prop :=
  ∀ n, P17978470102679620369.a n = A106318 (n + 1)

end A106318

/-! ## A106318.P5565350919991218239

`A033431(n+1)²/2`
-/

namespace A106318.P5565350919991218239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033431 (n + 1) ^ 2 : ℚ) / 2

end

end A106318.P5565350919991218239

namespace A106318

/-- `A033431(n+1)²/2` -/
def P5565350919991218239.Spec : Prop :=
  ∀ n, P5565350919991218239.a n = (A106318 (n + 1) : ℚ)

theorem P5565350919991218239.correct : P5565350919991218239.Spec := by
  intro n
  simp only [A106318, Nat.add_sub_cancel, A106318.P5565350919991218239.a, A106318.P4247534376116463278.a, A033431, A033431.P14261726496554658204.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106318

/-! ## A106318.P2437160840141598553

`∑[2*Δ[A000578(n)²]]`
-/

namespace A106318.P2437160840141598553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106318.P2437160840141598553

namespace A106318

/-- `∑[2*Δ[A000578(n)²]]` -/
def P2437160840141598553.Spec : Prop :=
  ∀ n, P2437160840141598553.a n = A106318 (n + 1)

end A106318

/-!
# A106319: Values a of a Bhaskara pair (a,b), a<=b, sorted by value of b. A Bhaskara pair (a,b) is such that a^2 + b^2 = X^3 and a^3 + b^3 = Y^2.

The programs for A106319, there is no canonical definition to state claims against.
-/

/-! ## A106319.P748158038970654979

`A106320(n+1)/Δ[floor((n+1)*(3-sqrt(3)))]`
-/

namespace A106319.P748158038970654979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * (3 - Real.sqrt (3 : ℝ))⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106320 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A106319.P748158038970654979

/-! ## A106319.P1456944190507535306

`floor(A106320(n+1)/A177704(n+1))`
-/

namespace A106319.P1456944190507535306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A106320 (n + 1) : ℚ) / (A177704 (n + 1) : ℚ)⌋

end

end A106319.P1456944190507535306

/-! ## A106319.P14078411770406722802

`floor(A106320(n+1)/A006519(A002531(n)))`
-/

namespace A106319.P14078411770406722802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A106320 (n + 1) : ℚ) / (A006519 (A002531 n).toNat : ℚ)⌋

end

end A106319.P14078411770406722802

/-! ## A106319.P11013247100982197193

`A355264(A257965(n+1))`
-/

namespace A106319.P11013247100982197193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355264 (A257965 (n + 1)).toNat

end

end A106319.P11013247100982197193

/-!
# A106320: Values b of a Bhaskara pair (a,b), a<=b, sorted on values of b. A Bhaskara pair (a,b) is such that a^2 + b^2 = X^3 and a^3 + b^3 = Y^2.

The programs for A106320, there is no canonical definition to state claims against.
-/

/-! ## A106320.P13749232051079789468

`A106319(n+1)*A177704(n+1)`
-/

namespace A106320.P13749232051079789468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106319 (n + 1) * A177704 (n + 1)

end

end A106320.P13749232051079789468

/-! ## A106320.P8129259649843849500

`gcd(2, A002531(n))*A106319(n+1)`
-/

namespace A106320.P8129259649843849500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A002531 n) : ℤ) * A106319 (n + 1)

end

end A106320.P8129259649843849500

/-! ## A106320.P13164002953011038660

`gcd(n, A168050(n))*A106319(n+1)`
-/

namespace A106320.P13164002953011038660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A168050 n) : ℤ) * A106319 (n + 1)

end

end A106320.P13164002953011038660

/-! ## A106320.P11310136982446589336

`A006519(A002531(n))*A106319(n+1)`
-/

namespace A106320.P11310136982446589336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A002531 n).toNat * A106319 (n + 1)

end

end A106320.P11310136982446589336

/-! ## A106320.P2152516445291186704

`A106319(n+1)*A154402(A079496(n))`
-/

namespace A106320.P2152516445291186704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106319 (n + 1) * A154402 (A079496 n).toNat

end

end A106320.P2152516445291186704

/-!
# A106323: Smaller of number pair whose squares are reversals of each other, with no leading zeros allowed.

The programs for A106323, there is no canonical definition to state claims against.
-/

/-! ## A106323.P10975832828590612785

`sqrt(A156316(n+1))`
-/

namespace A106323.P10975832828590612785
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A156316 (n + 1) : ℝ)

end

end A106323.P10975832828590612785

/-! ## A106323.P15093225055533169758

`∑{d}[root(A156316(n+1), 2), A000010(#)]`
-/

namespace A106323.P15093225055533169758
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A156316 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000010 d

end

end A106323.P15093225055533169758

/-! ## A106323.P4018128656196314976

`root(A156316(n+1), 2)*A007318(∑[n])`
-/

namespace A106323.P4018128656196314976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A156316 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A106323.P4018128656196314976

/-! ## A106323.P6677774522625505148

`root(A156316(n+1), A020639(2*(n+1)))`
-/

namespace A106323.P6677774522625505148
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A156316 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A106323.P6677774522625505148

/-! ## A106323.P9648008598951679878

`root(A156316(n+1), 2)*A000041(C(n, 64))`
-/

namespace A106323.P9648008598951679878
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A156316 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A000041 (Nat.choose n 64) : ℝ)

end

end A106323.P9648008598951679878

/-!
# A106325: Smallest semiprime not less than n.

The programs for A106325, there is no canonical definition to state claims against.
-/

/-! ## A106325.P4643299599547626841

`A001358(∑[char[A179312(n+1)]])`
-/

namespace A106325.P4643299599547626841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A106325.P4643299599547626841

/-! ## A106325.P10581418777165851188

`A001358(∑[char[A179939(n+1)]])`
-/

namespace A106325.P10581418777165851188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179939 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A106325.P10581418777165851188

/-! ## A106325.P11049333590629792212

`A001358(∑[char[A001358(n+1)]]+1)`
-/

namespace A106325.P11049333590629792212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A106325.P11049333590629792212

/-! ## A106325.P12297716393185956622

`A176540(∑[char[A176540(n+2)]]+2)`
-/

namespace A106325.P12297716393185956622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A106325.P12297716393185956622

/-! ## A106325.P17712141907454407427

`A001358(A072000(round(sqrt(n²+1)))+1)`
-/

namespace A106325.P17712141907454407427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A072000 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + 1).toNat

end

end A106325.P17712141907454407427

/-! ## A106325.P11658974065422089999

`A186621(∑[char[A087112(n+1)]]+1)+1`
-/

namespace A106325.P11658974065422089999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087112 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A106325.P11658974065422089999

/-! ## A106325.P11445055044585796032

`A186621(∑[char[A186621(n+1)+1]]+1)+1`
-/

namespace A106325.P11445055044585796032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A106325.P11445055044585796032

/-!
# A106326: Smallest odd semiprime not less than n.

The programs for A106326, the canonical program `A106326.P13678399559667430451` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106326 has offset 1).

The definition of A106326 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106326.P13678399559667430451

`A046315(∑[char[A046315(n+1)]]+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A106326

/-- `A046315(∑[char[A046315(n+1)]]+1)` -/
def P13678399559667430451.Spec : Prop :=
  ∀ n, P13678399559667430451.a n = A106326 (n + 1)

theorem P13678399559667430451.correct : P13678399559667430451.Spec := by
  intro n
  simp only [A106326, Nat.add_sub_cancel]

end A106326

/-!
# A106327: Row sums of triangle in A106243 (or A106242).

The programs for A106327, there is no canonical definition to state claims against.
-/

/-! ## A106327.P10085965138624504717

`A059294(n)+Δ[A059294(n)/2]`
-/

namespace A106327.P10085965138624504717
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059294 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059294 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A106327.P10085965138624504717

/-! ## A106327.P12684898782833500539

`(A059294(n+1)+A059294(n))/2`
-/

namespace A106327.P12684898782833500539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059294 (n + 1) + A059294 n : ℚ) / 2

end

end A106327.P12684898782833500539

/-! ## A106327.P5638547560975262009

`A094331(A001586(n)+A000045(n))`
-/

namespace A106327.P5638547560975262009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094331 (A001586 n + A000045 n).toNat

end

end A106327.P5638547560975262009

/-!
# A106328: Numbers j such that 8*(j^2) + 9 = k^2 for some positive number k.

The programs for A106328, the canonical program `A106328.P17340888807387618505` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106328 has offset 1).

The definition of A106328 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106328.P17340888807387618505

`6*a(n-1)-a(n-2)` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106328

/-- `6*a(n-1)-a(n-2)` -/
def P17340888807387618505.Spec : Prop :=
  ∀ n, P17340888807387618505.a n = A106328 (n + 1)

theorem P17340888807387618505.correct : P17340888807387618505.Spec := by
  intro n
  simp only [A106328, Nat.add_sub_cancel]

end A106328

/-! ## A106328.P4151115086582010803

`3*A001109(n)`
-/

namespace A106328.P4151115086582010803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001109 n

end

end A106328.P4151115086582010803

namespace A106328

/-- `3*A001109(n)` -/
def P4151115086582010803.Spec : Prop :=
  ∀ n, P4151115086582010803.a n = A106328 (n + 1)

end A106328

/-! ## A106328.P9898497835875976205

`3/4*A005319(n)`
-/

namespace A106328.P9898497835875976205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A005319 n : ℚ)

end

end A106328.P9898497835875976205

namespace A106328

/-- `3/4*A005319(n)` -/
def P9898497835875976205.Spec : Prop :=
  ∀ n, P9898497835875976205.a n = (A106328 (n + 1) : ℚ)

end A106328

/-! ## A106328.P8945768366029090027

`ogf(3x/(1-6x+x^2))`
-/

namespace A106328.P8945768366029090027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -6, 1] n

end

end A106328.P8945768366029090027

namespace A106328

/-- `ogf(3x/(1-6x+x^2))` -/
def P8945768366029090027.Spec : Prop :=
  ∀ n, P8945768366029090027.a n = A106328 (n + 1)

end A106328

/-! ## A106328.P15650689868983713860

`A075848(n)/2`
-/

namespace A106328.P15650689868983713860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075848 n : ℚ) / 2

end

end A106328.P15650689868983713860

namespace A106328

/-- `A075848(n)/2` -/
def P15650689868983713860.Spec : Prop :=
  ∀ n, P15650689868983713860.a n = (A106328 (n + 1) : ℚ)

end A106328

/-! ## A106328.P10372598638767278158

`record[-A108931(n)]`
-/

namespace A106328.P10372598638767278158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A108931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106328.P10372598638767278158

namespace A106328

/-- `record[-A108931(n)]` -/
def P10372598638767278158.Spec : Prop :=
  ∀ n, P10372598638767278158.a n = A106328 (n + 1)

end A106328

/-! ## A106328.P9161399098346960744

`abs(A108931(2*n))`
-/

namespace A106328.P9161399098346960744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108931 (2 * n)|

end

end A106328.P9161399098346960744

namespace A106328

/-- `abs(A108931(2*n))` -/
def P9161399098346960744.Spec : Prop :=
  ∀ n, P9161399098346960744.a n = A106328 (n + 1)

end A106328

/-! ## A106328.P16711996758263746147

`A301318(3*n+1)`
-/

namespace A106328.P16711996758263746147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301318 (3 * n + 1)

end

end A106328.P16711996758263746147

namespace A106328

/-- `A301318(3*n+1)` -/
def P16711996758263746147.Spec : Prop :=
  ∀ n, P16711996758263746147.a n = A106328 (n + 1)

end A106328

/-! ## A106328.P9733100020222140865

`A276602(n+1)/3`
-/

namespace A106328.P9733100020222140865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276602 (n + 1) : ℚ) / 3

end

end A106328.P9733100020222140865

namespace A106328

/-- `A276602(n+1)/3` -/
def P9733100020222140865.Spec : Prop :=
  ∀ n, P9733100020222140865.a n = (A106328 (n + 1) : ℚ)

end A106328

/-! ## A106328.P2418611251020906230

`3/2*A001542(n)`
-/

namespace A106328.P2418611251020906230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A001542 n : ℚ)

end

end A106328.P2418611251020906230

namespace A106328

/-- `3/2*A001542(n)` -/
def P2418611251020906230.Spec : Prop :=
  ∀ n, P2418611251020906230.a n = (A106328 (n + 1) : ℚ)

end A106328

/-! ## A106328.P3474711916624543114

`3/8*A081554(n)`
-/

namespace A106328.P3474711916624543114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 8 * (A081554 n : ℚ)

end

end A106328.P3474711916624543114

namespace A106328

/-- `3/8*A081554(n)` -/
def P3474711916624543114.Spec : Prop :=
  ∀ n, P3474711916624543114.a n = (A106328 (n + 1) : ℚ)

end A106328

/-! ## A106328.P7238296320788664072

`3*floor(A182189(n)/2)`
-/

namespace A106328.P7238296320788664072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(A182189 n : ℚ) / 2⌋

end

end A106328.P7238296320788664072

namespace A106328

/-- `3*floor(A182189(n)/2)` -/
def P7238296320788664072.Spec : Prop :=
  ∀ n, P7238296320788664072.a n = A106328 (n + 1)

end A106328

/-! ## A106328.P465952210044097068

`3*A204512(2*(n+1))`
-/

namespace A106328.P465952210044097068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A204512 (2 * (n + 1))

end

end A106328.P465952210044097068

namespace A106328

/-- `3*A204512(2*(n+1))` -/
def P465952210044097068.Spec : Prop :=
  ∀ n, P465952210044097068.a n = A106328 (n + 1)

end A106328

/-! ## A106328.P17674053568335951862

`3*A000129(2*n)/2`
-/

namespace A106328.P17674053568335951862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A000129 (2 * n) : ℚ) / 2)

end

end A106328.P17674053568335951862

namespace A106328

/-- `3*A000129(2*n)/2` -/
def P17674053568335951862.Spec : Prop :=
  ∀ n, P17674053568335951862.a n = (A106328 (n + 1) : ℚ)

end A106328

/-! ## A106328.P13187571593232092985

`3/5*A276598(n+1)`
-/

namespace A106328.P13187571593232092985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 5 * (A276598 (n + 1) : ℚ)

end

end A106328.P13187571593232092985

namespace A106328

/-- `3/5*A276598(n+1)` -/
def P13187571593232092985.Spec : Prop :=
  ∀ n, P13187571593232092985.a n = (A106328 (n + 1) : ℚ)

end A106328

/-! ## A106328.P16235835003547994240

`3*A105635(A004273(n))`
-/

namespace A106328.P16235835003547994240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A105635 (A004273 n).toNat

end

end A106328.P16235835003547994240

namespace A106328

/-- `3*A105635(A004273(n))` -/
def P16235835003547994240.Spec : Prop :=
  ∀ n, P16235835003547994240.a n = A106328 (n + 1)

end A106328

/-! ## A106328.P4254137879274210383

`A001542(n)+A001109(n)`
-/

namespace A106328.P4254137879274210383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 n + A001109 n

end

end A106328.P4254137879274210383

namespace A106328

/-- `A001542(n)+A001109(n)` -/
def P4254137879274210383.Spec : Prop :=
  ∀ n, P4254137879274210383.a n = A106328 (n + 1)

end A106328

/-! ## A106328.P12197425494374615621

`A182435(n)+A053141(n)`
-/

namespace A106328.P12197425494374615621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182435 n + A053141 n

end

end A106328.P12197425494374615621

namespace A106328

/-- `A182435(n)+A053141(n)` -/
def P12197425494374615621.Spec : Prop :=
  ∀ n, P12197425494374615621.a n = A106328 (n + 1)

end A106328

/-! ## A106328.P1530217081569994152

`A005319(n)-A001109(n)`
-/

namespace A106328.P1530217081569994152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005319 n - A001109 n

end

end A106328.P1530217081569994152

namespace A106328

/-- `A005319(n)-A001109(n)` -/
def P1530217081569994152.Spec : Prop :=
  ∀ n, P1530217081569994152.a n = A106328 (n + 1)

end A106328

/-! ## A106328.P16428622678466128603

`A002315(n)-A038723(n)`
-/

namespace A106328.P16428622678466128603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n - A038723 n

end

end A106328.P16428622678466128603

namespace A106328

/-- `A002315(n)-A038723(n)` -/
def P16428622678466128603.Spec : Prop :=
  ∀ n, P16428622678466128603.a n = A106328 (n + 1)

end A106328

/-!
# A106329: Numbers k such that k^2 = 8*j^2 + 9.

The programs for A106329, the canonical program `A106329.P8528803051904196951` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106329 has offset 1).

The definition of A106329 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106329.P8528803051904196951

`6*a(n-1)-a(n-2)` with `a(0)=3, a(1)=9`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106329

/-- `6*a(n-1)-a(n-2)` -/
def P8528803051904196951.Spec : Prop :=
  ∀ n, P8528803051904196951.a n = A106329 (n + 1)

theorem P8528803051904196951.correct : P8528803051904196951.Spec := by
  intro n
  simp only [A106329, Nat.add_sub_cancel]

end A106329

/-! ## A106329.P15413048017404445509

`3/2*A003499(n)`
-/

namespace A106329.P15413048017404445509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A003499 n : ℚ)

end

end A106329.P15413048017404445509

namespace A106329

/-- `3/2*A003499(n)` -/
def P15413048017404445509.Spec : Prop :=
  ∀ n, P15413048017404445509.a n = (A106329 (n + 1) : ℚ)

end A106329

/-! ## A106329.P11347840290899120817

`ogf((3-9x)/(1-6x+x^2))`
-/

namespace A106329.P11347840290899120817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -9] [1, -6, 1] n

end

end A106329.P11347840290899120817

namespace A106329

/-- `ogf((3-9x)/(1-6x+x^2))` -/
def P11347840290899120817.Spec : Prop :=
  ∀ n, P11347840290899120817.a n = A106329 (n + 1)

end A106329

/-! ## A106329.P12826515494680390128

`record[a(n-2)-(a(n-1)+a(n-1))]` with `a(0)=3, a(1)=3`
-/

namespace A106329.P12826515494680390128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  f1 (n - 2) - (f1 (n - 1) + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106329.P12826515494680390128

namespace A106329

/-- `record[a(n-2)-(a(n-1)+a(n-1))]` -/
def P12826515494680390128.Spec : Prop :=
  ∀ n, P12826515494680390128.a n = A106329 (n + 1)

end A106329

/-! ## A106329.P16090524809894063001

`record[a(n-2)-a(n-1)-a(n-1)]` with `a(0)=3, a(1)=3`
-/

namespace A106329.P16090524809894063001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  f1 (n - 2) - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106329.P16090524809894063001

namespace A106329

/-- `record[a(n-2)-a(n-1)-a(n-1)]` -/
def P16090524809894063001.Spec : Prop :=
  ∀ n, P16090524809894063001.a n = A106329 (n + 1)

end A106329

/-! ## A106329.P18367506784846305532

`3*A001541(n)`
-/

namespace A106329.P18367506784846305532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001541 n

end

end A106329.P18367506784846305532

namespace A106329

/-- `3*A001541(n)` -/
def P18367506784846305532.Spec : Prop :=
  ∀ n, P18367506784846305532.a n = A106329 (n + 1)

end A106329

/-! ## A106329.P1909327282970951045

`Δ[3*A182435(n)]`
-/

namespace A106329.P1909327282970951045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A182435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106329.P1909327282970951045

namespace A106329

/-- `Δ[3*A182435(n)]` -/
def P1909327282970951045.Spec : Prop :=
  ∀ n, P1909327282970951045.a n = A106329 (n + 1)

end A106329

/-! ## A106329.P12313282034363191265

`record[3*A123335(n)]`
-/

namespace A106329.P12313282034363191265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A123335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106329.P12313282034363191265

namespace A106329

/-- `record[3*A123335(n)]` -/
def P12313282034363191265.Spec : Prop :=
  ∀ n, P12313282034363191265.a n = A106329 (n + 1)

end A106329

/-! ## A106329.P465827136732689930

`2*A072221(n)+1`
-/

namespace A106329.P465827136732689930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072221 n + 1

end

end A106329.P465827136732689930

namespace A106329

/-- `2*A072221(n)+1` -/
def P465827136732689930.Spec : Prop :=
  ∀ n, P465827136732689930.a n = A106329 (n + 1)

end A106329

/-! ## A106329.P18408013572415351086

`2*A270889(n)-3`
-/

namespace A106329.P18408013572415351086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A270889 n - 3

end

end A106329.P18408013572415351086

namespace A106329

/-- `2*A270889(n)-3` -/
def P18408013572415351086.Spec : Prop :=
  ∀ n, P18408013572415351086.a n = A106329 (n + 1)

end A106329

/-! ## A106329.P17516654637716862534

`3*A001333(2*n)`
-/

namespace A106329.P17516654637716862534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001333 (2 * n)

end

end A106329.P17516654637716862534

namespace A106329

/-- `3*A001333(2*n)` -/
def P17516654637716862534.Spec : Prop :=
  ∀ n, P17516654637716862534.a n = A106329 (n + 1)

end A106329

/-! ## A106329.P8818160106184751404

`3*A079496(2*n)`
-/

namespace A106329.P8818160106184751404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A079496 (2 * n)

end

end A106329.P8818160106184751404

namespace A106329

/-- `3*A079496(2*n)` -/
def P8818160106184751404.Spec : Prop :=
  ∀ n, P8818160106184751404.a n = A106329 (n + 1)

end A106329

/-! ## A106329.P13690740772070241898

`3*A123335(2*n)`
-/

namespace A106329.P13690740772070241898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A123335 (2 * n)

end

end A106329.P13690740772070241898

namespace A106329

/-- `3*A123335(2*n)` -/
def P13690740772070241898.Spec : Prop :=
  ∀ n, P13690740772070241898.a n = A106329 (n + 1)

end A106329

/-! ## A106329.P15846660909398046710

`3*A126354(Δ[n²])`
-/

namespace A106329.P15846660909398046710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A126354 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A106329.P15846660909398046710

namespace A106329

/-- `3*A126354(Δ[n²])` -/
def P15846660909398046710.Spec : Prop :=
  ∀ n, P15846660909398046710.a n = A106329 (n + 1)

end A106329

/-! ## A106329.P17995581615679068999

`3*(A082639(n+1)+1)`
-/

namespace A106329.P17995581615679068999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A082639 (n + 1) + 1)

end

end A106329.P17995581615679068999

namespace A106329

/-- `3*(A082639(n+1)+1)` -/
def P17995581615679068999.Spec : Prop :=
  ∀ n, P17995581615679068999.a n = A106329 (n + 1)

end A106329

/-! ## A106329.P5810112462815717112

`3*(A099938(n+1)-1)`
-/

namespace A106329.P5810112462815717112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A099938 (n + 1) - 1)

end

end A106329.P5810112462815717112

namespace A106329

/-- `3*(A099938(n+1)-1)` -/
def P5810112462815717112.Spec : Prop :=
  ∀ n, P5810112462815717112.a n = A106329 (n + 1)

end A106329

/-! ## A106329.P8657149535269896931

`3*A204514(2*(n+1))`
-/

namespace A106329.P8657149535269896931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A204514 (2 * (n + 1))

end

end A106329.P8657149535269896931

namespace A106329

/-- `3*A204514(2*(n+1))` -/
def P8657149535269896931.Spec : Prop :=
  ∀ n, P8657149535269896931.a n = A106329 (n + 1)

end A106329

/-! ## A106329.P14217441545482246021

`2*A033539(2*n+1)+1`
-/

namespace A106329.P14217441545482246021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033539 (2 * n + 1) + 1

end

end A106329.P14217441545482246021

namespace A106329

/-- `2*A033539(2*n+1)+1` -/
def P14217441545482246021.Spec : Prop :=
  ∀ n, P14217441545482246021.a n = A106329 (n + 1)

end A106329

/-! ## A106329.P7779021628734222199

`A003499(n)+A001541(n)`
-/

namespace A106329.P7779021628734222199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003499 n + A001541 n

end

end A106329.P7779021628734222199

namespace A106329

/-- `A003499(n)+A001541(n)` -/
def P7779021628734222199.Spec : Prop :=
  ∀ n, P7779021628734222199.a n = A106329 (n + 1)

end A106329

/-! ## A106329.P10687153491099151840

`A001541(n+1)-A081554(n)`
-/

namespace A106329.P10687153491099151840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 (n + 1) - A081554 n

end

end A106329.P10687153491099151840

namespace A106329

/-- `A001541(n+1)-A081554(n)` -/
def P10687153491099151840.Spec : Prop :=
  ∀ n, P10687153491099151840.a n = A106329 (n + 1)

end A106329

/-!
# A106330: Numbers k such that k^2 = 24*j^2 + 25.

The programs for A106330, the canonical program `A106330.P7175881464032306002` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106330 has offset 1).

The definition of A106330 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106330.P7175881464032306002

`2*A233231(n)+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A106330

/-- `2*A233231(n)+1` -/
def P7175881464032306002.Spec : Prop :=
  ∀ n, P7175881464032306002.a n = A106330 (n + 1)

theorem P7175881464032306002.correct : P7175881464032306002.Spec := by
  intro n
  simp only [A106330, Nat.add_sub_cancel]

end A106330

/-! ## A106330.P2671422795128842788

`or(2*A233231(n), char[A008612(n)])`
-/

namespace A106330.P2671422795128842788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A233231 n) ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A106330.P2671422795128842788

namespace A106330

/-- `or(2*A233231(n), char[A008612(n)])` -/
def P2671422795128842788.Spec : Prop :=
  ∀ n, P2671422795128842788.a n = A106330 (n + 1)

end A106330

/-! ## A106330.P714585110381035939

`or(2*A233231(n), (n-A052928(n))!)`
-/

namespace A106330.P714585110381035939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A233231 n) (Nat.factorial ((n : ℤ) - A052928 n).toNat : ℤ)

end

end A106330.P714585110381035939

namespace A106330

/-- `or(2*A233231(n), (n-A052928(n))!)` -/
def P714585110381035939.Spec : Prop :=
  ∀ n, P714585110381035939.a n = A106330 (n + 1)

end A106330

/-! ## A106330.P4589539647247470523

`or(2*A233231(n), A000108(n-A052928(n)))`
-/

namespace A106330.P4589539647247470523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A233231 n) (A000108 ((n : ℤ) - A052928 n).toNat)

end

end A106330.P4589539647247470523

namespace A106330

/-- `or(2*A233231(n), A000108(n-A052928(n)))` -/
def P4589539647247470523.Spec : Prop :=
  ∀ n, P4589539647247470523.a n = A106330 (n + 1)

end A106330

/-! ## A106330.P8415948335504499646

`or(2*A233231(n), A007318(∑[n]))`
-/

namespace A106330.P8415948335504499646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A233231 n) (A007318 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A106330.P8415948335504499646

namespace A106330

/-- `or(2*A233231(n), A007318(∑[n]))` -/
def P8415948335504499646.Spec : Prop :=
  ∀ n, P8415948335504499646.a n = A106330 (n + 1)

end A106330

/-!
# A106331: Numbers j such that 24*(j^2) + 25 = k^2.

The programs for A106331, the canonical program `A106331.P11358673231058897121` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106331 has offset 1).

The definition of A106331 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106331.P11358673231058897121

`10*a(n-3)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5, a(4)=12, a(5)=21`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106331

/-- `10*a(n-3)-a(n-6)` -/
def P11358673231058897121.Spec : Prop :=
  ∀ n, P11358673231058897121.a n = A106331 (n + 1)

theorem P11358673231058897121.correct : P11358673231058897121.Spec := by
  intro n
  simp only [A106331, Nat.add_sub_cancel]

end A106331

/-! ## A106331.P9520270326392015342

`∪[A077410(n), Δ[A080873(n)]]`
-/

namespace A106331.P9520270326392015342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077410 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080873 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106331.P9520270326392015342

namespace A106331

/-- `∪[A077410(n), Δ[A080873(n)]]` -/
def P9520270326392015342.Spec : Prop :=
  ∀ n, (P9520270326392015342.a n : ℤ) = A106331 (n + 1)

end A106331

/-! ## A106331.P14714505222729826754

`∪[A077410(n), Δ[A080874(n)]]`
-/

namespace A106331.P14714505222729826754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077410 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080874 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106331.P14714505222729826754

namespace A106331

/-- `∪[A077410(n), Δ[A080874(n)]]` -/
def P14714505222729826754.Spec : Prop :=
  ∀ n, (P14714505222729826754.a n : ℤ) = A106331 (n + 1)

end A106331

/-! ## A106331.P10629096950534241306

`(A004189(n)*A106330(2*n+1))%A001079(n)`
-/

namespace A106331.P10629096950534241306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004189 n * A106330 (2 * n + 1)) (A001079 n)

end

end A106331.P10629096950534241306

namespace A106331

/-- `(A004189(n)*A106330(2*n+1))%A001079(n)` -/
def P10629096950534241306.Spec : Prop :=
  ∀ n, P10629096950534241306.a n = A106331 (n + 1)

end A106331

/-! ## A106331.P11479464536608883429

`record[A056926(A144065(n))]`
-/

namespace A106331.P11479464536608883429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A144065 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106331.P11479464536608883429

namespace A106331

/-- `record[A056926(A144065(n))]` -/
def P11479464536608883429.Spec : Prop :=
  ∀ n, P11479464536608883429.a n = A106331 (n + 1)

end A106331

/-!
# A106336: Number of ways of writing n as the sum of n+1 triangular numbers, divided by n+1.

The programs for A106336, there is no canonical definition to state claims against.
-/

/-! ## A106336.P14500525795047567708

`A286180(A056220(n+1))/(n+1)`
-/

namespace A106336.P14500525795047567708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286180 (A056220 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A106336.P14500525795047567708

/-! ## A106336.P10405417139439100710

`A286180(A001844(n)+2*n)/(n+1)`
-/

namespace A106336.P10405417139439100710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286180 (A001844 n + (2 * n : ℤ)).toNat : ℚ) / (n + 1 : ℚ)

end

end A106336.P10405417139439100710

/-! ## A106336.P14256161360090926615

`A286180(A001844(n)+n+n)/(n+1)`
-/

namespace A106336.P14256161360090926615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286180 (A001844 n + (n : ℤ) + (n : ℤ)).toNat : ℚ) / (n + 1 : ℚ)

end

end A106336.P14256161360090926615

/-! ## A106336.P11001539305892480850

`A286180(A000217(Δ[n²])+n)/(n+1)`
-/

namespace A106336.P11001539305892480850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286180 (A000217 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n : ℤ)).toNat : ℚ) / (n + 1 : ℚ)

end

end A106336.P11001539305892480850

/-! ## A106336.P14947540867484676529

`(n+1)^A008683(A063535(n))*A286180(A056220(n+1))`
-/

namespace A106336.P14947540867484676529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A063535 n).toNat : ℤ) * (A286180 (A056220 (n + 1)).toNat : ℚ)

end

end A106336.P14947540867484676529

/-!
# A106337: Number of ways of writing n as the sum of n triangular numbers.

The programs for A106337, there is no canonical definition to state claims against.
-/

/-! ## A106337.P1286922408072240617

`A286180(∑[4*n])`
-/

namespace A106337.P1286922408072240617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A106337.P1286922408072240617

/-! ## A106337.P17223126892895081109

`gcd(n, n+1)*A286180(A046092(n))`
-/

namespace A106337.P17223126892895081109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A286180 (A046092 n).toNat

end

end A106337.P17223126892895081109

/-! ## A106337.P10084022357804768944

`A286180((n+1)*2*n)%A281482(n)`
-/

namespace A106337.P10084022357804768944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286180 ((n + 1) * (2 * n))) (A281482 n)

end

end A106337.P10084022357804768944

/-! ## A106337.P17003352771977548282

`lcm(A033999(n), A286180((n+1)*2*n))`
-/

namespace A106337.P17003352771977548282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A286180 ((n + 1) * (2 * n)))

end

end A106337.P17003352771977548282

/-! ## A106337.P15078188858439895264

`A286180(A046092(n))%A065100(n)`
-/

namespace A106337.P15078188858439895264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286180 (A046092 n).toNat) (A065100 n)

end

end A106337.P15078188858439895264

/-!
# A106339: Absolute row sums of triangle A106338.

The programs for A106339, there is no canonical definition to state claims against.
-/

/-! ## A106339.P13257070120643793338

`A006093(∑[A305533(n)])`
-/

namespace A106339.P13257070120643793338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A106339.P13257070120643793338

/-! ## A106339.P13113037551225067003

`∑[∏[A117137(A000932(n))]]`
-/

namespace A106339.P13113037551225067003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117137 (A000932 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106339.P13113037551225067003

/-!
# A106341: Column 1 of triangle A106340.

The programs for A106341, there is no canonical definition to state claims against.
-/

/-! ## A106341.P6345867234906507695

`A106340(∑[n+1]+1)`
-/

namespace A106341.P6345867234906507695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106340 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A106341.P6345867234906507695

/-!
# A106343: Column 0 of triangle A106342, which is the matrix inverse of the triangle A008278 of Stirling numbers of 2nd kind.

The programs for A106343, there is no canonical definition to state claims against.
-/

/-! ## A106343.P12446141074851733861

`A106342(∑[n])`
-/

namespace A106343.P12446141074851733861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106342 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A106343.P12446141074851733861

/-! ## A106343.P1475569119100872431

`A106342(A000217(n))*A271838(n)`
-/

namespace A106343.P1475569119100872431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106342 (A000217 n).toNat * A271838 n

end

end A106343.P1475569119100872431

/-! ## A106343.P10627752894411377764

`A106342(A000217(n))*A271954(n)`
-/

namespace A106343.P10627752894411377764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106342 (A000217 n).toNat * A271954 n

end

end A106343.P10627752894411377764

/-! ## A106343.P10329976485108498531

`or(A000007(n), A106342(A000217(n)))`
-/

namespace A106343.P10329976485108498531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A106342 (A000217 n).toNat)

end

end A106343.P10329976485108498531

/-! ## A106343.P10434436388292659282

`A106342(A000217(n))%A000396(n+1)`
-/

namespace A106343.P10434436388292659282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106342 (A000217 n).toNat) (A000396 (n + 1))

end

end A106343.P10434436388292659282

/-!
# A106344: Triangle read by rows: T(n,k) = binomial(k,n-k) mod 2.

The programs for A106344, the canonical program `A106344.P1019925000359093241` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106344 has offset 0).

The definition of A106344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106344.P1019925000359093241

`A026729(n)%2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A106344

/-- `A026729(n)%2` -/
def P1019925000359093241.Spec : Prop :=
  ∀ n, P1019925000359093241.a n = A106344 n

theorem P1019925000359093241.correct : P1019925000359093241.Spec := by
  intro n
  simp only [A106344]

end A106344

/-! ## A106344.P7894130928869329686

`A062110(n)%2`
-/

namespace A106344.P7894130928869329686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062110 n) 2

end

end A106344.P7894130928869329686

namespace A106344

/-- `A062110(n)%2` -/
def P7894130928869329686.Spec : Prop :=
  ∀ n, P7894130928869329686.a n = A106344 n

end A106344

/-! ## A106344.P11704640630107332603

`A099093(n)%2`
-/

namespace A106344.P11704640630107332603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099093 n) 2

end

end A106344.P11704640630107332603

namespace A106344

/-- `A099093(n)%2` -/
def P11704640630107332603.Spec : Prop :=
  ∀ n, P11704640630107332603.a n = A106344 n

end A106344

/-! ## A106344.P16767795136836074652

`A099097(n)%2`
-/

namespace A106344.P16767795136836074652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099097 n) 2

end

end A106344.P16767795136836074652

namespace A106344

/-- `A099097(n)%2` -/
def P16767795136836074652.Spec : Prop :=
  ∀ n, P16767795136836074652.a n = A106344 n

end A106344

/-! ## A106344.P5812855310809081872

`A106195(n)%2`
-/

namespace A106344.P5812855310809081872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106195 n) 2

end

end A106344.P5812855310809081872

namespace A106344

/-- `A106195(n)%2` -/
def P5812855310809081872.Spec : Prop :=
  ∀ n, P5812855310809081872.a n = A106344 n

end A106344

/-! ## A106344.P10750184179723014610

`A112883(n)%2`
-/

namespace A106344.P10750184179723014610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112883 n) 2

end

end A106344.P10750184179723014610

namespace A106344

/-- `A112883(n)%2` -/
def P10750184179723014610.Spec : Prop :=
  ∀ n, P10750184179723014610.a n = A106344 n

end A106344

/-! ## A106344.P15307649481557887847

`A113214(n)%2`
-/

namespace A106344.P15307649481557887847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113214 n) 2

end

end A106344.P15307649481557887847

namespace A106344

/-- `A113214(n)%2` -/
def P15307649481557887847.Spec : Prop :=
  ∀ n, P15307649481557887847.a n = A106344 n

end A106344

/-! ## A106344.P7101488324614563629

`A114164(n)%2`
-/

namespace A106344.P7101488324614563629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114164 n) 2

end

end A106344.P7101488324614563629

namespace A106344

/-- `A114164(n)%2` -/
def P7101488324614563629.Spec : Prop :=
  ∀ n, P7101488324614563629.a n = A106344 n

end A106344

/-! ## A106344.P13700136985081041738

`A121574(n)%2`
-/

namespace A106344.P13700136985081041738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121574 n) 2

end

end A106344.P13700136985081041738

namespace A106344

/-- `A121574(n)%2` -/
def P13700136985081041738.Spec : Prop :=
  ∀ n, P13700136985081041738.a n = A106344 n

end A106344

/-! ## A106344.P1120968576006594682

`A194582(n)%2`
-/

namespace A106344.P1120968576006594682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194582 n) 2

end

end A106344.P1120968576006594682

namespace A106344

/-- `A194582(n)%2` -/
def P1120968576006594682.Spec : Prop :=
  ∀ n, P1120968576006594682.a n = A106344 n

end A106344

/-! ## A106344.P14310740020417976750

`A207327(n)%2`
-/

namespace A106344.P14310740020417976750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207327 n) 2

end

end A106344.P14310740020417976750

namespace A106344

/-- `A207327(n)%2` -/
def P14310740020417976750.Spec : Prop :=
  ∀ n, P14310740020417976750.a n = A106344 n

end A106344

/-! ## A106344.P1982743805144944643

`A272099(n)%2`
-/

namespace A106344.P1982743805144944643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272099 n) 2

end

end A106344.P1982743805144944643

namespace A106344

/-- `A272099(n)%2` -/
def P1982743805144944643.Spec : Prop :=
  ∀ n, P1982743805144944643.a n = A106344 n

end A106344

/-! ## A106344.P5189286777537038521

`A340995(n)%2`
-/

namespace A106344.P5189286777537038521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340995 n) 2

end

end A106344.P5189286777537038521

namespace A106344

/-- `A340995(n)%2` -/
def P5189286777537038521.Spec : Prop :=
  ∀ n, P5189286777537038521.a n = A106344 n

end A106344

/-! ## A106344.P15792592851836483677

`and(1, A109466(n))`
-/

namespace A106344.P15792592851836483677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A109466 n)

end

end A106344.P15792592851836483677

namespace A106344

/-- `and(1, A109466(n))` -/
def P15792592851836483677.Spec : Prop :=
  ∀ n, P15792592851836483677.a n = A106344 n

end A106344

/-! ## A106344.P12039149393034779500

`and(1, A110517(n))`
-/

namespace A106344.P12039149393034779500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A110517 n)

end

end A106344.P12039149393034779500

namespace A106344

/-- `and(1, A110517(n))` -/
def P12039149393034779500.Spec : Prop :=
  ∀ n, P12039149393034779500.a n = A106344 n

end A106344

/-! ## A106344.P2211209732376412416

`and(1, A117362(n))`
-/

namespace A106344.P2211209732376412416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A117362 n)

end

end A106344.P2211209732376412416

namespace A106344

/-- `and(1, A117362(n))` -/
def P2211209732376412416.Spec : Prop :=
  ∀ n, P2211209732376412416.a n = A106344 n

end A106344

/-! ## A106344.P4905332678573138757

`and(1, A117377(n))`
-/

namespace A106344.P4905332678573138757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A117377 n)

end

end A106344.P4905332678573138757

namespace A106344

/-- `and(1, A117377(n))` -/
def P4905332678573138757.Spec : Prop :=
  ∀ n, P4905332678573138757.a n = A106344 n

end A106344

/-! ## A106344.P9447003243056390903

`and(1, A123876(n))`
-/

namespace A106344.P9447003243056390903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A123876 n)

end

end A106344.P9447003243056390903

namespace A106344

/-- `and(1, A123876(n))` -/
def P9447003243056390903.Spec : Prop :=
  ∀ n, P9447003243056390903.a n = A106344 n

end A106344

/-! ## A106344.P18144769878762600097

`C(2, A099026(n)+2)`
-/

namespace A106344.P18144769878762600097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A099026 n + 2).toNat

end

end A106344.P18144769878762600097

namespace A106344

/-- `C(2, A099026(n)+2)` -/
def P18144769878762600097.Spec : Prop :=
  ∀ n, (P18144769878762600097.a n : ℤ) = A106344 n

end A106344

/-! ## A106344.P966317723451557571

`A000007(A099026(n))`
-/

namespace A106344.P966317723451557571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A099026 n).toNat

end

end A106344.P966317723451557571

namespace A106344

/-- `A000007(A099026(n))` -/
def P966317723451557571.Spec : Prop :=
  ∀ n, P966317723451557571.a n = A106344 n

end A106344

/-!
# A106345: Diagonal sums of number triangle A106344.

The programs for A106345, there is no canonical definition to state claims against.
-/

/-! ## A106345.P5973396729844530092

`A127830(n)-a(n-1)` with `a(0)=1`
-/

namespace A106345.P5973396729844530092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A127830 n - a (n - 1)

end

end A106345.P5973396729844530092

/-! ## A106345.P8647925483247211030

`A004277(A127830(n))-A127830(2*n+1)`
-/

namespace A106345.P8647925483247211030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A127830 n).toNat - A127830 (2 * n + 1)

end

end A106345.P8647925483247211030

/-! ## A106345.P7051717387163330980

`A127830(2*n+3)-A127830(n+1)`
-/

namespace A106345.P7051717387163330980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127830 (2 * n + 3) - A127830 (n + 1)

end

end A106345.P7051717387163330980

/-! ## A106345.P17736763702746513404

`A298567(n)%A134660(A016116(n))`
-/

namespace A106345.P17736763702746513404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298567 n) (A134660 (A016116 n).toNat)

end

end A106345.P17736763702746513404

/-! ## A106345.P15811235472872432613

`A010873(A298567(n))`
-/

namespace A106345.P15811235472872432613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A298567 n).toNat

end

end A106345.P15811235472872432613

/-!
# A106346: Inverse of number triangle A106344.

The programs for A106346, there is no canonical definition to state claims against.
-/

/-! ## A106346.P8110746856532529178

`A166698(A247023(n))+A000007(A238592(n+3))`
-/

namespace A106346.P8110746856532529178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (A247023 n).toNat + A000007 (A238592 (n + 3)).toNat

end

end A106346.P8110746856532529178

/-! ## A106346.P15497281451163307868

`A166698(51*A247023(n))`
-/

namespace A106346.P15497281451163307868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (51 * A247023 n).toNat

end

end A106346.P15497281451163307868

/-! ## A106346.P5719177876896897539

`A008683(∏{p}[A247023(n), A074148(#)])`
-/

namespace A106346.P5719177876896897539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A074148 p).toNat

end

end A106346.P5719177876896897539

/-! ## A106346.P17017910688681266823

`A166698(A247023(n))%p?[A135062(n)]`
-/

namespace A106346.P17017910688681266823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166698 (A247023 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A106346.P17017910688681266823

/-! ## A106346.P8088224226797442856

`A008683(A242920(n+1)*A247023(n))`
-/

namespace A106346.P8088224226797442856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A242920 (n + 1) * A247023 n).toNat

end

end A106346.P8088224226797442856

/-!
# A106347: A generalized Fredholm-Rueppel sequence.

The programs for A106347, the canonical program `A106347.P575279452453601450` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106347 has offset 0).

The definition of A106347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106347.P575279452453601450

`Δ[floor(∑[xor(n, n+1)]/(n+1))]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106347

/-- `Δ[floor(∑[xor(n, n+1)]/(n+1))]` -/
def P575279452453601450.Spec : Prop :=
  ∀ n, P575279452453601450.a n = A106347 n

theorem P575279452453601450.correct : P575279452453601450.Spec := by
  intro n
  simp only [A106347]

end A106347

/-! ## A106347.P11691407054184479071

`-xor(1, (n*a(floor(n/2))+1)%2)` with `a(0)=1`
-/

namespace A106347.P11691407054184479071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -Int.xor 1 (Int.tmod ((n : ℤ) * a ⌊(n : ℚ) / 2⌋.toNat + 1) 2)

end

end A106347.P11691407054184479071

namespace A106347

/-- `-xor(1, (n*a(floor(n/2))+1)%2)` -/
def P11691407054184479071.Spec : Prop :=
  ∀ n, P11691407054184479071.a n = A106347 n

end A106347

/-! ## A106347.P8193417295412604551

`C(2, (n+2)/2^Δ[val(n+1, 2)])-char[2^n-1]`
-/

namespace A106347.P8193417295412604551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (SequenceMachineLib.roundAway ((n + 2 : ℚ) / (2 : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ))).toNat : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A106347.P8193417295412604551

namespace A106347

/-- `C(2, (n+2)/2^Δ[val(n+1, 2)])-char[2^n-1]` -/
def P8193417295412604551.Spec : Prop :=
  ∀ n, P8193417295412604551.a n = A106347 n

end A106347

/-! ## A106347.P1655011130480988460

`ceil(Δ[sqrt(A127802(n))])`
-/

namespace A106347.P1655011130480988460
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127802 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A106347.P1655011130480988460

namespace A106347

/-- `ceil(Δ[sqrt(A127802(n))])` -/
def P1655011130480988460.Spec : Prop :=
  ∀ n, P1655011130480988460.a n = A106347 n

end A106347

/-! ## A106347.P7779044976571297474

`ceil(atan(Δ[A099894(n)]))`
-/

namespace A106347.P7779044976571297474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (f1 (n + 1) - f1 n : ℝ)⌉

end

end A106347.P7779044976571297474

namespace A106347

/-- `ceil(atan(Δ[A099894(n)]))` -/
def P7779044976571297474.Spec : Prop :=
  ∀ n, P7779044976571297474.a n = A106347 n

end A106347

/-! ## A106347.P6638483449802966242

`ceil(Δ[sqrt(A069517(n+1))])`
-/

namespace A106347.P6638483449802966242
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A069517 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A106347.P6638483449802966242

namespace A106347

/-- `ceil(Δ[sqrt(A069517(n+1))])` -/
def P6638483449802966242.Spec : Prop :=
  ∀ n, P6638483449802966242.a n = A106347 n

end A106347

/-! ## A106347.P1215278439360848555

`Δ[floor(log2(A268717(n+2)))]`
-/

namespace A106347.P1215278439360848555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A268717 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A106347.P1215278439360848555

namespace A106347

/-- `Δ[floor(log2(A268717(n+2)))]` -/
def P1215278439360848555.Spec : Prop :=
  ∀ n, P1215278439360848555.a n = A106347 n

end A106347

/-! ## A106347.P6987735403607274705

`ceil(atan(Δ[A104117(n+1)]))`
-/

namespace A106347.P6987735403607274705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (f1 (n + 1) - f1 n : ℝ)⌉

end

end A106347.P6987735403607274705

namespace A106347

/-- `ceil(atan(Δ[A104117(n+1)]))` -/
def P6987735403607274705.Spec : Prop :=
  ∀ n, P6987735403607274705.a n = A106347 n

end A106347

/-! ## A106347.P14766594273565804246

`ceil(Δ[atan(A259346(n+1))])`
-/

namespace A106347.P14766594273565804246
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A259346 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A106347.P14766594273565804246

namespace A106347

/-- `ceil(Δ[atan(A259346(n+1))])` -/
def P14766594273565804246.Spec : Prop :=
  ∀ n, P14766594273565804246.a n = A106347 n

end A106347

/-! ## A106347.P4761051164106066562

`Δ[floor(log2(A054429(n+1)+1))]`
-/

namespace A106347.P4761051164106066562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A054429 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A106347.P4761051164106066562

namespace A106347

/-- `Δ[floor(log2(A054429(n+1)+1))]` -/
def P4761051164106066562.Spec : Prop :=
  ∀ n, P4761051164106066562.a n = A106347 n

end A106347

/-! ## A106347.P14638858559308549396

`Δ[floor(log2(A059894(n+1)+1))]`
-/

namespace A106347.P14638858559308549396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A059894 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A106347.P14638858559308549396

namespace A106347

/-- `Δ[floor(log2(A059894(n+1)+1))]` -/
def P14638858559308549396.Spec : Prop :=
  ∀ n, P14638858559308549396.a n = A106347 n

end A106347

/-! ## A106347.P1937706316131818438

`ceil(Δ[atan(A270306(2*(n+1)))])`
-/

namespace A106347.P1937706316131818438
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A270306 (2 * (n + 1)) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A106347.P1937706316131818438

namespace A106347

/-- `ceil(Δ[atan(A270306(2*(n+1)))])` -/
def P1937706316131818438.Spec : Prop :=
  ∀ n, P1937706316131818438.a n = A106347 n

end A106347

/-! ## A106347.P1102048521244019534

`Δ[A036987(n)+floor(log2(n+1))]`
-/

namespace A106347.P1102048521244019534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n + (Nat.log 2 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106347.P1102048521244019534

namespace A106347

/-- `Δ[A036987(n)+floor(log2(n+1))]` -/
def P1102048521244019534.Spec : Prop :=
  ∀ n, P1102048521244019534.a n = A106347 n

end A106347

/-! ## A106347.P11593812445500742572

`Δ[floor(log2(n+1)-A043529(n))]`
-/

namespace A106347.P11593812445500742572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (n + 1 : ℝ) - (A043529 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106347.P11593812445500742572

namespace A106347

/-- `Δ[floor(log2(n+1)-A043529(n))]` -/
def P11593812445500742572.Spec : Prop :=
  ∀ n, P11593812445500742572.a n = A106347 n

end A106347

/-! ## A106347.P9277224988928078520

`Δ[floor(log2(n+1))-A043545(n)]`
-/

namespace A106347.P9277224988928078520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (n + 1) : ℤ) - A043545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106347.P9277224988928078520

namespace A106347

/-- `Δ[floor(log2(n+1))-A043545(n)]` -/
def P9277224988928078520.Spec : Prop :=
  ∀ n, P9277224988928078520.a n = A106347 n

end A106347

/-! ## A106347.P5480945869604552844

`Δ[A014963(2*(n+1))+floor(log2(n+1))]`
-/

namespace A106347.P5480945869604552844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * (n + 1)) + (Nat.log 2 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106347.P5480945869604552844

namespace A106347

/-- `Δ[A014963(2*(n+1))+floor(log2(n+1))]` -/
def P5480945869604552844.Spec : Prop :=
  ∀ n, P5480945869604552844.a n = A106347 n

end A106347

/-! ## A106347.P8977575072179468803

`Δ[floor(log2(lcm(n+1, A006530(3*(n+1)))))]`
-/

namespace A106347.P8977575072179468803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Int.lcm (n + 1 : ℤ) (A006530 (3 * (n + 1))))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A106347.P8977575072179468803

namespace A106347

/-- `Δ[floor(log2(lcm(n+1, A006530(3*(n+1)))))]` -/
def P8977575072179468803.Spec : Prop :=
  ∀ n, P8977575072179468803.a n = A106347 n

end A106347

/-! ## A106347.P5012313011035492679

`ceil(Δ[sqrt(((2*n)^A001221(n+1))%4)])`
-/

namespace A106347.P5012313011035492679
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.tmod (SequenceMachineLib.roundAway ((2 * n : ℚ) ^ (A001221 (n + 1) : ℤ))) 4 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A106347.P5012313011035492679

namespace A106347

/-- `ceil(Δ[sqrt(((2*n)^A001221(n+1))%4)])` -/
def P5012313011035492679.Spec : Prop :=
  ∀ n, P5012313011035492679.a n = A106347 n

end A106347

/-! ## A106347.P1648505103140040100

`Δ[round(1/A006530(n+1))+floor(log2(n+1))]`
-/

namespace A106347.P1648505103140040100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A006530 (n + 1) : ℚ)) + (Nat.log 2 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106347.P1648505103140040100

namespace A106347

/-- `Δ[round(1/A006530(n+1))+floor(log2(n+1))]` -/
def P1648505103140040100.Spec : Prop :=
  ∀ n, P1648505103140040100.a n = A106347 n

end A106347

/-! ## A106347.P11808293738057662066

`Δ[ceil(log2((n+1)*or(1, A014963(4*(n+1)))))]`
-/

namespace A106347.P11808293738057662066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((n + 1 : ℤ) * Int.lor 1 (A014963 (4 * (n + 1))) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106347.P11808293738057662066

namespace A106347

/-- `Δ[ceil(log2((n+1)*or(1, A014963(4*(n+1)))))]` -/
def P11808293738057662066.Spec : Prop :=
  ∀ n, P11808293738057662066.a n = A106347 n

end A106347

/-!
# A106348: Partial sums of a generalized Fredholm-Rueppel sequence.

The programs for A106348, the canonical program `A106348.P9026464948843859635` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106348 has offset 0).

The definition of A106348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106348.P5966163163378002007

`a(∑[char[or(2, n)]]-1)+1` with `a(0)=1, a(1)=0`
-/

namespace A106348.P5966163163378002007
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j - 1) + 1

end

end A106348.P5966163163378002007

namespace A106348

/-- `a(∑[char[or(2, n)]]-1)+1` -/
def P5966163163378002007.Spec : Prop :=
  ∀ n, (P5966163163378002007.a n : ℤ) = A106348 n

end A106348

/-! ## A106348.P1757031096511538774

`a(∑[char[or(2, n+3)]])+1` with `a(0)=1, a(1)=0`
-/

namespace A106348.P1757031096511538774
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A106348.P1757031096511538774

namespace A106348

/-- `a(∑[char[or(2, n+3)]])+1` -/
def P1757031096511538774.Spec : Prop :=
  ∀ n, (P1757031096511538774.a n : ℤ) = A106348 n

end A106348

/-! ## A106348.P9026464948843859635

`a(∑[and(2, n)/2]-1)+1` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106348

/-- `a(∑[and(2, n)/2]-1)+1` -/
def P9026464948843859635.Spec : Prop :=
  ∀ n, (P9026464948843859635.a n : ℤ) = A106348 n

theorem P9026464948843859635.correct : P9026464948843859635.Spec := by
  intro n
  simp only [A106348]

end A106348

/-! ## A106348.P7154624914009658278

`a(∑[C(n, 2)%2]-1)+1` with `a(0)=1, a(1)=0`
-/

namespace A106348.P7154624914009658278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 % 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j - 1) + 1

end

end A106348.P7154624914009658278

namespace A106348

/-- `a(∑[C(n, 2)%2]-1)+1` -/
def P7154624914009658278.Spec : Prop :=
  ∀ n, (P7154624914009658278.a n : ℤ) = A106348 n

end A106348

/-! ## A106348.P793587852675204315

`char[2^n-2]+floor(log2(n+2))-1`
-/

namespace A106348.P793587852675204315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ((Nat.log 2 (n + 2) : ℤ) - 1)

end

end A106348.P793587852675204315

namespace A106348

/-- `char[2^n-2]+floor(log2(n+2))-1` -/
def P793587852675204315.Spec : Prop :=
  ∀ n, P793587852675204315.a n = A106348 n

end A106348

/-! ## A106348.P10914631644268054644

`∑[A106347(n)]`
-/

namespace A106348.P10914631644268054644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106348.P10914631644268054644

namespace A106348

/-- `∑[A106347(n)]` -/
def P10914631644268054644.Spec : Prop :=
  ∀ n, P10914631644268054644.a n = A106348 n

end A106348

/-! ## A106348.P6963271999512300543

`floor(log2(A082497(n+2)))`
-/

namespace A106348.P6963271999512300543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A082497 (n + 2)).toNat

end

end A106348.P6963271999512300543

namespace A106348

/-- `floor(log2(A082497(n+2)))` -/
def P6963271999512300543.Spec : Prop :=
  ∀ n, (P6963271999512300543.a n : ℤ) = A106348 n

end A106348

/-! ## A106348.P10947369451645474361

`∑[ceil(Δ[A127802(n)/2])]`
-/

namespace A106348.P10947369451645474361
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127802 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f2 (n + 1) - f2 n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106348.P10947369451645474361

namespace A106348

/-- `∑[ceil(Δ[A127802(n)/2])]` -/
def P10947369451645474361.Spec : Prop :=
  ∀ n, P10947369451645474361.a n = A106348 n

end A106348

/-! ## A106348.P12174943394036656178

`A032358(A164279(n+1))`
-/

namespace A106348.P12174943394036656178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032358 (A164279 (n + 1)).toNat

end

end A106348.P12174943394036656178

namespace A106348

/-- `A032358(A164279(n+1))` -/
def P12174943394036656178.Spec : Prop :=
  ∀ n, P12174943394036656178.a n = A106348 n

end A106348

/-! ## A106348.P14781627644210419387

`A145037(A142151(n+1))`
-/

namespace A106348.P14781627644210419387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A142151 (n + 1)).toNat

end

end A106348.P14781627644210419387

namespace A106348

/-- `A145037(A142151(n+1))` -/
def P14781627644210419387.Spec : Prop :=
  ∀ n, P14781627644210419387.a n = A106348 n

end A106348

/-! ## A106348.P632631713642431068

`A089398(A342126(n+1))`
-/

namespace A106348.P632631713642431068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089398 (A342126 (n + 1)).toNat

end

end A106348.P632631713642431068

namespace A106348

/-- `A089398(A342126(n+1))` -/
def P632631713642431068.Spec : Prop :=
  ∀ n, P632631713642431068.a n = A106348 n

end A106348

/-! ## A106348.P1244620165297045516

`A340251(A163380(n+1))`
-/

namespace A106348.P1244620165297045516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340251 (A163380 (n + 1)).toNat

end

end A106348.P1244620165297045516

namespace A106348

/-- `A340251(A163380(n+1))` -/
def P1244620165297045516.Spec : Prop :=
  ∀ n, P1244620165297045516.a n = A106348 n

end A106348

/-! ## A106348.P3689189947727267494

`A340251(A233569(n+1))`
-/

namespace A106348.P3689189947727267494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340251 (A233569 (n + 1)).toNat

end

end A106348.P3689189947727267494

namespace A106348

/-- `A340251(A233569(n+1))` -/
def P3689189947727267494.Spec : Prop :=
  ∀ n, P3689189947727267494.a n = A106348 n

end A106348

/-! ## A106348.P10413694721154651015

`A340251(A246593(n+1))`
-/

namespace A106348.P10413694721154651015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340251 (A246593 (n + 1)).toNat

end

end A106348.P10413694721154651015

namespace A106348

/-- `A340251(A246593(n+1))` -/
def P10413694721154651015.Spec : Prop :=
  ∀ n, P10413694721154651015.a n = A106348 n

end A106348

/-! ## A106348.P7657595023386815907

`A340251(A256999(n+1))`
-/

namespace A106348.P7657595023386815907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340251 (A256999 (n + 1)).toNat

end

end A106348.P7657595023386815907

namespace A106348

/-- `A340251(A256999(n+1))` -/
def P7657595023386815907.Spec : Prop :=
  ∀ n, P7657595023386815907.a n = A106348 n

end A106348

/-! ## A106348.P9376315719573674409

`A340251(A331857(n+1))`
-/

namespace A106348.P9376315719573674409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340251 (A331857 (n + 1)).toNat

end

end A106348.P9376315719573674409

namespace A106348

/-- `A340251(A331857(n+1))` -/
def P9376315719573674409.Spec : Prop :=
  ∀ n, P9376315719573674409.a n = A106348 n

end A106348

/-! ## A106348.P10656790747938511999

`A059939(A054429(n+2))`
-/

namespace A106348.P10656790747938511999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059939 (A054429 (n + 2)).toNat

end

end A106348.P10656790747938511999

namespace A106348

/-- `A059939(A054429(n+2))` -/
def P10656790747938511999.Spec : Prop :=
  ∀ n, P10656790747938511999.a n = A106348 n

end A106348

/-! ## A106348.P2435311517072038707

`A059939(A059894(n+2))`
-/

namespace A106348.P2435311517072038707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059939 (A059894 (n + 2)).toNat

end

end A106348.P2435311517072038707

namespace A106348

/-- `A059939(A059894(n+2))` -/
def P2435311517072038707.Spec : Prop :=
  ∀ n, P2435311517072038707.a n = A106348 n

end A106348

/-! ## A106348.P16520290584941348419

`A059939(A118319(n+2))`
-/

namespace A106348.P16520290584941348419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059939 (A118319 (n + 2)).toNat

end

end A106348.P16520290584941348419

namespace A106348

/-- `A059939(A118319(n+2))` -/
def P16520290584941348419.Spec : Prop :=
  ∀ n, P16520290584941348419.a n = A106348 n

end A106348

/-! ## A106348.P10484888663565148636

`A059939(A178910(n+2))`
-/

namespace A106348.P10484888663565148636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059939 (A178910 (n + 2)).toNat

end

end A106348.P10484888663565148636

namespace A106348

/-- `A059939(A178910(n+2))` -/
def P10484888663565148636.Spec : Prop :=
  ∀ n, P10484888663565148636.a n = A106348 n

end A106348

/-!
# A106349: Primes indexed by semiprimes.

The programs for A106349, the canonical program `A106349.P13006647031590844046` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106349 has offset 1).

The definition of A106349 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A106349.P13006647031590844046

`A000040(A001358(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A106349

/-- `A000040(A001358(n+1))` -/
def P13006647031590844046.Spec : Prop :=
  ∀ n, P13006647031590844046.a n = A106349 (n + 1)

theorem P13006647031590844046.correct : P13006647031590844046.Spec := by
  intro n
  simp only [A106349, Nat.add_sub_cancel]

end A106349

/-! ## A106349.P8534638281680450497

`A122824(n+1)+A106350(n+1)`
-/

namespace A106349.P8534638281680450497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122824 (n + 1) + A106350 (n + 1)

end

end A106349.P8534638281680450497

namespace A106349

/-- `A122824(n+1)+A106350(n+1)` -/
def P8534638281680450497.Spec : Prop :=
  ∀ n, P8534638281680450497.a n = A106349 (n + 1)

theorem P8534638281680450497.correct : P8534638281680450497.Spec := by
  intro n
  simp only [A106349, Nat.add_sub_cancel, A106349.P8534638281680450497.a, A106349.P13006647031590844046.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A106350, A106350.P1932545184107851387.a, A122824, A122824.P11779817276326474124.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106349

/-! ## A106349.P18162987171856837647

`p?[A339112(n+1)]`
-/

namespace A106349.P18162987171856837647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106349.P18162987171856837647

namespace A106349

/-- `p?[A339112(n+1)]` -/
def P18162987171856837647.Spec : Prop :=
  ∀ n, P18162987171856837647.a n = A106349 (n + 1)

end A106349

/-! ## A106349.P15907230971096022750

`A055670(A088707(n+1)-1)-1`
-/

namespace A106349.P15907230971096022750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (A088707 (n + 1) - 1).toNat - 1

end

end A106349.P15907230971096022750

namespace A106349

/-- `A055670(A088707(n+1)-1)-1` -/
def P15907230971096022750.Spec : Prop :=
  ∀ n, P15907230971096022750.a n = A106349 (n + 1)

end A106349

/-! ## A106349.P1253778921873792642

`A055670(eq[2, A317545(n+1)]+1)-1`
-/

namespace A106349.P1253778921873792642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A106349.P1253778921873792642

namespace A106349

/-- `A055670(eq[2, A317545(n+1)]+1)-1` -/
def P1253778921873792642.Spec : Prop :=
  ∀ n, P1253778921873792642.a n = A106349 (n + 1)

end A106349

/-! ## A106349.P7761240993439679133

`A001749(eq[2, A001222(n+1)]+1)/4`
-/

namespace A106349.P7761240993439679133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / 4

end

end A106349.P7761240993439679133

namespace A106349

/-- `A001749(eq[2, A001222(n+1)]+1)/4` -/
def P7761240993439679133.Spec : Prop :=
  ∀ n, P7761240993439679133.a n = (A106349 (n + 1) : ℚ)

end A106349

/-! ## A106349.P2260407069011544104

`A088982(A176193(n+1))`
-/

namespace A106349.P2260407069011544104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088982 (A176193 (n + 1)).toNat

end

end A106349.P2260407069011544104

namespace A106349

/-- `A088982(A176193(n+1))` -/
def P2260407069011544104.Spec : Prop :=
  ∀ n, P2260407069011544104.a n = A106349 (n + 1)

end A106349

/-! ## A106349.P6225951043465716266

`∩[A007821(n+1), A339112(n+1)]`
-/

namespace A106349.P6225951043465716266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106349.P6225951043465716266

namespace A106349

/-- `∩[A007821(n+1), A339112(n+1)]` -/
def P6225951043465716266.Spec : Prop :=
  ∀ n, (P6225951043465716266.a n : ℤ) = A106349 (n + 1)

end A106349

/-! ## A106349.P5765995167963345800

`A156037(A001358(n+1))+A006519(2*n+1)`
-/

namespace A106349.P5765995167963345800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (A001358 (n + 1)).toNat + A006519 (2 * n + 1)

end

end A106349.P5765995167963345800

namespace A106349

/-- `A156037(A001358(n+1))+A006519(2*n+1)` -/
def P5765995167963345800.Spec : Prop :=
  ∀ n, P5765995167963345800.a n = A106349 (n + 1)

end A106349

/-! ## A106349.P5831955052592094972

`A045319(A186621(n+1))`
-/

namespace A106349.P5831955052592094972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A186621 (n + 1)).toNat

end

end A106349.P5831955052592094972

namespace A106349

/-- `A045319(A186621(n+1))` -/
def P5831955052592094972.Spec : Prop :=
  ∀ n, P5831955052592094972.a n = A106349 (n + 1)

end A106349

/-! ## A106349.P12653460167001486733

`A045319(A001358(n+1)-1)`
-/

namespace A106349.P12653460167001486733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A001358 (n + 1) - 1).toNat

end

end A106349.P12653460167001486733

namespace A106349

/-- `A045319(A001358(n+1)-1)` -/
def P12653460167001486733.Spec : Prop :=
  ∀ n, P12653460167001486733.a n = A106349 (n + 1)

end A106349

/-! ## A106349.P4286985306600244319

`A045344(A001358(n+1)-1)`
-/

namespace A106349.P4286985306600244319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A001358 (n + 1) - 1).toNat

end

end A106349.P4286985306600244319

namespace A106349

/-- `A045344(A001358(n+1)-1)` -/
def P4286985306600244319.Spec : Prop :=
  ∀ n, P4286985306600244319.a n = A106349 (n + 1)

end A106349

/-! ## A106349.P18389181105811222420

`A065091(A001358(n+1)-1)`
-/

namespace A106349.P18389181105811222420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A001358 (n + 1) - 1).toNat

end

end A106349.P18389181105811222420

namespace A106349

/-- `A065091(A001358(n+1)-1)` -/
def P18389181105811222420.Spec : Prop :=
  ∀ n, P18389181105811222420.a n = A106349 (n + 1)

end A106349

/-! ## A106349.P15001022758986553969

`A215848(A001358(n+1)-2)`
-/

namespace A106349.P15001022758986553969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (A001358 (n + 1) - 2).toNat

end

end A106349.P15001022758986553969

namespace A106349

/-- `A215848(A001358(n+1)-2)` -/
def P15001022758986553969.Spec : Prop :=
  ∀ n, P15001022758986553969.a n = A106349 (n + 1)

end A106349

/-! ## A106349.P14440126151648273989

`A065091(eq[2, A001222(n+1)])`
-/

namespace A106349.P14440126151648273989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106349.P14440126151648273989

namespace A106349

/-- `A065091(eq[2, A001222(n+1)])` -/
def P14440126151648273989.Spec : Prop :=
  ∀ n, P14440126151648273989.a n = A106349 (n + 1)

end A106349

/-! ## A106349.P3942199459123288508

`∩[A004139(n+1), A339112(n+1)]`
-/

namespace A106349.P3942199459123288508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106349.P3942199459123288508

namespace A106349

/-- `∩[A004139(n+1), A339112(n+1)]` -/
def P3942199459123288508.Spec : Prop :=
  ∀ n, (P3942199459123288508.a n : ℤ) = A106349 (n + 1)

end A106349

/-! ## A106349.P11173694940271125865

`∩[A045319(n+1), A339112(n+1)]`
-/

namespace A106349.P11173694940271125865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106349.P11173694940271125865

namespace A106349

/-- `∩[A045319(n+1), A339112(n+1)]` -/
def P11173694940271125865.Spec : Prop :=
  ∀ n, (P11173694940271125865.a n : ℤ) = A106349 (n + 1)

end A106349

/-! ## A106349.P8341935743172585894

`∩[A045344(n+1), A339112(n+1)]`
-/

namespace A106349.P8341935743172585894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106349.P8341935743172585894

namespace A106349

/-- `∩[A045344(n+1), A339112(n+1)]` -/
def P8341935743172585894.Spec : Prop :=
  ∀ n, (P8341935743172585894.a n : ℤ) = A106349 (n + 1)

end A106349

/-! ## A106349.P2525908151640728881

`∩[A065091(n+1), A339112(n+1)]`
-/

namespace A106349.P2525908151640728881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106349.P2525908151640728881

namespace A106349

/-- `∩[A065091(n+1), A339112(n+1)]` -/
def P2525908151640728881.Spec : Prop :=
  ∀ n, (P2525908151640728881.a n : ℤ) = A106349 (n + 1)

end A106349

/-! ## A106349.P9310155621594632790

`A008578(A088707(n+1))`
-/

namespace A106349.P9310155621594632790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A088707 (n + 1)).toNat

end

end A106349.P9310155621594632790

namespace A106349

/-- `A008578(A088707(n+1))` -/
def P9310155621594632790.Spec : Prop :=
  ∀ n, P9310155621594632790.a n = A106349 (n + 1)

end A106349

/-!
# A106350: Semiprimes indexed by primes.

The programs for A106350, the canonical program `A106350.P1932545184107851387` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106350 has offset 1).

The definition of A106350 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A106350.P1932545184107851387

`A001358(A000040(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A106350

/-- `A001358(A000040(n+1))` -/
def P1932545184107851387.Spec : Prop :=
  ∀ n, P1932545184107851387.a n = A106350 (n + 1)

theorem P1932545184107851387.correct : P1932545184107851387.Spec := by
  intro n
  simp only [A106350, Nat.add_sub_cancel]

end A106350

/-! ## A106350.P12071472488004502973

`A106349(n+1)-A122824(n+1)`
-/

namespace A106350.P12071472488004502973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106349 (n + 1) - A122824 (n + 1)

end

end A106350.P12071472488004502973

namespace A106350

/-- `A106349(n+1)-A122824(n+1)` -/
def P12071472488004502973.Spec : Prop :=
  ∀ n, P12071472488004502973.a n = A106350 (n + 1)

theorem P12071472488004502973.correct : P12071472488004502973.Spec := by
  intro n
  simp only [A106350, Nat.add_sub_cancel, A106350.P12071472488004502973.a, A106350.P1932545184107851387.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A106349, A106349.P13006647031590844046.a, A122824, A122824.P11779817276326474124.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106350

/-! ## A106350.P16041381803909220546

`A001358(Δ[A007504(n)])`
-/

namespace A106350.P16041381803909220546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (f1 (n + 1) - f1 n).toNat

end

end A106350.P16041381803909220546

namespace A106350

/-- `A001358(Δ[A007504(n)])` -/
def P16041381803909220546.Spec : Prop :=
  ∀ n, P16041381803909220546.a n = A106350 (n + 1)

end A106350

/-! ## A106350.P3639154324351516511

`A001358(A008578(n+2))`
-/

namespace A106350.P3639154324351516511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A008578 (n + 2)).toNat

end

end A106350.P3639154324351516511

namespace A106350

/-- `A001358(A008578(n+2))` -/
def P3639154324351516511.Spec : Prop :=
  ∀ n, P3639154324351516511.a n = A106350 (n + 1)

end A106350

/-! ## A106350.P17501590771872790719

`A001358(A182986(n+2))`
-/

namespace A106350.P17501590771872790719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A182986 (n + 2)).toNat

end

end A106350.P17501590771872790719

namespace A106350

/-- `A001358(A182986(n+2))` -/
def P17501590771872790719.Spec : Prop :=
  ∀ n, P17501590771872790719.a n = A106350 (n + 1)

end A106350

/-! ## A106350.P11062853131279691521

`A001358(sqrt(A001248(n+1)))`
-/

namespace A106350.P11062853131279691521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A106350.P11062853131279691521

namespace A106350

/-- `A001358(sqrt(A001248(n+1)))` -/
def P11062853131279691521.Spec : Prop :=
  ∀ n, P11062853131279691521.a n = A106350 (n + 1)

end A106350

/-! ## A106350.P5069590399586824650

`A001358(record[A006530(n+2)])`
-/

namespace A106350.P5069590399586824650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A106350.P5069590399586824650

namespace A106350

/-- `A001358(record[A006530(n+2)])` -/
def P5069590399586824650.Spec : Prop :=
  ∀ n, P5069590399586824650.a n = A106350 (n + 1)

end A106350

/-! ## A106350.P10065320237590067989

`A001358(record[A008472(n+2)])`
-/

namespace A106350.P10065320237590067989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A106350.P10065320237590067989

namespace A106350

/-- `A001358(record[A008472(n+2)])` -/
def P10065320237590067989.Spec : Prop :=
  ∀ n, P10065320237590067989.a n = A106350 (n + 1)

end A106350

/-! ## A106350.P3701100740990881138

`A001358(record[A020639(n+2)])`
-/

namespace A106350.P3701100740990881138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A106350.P3701100740990881138

namespace A106350

/-- `A001358(record[A020639(n+2)])` -/
def P3701100740990881138.Spec : Prop :=
  ∀ n, P3701100740990881138.a n = A106350 (n + 1)

end A106350

/-! ## A106350.P7005108532064417225

`A001358(A006093(n+1)+1)`
-/

namespace A106350.P7005108532064417225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A006093 (n + 1) + 1).toNat

end

end A106350.P7005108532064417225

namespace A106350

/-- `A001358(A006093(n+1)+1)` -/
def P7005108532064417225.Spec : Prop :=
  ∀ n, P7005108532064417225.a n = A106350 (n + 1)

theorem P7005108532064417225.correct : P7005108532064417225.Spec := by
  intro n
  simp only [A106350, Nat.add_sub_cancel, A106350.P7005108532064417225.a, A106350.P1932545184107851387.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A006093, A006093.P2906174024863549003.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106350

/-! ## A106350.P14664270516858854180

`A001358(A008864(n+1)-1)`
-/

namespace A106350.P14664270516858854180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A008864 (n + 1) - 1).toNat

end

end A106350.P14664270516858854180

namespace A106350

/-- `A001358(A008864(n+1)-1)` -/
def P14664270516858854180.Spec : Prop :=
  ∀ n, P14664270516858854180.a n = A106350 (n + 1)

theorem P14664270516858854180.correct : P14664270516858854180.Spec := by
  intro n
  simp only [A106350, Nat.add_sub_cancel, A106350.P14664270516858854180.a, A106350.P1932545184107851387.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A008864, A008864.P9177617808325052279.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106350

/-! ## A106350.P1390197476623761880

`A001358(A040976(n+1)+2)`
-/

namespace A106350.P1390197476623761880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A040976 (n + 1) + 2).toNat

end

end A106350.P1390197476623761880

namespace A106350

/-- `A001358(A040976(n+1)+2)` -/
def P1390197476623761880.Spec : Prop :=
  ∀ n, P1390197476623761880.a n = A106350 (n + 1)

theorem P1390197476623761880.correct : P1390197476623761880.Spec := by
  intro n
  simp only [A106350, Nat.add_sub_cancel, A106350.P1390197476623761880.a, A106350.P1932545184107851387.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A040976, A040976.P11599754272797435513.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106350

/-! ## A106350.P15576220660753100827

`A001358(A052147(n+1)-2)`
-/

namespace A106350.P15576220660753100827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A052147 (n + 1) - 2).toNat

end

end A106350.P15576220660753100827

namespace A106350

/-- `A001358(A052147(n+1)-2)` -/
def P15576220660753100827.Spec : Prop :=
  ∀ n, P15576220660753100827.a n = A106350 (n + 1)

theorem P15576220660753100827.correct : P15576220660753100827.Spec := by
  intro n
  simp only [A106350, Nat.add_sub_cancel, A106350.P15576220660753100827.a, A106350.P1932545184107851387.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A052147, A052147.P6151996953021184291.f1, A052147.P6151996953021184291.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106350

/-! ## A106350.P4491134325360175842

`A001358(A067747(2*n+1))`
-/

namespace A106350.P4491134325360175842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A067747 (2 * n + 1)).toNat

end

end A106350.P4491134325360175842

namespace A106350

/-- `A001358(A067747(2*n+1))` -/
def P4491134325360175842.Spec : Prop :=
  ∀ n, P4491134325360175842.a n = A106350 (n + 1)

end A106350

/-! ## A106350.P8021195091859786906

`A001358(A073846(2*(n+1)))`
-/

namespace A106350.P8021195091859786906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A073846 (2 * (n + 1))).toNat

end

end A106350.P8021195091859786906

namespace A106350

/-- `A001358(A073846(2*(n+1)))` -/
def P8021195091859786906.Spec : Prop :=
  ∀ n, P8021195091859786906.a n = A106350 (n + 1)

end A106350

/-! ## A106350.P17855373472763037326

`A001358(A129767(2*n+1))`
-/

namespace A106350.P17855373472763037326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A129767 (2 * n + 1)).toNat

end

end A106350.P17855373472763037326

namespace A106350

/-- `A001358(A129767(2*n+1))` -/
def P17855373472763037326.Spec : Prop :=
  ∀ n, P17855373472763037326.a n = A106350 (n + 1)

end A106350

/-! ## A106350.P12856099484646873778

`A001358(A207790(2*(n+1)))`
-/

namespace A106350.P12856099484646873778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A207790 (2 * (n + 1))).toNat

end

end A106350.P12856099484646873778

namespace A106350

/-- `A001358(A207790(2*(n+1)))` -/
def P12856099484646873778.Spec : Prop :=
  ∀ n, P12856099484646873778.a n = A106350 (n + 1)

end A106350

/-! ## A106350.P9851334934590802249

`A001358(A209259(2*n+1))`
-/

namespace A106350.P9851334934590802249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A209259 (2 * n + 1)).toNat

end

end A106350.P9851334934590802249

namespace A106350

/-- `A001358(A209259(2*n+1))` -/
def P9851334934590802249.Spec : Prop :=
  ∀ n, P9851334934590802249.a n = A106350 (n + 1)

end A106350

/-! ## A106350.P16392342978594920515

`A001358(A100484(n+1)/2)`
-/

namespace A106350.P16392342978594920515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A106350.P16392342978594920515

namespace A106350

/-- `A001358(A100484(n+1)/2)` -/
def P16392342978594920515.Spec : Prop :=
  ∀ n, P16392342978594920515.a n = A106350 (n + 1)

end A106350

/-! ## A106350.P13465970225562622888

`A001358(A014692(n+1)+n)`
-/

namespace A106350.P13465970225562622888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A014692 (n + 1) + (n : ℤ)).toNat

end

end A106350.P13465970225562622888

namespace A106350

/-- `A001358(A014692(n+1)+n)` -/
def P13465970225562622888.Spec : Prop :=
  ∀ n, P13465970225562622888.a n = A106350 (n + 1)

end A106350

/-!
# A106351: Triangle read by rows: T(n,k) = number of compositions of n into k parts such that no two adjacent parts are equal.

The programs for A106351, there is no canonical definition to state claims against.
-/

/-! ## A106351.P9255540569903460884

`A293595(n+1)+A007949(A294082(n+1))`
-/

namespace A106351.P9255540569903460884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293595 (n + 1) + A007949 (A294082 (n + 1)).toNat

end

end A106351.P9255540569903460884

/-! ## A106351.P13013499951557184880

`and(A179968(n+1), A180344(n+2))`
-/

namespace A106351.P13013499951557184880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A179968 (n + 1)) (A180344 (n + 2))

end

end A106351.P13013499951557184880

/-! ## A106351.P10313571075709564504

`and(A180279(n+1), A180344(n+2))`
-/

namespace A106351.P10313571075709564504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A180279 (n + 1)) (A180344 (n + 2))

end

end A106351.P10313571075709564504

/-! ## A106351.P10637931520144017166

`A353434(n)+A079978(A098436(n))`
-/

namespace A106351.P10637931520144017166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353434 n + A079978 (A098436 n).toNat

end

end A106351.P10637931520144017166

/-! ## A106351.P10616987665712130563

`and(A001222(A317644(n)), A286509(n))`
-/

namespace A106351.P10616987665712130563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A317644 n).toNat) (A286509 n)

end

end A106351.P10616987665712130563

/-!
# A106352: Number of compositions of n into 3 parts such that no two adjacent parts are equal.

The programs for A106352, the canonical program `A106352.P2753937757027141161` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106352 has offset 4).

The definition of A106352 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106352.P2753937757027141161

`∑[xor(1, n)+n%3]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106352

/-- `∑[xor(1, n)+n%3]` -/
def P2753937757027141161.Spec : Prop :=
  ∀ n, (P2753937757027141161.a n : ℤ) = A106352 (n + 4)

theorem P2753937757027141161.correct : P2753937757027141161.Spec := by
  intro n
  simp only [A106352, Nat.add_sub_cancel]

end A106352

/-! ## A106352.P18180725842393215084

`∑[n+1]-Δ[round(xor(1, n)/6)]`
-/

namespace A106352.P18180725842393215084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (f2 (n + 1) - f2 n)

end

end A106352.P18180725842393215084

namespace A106352

/-- `∑[n+1]-Δ[round(xor(1, n)/6)]` -/
def P18180725842393215084.Spec : Prop :=
  ∀ n, P18180725842393215084.a n = A106352 (n + 4)

end A106352

/-! ## A106352.P18366709645385285696

`∑[∑[∑[ogf((1+x+4x^2)/(1+2x+2x^2+x^3))]]]`
-/

namespace A106352.P18366709645385285696
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 4] [1, 2, 2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106352.P18366709645385285696

namespace A106352

/-- `∑[∑[∑[ogf((1+x+4x^2)/(1+2x+2x^2+x^3))]]]` -/
def P18366709645385285696.Spec : Prop :=
  ∀ n, P18366709645385285696.a n = A106352 (n + 4)

end A106352

/-! ## A106352.P4003929994945765237

`a(n-3)+xor(1, 3*n)` with `a(0)=1, a(1)=2, a(2)=7`
-/

namespace A106352.P4003929994945765237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 7] fun n a =>
  a (n - 3) + Nat.xor 1 (3 * n)

end

end A106352.P4003929994945765237

namespace A106352

/-- `a(n-3)+xor(1, 3*n)` -/
def P4003929994945765237.Spec : Prop :=
  ∀ n, (P4003929994945765237.a n : ℤ) = A106352 (n + 4)

end A106352

/-! ## A106352.P12734262616535624091

`∑[a(gcd(2, n))+a(n-3)]` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A106352.P12734262616535624091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 5] fun n f1 =>
  f1 (Nat.gcd 2 n) + f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106352.P12734262616535624091

namespace A106352

/-- `∑[a(gcd(2, n))+a(n-3)]` -/
def P12734262616535624091.Spec : Prop :=
  ∀ n, (P12734262616535624091.a n : ℤ) = A106352 (n + 4)

end A106352

/-! ## A106352.P9205642421124927008

`xor(1, n)+a(n-1)+(n+3)%3` with `a(0)=1`
-/

namespace A106352.P9205642421124927008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 n + (a (n - 1) + (n + 3) % 3)

end

end A106352.P9205642421124927008

namespace A106352

/-- `xor(1, n)+a(n-1)+(n+3)%3` -/
def P9205642421124927008.Spec : Prop :=
  ∀ n, (P9205642421124927008.a n : ℤ) = A106352 (n + 4)

end A106352

/-! ## A106352.P8258224365465347534

`2*(n+1)+a(n-2)-(n+1)%3` with `a(0)=1, a(1)=2`
-/

namespace A106352.P8258224365465347534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 * (n + 1) : ℤ) + (a (n - 2) - (((n + 1) % 3 : ℕ) : ℤ))

end

end A106352.P8258224365465347534

namespace A106352

/-- `2*(n+1)+a(n-2)-(n+1)%3` -/
def P8258224365465347534.Spec : Prop :=
  ∀ n, P8258224365465347534.a n = A106352 (n + 4)

end A106352

/-! ## A106352.P6043372503541742855

`∑[A010872(n)+xor(1, n)]`
-/

namespace A106352.P6043372503541742855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 n + (Nat.xor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106352.P6043372503541742855

namespace A106352

/-- `∑[A010872(n)+xor(1, n)]` -/
def P6043372503541742855.Spec : Prop :=
  ∀ n, P6043372503541742855.a n = A106352 (n + 4)

end A106352

/-! ## A106352.P5790463186857588352

`Δ[C(n+2, 3)-A008615(n)]`
-/

namespace A106352.P5790463186857588352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 3 : ℤ) - A008615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106352.P5790463186857588352

namespace A106352

/-- `Δ[C(n+2, 3)-A008615(n)]` -/
def P5790463186857588352.Spec : Prop :=
  ∀ n, P5790463186857588352.a n = A106352 (n + 4)

end A106352

/-! ## A106352.P15344626547001231478

`A105770(n)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=7`
-/

namespace A106352.P15344626547001231478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7] fun n a =>
  A105770 n - a (n - 3)

end

end A106352.P15344626547001231478

namespace A106352

/-- `A105770(n)-a(n-3)` -/
def P15344626547001231478.Spec : Prop :=
  ∀ n, P15344626547001231478.a n = A106352 (n + 4)

end A106352

/-! ## A106352.P16478637217159763205

`A130481(n)+A084263(n)`
-/

namespace A106352.P16478637217159763205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 n + A084263 n

end

end A106352.P16478637217159763205

namespace A106352

/-- `A130481(n)+A084263(n)` -/
def P16478637217159763205.Spec : Prop :=
  ∀ n, P16478637217159763205.a n = A106352 (n + 4)

end A106352

/-! ## A106352.P9034930373250138688

`Δ[A000292(n)-A008615(n)]`
-/

namespace A106352.P9034930373250138688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n - A008615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106352.P9034930373250138688

namespace A106352

/-- `Δ[A000292(n)-A008615(n)]` -/
def P9034930373250138688.Spec : Prop :=
  ∀ n, P9034930373250138688.a n = A106352 (n + 4)

end A106352

/-! ## A106352.P3060082447561128733

`A384717(n+1)+A097063(n)`
-/

namespace A106352.P3060082447561128733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384717 (n + 1) + A097063 n

end

end A106352.P3060082447561128733

namespace A106352

/-- `A384717(n+1)+A097063(n)` -/
def P3060082447561128733.Spec : Prop :=
  ∀ n, P3060082447561128733.a n = A106352 (n + 4)

end A106352

/-! ## A106352.P4451321995677902780

`A143101(n+1)-A000035(n)`
-/

namespace A106352.P4451321995677902780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143101 (n + 1) - A000035 n

end

end A106352.P4451321995677902780

namespace A106352

/-- `A143101(n+1)-A000035(n)` -/
def P4451321995677902780.Spec : Prop :=
  ∀ n, P4451321995677902780.a n = A106352 (n + 4)

end A106352

/-! ## A106352.P14813773559855484064

`A000217(n+1)+A008615(n)-A008615(n+1)`
-/

namespace A106352.P14813773559855484064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A008615 n - A008615 (n + 1))

end

end A106352.P14813773559855484064

namespace A106352

/-- `A000217(n+1)+A008615(n)-A008615(n+1)` -/
def P14813773559855484064.Spec : Prop :=
  ∀ n, P14813773559855484064.a n = A106352 (n + 4)

end A106352

/-! ## A106352.P17603557393776071039

`Δ[A027480(n)/3-A008615(n)]`
-/

namespace A106352.P17603557393776071039
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027480 n : ℚ) / 3 - (A008615 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106352.P17603557393776071039

namespace A106352

/-- `Δ[A027480(n)/3-A008615(n)]` -/
def P17603557393776071039.Spec : Prop :=
  ∀ n, P17603557393776071039.a n = (A106352 (n + 4) : ℚ)

end A106352

/-! ## A106352.P15403486256829563251

`∑[A014681(n+1)]-A174784(n+1)²`
-/

namespace A106352.P15403486256829563251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A174784 (n + 1) ^ 2

end

end A106352.P15403486256829563251

namespace A106352

/-- `∑[A014681(n+1)]-A174784(n+1)²` -/
def P15403486256829563251.Spec : Prop :=
  ∀ n, P15403486256829563251.a n = A106352 (n + 4)

end A106352

/-! ## A106352.P15674209564041607391

`A260699(n+1)+A008615(n)-A260160(n+1)`
-/

namespace A106352.P15674209564041607391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260699 (n + 1) + (A008615 n - A260160 (n + 1))

end

end A106352.P15674209564041607391

namespace A106352

/-- `A260699(n+1)+A008615(n)-A260160(n+1)` -/
def P15674209564041607391.Spec : Prop :=
  ∀ n, P15674209564041607391.a n = A106352 (n + 4)

end A106352

/-! ## A106352.P16019325081841984852

`A000035(n+1)+A000217(n+1)-A011655(n+1)`
-/

namespace A106352.P16019325081841984852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) + (A000217 (n + 1) - A011655 (n + 1))

end

end A106352.P16019325081841984852

namespace A106352

/-- `A000035(n+1)+A000217(n+1)-A011655(n+1)` -/
def P16019325081841984852.Spec : Prop :=
  ∀ n, P16019325081841984852.a n = A106352 (n + 4)

end A106352

/-! ## A106352.P13840252484385467345

`A000217(n+1)+A079978(n+1)-A059841(n+1)`
-/

namespace A106352.P13840252484385467345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A079978 (n + 1) - A059841 (n + 1))

end

end A106352.P13840252484385467345

namespace A106352

/-- `A000217(n+1)+A079978(n+1)-A059841(n+1)` -/
def P13840252484385467345.Spec : Prop :=
  ∀ n, P13840252484385467345.a n = A106352 (n + 4)

end A106352

/-!
# A106353: Number of compositions of n into 4 parts such that no two adjacent parts are equal.

The programs for A106353, there is no canonical definition to state claims against.
-/

/-! ## A106353.P13886883822714946254

`record[A106351(∑[n+1]+4)]`
-/

namespace A106353.P13886883822714946254
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106351 (∑ j ∈ Finset.range (n + 1), f2 j + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106353.P13886883822714946254

/-! ## A106353.P17914364813007703552

`A106351(A167499(n+4)-1)`
-/

namespace A106353.P17914364813007703552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106351 (A167499 (n + 4) - 1).toNat

end

end A106353.P17914364813007703552

/-! ## A106353.P3018116498357619660

`A106351(A166136(n+4)-2)`
-/

namespace A106353.P3018116498357619660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106351 (A166136 (n + 4) - 2).toNat

end

end A106353.P3018116498357619660

/-! ## A106353.P17684133537984309057

`A106351(A046691(n+3)+8)`
-/

namespace A106353.P17684133537984309057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106351 (A046691 (n + 3) + 8).toNat

end

end A106353.P17684133537984309057

/-! ## A106353.P4411540355709400994

`A106351(A051936(n+5)+13)`
-/

namespace A106353.P4411540355709400994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106351 (A051936 (n + 5) + 13).toNat

end

end A106353.P4411540355709400994

/-! ## A106353.P4521989533911494753

`A106351(A000217(n+6)-(n+2))`
-/

namespace A106353.P4521989533911494753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106351 (A000217 (n + 6) - (n + 2 : ℤ)).toNat

end

end A106353.P4521989533911494753

/-!
# A106354: Number of compositions of n into 5 parts such that no two adjacent parts are equal.

The programs for A106354, there is no canonical definition to state claims against.
-/

/-! ## A106354.P10082396020564417026

`A106351(A167499(n+5))`
-/

namespace A106354.P10082396020564417026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106351 (A167499 (n + 5)).toNat

end

end A106354.P10082396020564417026

/-! ## A106354.P3892569092093194973

`A106351(A077169(n+7))`
-/

namespace A106354.P3892569092093194973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106351 (A077169 (n + 7)).toNat

end

end A106354.P3892569092093194973

/-! ## A106354.P17287678020714644067

`A106351(A000124(n+6)+4)`
-/

namespace A106354.P17287678020714644067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106351 (A000124 (n + 6) + 4).toNat

end

end A106354.P17287678020714644067

/-! ## A106354.P7991584044406411846

`A106351(A000217(n+6)+5)`
-/

namespace A106354.P7991584044406411846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106351 (A000217 (n + 6) + 5).toNat

end

end A106354.P7991584044406411846

/-! ## A106354.P15815464658371814656

`A106351(A052905(n+3)+10)`
-/

namespace A106354.P15815464658371814656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106351 (A052905 (n + 3) + 10).toNat

end

end A106354.P15815464658371814656

/-! ## A106354.P9580159222039266911

`A106351(A000096(n+6)-(n+1))`
-/

namespace A106354.P9580159222039266911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106351 (A000096 (n + 6) - (n + 1 : ℤ)).toNat

end

end A106354.P9580159222039266911

/-!
# A106355: Number of compositions of n into 6 parts such that no two adjacent parts are equal.

The programs for A106355, there is no canonical definition to state claims against.
-/

/-! ## A106355.P17053774677927735242

`A106351(A000124(n+8)+5)`
-/

namespace A106355.P17053774677927735242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106351 (A000124 (n + 8) + 5).toNat

end

end A106355.P17053774677927735242

/-! ## A106355.P17687299332821210288

`A106351(A055998(n+6)+9)`
-/

namespace A106355.P17687299332821210288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106351 (A055998 (n + 6) + 9).toNat

end

end A106355.P17687299332821210288

/-! ## A106355.P16627895814262326384

`A106351(eq[9, A194976(n+1)])`
-/

namespace A106355.P16627895814262326384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106351 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106355.P16627895814262326384

/-! ## A106355.P11462222116208771526

`A106351(eq[9, A002260(n+3)])`
-/

namespace A106355.P11462222116208771526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106351 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106355.P11462222116208771526

/-! ## A106355.P346054488666071874

`A106351(A046691(n+7)-(n-1))`
-/

namespace A106355.P346054488666071874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106351 (A046691 (n + 7) - ((n : ℤ) - 1)).toNat

end

end A106355.P346054488666071874

/-!
# A106356: Triangle T(n,k) 0<=k

The programs for A106356, there is no canonical definition to state claims against.
-/

/-! ## A106356.P14430421216230139045

`A091613(n+1)-A241831(A103961(A057977(n)))`
-/

namespace A106356.P14430421216230139045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091613 (n + 1) - A241831 (A103961 (A057977 n).toNat).toNat

end

end A106356.P14430421216230139045

/-! ## A106356.P14693497996939828370

`A091613(n+1)%A073521(n+1)`
-/

namespace A106356.P14693497996939828370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091613 (n + 1)) (A073521 (n + 1))

end

end A106356.P14693497996939828370

/-! ## A106356.P13711521722099020950

`A091613((n+1)^(A094144(n+5)%2))`
-/

namespace A106356.P13711521722099020950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091613 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (Int.tmod (A094144 (n + 5)) 2 : ℤ))).toNat

end

end A106356.P13711521722099020950

/-! ## A106356.P5934058610700100836

`A185037(2^ceil(log2(n+1)))+A091613(n+1)`
-/

namespace A106356.P5934058610700100836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185037 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))).toNat + A091613 (n + 1)

end

end A106356.P5934058610700100836

/-!
# A106357: Number of compositions of n with exactly 1 adjacent equal pair of parts.

The programs for A106357, there is no canonical definition to state claims against.
-/

/-! ## A106357.P15470012377671154254

`A106356(∑[n+1]+2)`
-/

namespace A106357.P15470012377671154254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106356 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A106357.P15470012377671154254

/-! ## A106357.P4731102623726836804

`A106356(A133263(n+1))-val(2*n+1, 2)`
-/

namespace A106357.P4731102623726836804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106356 (A133263 (n + 1)).toNat - (SequenceMachineLib.valuation (2 * n + 1) 2 : ℤ)

end

end A106357.P4731102623726836804

/-! ## A106357.P16468182084867319378

`gcd(A000038(n), A106356(A133263(n+1)))`
-/

namespace A106357.P16468182084867319378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A106356 (A133263 (n + 1)).toNat)

end

end A106357.P16468182084867319378

/-! ## A106357.P6072497297209353285

`A106356(A133263(n+1))+A000035(2*n)`
-/

namespace A106357.P6072497297209353285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106356 (A133263 (n + 1)).toNat + A000035 (2 * n)

end

end A106357.P6072497297209353285

/-! ## A106357.P18409412203950519702

`A000035(A287326(n))*A106356(A133263(n+1))`
-/

namespace A106357.P18409412203950519702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A287326 n).toNat * A106356 (A133263 (n + 1)).toNat

end

end A106357.P18409412203950519702

/-! ## A106357.P13265337516550279790

`A208451(2*A053575(n+1))+A106356(A133263(n+1))`
-/

namespace A106357.P13265337516550279790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208451 (2 * A053575 (n + 1)).toNat + A106356 (A133263 (n + 1)).toNat

end

end A106357.P13265337516550279790

/-! ## A106357.P9299139260230221660

`A009195(A142191(n+1))*A106356(A133263(n+1))`
-/

namespace A106357.P9299139260230221660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (A142191 (n + 1)).toNat * A106356 (A133263 (n + 1)).toNat

end

end A106357.P9299139260230221660

/-!
# A106358: Number of compositions of n with exactly 2 adjacent equal parts (2 pairs or 1 triple.).

The programs for A106358, there is no canonical definition to state claims against.
-/

/-! ## A106358.P4257790006101177645

`A106356(∑[n+2]+4)`
-/

namespace A106358.P4257790006101177645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106356 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A106358.P4257790006101177645

/-! ## A106358.P16653380552794203912

`A106356(A167614(n+1))%A188161(n)`
-/

namespace A106358.P16653380552794203912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106356 (A167614 (n + 1)).toNat) (A188161 n)

end

end A106358.P16653380552794203912

/-! ## A106358.P4530842158502861023

`lcm(A106356(A152950(n+3)), A143431(n))`
-/

namespace A106358.P4530842158502861023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106356 (A152950 (n + 3)).toNat) (A143431 n)

end

end A106358.P4530842158502861023

/-! ## A106358.P12008346004783036757

`or(A000007(n), A106356(A167614(n+1)))`
-/

namespace A106358.P12008346004783036757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A106356 (A167614 (n + 1)).toNat)

end

end A106358.P12008346004783036757

/-! ## A106358.P3583593244610451739

`or(A000007(n), A106356(A152950(n+3)))`
-/

namespace A106358.P3583593244610451739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A106356 (A152950 (n + 3)).toNat)

end

end A106358.P3583593244610451739

/-! ## A106358.P10007481127659757600

`A000034(4*n)*A106356(A167614(n+1))`
-/

namespace A106358.P10007481127659757600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (4 * n) * A106356 (A167614 (n + 1)).toNat

end

end A106358.P10007481127659757600

/-! ## A106358.P11787536994181370929

`A106356(A046691(n)+7)%A298578(n+1)`
-/

namespace A106358.P11787536994181370929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106356 (A046691 n + 7).toNat) (A298578 (n + 1))

end

end A106358.P11787536994181370929

/-! ## A106358.P18112031328025281359

`or(1-A057427(n), A106356(A167614(n+1)))`
-/

namespace A106358.P18112031328025281359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (1 - A057427 n) (A106356 (A167614 (n + 1)).toNat)

end

end A106358.P18112031328025281359

/-! ## A106358.P5528304393103538456

`A106356(A034856(n+1)+5)%A117474(n+1)`
-/

namespace A106358.P5528304393103538456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106356 (A034856 (n + 1) + 5).toNat) (A117474 (n + 1))

end

end A106358.P5528304393103538456

/-! ## A106358.P17441467927602517387

`A106356(A167499(n)+n)+A070489(3*(n+1))`
-/

namespace A106358.P17441467927602517387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106356 (A167499 n + (n : ℤ)).toNat + A070489 (3 * (n + 1))

end

end A106358.P17441467927602517387

/-! ## A106358.P2874675553921547513

`A106356(A034856(n+1)+5)%A074509(n)`
-/

namespace A106358.P2874675553921547513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106356 (A034856 (n + 1) + 5).toNat) (A074509 n)

end

end A106358.P2874675553921547513

/-!
# A106359: Number of compositions of n with exactly 3 adjacent equal parts.

The programs for A106359, there is no canonical definition to state claims against.
-/

/-! ## A106359.P3067742128199470612

`A106356(∑[n+3]+7)`
-/

namespace A106359.P3067742128199470612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106356 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A106359.P3067742128199470612

/-! ## A106359.P18270473538202189414

`A106356(A052905(n)+9)+char[42]`
-/

namespace A106359.P18270473538202189414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  42

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106356 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A106359.P18270473538202189414

/-! ## A106359.P12934751567992592945

`or(char[4], A106356(A000124(n+3)+3))`
-/

namespace A106359.P12934751567992592945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A106356 (A000124 (n + 3) + 3).toNat)

end

end A106359.P12934751567992592945

/-! ## A106359.P4075672305386693415

`A106356(A055999(n)+10)%A159890(n+1)`
-/

namespace A106359.P4075672305386693415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106356 (A055999 n + 10).toNat) (A159890 (n + 1))

end

end A106359.P4075672305386693415

/-! ## A106359.P10194904351540965091

`A007318(C(2, n))*A106356(A052905(n)+9)`
-/

namespace A106359.P10194904351540965091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A106356 (A052905 n + 9).toNat

end

end A106359.P10194904351540965091

/-!
# A106360: Number of compositions of n with exactly 4 adjacent equal parts.

The programs for A106360, there is no canonical definition to state claims against.
-/

/-! ## A106360.P5793625566863424291

`A106356(∑[n+4]+11)`
-/

namespace A106360.P5793625566863424291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106356 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A106360.P5793625566863424291

/-! ## A106360.P5222304431017482535

`A106356(A167499(n+3))%A188161(n)`
-/

namespace A106360.P5222304431017482535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106356 (A167499 (n + 3)).toNat) (A188161 n)

end

end A106360.P5222304431017482535

/-! ## A106360.P8979669639362737965

`lcm(A106356(A167499(n+3)), A143431(n))`
-/

namespace A106360.P8979669639362737965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106356 (A167499 (n + 3)).toNat) (A143431 n)

end

end A106360.P8979669639362737965

/-! ## A106360.P4818405032506214063

`or(A000007(n), A106356(A167499(n+3)))`
-/

namespace A106360.P4818405032506214063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A106356 (A167499 (n + 3)).toNat)

end

end A106360.P4818405032506214063

/-! ## A106360.P658557295369773277

`A106356(A167499(n+3))+A030215(3*(n+1))`
-/

namespace A106360.P658557295369773277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106356 (A167499 (n + 3)).toNat + A030215 (3 * (n + 1))

end

end A106360.P658557295369773277

/-!
# A106361: Number of rooted ordered trees where no branch is identical to its adjacent neighbor.

The programs for A106361, there is no canonical definition to state claims against.
-/

/-! ## A106361.P12857823163403770246

`A008616(A115098(n)+A001932(n))`
-/

namespace A106361.P12857823163403770246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A115098 n + A001932 n).toNat

end

end A106361.P12857823163403770246

/-! ## A106361.P13084316809017845674

`A008679(A074496(n)+A061815(n))`
-/

namespace A106361.P13084316809017845674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A074496 n + A061815 n).toNat

end

end A106361.P13084316809017845674

/-! ## A106361.P14982597006918065727

`A008618(A192484(n)+A017928(n))`
-/

namespace A106361.P14982597006918065727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A192484 n + A017928 n).toNat

end

end A106361.P14982597006918065727

/-! ## A106361.P14577897576984433458

`A017911(A196050(n!))`
-/

namespace A106361.P14577897576984433458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017911 (A196050 (Nat.factorial n)).toNat

end

end A106361.P14577897576984433458

/-!
# A106362: Number of rooted planar trees in which no branch is identical to its adjacent neighbor.

The programs for A106362, there is no canonical definition to state claims against.
-/

/-! ## A106362.P9614372667352835496

`A008617(6*A135307(n))`
-/

namespace A106362.P9614372667352835496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (6 * A135307 n).toNat

end

end A106362.P9614372667352835496

/-! ## A106362.P3775504600644590134

`A226762(A360233(n))`
-/

namespace A106362.P3775504600644590134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A360233 n).toNat

end

end A106362.P3775504600644590134

/-! ## A106362.P96126407621703936

`A008651(6*A218250(n))`
-/

namespace A106362.P96126407621703936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (6 * A218250 n).toNat

end

end A106362.P96126407621703936

/-! ## A106362.P13625341715823945576

`A005041(A000167(n)+A000130(n))`
-/

namespace A106362.P13625341715823945576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A000167 n + A000130 n).toNat

end

end A106362.P13625341715823945576

/-! ## A106362.P11360386015652554990

`A054404(A102543(n)+A075864(n))`
-/

namespace A106362.P11360386015652554990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A102543 n + A075864 n).toNat

end

end A106362.P11360386015652554990

/-!
# A106363: Planar trees where no branch is identical to its adjacent neighbor.

The programs for A106363, there is no canonical definition to state claims against.
-/

/-! ## A106363.P13165958337416943576

`A065710(A145267(n)+A046665(n+4))`
-/

namespace A106363.P13165958337416943576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065710 (A145267 n + A046665 (n + 4)).toNat

end

end A106363.P13165958337416943576

/-! ## A106363.P10416584700026325664

`A241063(A137726(n+1)+2)`
-/

namespace A106363.P10416584700026325664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241063 (A137726 (n + 1) + 2).toNat

end

end A106363.P10416584700026325664

/-! ## A106363.P3792588780250321063

`A277903(A036987(n)+A003269(n)!)`
-/

namespace A106363.P3792588780250321063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277903 (A036987 n + (Nat.factorial (A003269 n).toNat : ℤ)).toNat

end

end A106363.P3792588780250321063

/-! ## A106363.P3667344886743580000

`or(A036987(n), A277903(A003269(n)!))`
-/

namespace A106363.P3667344886743580000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036987 n) (A277903 (Nat.factorial (A003269 n).toNat))

end

end A106363.P3667344886743580000

/-! ## A106363.P1879523261801213045

`A000196(xor(A000034(n), A342966(n+2)))`
-/

namespace A106363.P1879523261801213045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.xor (A000034 n) (A342966 (n + 2))).toNat

end

end A106363.P1879523261801213045

/-!
# A106364: Mobiles (cycle rooted trees) where no branch is identical to its adjacent neighbor.

The programs for A106364, there is no canonical definition to state claims against.
-/

/-! ## A106364.P13933145308657850412

`A185714(A002387(n))+1`
-/

namespace A106364.P13933145308657850412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185714 (A002387 n).toNat + 1

end

end A106364.P13933145308657850412

/-! ## A106364.P12420427236520049505

`A166297(n)+A091322(A023422(n))`
-/

namespace A106364.P12420427236520049505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166297 n + A091322 (A023422 n).toNat

end

end A106364.P12420427236520049505

/-! ## A106364.P1891932011087975274

`A261104(A148325(n)-A349800(n))`
-/

namespace A106364.P1891932011087975274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A148325 n - A349800 n).toNat

end

end A106364.P1891932011087975274

/-! ## A106364.P12000319294083414453

`A261104(A148325(n)-A351983(n))`
-/

namespace A106364.P12000319294083414453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A148325 n - A351983 n).toNat

end

end A106364.P12000319294083414453

/-! ## A106364.P5020951472356161636

`A034298(A204855(n))`
-/

namespace A106364.P5020951472356161636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034298 (A204855 n).toNat

end

end A106364.P5020951472356161636

/-!
# A106365: Number of necklaces with n beads of 3 colors, no 2 adjacent beads the same color.

The programs for A106365, the canonical program `A106365.P1754909470558632243` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106365 has offset 1).

The definition of A106365 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106365.P7025836819281728150

`A000031(n+1)+xor(1, A062157(n))`
-/

namespace A106365.P7025836819281728150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (n + 1) + Int.xor 1 (A062157 n)

end

end A106365.P7025836819281728150

namespace A106365

/-- `A000031(n+1)+xor(1, A062157(n))` -/
def P7025836819281728150.Spec : Prop :=
  ∀ n, P7025836819281728150.a n = A106365 (n + 1)

end A106365

/-! ## A106365.P9750351024499808661

`A008965(n+1)-(A000295(n)+n)%6+2`
-/

namespace A106365.P9750351024499808661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 (n + 1) - Int.tmod (A000295 n + (n : ℤ)) 6 + 2

end

end A106365.P9750351024499808661

namespace A106365

/-- `A008965(n+1)-(A000295(n)+n)%6+2` -/
def P9750351024499808661.Spec : Prop :=
  ∀ n, P9750351024499808661.a n = A106365 (n + 1)

end A106365

/-! ## A106365.P1754909470558632243

`A306896(A254667(n+1))/A254667(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A106365

/-- `A306896(A254667(n+1))/A254667(n+1)` -/
def P1754909470558632243.Spec : Prop :=
  ∀ n, P1754909470558632243.a n = (A106365 (n + 1) : ℚ)

end A106365

/-! ## A106365.P2061561361693517689

`A208535(∑[n+3]+1)`
-/

namespace A106365.P2061561361693517689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208535 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A106365.P2061561361693517689

namespace A106365

/-- `A208535(∑[n+3]+1)` -/
def P2061561361693517689.Spec : Prop :=
  ∀ n, P2061561361693517689.a n = A106365 (n + 1)

end A106365

/-! ## A106365.P14049477442767013252

`A298263(A026905(n+1))`
-/

namespace A106365.P14049477442767013252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298263 (A026905 (n + 1)).toNat

end

end A106365.P14049477442767013252

namespace A106365

/-- `A298263(A026905(n+1))` -/
def P14049477442767013252.Spec : Prop :=
  ∀ n, P14049477442767013252.a n = A106365 (n + 1)

end A106365

/-!
# A106366: Number of necklaces with n beads of 4 colors, no 2 adjacent beads the same color.

The programs for A106366, there is no canonical definition to state claims against.
-/

/-! ## A106366.P10613182669047424471

`A208535(A055998(n+2))`
-/

namespace A106366.P10613182669047424471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208535 (A055998 (n + 2)).toNat

end

end A106366.P10613182669047424471

/-! ## A106366.P3750541388072603742

`A208535(A155212(n)+5)`
-/

namespace A106366.P3750541388072603742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208535 (A155212 n + 5).toNat

end

end A106366.P3750541388072603742

/-! ## A106366.P7488318931923330482

`A208535(A056000(n)+7)`
-/

namespace A106366.P7488318931923330482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208535 (A056000 n + 7).toNat

end

end A106366.P7488318931923330482

/-! ## A106366.P15509241975396033134

`A208535(Δ[A006416(n+2)])`
-/

namespace A106366.P15509241975396033134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208535 (f1 (n + 1) - f1 n).toNat

end

end A106366.P15509241975396033134

/-! ## A106366.P3078078183814866748

`A208535(A052905(n+1)+2)`
-/

namespace A106366.P3078078183814866748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208535 (A052905 (n + 1) + 2).toNat

end

end A106366.P3078078183814866748

/-!
# A106367: Number of necklaces with n beads of 5 colors, no 2 adjacent beads the same color.

The programs for A106367, there is no canonical definition to state claims against.
-/

/-! ## A106367.P17005072457773883181

`A208535(∑[n+1]+4*n+10)`
-/

namespace A106367.P17005072457773883181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208535 (∑ j ∈ Finset.range (n + 1), f1 j + (4 * n + 10))

end

end A106367.P17005072457773883181

/-! ## A106367.P13194138003193458880

`A208535(A056115(n)+11)+A063524(n+2)`
-/

namespace A106367.P13194138003193458880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208535 (A056115 n + 11).toNat + A063524 (n + 2)

end

end A106367.P13194138003193458880

/-! ## A106367.P10901737847299968394

`or(A000007(n), A208535(A000217(n+5)-4))`
-/

namespace A106367.P10901737847299968394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A208535 (A000217 (n + 5) - 4).toNat)

end

end A106367.P10901737847299968394

/-! ## A106367.P13140872211155730506

`A208535(A056115(n)+11)+A005369(3*n+4)`
-/

namespace A106367.P13140872211155730506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208535 (A056115 n + 11).toNat + A005369 (3 * n + 4)

end

end A106367.P13140872211155730506

/-! ## A106367.P14008049636902224649

`A208535(A000217(n+5)-4)+A000038(n)%2`
-/

namespace A106367.P14008049636902224649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208535 (A000217 (n + 5) - 4).toNat + Int.tmod (A000038 n) 2

end

end A106367.P14008049636902224649

/-!
# A106368: Necklaces with n beads of 6 colors, no 2 adjacent beads the same color.

The programs for A106368, there is no canonical definition to state claims against.
-/

/-! ## A106368.P15612986570453095127

`A208535(A052905(n+3))`
-/

namespace A106368.P15612986570453095127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208535 (A052905 (n + 3)).toNat

end

end A106368.P15612986570453095127

/-! ## A106368.P8001343691606295912

`A208535(A055999(n+3)+1)`
-/

namespace A106368.P8001343691606295912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208535 (A055999 (n + 3) + 1).toNat

end

end A106368.P8001343691606295912

/-! ## A106368.P15069646749863142423

`A208535(A000096(n+5)-4)`
-/

namespace A106368.P15069646749863142423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208535 (A000096 (n + 5) - 4).toNat

end

end A106368.P15069646749863142423

/-! ## A106368.P7252376166524355456

`A208535(A000217(n+6)-5)`
-/

namespace A106368.P7252376166524355456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208535 (A000217 (n + 6) - 5).toNat

end

end A106368.P7252376166524355456

/-! ## A106368.P18227610568994081827

`A208535(A000124(n+6)-6)`
-/

namespace A106368.P18227610568994081827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208535 (A000124 (n + 6) - 6).toNat

end

end A106368.P18227610568994081827

/-! ## A106368.P6832593185809566419

`A208535(Δ[A023551(n+1)]+1)`
-/

namespace A106368.P6832593185809566419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208535 (f1 (n + 1) - f1 n + 1).toNat

end

end A106368.P6832593185809566419

/-!
# A106369: Number of circular compositions of n such that no two adjacent parts are equal.

The programs for A106369, there is no canonical definition to state claims against.
-/

/-! ## A106369.P9028216802988939483

`2*A292906(n+1)-A292200(n+1)`
-/

namespace A106369.P9028216802988939483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A292906 (n + 1) - A292200 (n + 1)

end

end A106369.P9028216802988939483

/-! ## A106369.P322720304527543497

`A292906(n+1)+A292906(n+1)-ceil(A291941(n+1)/2)`
-/

namespace A106369.P322720304527543497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292906 (n + 1) + (A292906 (n + 1) - ⌈(A291941 (n + 1) : ℚ) / 2⌉)

end

end A106369.P322720304527543497

/-! ## A106369.P7265089747007931219

`A004277(A292906(n+1))-A292200(n+1)`
-/

namespace A106369.P7265089747007931219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A292906 (n + 1)).toNat - A292200 (n + 1)

end

end A106369.P7265089747007931219

/-! ## A106369.P3938519839100217806

`A004277(A292906(n+1))-ceil(A291941(n+1)/2)`
-/

namespace A106369.P3938519839100217806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A292906 (n + 1)).toNat - ⌈(A291941 (n + 1) : ℚ) / 2⌉

end

end A106369.P3938519839100217806

/-! ## A106369.P7374451687226853129

`A004277(A292906(n+1))-A123108(A291941(n+1)+1)`
-/

namespace A106369.P7374451687226853129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A292906 (n + 1)).toNat - A123108 (A291941 (n + 1) + 1).toNat

end

end A106369.P7374451687226853129

/-!
# A106370: Smallest b > 1 such that n contains no zeros in its base b representation.

The programs for A106370, there is no canonical definition to state claims against.
-/

/-! ## A106370.P14409536691250932435

`A273040(n+1)-A025466(A210021(n))`
-/

namespace A106370.P14409536691250932435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273040 (n + 1) - A025466 (A210021 n).toNat

end

end A106370.P14409536691250932435

/-! ## A106370.P16390948853730736923

`A012245(n+1)+A001221(A189894(n+1))`
-/

namespace A106370.P16390948853730736923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012245 (n + 1) + A001221 (A189894 (n + 1)).toNat

end

end A106370.P16390948853730736923

/-! ## A106370.P8708217972787811744

`A273040(n+1)-A102683(A187829(n+1))`
-/

namespace A106370.P8708217972787811744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273040 (n + 1) - A102683 (A187829 (n + 1)).toNat

end

end A106370.P8708217972787811744

/-! ## A106370.P10962298163751089216

`A007978(A046641(n+1)*A187829(n+1))`
-/

namespace A106370.P10962298163751089216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (A046641 (n + 1) * A187829 (n + 1)).toNat

end

end A106370.P10962298163751089216

/-! ## A106370.P1734987955413697669

`A327390(A325182(n)+A044820(n+5))`
-/

namespace A106370.P1734987955413697669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327390 (A325182 n + A044820 (n + 5)).toNat

end

end A106370.P1734987955413697669

/-!
# A106371: Representation of n in base b, where b is minimal such that n contains no zeros: b = A106370(n).

The programs for A106371, there is no canonical definition to state claims against.
-/

/-! ## A106371.P16812850890269604109

`A037916(A052849(n)+2)`
-/

namespace A106371.P16812850890269604109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037916 (A052849 n + 2).toNat

end

end A106371.P16812850890269604109

/-! ## A106371.P15977305387286117538

`A289675(floor(log(A124827(3*(n+1)))))`
-/

namespace A106371.P15977305387286117538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289675 ⌊Real.log (A124827 (3 * (n + 1)) : ℝ)⌋.toNat

end

end A106371.P15977305387286117538

/-! ## A106371.P13169031213725013623

`A004719(A105424(n)+A008480(n+1))`
-/

namespace A106371.P13169031213725013623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A105424 n + A008480 (n + 1)).toNat

end

end A106371.P13169031213725013623

/-!
# A106372: Smallest number m containing no zeros in base n representation but at least one zero in all base b representations with 1

The programs for A106372, there is no canonical definition to state claims against.
-/

/-! ## A106372.P5098082728387076430

`A106432(A049311(n+1))*A217538(n+1)`
-/

namespace A106372.P5098082728387076430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (A049311 (n + 1)).toNat * A217538 (n + 1)

end

end A106372.P5098082728387076430

/-! ## A106372.P1780222809479416295

`A193896(A000075(n+1))`
-/

namespace A106372.P1780222809479416295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193896 (A000075 (n + 1)).toNat

end

end A106372.P1780222809479416295

/-! ## A106372.P12551886212957708454

`(n+1)*A181024(A006452(n))`
-/

namespace A106372.P12551886212957708454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A181024 (A006452 n).toNat

end

end A106372.P12551886212957708454

/-!
# A106376: Number of binary trees (each vertex has 0, or 1 left, or 1 right, or 2 children) with n edges and having all leaves at the same level.

The programs for A106376, there is no canonical definition to state claims against.
-/

/-! ## A106376.P12058302714978313306

`floor(root(A186831(n+1), 6))`
-/

namespace A106376.P12058302714978313306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A186831 (n + 1) : ℝ) ^ (1 / (6 : ℝ))⌋

end

end A106376.P12058302714978313306

/-! ## A106376.P8656141709130696604

`A092213(A001668(n))`
-/

namespace A106376.P8656141709130696604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092213 (A001668 n).toNat

end

end A106376.P8656141709130696604

/-!
# A106387: Numbers j such that 6j^2 + 6j + 1 = 11k.

The programs for A106387, the canonical program `A106387.P824698879860293871` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106387 has offset 1).

The definition of A106387 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106387.P824698879860293871

`11*n-a(n-1)-1` with `a(0)=4`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106387

/-- `11*n-a(n-1)-1` -/
def P824698879860293871.Spec : Prop :=
  ∀ n, P824698879860293871.a n = A106387 (n + 1)

theorem P824698879860293871.correct : P824698879860293871.Spec := by
  intro n
  simp only [A106387, Nat.add_sub_cancel]

end A106387

/-! ## A106387.P15022018717427690463

`(22*(n+1)-7*(-1)^(n+1)-13)/4`
-/

namespace A106387.P15022018717427690463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((22 * (n + 1) : ℤ) - 7 * (-1) ^ (n + 1) - 13 : ℚ) / 4

end

end A106387.P15022018717427690463

namespace A106387

/-- `(22*(n+1)-7*(-1)^(n+1)-13)/4` -/
def P15022018717427690463.Spec : Prop :=
  ∀ n, P15022018717427690463.a n = (A106387 (n + 1) : ℚ)

theorem P15022018717427690463.correct : P15022018717427690463.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A106387, Nat.add_sub_cancel, A106387.P15022018717427690463.a, A106387.P824698879860293871.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A106387, Nat.add_sub_cancel, A106387.P15022018717427690463.a, A106387.P824698879860293871.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A106387

/-! ## A106387.P2016608521913209781

`a(n-2)+11` with `a(0)=4, a(1)=6`
-/

namespace A106387.P2016608521913209781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 6] fun n a =>
  a (n - 2) + 11

end

end A106387.P2016608521913209781

namespace A106387

/-- `a(n-2)+11` -/
def P2016608521913209781.Spec : Prop :=
  ∀ n, (P2016608521913209781.a n : ℤ) = A106387 (n + 1)

end A106387

/-! ## A106387.P9945012604891728911

`∑[11-a(n-1)]` with `a(0)=4, a(1)=2`
-/

namespace A106387.P9945012604891728911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  11 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106387.P9945012604891728911

namespace A106387

/-- `∑[11-a(n-1)]` -/
def P9945012604891728911.Spec : Prop :=
  ∀ n, P9945012604891728911.a n = A106387 (n + 1)

end A106387

/-! ## A106387.P9496537591440257365

`∑[∑[ogf((4+2x+5x^2)/(1+x))]]`
-/

namespace A106387.P9496537591440257365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 2, 5] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106387.P9496537591440257365

namespace A106387

/-- `∑[∑[ogf((4+2x+5x^2)/(1+x))]]` -/
def P9496537591440257365.Spec : Prop :=
  ∀ n, P9496537591440257365.a n = A106387 (n + 1)

end A106387

/-! ## A106387.P10003175467266785017

`ogf((4+2x+5x^2)/(1-x-x^2+x^3))`
-/

namespace A106387.P10003175467266785017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 2, 5] [1, -1, -1, 1] n

end

end A106387.P10003175467266785017

namespace A106387

/-- `ogf((4+2x+5x^2)/(1-x-x^2+x^3))` -/
def P10003175467266785017.Spec : Prop :=
  ∀ n, P10003175467266785017.a n = A106387 (n + 1)

end A106387

/-! ## A106387.P10375028132891721008

`∑[gcd(2, n)^3+1]-5`
-/

namespace A106387.P10375028132891721008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 3 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 5

end

end A106387.P10375028132891721008

namespace A106387

/-- `∑[gcd(2, n)^3+1]-5` -/
def P10375028132891721008.Spec : Prop :=
  ∀ n, P10375028132891721008.a n = A106387 (n + 1)

end A106387

/-! ## A106387.P16769887662338324108

`xor(1, n)+3*comp[3*n]`
-/

namespace A106387.P16769887662338324108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A106387.P16769887662338324108

namespace A106387

/-- `xor(1, n)+3*comp[3*n]` -/
def P16769887662338324108.Spec : Prop :=
  ∀ n, (P16769887662338324108.a n : ℤ) = A106387 (n + 1)

end A106387

/-! ## A106387.P5519605590277184214

`∑[gcd(8, and(1, n))]+n-4`
-/

namespace A106387.P5519605590277184214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 8 (Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n : ℤ) - 4)

end

end A106387.P5519605590277184214

namespace A106387

/-- `∑[gcd(8, and(1, n))]+n-4` -/
def P5519605590277184214.Spec : Prop :=
  ∀ n, P5519605590277184214.a n = A106387 (n + 1)

end A106387

/-! ## A106387.P17504094300313643805

`record[lcm(3, n+1)]+xor(1, n)`
-/

namespace A106387.P17504094300313643805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + Nat.xor 1 n

end

end A106387.P17504094300313643805

namespace A106387

/-- `record[lcm(3, n+1)]+xor(1, n)` -/
def P17504094300313643805.Spec : Prop :=
  ∀ n, (P17504094300313643805.a n : ℤ) = A106387 (n + 1)

end A106387

/-! ## A106387.P6355508368995740371

`record[n-lcm(46, dr(n))]+4+n`
-/

namespace A106387.P6355508368995740371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.lcm 46 (SequenceMachineLib.digitalRoot (n : ℤ)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 4 + (n : ℤ)

end

end A106387.P6355508368995740371

namespace A106387

/-- `record[n-lcm(46, dr(n))]+4+n` -/
def P6355508368995740371.Spec : Prop :=
  ∀ n, P6355508368995740371.a n = A106387 (n + 1)

end A106387

/-! ## A106387.P18363388355418334966

`xor(3, 6*n)+2-∑[char[2*n]]`
-/

namespace A106387.P18363388355418334966
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 (6 * n) + 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A106387.P18363388355418334966

namespace A106387

/-- `xor(3, 6*n)+2-∑[char[2*n]]` -/
def P18363388355418334966.Spec : Prop :=
  ∀ n, P18363388355418334966.a n = A106387 (n + 1)

end A106387

/-! ## A106387.P4896513945935072834

`lt[dr(n+3)+n, n+3]+n-3`
-/

namespace A106387.P4896513945935072834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n + 3 : ℤ) + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) + ((n : ℤ) - 3)

end

end A106387.P4896513945935072834

namespace A106387

/-- `lt[dr(n+3)+n, n+3]+n-3` -/
def P4896513945935072834.Spec : Prop :=
  ∀ n, P4896513945935072834.a n = A106387 (n + 1)

end A106387

/-! ## A106387.P3641792847901103309

`∑[A040019(n)]+n`
-/

namespace A106387.P3641792847901103309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A106387.P3641792847901103309

namespace A106387

/-- `∑[A040019(n)]+n` -/
def P3641792847901103309.Spec : Prop :=
  ∀ n, P3641792847901103309.a n = A106387 (n + 1)

end A106387

/-! ## A106387.P9720314463377292016

`A156638(n+1)+n`
-/

namespace A106387.P9720314463377292016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156638 (n + 1) + (n : ℤ)

end

end A106387.P9720314463377292016

namespace A106387

/-- `A156638(n+1)+n` -/
def P9720314463377292016.Spec : Prop :=
  ∀ n, P9720314463377292016.a n = A106387 (n + 1)

end A106387

/-! ## A106387.P8828358387669257747

`∑[dr(A040181(n))]+n`
-/

namespace A106387.P8828358387669257747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040181 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A106387.P8828358387669257747

namespace A106387

/-- `∑[dr(A040181(n))]+n` -/
def P8828358387669257747.Spec : Prop :=
  ∀ n, (P8828358387669257747.a n : ℤ) = A106387 (n + 1)

end A106387

/-! ## A106387.P18228825914081035869

`∑[dr(A040505(n))]+n`
-/

namespace A106387.P18228825914081035869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040505 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A106387.P18228825914081035869

namespace A106387

/-- `∑[dr(A040505(n))]+n` -/
def P18228825914081035869.Spec : Prop :=
  ∀ n, (P18228825914081035869.a n : ℤ) = A106387 (n + 1)

end A106387

/-! ## A106387.P13720313749926688008

`∑[A023400(a(n-1))]` with `a(0)=4`
-/

namespace A106387.P13720313749926688008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A023400 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106387.P13720313749926688008

namespace A106387

/-- `∑[A023400(a(n-1))]` -/
def P13720313749926688008.Spec : Prop :=
  ∀ n, P13720313749926688008.a n = A106387 (n + 1)

end A106387

/-! ## A106387.P3113544625248819773

`∑[A029688(a(n-1))]` with `a(0)=4`
-/

namespace A106387.P3113544625248819773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A029688 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106387.P3113544625248819773

namespace A106387

/-- `∑[A029688(a(n-1))]` -/
def P3113544625248819773.Spec : Prop :=
  ∀ n, P3113544625248819773.a n = A106387 (n + 1)

end A106387

/-! ## A106387.P8781977929881874062

`∑[A188933(a(n-1))]` with `a(0)=4`
-/

namespace A106387.P8781977929881874062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A188933 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106387.P8781977929881874062

namespace A106387

/-- `∑[A188933(a(n-1))]` -/
def P8781977929881874062.Spec : Prop :=
  ∀ n, P8781977929881874062.a n = A106387 (n + 1)

end A106387

/-!
# A106388: Numbers k such that 11k = 6j^2 + 6j + 1.

The programs for A106388, the canonical program `A106388.P8450295460673407355` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106388 has offset 1).

The definition of A106388 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106388.P8450295460673407355

`(66*(n+1)*n-21*(2*(n+1)-1)*(-1)^(n+1)+23)/4`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106388

/-- `(66*(n+1)*n-21*(2*(n+1)-1)*(-1)^(n+1)+23)/4` -/
def P8450295460673407355.Spec : Prop :=
  ∀ n, P8450295460673407355.a n = (A106388 (n + 1) : ℚ)

end A106388

/-! ## A106388.P9611018495557512792

`12*A195313(n)+11`
-/

namespace A106388.P9611018495557512792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A195313 n + 11

end

end A106388.P9611018495557512792

namespace A106388

/-- `12*A195313(n)+11` -/
def P9611018495557512792.Spec : Prop :=
  ∀ n, P9611018495557512792.a n = A106388 (n + 1)

end A106388

/-! ## A106388.P11975595045030400517

`A195313(n)+A083511(n)`
-/

namespace A106388.P11975595045030400517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195313 n + A083511 n

end

end A106388.P11975595045030400517

namespace A106388

/-- `A195313(n)+A083511(n)` -/
def P11975595045030400517.Spec : Prop :=
  ∀ n, P11975595045030400517.a n = A106388 (n + 1)

end A106388

/-! ## A106388.P10662984449857243488

`A001057(n)+11*A036499(n+1)`
-/

namespace A106388.P10662984449857243488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n + 11 * A036499 (n + 1)

end

end A106388.P10662984449857243488

namespace A106388

/-- `A001057(n)+11*A036499(n+1)` -/
def P10662984449857243488.Spec : Prop :=
  ∀ n, P10662984449857243488.a n = A106388 (n + 1)

end A106388

/-! ## A106388.P14632397476682471110

`round(sqrt(A113338(n+1)*A179088(n+1)))`
-/

namespace A106388.P14632397476682471110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A113338 (n + 1) * A179088 (n + 1) : ℝ))

end

end A106388.P14632397476682471110

namespace A106388

/-- `round(sqrt(A113338(n+1)*A179088(n+1)))` -/
def P14632397476682471110.Spec : Prop :=
  ∀ n, P14632397476682471110.a n = A106388 (n + 1)

end A106388

/-! ## A106388.P9418195413726549534

`A168329(n+1)²+2*A119617(n+1)`
-/

namespace A106388.P9418195413726549534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168329 (n + 1) ^ 2 + 2 * A119617 (n + 1)

end

end A106388.P9418195413726549534

namespace A106388

/-- `A168329(n+1)²+2*A119617(n+1)` -/
def P9418195413726549534.Spec : Prop :=
  ∀ n, P9418195413726549534.a n = A106388 (n + 1)

end A106388

/-! ## A106388.P17716490707324028691

`A033428(A047221(n+1))-A135556(n+1)`
-/

namespace A106388.P17716490707324028691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 (A047221 (n + 1)).toNat - A135556 (n + 1)

end

end A106388.P17716490707324028691

namespace A106388

/-- `A033428(A047221(n+1))-A135556(n+1)` -/
def P17716490707324028691.Spec : Prop :=
  ∀ n, P17716490707324028691.a n = A106388 (n + 1)

end A106388

/-! ## A106388.P11532936100500512975

`A186424(A047243(n+1))+A028896(n)`
-/

namespace A106388.P11532936100500512975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186424 (A047243 (n + 1)).toNat + A028896 n

end

end A106388.P11532936100500512975

namespace A106388

/-- `A186424(A047243(n+1))+A028896(n)` -/
def P11532936100500512975.Spec : Prop :=
  ∀ n, P11532936100500512975.a n = A106388 (n + 1)

end A106388

/-! ## A106388.P4833166985947013274

`A017653(A195313(n))`
-/

namespace A106388.P4833166985947013274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 (A195313 n).toNat

end

end A106388.P4833166985947013274

namespace A106388

/-- `A017653(A195313(n))` -/
def P4833166985947013274.Spec : Prop :=
  ∀ n, P4833166985947013274.a n = A106388 (n + 1)

end A106388

/-! ## A106388.P1142064286154934861

`A195313(n)+A008593(A195313(n)+1)`
-/

namespace A106388.P1142064286154934861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195313 n + A008593 (A195313 n + 1).toNat

end

end A106388.P1142064286154934861

namespace A106388

/-- `A195313(n)+A008593(A195313(n)+1)` -/
def P1142064286154934861.Spec : Prop :=
  ∀ n, P1142064286154934861.a n = A106388 (n + 1)

end A106388

/-!
# A106389: Numbers j such that 6j^2 + 6j + 1 = 13k.

The programs for A106389, the canonical program `A106389.P7712984513333143453` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106389 has offset 1).

The definition of A106389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106389.P7712984513333143453

`a(n-2)+13` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106389

/-- `a(n-2)+13` -/
def P7712984513333143453.Spec : Prop :=
  ∀ n, (P7712984513333143453.a n : ℤ) = A106389 (n + 1)

theorem P7712984513333143453.correct : P7712984513333143453.Spec := by
  intro n
  simp only [A106389, Nat.add_sub_cancel]

end A106389

/-! ## A106389.P9180947392330928003

`∑[abs(a(n-2))]` with `a(0)=1, a(1)=10, a(2)=3`
-/

namespace A106389.P9180947392330928003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10, 3] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106389.P9180947392330928003

namespace A106389

/-- `∑[abs(a(n-2))]` -/
def P9180947392330928003.Spec : Prop :=
  ∀ n, (P9180947392330928003.a n : ℤ) = A106389 (n + 1)

end A106389

/-! ## A106389.P11872353880439895746

`∑[13-a(n-1)]` with `a(0)=1, a(1)=10`
-/

namespace A106389.P11872353880439895746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  13 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106389.P11872353880439895746

namespace A106389

/-- `∑[13-a(n-1)]` -/
def P11872353880439895746.Spec : Prop :=
  ∀ n, P11872353880439895746.a n = A106389 (n + 1)

end A106389

/-! ## A106389.P15507767076006533983

`∑[∑[ogf((1+10x+2x^2)/(1+x))]]`
-/

namespace A106389.P15507767076006533983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, 2] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106389.P15507767076006533983

namespace A106389

/-- `∑[∑[ogf((1+10x+2x^2)/(1+x))]]` -/
def P15507767076006533983.Spec : Prop :=
  ∀ n, P15507767076006533983.a n = A106389 (n + 1)

end A106389

/-! ## A106389.P9531224548990535256

`ogf((1+10x+2x^2)/(1-x-x^2+x^3))`
-/

namespace A106389.P9531224548990535256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, 2] [1, -1, -1, 1] n

end

end A106389.P9531224548990535256

namespace A106389

/-- `ogf((1+10x+2x^2)/(1-x-x^2+x^3))` -/
def P9531224548990535256.Spec : Prop :=
  ∀ n, P9531224548990535256.a n = A106389 (n + 1)

end A106389

/-! ## A106389.P125793653733460065

`13*n-1-a(n-1)` with `a(0)=1`
-/

namespace A106389.P125793653733460065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (13 * n : ℤ) - 1 - a (n - 1)

end

end A106389.P125793653733460065

namespace A106389

/-- `13*n-1-a(n-1)` -/
def P125793653733460065.Spec : Prop :=
  ∀ n, P125793653733460065.a n = A106389 (n + 1)

end A106389

/-! ## A106389.P5273620073344219498

`∑[gcd(8, 1-n²)]+2*n`
-/

namespace A106389.P5273620073344219498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 8 (1 - (n ^ 2 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * n

end

end A106389.P5273620073344219498

namespace A106389

/-- `∑[gcd(8, 1-n²)]+2*n` -/
def P5273620073344219498.Spec : Prop :=
  ∀ n, (P5273620073344219498.a n : ℤ) = A106389 (n + 1)

end A106389

/-! ## A106389.P11074539969090951826

`∑[gcd(2, n+1)^3+2]-2`
-/

namespace A106389.P11074539969090951826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) ^ 3 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A106389.P11074539969090951826

namespace A106389

/-- `∑[gcd(2, n+1)^3+2]-2` -/
def P11074539969090951826.Spec : Prop :=
  ∀ n, P11074539969090951826.a n = A106389 (n + 1)

end A106389

/-! ## A106389.P6913339684931533271

`lt[dr(n+2)+n, n+3]+2*n+1`
-/

namespace A106389.P6913339684931533271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n + 2 : ℤ) + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + (2 * n + 1)

end

end A106389.P6913339684931533271

namespace A106389

/-- `lt[dr(n+2)+n, n+3]+2*n+1` -/
def P6913339684931533271.Spec : Prop :=
  ∀ n, (P6913339684931533271.a n : ℤ) = A106389 (n + 1)

end A106389

/-! ## A106389.P10169746050029263203

`∑[A010708(n)]-2`
-/

namespace A106389.P10169746050029263203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A106389.P10169746050029263203

namespace A106389

/-- `∑[A010708(n)]-2` -/
def P10169746050029263203.Spec : Prop :=
  ∀ n, P10169746050029263203.a n = A106389 (n + 1)

end A106389

/-! ## A106389.P1513149108908130684

`Δ[A195043(n)]+n`
-/

namespace A106389.P1513149108908130684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A106389.P1513149108908130684

namespace A106389

/-- `Δ[A195043(n)]+n` -/
def P1513149108908130684.Spec : Prop :=
  ∀ n, P1513149108908130684.a n = A106389 (n + 1)

end A106389

/-! ## A106389.P6311658773067404861

`A175885(n+1)+n`
-/

namespace A106389.P6311658773067404861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175885 (n + 1) + (n : ℤ)

end

end A106389.P6311658773067404861

namespace A106389

/-- `A175885(n+1)+n` -/
def P6311658773067404861.Spec : Prop :=
  ∀ n, P6311658773067404861.a n = A106389 (n + 1)

end A106389

/-! ## A106389.P16648476309966823286

`∑[A010699(n)+1]-2`
-/

namespace A106389.P16648476309966823286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010699 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A106389.P16648476309966823286

namespace A106389

/-- `∑[A010699(n)+1]-2` -/
def P16648476309966823286.Spec : Prop :=
  ∀ n, P16648476309966823286.a n = A106389 (n + 1)

end A106389

/-! ## A106389.P12563432236980152870

`∑[A010689(n)+2]-2`
-/

namespace A106389.P12563432236980152870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010689 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A106389.P12563432236980152870

namespace A106389

/-- `∑[A010689(n)+2]-2` -/
def P12563432236980152870.Spec : Prop :=
  ∀ n, P12563432236980152870.a n = A106389 (n + 1)

end A106389

/-! ## A106389.P15016075610977437814

`∑[A083950(a(n-1))]` with `a(0)=1`
-/

namespace A106389.P15016075610977437814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A083950 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106389.P15016075610977437814

namespace A106389

/-- `∑[A083950(a(n-1))]` -/
def P15016075610977437814.Spec : Prop :=
  ∀ n, P15016075610977437814.a n = A106389 (n + 1)

end A106389

/-! ## A106389.P565075764954711355

`A177964(n+1)-(n+1)`
-/

namespace A106389.P565075764954711355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177964 (n + 1) - (n + 1 : ℤ)

end

end A106389.P565075764954711355

namespace A106389

/-- `A177964(n+1)-(n+1)` -/
def P565075764954711355.Spec : Prop :=
  ∀ n, P565075764954711355.a n = A106389 (n + 1)

end A106389

/-! ## A106389.P356632753608801041

`A168337(n+1)+3*n`
-/

namespace A106389.P356632753608801041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168337 (n + 1) + (3 * n : ℤ)

end

end A106389.P356632753608801041

namespace A106389

/-- `A168337(n+1)+3*n` -/
def P356632753608801041.Spec : Prop :=
  ∀ n, P356632753608801041.a n = A106389 (n + 1)

end A106389

/-! ## A106389.P14803785710250787887

`A168198(n+1)+5*n`
-/

namespace A106389.P14803785710250787887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168198 (n + 1) + (5 * n : ℤ)

end

end A106389.P14803785710250787887

namespace A106389

/-- `A168198(n+1)+5*n` -/
def P14803785710250787887.Spec : Prop :=
  ∀ n, P14803785710250787887.a n = A106389 (n + 1)

end A106389

/-! ## A106389.P7330239178303126111

`A274406(n+1)+Δ[n²]`
-/

namespace A106389.P7330239178303126111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274406 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A106389.P7330239178303126111

namespace A106389

/-- `A274406(n+1)+Δ[n²]` -/
def P7330239178303126111.Spec : Prop :=
  ∀ n, P7330239178303126111.a n = A106389 (n + 1)

end A106389

/-! ## A106389.P11631528022847246777

`∑[A040019(n+1)]+2*n`
-/

namespace A106389.P11631528022847246777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n : ℤ)

end

end A106389.P11631528022847246777

namespace A106389

/-- `∑[A040019(n+1)]+2*n` -/
def P11631528022847246777.Spec : Prop :=
  ∀ n, P11631528022847246777.a n = A106389 (n + 1)

end A106389

/-!
# A106390: Numbers k such that 13k = 6j^2 + 6j + 1.

The programs for A106390, the canonical program `A106390.P7277479422933852833` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106390 has offset 1).

The definition of A106390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106390.P1211570985566449036

`(gcd(2, n+1)²+5*n)²-A219392(n+1)`
-/

namespace A106390.P1211570985566449036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 2 (n + 1) ^ 2 + 5 * n) ^ 2 : ℤ) - A219392 (n + 1)

end

end A106390.P1211570985566449036

namespace A106390

/-- `(gcd(2, n+1)²+5*n)²-A219392(n+1)` -/
def P1211570985566449036.Spec : Prop :=
  ∀ n, P1211570985566449036.a n = A106390 (n + 1)

end A106390

/-! ## A106390.P7277479422933852833

`A001844(n)+7*A132356(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A106390

/-- `A001844(n)+7*A132356(n)` -/
def P7277479422933852833.Spec : Prop :=
  ∀ n, P7277479422933852833.a n = A106390 (n + 1)

theorem P7277479422933852833.correct : P7277479422933852833.Spec := by
  intro n
  simp only [A106390, Nat.add_sub_cancel]

end A106390

/-! ## A106390.P15026719932096388444

`∑[A008458(n)*A010708(n)]-2`
-/

namespace A106390.P15026719932096388444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n * A010708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A106390.P15026719932096388444

namespace A106390

/-- `∑[A008458(n)*A010708(n)]-2` -/
def P15026719932096388444.Spec : Prop :=
  ∀ n, P15026719932096388444.a n = A106390 (n + 1)

end A106390

/-! ## A106390.P6655895797155827660

`A273372(n+1)-A219392(n+1)`
-/

namespace A106390.P6655895797155827660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273372 (n + 1) - A219392 (n + 1)

end

end A106390.P6655895797155827660

namespace A106390

/-- `A273372(n+1)-A219392(n+1)` -/
def P6655895797155827660.Spec : Prop :=
  ∀ n, P6655895797155827660.a n = A106390 (n + 1)

end A106390

/-! ## A106390.P7339466119980980667

`A219390(n+1)+A047522(n+1)²`
-/

namespace A106390.P7339466119980980667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219390 (n + 1) + A047522 (n + 1) ^ 2

end

end A106390.P7339466119980980667

namespace A106390

/-- `A219390(n+1)+A047522(n+1)²` -/
def P7339466119980980667.Spec : Prop :=
  ∀ n, P7339466119980980667.a n = A106390 (n + 1)

end A106390

/-! ## A106390.P16416984747132044436

`A090771(n+1)²-A219392(n+1)`
-/

namespace A106390.P16416984747132044436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1) ^ 2 - A219392 (n + 1)

end

end A106390.P16416984747132044436

namespace A106390

/-- `A090771(n+1)²-A219392(n+1)` -/
def P16416984747132044436.Spec : Prop :=
  ∀ n, P16416984747132044436.a n = A106390 (n + 1)

end A106390

/-! ## A106390.P8863085520102233859

`A047336(n+1)*A175886(n+1)-A219389(n+1)`
-/

namespace A106390.P8863085520102233859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047336 (n + 1) * A175886 (n + 1) - A219389 (n + 1)

end

end A106390.P8863085520102233859

namespace A106390

/-- `A047336(n+1)*A175886(n+1)-A219389(n+1)` -/
def P8863085520102233859.Spec : Prop :=
  ∀ n, P8863085520102233859.a n = A106390 (n + 1)

end A106390

/-! ## A106390.P9572874060710805075

`∑[A298036(n*A010708(n))]`
-/

namespace A106390.P9572874060710805075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298036 ((n : ℤ) * A010708 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106390.P9572874060710805075

namespace A106390

/-- `∑[A298036(n*A010708(n))]` -/
def P9572874060710805075.Spec : Prop :=
  ∀ n, P9572874060710805075.a n = A106390 (n + 1)

end A106390

/-! ## A106390.P14069909060382611633

`∑[A008458(n*A010708(n))]`
-/

namespace A106390.P14069909060382611633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 ((n : ℤ) * A010708 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106390.P14069909060382611633

namespace A106390

/-- `∑[A008458(n*A010708(n))]` -/
def P14069909060382611633.Spec : Prop :=
  ∀ n, P14069909060382611633.a n = A106390 (n + 1)

end A106390

/-!
# A106391: A "cosh transform" of binomial(2n,n-1).

The programs for A106391, the canonical program `A106391.P13549094547017150546` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106391 has offset 0).

The definition of A106391 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106391.P13549094547017150546

`A102319(n)-A102318(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A106391

/-- `A102319(n)-A102318(n)` -/
def P13549094547017150546.Spec : Prop :=
  ∀ n, P13549094547017150546.a n = A106391 n

theorem P13549094547017150546.correct : P13549094547017150546.Spec := by
  intro n
  simp only [A106391]

end A106391

/-! ## A106391.P7595886355400324475

`A057354(A151136(n))`
-/

namespace A106391.P7595886355400324475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A151136 n).toNat

end

end A106391.P7595886355400324475

namespace A106391

/-- `A057354(A151136(n))` -/
def P7595886355400324475.Spec : Prop :=
  ∀ n, P7595886355400324475.a n = A106391 n

end A106391

/-! ## A106391.P1693141546596212562

`A180639(A397147(n+2))`
-/

namespace A106391.P1693141546596212562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180639 (A397147 (n + 2)).toNat

end

end A106391.P1693141546596212562

namespace A106391

/-- `A180639(A397147(n+2))` -/
def P1693141546596212562.Spec : Prop :=
  ∀ n, P1693141546596212562.a n = A106391 n

end A106391

/-!
# A106392: Expansion of 1/(1 - 6*x + 10*x^2).

The programs for A106392, the canonical program `A106392.P4753761336017538630` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106392 has offset 0).

The definition of A106392 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-6x+10x^2))` (program `A106392.P4753761336017538630`, by `A106392.P4753761336017538630.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106392.P4753761336017538630

`ogf(1/(1-6x+10x^2))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106392

/-- `ogf(1/(1-6x+10x^2))` -/
def P4753761336017538630.Spec : Prop :=
  ∀ n, P4753761336017538630.a n = A106392 n

theorem P4753761336017538630.correct : P4753761336017538630.Spec := by
  intro n
  simp only [A106392]

end A106392

/-! ## A106392.P9724999714096263167

`6*a(n-1)-10*a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A106392.P9724999714096263167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  6 * a (n - 1) - 10 * a (n - 2)

end

end A106392.P9724999714096263167

namespace A106392

/-- `6*a(n-1)-10*a(n-2)` -/
def P9724999714096263167.Spec : Prop :=
  ∀ n, P9724999714096263167.a n = A106392 n

end A106392

/-!
# A106393: Expansion of 1/(1 - 8*x + 17*x^2).

The programs for A106393, the canonical program `A106393.P2432681876309489030` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106393 has offset 0).

The definition of A106393 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-8x+17x^2))` (program `A106393.P2432681876309489030`, by `A106393.P2432681876309489030.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106393.P2432681876309489030

`ogf(1/(1-8x+17x^2))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106393

/-- `ogf(1/(1-8x+17x^2))` -/
def P2432681876309489030.Spec : Prop :=
  ∀ n, P2432681876309489030.a n = A106393 n

theorem P2432681876309489030.correct : P2432681876309489030.Spec := by
  intro n
  simp only [A106393]

end A106393

/-! ## A106393.P9319359515427048273

`8*a(n-1)-17*a(n-2)` with `a(0)=1, a(1)=8`
-/

namespace A106393.P9319359515427048273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  8 * a (n - 1) - 17 * a (n - 2)

end

end A106393.P9319359515427048273

namespace A106393

/-- `8*a(n-1)-17*a(n-2)` -/
def P9319359515427048273.Spec : Prop :=
  ∀ n, P9319359515427048273.a n = A106393 n

end A106393

/-! ## A106393.P2033323738778276473

`record[abs(A076346(n+3))]`
-/

namespace A106393.P2033323738778276473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A076346 (n + 3)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106393.P2033323738778276473

namespace A106393

/-- `record[abs(A076346(n+3))]` -/
def P2033323738778276473.Spec : Prop :=
  ∀ n, P2033323738778276473.a n = A106393 n

end A106393

/-!
# A106394: Table read by rows, where n-th row is denominators of Egyptian fraction, derived using the greedy algorithm, of the n-th harmonic number (Sum_{k=1..n} 1/k).

The programs for A106394, there is no canonical definition to state claims against.
-/

/-! ## A106394.P96026904854481513

`gcd(A010848(A143658(n)), A059300(n))`
-/

namespace A106394.P96026904854481513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010848 (A143658 n).toNat) (A059300 n)

end

end A106394.P96026904854481513

/-!
# A106395: a(n) = sum of terms of n-th row of A106394.

The programs for A106395, there is no canonical definition to state claims against.
-/

/-! ## A106395.P7173705908339058316

`A274262(a(n-1)-n+1)+2^n` with `a(0)=1`
-/

namespace A106395.P7173705908339058316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A274262 (a (n - 1) - (n : ℤ) + 1).toNat + (2 ^ n : ℤ)

end

end A106395.P7173705908339058316

/-! ## A106395.P13146650909274938565

`∑[A086671(∑[A006057(n)])]`
-/

namespace A106395.P13146650909274938565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086671 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106395.P13146650909274938565

/-!
# A106396: Triangle read by rows, generated from the Narayana triangle as a matrix.

The programs for A106396, there is no canonical definition to state claims against.
-/

/-! ## A106396.P16724360566817535853

`A137940(∑[char[∑[n]]]²-n)`
-/

namespace A106396.P16724360566817535853
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137940 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A106396.P16724360566817535853

/-! ## A106396.P12556740856208716809

`xor(1, xor(1, A137940(A038722(n+1))))`
-/

namespace A106396.P12556740856208716809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A137940 (A038722 (n + 1)).toNat))

end

end A106396.P12556740856208716809

/-! ## A106396.P8364537586177958786

`gcd(A000038(n), A137940(A038722(n+1)))`
-/

namespace A106396.P8364537586177958786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A137940 (A038722 (n + 1)).toNat)

end

end A106396.P8364537586177958786

/-! ## A106396.P3421391987807434624

`lcm(A033999(n), A137940(A038722(n+1)))`
-/

namespace A106396.P3421391987807434624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A137940 (A038722 (n + 1)).toNat)

end

end A106396.P3421391987807434624

/-! ## A106396.P11594163850621050833

`A137940(A038722(n+1))%A001359(n+1)`
-/

namespace A106396.P11594163850621050833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137940 (A038722 (n + 1)).toNat) (A001359 (n + 1))

end

end A106396.P11594163850621050833

/-! ## A106396.P15291761627426799630

`A137940(A038722(n+1))+A008683(12*(n+1))`
-/

namespace A106396.P15291761627426799630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137940 (A038722 (n + 1)).toNat + A008683 (12 * (n + 1))

end

end A106396.P15291761627426799630

/-! ## A106396.P3819968536090223270

`A000040(n+2)%2*A137940(A038722(n+1))`
-/

namespace A106396.P3819968536090223270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A137940 (A038722 (n + 1)).toNat

end

end A106396.P3819968536090223270

/-! ## A106396.P10827919978102133659

`A014963(9*n+6)*A137940(A038722(n+1))`
-/

namespace A106396.P10827919978102133659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (9 * n + 6) * A137940 (A038722 (n + 1)).toNat

end

end A106396.P10827919978102133659

/-! ## A106396.P10981240400968306166

`C(A137940(A038722(n+1)), A000040(n+4)%2)`
-/

namespace A106396.P10981240400968306166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A137940 (A038722 (n + 1)).toNat).toNat (Int.tmod (A000040 (n + 4)) 2).toNat

end

end A106396.P10981240400968306166

/-!
# A106397: Binomial transform of Mertens's function sequence A002321.

The programs for A106397, there is no canonical definition to state claims against.
-/

/-! ## A106397.P9414930439550664230

`1-A172471(A082134(n))+n`
-/

namespace A106397.P9414930439550664230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A172471 (A082134 n).toNat + (n : ℤ)

end

end A106397.P9414930439550664230

/-! ## A106397.P7046988314955857267

`∑[2-A137735(A222660(n+2))]`
-/

namespace A106397.P7046988314955857267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A137735 (A222660 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106397.P7046988314955857267

/-! ## A106397.P14644343468901521624

`A056469(n)-∑[A316866(∑{digits}[n, #!])+2^n-n]`
-/

namespace A106397.P14644343468901521624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.factorial x).sum + ((2 ^ n : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106397.P14644343468901521624

/-! ## A106397.P16033711281804501897

`A030190(A006253(n))-A129707(n)`
-/

namespace A106397.P16033711281804501897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (A006253 n).toNat - A129707 n

end

end A106397.P16033711281804501897

/-!
# A106399: Binomial transform of A100060.

The programs for A106399, there is no canonical definition to state claims against.
-/

/-! ## A106399.P7983180197735928601

`ceil(2^(n-1))-A282845(A051022(n))`
-/

namespace A106399.P7983180197735928601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A282845 (A051022 n).toNat

end

end A106399.P7983180197735928601

/-! ## A106399.P14361363526303988195

`A005041(A110281(n)+A014138(n))`
-/

namespace A106399.P14361363526303988195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A110281 n + A014138 n).toNat

end

end A106399.P14361363526303988195

/-! ## A106399.P13308903270954456458

`A005041(A025147(n)-A106271(n))`
-/

namespace A106399.P13308903270954456458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A025147 n - A106271 n).toNat

end

end A106399.P13308903270954456458

/-! ## A106399.P2750299223338882710

`A073188(A014137(n)-A072642(n))`
-/

namespace A106399.P2750299223338882710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A014137 n - A072642 n).toNat

end

end A106399.P2750299223338882710

/-! ## A106399.P608193565520565912

`A295866(A061534(n))`
-/

namespace A106399.P608193565520565912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295866 (A061534 n).toNat

end

end A106399.P608193565520565912

