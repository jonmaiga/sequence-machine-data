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
import Seq.B000.C038
import Seq.B000.C040
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A047800: Number of different values of i^2 + j^2 for i,j in [0, n].

The programs for A047800, there is no canonical definition to state claims against.
-/

/-! ## A047800.P11708162422688835557

`A384797(n)+a(n-1)` with `a(0)=1`
-/

namespace A047800.P11708162422688835557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A384797 n + a (n - 1)

end

end A047800.P11708162422688835557

/-! ## A047800.P15590417011988108384

`A160663(n)+a(A000038(n))` with `a(0)=1`
-/

namespace A047800.P15590417011988108384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A160663 n + a (A000038 n).toNat

end

end A047800.P15590417011988108384

/-! ## A047800.P4023677156089715376

`A160663(n)+a(A158388(n)-1)` with `a(0)=1`
-/

namespace A047800.P4023677156089715376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A160663 n + a (A158388 n - 1).toNat

end

end A047800.P4023677156089715376

/-! ## A047800.P7652114897272296922

`A160663(A028310(n))+A158388(n)`
-/

namespace A047800.P7652114897272296922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160663 (A028310 n).toNat + A158388 n

end

end A047800.P7652114897272296922

/-! ## A047800.P7486528060124900508

`A160663(n)+A000007(a(A001222(n)))+1` with `a(0)=1`
-/

namespace A047800.P7486528060124900508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A160663 n + A000007 (a (A001222 n).toNat).toNat + 1

end

end A047800.P7486528060124900508

/-! ## A047800.P11456262287785966808

`A160663(n)+a(A127750(2*n)-2)` with `a(0)=1`
-/

namespace A047800.P11456262287785966808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A160663 n + a (A127750 (2 * n) - 2).toNat

end

end A047800.P11456262287785966808

/-! ## A047800.P11929493942697596122

`A160663(n)+A000007(a(n-1))+1` with `a(0)=1`
-/

namespace A047800.P11929493942697596122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A160663 n + A000007 (a (n - 1)).toNat + 1

end

end A047800.P11929493942697596122

/-! ## A047800.P1675025659355293753

`A301853(∑[n+1])`
-/

namespace A047800.P1675025659355293753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301853 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047800.P1675025659355293753

/-! ## A047800.P8615232823280780040

`record[A301853(A038722(n+1))]`
-/

namespace A047800.P8615232823280780040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301853 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047800.P8615232823280780040

/-! ## A047800.P2622972349664789882

`record[A301853(A000217(A263111(n)))]`
-/

namespace A047800.P2622972349664789882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301853 (A000217 (A263111 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047800.P2622972349664789882

/-! ## A047800.P17638234349944301613

`record[A301853(A000217(A067004(n+1)))]`
-/

namespace A047800.P17638234349944301613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301853 (A000217 (A067004 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047800.P17638234349944301613

/-! ## A047800.P13066172533971309717

`record[gcd(A025581(n), A301853(n+1))]`
-/

namespace A047800.P13066172533971309717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A301853 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047800.P13066172533971309717

/-!
# A047801: Number of different values of i^2+j^2+k^2+l^2 for i,j,k,l in [ 0,n ].

The programs for A047801, there is no canonical definition to state claims against.
-/

/-! ## A047801.P9134488119942092532

`∑[A122927(n)]`
-/

namespace A047801.P9134488119942092532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047801.P9134488119942092532

/-! ## A047801.P15888696150059203874

`A122927(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A047801.P15888696150059203874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A122927 n + a (A023443 n).toNat

end

end A047801.P15888696150059203874

/-! ## A047801.P67479920341326087

`A122927(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A047801.P67479920341326087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A122927 n + a (A028310 n - 1).toNat

end

end A047801.P67479920341326087

/-! ## A047801.P5693871218160284668

`A122927(n)+a(n-1-A000038(n+1))` with `a(0)=1`
-/

namespace A047801.P5693871218160284668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A122927 n + a ((n : ℤ) - 1 - A000038 (n + 1)).toNat

end

end A047801.P5693871218160284668

/-! ## A047801.P3926579718432134843

`A122927(n)+a(A004526(A004273(n)))` with `a(0)=1`
-/

namespace A047801.P3926579718432134843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A122927 n + a (A004526 (A004273 n).toNat).toNat

end

end A047801.P3926579718432134843

/-! ## A047801.P9043464536419553996

`a(n-1)+A122927(n)%A000351(n)` with `a(0)=1`
-/

namespace A047801.P9043464536419553996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A122927 n) (A000351 n)

end

end A047801.P9043464536419553996

/-!
# A047808: a(n) counts different values of i^2 + j^2 <= n^2 or number of distances from the origin to all integer points inside a circle of radius n.

The programs for A047808, there is no canonical definition to state claims against.
-/

/-! ## A047808.P5717684657886508265

`∑[A077773(A057428(n)+n)+1]`
-/

namespace A047808.P5717684657886508265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077773 (A057428 n + (n : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047808.P5717684657886508265

/-! ## A047808.P16422049467596350463

`∑[A077773(A004273(n)-n)+1]`
-/

namespace A047808.P16422049467596350463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077773 (A004273 n - (n : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047808.P16422049467596350463

/-! ## A047808.P9504758745054766298

`∑[A077773(n)+1]-A077773(n)`
-/

namespace A047808.P9504758745054766298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077773 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A077773 n

end

end A047808.P9504758745054766298

/-! ## A047808.P16079617313119438540

`∑[A077773(floor(A004273(n)/2))+1]`
-/

namespace A047808.P16079617313119438540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077773 ⌊(A004273 n : ℚ) / 2⌋.toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047808.P16079617313119438540

/-! ## A047808.P8025692753044253495

`∑[A077773(floor(A004275(n)/2))+1]`
-/

namespace A047808.P8025692753044253495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077773 ⌊(A004275 n : ℚ) / 2⌋.toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047808.P8025692753044253495

/-! ## A047808.P12652103669842644252

`eq[A060576(n), A229140(n+1)]`
-/

namespace A047808.P12652103669842644252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229140 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047808.P12652103669842644252

/-! ## A047808.P15012489846240390334

`eq[A328803(n+1)², A001481(n+1)]+1`
-/

namespace A047808.P15012489846240390334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328803 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A047808.P15012489846240390334

/-! ## A047808.P15745409082087015644

`eq[1, A010052(A001481(n+1))]+1`
-/

namespace A047808.P15745409082087015644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A001481 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A047808.P15745409082087015644

/-! ## A047808.P14510036879533842608

`A102548(n²+1)`
-/

namespace A047808.P14510036879533842608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102548 (n ^ 2 + 1)

end

end A047808.P14510036879533842608

/-! ## A047808.P8488148914955579014

`record[A010052(n)*A102548(n+1)]`
-/

namespace A047808.P8488148914955579014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n * A102548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047808.P8488148914955579014

/-! ## A047808.P2385263924486199491

`A102548(A002522(n))%A000096(n+5)`
-/

namespace A047808.P2385263924486199491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102548 (A002522 n).toNat) (A000096 (n + 5))

end

end A047808.P2385263924486199491

/-!
# A047809: a(n) counts different values of i^2+j^2+k^2 <= n^2 or number of distances from the origin to all integer points inside a sphere of radius n.

The programs for A047809, the canonical program `A047809.P213500810862372979` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047809 has offset 0).

The definition of A047809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047809.P5259184316247285409

`eq[0, A262678(A000378(n+1))]+1`
-/

namespace A047809.P5259184316247285409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262678 (A000378 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A047809.P5259184316247285409

namespace A047809

/-- `eq[0, A262678(A000378(n+1))]+1` -/
def P5259184316247285409.Spec : Prop :=
  ∀ n, (P5259184316247285409.a n : ℤ) = A047809 n

end A047809

/-! ## A047809.P16272971317045921729

`eq[1, A010052(A034045(n+1)/4)]+1`
-/

namespace A047809.P16272971317045921729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (SequenceMachineLib.roundAway ((A034045 (n + 1) : ℚ) / 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A047809.P16272971317045921729

namespace A047809

/-- `eq[1, A010052(A034045(n+1)/4)]+1` -/
def P16272971317045921729.Spec : Prop :=
  ∀ n, (P16272971317045921729.a n : ℤ) = A047809 n

end A047809

/-! ## A047809.P213500810862372979

`A071377(n²)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A047809

/-- `A071377(n²)` -/
def P213500810862372979.Spec : Prop :=
  ∀ n, P213500810862372979.a n = A047809 n

theorem P213500810862372979.correct : P213500810862372979.Spec := by
  intro n
  simp only [A047809]

end A047809

/-! ## A047809.P2102013290371770171

`A071377(A002522(n))-1`
-/

namespace A047809.P2102013290371770171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071377 (A002522 n).toNat - 1

end

end A047809.P2102013290371770171

namespace A047809

/-- `A071377(A002522(n))-1` -/
def P2102013290371770171.Spec : Prop :=
  ∀ n, P2102013290371770171.a n = A047809 n

end A047809

/-! ## A047809.P2450138068964496789

`record[A071377(n)-A262678(n)]`
-/

namespace A047809.P2450138068964496789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071377 n - A262678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047809.P2450138068964496789

namespace A047809

/-- `record[A071377(n)-A262678(n)]` -/
def P2450138068964496789.Spec : Prop :=
  ∀ n, P2450138068964496789.a n = A047809 n

end A047809

/-! ## A047809.P8396540192105799212

`A071377(A000290(n))%A246842(n+1)`
-/

namespace A047809.P8396540192105799212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071377 (A000290 n).toNat) (A246842 (n + 1))

end

end A047809.P8396540192105799212

namespace A047809

/-- `A071377(A000290(n))%A246842(n+1)` -/
def P8396540192105799212.Spec : Prop :=
  ∀ n, P8396540192105799212.a n = A047809 n

end A047809

/-!
# A047811: Numbers n >= 4 that are not palindromic in any base b, 2 <= b <= n/2.

The programs for A047811, there is no canonical definition to state claims against.
-/

/-! ## A047811.P2460936643730547363

`A016038(n+5)`
-/

namespace A047811.P2460936643730547363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016038 (n + 5)

end

end A047811.P2460936643730547363

/-! ## A047811.P6766824956108572454

`record[A016038(n-a(2%n))]` with `a(0)=4, a(1)=1, a(2)=1, a(3)=1, a(4)=0`
-/

namespace A047811.P6766824956108572454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 1, 1, 1, 0] fun n f1 =>
  A016038 ((n : ℤ) - f1 (2 % n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047811.P6766824956108572454

/-! ## A047811.P8574905147461219385

`eq[A135551(n), A356162(n)]`
-/

namespace A047811.P8574905147461219385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356162 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047811.P8574905147461219385

/-! ## A047811.P15770551823502334475

`eq[A135551(n), A158387(n+1)]`
-/

namespace A047811.P15770551823502334475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158387 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047811.P15770551823502334475

/-! ## A047811.P3082486953197901129

`eq[A135551(n), A175087(n+1)]`
-/

namespace A047811.P3082486953197901129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175087 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047811.P3082486953197901129

/-! ## A047811.P11305269107795399151

`record[A016026(n+2)+1]`
-/

namespace A047811.P11305269107795399151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016026 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047811.P11305269107795399151

/-! ## A047811.P10000637872427085746

`eq[A135549(n), A167876(n)]`
-/

namespace A047811.P10000637872427085746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135549 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167876 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047811.P10000637872427085746

/-! ## A047811.P14519941468598690995

`eq[A135551(n), A266789(n)]`
-/

namespace A047811.P14519941468598690995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266789 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047811.P14519941468598690995

/-! ## A047811.P15446425930930542513

`eq[A135551(n), A267773(n)]`
-/

namespace A047811.P15446425930930542513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267773 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047811.P15446425930930542513

/-! ## A047811.P14928810938433239478

`eq[A135551(n), A267866(n)]`
-/

namespace A047811.P14928810938433239478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267866 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047811.P14928810938433239478

/-! ## A047811.P11017703766948848011

`eq[A135551(n), A267871(n)]`
-/

namespace A047811.P11017703766948848011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267871 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047811.P11017703766948848011

/-! ## A047811.P6783842696343750101

`eq[A135549(n), A329678(n)]`
-/

namespace A047811.P6783842696343750101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135549 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047811.P6783842696343750101

/-! ## A047811.P15852738229310408758

`eq[A033324(n+1), A135549(n)]`
-/

namespace A047811.P15852738229310408758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135549 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047811.P15852738229310408758

/-! ## A047811.P10845882831747586357

`eq[A121273(n+1), A135551(n)]`
-/

namespace A047811.P10845882831747586357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047811.P10845882831747586357

/-! ## A047811.P15651099667236368121

`eq[A132350(n+1), A135551(n)]`
-/

namespace A047811.P15651099667236368121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047811.P15651099667236368121

/-! ## A047811.P6745462880662309167

`eq[A135551(n), A171624(n+1)]`
-/

namespace A047811.P6745462880662309167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171624 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047811.P6745462880662309167

/-! ## A047811.P6520237932562797865

`eq[A135549(n), A181403(n+1)]`
-/

namespace A047811.P6520237932562797865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135549 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181403 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047811.P6520237932562797865

/-! ## A047811.P7025780242463457281

`eq[A135549(n), A182687(n+1)]`
-/

namespace A047811.P7025780242463457281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135549 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182687 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047811.P7025780242463457281

/-! ## A047811.P77078428158036042

`eq[A135549(n), A182688(n+1)]`
-/

namespace A047811.P77078428158036042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135549 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182688 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047811.P77078428158036042

/-! ## A047811.P4490435302831668836

`eq[A135549(n), A299529(n+1)]`
-/

namespace A047811.P4490435302831668836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135549 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299529 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047811.P4490435302831668836

/-!
# A047812: Parker's partition triangle T(n,k) read by rows (n >= 1 and 0 <= k <= n-1).

The programs for A047812, there is no canonical definition to state claims against.
-/

/-! ## A047812.P18169217158721455597

`A136621(A038722(n+1))`
-/

namespace A047812.P18169217158721455597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136621 (A038722 (n + 1)).toNat

end

end A047812.P18169217158721455597

/-! ## A047812.P15534791112106960939

`A136621(A061579(n)+1)`
-/

namespace A047812.P15534791112106960939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136621 (A061579 n + 1).toNat

end

end A047812.P15534791112106960939

/-! ## A047812.P8262243429412248922

`A136621(A114327(n)+1+n)`
-/

namespace A047812.P8262243429412248922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136621 (A114327 n + 1 + (n : ℤ)).toNat

end

end A047812.P8262243429412248922

/-! ## A047812.P7981088639294197873

`A136621(A093995(n+1)-n)`
-/

namespace A047812.P7981088639294197873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136621 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A047812.P7981088639294197873

/-! ## A047812.P17918286667503399836

`A136621(A002024(n+1)²-n)`
-/

namespace A047812.P17918286667503399836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136621 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A047812.P17918286667503399836

/-! ## A047812.P3064047905705456934

`A136621(A185869(n+1)-A016777(n))`
-/

namespace A047812.P3064047905705456934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136621 (A185869 (n + 1) - A016777 n).toNat

end

end A047812.P3064047905705456934

/-!
# A047813: Largest palindromic substring of n.

The programs for A047813, there is no canonical definition to state claims against.
-/

/-! ## A047813.P1885278152496008091

`A262223(n)-n`
-/

namespace A047813.P1885278152496008091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262223 n - (n : ℤ)

end

end A047813.P1885278152496008091

/-! ## A047813.P922420887520926396

`abs(A262223(n)+A001489(n))`
-/

namespace A047813.P922420887520926396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A262223 n + A001489 n|

end

end A047813.P922420887520926396

/-! ## A047813.P263770449728250904

`(A262223(n)+1)%A000027(n+1)`
-/

namespace A047813.P263770449728250904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262223 n + 1) (A000027 (n + 1))

end

end A047813.P263770449728250904

/-! ## A047813.P9026122928568653080

`(A262223(n)+A000290(n))%(n+1)`
-/

namespace A047813.P9026122928568653080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262223 n + A000290 n) (n + 1 : ℤ)

end

end A047813.P9026122928568653080

/-! ## A047813.P4905534516611522365

`A057427(n)+A262223(n)%(n+1)`
-/

namespace A047813.P4905534516611522365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + Int.tmod (A262223 n) (n + 1 : ℤ)

end

end A047813.P4905534516611522365

/-! ## A047813.P17789834918570215807

`A004086(A262223(n)+A001489(n))`
-/

namespace A047813.P17789834918570215807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A262223 n + A001489 n).toNat

end

end A047813.P17789834918570215807

/-! ## A047813.P3690942982134750025

`A262188(∑[A262190(n)-A000007(n)])`
-/

namespace A047813.P3690942982134750025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262190 n - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262188 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A047813.P3690942982134750025

/-! ## A047813.P9074184210676267538

`A062279(A262223(n)+A001489(n))`
-/

namespace A047813.P9074184210676267538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062279 (A262223 n + A001489 n).toNat

end

end A047813.P9074184210676267538

/-! ## A047813.P8670090273756712293

`A262223(A008592(n))%A008706(n)`
-/

namespace A047813.P8670090273756712293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262223 (A008592 n).toNat) (A008706 n)

end

end A047813.P8670090273756712293

/-! ## A047813.P9503556854102637596

`A002262(A262223(n)+A167614(n+1))`
-/

namespace A047813.P9503556854102637596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A262223 n + A167614 (n + 1)).toNat

end

end A047813.P9503556854102637596

/-! ## A047813.P11140419589492983930

`A054055(n)*A109014(n²)`
-/

namespace A047813.P11140419589492983930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n * A109014 (n ^ 2)

end

end A047813.P11140419589492983930

/-! ## A047813.P16071298613644458835

`A109014(n²)*A373064(n)`
-/

namespace A047813.P16071298613644458835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109014 (n ^ 2) * A373064 n

end

end A047813.P16071298613644458835

/-! ## A047813.P14609475076460240362

`lcm(A054055(n), A109014(A000290(n)))`
-/

namespace A047813.P14609475076460240362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054055 n) (A109014 (A000290 n).toNat)

end

end A047813.P14609475076460240362

/-!
# A047814: Largest prime substring of n, or 0 if no such substring exists.

The programs for A047814, there is no canonical definition to state claims against.
-/

/-! ## A047814.P13427609850059813014

`A331097(A004185(n)%A187276(n+1))`
-/

namespace A047814.P13427609850059813014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331097 (Int.tmod (A004185 n) (A187276 (n + 1))).toNat

end

end A047814.P13427609850059813014

/-! ## A047814.P451878728217094997

`A331097(A004185(n))%A193650(n+2)`
-/

namespace A047814.P451878728217094997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331097 (A004185 n).toNat) (A193650 (n + 2))

end

end A047814.P451878728217094997

/-! ## A047814.P7846547126850769975

`gcd(A331097(n)%A111610(3*n+5), A331044(n))`
-/

namespace A047814.P7846547126850769975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A331097 n) (A111610 (3 * n + 5))) (A331044 n)

end

end A047814.P7846547126850769975

/-! ## A047814.P17647506049678001651

`gcd(A331045(n)%A331017(n+1), A331097(n))`
-/

namespace A047814.P17647506049678001651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A331045 n) (A331017 (n + 1))) (A331097 n)

end

end A047814.P17647506049678001651

/-! ## A047814.P2557685614879711595

`A331097(n)%A342354(n)+A326685(n)^A142589(n)`
-/

namespace A047814.P2557685614879711595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A331097 n) (A342354 n) : ℚ) + (A326685 n : ℚ) ^ (A142589 n : ℤ)

end

end A047814.P2557685614879711595

/-!
# A047817: Denominators of Hurwitz numbers H_n (coefficients in expansion of Weierstrass P-function).

The programs for A047817, there is no canonical definition to state claims against.
-/

/-! ## A047817.P11446160608712786888

`A072436(A002445(2*(n+1)))`
-/

namespace A047817.P11446160608712786888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072436 (A002445 (2 * (n + 1))).toNat

end

end A047817.P11446160608712786888

/-! ## A047817.P15877981267424604181

`A072436(A006954(2*n+3))`
-/

namespace A047817.P15877981267424604181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072436 (A006954 (2 * n + 3)).toNat

end

end A047817.P15877981267424604181

/-!
# A047818: a(n) is the least number m such that A002313(n)*m - 1 is a square.

The programs for A047818, there is no canonical definition to state claims against.
-/

/-! ## A047818.P2901366928709285488

`A076948(p?[A004773(n)])`
-/

namespace A047818.P2901366928709285488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076948 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A047818.P2901366928709285488

/-! ## A047818.P13385941057428155985

`A076948(A002313(n+1))`
-/

namespace A047818.P13385941057428155985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076948 (A002313 (n + 1)).toNat

end

end A047818.P13385941057428155985

/-! ## A047818.P1113680695563670060

`A076948(A280084(n+1))`
-/

namespace A047818.P1113680695563670060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076948 (A280084 (n + 1)).toNat

end

end A047818.P1113680695563670060

/-! ## A047818.P6388350358192109107

`A076948(p?[A000404(n+1)])`
-/

namespace A047818.P6388350358192109107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076948 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A047818.P6388350358192109107

/-! ## A047818.P10601818594991702919

`A076948(p?[A001481(n+1)])`
-/

namespace A047818.P10601818594991702919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076948 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A047818.P10601818594991702919

/-! ## A047818.P15665430578857039113

`A076948(p?[A008784(n+1)])`
-/

namespace A047818.P15665430578857039113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076948 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A047818.P15665430578857039113

/-! ## A047818.P5554336036661880051

`A076948(record[A006530(A016813(n))])`
-/

namespace A047818.P5554336036661880051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A016813 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076948 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A047818.P5554336036661880051

/-! ## A047818.P6334406942594138486

`A076948(record[A014963(A016813(n))])`
-/

namespace A047818.P6334406942594138486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A016813 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076948 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A047818.P6334406942594138486

/-! ## A047818.P2743755560828288665

`A076948(record[A020639(A016813(n))])`
-/

namespace A047818.P2743755560828288665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A016813 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076948 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A047818.P2743755560828288665

/-! ## A047818.P15495424856099084535

`A076948(record[A006530(A058281(n))])`
-/

namespace A047818.P15495424856099084535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A058281 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076948 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A047818.P15495424856099084535

/-! ## A047818.P6742062030196664470

`A076948(p?[A103832(n)])`
-/

namespace A047818.P6742062030196664470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103832 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076948 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A047818.P6742062030196664470

/-!
# A047819: a(n) = Product_{i=1..n} ((i+3)*(i+4)*(i+5))/(i*(i+1)*(i+2)).

The programs for A047819, the canonical program `A047819.P7929140037664491783` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047819 has offset 0).

The definition of A047819 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047819.P7929140037664491783

`C(n+5, 5)*C(n+4, 3)*(n+3)/12`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047819

/-- `C(n+5, 5)*C(n+4, 3)*(n+3)/12` -/
def P7929140037664491783.Spec : Prop :=
  ∀ n, P7929140037664491783.a n = (A047819 n : ℚ)

end A047819

/-! ## A047819.P16248126213952327268

`∑[A107891(n)]`
-/

namespace A047819.P16248126213952327268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047819.P16248126213952327268

namespace A047819

/-- `∑[A107891(n)]` -/
def P16248126213952327268.Spec : Prop :=
  ∀ n, P16248126213952327268.a n = A047819 n

end A047819

/-! ## A047819.P9478015187824525416

`∑[∑[A114239(n)]]`
-/

namespace A047819.P9478015187824525416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114239 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047819.P9478015187824525416

namespace A047819

/-- `∑[∑[A114239(n)]]` -/
def P9478015187824525416.Spec : Prop :=
  ∀ n, P9478015187824525416.a n = A047819 n

end A047819

/-! ## A047819.P12025303544985291800

`(n/3+1)*A006857(n)`
-/

namespace A047819.P12025303544985291800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 3 + 1) * (A006857 n : ℚ)

end

end A047819.P12025303544985291800

namespace A047819

/-- `(n/3+1)*A006857(n)` -/
def P12025303544985291800.Spec : Prop :=
  ∀ n, P12025303544985291800.a n = (A047819 n : ℚ)

end A047819

/-! ## A047819.P11921476786065428496

`2/(n+2)*A107916(n)`
-/

namespace A047819.P11921476786065428496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ) * (A107916 n : ℚ)

end

end A047819.P11921476786065428496

namespace A047819

/-- `2/(n+2)*A107916(n)` -/
def P11921476786065428496.Spec : Prop :=
  ∀ n, P11921476786065428496.a n = (A047819 n : ℚ)

end A047819

/-! ## A047819.P7502428974057002577

`(n+1)/∑[n+1]*∑[A107966(n)]`
-/

namespace A047819.P7502428974057002577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107966 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

end

end A047819.P7502428974057002577

namespace A047819

/-- `(n+1)/∑[n+1]*∑[A107966(n)]` -/
def P7502428974057002577.Spec : Prop :=
  ∀ n, P7502428974057002577.a n = (A047819 n : ℚ)

end A047819

/-! ## A047819.P148513942821227200

`∑[∑[∑[∑[A160747(n)+a(n-1)]]]]` with `a(0)=1`
-/

namespace A047819.P148513942821227200
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f4 =>
  A160747 n + f4 (n - 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047819.P148513942821227200

namespace A047819

/-- `∑[∑[∑[∑[A160747(n)+a(n-1)]]]]` -/
def P148513942821227200.Spec : Prop :=
  ∀ n, P148513942821227200.a n = A047819 n

end A047819

/-! ## A047819.P4117376774942352330

`∑[∑[∑[A083200(n+2)]]]`
-/

namespace A047819.P4117376774942352330
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083200 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047819.P4117376774942352330

namespace A047819

/-- `∑[∑[∑[A083200(n+2)]]]` -/
def P4117376774942352330.Spec : Prop :=
  ∀ n, P4117376774942352330.a n = A047819 n

end A047819

/-! ## A047819.P14446674638573232418

`A107966(n+1)-A107942(n+1)`
-/

namespace A047819.P14446674638573232418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107966 (n + 1) - A107942 (n + 1)

end

end A047819.P14446674638573232418

namespace A047819

/-- `A107966(n+1)-A107942(n+1)` -/
def P14446674638573232418.Spec : Prop :=
  ∀ n, P14446674638573232418.a n = A047819 n

end A047819

/-! ## A047819.P7420786182497675956

`A107967(n+1)-A107966(n+1)`
-/

namespace A047819.P7420786182497675956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107967 (n + 1) - A107966 (n + 1)

end

end A047819.P7420786182497675956

namespace A047819

/-- `A107967(n+1)-A107966(n+1)` -/
def P7420786182497675956.Spec : Prop :=
  ∀ n, P7420786182497675956.a n = A047819 n

end A047819

/-! ## A047819.P13035893986774750359

`(A107967(n+1)-A107942(n+1))/2`
-/

namespace A047819.P13035893986774750359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107967 (n + 1) - A107942 (n + 1) : ℚ) / 2

end

end A047819.P13035893986774750359

namespace A047819

/-- `(A107967(n+1)-A107942(n+1))/2` -/
def P13035893986774750359.Spec : Prop :=
  ∀ n, P13035893986774750359.a n = (A047819 n : ℚ)

end A047819

/-! ## A047819.P12842898106522508477

`A056939(A167614(n+2))`
-/

namespace A047819.P12842898106522508477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (A167614 (n + 2)).toNat

end

end A047819.P12842898106522508477

namespace A047819

/-- `A056939(A167614(n+2))` -/
def P12842898106522508477.Spec : Prop :=
  ∀ n, P12842898106522508477.a n = A047819 n

end A047819

/-! ## A047819.P12608736479111093835

`A056939(eq[3, A002262(n)])`
-/

namespace A047819.P12608736479111093835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047819.P12608736479111093835

namespace A047819

/-- `A056939(eq[3, A002262(n)])` -/
def P12608736479111093835.Spec : Prop :=
  ∀ n, P12608736479111093835.a n = A047819 n

end A047819

/-! ## A047819.P6119600266127298604

`A056939(eq[2, A002260(n+1)-2])`
-/

namespace A047819.P6119600266127298604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047819.P6119600266127298604

namespace A047819

/-- `A056939(eq[2, A002260(n+1)-2])` -/
def P6119600266127298604.Spec : Prop :=
  ∀ n, P6119600266127298604.a n = A047819 n

end A047819

/-! ## A047819.P11644880846260438488

`A056939(eq[2, A002260(n+1)/2])`
-/

namespace A047819.P11644880846260438488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A047819.P11644880846260438488

namespace A047819

/-- `A056939(eq[2, A002260(n+1)/2])` -/
def P11644880846260438488.Spec : Prop :=
  ∀ n, P11644880846260438488.a n = A047819 n

end A047819

/-! ## A047819.P10521871376729865513

`A056939(∑[n+3]+n+3)`
-/

namespace A047819.P10521871376729865513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A047819.P10521871376729865513

namespace A047819

/-- `A056939(∑[n+3]+n+3)` -/
def P10521871376729865513.Spec : Prop :=
  ∀ n, P10521871376729865513.a n = A047819 n

end A047819

/-!
# A047820: Composite numbers that become prime after exactly 1 iteration of f(k) = sum of distinct prime factors of k.

The programs for A047820, the canonical program `A047820.P3292128957277670527` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047820 has offset 1).

The definition of A047820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1247 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047820.P2612639626641707584

`∩[A002808(n+1), A114522(n+1)]`
-/

namespace A047820.P2612639626641707584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047820.P2612639626641707584

namespace A047820

/-- `∩[A002808(n+1), A114522(n+1)]` -/
def P2612639626641707584.Spec : Prop :=
  ∀ n, (P2612639626641707584.a n : ℤ) = A047820 (n + 1)

end A047820

/-! ## A047820.P16142723687086017626

`∩[A018252(n+1), A114522(n+1)]`
-/

namespace A047820.P16142723687086017626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047820.P16142723687086017626

namespace A047820

/-- `∩[A018252(n+1), A114522(n+1)]` -/
def P16142723687086017626.Spec : Prop :=
  ∀ n, (P16142723687086017626.a n : ℤ) = A047820 (n + 1)

end A047820

/-! ## A047820.P14480939613404877997

`∩[A114522(n+1), A141468(n+1)]`
-/

namespace A047820.P14480939613404877997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047820.P14480939613404877997

namespace A047820

/-- `∩[A114522(n+1), A141468(n+1)]` -/
def P14480939613404877997.Spec : Prop :=
  ∀ n, (P14480939613404877997.a n : ℤ) = A047820 (n + 1)

end A047820

/-! ## A047820.P7104015072137418783

`eq[A008472(n+2), A061376(n+2)]+2`
-/

namespace A047820.P7104015072137418783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061376 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A047820.P7104015072137418783

namespace A047820

/-- `eq[A008472(n+2), A061376(n+2)]+2` -/
def P7104015072137418783.Spec : Prop :=
  ∀ n, (P7104015072137418783.a n : ℤ) = A047820 (n + 1)

end A047820

/-! ## A047820.P2208468028510079452

`eq[2, A321944(n+2)]+2`
-/

namespace A047820.P2208468028510079452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A047820.P2208468028510079452

namespace A047820

/-- `eq[2, A321944(n+2)]+2` -/
def P2208468028510079452.Spec : Prop :=
  ∀ n, (P2208468028510079452.a n : ℤ) = A047820 (n + 1)

end A047820

/-! ## A047820.P3292128957277670527

`record[A191558(A114522(n+3))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A047820

/-- `record[A191558(A114522(n+3))]` -/
def P3292128957277670527.Spec : Prop :=
  ∀ n, P3292128957277670527.a n = A047820 (n + 1)

theorem P3292128957277670527.correct : P3292128957277670527.Spec := by
  intro n
  simp only [A047820, Nat.add_sub_cancel]

end A047820

/-! ## A047820.P4965611998405527614

`eq[char[A075658(n+1)], A339579(n+1)]`
-/

namespace A047820.P4965611998405527614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075658 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A047820.P4965611998405527614

namespace A047820

/-- `eq[char[A075658(n+1)], A339579(n+1)]` -/
def P4965611998405527614.Spec : Prop :=
  ∀ n, (P4965611998405527614.a n : ℤ) = A047820 (n + 1)

end A047820

/-! ## A047820.P2895127697285700424

`eq[(1-A105700(n))², A018783(∑{p}[n, #])]`
-/

namespace A047820.P2895127697285700424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A105700 n) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (∑ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047820.P2895127697285700424

namespace A047820

/-- `eq[(1-A105700(n))², A018783(∑{p}[n, #])]` -/
def P2895127697285700424.Spec : Prop :=
  ∀ n, (P2895127697285700424.a n : ℤ) = A047820 (n + 1)

end A047820

/-! ## A047820.P989706296514710596

`∪[A066038(n+1), A123710(n+1)]`
-/

namespace A047820.P989706296514710596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A047820.P989706296514710596

namespace A047820

/-- `∪[A066038(n+1), A123710(n+1)]` -/
def P989706296514710596.Spec : Prop :=
  ∀ n, (P989706296514710596.a n : ℤ) = A047820 (n + 1)

end A047820

/-! ## A047820.P9601571768219856745

`eq[2, A321944(A233583(n+1))]`
-/

namespace A047820.P9601571768219856745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047820.P9601571768219856745

namespace A047820

/-- `eq[2, A321944(A233583(n+1))]` -/
def P9601571768219856745.Spec : Prop :=
  ∀ n, (P9601571768219856745.a n : ℤ) = A047820 (n + 1)

end A047820

/-!
# A047821: Becomes prime after exactly 2 iterations of f(x) = sum of prime factors of x.

The programs for A047821, there is no canonical definition to state claims against.
-/

/-! ## A047821.P7720455161742143428

`eq[3, A321944(n+1)]+1`
-/

namespace A047821.P7720455161742143428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A047821.P7720455161742143428

/-! ## A047821.P14807203518402594299

`eq[1, A321944(A028310(n))-2]`
-/

namespace A047821.P14807203518402594299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047821.P14807203518402594299

/-! ## A047821.P9174075227928973742

`A061767(eq[3, A321944(n+1)])`
-/

namespace A047821.P9174075227928973742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047821.P9174075227928973742

/-! ## A047821.P13761782521914245843

`A153152(eq[3, A321944(n+1)])`
-/

namespace A047821.P13761782521914245843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047821.P13761782521914245843

/-! ## A047821.P2285032736721388621

`eq[3, A321944(A000007(n)+n)]`
-/

namespace A047821.P2285032736721388621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047821.P2285032736721388621

/-! ## A047821.P13758709679285720243

`eq[3, A321944(A065033(2*n))]`
-/

namespace A047821.P13758709679285720243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047821.P13758709679285720243

/-! ## A047821.P3965934494404794667

`A113484(eq[3, A321944(n+1)])`
-/

namespace A047821.P3965934494404794667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047821.P3965934494404794667

/-! ## A047821.P11979655524104911711

`eq[3, A321944(A233583(n+1))]`
-/

namespace A047821.P11979655524104911711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047821.P11979655524104911711

/-!
# A047822: Becomes prime after exactly 3 iterations of f(x) = sum of prime factors of x.

The programs for A047822, there is no canonical definition to state claims against.
-/

/-! ## A047822.P10893319820127507060

`eq[4, A321944(A028310(n))]`
-/

namespace A047822.P10893319820127507060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047822.P10893319820127507060

/-! ## A047822.P17833527178589484870

`A011760(eq[4, A321944(n+1)])`
-/

namespace A047822.P17833527178589484870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047822.P17833527178589484870

/-! ## A047822.P15299166146247027572

`A061767(eq[4, A321944(n+1)])`
-/

namespace A047822.P15299166146247027572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047822.P15299166146247027572

/-! ## A047822.P4862101290868026134

`A153152(eq[4, A321944(n+1)])`
-/

namespace A047822.P4862101290868026134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047822.P4862101290868026134

/-! ## A047822.P15028492088855929138

`A326178(eq[4, A321944(n+1)])`
-/

namespace A047822.P15028492088855929138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047822.P15028492088855929138

/-! ## A047822.P7522306334795091149

`eq[4, A321944(A065033(2*n))]`
-/

namespace A047822.P7522306334795091149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047822.P7522306334795091149

/-! ## A047822.P3749206390194381382

`A113484(eq[4, A321944(n+1)])`
-/

namespace A047822.P3749206390194381382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047822.P3749206390194381382

/-! ## A047822.P17860337790334914326

`eq[4, A321944(A233583(n+1))]`
-/

namespace A047822.P17860337790334914326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047822.P17860337790334914326

/-!
# A047823: Becomes prime after exactly 4 iterations of f(x) = sum of prime factors of x.

The programs for A047823, there is no canonical definition to state claims against.
-/

/-! ## A047823.P1039863264813117883

`eq[5, A321944(n+1)]+1`
-/

namespace A047823.P1039863264813117883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A047823.P1039863264813117883

/-! ## A047823.P2214971552023694667

`eq[5, A321944(A028310(n))]`
-/

namespace A047823.P2214971552023694667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047823.P2214971552023694667

/-! ## A047823.P13270960769987865031

`A011760(eq[5, A321944(n+1)])`
-/

namespace A047823.P13270960769987865031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047823.P13270960769987865031

/-! ## A047823.P14828409055448540504

`A061767(eq[5, A321944(n+1)])`
-/

namespace A047823.P14828409055448540504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047823.P14828409055448540504

/-! ## A047823.P14248179156895576375

`A153152(eq[5, A321944(n+1)])`
-/

namespace A047823.P14248179156895576375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047823.P14248179156895576375

/-! ## A047823.P15654740146330990818

`eq[5, A321944(A060000(n+1))]`
-/

namespace A047823.P15654740146330990818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047823.P15654740146330990818

/-! ## A047823.P17552035894418315331

`eq[5, A321944(A065033(2*n))]`
-/

namespace A047823.P17552035894418315331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047823.P17552035894418315331

/-! ## A047823.P5954856747563061231

`eq[5, A321944(A233583(n+1))]`
-/

namespace A047823.P5954856747563061231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047823.P5954856747563061231

/-!
# A047824: Becomes prime after exactly 5 iterations of f(x) = sum of prime factors of x.

The programs for A047824, there is no canonical definition to state claims against.
-/

/-! ## A047824.P6219140256084172599

`eq[6, A321944(A028310(n))]`
-/

namespace A047824.P6219140256084172599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047824.P6219140256084172599

/-! ## A047824.P5715463216997341201

`A011760(eq[6, A321944(n+1)])`
-/

namespace A047824.P5715463216997341201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047824.P5715463216997341201

/-! ## A047824.P13743713255296639433

`eq[6, A321944(A060000(n+1))]`
-/

namespace A047824.P13743713255296639433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047824.P13743713255296639433

/-! ## A047824.P15182678460990696784

`eq[6, A321944(A233583(n+1))]`
-/

namespace A047824.P15182678460990696784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047824.P15182678460990696784

/-!
# A047825: Becomes prime after exactly 6 iterations of f(x) = sum of prime factors of x.

The programs for A047825, there is no canonical definition to state claims against.
-/

/-! ## A047825.P4134378326431072001

`eq[7, A321944(A028310(n))]`
-/

namespace A047825.P4134378326431072001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047825.P4134378326431072001

/-!
# A047830: Least number which becomes prime after exactly n iterations of f(x) = sum of prime factors of x.

The programs for A047830, there is no canonical definition to state claims against.
-/

/-! ## A047830.P16373884138908907538

`A201643(Δ[n²]-char[1])-1`
-/

namespace A047830.P16373884138908907538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201643 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat - 1

end

end A047830.P16373884138908907538

/-! ## A047830.P18173171399711150678

`2*A257347(or(abs(1-n), 2^n))`
-/

namespace A047830.P18173171399711150678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257347 (Int.lor |1 - (n : ℤ)| (2 ^ n : ℤ)).toNat

end

end A047830.P18173171399711150678

/-!
# A047831: a(n) = Product_{i=1..n} ((i+5)*(i+6)*(i+7)*(i+8)*(i+9))/(i*(i+1)*(i+2)*(i+3)*(i+4)).

The programs for A047831, there is no canonical definition to state claims against.
-/

/-! ## A047831.P11606686430091315914

`A056941(A167499(n+4))`
-/

namespace A047831.P11606686430091315914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (A167499 (n + 4)).toNat

end

end A047831.P11606686430091315914

/-! ## A047831.P14879845396771248980

`A056941(eq[6, A002260(n+1)])`
-/

namespace A047831.P14879845396771248980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047831.P14879845396771248980

/-! ## A047831.P18246334789559811531

`A056941(A055999(n+3))`
-/

namespace A047831.P18246334789559811531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (A055999 (n + 3)).toNat

end

end A047831.P18246334789559811531

/-! ## A047831.P3545084698445345972

`A056941(A056119(n)+15)`
-/

namespace A047831.P3545084698445345972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (A056119 n + 15).toNat

end

end A047831.P3545084698445345972

/-! ## A047831.P4687076712719076892

`A056941(eq[11, A099375(n)])`
-/

namespace A047831.P4687076712719076892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047831.P4687076712719076892

/-! ## A047831.P9650223442050029694

`A056941(eq[6, A004736(n+1)])`
-/

namespace A047831.P9650223442050029694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047831.P9650223442050029694

/-!
# A047832: Number of self-complementary binary relations on a 2n-element set.

The programs for A047832, there is no canonical definition to state claims against.
-/

/-! ## A047832.P7778570850884439266

`A000171(4*(n+1)+1)`
-/

namespace A047832.P7778570850884439266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000171 (4 * (n + 1) + 1)

end

end A047832.P7778570850884439266

/-! ## A047832.P4558558846392662337

`record[A000171(2*n+5)]`
-/

namespace A047832.P4558558846392662337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000171 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047832.P4558558846392662337

/-!
# A047835: a(n) = Product_{i=1..n} ((i+4)*(i+5)*(i+6)*(i+7))/(i*(i+1)*(i+2)*(i+3)).

The programs for A047835, there is no canonical definition to state claims against.
-/

/-! ## A047835.P2546963219331695558

`∑[A133708(n+3)]`
-/

namespace A047835.P2546963219331695558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133708 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047835.P2546963219331695558

/-! ## A047835.P9466459063476219054

`A056940(A155212(n)+12)`
-/

namespace A047835.P9466459063476219054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056940 (A155212 n + 12).toNat

end

end A047835.P9466459063476219054

/-! ## A047835.P14464949937933495975

`A056940(A056000(n)+14)`
-/

namespace A047835.P14464949937933495975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056940 (A056000 n + 14).toNat

end

end A047835.P14464949937933495975

/-! ## A047835.P15028762095208948791

`A056940(eq[4, A002262(n)])`
-/

namespace A047835.P15028762095208948791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047835.P15028762095208948791

/-! ## A047835.P3413121624918240013

`A056940(A052905(n+2))`
-/

namespace A047835.P3413121624918240013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056940 (A052905 (n + 2)).toNat

end

end A047835.P3413121624918240013

/-! ## A047835.P6415392536484966617

`A056940(eq[4, A025581(n)])`
-/

namespace A047835.P6415392536484966617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047835.P6415392536484966617

/-! ## A047835.P13721041102343499306

`record[A056940(A052905(A028242(n)))]`
-/

namespace A047835.P13721041102343499306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056940 (A052905 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047835.P13721041102343499306

/-! ## A047835.P6899801041478676189

`A056940(A167487(n)+A016825(n))`
-/

namespace A047835.P6899801041478676189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056940 (A167487 n + A016825 n).toNat

end

end A047835.P6899801041478676189

/-!
# A047836: "Nullwertzahlen" (or "inverse prime numbers"): n=p1*p2*p3*p4*p5*...*pk, where pi are primes with p1 <= p2 <= p3 <= p4 ...; then p1 = 2 and p1*p2*...*pi >= p(i+1) for all i < k.

The programs for A047836, there is no canonical definition to state claims against.
-/

/-! ## A047836.P6728531720841786495

`2*A174973(n+1)`
-/

namespace A047836.P6728531720841786495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174973 (n + 1)

end

end A047836.P6728531720841786495

/-! ## A047836.P9207536479185221468

`2*∩[A071562(n+1), A279029(n+1)]`
-/

namespace A047836.P9207536479185221468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047836.P9207536479185221468

/-! ## A047836.P8528099005354807640

`A174973(A000027(n+1))+A174973(n+1)`
-/

namespace A047836.P8528099005354807640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (A000027 (n + 1)).toNat + A174973 (n + 1)

end

end A047836.P8528099005354807640

/-! ## A047836.P12624162821679129181

`A174973(A028310(n+1))+A174973(n+1)`
-/

namespace A047836.P12624162821679129181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (A028310 (n + 1)).toNat + A174973 (n + 1)

end

end A047836.P12624162821679129181

/-! ## A047836.P15870557919483058948

`A174973(n+1)+A174973(n+2)-A389763(n+1)`
-/

namespace A047836.P15870557919483058948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 1) + (A174973 (n + 2) - A389763 (n + 1))

end

end A047836.P15870557919483058948

/-! ## A047836.P9441358240880370067

`(eq[1, A237271(n+1)]+1)*2`
-/

namespace A047836.P9441358240880370067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) * 2

end

end A047836.P9441358240880370067

/-! ## A047836.P8544843311928618763

`A004277(A174973(n+1))`
-/

namespace A047836.P8544843311928618763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A174973 (n + 1)).toNat

end

end A047836.P8544843311928618763

/-! ## A047836.P17141623543536110568

`A005408(A174973(n+1)-1)+1`
-/

namespace A047836.P17141623543536110568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A174973 (n + 1) - 1).toNat + 1

end

end A047836.P17141623543536110568

/-! ## A047836.P8889719940318524119

`record[A004277(n+1)/A237271(n+1)]`
-/

namespace A047836.P8889719940318524119
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (n + 1) : ℚ) / (A237271 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047836.P8889719940318524119

/-! ## A047836.P2381795379023619859

`record[A005843(n+1)/A237271(n+1)]`
-/

namespace A047836.P2381795379023619859
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) / (A237271 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047836.P2381795379023619859

/-! ## A047836.P11589068871885192658

`A245092(A174973(n+1)+A174973(n+1))`
-/

namespace A047836.P11589068871885192658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A174973 (n + 1) + A174973 (n + 1)).toNat

end

end A047836.P11589068871885192658

/-! ## A047836.P10394957997200006108

`A004273(A174973(n+1)+1)-1`
-/

namespace A047836.P10394957997200006108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A174973 (n + 1) + 1).toNat - 1

end

end A047836.P10394957997200006108

/-! ## A047836.P4200436543562671988

`record[A005843(n+1)/A244971(n+1)]`
-/

namespace A047836.P4200436543562671988
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) / (A244971 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047836.P4200436543562671988

/-! ## A047836.P15237553778157165223

`A014681(A174973(n+1)+A174973(n+1)-1)`
-/

namespace A047836.P15237553778157165223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A174973 (n + 1) + (A174973 (n + 1) - 1)).toNat

end

end A047836.P15237553778157165223

/-! ## A047836.P11975381911607478640

`eq[A233583(n+1)-n, A047988(A233583(n+1))]`
-/

namespace A047836.P11975381911607478640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047988 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047836.P11975381911607478640

/-!
# A047837: Honaker's triangle problem: form a triangle with base of length n, all entries different, all row sums equal; a(n) gives minimal row sum.

The programs for A047837, there is no canonical definition to state claims against.
-/

/-! ## A047837.P3453924226440660181

`A064097(A070939(n))+A051889(A079671(n+1))`
-/

namespace A047837.P3453924226440660181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A070939 n).toNat + A051889 (A079671 (n + 1)).toNat

end

end A047837.P3453924226440660181

/-! ## A047837.P2690558180367757618

`A261104(A213283(n+1))+A064097(A070939(n))`
-/

namespace A047837.P2690558180367757618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A213283 (n + 1)).toNat + A064097 (A070939 n).toNat

end

end A047837.P2690558180367757618

/-! ## A047837.P17340067961295840305

`floor(∑[log2(A203214(n+1)+1)])`
-/

namespace A047837.P17340067961295840305
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A203214 (n + 1) + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A047837.P17340067961295840305

/-! ## A047837.P7733512863332114937

`A004006(n+1)+A001221(A192729(n))`
-/

namespace A047837.P7733512863332114937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 (n + 1) + A001221 (A192729 n).toNat

end

end A047837.P7733512863332114937

/-! ## A047837.P15818951780170393122

`A003056(A050403(n)-∑[A033487(n)]+n)`
-/

namespace A047837.P15818951780170393122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A050403 n - ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A047837.P15818951780170393122

/-!
# A047838: a(n) = floor(n^2/2) - 1.

The programs for A047838, the canonical program `A047838.P11600115557936570714` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047838 has offset 2).

The definition of A047838 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+2)²/2)-1` (program `A047838.P11600115557936570714`, by `A047838.P11600115557936570714.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A047838.P11600115557936570714

`floor((n+2)²/2)-1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047838

/-- `floor((n+2)²/2)-1` -/
def P11600115557936570714.Spec : Prop :=
  ∀ n, P11600115557936570714.a n = A047838 (n + 2)

theorem P11600115557936570714.correct : P11600115557936570714.Spec := by
  intro n
  simp only [A047838, Nat.add_sub_cancel]

end A047838

/-! ## A047838.P6294455464767118334

`abs(A188653(n+2))`
-/

namespace A047838.P6294455464767118334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A188653 (n + 2)|

end

end A047838.P6294455464767118334

namespace A047838

/-- `abs(A188653(n+2))` -/
def P6294455464767118334.Spec : Prop :=
  ∀ n, P6294455464767118334.a n = A047838 (n + 2)

end A047838

/-! ## A047838.P3595825891762937372

`∑[a(∑[(-1)^n])+n]` with `a(0)=1`
-/

namespace A047838.P3595825891762937372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (∑ j ∈ Finset.range (n + 1), f2 j).toNat + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047838.P3595825891762937372

namespace A047838

/-- `∑[a(∑[(-1)^n])+n]` -/
def P3595825891762937372.Spec : Prop :=
  ∀ n, (P3595825891762937372.a n : ℤ) = A047838 (n + 2)

end A047838

/-! ## A047838.P15954579824906221570

`(or(1, (n+2)²)-3)/2`
-/

namespace A047838.P15954579824906221570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 ((n + 2) ^ 2) : ℤ) - 3 : ℚ) / 2

end

end A047838.P15954579824906221570

namespace A047838

/-- `(or(1, (n+2)²)-3)/2` -/
def P15954579824906221570.Spec : Prop :=
  ∀ n, P15954579824906221570.a n = (A047838 (n + 2) : ℚ)

end A047838

/-! ## A047838.P14872708659074607217

`floor(C(n+2, 2)+n/2)`
-/

namespace A047838.P14872708659074607217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 2) 2 : ℚ) + (n : ℚ) / 2⌋

end

end A047838.P14872708659074607217

namespace A047838

/-- `floor(C(n+2, 2)+n/2)` -/
def P14872708659074607217.Spec : Prop :=
  ∀ n, P14872708659074607217.a n = A047838 (n + 2)

end A047838

/-! ## A047838.P1306836173781253881

`record[ceil(((2-n)²-3)/2)]`
-/

namespace A047838.P1306836173781253881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 - (n : ℤ)) ^ 2 - 3 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047838.P1306836173781253881

namespace A047838

/-- `record[ceil(((2-n)²-3)/2)]` -/
def P1306836173781253881.Spec : Prop :=
  ∀ n, P1306836173781253881.a n = A047838 (n + 2)

end A047838

/-! ## A047838.P10689934978043109641

`round(record[((2-n)²-3)/2])`
-/

namespace A047838.P10689934978043109641
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 - (n : ℤ)) ^ 2 - 3 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A047838.P10689934978043109641

namespace A047838

/-- `round(record[((2-n)²-3)/2])` -/
def P10689934978043109641.Spec : Prop :=
  ∀ n, P10689934978043109641.a n = A047838 (n + 2)

end A047838

/-! ## A047838.P10593211293542847937

`∑[n+2-(n%2)^n]`
-/

namespace A047838.P10593211293542847937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (((n % 2) ^ n : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047838.P10593211293542847937

namespace A047838

/-- `∑[n+2-(n%2)^n]` -/
def P10593211293542847937.Spec : Prop :=
  ∀ n, P10593211293542847937.a n = A047838 (n + 2)

end A047838

/-! ## A047838.P14447753869796267393

`∑[n+2-and(1, n)^n]`
-/

namespace A047838.P14447753869796267393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Nat.land 1 n ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047838.P14447753869796267393

namespace A047838

/-- `∑[n+2-and(1, n)^n]` -/
def P14447753869796267393.Spec : Prop :=
  ∀ n, P14447753869796267393.a n = A047838 (n + 2)

end A047838

/-! ## A047838.P4249701697981401942

`∑[∑{p}[n, val(#, 2)]+n+1]`
-/

namespace A047838.P4249701697981401942
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 2 + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047838.P4249701697981401942

namespace A047838

/-- `∑[∑{p}[n, val(#, 2)]+n+1]` -/
def P4249701697981401942.Spec : Prop :=
  ∀ n, (P4249701697981401942.a n : ℤ) = A047838 (n + 2)

end A047838

/-! ## A047838.P11411776989234282872

`∑[val(∏{p}[n, #], 2)+n+1]`
-/

namespace A047838.P11411776989234282872
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n), p) 2 + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047838.P11411776989234282872

namespace A047838

/-- `∑[val(∏{p}[n, #], 2)+n+1]` -/
def P11411776989234282872.Spec : Prop :=
  ∀ n, (P11411776989234282872.a n : ℤ) = A047838 (n + 2)

end A047838

/-! ## A047838.P7148624828380300452

`∑[∑{p}[n, C(2, #)]+n+1]`
-/

namespace A047838.P7148624828380300452
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose 2 p + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047838.P7148624828380300452

namespace A047838

/-- `∑[∑{p}[n, C(2, #)]+n+1]` -/
def P7148624828380300452.Spec : Prop :=
  ∀ n, (P7148624828380300452.a n : ℤ) = A047838 (n + 2)

end A047838

/-! ## A047838.P9147425022279011974

`∑[lcm(2, a(n-2))+2]` with `a(0)=1, a(1)=2`
-/

namespace A047838.P9147425022279011974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  Nat.lcm 2 (f1 (n - 2)) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047838.P9147425022279011974

namespace A047838

/-- `∑[lcm(2, a(n-2))+2]` -/
def P9147425022279011974.Spec : Prop :=
  ∀ n, (P9147425022279011974.a n : ℤ) = A047838 (n + 2)

end A047838

/-! ## A047838.P5717653138439637116

`∑[∑[2-a(n-1)]]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A047838.P5717653138439637116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047838.P5717653138439637116

namespace A047838

/-- `∑[∑[2-a(n-1)]]` -/
def P5717653138439637116.Spec : Prop :=
  ∀ n, P5717653138439637116.a n = A047838 (n + 2)

end A047838

/-! ## A047838.P4233055076733364673

`or(1, a(n-1)+1+n)` with `a(0)=1`
-/

namespace A047838.P4233055076733364673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (a (n - 1) + 1 + n)

end

end A047838.P4233055076733364673

namespace A047838

/-- `or(1, a(n-1)+1+n)` -/
def P4233055076733364673.Spec : Prop :=
  ∀ n, (P4233055076733364673.a n : ℤ) = A047838 (n + 2)

end A047838

/-! ## A047838.P18079466857322169036

`(gcd(2, n)+n*(n+4))/2`
-/

namespace A047838.P18079466857322169036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n + n * (n + 4) : ℚ) / 2

end

end A047838.P18079466857322169036

namespace A047838

/-- `(gcd(2, n)+n*(n+4))/2` -/
def P18079466857322169036.Spec : Prop :=
  ∀ n, P18079466857322169036.a n = (A047838 (n + 2) : ℚ)

end A047838

/-! ## A047838.P9923858095223390398

`ogf((1+x+x^2-x^3)/(1-2x+2x^3-x^4))`
-/

namespace A047838.P9923858095223390398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, -1] [1, -2, 0, 2, -1] n

end

end A047838.P9923858095223390398

namespace A047838

/-- `ogf((1+x+x^2-x^3)/(1-2x+2x^3-x^4))` -/
def P9923858095223390398.Spec : Prop :=
  ∀ n, P9923858095223390398.a n = A047838 (n + 2)

end A047838

/-! ## A047838.P1877662685201416919

`ceil(C(n+2, 2)+(n-1)/2)`
-/

namespace A047838.P1877662685201416919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 2) 2 : ℚ) + ((n : ℤ) - 1 : ℚ) / 2⌉

end

end A047838.P1877662685201416919

namespace A047838

/-- `ceil(C(n+2, 2)+(n-1)/2)` -/
def P1877662685201416919.Spec : Prop :=
  ∀ n, P1877662685201416919.a n = A047838 (n + 2)

end A047838

/-! ## A047838.P5879501975562466470

`round(C(n+2, 2)+(n-1)/2)`
-/

namespace A047838.P5879501975562466470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 2) 2 : ℚ) + ((n : ℤ) - 1 : ℚ) / 2)

end

end A047838.P5879501975562466470

namespace A047838

/-- `round(C(n+2, 2)+(n-1)/2)` -/
def P5879501975562466470.Spec : Prop :=
  ∀ n, P5879501975562466470.a n = A047838 (n + 2)

end A047838

/-! ## A047838.P3818182811631457188

`abs(a(n-1)-n*(n+3))` with `a(0)=1`
-/

namespace A047838.P3818182811631457188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) - (n * (n + 3) : ℤ)|

end

end A047838.P3818182811631457188

namespace A047838

/-- `abs(a(n-1)-n*(n+3))` -/
def P3818182811631457188.Spec : Prop :=
  ∀ n, P3818182811631457188.a n = A047838 (n + 2)

end A047838

/-!
# A047839: a(n) = n + floor( sqrt(2*n) ).

The programs for A047839, the canonical program `A047839.P12141975543020957016` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047839 has offset 1).

The definition of A047839 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+floor(sqrt(2*(n+1)))` (program `A047839.P12141975543020957016`, by `A047839.P12141975543020957016.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A047839.P12141975543020957016

`n+1+floor(sqrt(2*(n+1)))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047839

/-- `n+1+floor(sqrt(2*(n+1)))` -/
def P12141975543020957016.Spec : Prop :=
  ∀ n, (P12141975543020957016.a n : ℤ) = A047839 (n + 1)

theorem P12141975543020957016.correct : P12141975543020957016.Spec := by
  intro n
  simp only [A047839, Nat.add_sub_cancel]

end A047839

/-! ## A047839.P8023733731868088533

`comp[∑[and(n, -2)]-(1-char[1])]`
-/

namespace A047839.P8023733731868088533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (1 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047839.P8023733731868088533

namespace A047839

/-- `comp[∑[and(n, -2)]-(1-char[1])]` -/
def P8023733731868088533.Spec : Prop :=
  ∀ n, (P8023733731868088533.a n : ℤ) = A047839 (n + 1)

end A047839

/-! ## A047839.P12654129428578440215

`comp[or(1, a(n-1)+n)]` with `a(0)=1, a(1)=0`
-/

namespace A047839.P12654129428578440215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  Nat.lor 1 (f1 (n - 1) + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047839.P12654129428578440215

namespace A047839

/-- `comp[or(1, a(n-1)+n)]` -/
def P12654129428578440215.Spec : Prop :=
  ∀ n, (P12654129428578440215.a n : ℤ) = A047839 (n + 1)

end A047839

/-! ## A047839.P5087306620365574089

`∑[A216230(n)+1]`
-/

namespace A047839.P5087306620365574089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216230 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047839.P5087306620365574089

namespace A047839

/-- `∑[A216230(n)+1]` -/
def P5087306620365574089.Spec : Prop :=
  ∀ n, P5087306620365574089.a n = A047839 (n + 1)

end A047839

/-! ## A047839.P2419172100687141691

`∑[Δ[A172471(n)]+1]`
-/

namespace A047839.P2419172100687141691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047839.P2419172100687141691

namespace A047839

/-- `∑[Δ[A172471(n)]+1]` -/
def P2419172100687141691.Spec : Prop :=
  ∀ n, P2419172100687141691.a n = A047839 (n + 1)

end A047839

/-! ## A047839.P10093214998764521030

`∑[A077606(n+1)²+1]`
-/

namespace A047839.P10093214998764521030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047839.P10093214998764521030

namespace A047839

/-- `∑[A077606(n+1)²+1]` -/
def P10093214998764521030.Spec : Prop :=
  ∀ n, P10093214998764521030.a n = A047839 (n + 1)

end A047839

/-! ## A047839.P6261080087003691229

`comp[A140106(n+1)+∑[n]]`
-/

namespace A047839.P6261080087003691229
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047839.P6261080087003691229

namespace A047839

/-- `comp[A140106(n+1)+∑[n]]` -/
def P6261080087003691229.Spec : Prop :=
  ∀ n, (P6261080087003691229.a n : ℤ) = A047839 (n + 1)

end A047839

/-! ## A047839.P1319216539650728080

`∑[A150728(Δ[A172471(n)])]`
-/

namespace A047839.P1319216539650728080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150728 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047839.P1319216539650728080

namespace A047839

/-- `∑[A150728(Δ[A172471(n)])]` -/
def P1319216539650728080.Spec : Prop :=
  ∀ n, P1319216539650728080.a n = A047839 (n + 1)

end A047839

/-! ## A047839.P8291364414832371985

`∑[A150907(Δ[A172471(n)])]`
-/

namespace A047839.P8291364414832371985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150907 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047839.P8291364414832371985

namespace A047839

/-- `∑[A150907(Δ[A172471(n)])]` -/
def P8291364414832371985.Spec : Prop :=
  ∀ n, P8291364414832371985.a n = A047839 (n + 1)

end A047839

/-! ## A047839.P15493515230257883515

`A023443(A182834(n+2))`
-/

namespace A047839.P15493515230257883515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A182834 (n + 2)).toNat

end

end A047839.P15493515230257883515

namespace A047839

/-- `A023443(A182834(n+2))` -/
def P15493515230257883515.Spec : Prop :=
  ∀ n, P15493515230257883515.a n = A047839 (n + 1)

end A047839

/-! ## A047839.P7267044013639719625

`A112594(2*(n+1))/2`
-/

namespace A047839.P7267044013639719625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112594 (2 * (n + 1)) : ℚ) / 2

end

end A047839.P7267044013639719625

namespace A047839

/-- `A112594(2*(n+1))/2` -/
def P7267044013639719625.Spec : Prop :=
  ∀ n, P7267044013639719625.a n = (A047839 (n + 1) : ℚ)

theorem P7267044013639719625.correct : P7267044013639719625.Spec := by
  intro n
  simp only [A047839, Nat.add_sub_cancel, A047839.P7267044013639719625.a, A047839.P12141975543020957016.a, A112594, A112594.P8927385987181911973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A047839

/-! ## A047839.P17250486844139524944

`A004526(A183867(2*(n+1)))`
-/

namespace A047839.P17250486844139524944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A183867 (2 * (n + 1))).toNat

end

end A047839.P17250486844139524944

namespace A047839

/-- `A004526(A183867(2*(n+1)))` -/
def P17250486844139524944.Spec : Prop :=
  ∀ n, P17250486844139524944.a n = A047839 (n + 1)

end A047839

/-!
# A047842: Describe n (count digits in order of increasing value, ignoring missing digits).

The programs for A047842, there is no canonical definition to state claims against.
-/

/-! ## A047842.P17301792048819664999

`A045918(n)-A097601(n)`
-/

namespace A047842.P17301792048819664999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 n - A097601 n

end

end A047842.P17301792048819664999

/-! ## A047842.P2541633479017719842

`A244112(n)-A097601(A004186(n))`
-/

namespace A047842.P2541633479017719842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244112 n - A097601 (A004186 n).toNat

end

end A047842.P2541633479017719842

/-! ## A047842.P6999126329314059337

`A244112(n)-A097601(A108782(n)+n)`
-/

namespace A047842.P6999126329314059337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244112 n - A097601 (A108782 n + (n : ℤ)).toNat

end

end A047842.P6999126329314059337

/-! ## A047842.P3035941412518124513

`A045918(n)+A057428(n)*A097601(n)`
-/

namespace A047842.P3035941412518124513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 n + A057428 n * A097601 n

end

end A047842.P3035941412518124513

/-! ## A047842.P8713282521851949061

`A244112(n)-A097601(9*A283001(n)+n)`
-/

namespace A047842.P8713282521851949061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244112 n - A097601 (9 * A283001 n + (n : ℤ)).toNat

end

end A047842.P8713282521851949061

/-! ## A047842.P1470286220630723166

`A244112(n)-A097601(A052008(n)+A193581(n)-n)`
-/

namespace A047842.P1470286220630723166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244112 n - A097601 (A052008 n + (A193581 n - (n : ℤ))).toNat

end

end A047842.P1470286220630723166

/-! ## A047842.P6319349457096422306

`A244112(n)-A097601(A151949(n)+n-A193581(n))`
-/

namespace A047842.P6319349457096422306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244112 n - A097601 (A151949 n + ((n : ℤ) - A193581 n)).toNat

end

end A047842.P6319349457096422306

/-! ## A047842.P6637023249121751515

`A244112(n)-A108782(A087019(n))-A097601(n)`
-/

namespace A047842.P6637023249121751515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244112 n - A108782 (A087019 n).toNat - A097601 n

end

end A047842.P6637023249121751515

/-! ## A047842.P10145671547771792445

`A045918(n)-A193581(A056143(n))`
-/

namespace A047842.P10145671547771792445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 n - A193581 (A056143 n).toNat

end

end A047842.P10145671547771792445

/-! ## A047842.P5529949596124048011

`A045918(n)-A193581(A181352(n))`
-/

namespace A047842.P5529949596124048011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 n - A193581 (A181352 n).toNat

end

end A047842.P5529949596124048011

/-! ## A047842.P860218855877943061

`A244112(n)-A151949(A056143(n))`
-/

namespace A047842.P860218855877943061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244112 n - A151949 (A056143 n).toNat

end

end A047842.P860218855877943061

/-! ## A047842.P1702648680203138130

`A244112(n)-abs(A056965(A181352(n)))`
-/

namespace A047842.P1702648680203138130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244112 n - |A056965 (A181352 n).toNat|

end

end A047842.P1702648680203138130

/-!
# A047845: a(n) = (m-1)/2, where m is the n-th odd nonprime (A014076(n)).

The programs for A047845, the canonical program `A047845.P10472410554983521945` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047845 has offset 1).

The definition of A047845 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047845.P6503201156986150880

`comp[floor(p?[2*n+1]/2)]`
-/

namespace A047845.P6503201156986150880
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047845.P6503201156986150880

namespace A047845

/-- `comp[floor(p?[2*n+1]/2)]` -/
def P6503201156986150880.Spec : Prop :=
  ∀ n, (P6503201156986150880.a n : ℤ) = A047845 (n + 1)

end A047845

/-! ## A047845.P17534767509779601295

`comp[floor(cosh(log(p?[2*n+1])))]`
-/

namespace A047845.P17534767509779601295
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℝ))⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047845.P17534767509779601295

namespace A047845

/-- `comp[floor(cosh(log(p?[2*n+1])))]` -/
def P17534767509779601295.Spec : Prop :=
  ∀ n, (P17534767509779601295.a n : ℤ) = A047845 (n + 1)

end A047845

/-! ## A047845.P6658743569767609552

`comp[floor(sinh(log(p?[2*n+1])))]`
-/

namespace A047845.P6658743569767609552
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℝ))⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047845.P6658743569767609552

namespace A047845

/-- `comp[floor(sinh(log(p?[2*n+1])))]` -/
def P6658743569767609552.Spec : Prop :=
  ∀ n, (P6658743569767609552.a n : ℤ) = A047845 (n + 1)

end A047845

/-! ## A047845.P3710502409256105647

`comp[round(sinh(log(p?[2*n+1])))]`
-/

namespace A047845.P3710502409256105647
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.log (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℝ)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047845.P3710502409256105647

namespace A047845

/-- `comp[round(sinh(log(p?[2*n+1])))]` -/
def P3710502409256105647.Spec : Prop :=
  ∀ n, (P3710502409256105647.a n : ℤ) = A047845 (n + 1)

end A047845

/-! ## A047845.P10472410554983521945

`eq[0, A101264(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A047845

/-- `eq[0, A101264(n)]` -/
def P10472410554983521945.Spec : Prop :=
  ∀ n, (P10472410554983521945.a n : ℤ) = A047845 (n + 1)

theorem P10472410554983521945.correct : P10472410554983521945.Spec := by
  intro n
  simp only [A047845, Nat.add_sub_cancel]

end A047845

/-! ## A047845.P63608027263581299

`comp[A005097(n+1)]`
-/

namespace A047845.P63608027263581299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047845.P63608027263581299

namespace A047845

/-- `comp[A005097(n+1)]` -/
def P63608027263581299.Spec : Prop :=
  ∀ n, (P63608027263581299.a n : ℤ) = A047845 (n + 1)

end A047845

/-! ## A047845.P8278907102103700027

`comp[A130290(n+1)]`
-/

namespace A047845.P8278907102103700027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047845.P8278907102103700027

namespace A047845

/-- `comp[A130290(n+1)]` -/
def P8278907102103700027.Spec : Prop :=
  ∀ n, (P8278907102103700027.a n : ℤ) = A047845 (n + 1)

end A047845

/-! ## A047845.P10958786237766800125

`comp[A102781(n+2)]`
-/

namespace A047845.P10958786237766800125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047845.P10958786237766800125

namespace A047845

/-- `comp[A102781(n+2)]` -/
def P10958786237766800125.Spec : Prop :=
  ∀ n, (P10958786237766800125.a n : ℤ) = A047845 (n + 1)

end A047845

/-! ## A047845.P13448747005386276589

`A104275(n+1)-1`
-/

namespace A047845.P13448747005386276589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1) - 1

end

end A047845.P13448747005386276589

namespace A047845

/-- `A104275(n+1)-1` -/
def P13448747005386276589.Spec : Prop :=
  ∀ n, P13448747005386276589.a n = A047845 (n + 1)

end A047845

/-! ## A047845.P155043135786192725

`A153043(n+1)-2`
-/

namespace A047845.P155043135786192725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153043 (n + 1) - 2

end

end A047845.P155043135786192725

namespace A047845

/-- `A153043(n+1)-2` -/
def P155043135786192725.Spec : Prop :=
  ∀ n, P155043135786192725.a n = A047845 (n + 1)

theorem P155043135786192725.correct : P155043135786192725.Spec := by
  intro n
  simp only [A047845, Nat.add_sub_cancel, A047845.P155043135786192725.a, A047845.P10472410554983521945.f1, A047845.P10472410554983521945.f2, A047845.P10472410554983521945.a, A101264, A101264.P9977125953316836564.a, A153043, A153043.P5345895486069451585.f1, A153043.P5345895486069451585.f2, A153043.P5345895486069451585.a, A010051, A010051.P15078252821583414300.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A047845

/-! ## A047845.P15058006745686647304

`A153044(n+1)-5`
-/

namespace A047845.P15058006745686647304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153044 (n + 1) - 5

end

end A047845.P15058006745686647304

namespace A047845

/-- `A153044(n+1)-5` -/
def P15058006745686647304.Spec : Prop :=
  ∀ n, P15058006745686647304.a n = A047845 (n + 1)

theorem P15058006745686647304.correct : P15058006745686647304.Spec := by
  intro n
  simp only [A047845, Nat.add_sub_cancel, A047845.P15058006745686647304.a, A047845.P10472410554983521945.f1, A047845.P10472410554983521945.f2, A047845.P10472410554983521945.a, A101264, A101264.P9977125953316836564.a, A153044, A153044.P8228127336685737390.a, A010051, A010051.P15078252821583414300.a, A153043, A153043.P5345895486069451585.f1, A153043.P5345895486069451585.f2, A153043.P5345895486069451585.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A047845

/-! ## A047845.P8149948381796272148

`A179899(n+1)/3`
-/

namespace A047845.P8149948381796272148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179899 (n + 1) : ℚ) / 3

end

end A047845.P8149948381796272148

namespace A047845

/-- `A179899(n+1)/3` -/
def P8149948381796272148.Spec : Prop :=
  ∀ n, P8149948381796272148.a n = (A047845 (n + 1) : ℚ)

theorem P8149948381796272148.correct : P8149948381796272148.Spec := by
  intro n
  simp only [A047845, Nat.add_sub_cancel, A047845.P8149948381796272148.a, A047845.P10472410554983521945.f1, A047845.P10472410554983521945.f2, A047845.P10472410554983521945.a, A101264, A101264.P9977125953316836564.a, A179899, A179899.P8119244184585946797.f1, A179899.P8119244184585946797.f2, A179899.P8119244184585946797.a, A010051, A010051.P15078252821583414300.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A047845

/-! ## A047845.P12908392071843820735

`A153049(n+1)-7`
-/

namespace A047845.P12908392071843820735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153049 (n + 1) - 7

end

end A047845.P12908392071843820735

namespace A047845

/-- `A153049(n+1)-7` -/
def P12908392071843820735.Spec : Prop :=
  ∀ n, P12908392071843820735.a n = A047845 (n + 1)

theorem P12908392071843820735.correct : P12908392071843820735.Spec := by
  intro n
  simp only [A047845, Nat.add_sub_cancel, A047845.P12908392071843820735.a, A047845.P10472410554983521945.f1, A047845.P10472410554983521945.f2, A047845.P10472410554983521945.a, A101264, A101264.P9977125953316836564.a, A153049, A153049.P7296181475207406392.a, A010051, A010051.P15078252821583414300.a, A153044, A153044.P8228127336685737390.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A153043, A153043.P5345895486069451585.f1, A153043.P5345895486069451585.f2, A153043.P5345895486069451585.a, A193056, A193056.P6449544040074946363.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A047845

/-! ## A047845.P8099304265567090677

`A153051(n+1)-9`
-/

namespace A047845.P8099304265567090677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153051 (n + 1) - 9

end

end A047845.P8099304265567090677

namespace A047845

/-- `A153051(n+1)-9` -/
def P8099304265567090677.Spec : Prop :=
  ∀ n, P8099304265567090677.a n = A047845 (n + 1)

theorem P8099304265567090677.correct : P8099304265567090677.Spec := by
  intro n
  simp only [A047845, Nat.add_sub_cancel, A047845.P8099304265567090677.a, A047845.P10472410554983521945.f1, A047845.P10472410554983521945.f2, A047845.P10472410554983521945.a, A101264, A101264.P9977125953316836564.a, A153051, A153051.P15552689692595928018.a, A010051, A010051.P15078252821583414300.a, A153049, A153049.P7296181475207406392.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A153044, A153044.P8228127336685737390.a, A193056, A193056.P6449544040074946363.a, A153043, A153043.P5345895486069451585.f1, A153043.P5345895486069451585.f2, A153043.P5345895486069451585.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A047845

/-! ## A047845.P2419795568297256808

`comp[floor(A151800(n)/2)]`
-/

namespace A047845.P2419795568297256808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A151800 n : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047845.P2419795568297256808

namespace A047845

/-- `comp[floor(A151800(n)/2)]` -/
def P2419795568297256808.Spec : Prop :=
  ∀ n, (P2419795568297256808.a n : ℤ) = A047845 (n + 1)

end A047845

/-! ## A047845.P18269298406889171093

`floor(A014076(n+1)/2)`
-/

namespace A047845.P18269298406889171093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014076 (n + 1) : ℚ) / 2⌋

end

end A047845.P18269298406889171093

namespace A047845

/-- `floor(A014076(n+1)/2)` -/
def P18269298406889171093.Spec : Prop :=
  ∀ n, P18269298406889171093.a n = A047845 (n + 1)

end A047845

/-! ## A047845.P12559099014913466705

`comp[A067076(n+1)+1]`
-/

namespace A047845.P12559099014913466705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047845.P12559099014913466705

namespace A047845

/-- `comp[A067076(n+1)+1]` -/
def P12559099014913466705.Spec : Prop :=
  ∀ n, (P12559099014913466705.a n : ℤ) = A047845 (n + 1)

end A047845

/-! ## A047845.P9749210362218461919

`comp[A006254(n+1)-1]`
-/

namespace A047845.P9749210362218461919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047845.P9749210362218461919

namespace A047845

/-- `comp[A006254(n+1)-1]` -/
def P9749210362218461919.Spec : Prop :=
  ∀ n, (P9749210362218461919.a n : ℤ) = A047845 (n + 1)

end A047845

/-! ## A047845.P15179281685157915685

`comp[A098090(n+1)-2]`
-/

namespace A047845.P15179281685157915685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047845.P15179281685157915685

namespace A047845

/-- `comp[A098090(n+1)-2]` -/
def P15179281685157915685.Spec : Prop :=
  ∀ n, (P15179281685157915685.a n : ℤ) = A047845 (n + 1)

end A047845

/-!
# A047846: Number of successive odd nonprimes (A014076).

The programs for A047846, the canonical program `A047846.P4096273857081751705` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047846 has offset 1).

The definition of A047846 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047846.P14530495353975690126

`(A136800(A028310(n))-1)/2`
-/

namespace A047846.P14530495353975690126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136800 (A028310 n).toNat - 1 : ℚ) / 2

end

end A047846.P14530495353975690126

namespace A047846

/-- `(A136800(A028310(n))-1)/2` -/
def P14530495353975690126.Spec : Prop :=
  ∀ n, P14530495353975690126.a n = (A047846 (n + 1) : ℚ)

end A047846

/-! ## A047846.P4096273857081751705

`A028242(A136800(A028310(n)))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A047846

/-- `A028242(A136800(A028310(n)))` -/
def P4096273857081751705.Spec : Prop :=
  ∀ n, P4096273857081751705.a n = A047846 (n + 1)

theorem P4096273857081751705.correct : P4096273857081751705.Spec := by
  intro n
  simp only [A047846, Nat.add_sub_cancel]

end A047846

/-! ## A047846.P11694864186401650487

`A004526(A136800(gcd(n, A008486(n))))`
-/

namespace A047846.P11694864186401650487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A136800 (Int.gcd (n : ℤ) (A008486 n))).toNat

end

end A047846.P11694864186401650487

namespace A047846

/-- `A004526(A136800(gcd(n, A008486(n))))` -/
def P11694864186401650487.Spec : Prop :=
  ∀ n, P11694864186401650487.a n = A047846 (n + 1)

end A047846

/-! ## A047846.P14243720923934732492

`A028310(A196277(n+1)-A196277(A028310(n)))`
-/

namespace A047846.P14243720923934732492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A196277 (n + 1) - A196277 (A028310 n).toNat).toNat

end

end A047846.P14243720923934732492

namespace A047846

/-- `A028310(A196277(n+1)-A196277(A028310(n)))` -/
def P14243720923934732492.Spec : Prop :=
  ∀ n, P14243720923934732492.a n = A047846 (n + 1)

end A047846

/-! ## A047846.P1824069609980834218

`A028310(A196277(n+1)%A196277(A028310(n)))`
-/

namespace A047846.P1824069609980834218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A196277 (n + 1)) (A196277 (A028310 n).toNat)).toNat

end

end A047846.P1824069609980834218

namespace A047846

/-- `A028310(A196277(n+1)%A196277(A028310(n)))` -/
def P1824069609980834218.Spec : Prop :=
  ∀ n, P1824069609980834218.a n = A047846 (n + 1)

end A047846

/-! ## A047846.P16686324161189501994

`A026741(A100317(2*n+3)-A100317(2*(n+1)))`
-/

namespace A047846.P16686324161189501994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A100317 (2 * n + 3) - A100317 (2 * (n + 1))).toNat

end

end A047846.P16686324161189501994

namespace A047846

/-- `A026741(A100317(2*n+3)-A100317(2*(n+1)))` -/
def P16686324161189501994.Spec : Prop :=
  ∀ n, P16686324161189501994.a n = A047846 (n + 1)

end A047846

/-! ## A047846.P18008101190551920192

`A008619(A007920(A067774(n+1)+3))`
-/

namespace A047846.P18008101190551920192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A007920 (A067774 (n + 1) + 3).toNat).toNat

end

end A047846.P18008101190551920192

namespace A047846

/-- `A008619(A007920(A067774(n+1)+3))` -/
def P18008101190551920192.Spec : Prop :=
  ∀ n, P18008101190551920192.a n = A047846 (n + 1)

end A047846

/-! ## A047846.P17726904390728697401

`A104279(n+1)%A008619(A067774(n+1))`
-/

namespace A047846.P17726904390728697401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104279 (n + 1)) (A008619 (A067774 (n + 1)).toNat)

end

end A047846.P17726904390728697401

namespace A047846

/-- `A104279(n+1)%A008619(A067774(n+1))` -/
def P17726904390728697401.Spec : Prop :=
  ∀ n, P17726904390728697401.a n = A047846 (n + 1)

end A047846

/-! ## A047846.P16108183525339036143

`A004526(A100317(2*n+3)-A057637(A100317(2*(n+1))))`
-/

namespace A047846.P16108183525339036143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A100317 (2 * n + 3) - A057637 (A100317 (2 * (n + 1))).toNat).toNat

end

end A047846.P16108183525339036143

namespace A047846

/-- `A004526(A100317(2*n+3)-A057637(A100317(2*(n+1))))` -/
def P16108183525339036143.Spec : Prop :=
  ∀ n, P16108183525339036143.a n = A047846 (n + 1)

end A047846

/-! ## A047846.P12032670568264375152

`Δ[A062610(A025584(n+1)+2)]`
-/

namespace A047846.P12032670568264375152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062610 (A025584 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047846.P12032670568264375152

namespace A047846

/-- `Δ[A062610(A025584(n+1)+2)]` -/
def P12032670568264375152.Spec : Prop :=
  ∀ n, P12032670568264375152.a n = A047846 (n + 1)

end A047846

/-! ## A047846.P932639724835449277

`Δ[record[n-A102885(2*n+1)]]`
-/

namespace A047846.P932639724835449277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A102885 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047846.P932639724835449277

namespace A047846

/-- `Δ[record[n-A102885(2*n+1)]]` -/
def P932639724835449277.Spec : Prop :=
  ∀ n, P932639724835449277.a n = A047846 (n + 1)

end A047846

/-!
# A047847: Numbers n such that n + (n+1) and (n+2) + (n+3) are both prime.

The programs for A047847, there is no canonical definition to state claims against.
-/

/-! ## A047847.P479529758210911513

`(A046132(n+1)-5)/2`
-/

namespace A047847.P479529758210911513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046132 (n + 1) - 5 : ℚ) / 2

end

end A047847.P479529758210911513

/-! ## A047847.P16241655757886047020

`A088762(n+1)-1`
-/

namespace A047847.P16241655757886047020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088762 (n + 1) - 1

end

end A047847.P16241655757886047020

/-! ## A047847.P6821900812038281683

`floor(A015913(n+1)/2)`
-/

namespace A047847.P6821900812038281683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A015913 (n + 1) : ℚ) / 2⌋

end

end A047847.P6821900812038281683

/-! ## A047847.P6548992051972888874

`(A087679(n+1)-3)/2`
-/

namespace A047847.P6548992051972888874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087679 (n + 1) - 3 : ℚ) / 2

end

end A047847.P6548992051972888874

/-! ## A047847.P3782403100403386099

`(A165986(n+1)-2)/4`
-/

namespace A047847.P3782403100403386099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165986 (n + 1) - 2 : ℚ) / 4

end

end A047847.P3782403100403386099

/-! ## A047847.P8495183727164552209

`A015913(n+1)%A088762(n+1)`
-/

namespace A047847.P8495183727164552209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015913 (n + 1)) (A088762 (n + 1))

end

end A047847.P8495183727164552209

/-! ## A047847.P9063023351129046090

`A163634(n+1)%A087679(n+1)`
-/

namespace A047847.P9063023351129046090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163634 (n + 1)) (A087679 (n + 1))

end

end A047847.P9063023351129046090

/-! ## A047847.P11886180137039734704

`∪[A007352(n+1), A111981(n+1)]-1`
-/

namespace A047847.P11886180137039734704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111981 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A047847.P11886180137039734704

/-! ## A047847.P14966544529415552240

`(p?[A056772(n+1)]-1)/2`
-/

namespace A047847.P14966544529415552240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℚ) / 2

end

end A047847.P14966544529415552240

/-! ## A047847.P10390442169041532006

`floor(A094343(2*n+1)/2)`
-/

namespace A047847.P10390442169041532006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094343 (2 * n + 1) : ℚ) / 2⌋

end

end A047847.P10390442169041532006

/-! ## A047847.P11107488158673901959

`A072541(2*n+1)/2-1`
-/

namespace A047847.P11107488158673901959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072541 (2 * n + 1) : ℚ) / 2 - 1

end

end A047847.P11107488158673901959

/-! ## A047847.P16608485536631465793

`floor(p?[A172367(n+1)]/2)`
-/

namespace A047847.P16608485536631465793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌋

end

end A047847.P16608485536631465793

/-! ## A047847.P5938915341436729951

`(p?[A000040(n+1)-4]-1)/2`
-/

namespace A047847.P5938915341436729951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℚ) / 2

end

end A047847.P5938915341436729951

/-! ## A047847.P7382069900167046711

`ceil((p?[A006093(n+1)-3]-2)/2)`
-/

namespace A047847.P7382069900167046711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2 : ℚ) / 2⌉

end

end A047847.P7382069900167046711

/-! ## A047847.P10391181804939310446

`∩[A005097(n+1), A089038(n+1)]`
-/

namespace A047847.P10391181804939310446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047847.P10391181804939310446

/-! ## A047847.P2839934160057600438

`∩[A067076(n+1)+1, A089038(n+1)]`
-/

namespace A047847.P2839934160057600438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047847.P2839934160057600438

/-! ## A047847.P5688932467574512694

`∩[A006254(n+1), A067076(n+1)]-1`
-/

namespace A047847.P5688932467574512694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A047847.P5688932467574512694

/-! ## A047847.P16946407978121593465

`∩[A089038(n+1), A098090(n+1)-2]`
-/

namespace A047847.P16946407978121593465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047847.P16946407978121593465

/-!
# A047848: Array A read by diagonals; n-th difference of (A(k,n), A(k,n-1),..., A(k,0)) is (k+2)^(n-1), for n=1,2,3,...; k=0,1,2,...

The programs for A047848, the canonical program `A047848.P14077358030825079060` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047848 has offset 0).

The definition of A047848 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047848.P14077358030825079060

`((col(n)+3)^(row(n)-col(n))+col(n)+1)/(col(n)+2)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047848

/-- `((col(n)+3)^(row(n)-col(n))+col(n)+1)/(col(n)+2)` -/
def P14077358030825079060.Spec : Prop :=
  ∀ n, P14077358030825079060.a n = (A047848 n : ℚ)

end A047848

/-! ## A047848.P4599028025833140225

`A123490(comp[∑[n]])`
-/

namespace A047848.P4599028025833140225
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123490 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A047848.P4599028025833140225

namespace A047848

/-- `A123490(comp[∑[n]])` -/
def P4599028025833140225.Spec : Prop :=
  ∀ n, P4599028025833140225.a n = A047848 n

end A047848

/-! ## A047848.P2095729726731449956

`or(char[2], A123490(A014132(n+1)))`
-/

namespace A047848.P2095729726731449956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A123490 (A014132 (n + 1)).toNat)

end

end A047848.P2095729726731449956

namespace A047848

/-- `or(char[2], A123490(A014132(n+1)))` -/
def P2095729726731449956.Spec : Prop :=
  ∀ n, P2095729726731449956.a n = A047848 n

end A047848

/-! ## A047848.P15625844046926948221

`gcd(A000038(n), A123490(A014132(n+1)))`
-/

namespace A047848.P15625844046926948221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A123490 (A014132 (n + 1)).toNat)

end

end A047848.P15625844046926948221

namespace A047848

/-- `gcd(A000038(n), A123490(A014132(n+1)))` -/
def P15625844046926948221.Spec : Prop :=
  ∀ n, (P15625844046926948221.a n : ℤ) = A047848 n

end A047848

/-! ## A047848.P15125052409782504323

`A123490(A014132(n+1))+A008683(64*(n+1))`
-/

namespace A047848.P15125052409782504323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123490 (A014132 (n + 1)).toNat + A008683 (64 * (n + 1))

end

end A047848.P15125052409782504323

namespace A047848

/-- `A123490(A014132(n+1))+A008683(64*(n+1))` -/
def P15125052409782504323.Spec : Prop :=
  ∀ n, P15125052409782504323.a n = A047848 n

end A047848

/-! ## A047848.P7219802365767336435

`A123490(A014132(n+1))%A000032(n+3)`
-/

namespace A047848.P7219802365767336435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123490 (A014132 (n + 1)).toNat) (A000032 (n + 3))

end

end A047848.P7219802365767336435

namespace A047848

/-- `A123490(A014132(n+1))%A000032(n+3)` -/
def P7219802365767336435.Spec : Prop :=
  ∀ n, P7219802365767336435.a n = A047848 n

end A047848

/-! ## A047848.P15046043942263868169

`A123490(A014132(n+1))+A000038(A014132(n+1)²)`
-/

namespace A047848.P15046043942263868169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123490 (A014132 (n + 1)).toNat + A000038 (A014132 (n + 1) ^ 2).toNat

end

end A047848.P15046043942263868169

namespace A047848

/-- `A123490(A014132(n+1))+A000038(A014132(n+1)²)` -/
def P15046043942263868169.Spec : Prop :=
  ∀ n, P15046043942263868169.a n = A047848 n

end A047848

/-! ## A047848.P4868078229148885505

`A123490(A014132(n+1))+A000038(A123490(n))`
-/

namespace A047848.P4868078229148885505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123490 (A014132 (n + 1)).toNat + A000038 (A123490 n).toNat

end

end A047848.P4868078229148885505

namespace A047848

/-- `A123490(A014132(n+1))+A000038(A123490(n))` -/
def P4868078229148885505.Spec : Prop :=
  ∀ n, P4868078229148885505.a n = A047848 n

end A047848

/-!
# A047849: a(n) = (4^n + 2)/3.

The programs for A047849, the canonical program `A047849.P12708568966129117375` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047849 has offset 0).

The definition of A047849 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4^n+2)/3` (program `A047849.P6746038126822989940`, by `A047849.P6746038126822989940.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A047849.P6746038126822989940

`(4^n+2)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A047849.P6746038126822989940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n + 2 : ℚ) / 3

end

end A047849.P6746038126822989940

namespace A047849

/-- `(4^n+2)/3` -/
def P6746038126822989940.Spec : Prop :=
  ∀ n, P6746038126822989940.a n = (A047849 n : ℚ)

theorem P6746038126822989940.correct : P6746038126822989940.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A047849, Nat.add_sub_cancel, A047849.P6746038126822989940.a, A047849.P12708568966129117375.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A047849, Nat.add_sub_cancel, A047849.P6746038126822989940.a, A047849.P12708568966129117375.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A047849

/-! ## A047849.P12708568966129117375

`4*a(n-1)-2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047849

/-- `4*a(n-1)-2` -/
def P12708568966129117375.Spec : Prop :=
  ∀ n, P12708568966129117375.a n = A047849 n

theorem P12708568966129117375.correct : P12708568966129117375.Spec := by
  intro n
  simp only [A047849]

end A047849

/-! ## A047849.P16502824029645258781

`A002450(n)+1`
-/

namespace A047849.P16502824029645258781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n + 1

end

end A047849.P16502824029645258781

namespace A047849

/-- `A002450(n)+1` -/
def P16502824029645258781.Spec : Prop :=
  ∀ n, P16502824029645258781.a n = A047849 n

end A047849

/-! ## A047849.P15927301298048643193

`A078008(2*n)`
-/

namespace A047849.P15927301298048643193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (2 * n)

end

end A047849.P15927301298048643193

namespace A047849

/-- `A078008(2*n)` -/
def P15927301298048643193.Spec : Prop :=
  ∀ n, P15927301298048643193.a n = A047849 n

end A047849

/-! ## A047849.P10483188777218717301

`A007583(n)-A002450(n)`
-/

namespace A047849.P10483188777218717301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 n - A002450 n

end

end A047849.P10483188777218717301

namespace A047849

/-- `A007583(n)-A002450(n)` -/
def P10483188777218717301.Spec : Prop :=
  ∀ n, P10483188777218717301.a n = A047849 n

end A047849

/-! ## A047849.P8019906128147562543

`A000302(n)-A020988(n)`
-/

namespace A047849.P8019906128147562543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n - A020988 n

end

end A047849.P8019906128147562543

namespace A047849

/-- `A000302(n)-A020988(n)` -/
def P8019906128147562543.Spec : Prop :=
  ∀ n, P8019906128147562543.a n = A047849 n

end A047849

/-! ## A047849.P3534025021861782508

`A001045(2*n+1)-A001045(2*n)`
-/

namespace A047849.P3534025021861782508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (2 * n + 1) - A001045 (2 * n)

end

end A047849.P3534025021861782508

namespace A047849

/-- `A001045(2*n+1)-A001045(2*n)` -/
def P3534025021861782508.Spec : Prop :=
  ∀ n, P3534025021861782508.a n = A047849 n

end A047849

/-! ## A047849.P3586256587258357103

`∑[4^floor(log(cosh(n)))]`
-/

namespace A047849.P3586256587258357103
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (⌊Real.log (Real.cosh (n : ℝ))⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047849.P3586256587258357103

namespace A047849

/-- `∑[4^floor(log(cosh(n)))]` -/
def P3586256587258357103.Spec : Prop :=
  ∀ n, P3586256587258357103.a n = (A047849 n : ℚ)

end A047849

/-! ## A047849.P9619700458452015653

`ogf((1-3x)/(1-5x+4x^2))`
-/

namespace A047849.P9619700458452015653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -5, 4] n

end

end A047849.P9619700458452015653

namespace A047849

/-- `ogf((1-3x)/(1-5x+4x^2))` -/
def P9619700458452015653.Spec : Prop :=
  ∀ n, P9619700458452015653.a n = A047849 n

end A047849

/-! ## A047849.P18163113209456485617

`∑[(2^floor(n*tanh(3)))²]`
-/

namespace A047849.P18163113209456485617
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (⌊(n : ℝ) * Real.tanh (3 : ℝ)⌋ : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047849.P18163113209456485617

namespace A047849

/-- `∑[(2^floor(n*tanh(3)))²]` -/
def P18163113209456485617.Spec : Prop :=
  ∀ n, P18163113209456485617.a n = (A047849 n : ℚ)

end A047849

/-! ## A047849.P13567313000154066178

`lcm(8, a(n-1))-2` with `a(0)=1, a(1)=2`
-/

namespace A047849.P13567313000154066178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (Int.lcm 8 (a (n - 1)) : ℤ) - 2

end

end A047849.P13567313000154066178

namespace A047849

/-- `lcm(8, a(n-1))-2` -/
def P13567313000154066178.Spec : Prop :=
  ∀ n, P13567313000154066178.a n = A047849 n

end A047849

/-! ## A047849.P2527127140913725758

`∑[lcm(4, 2^(2*n))/4]`
-/

namespace A047849.P2527127140913725758
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (2 ^ (2 * n)) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047849.P2527127140913725758

namespace A047849

/-- `∑[lcm(4, 2^(2*n))/4]` -/
def P2527127140913725758.Spec : Prop :=
  ∀ n, P2527127140913725758.a n = (A047849 n : ℚ)

end A047849

/-! ## A047849.P1616341206932452748

`∑[4^((n-1)%(n+1))]`
-/

namespace A047849.P1616341206932452748
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047849.P1616341206932452748

namespace A047849

/-- `∑[4^((n-1)%(n+1))]` -/
def P1616341206932452748.Spec : Prop :=
  ∀ n, P1616341206932452748.a n = (A047849 n : ℚ)

end A047849

/-! ## A047849.P13985387352910501620

`∑[gcd(4, 2^n)^(n-1)]`
-/

namespace A047849.P13985387352910501620
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 4 (2 ^ n) : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047849.P13985387352910501620

namespace A047849

/-- `∑[gcd(4, 2^n)^(n-1)]` -/
def P13985387352910501620.Spec : Prop :=
  ∀ n, P13985387352910501620.a n = (A047849 n : ℚ)

end A047849

/-! ## A047849.P5061028255877479240

`4^(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A047849.P5061028255877479240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + a (n - 1)

end

end A047849.P5061028255877479240

namespace A047849

/-- `4^(n-1)+a(n-1)` -/
def P5061028255877479240.Spec : Prop :=
  ∀ n, P5061028255877479240.a n = (A047849 n : ℚ)

end A047849

/-! ## A047849.P1011761564123576539

`a(n-1)/(1/2)²-2` with `a(0)=1`
-/

namespace A047849.P1011761564123576539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 - 2

end

end A047849.P1011761564123576539

namespace A047849

/-- `a(n-1)/(1/2)²-2` -/
def P1011761564123576539.Spec : Prop :=
  ∀ n, P1011761564123576539.a n = (A047849 n : ℚ)

end A047849

/-! ## A047849.P16665151986985117847

`or(4^(n-1), a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A047849.P16665151986985117847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lor (SequenceMachineLib.roundAway ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1))

end

end A047849.P16665151986985117847

namespace A047849

/-- `or(4^(n-1), a(n-1))` -/
def P16665151986985117847.Spec : Prop :=
  ∀ n, P16665151986985117847.a n = A047849 n

end A047849

/-! ## A047849.P13773818103604326296

`xor(4^(n-1), a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A047849.P13773818103604326296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.xor (SequenceMachineLib.roundAway ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1))

end

end A047849.P13773818103604326296

namespace A047849

/-- `xor(4^(n-1), a(n-1))` -/
def P13773818103604326296.Spec : Prop :=
  ∀ n, P13773818103604326296.a n = A047849 n

end A047849

/-! ## A047849.P12675848999356122691

`4^(n-1)-floor(-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A047849.P12675848999356122691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (⌊-a (n - 1)⌋ : ℚ)

end

end A047849.P12675848999356122691

namespace A047849

/-- `4^(n-1)-floor(-a(n-1))` -/
def P12675848999356122691.Spec : Prop :=
  ∀ n, P12675848999356122691.a n = (A047849 n : ℚ)

end A047849

/-! ## A047849.P5188233783449208628

`4^(n-1)-ceil(-a(n-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A047849.P5188233783449208628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (⌈-a (n - 1)⌉ : ℚ)

end

end A047849.P5188233783449208628

namespace A047849

/-- `4^(n-1)-ceil(-a(n-1))` -/
def P5188233783449208628.Spec : Prop :=
  ∀ n, P5188233783449208628.a n = (A047849 n : ℚ)

end A047849

/-!
# A047850: a(n) = (5^n + 3)/4.

The programs for A047850, the canonical program `A047850.P4419354886793222274` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047850 has offset 0).

The definition of A047850 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n+3)/4` (program `A047850.P11034908784403803991`, by `A047850.P11034908784403803991.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A047850.P11034908784403803991

`(5^n+3)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A047850.P11034908784403803991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 ^ n + 3 : ℚ) / 4

end

end A047850.P11034908784403803991

namespace A047850

/-- `(5^n+3)/4` -/
def P11034908784403803991.Spec : Prop :=
  ∀ n, P11034908784403803991.a n = (A047850 n : ℚ)

theorem P11034908784403803991.correct : P11034908784403803991.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A047850, Nat.add_sub_cancel, A047850.P11034908784403803991.a, A047850.P4419354886793222274.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A047850, Nat.add_sub_cancel, A047850.P11034908784403803991.a, A047850.P4419354886793222274.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A047850

/-! ## A047850.P4419354886793222274

`5*a(n-1)-3` with `a(0)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047850

/-- `5*a(n-1)-3` -/
def P4419354886793222274.Spec : Prop :=
  ∀ n, P4419354886793222274.a n = A047850 n

theorem P4419354886793222274.correct : P4419354886793222274.Spec := by
  intro n
  simp only [A047850]

end A047850

/-! ## A047850.P2492536594188320306

`∑[5^floor(log(cosh(n)))]`
-/

namespace A047850.P2492536594188320306
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (⌊Real.log (Real.cosh (n : ℝ))⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047850.P2492536594188320306

namespace A047850

/-- `∑[5^floor(log(cosh(n)))]` -/
def P2492536594188320306.Spec : Prop :=
  ∀ n, P2492536594188320306.a n = (A047850 n : ℚ)

end A047850

/-! ## A047850.P7983956686490502002

`ogf((1-4x)/(1-6x+5x^2))`
-/

namespace A047850.P7983956686490502002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -6, 5] n

end

end A047850.P7983956686490502002

namespace A047850

/-- `ogf((1-4x)/(1-6x+5x^2))` -/
def P7983956686490502002.Spec : Prop :=
  ∀ n, P7983956686490502002.a n = A047850 n

end A047850

/-! ## A047850.P10730827485810405125

`round(or(2, 5^n)/4)`
-/

namespace A047850.P10730827485810405125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 2 (5 ^ n) : ℚ) / 4)

end

end A047850.P10730827485810405125

namespace A047850

/-- `round(or(2, 5^n)/4)` -/
def P10730827485810405125.Spec : Prop :=
  ∀ n, P10730827485810405125.a n = A047850 n

end A047850

/-! ## A047850.P17495755159314711487

`round(xor(2, 5^n)/4)`
-/

namespace A047850.P17495755159314711487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 2 (5 ^ n) : ℚ) / 4)

end

end A047850.P17495755159314711487

namespace A047850

/-- `round(xor(2, 5^n)/4)` -/
def P17495755159314711487.Spec : Prop :=
  ∀ n, P17495755159314711487.a n = A047850 n

end A047850

/-! ## A047850.P597768263090140966

`lcm(5, a(n-1))-3` with `a(0)=1`
-/

namespace A047850.P597768263090140966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 5 (a (n - 1)) : ℤ) - 3

end

end A047850.P597768263090140966

namespace A047850

/-- `lcm(5, a(n-1))-3` -/
def P597768263090140966.Spec : Prop :=
  ∀ n, P597768263090140966.a n = A047850 n

end A047850

/-! ## A047850.P15458044810108696076

`∑[or(1, floor(5^(n-1)))]`
-/

namespace A047850.P15458044810108696076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047850.P15458044810108696076

namespace A047850

/-- `∑[or(1, floor(5^(n-1)))]` -/
def P15458044810108696076.Spec : Prop :=
  ∀ n, P15458044810108696076.a n = A047850 n

end A047850

/-! ## A047850.P14289420173457922376

`∑[5^((n-1)%(n+1))]`
-/

namespace A047850.P14289420173457922376
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047850.P14289420173457922376

namespace A047850

/-- `∑[5^((n-1)%(n+1))]` -/
def P14289420173457922376.Spec : Prop :=
  ∀ n, P14289420173457922376.a n = (A047850 n : ℚ)

end A047850

/-! ## A047850.P11888770021705029389

`5^(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A047850.P11888770021705029389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + a (n - 1)

end

end A047850.P11888770021705029389

namespace A047850

/-- `5^(n-1)+a(n-1)` -/
def P11888770021705029389.Spec : Prop :=
  ∀ n, P11888770021705029389.a n = (A047850 n : ℚ)

end A047850

/-! ## A047850.P14270675850855199139

`5^(n-1)-floor(-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A047850.P14270675850855199139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (⌊-a (n - 1)⌋ : ℚ)

end

end A047850.P14270675850855199139

namespace A047850

/-- `5^(n-1)-floor(-a(n-1))` -/
def P14270675850855199139.Spec : Prop :=
  ∀ n, P14270675850855199139.a n = (A047850 n : ℚ)

end A047850

/-! ## A047850.P12460536547952534481

`5^(n-1)-ceil(-a(n-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A047850.P12460536547952534481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (⌈-a (n - 1)⌉ : ℚ)

end

end A047850.P12460536547952534481

namespace A047850

/-- `5^(n-1)-ceil(-a(n-1))` -/
def P12460536547952534481.Spec : Prop :=
  ∀ n, P12460536547952534481.a n = (A047850 n : ℚ)

end A047850

/-! ## A047850.P1751208875000815607

`5^(n-1)-round(-a(n-1))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A047850.P1751208875000815607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (SequenceMachineLib.roundAway (-a (n - 1)) : ℚ)

end

end A047850.P1751208875000815607

namespace A047850

/-- `5^(n-1)-round(-a(n-1))` -/
def P1751208875000815607.Spec : Prop :=
  ∀ n, P1751208875000815607.a n = (A047850 n : ℚ)

end A047850

/-! ## A047850.P1553445742553055096

`∑[5^floor(n-1/a(n-1))]` with `a(0)=1`
-/

namespace A047850.P1553445742553055096
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (5 : ℚ) ^ (⌊(n : ℚ) - 1 / f1 (n - 1)⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047850.P1553445742553055096

namespace A047850

/-- `∑[5^floor(n-1/a(n-1))]` -/
def P1553445742553055096.Spec : Prop :=
  ∀ n, P1553445742553055096.a n = (A047850 n : ℚ)

end A047850

/-! ## A047850.P9174428077214593157

`A003463(n)+1`
-/

namespace A047850.P9174428077214593157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n + 1

end

end A047850.P9174428077214593157

namespace A047850

/-- `A003463(n)+1` -/
def P9174428077214593157.Spec : Prop :=
  ∀ n, P9174428077214593157.a n = A047850 n

end A047850

/-! ## A047850.P8475632137899897166

`A125833(n)/3+1`
-/

namespace A047850.P8475632137899897166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125833 n : ℚ) / 3 + 1

end

end A047850.P8475632137899897166

namespace A047850

/-- `A125833(n)/3+1` -/
def P8475632137899897166.Spec : Prop :=
  ∀ n, P8475632137899897166.a n = (A047850 n : ℚ)

end A047850

/-! ## A047850.P8572286927443217975

`A024049(n)/4+1`
-/

namespace A047850.P8572286927443217975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024049 n : ℚ) / 4 + 1

end

end A047850.P8572286927443217975

namespace A047850

/-- `A024049(n)/4+1` -/
def P8572286927443217975.Spec : Prop :=
  ∀ n, P8572286927443217975.a n = (A047850 n : ℚ)

theorem P8572286927443217975.correct : P8572286927443217975.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A047850, Nat.add_sub_cancel, A047850.P8572286927443217975.a, A047850.P4419354886793222274.a, A024049, A024049.P18010332611898517157.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A047850, Nat.add_sub_cancel, A047850.P8572286927443217975.a, A047850.P4419354886793222274.a, A024049, A024049.P18010332611898517157.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A047850

/-! ## A047850.P9299634680763425526

`A178671(n)/4+2`
-/

namespace A047850.P9299634680763425526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178671 n : ℚ) / 4 + 2

end

end A047850.P9299634680763425526

namespace A047850

/-- `A178671(n)/4+2` -/
def P9299634680763425526.Spec : Prop :=
  ∀ n, P9299634680763425526.a n = (A047850 n : ℚ)

theorem P9299634680763425526.correct : P9299634680763425526.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A047850, Nat.add_sub_cancel, A047850.P9299634680763425526.a, A047850.P4419354886793222274.a, A178671, A178671.P13912322305136915604.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A047850, Nat.add_sub_cancel, A047850.P9299634680763425526.a, A047850.P4419354886793222274.a, A178671, A178671.P13912322305136915604.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A047850

/-! ## A047850.P17453851998936196550

`∑[5^A289207(n+1)]`
-/

namespace A047850.P17453851998936196550
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A289207 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047850.P17453851998936196550

namespace A047850

/-- `∑[5^A289207(n+1)]` -/
def P17453851998936196550.Spec : Prop :=
  ∀ n, P17453851998936196550.a n = (A047850 n : ℚ)

end A047850

/-! ## A047850.P9834863184828435254

`A121177(n+1)/2+1`
-/

namespace A047850.P9834863184828435254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121177 (n + 1) : ℚ) / 2 + 1

end

end A047850.P9834863184828435254

namespace A047850

/-- `A121177(n+1)/2+1` -/
def P9834863184828435254.Spec : Prop :=
  ∀ n, P9834863184828435254.a n = (A047850 n : ℚ)

end A047850

/-!
# A047851: a(n) = A047848(3,n).

The programs for A047851, the canonical program `A047851.P1255527301914215621` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047851 has offset 0).

The definition of A047851 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047851.P1255527301914215621

`6*a(n-1)-4` with `a(0)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047851

/-- `6*a(n-1)-4` -/
def P1255527301914215621.Spec : Prop :=
  ∀ n, P1255527301914215621.a n = A047851 n

theorem P1255527301914215621.correct : P1255527301914215621.Spec := by
  intro n
  simp only [A047851]

end A047851

/-! ## A047851.P17060191677938793894

`(6^n+4)/5`
-/

namespace A047851.P17060191677938793894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 ^ n + 4 : ℚ) / 5

end

end A047851.P17060191677938793894

namespace A047851

/-- `(6^n+4)/5` -/
def P17060191677938793894.Spec : Prop :=
  ∀ n, P17060191677938793894.a n = (A047851 n : ℚ)

theorem P17060191677938793894.correct : P17060191677938793894.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A047851, Nat.add_sub_cancel, A047851.P17060191677938793894.a, A047851.P1255527301914215621.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A047851, Nat.add_sub_cancel, A047851.P17060191677938793894.a, A047851.P1255527301914215621.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A047851

/-! ## A047851.P13262213784183173048

`ogf((1-5x)/(1-7x+6x^2))`
-/

namespace A047851.P13262213784183173048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5] [1, -7, 6] n

end

end A047851.P13262213784183173048

namespace A047851

/-- `ogf((1-5x)/(1-7x+6x^2))` -/
def P13262213784183173048.Spec : Prop :=
  ∀ n, P13262213784183173048.a n = A047851 n

end A047851

/-! ## A047851.P6589037962862287267

`∑[6^((n-1)%(n+1))]`
-/

namespace A047851.P6589037962862287267
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047851.P6589037962862287267

namespace A047851

/-- `∑[6^((n-1)%(n+1))]` -/
def P6589037962862287267.Spec : Prop :=
  ∀ n, P6589037962862287267.a n = (A047851 n : ℚ)

end A047851

/-! ## A047851.P5758740396723642559

`lcm(6, a(n-1)-1)+2` with `a(0)=1`
-/

namespace A047851.P5758740396723642559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm 6 ((a (n - 1) : ℤ) - 1) + 2

end

end A047851.P5758740396723642559

namespace A047851

/-- `lcm(6, a(n-1)-1)+2` -/
def P5758740396723642559.Spec : Prop :=
  ∀ n, (P5758740396723642559.a n : ℤ) = A047851 n

end A047851

/-! ## A047851.P14479187301296339795

`6^(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A047851.P14479187301296339795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (6 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + a (n - 1)

end

end A047851.P14479187301296339795

namespace A047851

/-- `6^(n-1)+a(n-1)` -/
def P14479187301296339795.Spec : Prop :=
  ∀ n, P14479187301296339795.a n = (A047851 n : ℚ)

end A047851

/-! ## A047851.P3073687010899116836

`A003464(n)+1`
-/

namespace A047851.P3073687010899116836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003464 n + 1

end

end A047851.P3073687010899116836

namespace A047851

/-- `A003464(n)+1` -/
def P3073687010899116836.Spec : Prop :=
  ∀ n, P3073687010899116836.a n = A047851 n

end A047851

/-! ## A047851.P3210160443759776372

`round(A152596(n)/2)`
-/

namespace A047851.P3210160443759776372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A152596 n : ℚ) / 2)

end

end A047851.P3210160443759776372

namespace A047851

/-- `round(A152596(n)/2)` -/
def P3210160443759776372.Spec : Prop :=
  ∀ n, P3210160443759776372.a n = A047851 n

end A047851

/-! ## A047851.P3705839875716914041

`A329114(Δ[n²])+1`
-/

namespace A047851.P3705839875716914041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329114 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A047851.P3705839875716914041

namespace A047851

/-- `A329114(Δ[n²])+1` -/
def P3705839875716914041.Spec : Prop :=
  ∀ n, P3705839875716914041.a n = A047851 n

end A047851

/-! ## A047851.P6213085647852328310

`A329115(Δ[n²])+1`
-/

namespace A047851.P6213085647852328310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329115 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A047851.P6213085647852328310

namespace A047851

/-- `A329115(Δ[n²])+1` -/
def P6213085647852328310.Spec : Prop :=
  ∀ n, P6213085647852328310.a n = A047851 n

end A047851

/-! ## A047851.P935801248101464913

`∑[A011782(n)*A140429(n)]+1`
-/

namespace A047851.P935801248101464913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A140429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A047851.P935801248101464913

namespace A047851

/-- `∑[A011782(n)*A140429(n)]+1` -/
def P935801248101464913.Spec : Prop :=
  ∀ n, P935801248101464913.a n = A047851 n

end A047851

/-! ## A047851.P3842690460295759113

`∑[2*A109501(n)]-A109501(n)`
-/

namespace A047851.P3842690460295759113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A109501 n

end

end A047851.P3842690460295759113

namespace A047851

/-- `∑[2*A109501(n)]-A109501(n)` -/
def P3842690460295759113.Spec : Prop :=
  ∀ n, P3842690460295759113.a n = A047851 n

end A047851

/-! ## A047851.P14175683683821773714

`A092803(n)+A092803(n)-∑[A092803(n)]`
-/

namespace A047851.P14175683683821773714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092803 n + (A092803 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047851.P14175683683821773714

namespace A047851

/-- `A092803(n)+A092803(n)-∑[A092803(n)]` -/
def P14175683683821773714.Spec : Prop :=
  ∀ n, P14175683683821773714.a n = A047851 n

end A047851

/-! ## A047851.P11777548782987052979

`ceil(lcm(3, 6^n)/5)`
-/

namespace A047851.P11777548782987052979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm 3 (6 ^ n) : ℚ) / 5⌉

end

end A047851.P11777548782987052979

namespace A047851

/-- `ceil(lcm(3, 6^n)/5)` -/
def P11777548782987052979.Spec : Prop :=
  ∀ n, P11777548782987052979.a n = A047851 n

end A047851

/-! ## A047851.P8337442778886550934

`A024062(n)/5+1`
-/

namespace A047851.P8337442778886550934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024062 n : ℚ) / 5 + 1

end

end A047851.P8337442778886550934

namespace A047851

/-- `A024062(n)/5+1` -/
def P8337442778886550934.Spec : Prop :=
  ∀ n, P8337442778886550934.a n = (A047851 n : ℚ)

theorem P8337442778886550934.correct : P8337442778886550934.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A047851, Nat.add_sub_cancel, A047851.P8337442778886550934.a, A047851.P1255527301914215621.a, A024062, A024062.P10607984613619163046.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A047851, Nat.add_sub_cancel, A047851.P8337442778886550934.a, A047851.P1255527301914215621.a, A024062, A024062.P10607984613619163046.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A047851

/-! ## A047851.P13554963580917366975

`A026549(2*n+1)-A026534(2*n+1)`
-/

namespace A047851.P13554963580917366975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 (2 * n + 1) - A026534 (2 * n + 1)

end

end A047851.P13554963580917366975

namespace A047851

/-- `A026549(2*n+1)-A026534(2*n+1)` -/
def P13554963580917366975.Spec : Prop :=
  ∀ n, P13554963580917366975.a n = A047851 n

end A047851

/-!
# A047852: a(n) = A047848(4, n).

The programs for A047852, the canonical program `A047852.P11940963155217222415` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047852 has offset 0).

The definition of A047852 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047852.P11940963155217222415

`7*a(n-1)-5` with `a(0)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047852

/-- `7*a(n-1)-5` -/
def P11940963155217222415.Spec : Prop :=
  ∀ n, P11940963155217222415.a n = A047852 n

theorem P11940963155217222415.correct : P11940963155217222415.Spec := by
  intro n
  simp only [A047852]

end A047852

/-! ## A047852.P11286120068939714998

`(7^n+5)/6`
-/

namespace A047852.P11286120068939714998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 ^ n + 5 : ℚ) / 6

end

end A047852.P11286120068939714998

namespace A047852

/-- `(7^n+5)/6` -/
def P11286120068939714998.Spec : Prop :=
  ∀ n, P11286120068939714998.a n = (A047852 n : ℚ)

theorem P11286120068939714998.correct : P11286120068939714998.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A047852, Nat.add_sub_cancel, A047852.P11286120068939714998.a, A047852.P11940963155217222415.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A047852, Nat.add_sub_cancel, A047852.P11286120068939714998.a, A047852.P11940963155217222415.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A047852

/-! ## A047852.P7138630308668557377

`ogf((1-6x)/(1-8x+7x^2))`
-/

namespace A047852.P7138630308668557377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6] [1, -8, 7] n

end

end A047852.P7138630308668557377

namespace A047852

/-- `ogf((1-6x)/(1-8x+7x^2))` -/
def P7138630308668557377.Spec : Prop :=
  ∀ n, P7138630308668557377.a n = A047852 n

end A047852

/-! ## A047852.P4708011697904767949

`lcm(7, a(n-1))-5` with `a(0)=1`
-/

namespace A047852.P4708011697904767949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 7 (a (n - 1)) : ℤ) - 5

end

end A047852.P4708011697904767949

namespace A047852

/-- `lcm(7, a(n-1))-5` -/
def P4708011697904767949.Spec : Prop :=
  ∀ n, P4708011697904767949.a n = A047852 n

end A047852

/-! ## A047852.P14046556562421947390

`∑[7^((n-1)%(n+1))]`
-/

namespace A047852.P14046556562421947390
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047852.P14046556562421947390

namespace A047852

/-- `∑[7^((n-1)%(n+1))]` -/
def P14046556562421947390.Spec : Prop :=
  ∀ n, P14046556562421947390.a n = (A047852 n : ℚ)

end A047852

/-! ## A047852.P2331744365018563859

`abs(xor(∑[floor(7^(n-1))], -1))`
-/

namespace A047852.P2331744365018563859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (-1)|

end

end A047852.P2331744365018563859

namespace A047852

/-- `abs(xor(∑[floor(7^(n-1))], -1))` -/
def P2331744365018563859.Spec : Prop :=
  ∀ n, P2331744365018563859.a n = A047852 n

end A047852

/-! ## A047852.P11466772391556509618

`7^(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A047852.P11466772391556509618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (7 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + a (n - 1)

end

end A047852.P11466772391556509618

namespace A047852

/-- `7^(n-1)+a(n-1)` -/
def P11466772391556509618.Spec : Prop :=
  ∀ n, P11466772391556509618.a n = (A047852 n : ℚ)

end A047852

/-! ## A047852.P11531272712348253191

`or(2, ∑[floor(7^(n-1))])-1`
-/

namespace A047852.P11531272712348253191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A047852.P11531272712348253191

namespace A047852

/-- `or(2, ∑[floor(7^(n-1))])-1` -/
def P11531272712348253191.Spec : Prop :=
  ∀ n, P11531272712348253191.a n = A047852 n

end A047852

/-! ## A047852.P2404612129524538701

`∑[floor(7^(n-1))]+floor(acot(n))!`
-/

namespace A047852.P2404612129524538701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.factorial ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat : ℤ)

end

end A047852.P2404612129524538701

namespace A047852

/-- `∑[floor(7^(n-1))]+floor(acot(n))!` -/
def P2404612129524538701.Spec : Prop :=
  ∀ n, P2404612129524538701.a n = A047852 n

end A047852

/-! ## A047852.P15069235614778306024

`A023000(n)+1`
-/

namespace A047852.P15069235614778306024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n + 1

end

end A047852.P15069235614778306024

namespace A047852

/-- `A023000(n)+1` -/
def P15069235614778306024.Spec : Prop :=
  ∀ n, P15069235614778306024.a n = A047852 n

end A047852

/-! ## A047852.P10744246686267161716

`∑[A152861(∑[n])]`
-/

namespace A047852.P10744246686267161716
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152861 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047852.P10744246686267161716

namespace A047852

/-- `∑[A152861(∑[n])]` -/
def P10744246686267161716.Spec : Prop :=
  ∀ n, P10744246686267161716.a n = A047852 n

end A047852

/-! ## A047852.P10760192874391475226

`A003462(n)+A341590(n)+1`
-/

namespace A047852.P10760192874391475226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n + (A341590 n + 1)

end

end A047852.P10760192874391475226

namespace A047852

/-- `A003462(n)+A341590(n)+1` -/
def P10760192874391475226.Spec : Prop :=
  ∀ n, P10760192874391475226.a n = A047852 n

end A047852

/-! ## A047852.P15283088274985933409

`floor(A253210(n)/6)`
-/

namespace A047852.P15283088274985933409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A253210 n : ℚ) / 6⌋

end

end A047852.P15283088274985933409

namespace A047852

/-- `floor(A253210(n)/6)` -/
def P15283088274985933409.Spec : Prop :=
  ∀ n, P15283088274985933409.a n = A047852 n

end A047852

/-! ## A047852.P18269071540942737794

`ceil(A000420(n)/6)`
-/

namespace A047852.P18269071540942737794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000420 n : ℚ) / 6⌉

end

end A047852.P18269071540942737794

namespace A047852

/-- `ceil(A000420(n)/6)` -/
def P18269071540942737794.Spec : Prop :=
  ∀ n, P18269071540942737794.a n = A047852 n

end A047852

/-! ## A047852.P3207698271104584691

`ceil(A103458(n)/6)`
-/

namespace A047852.P3207698271104584691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A103458 n : ℚ) / 6⌉

end

end A047852.P3207698271104584691

namespace A047852

/-- `ceil(A103458(n)/6)` -/
def P3207698271104584691.Spec : Prop :=
  ∀ n, P3207698271104584691.a n = A047852 n

end A047852

/-! ## A047852.P7236798041025594731

`A120741(n)/3+1`
-/

namespace A047852.P7236798041025594731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120741 n : ℚ) / 3 + 1

end

end A047852.P7236798041025594731

namespace A047852

/-- `A120741(n)/3+1` -/
def P7236798041025594731.Spec : Prop :=
  ∀ n, P7236798041025594731.a n = (A047852 n : ℚ)

end A047852

/-! ## A047852.P2950115255303519650

`A125725(n+1)/2+1`
-/

namespace A047852.P2950115255303519650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125725 (n + 1) : ℚ) / 2 + 1

end

end A047852.P2950115255303519650

namespace A047852

/-- `A125725(n+1)/2+1` -/
def P2950115255303519650.Spec : Prop :=
  ∀ n, P2950115255303519650.a n = (A047852 n : ℚ)

end A047852

/-! ## A047852.P5324124079394888094

`A125823(n+1)/4+1`
-/

namespace A047852.P5324124079394888094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125823 (n + 1) : ℚ) / 4 + 1

end

end A047852.P5324124079394888094

namespace A047852

/-- `A125823(n+1)/4+1` -/
def P5324124079394888094.Spec : Prop :=
  ∀ n, P5324124079394888094.a n = (A047852 n : ℚ)

end A047852

/-! ## A047852.P14880148360034975201

`A125729(n+1)/5+1`
-/

namespace A047852.P14880148360034975201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125729 (n + 1) : ℚ) / 5 + 1

end

end A047852.P14880148360034975201

namespace A047852

/-- `A125729(n+1)/5+1` -/
def P14880148360034975201.Spec : Prop :=
  ∀ n, P14880148360034975201.a n = (A047852 n : ℚ)

end A047852

/-!
# A047853: a(n) = A047848(5, n).

The programs for A047853, the canonical program `A047853.P5919088276323591993` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047853 has offset 0).

The definition of A047853 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047853.P5919088276323591993

`8*a(n-1)-6` with `a(0)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047853

/-- `8*a(n-1)-6` -/
def P5919088276323591993.Spec : Prop :=
  ∀ n, P5919088276323591993.a n = A047853 n

theorem P5919088276323591993.correct : P5919088276323591993.Spec := by
  intro n
  simp only [A047853]

end A047853

/-! ## A047853.P6603348104529308452

`(8^n+6)/7`
-/

namespace A047853.P6603348104529308452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 ^ n + 6 : ℚ) / 7

end

end A047853.P6603348104529308452

namespace A047853

/-- `(8^n+6)/7` -/
def P6603348104529308452.Spec : Prop :=
  ∀ n, P6603348104529308452.a n = (A047853 n : ℚ)

theorem P6603348104529308452.correct : P6603348104529308452.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A047853, Nat.add_sub_cancel, A047853.P6603348104529308452.a, A047853.P5919088276323591993.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A047853, Nat.add_sub_cancel, A047853.P6603348104529308452.a, A047853.P5919088276323591993.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A047853

/-! ## A047853.P1421853198285344417

`ogf((1-7x)/(1-9x+8x^2))`
-/

namespace A047853.P1421853198285344417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -7] [1, -9, 8] n

end

end A047853.P1421853198285344417

namespace A047853

/-- `ogf((1-7x)/(1-9x+8x^2))` -/
def P1421853198285344417.Spec : Prop :=
  ∀ n, P1421853198285344417.a n = A047853 n

end A047853

/-! ## A047853.P17446932392033629138

`lcm(16, a(n-1))-6` with `a(0)=1, a(1)=2`
-/

namespace A047853.P17446932392033629138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (Int.lcm 16 (a (n - 1)) : ℤ) - 6

end

end A047853.P17446932392033629138

namespace A047853

/-- `lcm(16, a(n-1))-6` -/
def P17446932392033629138.Spec : Prop :=
  ∀ n, P17446932392033629138.a n = A047853 n

end A047853

/-! ## A047853.P13990571179912732609

`∑[8^((n-1)%(n+1))]`
-/

namespace A047853.P13990571179912732609
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047853.P13990571179912732609

namespace A047853

/-- `∑[8^((n-1)%(n+1))]` -/
def P13990571179912732609.Spec : Prop :=
  ∀ n, P13990571179912732609.a n = (A047853 n : ℚ)

end A047853

/-! ## A047853.P6736115351250819785

`-xor(∑[floor(8^(n-1))], -1)`
-/

namespace A047853.P6736115351250819785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(8 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A047853.P6736115351250819785

namespace A047853

/-- `-xor(∑[floor(8^(n-1))], -1)` -/
def P6736115351250819785.Spec : Prop :=
  ∀ n, P6736115351250819785.a n = A047853 n

end A047853

/-! ## A047853.P15897448564845463804

`8^(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A047853.P15897448564845463804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (8 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + a (n - 1)

end

end A047853.P15897448564845463804

namespace A047853

/-- `8^(n-1)+a(n-1)` -/
def P15897448564845463804.Spec : Prop :=
  ∀ n, P15897448564845463804.a n = (A047853 n : ℚ)

end A047853

/-! ## A047853.P12195591630418666230

`or(8^(n-1), a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A047853.P12195591630418666230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lor (SequenceMachineLib.roundAway ((8 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1))

end

end A047853.P12195591630418666230

namespace A047853

/-- `or(8^(n-1), a(n-1))` -/
def P12195591630418666230.Spec : Prop :=
  ∀ n, P12195591630418666230.a n = A047853 n

end A047853

/-! ## A047853.P16957939739967806976

`xor(8^(n-1), a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A047853.P16957939739967806976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.xor (SequenceMachineLib.roundAway ((8 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1))

end

end A047853.P16957939739967806976

namespace A047853

/-- `xor(8^(n-1), a(n-1))` -/
def P16957939739967806976.Spec : Prop :=
  ∀ n, P16957939739967806976.a n = A047853 n

end A047853

/-! ## A047853.P8286822282243368458

`∑[a(n-1)/(1/2)^3]` with `a(0)=1, a(1)=1`
-/

namespace A047853.P8286822282243368458
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) / ((1 : ℚ) / 2) ^ 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047853.P8286822282243368458

namespace A047853

/-- `∑[a(n-1)/(1/2)^3]` -/
def P8286822282243368458.Spec : Prop :=
  ∀ n, P8286822282243368458.a n = (A047853 n : ℚ)

end A047853

/-! ## A047853.P10906437117626353719

`A023001(n)+1`
-/

namespace A047853.P10906437117626353719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n + 1

end

end A047853.P10906437117626353719

namespace A047853

/-- `A023001(n)+1` -/
def P10906437117626353719.Spec : Prop :=
  ∀ n, P10906437117626353719.a n = A047853 n

end A047853

/-! ## A047853.P13459188213999890629

`A063823(3*n)`
-/

namespace A047853.P13459188213999890629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063823 (3 * n)

end

end A047853.P13459188213999890629

namespace A047853

/-- `A063823(3*n)` -/
def P13459188213999890629.Spec : Prop :=
  ∀ n, P13459188213999890629.a n = A047853 n

end A047853

/-! ## A047853.P9174625303423640646

`A166578(3*n)`
-/

namespace A047853.P9174625303423640646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166578 (3 * n)

end

end A047853.P9174625303423640646

namespace A047853

/-- `A166578(3*n)` -/
def P9174625303423640646.Spec : Prop :=
  ∀ n, P9174625303423640646.a n = A047853 n

end A047853

/-! ## A047853.P13844101397258491821

`ceil(A046636(n)/4)`
-/

namespace A047853.P13844101397258491821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A046636 n : ℚ) / 4⌉

end

end A047853.P13844101397258491821

namespace A047853

/-- `ceil(A046636(n)/4)` -/
def P13844101397258491821.Spec : Prop :=
  ∀ n, P13844101397258491821.a n = A047853 n

end A047853

/-! ## A047853.P15678120577288574228

`∑[A011782(n)^3]`
-/

namespace A047853.P15678120577288574228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047853.P15678120577288574228

namespace A047853

/-- `∑[A011782(n)^3]` -/
def P15678120577288574228.Spec : Prop :=
  ∀ n, P15678120577288574228.a n = A047853 n

end A047853

/-! ## A047853.P7314633680355531745

`A299913(2*n)+1`
-/

namespace A047853.P7314633680355531745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299913 (2 * n) + 1

end

end A047853.P7314633680355531745

namespace A047853

/-- `A299913(2*n)+1` -/
def P7314633680355531745.Spec : Prop :=
  ∀ n, P7314633680355531745.a n = A047853 n

end A047853

/-! ## A047853.P4289423740361040738

`A155803(3*n)+1`
-/

namespace A047853.P4289423740361040738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155803 (3 * n) + 1

end

end A047853.P4289423740361040738

namespace A047853

/-- `A155803(3*n)+1` -/
def P4289423740361040738.Spec : Prop :=
  ∀ n, P4289423740361040738.a n = A047853 n

end A047853

/-! ## A047853.P4092395391760467964

`A083713(n)/3+1`
-/

namespace A047853.P4092395391760467964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083713 n : ℚ) / 3 + 1

end

end A047853.P4092395391760467964

namespace A047853

/-- `A083713(n)/3+1` -/
def P4092395391760467964.Spec : Prop :=
  ∀ n, P4092395391760467964.a n = (A047853 n : ℚ)

end A047853

/-! ## A047853.P17472118600828576354

`A108019(n)/4+1`
-/

namespace A047853.P17472118600828576354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108019 n : ℚ) / 4 + 1

end

end A047853.P17472118600828576354

namespace A047853

/-- `A108019(n)/4+1` -/
def P17472118600828576354.Spec : Prop :=
  ∀ n, P17472118600828576354.a n = (A047853 n : ℚ)

end A047853

/-! ## A047853.P8351160156113370078

`∑[A166444(n+1)^3]`
-/

namespace A047853.P8351160156113370078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047853.P8351160156113370078

namespace A047853

/-- `∑[A166444(n+1)^3]` -/
def P8351160156113370078.Spec : Prop :=
  ∀ n, P8351160156113370078.a n = A047853 n

end A047853

/-!
# A047854: a(n) = A047848(6, n).

The programs for A047854, the canonical program `A047854.P17418981397149933771` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047854 has offset 0).

The definition of A047854 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047854.P17418981397149933771

`9*a(n-1)-7` with `a(0)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047854

/-- `9*a(n-1)-7` -/
def P17418981397149933771.Spec : Prop :=
  ∀ n, P17418981397149933771.a n = A047854 n

theorem P17418981397149933771.correct : P17418981397149933771.Spec := by
  intro n
  simp only [A047854]

end A047854

/-! ## A047854.P2876537883400018340

`(9^n+7)/8`
-/

namespace A047854.P2876537883400018340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 ^ n + 7 : ℚ) / 8

end

end A047854.P2876537883400018340

namespace A047854

/-- `(9^n+7)/8` -/
def P2876537883400018340.Spec : Prop :=
  ∀ n, P2876537883400018340.a n = (A047854 n : ℚ)

theorem P2876537883400018340.correct : P2876537883400018340.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A047854, Nat.add_sub_cancel, A047854.P2876537883400018340.a, A047854.P17418981397149933771.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A047854, Nat.add_sub_cancel, A047854.P2876537883400018340.a, A047854.P17418981397149933771.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A047854

/-! ## A047854.P6653241923238143049

`ogf((1-8x)/(1-10x+9x^2))`
-/

namespace A047854.P6653241923238143049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -8] [1, -10, 9] n

end

end A047854.P6653241923238143049

namespace A047854

/-- `ogf((1-8x)/(1-10x+9x^2))` -/
def P6653241923238143049.Spec : Prop :=
  ∀ n, P6653241923238143049.a n = A047854 n

end A047854

/-! ## A047854.P12566161839138989929

`lcm(9, a(n-1))-7` with `a(0)=1`
-/

namespace A047854.P12566161839138989929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 9 (a (n - 1)) : ℤ) - 7

end

end A047854.P12566161839138989929

namespace A047854

/-- `lcm(9, a(n-1))-7` -/
def P12566161839138989929.Spec : Prop :=
  ∀ n, P12566161839138989929.a n = A047854 n

end A047854

/-! ## A047854.P11039804462510267065

`∑[9^((n-1)%(n+1))]`
-/

namespace A047854.P11039804462510267065
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047854.P11039804462510267065

namespace A047854

/-- `∑[9^((n-1)%(n+1))]` -/
def P11039804462510267065.Spec : Prop :=
  ∀ n, P11039804462510267065.a n = (A047854 n : ℚ)

end A047854

/-! ## A047854.P13427350472667646450

`9^(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A047854.P13427350472667646450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (9 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + a (n - 1)

end

end A047854.P13427350472667646450

namespace A047854

/-- `9^(n-1)+a(n-1)` -/
def P13427350472667646450.Spec : Prop :=
  ∀ n, P13427350472667646450.a n = (A047854 n : ℚ)

end A047854

/-! ## A047854.P9847365542331988993

`a(n-1)/(1/3)²-7` with `a(0)=1`
-/

namespace A047854.P9847365542331988993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2 - 7

end

end A047854.P9847365542331988993

namespace A047854

/-- `a(n-1)/(1/3)²-7` -/
def P9847365542331988993.Spec : Prop :=
  ∀ n, P9847365542331988993.a n = (A047854 n : ℚ)

end A047854

/-! ## A047854.P4868042643548197029

`A002452(n)+1`
-/

namespace A047854.P4868042643548197029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 n + 1

end

end A047854.P4868042643548197029

namespace A047854

/-- `A002452(n)+1` -/
def P4868042643548197029.Spec : Prop :=
  ∀ n, P4868042643548197029.a n = A047854 n

end A047854

/-! ## A047854.P11840879337732640769

`∑[A133494(n)²]`
-/

namespace A047854.P11840879337732640769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047854.P11840879337732640769

namespace A047854

/-- `∑[A133494(n)²]` -/
def P11840879337732640769.Spec : Prop :=
  ∀ n, P11840879337732640769.a n = A047854 n

end A047854

/-! ## A047854.P7269542942005741926

`ceil(A054879(n)/2)`
-/

namespace A047854.P7269542942005741926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A054879 n : ℚ) / 2⌉

end

end A047854.P7269542942005741926

namespace A047854

/-- `ceil(A054879(n)/2)` -/
def P7269542942005741926.Spec : Prop :=
  ∀ n, P7269542942005741926.a n = A047854 n

end A047854

/-! ## A047854.P8846959233434478873

`∑[A373509(4*n)]`
-/

namespace A047854.P8846959233434478873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373509 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047854.P8846959233434478873

namespace A047854

/-- `∑[A373509(4*n)]` -/
def P8846959233434478873.Spec : Prop :=
  ∀ n, P8846959233434478873.a n = A047854 n

end A047854

/-! ## A047854.P3263537855974787645

`A099583(2*n)+1`
-/

namespace A047854.P3263537855974787645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099583 (2 * n) + 1

end

end A047854.P3263537855974787645

namespace A047854

/-- `A099583(2*n)+1` -/
def P3263537855974787645.Spec : Prop :=
  ∀ n, P3263537855974787645.a n = A047854 n

end A047854

/-! ## A047854.P10686760976843879800

`A152298(2*n)+1`
-/

namespace A047854.P10686760976843879800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152298 (2 * n) + 1

end

end A047854.P10686760976843879800

namespace A047854

/-- `A152298(2*n)+1` -/
def P10686760976843879800.Spec : Prop :=
  ∀ n, P10686760976843879800.a n = A047854 n

end A047854

/-! ## A047854.P12791533024111764526

`A191681(n)/4+1`
-/

namespace A047854.P12791533024111764526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191681 n : ℚ) / 4 + 1

end

end A047854.P12791533024111764526

namespace A047854

/-- `A191681(n)/4+1` -/
def P12791533024111764526.Spec : Prop :=
  ∀ n, P12791533024111764526.a n = (A047854 n : ℚ)

end A047854

/-! ## A047854.P6173828128987454906

`A125962(n)/5+1`
-/

namespace A047854.P6173828128987454906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125962 n : ℚ) / 5 + 1

end

end A047854.P6173828128987454906

namespace A047854

/-- `A125962(n)/5+1` -/
def P6173828128987454906.Spec : Prop :=
  ∀ n, P6173828128987454906.a n = (A047854 n : ℚ)

end A047854

/-! ## A047854.P14117985904465751263

`∑[A140429(n)²]+1`
-/

namespace A047854.P14117985904465751263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A047854.P14117985904465751263

namespace A047854

/-- `∑[A140429(n)²]+1` -/
def P14117985904465751263.Spec : Prop :=
  ∀ n, P14117985904465751263.a n = A047854 n

end A047854

/-! ## A047854.P3199016376638276124

`∑[A141413(n+1)²]`
-/

namespace A047854.P3199016376638276124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141413 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047854.P3199016376638276124

namespace A047854

/-- `∑[A141413(n+1)²]` -/
def P3199016376638276124.Spec : Prop :=
  ∀ n, P3199016376638276124.a n = A047854 n

end A047854

/-! ## A047854.P14082016328187954055

`∑[A157674(2*n)²]`
-/

namespace A047854.P14082016328187954055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157674 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047854.P14082016328187954055

namespace A047854

/-- `∑[A157674(2*n)²]` -/
def P14082016328187954055.Spec : Prop :=
  ∀ n, P14082016328187954055.a n = A047854 n

end A047854

/-! ## A047854.P2181479390134684989

`record[1-∑[A076040(n)]]`
-/

namespace A047854.P2181479390134684989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076040 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047854.P2181479390134684989

namespace A047854

/-- `record[1-∑[A076040(n)]]` -/
def P2181479390134684989.Spec : Prop :=
  ∀ n, P2181479390134684989.a n = A047854 n

end A047854

/-! ## A047854.P16112798508185992264

`ceil(A122983(2*n)/2)`
-/

namespace A047854.P16112798508185992264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A122983 (2 * n) : ℚ) / 2⌉

end

end A047854.P16112798508185992264

namespace A047854

/-- `ceil(A122983(2*n)/2)` -/
def P16112798508185992264.Spec : Prop :=
  ∀ n, P16112798508185992264.a n = A047854 n

end A047854

/-!
# A047855: a(n) = A047848(7,n).

The programs for A047855, the canonical program `A047855.P16954364043766656981` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047855 has offset 0).

The definition of A047855 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047855.P16954364043766656981

`10*a(n-1)-8` with `a(0)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047855

/-- `10*a(n-1)-8` -/
def P16954364043766656981.Spec : Prop :=
  ∀ n, P16954364043766656981.a n = A047855 n

theorem P16954364043766656981.correct : P16954364043766656981.Spec := by
  intro n
  simp only [A047855]

end A047855

/-! ## A047855.P15876804268229061895

`(10^n+8)/9`
-/

namespace A047855.P15876804268229061895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n + 8 : ℚ) / 9

end

end A047855.P15876804268229061895

namespace A047855

/-- `(10^n+8)/9` -/
def P15876804268229061895.Spec : Prop :=
  ∀ n, P15876804268229061895.a n = (A047855 n : ℚ)

theorem P15876804268229061895.correct : P15876804268229061895.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A047855, Nat.add_sub_cancel, A047855.P15876804268229061895.a, A047855.P16954364043766656981.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A047855, Nat.add_sub_cancel, A047855.P15876804268229061895.a, A047855.P16954364043766656981.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A047855

/-! ## A047855.P10821236151269712924

`ogf((1-9x)/(1-11x+10x^2))`
-/

namespace A047855.P10821236151269712924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -9] [1, -11, 10] n

end

end A047855.P10821236151269712924

namespace A047855

/-- `ogf((1-9x)/(1-11x+10x^2))` -/
def P10821236151269712924.Spec : Prop :=
  ∀ n, P10821236151269712924.a n = A047855 n

end A047855

/-! ## A047855.P17642871587526439113

`abs(xor(floor(10^n/9), -1))`
-/

namespace A047855.P17642871587526439113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ⌊(10 ^ n : ℚ) / 9⌋ (-1)|

end

end A047855.P17642871587526439113

namespace A047855

/-- `abs(xor(floor(10^n/9), -1))` -/
def P17642871587526439113.Spec : Prop :=
  ∀ n, P17642871587526439113.a n = A047855 n

end A047855

/-! ## A047855.P1082290124222684

`-xor(floor(10^n/9), -1)`
-/

namespace A047855.P1082290124222684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ⌊(10 ^ n : ℚ) / 9⌋ (-1)

end

end A047855.P1082290124222684

namespace A047855

/-- `-xor(floor(10^n/9), -1)` -/
def P1082290124222684.Spec : Prop :=
  ∀ n, P1082290124222684.a n = A047855 n

end A047855

/-! ## A047855.P15173460388174261354

`∑[10^((n-1)%(n+1))]`
-/

namespace A047855.P15173460388174261354
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047855.P15173460388174261354

namespace A047855

/-- `∑[10^((n-1)%(n+1))]` -/
def P15173460388174261354.Spec : Prop :=
  ∀ n, P15173460388174261354.a n = (A047855 n : ℚ)

end A047855

/-! ## A047855.P5242347662476346443

`∑[10^(n-floor(atan(n+1)))]`
-/

namespace A047855.P5242347662476346443
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ ((n : ℤ) - ⌊Real.arctan (n + 1 : ℝ)⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047855.P5242347662476346443

namespace A047855

/-- `∑[10^(n-floor(atan(n+1)))]` -/
def P5242347662476346443.Spec : Prop :=
  ∀ n, P5242347662476346443.a n = (A047855 n : ℚ)

end A047855

/-! ## A047855.P3876381364709365654

`10^(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A047855.P3876381364709365654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + a (n - 1)

end

end A047855.P3876381364709365654

namespace A047855

/-- `10^(n-1)+a(n-1)` -/
def P3876381364709365654.Spec : Prop :=
  ∀ n, P3876381364709365654.a n = (A047855 n : ℚ)

end A047855

/-! ## A047855.P18298316837854076407

`∑[gcd(10^n, floor(10^(n-1)))]`
-/

namespace A047855.P18298316837854076407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (10 ^ n : ℤ) ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047855.P18298316837854076407

namespace A047855

/-- `∑[gcd(10^n, floor(10^(n-1)))]` -/
def P18298316837854076407.Spec : Prop :=
  ∀ n, (P18298316837854076407.a n : ℤ) = A047855 n

end A047855

/-! ## A047855.P16106374939907604593

`∑[floor(10^(n-1))+floor(acot(n))]`
-/

namespace A047855.P16106374939907604593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047855.P16106374939907604593

namespace A047855

/-- `∑[floor(10^(n-1))+floor(acot(n))]` -/
def P16106374939907604593.Spec : Prop :=
  ∀ n, P16106374939907604593.a n = A047855 n

end A047855

/-! ## A047855.P1336606770320279231

`1+A002275(n)`
-/

namespace A047855.P1336606770320279231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A002275 n

end

end A047855.P1336606770320279231

namespace A047855

/-- `1+A002275(n)` -/
def P1336606770320279231.Spec : Prop :=
  ∀ n, P1336606770320279231.a n = A047855 n

end A047855

/-! ## A047855.P15349101568859405982

`A098406(n)-1`
-/

namespace A047855.P15349101568859405982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098406 n - 1

end

end A047855.P15349101568859405982

namespace A047855

/-- `A098406(n)-1` -/
def P15349101568859405982.Spec : Prop :=
  ∀ n, P15349101568859405982.a n = A047855 n

end A047855

/-! ## A047855.P13067353435662257123

`A173735(n)-2`
-/

namespace A047855.P13067353435662257123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173735 n - 2

end

end A047855.P13067353435662257123

namespace A047855

/-- `A173735(n)-2` -/
def P13067353435662257123.Spec : Prop :=
  ∀ n, P13067353435662257123.a n = A047855 n

end A047855

/-! ## A047855.P5966399880474166636

`A092900(2*n)`
-/

namespace A047855.P5966399880474166636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092900 (2 * n)

end

end A047855.P5966399880474166636

namespace A047855

/-- `A092900(2*n)` -/
def P5966399880474166636.Spec : Prop :=
  ∀ n, P5966399880474166636.a n = A047855 n

end A047855

/-! ## A047855.P18431549793649034800

`A027828(9*n)`
-/

namespace A047855.P18431549793649034800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027828 (9 * n)

end

end A047855.P18431549793649034800

namespace A047855

/-- `A027828(9*n)` -/
def P18431549793649034800.Spec : Prop :=
  ∀ n, P18431549793649034800.a n = A047855 n

end A047855

/-! ## A047855.P6786783866240041509

`A305753(Δ[n²])`
-/

namespace A047855.P6786783866240041509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305753 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A047855.P6786783866240041509

namespace A047855

/-- `A305753(Δ[n²])` -/
def P6786783866240041509.Spec : Prop :=
  ∀ n, P6786783866240041509.a n = A047855 n

end A047855

/-! ## A047855.P5228817504696991241

`A071762(∑[n])+1`
-/

namespace A047855.P5228817504696991241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071762 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A047855.P5228817504696991241

namespace A047855

/-- `A071762(∑[n])+1` -/
def P5228817504696991241.Spec : Prop :=
  ∀ n, P5228817504696991241.a n = A047855 n

end A047855

/-! ## A047855.P7495124917840685455

`∑[A371458(3*n)]`
-/

namespace A047855.P7495124917840685455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371458 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047855.P7495124917840685455

namespace A047855

/-- `∑[A371458(3*n)]` -/
def P7495124917840685455.Spec : Prop :=
  ∀ n, P7495124917840685455.a n = A047855 n

end A047855

/-! ## A047855.P10428066811332734432

`A081857(2*n)+1`
-/

namespace A047855.P10428066811332734432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081857 (2 * n) + 1

end

end A047855.P10428066811332734432

namespace A047855

/-- `A081857(2*n)+1` -/
def P10428066811332734432.Spec : Prop :=
  ∀ n, P10428066811332734432.a n = A047855 n

end A047855

/-! ## A047855.P12307473004084868880

`A002276(n)/2+1`
-/

namespace A047855.P12307473004084868880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002276 n : ℚ) / 2 + 1

end

end A047855.P12307473004084868880

namespace A047855

/-- `A002276(n)/2+1` -/
def P12307473004084868880.Spec : Prop :=
  ∀ n, P12307473004084868880.a n = (A047855 n : ℚ)

end A047855

/-!
# A047856: a(n) = A047848(8, n).

The programs for A047856, the canonical program `A047856.P2738960899938531195` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047856 has offset 0).

The definition of A047856 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047856.P3353375511578353362

`(11^n+9)/10`
-/

namespace A047856.P3353375511578353362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 ^ n + 9 : ℚ) / 10

end

end A047856.P3353375511578353362

namespace A047856

/-- `(11^n+9)/10` -/
def P3353375511578353362.Spec : Prop :=
  ∀ n, P3353375511578353362.a n = (A047856 n : ℚ)

theorem P3353375511578353362.correct : P3353375511578353362.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A047856, Nat.add_sub_cancel, A047856.P3353375511578353362.a, A047856.P2738960899938531195.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A047856, Nat.add_sub_cancel, A047856.P3353375511578353362.a, A047856.P2738960899938531195.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A047856

/-! ## A047856.P2738960899938531195

`11*a(n-1)-9` with `a(0)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047856

/-- `11*a(n-1)-9` -/
def P2738960899938531195.Spec : Prop :=
  ∀ n, P2738960899938531195.a n = A047856 n

theorem P2738960899938531195.correct : P2738960899938531195.Spec := by
  intro n
  simp only [A047856]

end A047856

/-! ## A047856.P1572424533104279912

`∑[11^floor(log(cosh(n)))]`
-/

namespace A047856.P1572424533104279912
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (⌊Real.log (Real.cosh (n : ℝ))⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047856.P1572424533104279912

namespace A047856

/-- `∑[11^floor(log(cosh(n)))]` -/
def P1572424533104279912.Spec : Prop :=
  ∀ n, P1572424533104279912.a n = (A047856 n : ℚ)

end A047856

/-! ## A047856.P17739343154284471192

`ogf((1-10x)/(1-12x+11x^2))`
-/

namespace A047856.P17739343154284471192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -10] [1, -12, 11] n

end

end A047856.P17739343154284471192

namespace A047856

/-- `ogf((1-10x)/(1-12x+11x^2))` -/
def P17739343154284471192.Spec : Prop :=
  ∀ n, P17739343154284471192.a n = A047856 n

end A047856

/-! ## A047856.P13174573117914311967

`∑[11^floor(n*tanh(3))]`
-/

namespace A047856.P13174573117914311967
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (⌊(n : ℝ) * Real.tanh (3 : ℝ)⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047856.P13174573117914311967

namespace A047856

/-- `∑[11^floor(n*tanh(3))]` -/
def P13174573117914311967.Spec : Prop :=
  ∀ n, P13174573117914311967.a n = (A047856 n : ℚ)

end A047856

/-! ## A047856.P16970561782386841269

`lcm(11, a(n-1))-9` with `a(0)=1`
-/

namespace A047856.P16970561782386841269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 11 (a (n - 1)) : ℤ) - 9

end

end A047856.P16970561782386841269

namespace A047856

/-- `lcm(11, a(n-1))-9` -/
def P16970561782386841269.Spec : Prop :=
  ∀ n, P16970561782386841269.a n = A047856 n

end A047856

/-! ## A047856.P16831058462572603663

`11^(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A047856.P16831058462572603663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (11 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + a (n - 1)

end

end A047856.P16831058462572603663

namespace A047856

/-- `11^(n-1)+a(n-1)` -/
def P16831058462572603663.Spec : Prop :=
  ∀ n, P16831058462572603663.a n = (A047856 n : ℚ)

end A047856

/-! ## A047856.P12673386544280228813

`∑[A217789((n+1)²)^(n-1)]`
-/

namespace A047856.P12673386544280228813
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217789 ((n + 1) ^ 2) : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047856.P12673386544280228813

namespace A047856

/-- `∑[A217789((n+1)²)^(n-1)]` -/
def P12673386544280228813.Spec : Prop :=
  ∀ n, P12673386544280228813.a n = (A047856 n : ℚ)

end A047856

/-! ## A047856.P14085607990876573454

`∑[A001020(A004273(n)-n)]`
-/

namespace A047856.P14085607990876573454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047856.P14085607990876573454

namespace A047856

/-- `∑[A001020(A004273(n)-n)]` -/
def P14085607990876573454.Spec : Prop :=
  ∀ n, P14085607990876573454.a n = A047856 n

end A047856

/-!
# A047857: a(n) = Sum_{k=0..n} A047848(k, n-k).

The programs for A047857, there is no canonical definition to state claims against.
-/

/-! ## A047857.P3086858368988245905

`A103439(n+2)-2^(n+1)`
-/

namespace A047857.P3086858368988245905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103439 (n + 2) - (2 ^ (n + 1) : ℤ)

end

end A047857.P3086858368988245905

/-! ## A047857.P6204274317902426260

`A104879(n+2)-A048578(n)`
-/

namespace A047857.P6204274317902426260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104879 (n + 2) - A048578 n

end

end A047857.P6204274317902426260

/-! ## A047857.P2737966236150075818

`∑[∑[A047970(n)]-A000225(n)]`
-/

namespace A047857.P2737966236150075818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047970 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047857.P2737966236150075818

/-! ## A047857.P16974077844837071506

`∑[A003101(n+1)-A000225(n)]`
-/

namespace A047857.P16974077844837071506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003101 (n + 1) - A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047857.P16974077844837071506

/-! ## A047857.P5378980644007722968

`∑[A026898(n+1)-A000079(n)]`
-/

namespace A047857.P5378980644007722968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026898 (n + 1) - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047857.P5378980644007722968

/-! ## A047857.P14366977037788484563

`∑[A026898(n+1)-Δ[A000225(n)]]`
-/

namespace A047857.P14366977037788484563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026898 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047857.P14366977037788484563

/-! ## A047857.P7263666214918937188

`∑[A026898(n+1)]-A000225(n+1)`
-/

namespace A047857.P7263666214918937188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000225 (n + 1)

end

end A047857.P7263666214918937188

/-!
# A047858: T(n, k) = 2^(k-1)*(k + 2*n) - n + 1, array read by descending antidiagonals.

The programs for A047858, the canonical program `A047858.P868211845810194088` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047858 has offset 0).

The definition of A047858 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047858.P868211845810194088

`2^(row(n)-col(n)-1)*(row(n)-col(n)+2*col(n))-col(n)+1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047858

/-- `2^(row(n)-col(n)-1)*(row(n)-col(n)+2*col(n))-col(n)+1` -/
def P868211845810194088.Spec : Prop :=
  ∀ n, P868211845810194088.a n = (A047858 n : ℚ)

end A047858

/-! ## A047858.P753542054186943020

`A062111(n)+1-A002262(n)`
-/

namespace A047858.P753542054186943020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062111 n + (1 - A002262 n)

end

end A047858.P753542054186943020

namespace A047858

/-- `A062111(n)+1-A002262(n)` -/
def P753542054186943020.Spec : Prop :=
  ∀ n, P753542054186943020.a n = A047858 n

end A047858

/-! ## A047858.P4430704652165111466

`A062111(n)+2-A002260(n+1)`
-/

namespace A047858.P4430704652165111466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062111 n + (2 - A002260 (n + 1))

end

end A047858.P4430704652165111466

namespace A047858

/-- `A062111(n)+2-A002260(n+1)` -/
def P4430704652165111466.Spec : Prop :=
  ∀ n, P4430704652165111466.a n = A047858 n

end A047858

/-! ## A047858.P4501780612686561827

`A053219(n+1)-(A130321(n)+A002262(n)-1)`
-/

namespace A047858.P4501780612686561827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053219 (n + 1) - (A130321 n + A002262 n - 1)

end

end A047858.P4501780612686561827

namespace A047858

/-- `A053219(n+1)-(A130321(n)+A002262(n)-1)` -/
def P4501780612686561827.Spec : Prop :=
  ∀ n, P4501780612686561827.a n = A047858 n

end A047858

/-! ## A047858.P17612002595726885568

`A062111(n)+2-A001222(A078840(n+1))`
-/

namespace A047858.P17612002595726885568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062111 n + (2 - A001222 (A078840 (n + 1)).toNat)

end

end A047858.P17612002595726885568

namespace A047858

/-- `A062111(n)+2-A001222(A078840(n+1))` -/
def P17612002595726885568.Spec : Prop :=
  ∀ n, P17612002595726885568.a n = A047858 n

end A047858

/-! ## A047858.P6801411166549607378

`A062111(n)+A048272(A059268(n))`
-/

namespace A047858.P6801411166549607378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062111 n + A048272 (A059268 n).toNat

end

end A047858.P6801411166549607378

namespace A047858

/-- `A062111(n)+A048272(A059268(n))` -/
def P6801411166549607378.Spec : Prop :=
  ∀ n, P6801411166549607378.a n = A047858 n

end A047858

/-! ## A047858.P7477089603500266172

`A053219(n+1)-(A271519(A204985(n+1))-1)`
-/

namespace A047858.P7477089603500266172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053219 (n + 1) - (A271519 (A204985 (n + 1)).toNat - 1)

end

end A047858.P7477089603500266172

namespace A047858

/-- `A053219(n+1)-(A271519(A204985(n+1))-1)` -/
def P7477089603500266172.Spec : Prop :=
  ∀ n, P7477089603500266172.a n = A047858 n

end A047858

/-! ## A047858.P14443921080737570606

`A053219(n+1)-A091264(n)`
-/

namespace A047858.P14443921080737570606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053219 (n + 1) - A091264 n

end

end A047858.P14443921080737570606

namespace A047858

/-- `A053219(n+1)-A091264(n)` -/
def P14443921080737570606.Spec : Prop :=
  ∀ n, P14443921080737570606.a n = A047858 n

end A047858

/-! ## A047858.P1325678845702272506

`A053218(A038722(n+1))-A091264(n)`
-/

namespace A047858.P1325678845702272506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053218 (A038722 (n + 1)).toNat - A091264 n

end

end A047858.P1325678845702272506

namespace A047858

/-- `A053218(A038722(n+1))-A091264(n)` -/
def P1325678845702272506.Spec : Prop :=
  ∀ n, P1325678845702272506.a n = A047858 n

end A047858

/-! ## A047858.P3081875822879124100

`A053218(A061579(n)+1)-A091264(n)`
-/

namespace A047858.P3081875822879124100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053218 (A061579 n + 1).toNat - A091264 n

end

end A047858.P3081875822879124100

namespace A047858

/-- `A053218(A061579(n)+1)-A091264(n)` -/
def P3081875822879124100.Spec : Prop :=
  ∀ n, P3081875822879124100.a n = A047858 n

end A047858

/-!
# A047859: a(n) = T(2, n), where T is the array given by A047858.

The programs for A047859, the canonical program `A047859.P16694825149569042270` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047859 has offset 0).

The definition of A047859 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047859.P16694825149569042270

`(n+4)*2^(n-1)-1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047859

/-- `(n+4)*2^(n-1)-1` -/
def P16694825149569042270.Spec : Prop :=
  ∀ n, P16694825149569042270.a n = (A047859 n : ℚ)

end A047859

/-! ## A047859.P10068800405883543492

`ogf((-1+x+x^2)/(-1+5x-8x^2+4x^3))`
-/

namespace A047859.P10068800405883543492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -5, 8, -4] n

end

end A047859.P10068800405883543492

namespace A047859

/-- `ogf((-1+x+x^2)/(-1+5x-8x^2+4x^3))` -/
def P10068800405883543492.Spec : Prop :=
  ∀ n, P10068800405883543492.a n = A047859 n

end A047859

/-! ## A047859.P18012434291528584030

`∑[∑[A109975(n)]]`
-/

namespace A047859.P18012434291528584030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109975 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047859.P18012434291528584030

namespace A047859

/-- `∑[∑[A109975(n)]]` -/
def P18012434291528584030.Spec : Prop :=
  ∀ n, P18012434291528584030.a n = A047859 n

end A047859

/-! ## A047859.P12080788279553129858

`∑[A045891(n+1)]`
-/

namespace A047859.P12080788279553129858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047859.P12080788279553129858

namespace A047859

/-- `∑[A045891(n+1)]` -/
def P12080788279553129858.Spec : Prop :=
  ∀ n, P12080788279553129858.a n = A047859 n

end A047859

/-! ## A047859.P9491556427300707806

`∑[∑[record[A034007(n)]]]`
-/

namespace A047859.P9491556427300707806
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047859.P9491556427300707806

namespace A047859

/-- `∑[∑[record[A034007(n)]]]` -/
def P9491556427300707806.Spec : Prop :=
  ∀ n, P9491556427300707806.a n = A047859 n

end A047859

/-! ## A047859.P17319652575975433455

`∑[abs(A081037(n+1))]`
-/

namespace A047859.P17319652575975433455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081037 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047859.P17319652575975433455

namespace A047859

/-- `∑[abs(A081037(n+1))]` -/
def P17319652575975433455.Spec : Prop :=
  ∀ n, P17319652575975433455.a n = A047859 n

end A047859

/-! ## A047859.P10748167736846978349

`∑[A131352(n+1)/2]`
-/

namespace A047859.P10748167736846978349
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131352 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047859.P10748167736846978349

namespace A047859

/-- `∑[A131352(n+1)/2]` -/
def P10748167736846978349.Spec : Prop :=
  ∀ n, P10748167736846978349.a n = (A047859 n : ℚ)

end A047859

/-! ## A047859.P1993706747463205980

`∑[∑[A034007(n+1)]+1]`
-/

namespace A047859.P1993706747463205980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047859.P1993706747463205980

namespace A047859

/-- `∑[∑[A034007(n+1)]+1]` -/
def P1993706747463205980.Spec : Prop :=
  ∀ n, P1993706747463205980.a n = A047859 n

end A047859

/-! ## A047859.P3401530266588283902

`∑[A339252(n)-A001787(n)]`
-/

namespace A047859.P3401530266588283902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339252 n - A001787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047859.P3401530266588283902

namespace A047859

/-- `∑[A339252(n)-A001787(n)]` -/
def P3401530266588283902.Spec : Prop :=
  ∀ n, P3401530266588283902.a n = A047859 n

end A047859

/-! ## A047859.P1406578925127843785

`∑[A001792(n)-∑[A049610(n)]]`
-/

namespace A047859.P1406578925127843785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047859.P1406578925127843785

namespace A047859

/-- `∑[A001792(n)-∑[A049610(n)]]` -/
def P1406578925127843785.Spec : Prop :=
  ∀ n, P1406578925127843785.a n = A047859 n

end A047859

/-! ## A047859.P6861189043303612110

`∑[∑[A045623(n)-A049610(n)]]`
-/

namespace A047859.P6861189043303612110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n - A049610 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047859.P6861189043303612110

namespace A047859

/-- `∑[∑[A045623(n)-A049610(n)]]` -/
def P6861189043303612110.Spec : Prop :=
  ∀ n, P6861189043303612110.a n = A047859 n

end A047859

/-! ## A047859.P13877343147828332884

`∑[A111297(n+1)-A011782(n+1)]`
-/

namespace A047859.P13877343147828332884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111297 (n + 1) - A011782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047859.P13877343147828332884

namespace A047859

/-- `∑[A111297(n+1)-A011782(n+1)]` -/
def P13877343147828332884.Spec : Prop :=
  ∀ n, P13877343147828332884.a n = A047859 n

end A047859

/-! ## A047859.P12467278415023595807

`Δ[A338230(n)+n²]`
-/

namespace A047859.P12467278415023595807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338230 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047859.P12467278415023595807

namespace A047859

/-- `Δ[A338230(n)+n²]` -/
def P12467278415023595807.Spec : Prop :=
  ∀ n, P12467278415023595807.a n = A047859 n

end A047859

/-! ## A047859.P2088110465577014333

`Δ[∑[A045623(n)]-n]`
-/

namespace A047859.P2088110465577014333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047859.P2088110465577014333

namespace A047859

/-- `Δ[∑[A045623(n)]-n]` -/
def P2088110465577014333.Spec : Prop :=
  ∀ n, P2088110465577014333.a n = A047859 n

end A047859

/-! ## A047859.P1389855270709226247

`(A134311(n+1)+n)/2`
-/

namespace A047859.P1389855270709226247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134311 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A047859.P1389855270709226247

namespace A047859

/-- `(A134311(n+1)+n)/2` -/
def P1389855270709226247.Spec : Prop :=
  ∀ n, P1389855270709226247.a n = (A047859 n : ℚ)

end A047859

/-! ## A047859.P11558891470550213388

`(A047861(n)+A005183(n))/2`
-/

namespace A047859.P11558891470550213388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047861 n + A005183 n : ℚ) / 2

end

end A047859.P11558891470550213388

namespace A047859

/-- `(A047861(n)+A005183(n))/2` -/
def P11558891470550213388.Spec : Prop :=
  ∀ n, P11558891470550213388.a n = (A047859 n : ℚ)

end A047859

/-! ## A047859.P2701311391450118500

`A196410(n+5)%A115618(n)`
-/

namespace A047859.P2701311391450118500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196410 (n + 5)) (A115618 n)

end

end A047859.P2701311391450118500

namespace A047859

/-- `A196410(n+5)%A115618(n)` -/
def P2701311391450118500.Spec : Prop :=
  ∀ n, P2701311391450118500.a n = A047859 n

end A047859

/-! ## A047859.P13877693912466219395

`∑[A339252(n)-A036289(n)/2]`
-/

namespace A047859.P13877693912466219395
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339252 n : ℚ) - (A036289 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047859.P13877693912466219395

namespace A047859

/-- `∑[A339252(n)-A036289(n)/2]` -/
def P13877693912466219395.Spec : Prop :=
  ∀ n, P13877693912466219395.a n = (A047859 n : ℚ)

end A047859

/-! ## A047859.P12588358553212611348

`(Δ[A221882(n+1)]-1)/2`
-/

namespace A047859.P12588358553212611348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221882 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 1 : ℚ) / 2

end

end A047859.P12588358553212611348

namespace A047859

/-- `(Δ[A221882(n+1)]-1)/2` -/
def P12588358553212611348.Spec : Prop :=
  ∀ n, P12588358553212611348.a n = (A047859 n : ℚ)

end A047859

/-!
# A047860: a(n) = T(3,n), array T given by A047858.

The programs for A047860, the canonical program `A047860.P12126760037970201947` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047860 has offset 0).

The definition of A047860 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047860.P12126760037970201947

`2^(n-1)*(n+6)-2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047860

/-- `2^(n-1)*(n+6)-2` -/
def P12126760037970201947.Spec : Prop :=
  ∀ n, P12126760037970201947.a n = (A047860 n : ℚ)

end A047860

/-! ## A047860.P4344313830342896009

`∑[ogf((1-3x^2)/(1-4x+4x^2))]`
-/

namespace A047860.P4344313830342896009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047860.P4344313830342896009

namespace A047860

/-- `∑[ogf((1-3x^2)/(1-4x+4x^2))]` -/
def P4344313830342896009.Spec : Prop :=
  ∀ n, P4344313830342896009.a n = A047860 n

end A047860

/-! ## A047860.P5347552548658762711

`ogf((1-3x^2)/(1-5x+8x^2-4x^3))`
-/

namespace A047860.P5347552548658762711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3] [1, -5, 8, -4] n

end

end A047860.P5347552548658762711

namespace A047860

/-- `ogf((1-3x^2)/(1-5x+8x^2-4x^3))` -/
def P5347552548658762711.Spec : Prop :=
  ∀ n, P5347552548658762711.a n = A047860 n

end A047860

/-! ## A047860.P7488027378829995224

`2*(2*(a(n-1)-a(n-2))-1)` with `a(0)=1, a(1)=5`
-/

namespace A047860.P7488027378829995224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  2 * (2 * (a (n - 1) - a (n - 2)) - 1)

end

end A047860.P7488027378829995224

namespace A047860

/-- `2*(2*(a(n-1)-a(n-2))-1)` -/
def P7488027378829995224.Spec : Prop :=
  ∀ n, P7488027378829995224.a n = A047860 n

end A047860

/-! ## A047860.P7839022512214677183

`∑[A131577(n)+A045891(n+1)]`
-/

namespace A047860.P7839022512214677183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A045891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047860.P7839022512214677183

namespace A047860

/-- `∑[A131577(n)+A045891(n+1)]` -/
def P7839022512214677183.Spec : Prop :=
  ∀ n, P7839022512214677183.a n = A047860 n

end A047860

/-! ## A047860.P9664763780545018780

`∑[A151821(n+1)+A139756(n)]`
-/

namespace A047860.P9664763780545018780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (n + 1) + A139756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047860.P9664763780545018780

namespace A047860

/-- `∑[A151821(n+1)+A139756(n)]` -/
def P9664763780545018780.Spec : Prop :=
  ∀ n, P9664763780545018780.a n = A047860 n

end A047860

/-! ## A047860.P2588854860354561908

`∑[A109975(n+1)-A000007(n)]`
-/

namespace A047860.P2588854860354561908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109975 (n + 1) - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047860.P2588854860354561908

namespace A047860

/-- `∑[A109975(n+1)-A000007(n)]` -/
def P2588854860354561908.Spec : Prop :=
  ∀ n, P2588854860354561908.a n = A047860 n

end A047860

/-! ## A047860.P14892751376256379641

`∑[A111297(n+1)-A011782(n)]`
-/

namespace A047860.P14892751376256379641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111297 (n + 1) - A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047860.P14892751376256379641

namespace A047860

/-- `∑[A111297(n+1)-A011782(n)]` -/
def P14892751376256379641.Spec : Prop :=
  ∀ n, P14892751376256379641.a n = A047860 n

end A047860

/-! ## A047860.P16307222627312468698

`∑[A336102(2*n)+A003945(n)]`
-/

namespace A047860.P16307222627312468698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336102 (2 * n) + A003945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047860.P16307222627312468698

namespace A047860

/-- `∑[A336102(2*n)+A003945(n)]` -/
def P16307222627312468698.Spec : Prop :=
  ∀ n, P16307222627312468698.a n = A047860 n

end A047860

/-! ## A047860.P11101028578163452428

`∑[A045891(n+1)+A034008(n+1)]`
-/

namespace A047860.P11101028578163452428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 (n + 1) + A034008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047860.P11101028578163452428

namespace A047860

/-- `∑[A045891(n+1)+A034008(n+1)]` -/
def P11101028578163452428.Spec : Prop :=
  ∀ n, P11101028578163452428.a n = A047860 n

end A047860

/-! ## A047860.P9525574832767428488

`Δ[A047859(n)-2*n]`
-/

namespace A047860.P9525574832767428488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047859 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047860.P9525574832767428488

namespace A047860

/-- `Δ[A047859(n)-2*n]` -/
def P9525574832767428488.Spec : Prop :=
  ∀ n, P9525574832767428488.a n = A047860 n

end A047860

/-! ## A047860.P221370324428197830

`Δ[A045623(n+1)-2*n]`
-/

namespace A047860.P221370324428197830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 (n + 1) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047860.P221370324428197830

namespace A047860

/-- `Δ[A045623(n+1)-2*n]` -/
def P221370324428197830.Spec : Prop :=
  ∀ n, P221370324428197830.a n = A047860 n

end A047860

/-! ## A047860.P16718886661465980638

`(A048467(n)+A005183(n))/2`
-/

namespace A047860.P16718886661465980638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048467 n + A005183 n : ℚ) / 2

end

end A047860.P16718886661465980638

namespace A047860

/-- `(A048467(n)+A005183(n))/2` -/
def P16718886661465980638.Spec : Prop :=
  ∀ n, P16718886661465980638.a n = (A047860 n : ℚ)

end A047860

/-! ## A047860.P17682629887428904670

`Δ[Δ[A338230(n)]]`
-/

namespace A047860.P17682629887428904670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338230 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047860.P17682629887428904670

namespace A047860

/-- `Δ[Δ[A338230(n)]]` -/
def P17682629887428904670.Spec : Prop :=
  ∀ n, P17682629887428904670.a n = A047860 n

end A047860

/-! ## A047860.P8604084533581385357

`Δ[Δ[A001792(n)]-2*n]`
-/

namespace A047860.P8604084533581385357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047860.P8604084533581385357

namespace A047860

/-- `Δ[Δ[A001792(n)]-2*n]` -/
def P8604084533581385357.Spec : Prop :=
  ∀ n, P8604084533581385357.a n = A047860 n

end A047860

/-! ## A047860.P2757628324715336737

`Δ[Δ[A066368(n)-A002061(n)]]`
-/

namespace A047860.P2757628324715336737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066368 n - A002061 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047860.P2757628324715336737

namespace A047860

/-- `Δ[Δ[A066368(n)-A002061(n)]]` -/
def P2757628324715336737.Spec : Prop :=
  ∀ n, P2757628324715336737.a n = A047860 n

end A047860

/-! ## A047860.P13827607546222167298

`A047858(A167614(n+2))`
-/

namespace A047860.P13827607546222167298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047858 (A167614 (n + 2)).toNat

end

end A047860.P13827607546222167298

namespace A047860

/-- `A047858(A167614(n+2))` -/
def P13827607546222167298.Spec : Prop :=
  ∀ n, P13827607546222167298.a n = A047860 n

end A047860

/-! ## A047860.P9137517815850707394

`A047858(eq[3, A002262(n)])`
-/

namespace A047860.P9137517815850707394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047860.P9137517815850707394

namespace A047860

/-- `A047858(eq[3, A002262(n)])` -/
def P9137517815850707394.Spec : Prop :=
  ∀ n, P9137517815850707394.a n = A047860 n

end A047860

/-! ## A047860.P11352027202522413874

`A047858(eq[2, A002260(n+1)-2])`
-/

namespace A047860.P11352027202522413874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047860.P11352027202522413874

namespace A047860

/-- `A047858(eq[2, A002260(n+1)-2])` -/
def P11352027202522413874.Spec : Prop :=
  ∀ n, P11352027202522413874.a n = A047860 n

end A047860

/-!
# A047861: a(n) = T(4,n), array T given by A047858.

The programs for A047861, the canonical program `A047861.P13440390021906672199` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047861 has offset 0).

The definition of A047861 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047861.P13440390021906672199

`2^(n-1)*(n+8)-3`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047861

/-- `2^(n-1)*(n+8)-3` -/
def P13440390021906672199.Spec : Prop :=
  ∀ n, P13440390021906672199.a n = (A047861 n : ℚ)

end A047861

/-! ## A047861.P10572867414946771837

`∑[ogf((1+x-5x^2)/(1-4x+4x^2))]`
-/

namespace A047861.P10572867414946771837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -5] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047861.P10572867414946771837

namespace A047861

/-- `∑[ogf((1+x-5x^2)/(1-4x+4x^2))]` -/
def P10572867414946771837.Spec : Prop :=
  ∀ n, P10572867414946771837.a n = A047861 n

end A047861

/-! ## A047861.P15494539026866311280

`ogf((1+x-5x^2)/(1-5x+8x^2-4x^3))`
-/

namespace A047861.P15494539026866311280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -5] [1, -5, 8, -4] n

end

end A047861.P15494539026866311280

namespace A047861

/-- `ogf((1+x-5x^2)/(1-5x+8x^2-4x^3))` -/
def P15494539026866311280.Spec : Prop :=
  ∀ n, P15494539026866311280.a n = A047861 n

end A047861

/-! ## A047861.P4228272349275695034

`abs(3-Δ[A045891(n+2)])`
-/

namespace A047861.P4228272349275695034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (f1 (n + 1) - f1 n)|

end

end A047861.P4228272349275695034

namespace A047861

/-- `abs(3-Δ[A045891(n+2)])` -/
def P4228272349275695034.Spec : Prop :=
  ∀ n, P4228272349275695034.a n = A047861 n

end A047861

/-! ## A047861.P13701675011162649624

`Δ[A133546(n+1)-2*n]`
-/

namespace A047861.P13701675011162649624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133546 (n + 1) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047861.P13701675011162649624

namespace A047861

/-- `Δ[A133546(n+1)-2*n]` -/
def P13701675011162649624.Spec : Prop :=
  ∀ n, P13701675011162649624.a n = A047861 n

end A047861

/-! ## A047861.P10962790368242504146

`Δ[A047860(n)-A016777(n)]`
-/

namespace A047861.P10962790368242504146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047860 n - A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047861.P10962790368242504146

namespace A047861

/-- `Δ[A047860(n)-A016777(n)]` -/
def P10962790368242504146.Spec : Prop :=
  ∀ n, P10962790368242504146.a n = A047861 n

end A047861

/-! ## A047861.P10960541751978363398

`(A048469(n)+A005183(n))/2`
-/

namespace A047861.P10960541751978363398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048469 n + A005183 n : ℚ) / 2

end

end A047861.P10960541751978363398

namespace A047861

/-- `(A048469(n)+A005183(n))/2` -/
def P10960541751978363398.Spec : Prop :=
  ∀ n, P10960541751978363398.a n = (A047861 n : ℚ)

end A047861

/-! ## A047861.P2421127476836496361

`(A047862(n)+A047860(n))/2`
-/

namespace A047861.P2421127476836496361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047862 n + A047860 n : ℚ) / 2

end

end A047861.P2421127476836496361

namespace A047861

/-- `(A047862(n)+A047860(n))/2` -/
def P2421127476836496361.Spec : Prop :=
  ∀ n, P2421127476836496361.a n = (A047861 n : ℚ)

end A047861

/-! ## A047861.P6613949524512606940

`(A048467(n)+A047859(n))/2`
-/

namespace A047861.P6613949524512606940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048467 n + A047859 n : ℚ) / 2

end

end A047861.P6613949524512606940

namespace A047861

/-- `(A048467(n)+A047859(n))/2` -/
def P6613949524512606940.Spec : Prop :=
  ∀ n, P6613949524512606940.a n = (A047861 n : ℚ)

end A047861

/-! ## A047861.P923800798105409151

`A047858(eq[4, A002262(n)])`
-/

namespace A047861.P923800798105409151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047861.P923800798105409151

namespace A047861

/-- `A047858(eq[4, A002262(n)])` -/
def P923800798105409151.Spec : Prop :=
  ∀ n, P923800798105409151.a n = A047861 n

end A047861

/-! ## A047861.P9963431665654511543

`A047858(eq[16, A059268(n)])`
-/

namespace A047861.P9963431665654511543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047861.P9963431665654511543

namespace A047861

/-- `A047858(eq[16, A059268(n)])` -/
def P9963431665654511543.Spec : Prop :=
  ∀ n, P9963431665654511543.a n = A047861 n

end A047861

/-! ## A047861.P14724059026720873762

`A047858(eq[5, A002260(n+1)])`
-/

namespace A047861.P14724059026720873762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047861.P14724059026720873762

namespace A047861

/-- `A047858(eq[5, A002260(n+1)])` -/
def P14724059026720873762.Spec : Prop :=
  ∀ n, P14724059026720873762.a n = A047861 n

end A047861

/-!
# A047862: a(n) = T(5,n), array T given by A047858.

The programs for A047862, the canonical program `A047862.P17395349662076623380` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047862 has offset 0).

The definition of A047862 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047862.P17395349662076623380

`2^(n-1)*(n+10)-4`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047862

/-- `2^(n-1)*(n+10)-4` -/
def P17395349662076623380.Spec : Prop :=
  ∀ n, P17395349662076623380.a n = (A047862 n : ℚ)

end A047862

/-! ## A047862.P6893472587111050690

`∑[ogf((1+2x-7x^2)/(1-4x+4x^2))]`
-/

namespace A047862.P6893472587111050690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -7] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047862.P6893472587111050690

namespace A047862

/-- `∑[ogf((1+2x-7x^2)/(1-4x+4x^2))]` -/
def P6893472587111050690.Spec : Prop :=
  ∀ n, P6893472587111050690.a n = A047862 n

end A047862

/-! ## A047862.P13842899942680917448

`ogf((1+2x-7x^2)/(1-5x+8x^2-4x^3))`
-/

namespace A047862.P13842899942680917448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -7] [1, -5, 8, -4] n

end

end A047862.P13842899942680917448

namespace A047862

/-- `ogf((1+2x-7x^2)/(1-5x+8x^2-4x^3))` -/
def P13842899942680917448.Spec : Prop :=
  ∀ n, P13842899942680917448.a n = A047862 n

end A047862

/-! ## A047862.P15791807544857121864

`4*(a(n-1)-(a(n-2)+1))` with `a(0)=1, a(1)=7`
-/

namespace A047862.P15791807544857121864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  4 * (a (n - 1) - (a (n - 2) + 1))

end

end A047862.P15791807544857121864

namespace A047862

/-- `4*(a(n-1)-(a(n-2)+1))` -/
def P15791807544857121864.Spec : Prop :=
  ∀ n, P15791807544857121864.a n = A047862 n

end A047862

/-! ## A047862.P10855720110393294824

`4*(a(n-1)-1-a(n-2))` with `a(0)=1, a(1)=7`
-/

namespace A047862.P10855720110393294824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  4 * (a (n - 1) - 1 - a (n - 2))

end

end A047862.P10855720110393294824

namespace A047862

/-- `4*(a(n-1)-1-a(n-2))` -/
def P10855720110393294824.Spec : Prop :=
  ∀ n, P10855720110393294824.a n = A047862 n

end A047862

/-! ## A047862.P16906706985609900974

`Δ[A047861(n)-4*n]`
-/

namespace A047862.P16906706985609900974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047861 n - (4 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047862.P16906706985609900974

namespace A047862

/-- `Δ[A047861(n)-4*n]` -/
def P16906706985609900974.Spec : Prop :=
  ∀ n, P16906706985609900974.a n = A047862 n

end A047862

/-! ## A047862.P12129980388007802436

`(A048467(n)+A047861(n))/2`
-/

namespace A047862.P12129980388007802436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048467 n + A047861 n : ℚ) / 2

end

end A047862.P12129980388007802436

namespace A047862

/-- `(A048467(n)+A047861(n))/2` -/
def P12129980388007802436.Spec : Prop :=
  ∀ n, P12129980388007802436.a n = (A047862 n : ℚ)

end A047862

/-! ## A047862.P2853814056035005478

`(A048468(n)+A047860(n))/2`
-/

namespace A047862.P2853814056035005478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048468 n + A047860 n : ℚ) / 2

end

end A047862.P2853814056035005478

namespace A047862

/-- `(A048468(n)+A047860(n))/2` -/
def P2853814056035005478.Spec : Prop :=
  ∀ n, P2853814056035005478.a n = (A047862 n : ℚ)

end A047862

/-! ## A047862.P13514496306337871527

`(A048469(n)+A047859(n))/2`
-/

namespace A047862.P13514496306337871527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048469 n + A047859 n : ℚ) / 2

end

end A047862.P13514496306337871527

namespace A047862

/-- `(A048469(n)+A047859(n))/2` -/
def P13514496306337871527.Spec : Prop :=
  ∀ n, P13514496306337871527.a n = (A047862 n : ℚ)

end A047862

/-! ## A047862.P11170202906421257415

`(A195858(n)+A005183(n))/2`
-/

namespace A047862.P11170202906421257415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195858 n + A005183 n : ℚ) / 2

end

end A047862.P11170202906421257415

namespace A047862

/-- `(A195858(n)+A005183(n))/2` -/
def P11170202906421257415.Spec : Prop :=
  ∀ n, P11170202906421257415.a n = (A047862 n : ℚ)

end A047862

/-! ## A047862.P9434363085634001455

`A047858(A000217(n+6)-(n+1))`
-/

namespace A047862.P9434363085634001455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047858 (A000217 (n + 6) - (n + 1 : ℤ)).toNat

end

end A047862.P9434363085634001455

namespace A047862

/-- `A047858(A000217(n+6)-(n+1))` -/
def P9434363085634001455.Spec : Prop :=
  ∀ n, P9434363085634001455.a n = A047862 n

end A047862

/-!
# A047863: Number of labeled graphs with 2-colored nodes where black nodes are only connected to white nodes and vice versa.

The programs for A047863, there is no canonical definition to state claims against.
-/

/-! ## A047863.P8416495771081509110

`A361950(∑[n+3])`
-/

namespace A047863.P8416495771081509110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361950 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047863.P8416495771081509110

/-! ## A047863.P13012661653022367979

`A179534(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A047863.P13012661653022367979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A179534 n + (n : ℤ) * a (n - 1)

end

end A047863.P13012661653022367979

/-! ## A047863.P3954662475898943023

`A322280(∑[n+3])`
-/

namespace A047863.P3954662475898943023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322280 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047863.P3954662475898943023

/-!
# A047864: Number of labeled bipartite graphs with n nodes.

The programs for A047864, there is no canonical definition to state claims against.
-/

/-! ## A047864.P18059761351860229584

`A084270(round(sqrt(n²+1)))+1`
-/

namespace A047864.P18059761351860229584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084270 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + 1

end

end A047864.P18059761351860229584

/-! ## A047864.P8119769412723830989

`A108954(C(C(n, 2), 2)+n^n)-char[4]`
-/

namespace A047864.P8119769412723830989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (Nat.choose (Nat.choose n 2) 2 + n ^ n) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A047864.P8119769412723830989

/-!
# A047865: Number of derangements of n where minimal cycle size is at least 4.

The programs for A047865, the canonical program `A047865.P13991554044335905026` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047865 has offset 0).

The definition of A047865 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047865.P13991554044335905026

`(n-1)*a(n-1)+(n-1)*(n-2)*(n-3)*a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047865

/-- `(n-1)*a(n-1)+(n-1)*(n-2)*(n-3)*a(n-4)` -/
def P13991554044335905026.Spec : Prop :=
  ∀ n, P13991554044335905026.a n = A047865 n

theorem P13991554044335905026.correct : P13991554044335905026.Spec := by
  intro n
  simp only [A047865]

end A047865

/-! ## A047865.P4332464397551324288

`A334569(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A047865.P4332464397551324288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A334569 n + (n : ℤ) * a (n - 1)

end

end A047865.P4332464397551324288

namespace A047865

/-- `A334569(n)+n*a(n-1)` -/
def P4332464397551324288.Spec : Prop :=
  ∀ n, P4332464397551324288.a n = A047865 n

end A047865

/-! ## A047865.P15867509676576272017

`A125582(n)%2*abs(1-n)!`
-/

namespace A047865.P15867509676576272017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125582 n) 2 * (Nat.factorial |1 - (n : ℤ)|.toNat : ℤ)

end

end A047865.P15867509676576272017

namespace A047865

/-- `A125582(n)%2*abs(1-n)!` -/
def P15867509676576272017.Spec : Prop :=
  ∀ n, P15867509676576272017.a n = A047865 n

end A047865

/-! ## A047865.P2929112297318826249

`A257685(2*and(-8, n!))+floor(acot(n))`
-/

namespace A047865.P2929112297318826249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257685 (2 * Int.land (-8) (Nat.factorial n : ℤ)).toNat + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A047865.P2929112297318826249

namespace A047865

/-- `A257685(2*and(-8, n!))+floor(acot(n))` -/
def P2929112297318826249.Spec : Prop :=
  ∀ n, P2929112297318826249.a n = A047865 n

end A047865

/-!
# A047866: a(n) = ceiling(n*(n+1)*(n+2)/8).

The programs for A047866, the canonical program `A047866.P17143377541670531566` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047866 has offset 0).

The definition of A047866 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*(n+1)*(n+2)/8)` (program `A047866.P17143377541670531566`, by `A047866.P17143377541670531566.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A047866.P17143377541670531566

`ceil(n*(n+1)*(n+2)/8)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047866

/-- `ceil(n*(n+1)*(n+2)/8)` -/
def P17143377541670531566.Spec : Prop :=
  ∀ n, P17143377541670531566.a n = A047866 n

theorem P17143377541670531566.correct : P17143377541670531566.Spec := by
  intro n
  simp only [A047866]

end A047866

/-! ## A047866.P4243285562500060779

`floor(∑[3/(4*acot(∑[n]))])`
-/

namespace A047866.P4243285562500060779
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 / (4 * SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A047866.P4243285562500060779

namespace A047866

/-- `floor(∑[3/(4*acot(∑[n]))])` -/
def P4243285562500060779.Spec : Prop :=
  ∀ n, P4243285562500060779.a n = A047866 n

end A047866

/-! ## A047866.P16722558599222839839

`round((3*C(n+2, 3)+1)/4)`
-/

namespace A047866.P16722558599222839839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 * Nat.choose (n + 2) 3 + 1 : ℚ) / 4)

end

end A047866.P16722558599222839839

namespace A047866

/-- `round((3*C(n+2, 3)+1)/4)` -/
def P16722558599222839839.Spec : Prop :=
  ∀ n, P16722558599222839839.a n = A047866 n

end A047866

/-! ## A047866.P9100061230808463579

`floor((C(∑[n+1], 2)+n+1)/(n+3))`
-/

namespace A047866.P9100061230808463579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + (n + 1) : ℚ) / (n + 3 : ℚ)⌋

end

end A047866.P9100061230808463579

namespace A047866

/-- `floor((C(∑[n+1], 2)+n+1)/(n+3))` -/
def P9100061230808463579.Spec : Prop :=
  ∀ n, P9100061230808463579.a n = A047866 n

end A047866

/-! ## A047866.P10904534462333824506

`round(round(A027480(n)/2)/2)`
-/

namespace A047866.P10904534462333824506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((A027480 n : ℚ) / 2) : ℚ) / 2)

end

end A047866.P10904534462333824506

namespace A047866

/-- `round(round(A027480(n)/2)/2)` -/
def P10904534462333824506.Spec : Prop :=
  ∀ n, P10904534462333824506.a n = A047866 n

end A047866

/-! ## A047866.P8459925272234402085

`round(round(A006011(n+1)/(n+1))/2)`
-/

namespace A047866.P8459925272234402085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((A006011 (n + 1) : ℚ) / (n + 1 : ℚ)) : ℚ) / 2)

end

end A047866.P8459925272234402085

namespace A047866

/-- `round(round(A006011(n+1)/(n+1))/2)` -/
def P8459925272234402085.Spec : Prop :=
  ∀ n, P8459925272234402085.a n = A047866 n

end A047866

/-! ## A047866.P15510173976297015809

`A000292(n)-floor(A000292(n)/4)`
-/

namespace A047866.P15510173976297015809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n - ⌊(A000292 n : ℚ) / 4⌋

end

end A047866.P15510173976297015809

namespace A047866

/-- `A000292(n)-floor(A000292(n)/4)` -/
def P15510173976297015809.Spec : Prop :=
  ∀ n, P15510173976297015809.a n = A047866 n

end A047866

/-! ## A047866.P10972023136696145939

`A019298(n+1)-A081276(n+2)`
-/

namespace A047866.P10972023136696145939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019298 (n + 1) - A081276 (n + 2)

end

end A047866.P10972023136696145939

namespace A047866

/-- `A019298(n+1)-A081276(n+2)` -/
def P10972023136696145939.Spec : Prop :=
  ∀ n, P10972023136696145939.a n = A047866 n

end A047866

/-! ## A047866.P17457079718349631774

`round(∑[A008486(∑[n])/4])`
-/

namespace A047866.P17457079718349631774
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008486 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047866.P17457079718349631774

namespace A047866

/-- `round(∑[A008486(∑[n])/4])` -/
def P17457079718349631774.Spec : Prop :=
  ∀ n, P17457079718349631774.a n = A047866 n

end A047866

/-! ## A047866.P1962755420057469688

`∑[A057353(∑[n]+n%2)]`
-/

namespace A047866.P1962755420057469688
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (∑ j ∈ Finset.range (n + 1), f2 j + n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047866.P1962755420057469688

namespace A047866

/-- `∑[A057353(∑[n]+n%2)]` -/
def P1962755420057469688.Spec : Prop :=
  ∀ n, P1962755420057469688.a n = A047866 n

end A047866

/-! ## A047866.P4001998745683460907

`∑[A057353(∑[n]+and(1, n))]`
-/

namespace A047866.P4001998745683460907
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (∑ j ∈ Finset.range (n + 1), f2 j + Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047866.P4001998745683460907

namespace A047866

/-- `∑[A057353(∑[n]+and(1, n))]` -/
def P4001998745683460907.Spec : Prop :=
  ∀ n, P4001998745683460907.a n = A047866 n

end A047866

/-! ## A047866.P14805406190025008625

`∑[A057360(∑[2*A014681(n)])]`
-/

namespace A047866.P14805406190025008625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014681 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047866.P14805406190025008625

namespace A047866

/-- `∑[A057360(∑[2*A014681(n)])]` -/
def P14805406190025008625.Spec : Prop :=
  ∀ n, P14805406190025008625.a n = A047866 n

end A047866

/-!
# A047870: Smallest number that is not a sum of at most one power of each of the numbers 1 through n.

The programs for A047870, there is no canonical definition to state claims against.
-/

/-! ## A047870.P9776533104306784210

`record[A127568(n)]+round(xor(1, n)/6)`
-/

namespace A047870.P9776533104306784210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 6)

end

end A047870.P9776533104306784210

/-! ## A047870.P2773876137133731354

`A302789(5*A003576(n))`
-/

namespace A047870.P2773876137133731354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302789 (5 * A003576 n).toNat

end

end A047870.P2773876137133731354

/-!
# A047871: a(n) = smallest number > a(n-1) that is not a sum of exactly one power of each of the numbers 1 through n.

The programs for A047871, there is no canonical definition to state claims against.
-/

/-! ## A047871.P1946144830702005001

`A036468(A280768(n+1)+A000045(n))`
-/

namespace A047871.P1946144830702005001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036468 (A280768 (n + 1) + A000045 n).toNat

end

end A047871.P1946144830702005001

/-! ## A047871.P349544700248103988

`A166284(A247292(2*(n+1)))+Δ[A051286(n)]`
-/

namespace A047871.P349544700248103988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166284 (A247292 (2 * (n + 1))).toNat + (f1 (n + 1) - f1 n)

end

end A047871.P349544700248103988

/-!
# A047872: a(n) = floor(abs(B(2*n + 2)/B(2*n))) where B(n) is the n-th Bernoulli number.

The programs for A047872, the canonical program `A047872.P8992249102371300441` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047872 has offset 0).

The definition of A047872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047872.P8992249102371300441

`floor((n+1)*(2*n+1)/(2*π²))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047872

/-- `floor((n+1)*(2*n+1)/(2*π²))` -/
def P8992249102371300441.Spec : Prop :=
  ∀ n, P8992249102371300441.a n = A047872 n

theorem P8992249102371300441.correct : P8992249102371300441.Spec := by
  intro n
  simp only [A047872]

end A047872

/-! ## A047872.P4672964548985491492

`round(log(A146219(n+2)))`
-/

namespace A047872.P4672964548985491492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A146219 (n + 2) : ℝ))

end

end A047872.P4672964548985491492

namespace A047872

/-- `round(log(A146219(n+2)))` -/
def P4672964548985491492.Spec : Prop :=
  ∀ n, P4672964548985491492.a n = A047872 n

end A047872

/-! ## A047872.P3354519672306726986

`A059995(A005563(n)-A076869(2*n+1))`
-/

namespace A047872.P3354519672306726986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A005563 n - A076869 (2 * n + 1)).toNat

end

end A047872.P3354519672306726986

namespace A047872

/-- `A059995(A005563(n)-A076869(2*n+1))` -/
def P3354519672306726986.Spec : Prop :=
  ∀ n, P3354519672306726986.a n = A047872 n

end A047872

/-! ## A047872.P14544411153745354620

`A004526(A342696(n)+A214294(n+1))`
-/

namespace A047872.P14544411153745354620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A342696 n + A214294 (n + 1)).toNat

end

end A047872.P14544411153745354620

namespace A047872

/-- `A004526(A342696(n)+A214294(n+1))` -/
def P14544411153745354620.Spec : Prop :=
  ∀ n, P14544411153745354620.a n = A047872 n

end A047872

/-! ## A047872.P11035634095310238462

`A037915(A183140(n))%A274300(n)`
-/

namespace A047872.P11035634095310238462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037915 (A183140 n).toNat) (A274300 n)

end

end A047872.P11035634095310238462

namespace A047872

/-- `A037915(A183140(n))%A274300(n)` -/
def P11035634095310238462.Spec : Prop :=
  ∀ n, P11035634095310238462.a n = A047872 n

end A047872

/-!
# A047874: Triangle of numbers T(n,k) = number of permutations of (1,2,...,n) with longest increasing subsequence of length k (1<=k<=n).

The programs for A047874, there is no canonical definition to state claims against.
-/

/-! ## A047874.P13916840534868212507

`A126065((n²+n)%comp[∑[n]]+1)`
-/

namespace A047874.P13916840534868212507
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 ((n ^ 2 + n) % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A047874.P13916840534868212507

/-! ## A047874.P14787822199024838805

`A126065(A038722(n+1))`
-/

namespace A047874.P14787822199024838805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (A038722 (n + 1)).toNat

end

end A047874.P14787822199024838805

/-! ## A047874.P7891995756175783910

`A126065(A061579(n)+1)`
-/

namespace A047874.P7891995756175783910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (A061579 n + 1).toNat

end

end A047874.P7891995756175783910

/-! ## A047874.P720772870825776885

`A126065(A093995(n+1)-n)`
-/

namespace A047874.P720772870825776885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A047874.P720772870825776885

/-! ## A047874.P6993480019904989156

`A214152(n+1)-A214152(n+2)%A214152(n+1)`
-/

namespace A047874.P6993480019904989156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (n + 1) - Int.tmod (A214152 (n + 2)) (A214152 (n + 1))

end

end A047874.P6993480019904989156

/-!
# A047876: a(n) = Sum{T(i,n-i): i=0,1,...,n}, array T as in A049604.

The programs for A047876, there is no canonical definition to state claims against.
-/

/-! ## A047876.P7894109878447750944

`A183042(char[2]+n)`
-/

namespace A047876.P7894109878447750944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183042 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A047876.P7894109878447750944

/-! ## A047876.P17869661485353234066

`2*A047877(n)`
-/

namespace A047876.P17869661485353234066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047877 n

end

end A047876.P17869661485353234066

/-! ## A047876.P2751787698301499013

`A047877(sqrt(A000290(n)))+A047877(n)`
-/

namespace A047876.P2751787698301499013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047877 (SequenceMachineLib.roundAway (Real.sqrt (A000290 n : ℝ))).toNat + A047877 n

end

end A047876.P2751787698301499013

/-! ## A047876.P1658187252353255594

`A047877(A023443(n+1))+A047877(n)`
-/

namespace A047876.P1658187252353255594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047877 (A023443 (n + 1)).toNat + A047877 n

end

end A047876.P1658187252353255594

/-! ## A047876.P14222537191468952228

`A047877(A005843(n)/2)+A047877(n)`
-/

namespace A047876.P14222537191468952228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047877 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A047877 n

end

end A047876.P14222537191468952228

/-! ## A047876.P10900371404039861694

`A047877(lcm(n, A033999(n)))+A047877(n)`
-/

namespace A047876.P10900371404039861694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047877 (Int.lcm (n : ℤ) (A033999 n)) + A047877 n

end

end A047876.P10900371404039861694

/-! ## A047876.P14248355175698470744

`A047877(n)+A047877(n)%A158295(n+1)`
-/

namespace A047876.P14248355175698470744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047877 n + Int.tmod (A047877 n) (A158295 (n + 1))

end

end A047876.P14248355175698470744

/-! ## A047876.P11542263497610393564

`A005843(A047877(n))`
-/

namespace A047876.P11542263497610393564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A047877 n).toNat

end

end A047876.P11542263497610393564

/-! ## A047876.P2551580162409262166

`A004273(A047877(n)+1)-1`
-/

namespace A047876.P2551580162409262166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A047877 n + 1).toNat - 1

end

end A047876.P2551580162409262166

/-! ## A047876.P11635391046205088565

`A057427(n)+A004273(A047877(n))`
-/

namespace A047876.P11635391046205088565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A004273 (A047877 n).toNat

end

end A047876.P11635391046205088565

/-!
# A047877: a(n) = (1/2)*Sum_{i=0..n} T(i,n-i), array T as in A049604.

The programs for A047877, there is no canonical definition to state claims against.
-/

/-! ## A047877.P8214310672702511284

`A047876(n)/2`
-/

namespace A047877.P8214310672702511284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047876 n : ℚ) / 2

end

end A047877.P8214310672702511284

/-! ## A047877.P11012383805556772386

`A273943(A047876(n))`
-/

namespace A047877.P11012383805556772386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A047876 n).toNat

end

end A047877.P11012383805556772386

/-! ## A047877.P8612691296358389146

`A014682(lcm(2, A047876(n)))`
-/

namespace A047877.P8612691296358389146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lcm 2 (A047876 n))

end

end A047877.P8612691296358389146

/-! ## A047877.P4962438310664110915

`A014682(A047876(n)+2)-1`
-/

namespace A047877.P4962438310664110915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A047876 n + 2).toNat - 1

end

end A047877.P4962438310664110915

/-! ## A047877.P16733955932945201488

`A014682(2*A047876(n)-A047876(n))`
-/

namespace A047877.P16733955932945201488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * A047876 n - A047876 n).toNat

end

end A047877.P16733955932945201488

/-! ## A047877.P13388365872196202848

`A328399(A047876(n)+2)-2`
-/

namespace A047877.P13388365872196202848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A047876 n + 2).toNat - 2

end

end A047877.P13388365872196202848

/-! ## A047877.P12942956973089250773

`A328399(A047876(n))+A057428(n+1)`
-/

namespace A047877.P12942956973089250773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A047876 n).toNat + A057428 (n + 1)

end

end A047877.P12942956973089250773

/-! ## A047877.P6901625398309482018

`A328399(A047876(n)*A054977(n))-1`
-/

namespace A047877.P6901625398309482018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A047876 n * A054977 n).toNat - 1

end

end A047877.P6901625398309482018

/-! ## A047877.P1797447319999772935

`A328399(A047876(n))-A054977(A328399(n))`
-/

namespace A047877.P1797447319999772935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A047876 n).toNat - A054977 (A328399 n).toNat

end

end A047877.P1797447319999772935

/-! ## A047877.P6724515320958119682

`A004524(A047876(n)+1)`
-/

namespace A047877.P6724515320958119682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A047876 n + 1).toNat

end

end A047877.P6724515320958119682

/-! ## A047877.P952925467279450821

`A004524(or(1, A047876(n)))`
-/

namespace A047877.P952925467279450821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lor 1 (A047876 n)).toNat

end

end A047877.P952925467279450821

/-! ## A047877.P17324992957349196306

`A004524(xor(1, A047876(n)))`
-/

namespace A047877.P17324992957349196306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.xor 1 (A047876 n)).toNat

end

end A047877.P17324992957349196306

/-! ## A047877.P9919229767180639312

`A001281(A047876(n)+2)-1`
-/

namespace A047877.P9919229767180639312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A047876 n + 2).toNat - 1

end

end A047877.P9919229767180639312

/-! ## A047877.P2542266172428187603

`A027656(A047876(n)+2)-2`
-/

namespace A047877.P2542266172428187603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A047876 n + 2).toNat - 2

end

end A047877.P2542266172428187603

/-! ## A047877.P2851816212798635557

`A001281(2*A047876(n)-A047876(n))`
-/

namespace A047877.P2851816212798635557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (2 * A047876 n - A047876 n).toNat

end

end A047877.P2851816212798635557

/-! ## A047877.P17586383630941025035

`A110657(2*A047876(n))`
-/

namespace A047877.P17586383630941025035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (2 * A047876 n).toNat

end

end A047877.P17586383630941025035

/-!
# A047878: a(n) is the least number of knight's moves from corner (0,0) to n-th diagonal of unbounded chessboard.

The programs for A047878, the canonical program `A047878.P10242734222397463435` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047878 has offset 0).

The definition of A047878 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047878.P10242734222397463435

`a(n-3)+1` with `a(0)=0, a(1)=3, a(2)=2, a(3)=1, a(4)=2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047878

/-- `a(n-3)+1` -/
def P10242734222397463435.Spec : Prop :=
  ∀ n, (P10242734222397463435.a n : ℤ) = A047878 n

theorem P10242734222397463435.correct : P10242734222397463435.Spec := by
  intro n
  simp only [A047878]

end A047878

/-! ## A047878.P2262941790907637476

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=-1, a(3)=-1, a(4)=1, a(5)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A047878.P2262941790907637476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, -1, -1, 1, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047878.P2262941790907637476

namespace A047878

/-- `∑[floor(a(n-3))]` -/
def P2262941790907637476.Spec : Prop :=
  ∀ n, P2262941790907637476.a n = A047878 n

end A047878

/-! ## A047878.P2913203011244746458

`2-(gcd(3, n)-a(n-1))` with `a(0)=0, a(1)=3, a(2)=2`
-/

namespace A047878.P2913203011244746458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 2] fun n a =>
  2 - ((Nat.gcd 3 n : ℤ) - a (n - 1))

end

end A047878.P2913203011244746458

namespace A047878

/-- `2-(gcd(3, n)-a(n-1))` -/
def P2913203011244746458.Spec : Prop :=
  ∀ n, P2913203011244746458.a n = A047878 n

end A047878

/-! ## A047878.P8316464361423917220

`2*ceil(2*sqrt(ceil((n/3)²)))-n`
-/

namespace A047878.P8316464361423917220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈2 * Real.sqrt (⌈((n : ℚ) / 3) ^ 2⌉ : ℝ)⌉ - (n : ℤ)

end

end A047878.P8316464361423917220

namespace A047878

/-- `2*ceil(2*sqrt(ceil((n/3)²)))-n` -/
def P8316464361423917220.Spec : Prop :=
  ∀ n, P8316464361423917220.a n = A047878 n

end A047878

/-! ## A047878.P15145640673264217724

`∑[1/a(n-3)]` with `a(0)=0, a(1)=3, a(2)=-1, a(3)=-1, a(4)=1, a(5)=1`
-/

namespace A047878.P15145640673264217724
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 3, -1, -1, 1, 1] fun n f1 =>
  1 / f1 (n - 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047878.P15145640673264217724

namespace A047878

/-- `∑[1/a(n-3)]` -/
def P15145640673264217724.Spec : Prop :=
  ∀ n, P15145640673264217724.a n = (A047878 n : ℚ)

end A047878

/-! ## A047878.P11342728658025543165

`∑[a(n-3)^3]` with `a(0)=0, a(1)=3, a(2)=-1, a(3)=-1, a(4)=1, a(5)=1`
-/

namespace A047878.P11342728658025543165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, -1, -1, 1, 1] fun n f1 =>
  f1 (n - 3) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047878.P11342728658025543165

namespace A047878

/-- `∑[a(n-3)^3]` -/
def P11342728658025543165.Spec : Prop :=
  ∀ n, P11342728658025543165.a n = A047878 n

end A047878

/-! ## A047878.P16250509334424591761

`A008611(4*char[1]+n+1)`
-/

namespace A047878.P16250509334424591761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (4 * (if ∃ j, f1 j = n then 1 else 0) + (n + 1))

end

end A047878.P16250509334424591761

namespace A047878

/-- `A008611(4*char[1]+n+1)` -/
def P16250509334424591761.Spec : Prop :=
  ∀ n, P16250509334424591761.a n = A047878 n

end A047878

/-! ## A047878.P14275426210771226520

`lcm(C(2, n)+1, A008611(n+1))`
-/

namespace A047878.P14275426210771226520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.choose 2 n + 1 : ℤ) (A008611 (n + 1))

end

end A047878.P14275426210771226520

namespace A047878

/-- `lcm(C(2, n)+1, A008611(n+1))` -/
def P14275426210771226520.Spec : Prop :=
  ∀ n, (P14275426210771226520.a n : ℤ) = A047878 n

end A047878

/-! ## A047878.P9834294417744525270

`xor(A064911(2*(n+1))+A008611(n+1), A064911(2*(n+1)))`
-/

namespace A047878.P9834294417744525270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A064911 (2 * (n + 1)) + A008611 (n + 1)) (A064911 (2 * (n + 1)))

end

end A047878.P9834294417744525270

namespace A047878

/-- `xor(A064911(2*(n+1))+A008611(n+1), A064911(2*(n+1)))` -/
def P9834294417744525270.Spec : Prop :=
  ∀ n, P9834294417744525270.a n = A047878 n

end A047878

/-! ## A047878.P16219648988102298253

`A008612((2*(n+1))^(char[1]+1))`
-/

namespace A047878.P16219648988102298253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 ((2 * (n + 1)) ^ ((if ∃ j, f1 j = n then 1 else 0) + 1))

end

end A047878.P16219648988102298253

namespace A047878

/-- `A008612((2*(n+1))^(char[1]+1))` -/
def P16219648988102298253.Spec : Prop :=
  ∀ n, P16219648988102298253.a n = A047878 n

end A047878

/-! ## A047878.P4317766377342146447

`A183043(A165157(n))`
-/

namespace A047878.P4317766377342146447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183043 (A165157 n).toNat

end

end A047878.P4317766377342146447

namespace A047878

/-- `A183043(A165157(n))` -/
def P4317766377342146447.Spec : Prop :=
  ∀ n, P4317766377342146447.a n = A047878 n

end A047878

/-! ## A047878.P6894915902836014896

`A049604(A118000(n))`
-/

namespace A047878.P6894915902836014896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049604 (A118000 n).toNat

end

end A047878.P6894915902836014896

namespace A047878

/-- `A049604(A118000(n))` -/
def P6894915902836014896.Spec : Prop :=
  ∀ n, P6894915902836014896.a n = A047878 n

end A047878

/-! ## A047878.P17380060305618941509

`A065775(A171452(n+1))`
-/

namespace A047878.P17380060305618941509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065775 (A171452 (n + 1)).toNat

end

end A047878.P17380060305618941509

namespace A047878

/-- `A065775(A171452(n+1))` -/
def P17380060305618941509.Spec : Prop :=
  ∀ n, P17380060305618941509.a n = A047878 n

end A047878

/-! ## A047878.P13265823741572121597

`A049604(A389142(n+1))`
-/

namespace A047878.P13265823741572121597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049604 (A389142 (n + 1)).toNat

end

end A047878.P13265823741572121597

namespace A047878

/-- `A049604(A389142(n+1))` -/
def P13265823741572121597.Spec : Prop :=
  ∀ n, P13265823741572121597.a n = A047878 n

end A047878

/-! ## A047878.P4438964539982647542

`A049604(A083219((n+1)²)%(n+1)²)`
-/

namespace A047878.P4438964539982647542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049604 (Int.tmod (A083219 ((n + 1) ^ 2)) ((n + 1) ^ 2 : ℤ)).toNat

end

end A047878.P4438964539982647542

namespace A047878

/-- `A049604(A083219((n+1)²)%(n+1)²)` -/
def P4438964539982647542.Spec : Prop :=
  ∀ n, P4438964539982647542.a n = A047878 n

end A047878

/-! ## A047878.P13951984342664048841

`A065775(A004442(A187180((n+1)²)))`
-/

namespace A047878.P13951984342664048841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065775 (A004442 (A187180 ((n + 1) ^ 2)).toNat).toNat

end

end A047878.P13951984342664048841

namespace A047878

/-- `A065775(A004442(A187180((n+1)²)))` -/
def P13951984342664048841.Spec : Prop :=
  ∀ n, P13951984342664048841.a n = A047878 n

end A047878

/-!
# A047879: a(n)=Sum{T(n,i): i=0,1,...,n}+Sum{T(i,n): i=0,1,...,n-1}, array T counting least number of knight's moves as in A049604.

The programs for A047879, there is no canonical definition to state claims against.
-/

/-! ## A047879.P17587716378766517074

`2*A047880(n)`
-/

namespace A047879.P17587716378766517074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047880 n

end

end A047879.P17587716378766517074

/-! ## A047879.P6334752867884555840

`Δ[A047881(A028310(n)-1)]`
-/

namespace A047879.P6334752867884555840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047881 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047879.P6334752867884555840

/-! ## A047879.P3468686289527108727

`A047880(n)+A047880(A254667(n))`
-/

namespace A047879.P3468686289527108727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047880 n + A047880 (A254667 n).toNat

end

end A047879.P3468686289527108727

/-! ## A047879.P11638084644362068657

`A047880(A023443(n+1))+A047880(n)`
-/

namespace A047879.P11638084644362068657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047880 (A023443 (n + 1)).toNat + A047880 n

end

end A047879.P11638084644362068657

/-! ## A047879.P14776617188058493837

`A047881(n)-A047881(A028310(n)-1)`
-/

namespace A047879.P14776617188058493837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047881 n - A047881 (A028310 n - 1).toNat

end

end A047879.P14776617188058493837

/-! ## A047879.P12951117097136022657

`A047880(A005843(n)/2)+A047880(n)`
-/

namespace A047879.P12951117097136022657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047880 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A047880 n

end

end A047879.P12951117097136022657

/-! ## A047879.P16463285036513484713

`A047881(n)-A047881(log2(A011782(n)))`
-/

namespace A047879.P16463285036513484713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047881 n - A047881 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A047879.P16463285036513484713

/-! ## A047879.P10611795747911579772

`Δ[A047881(log2(A011782(n)))]`
-/

namespace A047879.P10611795747911579772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047881 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047879.P10611795747911579772

/-! ## A047879.P8162302118026120817

`A005843(A047880(n))`
-/

namespace A047879.P8162302118026120817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A047880 n).toNat

end

end A047879.P8162302118026120817

/-! ## A047879.P9341984228506599026

`A004273(A047880(n)+1)-1`
-/

namespace A047879.P9341984228506599026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A047880 n + 1).toNat - 1

end

end A047879.P9341984228506599026

/-! ## A047879.P527841356289510196

`A215415(ceil(1/(n+1)))+A005408(A047880(n))`
-/

namespace A047879.P527841356289510196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215415 ⌈1 / (n + 1 : ℚ)⌉.toNat + A005408 (A047880 n).toNat

end

end A047879.P527841356289510196

/-! ## A047879.P13326679018309783199

`A004273(A047880(n))+Δ[A005563(n)]%(n+1)`
-/

namespace A047879.P13326679018309783199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A047880 n).toNat + Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A047879.P13326679018309783199

/-! ## A047879.P253822815273183614

`A047880(n)+A047880(n)%A047900(n+1)`
-/

namespace A047879.P253822815273183614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047880 n + Int.tmod (A047880 n) (A047900 (n + 1))

end

end A047879.P253822815273183614

/-!
# A047880: a(n) = A047879(n) / 2.

The programs for A047880, there is no canonical definition to state claims against.
-/

/-! ## A047880.P4693901538861083972

`A047879(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A047880.P4693901538861083972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047879 n : ℚ) / 2

end

end A047880.P4693901538861083972

/-! ## A047880.P5874682982233316123

`Δ[A047882(A004273(n)-n)]`
-/

namespace A047880.P5874682982233316123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047882 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047880.P5874682982233316123

/-! ## A047880.P9666872962515402498

`Δ[A047881(A028310(n)-1)/2]`
-/

namespace A047880.P9666872962515402498
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047881 (A028310 n - 1).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047880.P9666872962515402498

/-! ## A047880.P2854807005185822750

`A047882(n)-A047882((2*n)%(n+1))`
-/

namespace A047880.P2854807005185822750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047882 n - A047882 (2 * n % (n + 1))

end

end A047880.P2854807005185822750

/-! ## A047880.P6619350454790884247

`A047882(n)-A047882(A004273(n)-n)`
-/

namespace A047880.P6619350454790884247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047882 n - A047882 (A004273 n - (n : ℤ)).toNat

end

end A047880.P6619350454790884247

/-! ## A047880.P4695217318932803757

`Δ[A047881(log2(A011782(n)))/2]`
-/

namespace A047880.P4695217318932803757
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047881 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047880.P4695217318932803757

/-! ## A047880.P8662713632886600923

`A273943(A047879(n))`
-/

namespace A047880.P8662713632886600923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A047879 n).toNat

end

end A047880.P8662713632886600923

/-! ## A047880.P13071461396039600797

`A014682(A047879(n)+2)-1`
-/

namespace A047880.P13071461396039600797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A047879 n + 2).toNat - 1

end

end A047880.P13071461396039600797

/-! ## A047880.P9993057888528718322

`A014682(2*A047879(n)-A047879(n))`
-/

namespace A047880.P9993057888528718322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * A047879 n - A047879 n).toNat

end

end A047880.P9993057888528718322

/-! ## A047880.P16508802253542929356

`A175126(A047879(n)+2)-1`
-/

namespace A047880.P16508802253542929356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A047879 n + 2).toNat - 1

end

end A047880.P16508802253542929356

/-! ## A047880.P1621738569306913255

`A175126(xor(1, A047879(n)+1))`
-/

namespace A047880.P1621738569306913255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (Int.xor 1 (A047879 n + 1)).toNat

end

end A047880.P1621738569306913255

/-! ## A047880.P8849961040200980992

`A175126(xor(1, A047879(n))-1)`
-/

namespace A047880.P8849961040200980992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (Int.xor 1 (A047879 n) - 1).toNat

end

end A047880.P8849961040200980992

/-! ## A047880.P4686627349027935522

`A175126(xor(1, xor(1, A047879(n))))`
-/

namespace A047880.P4686627349027935522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (Int.xor 1 (Int.xor 1 (A047879 n))).toNat

end

end A047880.P4686627349027935522

/-! ## A047880.P12589377599592616915

`A175126(A047879(n)+A000007(n))`
-/

namespace A047880.P12589377599592616915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A047879 n + A000007 n).toNat

end

end A047880.P12589377599592616915

/-! ## A047880.P4904535911486147881

`A175126(xor(A000007(n), A047879(n)))`
-/

namespace A047880.P4904535911486147881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (Int.xor (A000007 n) (A047879 n)).toNat

end

end A047880.P4904535911486147881

/-! ## A047880.P4234514415095320493

`A175126((1-A000007(n))*A047879(n))`
-/

namespace A047880.P4234514415095320493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 ((1 - A000007 n) * A047879 n).toNat

end

end A047880.P4234514415095320493

/-! ## A047880.P18009923105436514403

`A175126(2*A047879(n)-A047879(n))`
-/

namespace A047880.P18009923105436514403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (2 * A047879 n - A047879 n).toNat

end

end A047880.P18009923105436514403

/-!
# A047881: a(n) = Sum_{h=0..n, k=0..n} T(h,k), array T counting knights' moves as in A049604.

The programs for A047881, there is no canonical definition to state claims against.
-/

/-! ## A047881.P647262591204431096

`∑[A047879(n)]`
-/

namespace A047881.P647262591204431096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047881.P647262591204431096

/-! ## A047881.P4422165689277997378

`2*A047882(n)`
-/

namespace A047881.P4422165689277997378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047882 n

end

end A047881.P4422165689277997378

/-! ## A047881.P13326210513534770219

`∑[2*A047880(n)]`
-/

namespace A047881.P13326210513534770219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047881.P13326210513534770219

/-! ## A047881.P10752234127503966974

`A047882(n)+∑[A047880(n)]`
-/

namespace A047881.P10752234127503966974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047882 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047881.P10752234127503966974

/-! ## A047881.P10265437515697488574

`A047882(A005843(n)/2)+A047882(n)`
-/

namespace A047881.P10265437515697488574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047882 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A047882 n

end

end A047881.P10265437515697488574

/-! ## A047881.P16437459721103622512

`A047882(A005843(n)-n)+A047882(n)`
-/

namespace A047881.P16437459721103622512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047882 (A005843 n - (n : ℤ)).toNat + A047882 n

end

end A047881.P16437459721103622512

/-! ## A047881.P15766207441833564603

`A047882(n)+A047882(n)%A079910(n)`
-/

namespace A047881.P15766207441833564603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047882 n + Int.tmod (A047882 n) (A079910 n)

end

end A047881.P15766207441833564603

/-! ## A047881.P16432590454975102806

`A047882(n+1)+A047882(n)-A047880(n+1)`
-/

namespace A047881.P16432590454975102806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047882 (n + 1) + (A047882 n - A047880 (n + 1))

end

end A047881.P16432590454975102806

/-! ## A047881.P10013235349227614345

`A047882(n+1)+A047882(n+1)-A047879(n+1)`
-/

namespace A047881.P10013235349227614345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047882 (n + 1) + (A047882 (n + 1) - A047879 (n + 1))

end

end A047881.P10013235349227614345

/-! ## A047881.P9157937980872279182

`∑[A005843(A047880(n))]`
-/

namespace A047881.P9157937980872279182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A047880 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047881.P9157937980872279182

/-!
# A047882: a(n) = A047881(n) / 2.

The programs for A047882, there is no canonical definition to state claims against.
-/

/-! ## A047882.P2941372364781327093

`A047881(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A047882.P2941372364781327093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047881 n : ℚ) / 2

end

end A047882.P2941372364781327093

/-! ## A047882.P1579896032804843001

`∑[A047880(n)]`
-/

namespace A047882.P1579896032804843001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047882.P1579896032804843001

/-! ## A047882.P14064066858914699780

`∑[A047879(n)/2]`
-/

namespace A047882.P14064066858914699780
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047879 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047882.P14064066858914699780

/-! ## A047882.P1712350827119711172

`A047880(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A047882.P1712350827119711172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A047880 n + a (A023443 n).toNat

end

end A047882.P1712350827119711172

/-! ## A047882.P9344690495880455286

`∑[A014682(A047879(n))]`
-/

namespace A047882.P9344690495880455286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A047879 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047882.P9344690495880455286

/-! ## A047882.P2124705967806188343

`∑[A175126(A047879(n)+A000007(n))]`
-/

namespace A047882.P2124705967806188343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A047879 n + A000007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047882.P2124705967806188343

/-! ## A047882.P15002349063150554968

`∑[A175126(xor(A000007(n), A047879(n)))]`
-/

namespace A047882.P15002349063150554968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (Int.xor (A000007 n) (A047879 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047882.P15002349063150554968

/-! ## A047882.P15979484020608837452

`∑[A025480(lcm(2, A047879(n)))]`
-/

namespace A047882.P15979484020608837452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.lcm 2 (A047879 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047882.P15979484020608837452

/-! ## A047882.P12535825068397772771

`∑[A001281(A047879(n)+2)-1]`
-/

namespace A047882.P12535825068397772771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A047879 n + 2).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047882.P12535825068397772771

/-! ## A047882.P13498409275103036489

`A014682(A047881(n))`
-/

namespace A047882.P13498409275103036489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A047881 n).toNat

end

end A047882.P13498409275103036489

/-!
# A047883: Squares on unbounded chessboard for which the least number of knight's moves from corner (0,0) is n.

The programs for A047883, the canonical program `A047883.P8035612980348880516` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047883 has offset 0).

The definition of A047883 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047883.P8035612980348880516

`7+a(n-1)` with `a(0)=0, a(1)=2, a(2)=9, a(3)=20, a(4)=27, a(5)=32`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047883

/-- `7+a(n-1)` -/
def P8035612980348880516.Spec : Prop :=
  ∀ n, (P8035612980348880516.a n : ℤ) = A047883 n

theorem P8035612980348880516.correct : P8035612980348880516.Spec := by
  intro n
  simp only [A047883]

end A047883

/-!
# A047884: Triangle of numbers a(n,k) = number of Young tableaux with n cells and k rows (1 <= k <= n); also number of self-inverse permutations on n letters in which the length of the longest scattered (i.e., not necessarily contiguous) increasing subsequence is k.

The programs for A047884, there is no canonical definition to state claims against.
-/

/-! ## A047884.P12595619461446263095

`A291883(comp[∑[n]]%A128875(n))`
-/

namespace A047884.P12595619461446263095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A128875 n)).toNat

end

end A047884.P12595619461446263095

/-! ## A047884.P370561912363261449

`A291883(eq[A010054(n), A034529(n+1)])`
-/

namespace A047884.P370561912363261449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A047884.P370561912363261449

/-! ## A047884.P12594070031781475140

`A291883(A014132(n+1)%∑[A128875(n)])`
-/

namespace A047884.P12594070031781475140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (Int.tmod (A014132 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A047884.P12594070031781475140

/-! ## A047884.P4503603048045786902

`A291883(∑[A035214(n)]%A117781(n+1))`
-/

namespace A047884.P4503603048045786902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A117781 (n + 1))).toNat

end

end A047884.P4503603048045786902

/-! ## A047884.P9845825535994069818

`A291883(A014132(n+1))%A356939(3*n+5)`
-/

namespace A047884.P9845825535994069818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291883 (A014132 (n + 1)).toNat) (A356939 (3 * n + 5))

end

end A047884.P9845825535994069818

/-!
# A047885: Array a(m,n) = pi(m+n) - pi(m) - pi(n) read by antidiagonals, where pi() = A000720 (m,n >= 0).

The programs for A047885, the canonical program `A047885.P10276378217643726378` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047885 has offset 0).

The definition of A047885 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047885.P9201338739204088950

`A132896(n)-A001222(A172985(n))`
-/

namespace A047885.P9201338739204088950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 n - A001222 (A172985 n).toNat

end

end A047885.P9201338739204088950

namespace A047885

/-- `A132896(n)-A001222(A172985(n))` -/
def P9201338739204088950.Spec : Prop :=
  ∀ n, P9201338739204088950.a n = A047885 n

end A047885

/-! ## A047885.P10276378217643726378

`A001222(A007318(n))-A001222(A172985(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A047885

/-- `A001222(A007318(n))-A001222(A172985(n))` -/
def P10276378217643726378.Spec : Prop :=
  ∀ n, P10276378217643726378.a n = A047885 n

theorem P10276378217643726378.correct : P10276378217643726378.Spec := by
  intro n
  simp only [A047885]

end A047885

/-! ## A047885.P10720567060275261934

`A132896(abs(1-n)+1)-A196067(A172985(n))`
-/

namespace A047885.P10720567060275261934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (|1 - (n : ℤ)| + 1).toNat - A196067 (A172985 n).toNat

end

end A047885.P10720567060275261934

namespace A047885

/-- `A132896(abs(1-n)+1)-A196067(A172985(n))` -/
def P10720567060275261934.Spec : Prop :=
  ∀ n, P10720567060275261934.a n = A047885 n

end A047885

/-! ## A047885.P10528641922847385223

`1-A322452(A022166(n))`
-/

namespace A047885.P10528641922847385223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A322452 (A022166 n).toNat

end

end A047885.P10528641922847385223

namespace A047885

/-- `1-A322452(A022166(n))` -/
def P10528641922847385223.Spec : Prop :=
  ∀ n, P10528641922847385223.a n = A047885 n

end A047885

/-! ## A047885.P18201355901110351890

`A302777(A359985(n))-A324870(n+1)`
-/

namespace A047885.P18201355901110351890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302777 (A359985 n).toNat - A324870 (n + 1)

end

end A047885.P18201355901110351890

namespace A047885

/-- `A302777(A359985(n))-A324870(n+1)` -/
def P18201355901110351890.Spec : Prop :=
  ∀ n, P18201355901110351890.a n = A047885 n

end A047885

/-!
# A047886: Triangle read by rows: T(n,k) = pi(n+k) - pi(n) - pi(k), where pi() = A000720 (n >= 0, 0 <= k <= n).

The programs for A047886, the canonical program `A047886.P421857014311615150` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047886 has offset 0).

The definition of A047886 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2626 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047886.P421857014311615150

`A047885(A245300(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A047886

/-- `A047885(A245300(n))` -/
def P421857014311615150.Spec : Prop :=
  ∀ n, P421857014311615150.a n = A047886 n

theorem P421857014311615150.correct : P421857014311615150.Spec := by
  intro n
  simp only [A047886]

end A047886

/-! ## A047886.P5690557184036303558

`A047885(A264975(2*n+3))^A283958(n+1)`
-/

namespace A047886.P5690557184036303558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047885 (A264975 (2 * n + 3)).toNat : ℚ) ^ (A283958 (n + 1) : ℤ)

end

end A047886.P5690557184036303558

namespace A047886

/-- `A047885(A264975(2*n+3))^A283958(n+1)` -/
def P5690557184036303558.Spec : Prop :=
  ∀ n, P5690557184036303558.a n = (A047886 n : ℚ)

end A047886

/-! ## A047886.P14680484192865000458

`A008683(∑{d}[Δ[A165607(3*n+1)], #])`
-/

namespace A047886.P14680484192865000458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165607 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A047886.P14680484192865000458

namespace A047886

/-- `A008683(∑{d}[Δ[A165607(3*n+1)], #])` -/
def P14680484192865000458.Spec : Prop :=
  ∀ n, P14680484192865000458.a n = A047886 n

end A047886

/-! ## A047886.P3762220293676621858

`A262693(A001405(n))-∑{digits}[n, and(8, #)/8]`
-/

namespace A047886.P3762220293676621858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262693 (A001405 n).toNat : ℚ) - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (Nat.land 8 x : ℚ) / 8).sum

end

end A047886.P3762220293676621858

namespace A047886

/-- `A262693(A001405(n))-∑{digits}[n, and(8, #)/8]` -/
def P3762220293676621858.Spec : Prop :=
  ∀ n, P3762220293676621858.a n = (A047886 n : ℚ)

end A047886

/-! ## A047886.P16263230370912369662

`A101455(A002262(n)*A081577(3*(n+1)))`
-/

namespace A047886.P16263230370912369662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (A002262 n * A081577 (3 * (n + 1))).toNat

end

end A047886.P16263230370912369662

namespace A047886

/-- `A101455(A002262(n)*A081577(3*(n+1)))` -/
def P16263230370912369662.Spec : Prop :=
  ∀ n, P16263230370912369662.a n = A047886 n

end A047886

/-!
# A047887: Triangle of numbers T(n,k) = number of permutations of n things with longest increasing subsequence of length <=k (1<=k<=n).

The programs for A047887, there is no canonical definition to state claims against.
-/

/-! ## A047887.P8639121827971182364

`A047888(A245300(n)+1)`
-/

namespace A047887.P8639121827971182364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047888 (A245300 n + 1).toNat

end

end A047887.P8639121827971182364

/-! ## A047887.P230625062586444420

`A047888(floor(A214661(n+1)/2)+1)`
-/

namespace A047887.P230625062586444420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047888 (⌊(A214661 (n + 1) : ℚ) / 2⌋ + 1).toNat

end

end A047887.P230625062586444420

/-!
# A047888: Rectangular array of numbers a(n,k) = number of permutations of n things with longest increasing subsequence of length <= k (1 <= k <= oo), read by antidiagonals.

The programs for A047888, there is no canonical definition to state claims against.
-/

/-! ## A047888.P15643232198672927994

`A214015(A140978(n+1)-n)`
-/

namespace A047888.P15643232198672927994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 (A140978 (n + 1) - (n : ℤ)).toNat

end

end A047888.P15643232198672927994

/-! ## A047888.P6662977138346843826

`A214015(A003057(n+2)²-n)`
-/

namespace A047888.P6662977138346843826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 (A003057 (n + 2) ^ 2 - (n : ℤ)).toNat

end

end A047888.P6662977138346843826

/-! ## A047888.P15077112534886663857

`A214015((A002024(n+1)+1)²-n)`
-/

namespace A047888.P15077112534886663857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 ((A002024 (n + 1) + 1) ^ 2 - (n : ℤ)).toNat

end

end A047888.P15077112534886663857

/-! ## A047888.P11442661084423125553

`A263791(A038722(n+1))+A179527(A000032(n+1))`
-/

namespace A047888.P11442661084423125553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263791 (A038722 (n + 1)).toNat + A179527 (A000032 (n + 1)).toNat

end

end A047888.P11442661084423125553

/-! ## A047888.P13940807698637350423

`A001221(A299905(n)!)+A000108(A193592(n))`
-/

namespace A047888.P13940807698637350423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A299905 n).toNat) + A000108 (A193592 n).toNat

end

end A047888.P13940807698637350423

/-!
# A047889: Number of permutations in S_n with longest increasing subsequence of length <= 4.

The programs for A047889, there is no canonical definition to state claims against.
-/

/-! ## A047889.P5151221458409785215

`A047888(∑[n+2]+5)`
-/

namespace A047889.P5151221458409785215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047888 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A047889.P5151221458409785215

/-! ## A047889.P5350735518323569310

`A214015(A052905(n+2))`
-/

namespace A047889.P5350735518323569310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 (A052905 (n + 2)).toNat

end

end A047889.P5350735518323569310

/-! ## A047889.P6315627016354758560

`A214015(eq[3, A129713(n)])`
-/

namespace A047889.P6315627016354758560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047889.P6315627016354758560

/-! ## A047889.P5393761895471025044

`A214015(eq[4, A025581(n)])`
-/

namespace A047889.P5393761895471025044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047889.P5393761895471025044

/-! ## A047889.P15115691847059902842

`A214015(eq[5, A193739(n)])`
-/

namespace A047889.P15115691847059902842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047889.P15115691847059902842

/-! ## A047889.P8440584484551365450

`A214015(eq[6, A268820(n)])`
-/

namespace A047889.P8440584484551365450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047889.P8440584484551365450

/-! ## A047889.P2473283452318650691

`A214015(eq[9, A099375(n)])`
-/

namespace A047889.P2473283452318650691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047889.P2473283452318650691

/-! ## A047889.P364274730493881650

`A214015(A155212(n+1)+3)`
-/

namespace A047889.P364274730493881650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 (A155212 (n + 1) + 3).toNat

end

end A047889.P364274730493881650

/-! ## A047889.P541825873704981012

`A214015(eq[4, A144257(n+1)])`
-/

namespace A047889.P541825873704981012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047889.P541825873704981012

/-! ## A047889.P5835184573051135119

`A214015(eq[5, A004736(n+1)])`
-/

namespace A047889.P5835184573051135119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047889.P5835184573051135119

/-!
# A047890: Number of permutations in S_n with longest increasing subsequence of length <= 5.

The programs for A047890, there is no canonical definition to state claims against.
-/

/-! ## A047890.P17676827317341439731

`A047888(A000124(n+4)-n)`
-/

namespace A047890.P17676827317341439731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047888 (A000124 (n + 4) - (n : ℤ)).toNat

end

end A047890.P17676827317341439731

/-! ## A047890.P14400517218203458210

`A214015(eq[6, A193739(n)])`
-/

namespace A047890.P14400517218203458210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047890.P14400517218203458210

/-! ## A047890.P13602165903284271318

`A214015(eq[6, A004736(n+1)])`
-/

namespace A047890.P13602165903284271318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047890.P13602165903284271318

/-! ## A047890.P15892909121130472122

`A214015(eq[7, A027293(n+1)])`
-/

namespace A047890.P15892909121130472122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047890.P15892909121130472122

/-! ## A047890.P14679104155434469825

`A214015(A000217(n+5)+n)`
-/

namespace A047890.P14679104155434469825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 (A000217 (n + 5) + (n : ℤ)).toNat

end

end A047890.P14679104155434469825

/-!
# A047891: Number of planar rooted trees with n nodes and tricolored end nodes.

The programs for A047891, the canonical program `A047891.P14086594360894327528` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047891 has offset 1).

The definition of A047891 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047891.P13355904828452080191

`A133366(∑[n])`
-/

namespace A047891.P13355904828452080191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133366 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047891.P13355904828452080191

namespace A047891

/-- `A133366(∑[n])` -/
def P13355904828452080191.Spec : Prop :=
  ∀ n, P13355904828452080191.a n = A047891 (n + 1)

end A047891

/-! ## A047891.P12202068971790858375

`A025231(n+1)-A000007(n)`
-/

namespace A047891.P12202068971790858375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025231 (n + 1) - A000007 n

end

end A047891.P12202068971790858375

namespace A047891

/-- `A025231(n+1)-A000007(n)` -/
def P12202068971790858375.Spec : Prop :=
  ∀ n, P12202068971790858375.a n = A047891 (n + 1)

end A047891

/-! ## A047891.P3414147810693017547

`A025231(n+1)-A000038(n)/2`
-/

namespace A047891.P3414147810693017547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025231 (n + 1) : ℚ) - (A000038 n : ℚ) / 2

end

end A047891.P3414147810693017547

namespace A047891

/-- `A025231(n+1)-A000038(n)/2` -/
def P3414147810693017547.Spec : Prop :=
  ∀ n, P3414147810693017547.a n = (A047891 (n + 1) : ℚ)

end A047891

/-! ## A047891.P16576843083674920697

`A025231(n+1)+n-A028310(n)`
-/

namespace A047891.P16576843083674920697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025231 (n + 1) + ((n : ℤ) - A028310 n)

end

end A047891.P16576843083674920697

namespace A047891

/-- `A025231(n+1)+n-A028310(n)` -/
def P16576843083674920697.Spec : Prop :=
  ∀ n, P16576843083674920697.a n = A047891 (n + 1)

end A047891

/-! ## A047891.P15274091571210128307

`A025231(A028310(n)+1)-A000038(n)`
-/

namespace A047891.P15274091571210128307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025231 (A028310 n + 1).toNat - A000038 n

end

end A047891.P15274091571210128307

namespace A047891

/-- `A025231(A028310(n)+1)-A000038(n)` -/
def P15274091571210128307.Spec : Prop :=
  ∀ n, P15274091571210128307.a n = A047891 (n + 1)

end A047891

/-! ## A047891.P8746520055670028571

`A025231(n+1)-A084680(A008574(n))`
-/

namespace A047891.P8746520055670028571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025231 (n + 1) - A084680 (A008574 n).toNat

end

end A047891.P8746520055670028571

namespace A047891

/-- `A025231(n+1)-A084680(A008574(n))` -/
def P8746520055670028571.Spec : Prop :=
  ∀ n, P8746520055670028571.a n = A047891 (n + 1)

end A047891

/-! ## A047891.P14553575051241561090

`A025231(n+1)-A208575(A028956(n))`
-/

namespace A047891.P14553575051241561090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025231 (n + 1) - A208575 (A028956 n).toNat

end

end A047891.P14553575051241561090

namespace A047891

/-- `A025231(n+1)-A208575(A028956(n))` -/
def P14553575051241561090.Spec : Prop :=
  ∀ n, P14553575051241561090.a n = A047891 (n + 1)

end A047891

/-! ## A047891.P6318411455644575918

`A025231(n+1)-A339431(A004016(n))`
-/

namespace A047891.P6318411455644575918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025231 (n + 1) - A339431 (A004016 n).toNat

end

end A047891.P6318411455644575918

namespace A047891

/-- `A025231(n+1)-A339431(A004016(n))` -/
def P6318411455644575918.Spec : Prop :=
  ∀ n, P6318411455644575918.a n = A047891 (n + 1)

end A047891

/-! ## A047891.P4217568878458672087

`A025231(n+1)/A000034(A008458(n))`
-/

namespace A047891.P4217568878458672087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025231 (n + 1) : ℚ) / (A000034 (A008458 n).toNat : ℚ)

end

end A047891.P4217568878458672087

namespace A047891

/-- `A025231(n+1)/A000034(A008458(n))` -/
def P4217568878458672087.Spec : Prop :=
  ∀ n, P4217568878458672087.a n = (A047891 (n + 1) : ℚ)

end A047891

/-! ## A047891.P9733592138942287195

`A025231(n+1)^A019425(A005843(n))`
-/

namespace A047891.P9733592138942287195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025231 (n + 1) : ℚ) ^ (A019425 (A005843 n).toNat : ℤ)

end

end A047891.P9733592138942287195

namespace A047891

/-- `A025231(n+1)^A019425(A005843(n))` -/
def P9733592138942287195.Spec : Prop :=
  ∀ n, P9733592138942287195.a n = (A047891 (n + 1) : ℚ)

end A047891

/-! ## A047891.P17440656805312392940

`A025231(n+1)^A019425(A008586(n))`
-/

namespace A047891.P17440656805312392940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025231 (n + 1) : ℚ) ^ (A019425 (A008586 n).toNat : ℤ)

end

end A047891.P17440656805312392940

namespace A047891

/-- `A025231(n+1)^A019425(A008586(n))` -/
def P17440656805312392940.Spec : Prop :=
  ∀ n, P17440656805312392940.a n = (A047891 (n + 1) : ℚ)

end A047891

/-! ## A047891.P907982833425621865

`A025231(n+1)^A019425(A019425(n))`
-/

namespace A047891.P907982833425621865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025231 (n + 1) : ℚ) ^ (A019425 (A019425 n).toNat : ℤ)

end

end A047891.P907982833425621865

namespace A047891

/-- `A025231(n+1)^A019425(A019425(n))` -/
def P907982833425621865.Spec : Prop :=
  ∀ n, P907982833425621865.a n = (A047891 (n + 1) : ℚ)

end A047891

/-! ## A047891.P14086594360894327528

`A054872(n+2)/2`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A047891

/-- `A054872(n+2)/2` -/
def P14086594360894327528.Spec : Prop :=
  ∀ n, P14086594360894327528.a n = (A047891 (n + 1) : ℚ)

end A047891

/-! ## A047891.P13561994816886183755

`A121576(∑[n+1])/2`
-/

namespace A047891.P13561994816886183755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121576 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A047891.P13561994816886183755

namespace A047891

/-- `A121576(∑[n+1])/2` -/
def P13561994816886183755.Spec : Prop :=
  ∀ n, P13561994816886183755.a n = (A047891 (n + 1) : ℚ)

end A047891

/-! ## A047891.P12987590224549085884

`A025231(n+1)-A028956(n²)`
-/

namespace A047891.P12987590224549085884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025231 (n + 1) - A028956 (n ^ 2)

end

end A047891.P12987590224549085884

namespace A047891

/-- `A025231(n+1)-A028956(n²)` -/
def P12987590224549085884.Spec : Prop :=
  ∀ n, P12987590224549085884.a n = A047891 (n + 1)

end A047891

/-!
# A047892: a(1) = 2; for n > 0, a(n+1) = a(n) * sum of digits of a(n).

The programs for A047892, there is no canonical definition to state claims against.
-/

/-! ## A047892.P84272604799041832

`∏[A162251(n+1)]`
-/

namespace A047892.P84272604799041832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A047892.P84272604799041832

/-! ## A047892.P13974834365649725955

`A057147(a(n-1))` with `a(0)=2`
-/

namespace A047892.P13974834365649725955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A057147 (a (n - 1)).toNat

end

end A047892.P13974834365649725955

/-! ## A047892.P5933889591537139394

`A160942(a(n-1))+a(n-1)` with `a(0)=2`
-/

namespace A047892.P5933889591537139394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A160942 (a (n - 1)).toNat + a (n - 1)

end

end A047892.P5933889591537139394

/-!
# A047893: Number of decimal digits of Euler (Zig) numbers A000364.

The programs for A047893, there is no canonical definition to state claims against.
-/

/-! ## A047893.P18281660795581561057

`A047895(n+1)+A047894(n+1)`
-/

namespace A047893.P18281660795581561057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047895 (n + 1) + A047894 (n + 1)

end

end A047893.P18281660795581561057

/-! ## A047893.P5185529049125920825

`A217467(A130243(n+1)*A156320(n+1))`
-/

namespace A047893.P5185529049125920825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217467 (A130243 (n + 1) * A156320 (n + 1)).toNat

end

end A047893.P5185529049125920825

/-! ## A047893.P15078668736263567715

`A394247(A006484(n+1))`
-/

namespace A047893.P15078668736263567715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394247 (A006484 (n + 1)).toNat

end

end A047893.P15078668736263567715

/-! ## A047893.P530688490716156427

`A217467(A098058(n+1)*A130243(n+1))`
-/

namespace A047893.P530688490716156427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217467 (A098058 (n + 1) * A130243 (n + 1)).toNat

end

end A047893.P530688490716156427

/-! ## A047893.P8927341985587041565

`A008619(A130248(n+1)%A362851(2*n+5))`
-/

namespace A047893.P8927341985587041565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.tmod (A130248 (n + 1)) (A362851 (2 * n + 5))).toNat

end

end A047893.P8927341985587041565

/-!
# A047894: Number of digits of A000182(n).

The programs for A047894, there is no canonical definition to state claims against.
-/

/-! ## A047894.P6829317872179483111

`A047893(n+1)-A047895(n+1)`
-/

namespace A047894.P6829317872179483111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047893 (n + 1) - A047895 (n + 1)

end

end A047894.P6829317872179483111

/-! ## A047894.P14365102709915071985

`A213857(n+1)-A359152(A104449(n+2))`
-/

namespace A047894.P14365102709915071985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213857 (n + 1) - A359152 (A104449 (n + 2)).toNat

end

end A047894.P14365102709915071985

/-! ## A047894.P4910525431229172701

`A213857(n+1)+A121373(A160725(n+4))`
-/

namespace A047894.P4910525431229172701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213857 (n + 1) + A121373 (A160725 (n + 4)).toNat

end

end A047894.P4910525431229172701

/-! ## A047894.P881976388286491585

`A276611(A047808(C(n, 2)))`
-/

namespace A047894.P881976388286491585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A047808 (Nat.choose n 2)).toNat

end

end A047894.P881976388286491585

/-! ## A047894.P4531583830599556717

`A213857(n+1)-A302048(A001383(n))`
-/

namespace A047894.P4531583830599556717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213857 (n + 1) - A302048 (A001383 n).toNat

end

end A047894.P4531583830599556717

/-!
# A047895: Difference of decimal orders of Euler and Tangential numbers: deviations of Zigs and Zags.

The programs for A047895, there is no canonical definition to state claims against.
-/

/-! ## A047895.P12655385966151442805

`A047893(n+1)-A047894(n+1)`
-/

namespace A047895.P12655385966151442805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047893 (n + 1) - A047894 (n + 1)

end

end A047895.P12655385966151442805

/-!
# A047897: a(1) = 5; for n > 0, a(n+1) = a(n) * sum of digits of a(n).

The programs for A047897, there is no canonical definition to state claims against.
-/

/-! ## A047897.P103199157011675878

`∏[A007605(3*(n+1))+record[A090455(3*(n+1))]]`
-/

namespace A047897.P103199157011675878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090455 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (3 * (n + 1)) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A047897.P103199157011675878

/-!
# A047898: a(1) = 6; for n > 0, a(n+1) = a(n) * (sum of digits of a(n)).

The programs for A047898, there is no canonical definition to state claims against.
-/

/-! ## A047898.P14393329312827557

`∏[A007953(6^round(sqrt(n²+1)))]`
-/

namespace A047898.P14393329312827557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A047898.P14393329312827557

/-! ## A047898.P9905020876623250363

`A319054(∑[A135018(n+1)+4])`
-/

namespace A047898.P9905020876623250363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135018 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319054 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A047898.P9905020876623250363

/-!
# A047899: a(1) = 7; for n > 0, a(n+1) = a(n) * sum of digits of a(n).

The programs for A047899, there is no canonical definition to state claims against.
-/

/-! ## A047899.P16778437838652657255

`∏[A007953(A064508(n+1))]`
-/

namespace A047899.P16778437838652657255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A064508 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A047899.P16778437838652657255

