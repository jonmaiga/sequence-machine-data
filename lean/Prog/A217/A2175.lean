import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
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
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C046
import Seq.B000.C048
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
# A217500: Primes of the form 2*n^2 + 74*n + 35.

The programs for A217500, there is no canonical definition to state claims against.
-/

/-! ## A217500.P6259409685050129187

`p?[4*(C(n, 2)-18*n)+35]`
-/

namespace A217500.P6259409685050129187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((Nat.choose n 2 : ℤ) - (18 * n : ℤ)) + 35

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217500.P6259409685050129187

/-! ## A217500.P8968745908005936694

`p?[72*n+34+(n+1)²+n²]`
-/

namespace A217500.P8968745908005936694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  72 * n + 34 + ((n + 1) ^ 2 + n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A217500.P8968745908005936694

/-!
# A217501: Primes of the form 2*n^2 + 78*n + 37.

The programs for A217501, there is no canonical definition to state claims against.
-/

/-! ## A217501.P13231141019236814757

`p?[A001844(n)-724]`
-/

namespace A217501.P13231141019236814757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - 724

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217501.P13231141019236814757

/-! ## A217501.P5008168283250738447

`p?[A268581(n)-A146081(n+1)]`
-/

namespace A217501.P5008168283250738447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268581 n - A146081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217501.P5008168283250738447

/-! ## A217501.P15096811331057441512

`p?[A008527(n)-A003154(n+6)]`
-/

namespace A217501.P15096811331057441512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008527 n - A003154 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217501.P15096811331057441512

/-! ## A217501.P12226294191934451860

`p?[A158596(n+1)-A158064(n+2)]`
-/

namespace A217501.P12226294191934451860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158596 (n + 1) - A158064 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217501.P12226294191934451860

/-! ## A217501.P18302814052356554143

`p?[A195147(n)-2*A305068(n+1)]`
-/

namespace A217501.P18302814052356554143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195147 n - 2 * A305068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217501.P18302814052356554143

/-! ## A217501.P54339714877852363

`p?[A008527(n+1)%A003154(n+7)]`
-/

namespace A217501.P54339714877852363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008527 (n + 1)) (A003154 (n + 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217501.P54339714877852363

/-! ## A217501.P15000929335293351312

`p?[A085959(2*n+1)+A054000(n+1)]`
-/

namespace A217501.P15000929335293351312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085959 (2 * n + 1) + A054000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217501.P15000929335293351312

/-! ## A217501.P1397283281012615700

`p?[A305068(2*n+1)+A195147(n+1)]`
-/

namespace A217501.P1397283281012615700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305068 (2 * n + 1) + A195147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217501.P1397283281012615700

/-! ## A217501.P10463406548046261767

`p?[A073762(A016789(n))+A059993(n)]`
-/

namespace A217501.P10463406548046261767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073762 (A016789 n).toNat + A059993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217501.P10463406548046261767

/-! ## A217501.P17706164444936146643

`p?[A161549(n)+A017113(A017113(n))]`
-/

namespace A217501.P17706164444936146643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161549 n + A017113 (A017113 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217501.P17706164444936146643

/-!
# A217502: E.g.f.: exp(sec(x)-1) = 1 + Sum_{n>0} a(n)*x^(2*n)/(2*n)!.

The programs for A217502, there is no canonical definition to state claims against.
-/

/-! ## A217502.P12297416141337859286

`A047309(A158691(n)*A207649(n))`
-/

namespace A217502.P12297416141337859286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047309 (A158691 n * A207649 n).toNat

end

end A217502.P12297416141337859286

/-!
# A217504: Number of triangular nXnXn arrays of occupancy after each element either stays or moves to some neighbor and with no occupancy greater than 2.

The programs for A217504, there is no canonical definition to state claims against.
-/

/-! ## A217504.P15782275058416153581

`A217510(∑[n+2])`
-/

namespace A217504.P15782275058416153581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217510 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A217504.P15782275058416153581

/-! ## A217504.P7797390077459300487

`record[1-Δ[A217510(n+1)]]`
-/

namespace A217504.P7797390077459300487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217510 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217504.P7797390077459300487

/-! ## A217504.P4169866805831980764

`A217510(∑[1-xor(n, -1)])-C(n, 7)`
-/

namespace A217504.P4169866805831980764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217510 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (Nat.choose n 7 : ℤ)

end

end A217504.P4169866805831980764

/-!
# A217505: Number of triangular n X n X n arrays of occupancy after each element either stays or moves to some neighbor and with no occupancy greater than 3.

The programs for A217505, there is no canonical definition to state claims against.
-/

/-! ## A217505.P11540510584995391304

`A217510(∑[n+3]+1)`
-/

namespace A217505.P11540510584995391304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217510 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A217505.P11540510584995391304

/-! ## A217505.P1747306915205556521

`record[A217510(lt[A080246(n), 0])]`
-/

namespace A217505.P1747306915205556521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080246 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217510 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217505.P1747306915205556521

/-! ## A217505.P13541702409950282886

`record[A217510(lt[A244119(n), 1])]`
-/

namespace A217505.P13541702409950282886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244119 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217510 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217505.P13541702409950282886

/-!
# A217506: Number of triangular n X n X n arrays of occupancy after each element either stays or moves to some neighbor and with no occupancy greater than 4.

The programs for A217506, there is no canonical definition to state claims against.
-/

/-! ## A217506.P5397554117118425003

`A217510(A141214(n+1))`
-/

namespace A217506.P5397554117118425003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217510 (A141214 (n + 1)).toNat

end

end A217506.P5397554117118425003

/-!
# A217507: Number of triangular nXnXn arrays of occupancy after each element either stays or moves to some neighbor and with no occupancy greater than 5.

The programs for A217507, there is no canonical definition to state claims against.
-/

/-! ## A217507.P10813492677166121016

`A217510(Δ[A264443(n)])`
-/

namespace A217507.P10813492677166121016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217510 (f1 (n + 1) - f1 n).toNat

end

end A217507.P10813492677166121016

/-!
# A217510: T(n,k) is the number of triangular n X n X n arrays of occupancy after each element either stays or moves to some neighbor and with no occupancy greater than k.

The programs for A217510, there is no canonical definition to state claims against.
-/

/-! ## A217510.P7153304550944605259

`A095903(or(A131063(n), A180395(n+1)))`
-/

namespace A217510.P7153304550944605259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095903 (Int.lor (A131063 n) (A180395 (n + 1))).toNat

end

end A217510.P7153304550944605259

/-! ## A217510.P13922868943266196905

`or(A318973(A318993(n+2)), A319029(n+1))`
-/

namespace A217510.P13922868943266196905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A318973 (A318993 (n + 2)).toNat) (A319029 (n + 1))

end

end A217510.P13922868943266196905

/-!
# A217512: Partial sums of nonzero terms in A005925.

The programs for A217512, there is no canonical definition to state claims against.
-/

/-! ## A217512.P5492910162296141335

`record[A077307(xor(1, n))]`
-/

namespace A217512.P5492910162296141335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077307 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217512.P5492910162296141335

/-! ## A217512.P8944598387654546213

`record[A077307(or(2, n))]`
-/

namespace A217512.P8944598387654546213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077307 (Nat.lor 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217512.P8944598387654546213

/-! ## A217512.P11289126198619571401

`record[A077307(n*n%2)]`
-/

namespace A217512.P11289126198619571401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077307 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217512.P11289126198619571401

/-! ## A217512.P1324917065805923740

`record[A077307(n*gcd(2, n))]`
-/

namespace A217512.P1324917065805923740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077307 (n * Nat.gcd 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217512.P1324917065805923740

/-! ## A217512.P6232214955902796713

`record[A077307(n*and(1, n))]`
-/

namespace A217512.P6232214955902796713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077307 (n * Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217512.P6232214955902796713

/-! ## A217512.P17128073158629830972

`record[A077307(A022998(n))]`
-/

namespace A217512.P17128073158629830972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077307 (A022998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217512.P17128073158629830972

/-! ## A217512.P6876841158274230160

`A077307(lt[0, A005925(n)])`
-/

namespace A217512.P6876841158274230160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A217512.P6876841158274230160

/-! ## A217512.P2578518428672983250

`record[A077307(abs(A009001(n)))]`
-/

namespace A217512.P2578518428672983250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077307 |A009001 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217512.P2578518428672983250

/-! ## A217512.P4893519205065609967

`record[A077307(n)/A009001(n)]`
-/

namespace A217512.P4893519205065609967
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077307 n : ℚ) / (A009001 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217512.P4893519205065609967

/-! ## A217512.P15229059730961328638

`record[A009001(2*n)*A077307(n+1)]`
-/

namespace A217512.P15229059730961328638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A077307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217512.P15229059730961328638

/-! ## A217512.P2658983403449415454

`record[A077307(lcm(2, n))]`
-/

namespace A217512.P2658983403449415454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077307 (Nat.lcm 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217512.P2658983403449415454

/-!
# A217513: Partial sums of nonzero terms in A005926.

The programs for A217513, there is no canonical definition to state claims against.
-/

/-! ## A217513.P18421339396155918473

`∑[A005869(2*n)]`
-/

namespace A217513.P18421339396155918473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005869 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217513.P18421339396155918473

/-! ## A217513.P8845097238685679094

`∑[2*A008443(2*n)]`
-/

namespace A217513.P8845097238685679094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008443 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217513.P8845097238685679094

/-! ## A217513.P16520351260222281253

`∑[A005886(2*n)/2]`
-/

namespace A217513.P16520351260222281253
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005886 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217513.P16520351260222281253

/-! ## A217513.P7333069401776530144

`∑[2*A292511(4*n)]`
-/

namespace A217513.P7333069401776530144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A292511 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217513.P7333069401776530144

/-! ## A217513.P1145797157554320938

`∑[A005878(2*n)/4]`
-/

namespace A217513.P1145797157554320938
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005878 (2 * n) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217513.P1145797157554320938

/-!
# A217514: Partial sums of nonzero terms in A005927.

The programs for A217514, there is no canonical definition to state claims against.
-/

/-! ## A217514.P12383269799259096990

`∑[A005927(lt[0, A005927(n)])]`
-/

namespace A217514.P12383269799259096990
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005927 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005927 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217514.P12383269799259096990

/-! ## A217514.P7278744877654670065

`∑[A000005(∑[A051945(n+1)])]`
-/

namespace A217514.P7278744877654670065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051945 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217514.P7278744877654670065

/-! ## A217514.P232699144494762193

`∑[A000005(lcm(10, A037497(n+1)))]`
-/

namespace A217514.P232699144494762193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lcm 10 (A037497 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217514.P232699144494762193

/-!
# A217515: Base-n state complexity of partitioned deterministic finite automaton (PDFA) for the periodic sequence (123)*.

The programs for A217515, the canonical program `A217515.P8000791462027129869` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217515 has offset 2).

The definition of A217515 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217515.P8000791462027129869

`ogf((6+4x+3x^2)/(1-x^3))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217515

/-- `ogf((6+4x+3x^2)/(1-x^3))` -/
def P8000791462027129869.Spec : Prop :=
  ∀ n, P8000791462027129869.a n = A217515 (n + 2)

theorem P8000791462027129869.correct : P8000791462027129869.Spec := by
  intro n
  simp only [A217515, Nat.add_sub_cancel]

end A217515

/-!
# A217516: Base-n state complexity of partitioned deterministic finite automaton (PDFA) for the periodic sequence (1234)*.

The programs for A217516, the canonical program `A217516.P5840667973600374337` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217516 has offset 2).

The definition of A217516 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217516.P5840667973600374337

`ogf((7+8x+5x^2+4x^3+2x^4)/(1-x^4))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217516

/-- `ogf((7+8x+5x^2+4x^3+2x^4)/(1-x^4))` -/
def P5840667973600374337.Spec : Prop :=
  ∀ n, P5840667973600374337.a n = A217516 (n + 2)

theorem P5840667973600374337.correct : P5840667973600374337.Spec := by
  intro n
  simp only [A217516, Nat.add_sub_cancel]

end A217516

/-!
# A217517: Base-n state complexity of partitioned deterministic finite automaton (PDFA) for the periodic sequence (12345)*.

The programs for A217517, the canonical program `A217517.P3416165294570521113` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217517 has offset 2).

The definition of A217517 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217517.P3416165294570521113

`ogf((20+20x+10x^2+6x^3+5x^4)/(1-x^5))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217517

/-- `ogf((20+20x+10x^2+6x^3+5x^4)/(1-x^5))` -/
def P3416165294570521113.Spec : Prop :=
  ∀ n, P3416165294570521113.a n = A217517 (n + 2)

theorem P3416165294570521113.correct : P3416165294570521113.Spec := by
  intro n
  simp only [A217517, Nat.add_sub_cancel]

end A217517

/-!
# A217518: Base-n state complexity of partitioned deterministic finite automaton (PDFA) for the periodic sequence (123456)*.

The programs for A217518, the canonical program `A217518.P5836663503677212802` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217518 has offset 2).

The definition of A217518 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217518.P5836663503677212802

`ogf((13+7x+7x^2+12x^3+7x^4+6x^5)/(1-x^6))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217518

/-- `ogf((13+7x+7x^2+12x^3+7x^4+6x^5)/(1-x^6))` -/
def P5836663503677212802.Spec : Prop :=
  ∀ n, P5836663503677212802.a n = A217518 (n + 2)

theorem P5836663503677212802.correct : P5836663503677212802.Spec := by
  intro n
  simp only [A217518, Nat.add_sub_cancel]

end A217518

/-!
# A217519: Base-2 state complexity of partitioned deterministic finite automaton (PDFA) for the periodic sequence (123...n)*.

The programs for A217519, there is no canonical definition to state claims against.
-/

/-! ## A217519.P5228927872201092655

`A306640(∑[n]+1)`
-/

namespace A217519.P5228927872201092655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A217519.P5228927872201092655

/-! ## A217519.P14773680196143025346

`or(char[2], A306640(A000124(n)))`
-/

namespace A217519.P14773680196143025346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A306640 (A000124 n).toNat)

end

end A217519.P14773680196143025346

/-! ## A217519.P17981907027810069490

`A306640(A000124(n))%A004676(n+1)`
-/

namespace A217519.P17981907027810069490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306640 (A000124 n).toNat) (A004676 (n + 1))

end

end A217519.P17981907027810069490

/-!
# A217520: Base-3 state complexity of partitioned deterministic finite automaton (PDFA) for the periodic sequence (123...n)*.

The programs for A217520, there is no canonical definition to state claims against.
-/

/-! ## A217520.P3973799638870603166

`A306640(∑[n+1]+2)`
-/

namespace A217520.P3973799638870603166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A217520.P3973799638870603166

/-! ## A217520.P2910098933902263521

`A306640(A133263(n+1))%(n+2)²`
-/

namespace A217520.P2910098933902263521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306640 (A133263 (n + 1)).toNat) ((n + 2) ^ 2 : ℤ)

end

end A217520.P2910098933902263521

/-! ## A217520.P11617813528302679438

`A007318(C(3, n))*A306640(A000096(n)+3)`
-/

namespace A217520.P11617813528302679438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A306640 (A000096 n + 3).toNat

end

end A217520.P11617813528302679438

/-! ## A217520.P3233564387603718558

`A000041(C(2, n+2))*A306640(A000096(n)+3)`
-/

namespace A217520.P3233564387603718558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A306640 (A000096 n + 3).toNat

end

end A217520.P3233564387603718558

/-!
# A217521: Base-4 state complexity of partitioned deterministic finite automaton (PDFA) for the periodic sequence (123...n)*.

The programs for A217521, there is no canonical definition to state claims against.
-/

/-! ## A217521.P5586357412973336222

`A306640(∑[n+2]+4)`
-/

namespace A217521.P5586357412973336222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A217521.P5586357412973336222

/-! ## A217521.P7017275008559194564

`or(char[1], A306640(A000217(n+2)+3))`
-/

namespace A217521.P7017275008559194564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A306640 (A000217 (n + 2) + 3).toNat)

end

end A217521.P7017275008559194564

/-! ## A217521.P5911670216604682422

`A306640(A046691(n)+7)%A000041(n+4)`
-/

namespace A217521.P5911670216604682422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306640 (A046691 n + 7).toNat) (A000041 (n + 4))

end

end A217521.P5911670216604682422

/-!
# A217522: Squarefree ternary sequence derived from bi-infinite squarefree ternary sequence of Kurosaki.

The programs for A217522, there is no canonical definition to state claims against.
-/

/-! ## A217522.P6885704682716921559

`A287451(A128173(n)+1)`
-/

namespace A217522.P6885704682716921559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287451 (A128173 n + 1).toNat

end

end A217522.P6885704682716921559

/-! ## A217522.P235652188575159551

`A060582(3*A128173(n))`
-/

namespace A217522.P235652188575159551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060582 (3 * A128173 n).toNat

end

end A217522.P235652188575159551

/-! ## A217522.P6529913777272553885

`abs(Δ[A000034(n)-A334483(n)])`
-/

namespace A217522.P6529913777272553885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n - A334483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A217522.P6529913777272553885

/-! ## A217522.P17252228718841618661

`abs(Δ[A000035(n)-A334483(n)])`
-/

namespace A217522.P17252228718841618661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n - A334483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A217522.P17252228718841618661

/-! ## A217522.P13790298343441707394

`A287451(Δ[n²]-A128173(n))`
-/

namespace A217522.P13790298343441707394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287451 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - A128173 n).toNat

end

end A217522.P13790298343441707394

/-! ## A217522.P295910146950165389

`dr(Δ[A000035(n+2)-A334483(n)])`
-/

namespace A217522.P295910146950165389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 2) - A334483 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A217522.P295910146950165389

/-! ## A217522.P14534102812383273680

`5%(Δ[A000035(n+1)-A334483(n)]+3)`
-/

namespace A217522.P14534102812383273680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) - A334483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (f1 (n + 1) - f1 n + 3)

end

end A217522.P14534102812383273680

/-! ## A217522.P17018195084613713555

`A060582(A128173(n)-A343766(n))`
-/

namespace A217522.P17018195084613713555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060582 (A128173 n - A343766 n).toNat

end

end A217522.P17018195084613713555

/-!
# A217525: From the enumeration of involutions avoiding the pattern 4321.

The programs for A217525, there is no canonical definition to state claims against.
-/

/-! ## A217525.P14754736883063148073

`A073719(A275176(n+1))`
-/

namespace A217525.P14754736883063148073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073719 (A275176 (n + 1)).toNat

end

end A217525.P14754736883063148073

/-! ## A217525.P10371530298287684492

`A333223(A275175(n+1))`
-/

namespace A217525.P10371530298287684492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333223 (A275175 (n + 1)).toNat

end

end A217525.P10371530298287684492

/-! ## A217525.P11802110043063370579

`A055571(or(1, A001631(n)))`
-/

namespace A217525.P11802110043063370579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055571 (Int.lor 1 (A001631 n)).toNat

end

end A217525.P11802110043063370579

/-! ## A217525.P4577261321816363820

`∑[∑[A360677(A298338(n))]]`
-/

namespace A217525.P4577261321816363820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360677 (A298338 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217525.P4577261321816363820

/-! ## A217525.P5543791575223650765

`A109702(A087019(n)²+3)`
-/

namespace A217525.P5543791575223650765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109702 (A087019 n ^ 2 + 3).toNat

end

end A217525.P5543791575223650765

/-!
# A217526: From the enumeration of involutions avoiding the pattern 4321.

The programs for A217526, the canonical program `A217526.P4421922415180328638` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217526 has offset 0).

The definition of A217526 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217526.P4421922415180328638

`A168049(n)-A123108(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A217526

/-- `A168049(n)-A123108(n)` -/
def P4421922415180328638.Spec : Prop :=
  ∀ n, P4421922415180328638.a n = A217526 n

theorem P4421922415180328638.correct : P4421922415180328638.Spec := by
  intro n
  simp only [A217526]

end A217526

/-! ## A217526.P1320821365484888155

`abs(A168051(n))-A123108(n)`
-/

namespace A217526.P1320821365484888155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168051 n| - A123108 n

end

end A217526.P1320821365484888155

namespace A217526

/-- `abs(A168051(n))-A123108(n)` -/
def P1320821365484888155.Spec : Prop :=
  ∀ n, P1320821365484888155.a n = A217526 n

end A217526

/-! ## A217526.P16783031460986536575

`A168050(n+1)-A168051(n)`
-/

namespace A217526.P16783031460986536575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168050 (n + 1) - A168051 n

end

end A217526.P16783031460986536575

namespace A217526

/-- `A168050(n+1)-A168051(n)` -/
def P16783031460986536575.Spec : Prop :=
  ∀ n, P16783031460986536575.a n = A217526 n

end A217526

/-! ## A217526.P14935065152369517760

`A168049(n)-abs(A168050(n+1))`
-/

namespace A217526.P14935065152369517760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 n - |A168050 (n + 1)|

end

end A217526.P14935065152369517760

namespace A217526

/-- `A168049(n)-abs(A168050(n+1))` -/
def P14935065152369517760.Spec : Prop :=
  ∀ n, P14935065152369517760.a n = A217526 n

end A217526

/-! ## A217526.P13211892944296346265

`A168049(n)-A008624(A004273(n))`
-/

namespace A217526.P13211892944296346265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 n - A008624 (A004273 n).toNat

end

end A217526.P13211892944296346265

namespace A217526

/-- `A168049(n)-A008624(A004273(n))` -/
def P13211892944296346265.Spec : Prop :=
  ∀ n, P13211892944296346265.a n = A217526 n

end A217526

/-! ## A217526.P17143125791678378671

`A086246(n)-A123108(A004442(n))`
-/

namespace A217526.P17143125791678378671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 n - A123108 (A004442 n).toNat

end

end A217526.P17143125791678378671

namespace A217526

/-- `A086246(n)-A123108(A004442(n))` -/
def P17143125791678378671.Spec : Prop :=
  ∀ n, P17143125791678378671.a n = A217526 n

end A217526

/-! ## A217526.P9272445818570211965

`A086246(n)-A004526(A254667(n))`
-/

namespace A217526.P9272445818570211965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 n - A004526 (A254667 n).toNat

end

end A217526.P9272445818570211965

namespace A217526

/-- `A086246(n)-A004526(A254667(n))` -/
def P9272445818570211965.Spec : Prop :=
  ∀ n, P9272445818570211965.a n = A217526 n

end A217526

/-! ## A217526.P9397178122790180199

`A000038(n)-(A168051(n)+A123108(n))`
-/

namespace A217526.P9397178122790180199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - (A168051 n + A123108 n)

end

end A217526.P9397178122790180199

namespace A217526

/-- `A000038(n)-(A168051(n)+A123108(n))` -/
def P9397178122790180199.Spec : Prop :=
  ∀ n, P9397178122790180199.a n = A217526 n

theorem P9397178122790180199.correct : P9397178122790180199.Spec := by
  intro n
  simp only [A217526, Nat.add_sub_cancel, A217526.P9397178122790180199.a, A217526.P4421922415180328638.a, A000038, A000038.P13734959004655594922.a, A123108, A123108.P8709889862737691449.a, A168049, A168049.P8332189401244449518.f1, A168049.P8332189401244449518.a, A168051, A168051.P12367257116989189767.a, A000007, A000007.P6599383543502402472.a, A001006, A001006.P11199602840237397285.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A217526

/-! ## A217526.P14213360324132605868

`lcm(A168051(n), A292440(n))-A123108(n)`
-/

namespace A217526.P14213360324132605868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A168051 n) (A292440 n) : ℤ) - A123108 n

end

end A217526.P14213360324132605868

namespace A217526

/-- `lcm(A168051(n), A292440(n))-A123108(n)` -/
def P14213360324132605868.Spec : Prop :=
  ∀ n, P14213360324132605868.a n = A217526 n

end A217526

/-! ## A217526.P15009987906275842851

`ceil((A007971(n)-n)/2)`
-/

namespace A217526.P15009987906275842851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007971 n - (n : ℤ) : ℚ) / 2⌉

end

end A217526.P15009987906275842851

namespace A217526

/-- `ceil((A007971(n)-n)/2)` -/
def P15009987906275842851.Spec : Prop :=
  ∀ n, P15009987906275842851.a n = A217526 n

end A217526

/-! ## A217526.P7605026330251772505

`A126068(n)/2-A004526(n)`
-/

namespace A217526.P7605026330251772505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126068 n : ℚ) / 2 - (A004526 n : ℚ)

end

end A217526.P7605026330251772505

namespace A217526

/-- `A126068(n)/2-A004526(n)` -/
def P7605026330251772505.Spec : Prop :=
  ∀ n, P7605026330251772505.a n = (A217526 n : ℚ)

end A217526

/-!
# A217527: a(n) = 2^(n-2)*(n-2)^2+2^(n-1).

The programs for A217527, the canonical program `A217527.P167056022829218626` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217527 has offset 2).

The definition of A217527 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*n²+2^(n+1)` (program `A217527.P167056022829218626`, by `A217527.P167056022829218626.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A217527.P167056022829218626

`2^n*n²+2^(n+1)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217527

/-- `2^n*n²+2^(n+1)` -/
def P167056022829218626.Spec : Prop :=
  ∀ n, (P167056022829218626.a n : ℤ) = A217527 (n + 2)

theorem P167056022829218626.correct : P167056022829218626.Spec := by
  intro n
  simp only [A217527, Nat.add_sub_cancel]

end A217527

/-! ## A217527.P13216114987800767163

`ogf((2-6x+12x^2)/(1-6x+12x^2-8x^3))`
-/

namespace A217527.P13216114987800767163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -6, 12] [1, -6, 12, -8] n

end

end A217527.P13216114987800767163

namespace A217527

/-- `ogf((2-6x+12x^2)/(1-6x+12x^2-8x^3))` -/
def P13216114987800767163.Spec : Prop :=
  ∀ n, P13216114987800767163.a n = A217527 (n + 2)

end A217527

/-! ## A217527.P3340893265311297988

`xor(2, n²)*2^n`
-/

namespace A217527.P3340893265311297988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (n ^ 2) * 2 ^ n

end

end A217527.P3340893265311297988

namespace A217527

/-- `xor(2, n²)*2^n` -/
def P3340893265311297988.Spec : Prop :=
  ∀ n, (P3340893265311297988.a n : ℤ) = A217527 (n + 2)

end A217527

/-! ## A217527.P7391541651925979015

`2^n*∑[a(n-1)+2]` with `a(0)=2, a(1)=1`
-/

namespace A217527.P7391541651925979015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A217527.P7391541651925979015

namespace A217527

/-- `2^n*∑[a(n-1)+2]` -/
def P7391541651925979015.Spec : Prop :=
  ∀ n, (P7391541651925979015.a n : ℤ) = A217527 (n + 2)

end A217527

/-! ## A217527.P16562673856681960604

`2*A356888(n+1)`
-/

namespace A217527.P16562673856681960604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A356888 (n + 1)

end

end A217527.P16562673856681960604

namespace A217527

/-- `2*A356888(n+1)` -/
def P16562673856681960604.Spec : Prop :=
  ∀ n, P16562673856681960604.a n = A217527 (n + 2)

end A217527

/-! ## A217527.P3043090147982900933

`2^n*A059100(n)`
-/

namespace A217527.P3043090147982900933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A059100 n

end

end A217527.P3043090147982900933

namespace A217527

/-- `2^n*A059100(n)` -/
def P3043090147982900933.Spec : Prop :=
  ∀ n, P3043090147982900933.a n = A217527 (n + 2)

theorem P3043090147982900933.correct : P3043090147982900933.Spec := by
  intro n
  simp only [A217527, Nat.add_sub_cancel, A217527.P3043090147982900933.a, A217527.P167056022829218626.a, A059100, A059100.P4969484960020007252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A217527

/-! ## A217527.P4367256223862943879

`xor(A048578(n), A248917(n))`
-/

namespace A217527.P4367256223862943879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A048578 n) (A248917 n)

end

end A217527.P4367256223862943879

namespace A217527

/-- `xor(A048578(n), A248917(n))` -/
def P4367256223862943879.Spec : Prop :=
  ∀ n, P4367256223862943879.a n = A217527 (n + 2)

end A217527

/-! ## A217527.P1699980014594511350

`(A036826(n+1)+3)/2`
-/

namespace A217527.P1699980014594511350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036826 (n + 1) + 3 : ℚ) / 2

end

end A217527.P1699980014594511350

namespace A217527

/-- `(A036826(n+1)+3)/2` -/
def P1699980014594511350.Spec : Prop :=
  ∀ n, P1699980014594511350.a n = (A217527 (n + 2) : ℚ)

theorem P1699980014594511350.correct : P1699980014594511350.Spec := by
  intro n
  simp only [A217527, Nat.add_sub_cancel, A217527.P1699980014594511350.a, A217527.P167056022829218626.a, A036826, A036826.P77442619776099478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A217527

/-! ## A217527.P16681520935551898825

`∑[A207627(∑[n+2])]`
-/

namespace A217527.P16681520935551898825
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207627 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217527.P16681520935551898825

namespace A217527

/-- `∑[A207627(∑[n+2])]` -/
def P16681520935551898825.Spec : Prop :=
  ∀ n, P16681520935551898825.a n = A217527 (n + 2)

end A217527

/-!
# A217528: a(n) = (n-2)*(n-3)*2^(n-2)+2^n-2.

The programs for A217528, the canonical program `A217528.P11059898023563823371` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217528 has offset 1).

The definition of A217528 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A217528.anchor (n : ℕ) : (A217528 (n + 1) : ℚ) = (((n : ℤ) - 1) * ((n : ℤ) - 2) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (2 ^ (n + 1) : ℚ) - 2` in `Proof.A217.A217528`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A217528.P11059898023563823371

`(n-1)*(n-2)*2^(n-1)+2^(n+1)-2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217528

/-- `(n-1)*(n-2)*2^(n-1)+2^(n+1)-2` -/
def P11059898023563823371.Spec : Prop :=
  ∀ n, P11059898023563823371.a n = (A217528 (n + 1) : ℚ)

end A217528

/-! ## A217528.P9269379558300205084

`ogf((1-5x+10x^2-4x^3)/(1-7x+18x^2-20x^3+8x^4))`
-/

namespace A217528.P9269379558300205084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 10, -4] [1, -7, 18, -20, 8] n

end

end A217528.P9269379558300205084

namespace A217528

/-- `ogf((1-5x+10x^2-4x^3)/(1-7x+18x^2-20x^3+8x^4))` -/
def P9269379558300205084.Spec : Prop :=
  ∀ n, P9269379558300205084.a n = A217528 (n + 1)

end A217528

/-! ## A217528.P17720533804467715522

`∑[(1+C(n, 2))*ceil(2^(n-1))]`
-/

namespace A217528.P17720533804467715522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + Nat.choose n 2 : ℤ) * ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217528.P17720533804467715522

namespace A217528

/-- `∑[(1+C(n, 2))*ceil(2^(n-1))]` -/
def P17720533804467715522.Spec : Prop :=
  ∀ n, P17720533804467715522.a n = A217528 (n + 1)

end A217528

/-! ## A217528.P11800898451049704552

`∑[A011782(n)*A152947(n+1)]`
-/

namespace A217528.P11800898451049704552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A152947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217528.P11800898451049704552

namespace A217528

/-- `∑[A011782(n)*A152947(n+1)]` -/
def P11800898451049704552.Spec : Prop :=
  ∀ n, P11800898451049704552.a n = A217528 (n + 1)

end A217528

/-! ## A217528.P7759034347429477251

`(∑[A052481(n)]+1)/2`
-/

namespace A217528.P7759034347429477251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052481 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A217528.P7759034347429477251

namespace A217528

/-- `(∑[A052481(n)]+1)/2` -/
def P7759034347429477251.Spec : Prop :=
  ∀ n, P7759034347429477251.a n = (A217528 (n + 1) : ℚ)

end A217528

/-! ## A217528.P4129603109868536424

`(∑[(C(n, 2)+1)*A000079(n)]+1)/2`
-/

namespace A217528.P4129603109868536424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 + 1 : ℤ) * A000079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A217528.P4129603109868536424

namespace A217528

/-- `(∑[(C(n, 2)+1)*A000079(n)]+1)/2` -/
def P4129603109868536424.Spec : Prop :=
  ∀ n, P4129603109868536424.a n = (A217528 (n + 1) : ℚ)

end A217528

/-! ## A217528.P17873820326046443679

`∑[A105851(2*n²)]`
-/

namespace A217528.P17873820326046443679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105851 (2 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217528.P17873820326046443679

namespace A217528

/-- `∑[A105851(2*n²)]` -/
def P17873820326046443679.Spec : Prop :=
  ∀ n, P17873820326046443679.a n = A217528 (n + 1)

end A217528

/-!
# A217529: a(n) = 2^(n-4)*(4*n^2 - 16*n + 23).

The programs for A217529, the canonical program `A217529.P14520207800133441247` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217529 has offset 4).

The definition of A217529 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*(4*(n+4)²-16*(n+4)+23)` (program `A217529.P14520207800133441247`, by `A217529.P14520207800133441247.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A217529.P14520207800133441247

`2^n*(4*(n+4)²-16*(n+4)+23)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217529

/-- `2^n*(4*(n+4)²-16*(n+4)+23)` -/
def P14520207800133441247.Spec : Prop :=
  ∀ n, P14520207800133441247.a n = A217529 (n + 4)

theorem P14520207800133441247.correct : P14520207800133441247.Spec := by
  intro n
  simp only [A217529, Nat.add_sub_cancel]

end A217529

/-! ## A217529.P7148462878098212801

`ogf((23-52x+44x^2)/(1-6x+12x^2-8x^3))`
-/

namespace A217529.P7148462878098212801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [23, -52, 44] [1, -6, 12, -8] n

end

end A217529.P7148462878098212801

namespace A217529

/-- `ogf((23-52x+44x^2)/(1-6x+12x^2-8x^3))` -/
def P7148462878098212801.Spec : Prop :=
  ∀ n, P7148462878098212801.a n = A217529 (n + 4)

end A217529

/-! ## A217529.P9068629119236887438

`6*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=23, a(1)=86, a(2)=284`
-/

namespace A217529.P9068629119236887438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [23, 86, 284] fun n a =>
  6 * a (n - 1) - 12 * a (n - 2) + 8 * a (n - 3)

end

end A217529.P9068629119236887438

namespace A217529

/-- `6*a(n-1)-12*a(n-2)+8*a(n-3)` -/
def P9068629119236887438.Spec : Prop :=
  ∀ n, P9068629119236887438.a n = A217529 (n + 4)

theorem P9068629119236887438.correct : P9068629119236887438.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A217529, Nat.add_sub_cancel, A217529.P9068629119236887438.a, A217529.P14520207800133441247.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A217529, Nat.add_sub_cancel, A217529.P9068629119236887438.a, A217529.P14520207800133441247.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A217529

/-! ## A217529.P2320922472100125116

`A217527(n+4)-2^n`
-/

namespace A217529.P2320922472100125116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217527 (n + 4) - (2 ^ n : ℤ)

end

end A217529.P2320922472100125116

namespace A217529

/-- `A217527(n+4)-2^n` -/
def P2320922472100125116.Spec : Prop :=
  ∀ n, P2320922472100125116.a n = A217529 (n + 4)

theorem P2320922472100125116.correct : P2320922472100125116.Spec := by
  intro n
  simp only [A217529, Nat.add_sub_cancel, A217529.P2320922472100125116.a, A217529.P14520207800133441247.a, A217527, A217527.P167056022829218626.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A217529

/-! ## A217529.P10651639723023734504

`abs(A217527(n+4)-A000079(n))`
-/

namespace A217529.P10651639723023734504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A217527 (n + 4) - A000079 n|

end

end A217529.P10651639723023734504

namespace A217529

/-- `abs(A217527(n+4)-A000079(n))` -/
def P10651639723023734504.Spec : Prop :=
  ∀ n, P10651639723023734504.a n = A217529 (n + 4)

end A217529

/-! ## A217529.P3800105124851408820

`abs(A011782(n+1)-A217527(n+4))`
-/

namespace A217529.P3800105124851408820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 (n + 1) - A217527 (n + 4)|

end

end A217529.P3800105124851408820

namespace A217529

/-- `abs(A011782(n+1)-A217527(n+4))` -/
def P3800105124851408820.Spec : Prop :=
  ∀ n, P3800105124851408820.a n = A217529 (n + 4)

end A217529

/-! ## A217529.P12578673982070477816

`A014477(n+1)+A014477(n+1)+A005009(n)`
-/

namespace A217529.P12578673982070477816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014477 (n + 1) + (A014477 (n + 1) + A005009 n)

end

end A217529.P12578673982070477816

namespace A217529

/-- `A014477(n+1)+A014477(n+1)+A005009(n)` -/
def P12578673982070477816.Spec : Prop :=
  ∀ n, P12578673982070477816.a n = A217529 (n + 4)

end A217529

/-!
# A217530: a(n) = n^4/2-5*n^3/2+21*n-30.

The programs for A217530, the canonical program `A217530.P16714677509817472332` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217530 has offset 2).

The definition of A217530 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A217530.anchor (n : ℕ) : (A217530 (n + 2) : ℚ) = ((n + 2) ^ 4 : ℚ) / 2 - (5 * (n + 2) ^ 3 : ℚ) / 2 + (21 * (n + 2) : ℚ) - 30` in `Proof.A217.A217530`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A217530.P1043575257179183389

`ogf((6x-8x^2+25x^3-11x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A217530.P1043575257179183389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, -8, 25, -11] [1, -5, 10, -10, 5, -1] n

end

end A217530.P1043575257179183389

namespace A217530

/-- `ogf((6x-8x^2+25x^3-11x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P1043575257179183389.Spec : Prop :=
  ∀ n, P1043575257179183389.a n = A217530 (n + 2)

end A217530

/-! ## A217530.P16714677509817472332

`(n+2)^4/2-5*(n+2)^3/2+21*(n+2)-30`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217530

/-- `(n+2)^4/2-5*(n+2)^3/2+21*(n+2)-30` -/
def P16714677509817472332.Spec : Prop :=
  ∀ n, P16714677509817472332.a n = (A217530 (n + 2) : ℚ)

end A217530

/-!
# A217537: Triangle read by rows, T(n,k) = T(n-1,k-1) + k*T(n-1,k) + (k+1)*T(n-1,k+1), T(0,0) = 1, n >= 0, k >= 0.

The programs for A217537, the canonical program `A217537.P17023200838506849090` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217537 has offset 1).

The definition of A217537 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `T(n-1,k-1)+col(n)*T(n-1,k)+(col(n)+1)*T(n-1,k+1)` (program `A217537.P17023200838506849090`, by `A217537.P17023200838506849090.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A217537.P17023200838506849090

`T(n-1,k-1)+col(n)*T(n-1,k)+(col(n)+1)*T(n-1,k+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217537

/-- `T(n-1,k-1)+col(n)*T(n-1,k)+(col(n)+1)*T(n-1,k+1)` -/
def P17023200838506849090.Spec : Prop :=
  ∀ n, (P17023200838506849090.a n : ℤ) = A217537 (n + 1)

theorem P17023200838506849090.correct : P17023200838506849090.Spec := by
  intro n
  simp only [A217537, Nat.add_sub_cancel]

end A217537

/-! ## A217537.P7660102627121053241

`T(n-1,k-1)+T(n-1,k+1)+(T(n-1,k)+T(n-1,k+1))*col(n)` with `a(0)=1`
-/

namespace A217537.P7660102627121053241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUpRight a n + (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpRight a n) * SequenceMachineLib.triCol n

end

end A217537.P7660102627121053241

namespace A217537

/-- `T(n-1,k-1)+T(n-1,k+1)+(T(n-1,k)+T(n-1,k+1))*col(n)` -/
def P7660102627121053241.Spec : Prop :=
  ∀ n, (P7660102627121053241.a n : ℤ) = A217537 (n + 1)

end A217537

/-!
# A217538: Integer part of the n-th partial sum of the reciprocal primes gaps.

The programs for A217538, the canonical program `A217538.P14501556472145506747` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217538 has offset 1).

The definition of A217538 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217538.P3588761383015876789

`floor(∑[1/A001223(n+1)])`
-/

namespace A217538.P3588761383015876789
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A001223 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A217538.P3588761383015876789

namespace A217538

/-- `floor(∑[1/A001223(n+1)])` -/
def P3588761383015876789.Spec : Prop :=
  ∀ n, P3588761383015876789.a n = A217538 (n + 1)

end A217538

/-! ## A217538.P14501556472145506747

`floor(∑[A001043(n+1)/A069482(n+1)])`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A217538

/-- `floor(∑[A001043(n+1)/A069482(n+1)])` -/
def P14501556472145506747.Spec : Prop :=
  ∀ n, P14501556472145506747.a n = A217538 (n + 1)

theorem P14501556472145506747.correct : P14501556472145506747.Spec := by
  intro n
  simp only [A217538, Nat.add_sub_cancel]

end A217538

/-! ## A217538.P9683616591965520859

`floor(∑[1/A054541(n+2)])`
-/

namespace A217538.P9683616591965520859
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A054541 (n + 2) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A217538.P9683616591965520859

namespace A217538

/-- `floor(∑[1/A054541(n+2)])` -/
def P9683616591965520859.Spec : Prop :=
  ∀ n, P9683616591965520859.a n = A217538 (n + 1)

end A217538

/-! ## A217538.P1333394268563089307

`floor(∑[1/Δ[A000040(n+1)]])`
-/

namespace A217538.P1333394268563089307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A217538.P1333394268563089307

namespace A217538

/-- `floor(∑[1/Δ[A000040(n+1)]])` -/
def P1333394268563089307.Spec : Prop :=
  ∀ n, P1333394268563089307.a n = A217538 (n + 1)

end A217538

/-! ## A217538.P2478348198843033990

`floor(∑[1/Δ[A006093(n+1)]])`
-/

namespace A217538.P2478348198843033990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A217538.P2478348198843033990

namespace A217538

/-- `floor(∑[1/Δ[A006093(n+1)]])` -/
def P2478348198843033990.Spec : Prop :=
  ∀ n, P2478348198843033990.a n = A217538 (n + 1)

end A217538

/-! ## A217538.P12460345727594990532

`floor(∑[1/Δ[A008864(n+1)]])`
-/

namespace A217538.P12460345727594990532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A217538.P12460345727594990532

namespace A217538

/-- `floor(∑[1/Δ[A008864(n+1)]])` -/
def P12460345727594990532.Spec : Prop :=
  ∀ n, P12460345727594990532.a n = A217538 (n + 1)

end A217538

/-! ## A217538.P4448845689736114795

`floor(∑[1/Δ[A008578(n+2)]])`
-/

namespace A217538.P4448845689736114795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A217538.P4448845689736114795

namespace A217538

/-- `floor(∑[1/Δ[A008578(n+2)]])` -/
def P4448845689736114795.Spec : Prop :=
  ∀ n, P4448845689736114795.a n = A217538 (n + 1)

end A217538

/-!
# A217539: Number of Dyck paths of semilength n which satisfy the condition: number of returns + number of hills < number of peaks.

The programs for A217539, there is no canonical definition to state claims against.
-/

/-! ## A217539.P786263185722419284

`A002264(A307349(n)-A159799(n+1))`
-/

namespace A217539.P786263185722419284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A307349 n - A159799 (n + 1)).toNat

end

end A217539.P786263185722419284

/-! ## A217539.P3203360934339088697

`A303119(A149454(n))`
-/

namespace A217539.P3203360934339088697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303119 (A149454 n).toNat

end

end A217539.P3203360934339088697

/-! ## A217539.P17890965493560268600

`A219641(A243283(n!))`
-/

namespace A217539.P17890965493560268600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219641 (A243283 (Nat.factorial n)).toNat

end

end A217539.P17890965493560268600

/-! ## A217539.P4324730584412711644

`A064459(A047033(n+1))`
-/

namespace A217539.P4324730584412711644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064459 (A047033 (n + 1)).toNat

end

end A217539.P4324730584412711644

/-!
# A217540: Scambler statistic on Dyck paths. Triangle T(n, k) read by rows, n >= 0, -n <= k <= n, T(n, k) is the number of Dyck paths of semilength n and k = number of returns + number of hills - number of peaks.

The programs for A217540, there is no canonical definition to state claims against.
-/

/-! ## A217540.P6245088753242388262

`(A342926(A000045(n+2)+1)²-∑[n])%3`
-/

namespace A217540.P6245088753242388262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342926 (A000045 (n + 2) + 1).toNat ^ 2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) 3

end

end A217540.P6245088753242388262

/-! ## A217540.P13055679239683747753

`A374133(A186422(n)+A096900(3*n+5))`
-/

namespace A217540.P13055679239683747753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374133 (A186422 n + A096900 (3 * n + 5)).toNat

end

end A217540.P13055679239683747753

/-! ## A217540.P8924218236841924710

`A303708(gcd(A345882(n+5), A345896(3*n+1)))`
-/

namespace A217540.P8924218236841924710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303708 (Int.gcd (A345882 (n + 5)) (A345896 (3 * n + 1)))

end

end A217540.P8924218236841924710

/-! ## A217540.P13753740142700616841

`A007814(A310515(2*n+1)+A052219(3*n+2))`
-/

namespace A217540.P13753740142700616841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A310515 (2 * n + 1) + A052219 (3 * n + 2)).toNat

end

end A217540.P13753740142700616841

/-! ## A217540.P3738284964716368047

`A300069(A165794(n))`
-/

namespace A217540.P3738284964716368047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300069 (A165794 n).toNat

end

end A217540.P3738284964716368047

/-!
# A217542: Number of n X n arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random 0..2 n X n array.

The programs for A217542, there is no canonical definition to state claims against.
-/

/-! ## A217542.P7941302384340581056

`A217547(∑[4*n]+1)`
-/

namespace A217542.P7941302384340581056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217547 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A217542.P7941302384340581056

/-! ## A217542.P16118358283391026082

`or(1, A217547(A001844(n)))`
-/

namespace A217542.P16118358283391026082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A217547 (A001844 n).toNat)

end

end A217542.P16118358283391026082

/-! ## A217542.P595522567038778790

`A217547(A001844(n))+A011856(n)`
-/

namespace A217542.P595522567038778790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217547 (A001844 n).toNat + A011856 n

end

end A217542.P595522567038778790

/-! ## A217542.P14717586414468313968

`A217547(A001844(n))+A056965(n)`
-/

namespace A217542.P14717586414468313968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217547 (A001844 n).toNat + A056965 n

end

end A217542.P14717586414468313968

/-!
# A217543: Number of n X 4 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random 0..2 n X 4 array.

The programs for A217543, there is no canonical definition to state claims against.
-/

/-! ## A217543.P13846952608696209118

`A217547(C(n+5, 2)-n)`
-/

namespace A217543.P13846952608696209118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217547 (Nat.choose (n + 5) 2 - n)

end

end A217543.P13846952608696209118

/-! ## A217543.P13666973186916944221

`A217547(A374004(n+1))`
-/

namespace A217543.P13666973186916944221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217547 (A374004 (n + 1)).toNat

end

end A217543.P13666973186916944221

/-! ## A217543.P8027012304264556601

`A217547(A141214(n)+7)`
-/

namespace A217543.P8027012304264556601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217547 (A141214 n + 7).toNat

end

end A217543.P8027012304264556601

/-! ## A217543.P1067782569534204236

`A217547(A052905(n)+9)`
-/

namespace A217543.P1067782569534204236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217547 (A052905 n + 9).toNat

end

end A217543.P1067782569534204236

/-! ## A217543.P11157011735598176451

`A217547(A055999(n)+10)`
-/

namespace A217543.P11157011735598176451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217547 (A055999 n + 10).toNat

end

end A217543.P11157011735598176451

/-!
# A217544: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random 0..2 nX5 array.

The programs for A217544, there is no canonical definition to state claims against.
-/

/-! ## A217544.P11946438462262123872

`A217547(A374005(n+1))`
-/

namespace A217544.P11946438462262123872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217547 (A374005 (n + 1)).toNat

end

end A217544.P11946438462262123872

/-! ## A217544.P10109976249196774392

`A217547(A167499(n+3))`
-/

namespace A217544.P10109976249196774392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217547 (A167499 (n + 3)).toNat

end

end A217544.P10109976249196774392

/-! ## A217544.P3774330539150439058

`A217547(A155212(n)+13)`
-/

namespace A217544.P3774330539150439058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217547 (A155212 n + 13).toNat

end

end A217544.P3774330539150439058

/-! ## A217544.P9098523026812795747

`A217547(A056000(n)+15)`
-/

namespace A217544.P9098523026812795747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217547 (A056000 n + 15).toNat

end

end A217544.P9098523026812795747

/-! ## A217544.P3820760989640182145

`A217547(eq[7, A066657(n)])`
-/

namespace A217544.P3820760989640182145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217547 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217544.P3820760989640182145

/-!
# A217545: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random 0..2 nX6 array.

The programs for A217545, there is no canonical definition to state claims against.
-/

/-! ## A217545.P9566698917681372115

`A217547(A374007(n+1))`
-/

namespace A217545.P9566698917681372115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217547 (A374007 (n + 1)).toNat

end

end A217545.P9566698917681372115

/-! ## A217545.P18034762776397735000

`A217547(A056115(n)+21)`
-/

namespace A217545.P18034762776397735000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217547 (A056115 n + 21).toNat

end

end A217545.P18034762776397735000

/-! ## A217545.P17748912930627508658

`A217547(A167499(n+4)+1)`
-/

namespace A217545.P17748912930627508658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217547 (A167499 (n + 4) + 1).toNat

end

end A217545.P17748912930627508658

/-! ## A217545.P4480313080433257993

`A217547(A167614(n+4)+3)`
-/

namespace A217545.P4480313080433257993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217547 (A167614 (n + 4) + 3).toNat

end

end A217545.P4480313080433257993

/-! ## A217545.P13875907699732319190

`A217547(A000217(n+5)+6)`
-/

namespace A217545.P13875907699732319190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217547 (A000217 (n + 5) + 6).toNat

end

end A217545.P13875907699732319190

/-!
# A217546: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random 0..2 nX7 array.

The programs for A217546, there is no canonical definition to state claims against.
-/

/-! ## A217546.P18038829342829641503

`A217547(A374008(n+1))`
-/

namespace A217546.P18038829342829641503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217547 (A374008 (n + 1)).toNat

end

end A217546.P18038829342829641503

/-! ## A217546.P2654084102870119085

`A217547(A056119(n)+28)`
-/

namespace A217546.P2654084102870119085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217547 (A056119 n + 28).toNat

end

end A217546.P2654084102870119085

/-! ## A217546.P8225553175968636505

`A217547(eq[11, A066657(n)])`
-/

namespace A217546.P8225553175968636505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217547 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217546.P8225553175968636505

/-! ## A217546.P2406834052192952004

`A217547(A077169(n+7)+2)`
-/

namespace A217546.P2406834052192952004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217547 (A077169 (n + 7) + 2).toNat

end

end A217546.P2406834052192952004

/-! ## A217546.P17734056120567920348

`A217547(A167614(n+5)+4)`
-/

namespace A217546.P17734056120567920348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217547 (A167614 (n + 5) + 4).toNat

end

end A217546.P17734056120567920348

/-!
# A217547: T(n,k)=Number of nXk arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random 0..2 nXk array.

The programs for A217547, there is no canonical definition to state claims against.
-/

/-! ## A217547.P16422759203904357018

`A000188(A217457(n+1)*A217645(n+1))`
-/

namespace A217547.P16422759203904357018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A217457 (n + 1) * A217645 (n + 1)).toNat

end

end A217547.P16422759203904357018

/-! ## A217547.P10968301425676679728

`gcd(A217645(n+1), A217647(A296963(n+1)))`
-/

namespace A217547.P10968301425676679728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A217645 (n + 1)) (A217647 (A296963 (n + 1)).toNat)

end

end A217547.P10968301425676679728

/-!
# A217549: The Berndt-type sequence number 8 for the argument 2*Pi/13.

The programs for A217549, there is no canonical definition to state claims against.
-/

/-! ## A217549.P16915880474717402099

`A288898(2*n)-A091220(A354714(2*n+1))`
-/

namespace A217549.P16915880474717402099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288898 (2 * n) - A091220 (A354714 (2 * n + 1)).toNat

end

end A217549.P16915880474717402099

/-!
# A217553: G.f.: exp( Sum_{n>=1} 4^A001511(n) * x^n/n ), where 2^A001511(n) is the highest power of 2 that divides 2*n.

The programs for A217553, there is no canonical definition to state claims against.
-/

/-! ## A217553.P10904812629052804535

`record[Δ[A162581(A049474(n))]]`
-/

namespace A217553.P10904812629052804535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162581 (A049474 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217553.P10904812629052804535

/-! ## A217553.P3623982728281810783

`record[Δ[A162581(A097337(n+1))]]`
-/

namespace A217553.P3623982728281810783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162581 (A097337 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217553.P3623982728281810783

/-! ## A217553.P181551257217715957

`record[Δ[A162581(n)]*A000035(n+1)]`
-/

namespace A217553.P181551257217715957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162581 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217553.P181551257217715957

/-! ## A217553.P1140303805335422528

`∑{#}[n, A162581(#)*A162581(n-#)]`
-/

namespace A217553.P1140303805335422528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A162581 k * A162581 (n - k)

end

end A217553.P1140303805335422528

/-! ## A217553.P6509519210647366203

`A162581(2*n+1)-A162581(2*n)`
-/

namespace A217553.P6509519210647366203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162581 (2 * n + 1) - A162581 (2 * n)

end

end A217553.P6509519210647366203

/-!
# A217554: Numbers of the form x^2 - 1 that are the sum of 3 nonzero square numbers.

The programs for A217554, there is no canonical definition to state claims against.
-/

/-! ## A217554.P2616673876109907329

`∩[A000408(n+1), n²-1]`
-/

namespace A217554.P2616673876109907329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217554.P2616673876109907329

/-! ## A217554.P10577421932426979673

`∩[A144020(n+1), n²]-1`
-/

namespace A217554.P10577421932426979673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144020 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℤ) - 1

end

end A217554.P10577421932426979673

/-! ## A217554.P13713926510667061328

`∩[A005563(n), A000408(n+1)]`
-/

namespace A217554.P13713926510667061328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217554.P13713926510667061328

/-! ## A217554.P11384821884424946398

`∩[A132411(n), A000408(n+1)]`
-/

namespace A217554.P11384821884424946398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132411 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217554.P11384821884424946398

/-! ## A217554.P1311549239478137510

`∩[A000290(n), A144020(n+1)]-1`
-/

namespace A217554.P1311549239478137510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144020 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A217554.P1311549239478137510

/-! ## A217554.P9788917061926575242

`eq[A007913(n+1), A057427(A025427(n))]`
-/

namespace A217554.P9788917061926575242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A025427 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217554.P9788917061926575242

/-!
# A217555: Terms as well as digits are of alternating parity; this is the lexicographically earliest injective sequence with this property.

The programs for A217555, there is no canonical definition to state claims against.
-/

/-! ## A217555.P2978875395099635486

`A217556(A024661(n+1))`
-/

namespace A217555.P2978875395099635486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217556 (A024661 (n + 1)).toNat

end

end A217555.P2978875395099635486

/-! ## A217555.P3006168630593690626

`A217556(A102493(n+2))`
-/

namespace A217555.P3006168630593690626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217556 (A102493 (n + 2)).toNat

end

end A217555.P3006168630593690626

/-! ## A217555.P11656130512388923987

`filter[A217556(n+1), A228710(#)]`
-/

namespace A217555.P11656130512388923987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A217555.P11656130512388923987

/-! ## A217555.P14055510742701842927

`A028310(A062399(n)+Δ[A137667(n)])`
-/

namespace A217555.P14055510742701842927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A062399 n + (f1 (n + 1) - f1 n)).toNat

end

end A217555.P14055510742701842927

/-! ## A217555.P7183575131639792574

`C(A111705(A061497(n+1)), A046563(n+1))`
-/

namespace A217555.P7183575131639792574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A111705 (A061497 (n + 1)).toNat).toNat (A046563 (n + 1)).toNat

end

end A217555.P7183575131639792574

/-!
# A217556: Terms as well as ending/starting digits are of alternating parity; this is the lexicographically earliest injective sequence with this property.

The programs for A217556, there is no canonical definition to state claims against.
-/

/-! ## A217556.P6835198430162721717

`or(A007814(A007533(n)), A275775(n+1))`
-/

namespace A217556.P6835198430162721717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (A007533 n).toNat) (A275775 (n + 1))

end

end A217556.P6835198430162721717

/-! ## A217556.P1440724557788525145

`or(A188014(A000032(n)), A275775(n+1))`
-/

namespace A217556.P1440724557788525145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A188014 (A000032 n).toNat) (A275775 (n + 1))

end

end A217556.P1440724557788525145

/-! ## A217556.P6470897141815407843

`A275775(n+1)+A045887(n)^A022102(n)`
-/

namespace A217556.P6470897141815407843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275775 (n + 1) : ℚ) + (A045887 n : ℚ) ^ (A022102 n : ℤ)

end

end A217556.P6470897141815407843

/-! ## A217556.P17122173126567929227

`A275775(n+1)+A045887(n)^A164766(n)`
-/

namespace A217556.P17122173126567929227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275775 (n + 1) : ℚ) + (A045887 n : ℚ) ^ (A164766 n : ℤ)

end

end A217556.P17122173126567929227

/-! ## A217556.P14733510969190853301

`A275775(n+1)+A342845(n)^A022102(n)`
-/

namespace A217556.P14733510969190853301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275775 (n + 1) : ℚ) + (A342845 n : ℚ) ^ (A022102 n : ℤ)

end

end A217556.P14733510969190853301

/-!
# A217557: The difference between the reversal of an 8-bit integer and the original integer.

The programs for A217557, the canonical program `A217557.P9555844630679007877` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217557 has offset 0).

The definition of A217557 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160638, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A217557.P9555844630679007877

`A160638(n)-n`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A217557

/-- `A160638(n)-n` -/
def P9555844630679007877.Spec : Prop :=
  ∀ n, P9555844630679007877.a n = A217557 n

theorem P9555844630679007877.correct : P9555844630679007877.Spec := by
  intro n
  simp only [A217557]

end A217557

/-! ## A217557.P2238335025506747917

`A001478(n+1)+A160638(n)+1`
-/

namespace A217557.P2238335025506747917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A160638 n + 1)

end

end A217557.P2238335025506747917

namespace A217557

/-- `A001478(n+1)+A160638(n)+1` -/
def P2238335025506747917.Spec : Prop :=
  ∀ n, P2238335025506747917.a n = A217557 n

theorem P2238335025506747917.correct : P2238335025506747917.Spec := by
  intro n
  simp only [A217557, Nat.add_sub_cancel, A217557.P2238335025506747917.a, A217557.P9555844630679007877.a, A001478, A001478.P11279598861711037921.a, A160638, A160638.P1424337119483227896.a, A030101, A030101.P16184294017372777612.a, A055945, A055945.P5963763732554067333.a, A038572, A038572.P6039021529582153667.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A217557

/-! ## A217557.P5310078683456983362

`A001489(n+1)+A160638(n)+1`
-/

namespace A217557.P5310078683456983362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 1) + (A160638 n + 1)

end

end A217557.P5310078683456983362

namespace A217557

/-- `A001489(n+1)+A160638(n)+1` -/
def P5310078683456983362.Spec : Prop :=
  ∀ n, P5310078683456983362.a n = A217557 n

theorem P5310078683456983362.correct : P5310078683456983362.Spec := by
  intro n
  simp only [A217557, Nat.add_sub_cancel, A217557.P5310078683456983362.a, A217557.P9555844630679007877.a, A001489, A001489.P15233530513763566776.a, A160638, A160638.P1424337119483227896.a, A030101, A030101.P16184294017372777612.a, A055945, A055945.P5963763732554067333.a, A038572, A038572.P6039021529582153667.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A217557

/-! ## A217557.P6135539968742949169

`A051494(2*n+1)+A160638(n)+1`
-/

namespace A217557.P6135539968742949169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051494 (2 * n + 1) + (A160638 n + 1)

end

end A217557.P6135539968742949169

namespace A217557

/-- `A051494(2*n+1)+A160638(n)+1` -/
def P6135539968742949169.Spec : Prop :=
  ∀ n, P6135539968742949169.a n = A217557 n

end A217557

/-! ## A217557.P11661766638270054242

`A024000(n)+A023443(A160638(n))`
-/

namespace A217557.P11661766638270054242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n + A023443 (A160638 n).toNat

end

end A217557.P11661766638270054242

namespace A217557

/-- `A024000(n)+A023443(A160638(n))` -/
def P11661766638270054242.Spec : Prop :=
  ∀ n, P11661766638270054242.a n = A217557 n

end A217557

/-! ## A217557.P8582214253182739936

`A001489(n)+abs(A001489(A160638(n)))`
-/

namespace A217557.P8582214253182739936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + |A001489 (A160638 n).toNat|

end

end A217557.P8582214253182739936

namespace A217557

/-- `A001489(n)+abs(A001489(A160638(n)))` -/
def P8582214253182739936.Spec : Prop :=
  ∀ n, P8582214253182739936.a n = A217557 n

end A217557

/-! ## A217557.P13960503949925535516

`A217589(A152691(n))/4-n`
-/

namespace A217557.P13960503949925535516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217589 (A152691 n).toNat : ℚ) / 4 - (n : ℚ)

end

end A217557.P13960503949925535516

namespace A217557

/-- `A217589(A152691(n))/4-n` -/
def P13960503949925535516.Spec : Prop :=
  ∀ n, P13960503949925535516.a n = (A217557 n : ℚ)

end A217557

/-! ## A217557.P8736205057664984593

`A001489(n)+A217589(A152691(n))/4`
-/

namespace A217557.P8736205057664984593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001489 n : ℚ) + (A217589 (A152691 n).toNat : ℚ) / 4

end

end A217557.P8736205057664984593

namespace A217557

/-- `A001489(n)+A217589(A152691(n))/4` -/
def P8736205057664984593.Spec : Prop :=
  ∀ n, P8736205057664984593.a n = (A217557 n : ℚ)

end A217557

/-! ## A217557.P7153204157517308568

`A196199(n²)+A160638(n)`
-/

namespace A217557.P7153204157517308568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (n ^ 2) + A160638 n

end

end A217557.P7153204157517308568

namespace A217557

/-- `A196199(n²)+A160638(n)` -/
def P7153204157517308568.Spec : Prop :=
  ∀ n, P7153204157517308568.a n = A217557 n

end A217557

/-! ## A217557.P16750115458043334018

`A055945(A239374(n+2)²²²-(n+1))`
-/

namespace A217557.P16750115458043334018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 (((A239374 (n + 2) ^ 2) ^ 2) ^ 2 - (n + 1 : ℤ)).toNat

end

end A217557.P16750115458043334018

namespace A217557

/-- `A055945(A239374(n+2)²²²-(n+1))` -/
def P16750115458043334018.Spec : Prop :=
  ∀ n, P16750115458043334018.a n = A217557 n

end A217557

/-!
# A217558: Split-and-swap on 8-bit integers.

The programs for A217558, the canonical program `A217558.P16797002515684870992` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217558 has offset 0).

The definition of A217558 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217558.P4730398712544936185

`17*A053836(n)-n`
-/

namespace A217558.P4730398712544936185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A053836 n - (n : ℤ)

end

end A217558.P4730398712544936185

namespace A217558

/-- `17*A053836(n)-n` -/
def P4730398712544936185.Spec : Prop :=
  ∀ n, P4730398712544936185.a n = A217558 n

end A217558

/-! ## A217558.P16797002515684870992

`A008599(A053836(n))-n`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A217558

/-- `A008599(A053836(n))-n` -/
def P16797002515684870992.Spec : Prop :=
  ∀ n, P16797002515684870992.a n = A217558 n

theorem P16797002515684870992.correct : P16797002515684870992.Spec := by
  intro n
  simp only [A217558]

end A217558

/-! ## A217558.P4442279016794710325

`xor(n, A008599(A160700(n)))`
-/

namespace A217558.P4442279016794710325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A008599 (A160700 n).toNat)

end

end A217558.P4442279016794710325

namespace A217558

/-- `xor(n, A008599(A160700(n)))` -/
def P4442279016794710325.Spec : Prop :=
  ∀ n, P4442279016794710325.a n = A217558 n

end A217558

/-! ## A217558.P6951719724139596218

`xor(n, A161440(A160700(n)+1))`
-/

namespace A217558.P6951719724139596218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A161440 (A160700 n + 1).toNat)

end

end A217558.P6951719724139596218

namespace A217558

/-- `xor(n, A161440(A160700(n)+1))` -/
def P6951719724139596218.Spec : Prop :=
  ∀ n, P6951719724139596218.a n = A217558 n

end A217558

/-! ## A217558.P16566898961363984820

`A215137(A053836(n))-A000027(n+1)`
-/

namespace A217558.P16566898961363984820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 (A053836 n).toNat - A000027 (n + 1)

end

end A217558.P16566898961363984820

namespace A217558

/-- `A215137(A053836(n))-A000027(n+1)` -/
def P16566898961363984820.Spec : Prop :=
  ∀ n, P16566898961363984820.a n = A217558 n

theorem P16566898961363984820.correct : P16566898961363984820.Spec := by
  intro n
  simp only [A217558, Nat.add_sub_cancel, A217558.P16566898961363984820.a, A217558.P16797002515684870992.a, A000027, A000027.P10331202704469894836.a, A008599, A008599.P9337740256108162749.a, A053836, A053836.P6566921165131624833.a, A215137, A215137.P16345260773211617231.a, A054900, A054900.P10951327238473995848.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A217558

/-! ## A217558.P5465795497290621560

`A215137(A053836(n))+∑[n+1]+1-A000217(n+2)`
-/

namespace A217558.P5465795497290621560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 (A053836 n).toNat + (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - A000217 (n + 2))

end

end A217558.P5465795497290621560

namespace A217558

/-- `A215137(A053836(n))+∑[n+1]+1-A000217(n+2)` -/
def P5465795497290621560.Spec : Prop :=
  ∀ n, P5465795497290621560.a n = A217558 n

end A217558

/-! ## A217558.P8084098985105208174

`A341288(A046691(n+12)+A016789(n+11))`
-/

namespace A217558.P8084098985105208174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341288 (A046691 (n + 12) + A016789 (n + 11)).toNat

end

end A217558.P8084098985105208174

namespace A217558

/-- `A341288(A046691(n+12)+A016789(n+11))` -/
def P8084098985105208174.Spec : Prop :=
  ∀ n, P8084098985105208174.a n = A217558 n

end A217558

/-! ## A217558.P9031086744199137539

`A008598(n)%A341780(A174571(A001844(n)))`
-/

namespace A217558.P9031086744199137539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008598 n) (A341780 (A174571 (A001844 n).toNat).toNat)

end

end A217558.P9031086744199137539

namespace A217558

/-- `A008598(n)%A341780(A174571(A001844(n)))` -/
def P9031086744199137539.Spec : Prop :=
  ∀ n, P9031086744199137539.a n = A217558 n

end A217558

/-! ## A217558.P10079139971578832960

`A106485(A126006(A106485(n)))`
-/

namespace A217558.P10079139971578832960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106485 (A126006 (A106485 n).toNat).toNat

end

end A217558.P10079139971578832960

namespace A217558

/-- `A106485(A126006(A106485(n)))` -/
def P10079139971578832960.Spec : Prop :=
  ∀ n, P10079139971578832960.a n = A217558 n

end A217558

/-!
# A217561: The only prime p such that 3a < p < 3b where a, b are consecutive primes.

The programs for A217561, there is no canonical definition to state claims against.
-/

/-! ## A217561.P3782775627292744724

`A245396(A246784(n+3))%A259355(n+4)`
-/

namespace A217561.P3782775627292744724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245396 (A246784 (n + 3)).toNat) (A259355 (n + 4))

end

end A217561.P3782775627292744724

/-! ## A217561.P10246095225315862705

`A245396(A299963(n+1)+A259672(n+1))`
-/

namespace A217561.P10246095225315862705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245396 (A299963 (n + 1) + A259672 (n + 1)).toNat

end

end A217561.P10246095225315862705

/-!
# A217562: Even numbers not divisible by 5.

The programs for A217562, the canonical program `A217562.P17289016995804237548` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217562 has offset 1).

The definition of A217562 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217562.P17289016995804237548

`2*(n+1+floor(n/4))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217562

/-- `2*(n+1+floor(n/4))` -/
def P17289016995804237548.Spec : Prop :=
  ∀ n, P17289016995804237548.a n = A217562 (n + 1)

theorem P17289016995804237548.correct : P17289016995804237548.Spec := by
  intro n
  simp only [A217562, Nat.add_sub_cancel]

end A217562

/-! ## A217562.P4482724805498524618

`ogf((2+2x+2x^2+2x^3+2x^4)/(1-x-x^4+x^5))`
-/

namespace A217562.P4482724805498524618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, 2, 2, 2] [1, -1, 0, 0, -1, 1] n

end

end A217562.P4482724805498524618

namespace A217562

/-- `ogf((2+2x+2x^2+2x^3+2x^4)/(1-x-x^4+x^5))` -/
def P4482724805498524618.Spec : Prop :=
  ∀ n, P4482724805498524618.a n = A217562 (n + 1)

end A217562

/-! ## A217562.P12198856118537788620

`2*comp[lcm(n, 5)]`
-/

namespace A217562.P12198856118537788620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A217562.P12198856118537788620

namespace A217562

/-- `2*comp[lcm(n, 5)]` -/
def P12198856118537788620.Spec : Prop :=
  ∀ n, (P12198856118537788620.a n : ℤ) = A217562 (n + 1)

end A217562

/-! ## A217562.P14178841713123145396

`filter[2*n, gcd(5, #)]`
-/

namespace A217562.P14178841713123145396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Nat.gcd 5 (f1 j) = 1) n)

end

end A217562.P14178841713123145396

namespace A217562

/-- `filter[2*n, gcd(5, #)]` -/
def P14178841713123145396.Spec : Prop :=
  ∀ n, (P14178841713123145396.a n : ℤ) = A217562 (n + 1)

end A217562

/-! ## A217562.P571461676951222800

`ceil(or(3, 5*n)/2)`
-/

namespace A217562.P571461676951222800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 3 (5 * n) : ℚ) / 2⌉

end

end A217562.P571461676951222800

namespace A217562

/-- `ceil(or(3, 5*n)/2)` -/
def P571461676951222800.Spec : Prop :=
  ∀ n, P571461676951222800.a n = A217562 (n + 1)

end A217562

/-! ## A217562.P15885244106518131647

`round(or(3, 5*n)/2)`
-/

namespace A217562.P15885244106518131647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 3 (5 * n) : ℚ) / 2)

end

end A217562.P15885244106518131647

namespace A217562

/-- `round(or(3, 5*n)/2)` -/
def P15885244106518131647.Spec : Prop :=
  ∀ n, P15885244106518131647.a n = A217562 (n + 1)

end A217562

/-! ## A217562.P5954307042419193291

`and(∑[gcd(2, n)]+n, -2)`
-/

namespace A217562.P5954307042419193291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ) (-2)

end

end A217562.P5954307042419193291

namespace A217562

/-- `and(∑[gcd(2, n)]+n, -2)` -/
def P5954307042419193291.Spec : Prop :=
  ∀ n, P5954307042419193291.a n = A217562 (n + 1)

end A217562

/-! ## A217562.P4090621788020737772

`filter[2*n, (#^4)%5]`
-/

namespace A217562.P4090621788020737772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => f1 j ^ 4 % 5 = 1) n)

end

end A217562.P4090621788020737772

namespace A217562

/-- `filter[2*n, (#^4)%5]` -/
def P4090621788020737772.Spec : Prop :=
  ∀ n, (P4090621788020737772.a n : ℤ) = A217562 (n + 1)

end A217562

/-! ## A217562.P49770936695262102

`lt[n, n*n%6]+n`
-/

namespace A217562.P49770936695262102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + n

end

end A217562.P49770936695262102

namespace A217562

/-- `lt[n, n*n%6]+n` -/
def P49770936695262102.Spec : Prop :=
  ∀ n, (P49770936695262102.a n : ℤ) = A217562 (n + 1)

end A217562

/-! ## A217562.P2166545788805802926

`a(n-4)+10` with `a(0)=2, a(1)=4, a(2)=6, a(3)=8`
-/

namespace A217562.P2166545788805802926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 6, 8] fun n a =>
  a (n - 4) + 10

end

end A217562.P2166545788805802926

namespace A217562

/-- `a(n-4)+10` -/
def P2166545788805802926.Spec : Prop :=
  ∀ n, (P2166545788805802926.a n : ℤ) = A217562 (n + 1)

end A217562

/-! ## A217562.P16623553069024855246

`∑[floor(a(n-4))]` with `a(0)=2, a(1)=2, a(2)=2, a(3)=2, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A217562.P16623553069024855246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 2, 2, 4] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217562.P16623553069024855246

namespace A217562

/-- `∑[floor(a(n-4))]` -/
def P16623553069024855246.Spec : Prop :=
  ∀ n, (P16623553069024855246.a n : ℤ) = A217562 (n + 1)

end A217562

/-! ## A217562.P16292121198525246917

`∑[2*gcd(n+2, ∑[n])]-2`
-/

namespace A217562.P16292121198525246917
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.gcd (n + 2) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A217562.P16292121198525246917

namespace A217562

/-- `∑[2*gcd(n+2, ∑[n])]-2` -/
def P16292121198525246917.Spec : Prop :=
  ∀ n, P16292121198525246917.a n = A217562 (n + 1)

end A217562

/-! ## A217562.P7802396891748580737

`∑[a(n-4)%5]` with `a(0)=2, a(1)=2, a(2)=2, a(3)=2, a(4)=4`
-/

namespace A217562.P7802396891748580737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 2, 2, 4] fun n f1 =>
  f1 (n - 4) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217562.P7802396891748580737

namespace A217562

/-- `∑[a(n-4)%5]` -/
def P7802396891748580737.Spec : Prop :=
  ∀ n, (P7802396891748580737.a n : ℤ) = A217562 (n + 1)

end A217562

/-! ## A217562.P13266672038697756567

`record[2*(n+1-val(n+1, 5))]`
-/

namespace A217562.P13266672038697756567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) - (SequenceMachineLib.valuation (n + 1) 5 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217562.P13266672038697756567

namespace A217562

/-- `record[2*(n+1-val(n+1, 5))]` -/
def P13266672038697756567.Spec : Prop :=
  ∀ n, P13266672038697756567.a n = A217562 (n + 1)

end A217562

/-! ## A217562.P14347414147316090385

`∑[and(2, (n-1)^3)]+2*n`
-/

namespace A217562.P14347414147316090385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (((n : ℤ) - 1) ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n : ℤ)

end

end A217562.P14347414147316090385

namespace A217562

/-- `∑[and(2, (n-1)^3)]+2*n` -/
def P14347414147316090385.Spec : Prop :=
  ∀ n, P14347414147316090385.a n = A217562 (n + 1)

end A217562

/-! ## A217562.P11568742593018238513

`lt[(n+3)², lcm(n+5, 2*n)]`
-/

namespace A217562.P11568742593018238513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 5) (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A217562.P11568742593018238513

namespace A217562

/-- `lt[(n+3)², lcm(n+5, 2*n)]` -/
def P11568742593018238513.Spec : Prop :=
  ∀ n, (P11568742593018238513.a n : ℤ) = A217562 (n + 1)

end A217562

/-! ## A217562.P4984220280675434774

`∑[and(2, lcm(n-1, (n+1)²))+2]`
-/

namespace A217562.P4984220280675434774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (Int.lcm ((n : ℤ) - 1) ((n + 1) ^ 2 : ℤ)) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217562.P4984220280675434774

namespace A217562

/-- `∑[and(2, lcm(n-1, (n+1)²))+2]` -/
def P4984220280675434774.Spec : Prop :=
  ∀ n, (P4984220280675434774.a n : ℤ) = A217562 (n + 1)

end A217562

/-! ## A217562.P6566107091686140918

`A047247(n+1)+n`
-/

namespace A217562.P6566107091686140918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047247 (n + 1) + (n : ℤ)

end

end A217562.P6566107091686140918

namespace A217562

/-- `A047247(n+1)+n` -/
def P6566107091686140918.Spec : Prop :=
  ∀ n, P6566107091686140918.a n = A217562 (n + 1)

end A217562

/-! ## A217562.P1204118223369514995

`filter[2*n, A011558(#)]`
-/

namespace A217562.P1204118223369514995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j) = 1) n)

end

end A217562.P1204118223369514995

namespace A217562

/-- `filter[2*n, A011558(#)]` -/
def P1204118223369514995.Spec : Prop :=
  ∀ n, (P1204118223369514995.a n : ℤ) = A217562 (n + 1)

end A217562

/-! ## A217562.P11452457625140652561

`A129756(n)+Δ[n²]`
-/

namespace A217562.P11452457625140652561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A217562.P11452457625140652561

namespace A217562

/-- `A129756(n)+Δ[n²]` -/
def P11452457625140652561.Spec : Prop :=
  ∀ n, P11452457625140652561.a n = A217562 (n + 1)

theorem P11452457625140652561.correct : P11452457625140652561.Spec := by
  intro n
  simp only [A217562, Nat.add_sub_cancel, A217562.P11452457625140652561.f1, A217562.P11452457625140652561.a, A217562.P17289016995804237548.a, A129756, A129756.P177371408475453503.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A217562

/-!
# A217564: Number of primes between prime(n)/2 and prime(n+1)/2.

The programs for A217564, the canonical program `A217564.P832865562934600438` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217564 has offset 1).

The definition of A217564 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079952, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A217564.P832865562934600438

`A079952(n+2)-A079952(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A217564

/-- `A079952(n+2)-A079952(n+1)` -/
def P832865562934600438.Spec : Prop :=
  ∀ n, P832865562934600438.a n = A217564 (n + 1)

theorem P832865562934600438.correct : P832865562934600438.Spec := by
  intro n
  simp only [A217564, Nat.add_sub_cancel]

end A217564

/-! ## A217564.P14335457749562942794

`1-Δ[A107347(n+1)]`
-/

namespace A217564.P14335457749562942794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A217564.P14335457749562942794

namespace A217564

/-- `1-Δ[A107347(n+1)]` -/
def P14335457749562942794.Spec : Prop :=
  ∀ n, P14335457749562942794.a n = A217564 (n + 1)

end A217564

/-! ## A217564.P17811551784898701935

`Δ[A298861(n+1)]-1`
-/

namespace A217564.P17811551784898701935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A217564.P17811551784898701935

namespace A217564

/-- `Δ[A298861(n+1)]-1` -/
def P17811551784898701935.Spec : Prop :=
  ∀ n, P17811551784898701935.a n = A217564 (n + 1)

end A217564

/-! ## A217564.P11778558520217963494

`Δ[A000720(A079953(n+1))]`
-/

namespace A217564.P11778558520217963494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A079953 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217564.P11778558520217963494

namespace A217564

/-- `Δ[A000720(A079953(n+1))]` -/
def P11778558520217963494.Spec : Prop :=
  ∀ n, P11778558520217963494.a n = A217564 (n + 1)

end A217564

/-! ## A217564.P5806120348957394492

`Δ[A000720(A130290(n+1))]`
-/

namespace A217564.P5806120348957394492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A130290 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217564.P5806120348957394492

namespace A217564

/-- `Δ[A000720(A130290(n+1))]` -/
def P5806120348957394492.Spec : Prop :=
  ∀ n, P5806120348957394492.a n = A217564 (n + 1)

end A217564

/-! ## A217564.P4769485546491967597

`A247808(Δ[A298861(n+1)])`
-/

namespace A217564.P4769485546491967597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247808 (f1 (n + 1) - f1 n).toNat

end

end A217564.P4769485546491967597

namespace A217564

/-- `A247808(Δ[A298861(n+1)])` -/
def P4769485546491967597.Spec : Prop :=
  ∀ n, P4769485546491967597.a n = A217564 (n + 1)

end A217564

/-! ## A217564.P11559895666731293440

`Δ[A000720(floor(A000040(n+1)/2))]`
-/

namespace A217564.P11559895666731293440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ⌊(A000040 (n + 1) : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217564.P11559895666731293440

namespace A217564

/-- `Δ[A000720(floor(A000040(n+1)/2))]` -/
def P11559895666731293440.Spec : Prop :=
  ∀ n, P11559895666731293440.a n = A217564 (n + 1)

end A217564

/-! ## A217564.P15511204274658113192

`1-Δ[A056171(Δ[A007504(n)])]`
-/

namespace A217564.P15511204274658113192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A217564.P15511204274658113192

namespace A217564

/-- `1-Δ[A056171(Δ[A007504(n)])]` -/
def P15511204274658113192.Spec : Prop :=
  ∀ n, P15511204274658113192.a n = A217564 (n + 1)

end A217564

/-! ## A217564.P3829860938330267273

`1-Δ[A056171(A000040(n+1))]`
-/

namespace A217564.P3829860938330267273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A217564.P3829860938330267273

namespace A217564

/-- `1-Δ[A056171(A000040(n+1))]` -/
def P3829860938330267273.Spec : Prop :=
  ∀ n, P3829860938330267273.a n = A217564 (n + 1)

end A217564

/-! ## A217564.P1807621797842701359

`1-Δ[A056171(A006093(n+1))]`
-/

namespace A217564.P1807621797842701359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A217564.P1807621797842701359

namespace A217564

/-- `1-Δ[A056171(A006093(n+1))]` -/
def P1807621797842701359.Spec : Prop :=
  ∀ n, P1807621797842701359.a n = A217564 (n + 1)

end A217564

/-! ## A217564.P3994490926859516087

`1-Δ[A056171(record[A000010(n+1)])]`
-/

namespace A217564.P3994490926859516087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A217564.P3994490926859516087

namespace A217564

/-- `1-Δ[A056171(record[A000010(n+1)])]` -/
def P3994490926859516087.Spec : Prop :=
  ∀ n, P3994490926859516087.a n = A217564 (n + 1)

end A217564

/-! ## A217564.P18249800629303670856

`1-Δ[A056171(A040976(n+1)+1)]`
-/

namespace A217564.P18249800629303670856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A040976 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A217564.P18249800629303670856

namespace A217564

/-- `1-Δ[A056171(A040976(n+1)+1)]` -/
def P18249800629303670856.Spec : Prop :=
  ∀ n, P18249800629303670856.a n = A217564 (n + 1)

end A217564

/-! ## A217564.P8542126163148706053

`Δ[A000040(n+1)-A338361(n+1)]+1`
-/

namespace A217564.P8542126163148706053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A338361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A217564.P8542126163148706053

namespace A217564

/-- `Δ[A000040(n+1)-A338361(n+1)]+1` -/
def P8542126163148706053.Spec : Prop :=
  ∀ n, P8542126163148706053.a n = A217564 (n + 1)

theorem P8542126163148706053.correct : P8542126163148706053.Spec := by
  intro n
  simp only [A217564, Nat.add_sub_cancel, A217564.P8542126163148706053.f1, A217564.P8542126163148706053.a, A217564.P832865562934600438.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A079952, A079952.P4380485692026145180.f1, A079952.P4380485692026145180.a, A338361, A338361.P5965664958947979086.f1, A338361.P5965664958947979086.a, A055679, A055679.P10795285082955514772.f2, A055679.P10795285082955514772.f1, A055679.P10795285082955514772.a, A369610, A369610.P10507155967084453302.a, A014689, A014689.P6286543075765329050.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A217564

/-! ## A217564.P8929726958042330070

`A039733(n+2)-A049084(A079953(n+1))`
-/

namespace A217564.P8929726958042330070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039733 (n + 2) - A049084 (A079953 (n + 1)).toNat

end

end A217564.P8929726958042330070

namespace A217564

/-- `A039733(n+2)-A049084(A079953(n+1))` -/
def P8929726958042330070.Spec : Prop :=
  ∀ n, P8929726958042330070.a n = A217564 (n + 1)

end A217564

/-! ## A217564.P5247373372466627946

`Δ[A056172(Δ[A007504(n)])]`
-/

namespace A217564.P5247373372466627946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217564.P5247373372466627946

namespace A217564

/-- `Δ[A056172(Δ[A007504(n)])]` -/
def P5247373372466627946.Spec : Prop :=
  ∀ n, P5247373372466627946.a n = A217564 (n + 1)

end A217564

/-! ## A217564.P7991603625094491733

`Δ[A242096(Δ[A007504(n)])]`
-/

namespace A217564.P7991603625094491733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217564.P7991603625094491733

namespace A217564

/-- `Δ[A242096(Δ[A007504(n)])]` -/
def P7991603625094491733.Spec : Prop :=
  ∀ n, P7991603625094491733.a n = A217564 (n + 1)

end A217564

/-! ## A217564.P18293282253403164217

`Δ[A056172(A000040(n+1))]`
-/

namespace A217564.P18293282253403164217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217564.P18293282253403164217

namespace A217564

/-- `Δ[A056172(A000040(n+1))]` -/
def P18293282253403164217.Spec : Prop :=
  ∀ n, P18293282253403164217.a n = A217564 (n + 1)

end A217564

/-! ## A217564.P12980216310964749078

`Δ[A056172(A039915(n+1))]`
-/

namespace A217564.P12980216310964749078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A039915 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217564.P12980216310964749078

namespace A217564

/-- `Δ[A056172(A039915(n+1))]` -/
def P12980216310964749078.Spec : Prop :=
  ∀ n, P12980216310964749078.a n = A217564 (n + 1)

end A217564

/-! ## A217564.P14543961061674690220

`Δ[A056172(A008578(n+2))]`
-/

namespace A217564.P14543961061674690220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217564.P14543961061674690220

namespace A217564

/-- `Δ[A056172(A008578(n+2))]` -/
def P14543961061674690220.Spec : Prop :=
  ∀ n, P14543961061674690220.a n = A217564 (n + 1)

end A217564

/-! ## A217564.P6036679703290926391

`Δ[A056172(A068499(n+2))]`
-/

namespace A217564.P6036679703290926391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A068499 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217564.P6036679703290926391

namespace A217564

/-- `Δ[A056172(A068499(n+2))]` -/
def P6036679703290926391.Spec : Prop :=
  ∀ n, P6036679703290926391.a n = A217564 (n + 1)

end A217564

/-!
# A217567: E.g.f. satisfies: A(x) = ( Sum_{n>=0} x^n/n!^2 )^A(x) where A(x) = Sum_{n>=0} a(n)*x^n/n!^2.

The programs for A217567, there is no canonical definition to state claims against.
-/

/-! ## A217567.P7147692288448956280

`A320562(A326949(n))`
-/

namespace A217567.P7147692288448956280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320562 (A326949 n).toNat

end

end A217567.P7147692288448956280

/-!
# A217568: Rows of the 8 magic squares of order 3 and magic sum 15, lexicographically sorted.

The programs for A217568, there is no canonical definition to state claims against.
-/

/-! ## A217568.P5635364223022973324

`A320871(n+1)-A320841(A035294(3*n+1))`
-/

namespace A217568.P5635364223022973324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320871 (n + 1) - A320841 (A035294 (3 * n + 1)).toNat

end

end A217568.P5635364223022973324

/-! ## A217568.P16430490534365140497

`A120506(A120506(n+1))*A320871(A088599(n+1))`
-/

namespace A217568.P16430490534365140497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120506 (A120506 (n + 1)).toNat * A320871 (A088599 (n + 1)).toNat

end

end A217568.P16430490534365140497

/-!
# A217569: Expansion of H(q)*G(q^11) where H and G are respectively the g.f. of A003106 and A003114 (Rogers-Ramanujan functions).

The programs for A217569, there is no canonical definition to state claims against.
-/

/-! ## A217569.P1681168596265994730

`A056556(round(sqrt(A026537(n))))`
-/

namespace A217569.P1681168596265994730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (SequenceMachineLib.roundAway (Real.sqrt (A026537 n : ℝ))).toNat

end

end A217569.P1681168596265994730

/-! ## A217569.P9170728619168657094

`A056556(xor(A002965(n), A023533(n)))`
-/

namespace A217569.P9170728619168657094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (Int.xor (A002965 n) (A023533 n)).toNat

end

end A217569.P9170728619168657094

/-! ## A217569.P12436665541842062632

`A056556(xor(A002965(n), A256574(n)))`
-/

namespace A217569.P12436665541842062632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (Int.xor (A002965 n) (A256574 n)).toNat

end

end A217569.P12436665541842062632

/-! ## A217569.P13472011225811116512

`A056556(xor(A002965(n), A331984(n)))`
-/

namespace A217569.P13472011225811116512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (Int.xor (A002965 n) (A331984 n)).toNat

end

end A217569.P13472011225811116512

/-! ## A217569.P10173845409781947523

`A056556(A154269(n+1)+A002965(n))`
-/

namespace A217569.P10173845409781947523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A154269 (n + 1) + A002965 n).toNat

end

end A217569.P10173845409781947523

/-!
# A217570: Numbers n such that floor(sqrt(n)) = floor(n/(floor(sqrt(n))-1))-1.

The programs for A217570, the canonical program `A217570.P4492516139347858203` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217570 has offset 1).

The definition of A217570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217570.P6774066497696543357

`col(n)+(row(n)+3)²`
-/

namespace A217570.P6774066497696543357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n + (SequenceMachineLib.triRow n + 3) ^ 2

end

end A217570.P6774066497696543357

namespace A217570

/-- `col(n)+(row(n)+3)²` -/
def P6774066497696543357.Spec : Prop :=
  ∀ n, (P6774066497696543357.a n : ℤ) = A217570 (n + 1)

end A217570

/-! ## A217570.P3269319286388927777

`lt[round(sqrt(n+3))²-n, 1]`
-/

namespace A217570.P3269319286388927777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 3 : ℝ)) ^ 2 - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A217570.P3269319286388927777

namespace A217570

/-- `lt[round(sqrt(n+3))²-n, 1]` -/
def P3269319286388927777.Spec : Prop :=
  ∀ n, (P3269319286388927777.a n : ℤ) = A217570 (n + 1)

end A217570

/-! ## A217570.P1393822587853167323

`C(∑[char[∑[n+1]]]+6, 2)+n-6`
-/

namespace A217570.P1393822587853167323
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 6) 2 + n : ℤ) - 6

end

end A217570.P1393822587853167323

namespace A217570

/-- `C(∑[char[∑[n+1]]]+6, 2)+n-6` -/
def P1393822587853167323.Spec : Prop :=
  ∀ n, P1393822587853167323.a n = A217570 (n + 1)

end A217570

/-! ## A217570.P5511409263195069366

`A189151(comp[∑[n]])-1`
-/

namespace A217570.P5511409263195069366
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189151 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1

end

end A217570.P5511409263195069366

namespace A217570

/-- `A189151(comp[∑[n]])-1` -/
def P5511409263195069366.Spec : Prop :=
  ∀ n, P5511409263195069366.a n = A217570 (n + 1)

end A217570

/-! ## A217570.P12269513909090468477

`A055999(comp[∑[n]]-n)+n`
-/

namespace A217570.P12269513909090468477
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) + (n : ℤ)

end

end A217570.P12269513909090468477

namespace A217570

/-- `A055999(comp[∑[n]]-n)+n` -/
def P12269513909090468477.Spec : Prop :=
  ∀ n, P12269513909090468477.a n = A217570 (n + 1)

end A217570

/-! ## A217570.P10111885277089297609

`A155212(∑[char[∑[n]]])+n+2`
-/

namespace A217570.P10111885277089297609
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155212 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 2 : ℤ)

end

end A217570.P10111885277089297609

namespace A217570

/-- `A155212(∑[char[∑[n]]])+n+2` -/
def P10111885277089297609.Spec : Prop :=
  ∀ n, P10111885277089297609.a n = A217570 (n + 1)

end A217570

/-! ## A217570.P11168109157378440223

`A056000(∑[char[∑[n]]])+n+4`
-/

namespace A217570.P11168109157378440223
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056000 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 4 : ℤ)

end

end A217570.P11168109157378440223

namespace A217570

/-- `A056000(∑[char[∑[n]]])+n+4` -/
def P11168109157378440223.Spec : Prop :=
  ∀ n, P11168109157378440223.a n = A217570 (n + 1)

end A217570

/-! ## A217570.P17663060551135878389

`A052905(comp[∑[n]]-n)+n-1`
-/

namespace A217570.P17663060551135878389
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) + ((n : ℤ) - 1)

end

end A217570.P17663060551135878389

namespace A217570

/-- `A052905(comp[∑[n]]-n)+n-1` -/
def P17663060551135878389.Spec : Prop :=
  ∀ n, P17663060551135878389.a n = A217570 (n + 1)

end A217570

/-! ## A217570.P4492516139347858203

`A002262(n)+A052938(A131507(n))²`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A217570

/-- `A002262(n)+A052938(A131507(n))²` -/
def P4492516139347858203.Spec : Prop :=
  ∀ n, P4492516139347858203.a n = A217570 (n + 1)

theorem P4492516139347858203.correct : P4492516139347858203.Spec := by
  intro n
  simp only [A217570, Nat.add_sub_cancel]

end A217570

/-! ## A217570.P2942010608681566187

`∩[A064801(n+1)-2, A064801(n+1)]`
-/

namespace A217570.P2942010608681566187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064801 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217570.P2942010608681566187

namespace A217570

/-- `∩[A064801(n+1)-2, A064801(n+1)]` -/
def P2942010608681566187.Spec : Prop :=
  ∀ n, (P2942010608681566187.a n : ℤ) = A217570 (n + 1)

end A217570

/-! ## A217570.P17914084951104426891

`A112594(A189151(n+1))`
-/

namespace A217570.P17914084951104426891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112594 (A189151 (n + 1)).toNat

end

end A217570.P17914084951104426891

namespace A217570

/-- `A112594(A189151(n+1))` -/
def P17914084951104426891.Spec : Prop :=
  ∀ n, P17914084951104426891.a n = A217570 (n + 1)

end A217570

/-! ## A217570.P17893419884629403664

`lt[1, -A038760(n)]-1`
-/

namespace A217570.P17893419884629403664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A038760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A217570.P17893419884629403664

namespace A217570

/-- `lt[1, -A038760(n)]-1` -/
def P17893419884629403664.Spec : Prop :=
  ∀ n, P17893419884629403664.a n = A217570 (n + 1)

end A217570

/-! ## A217570.P7333078493058302783

`eq[floor(sqrt(n)), A079643(n+2)]`
-/

namespace A217570.P7333078493058302783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079643 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A217570.P7333078493058302783

namespace A217570

/-- `eq[floor(sqrt(n)), A079643(n+2)]` -/
def P7333078493058302783.Spec : Prop :=
  ∀ n, (P7333078493058302783.a n : ℤ) = A217570 (n + 1)

end A217570

/-! ## A217570.P1622309051657216748

`eq[floor(sqrt(n)), A137734(n+3)]`
-/

namespace A217570.P1622309051657216748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A217570.P1622309051657216748

namespace A217570

/-- `eq[floor(sqrt(n)), A137734(n+3)]` -/
def P1622309051657216748.Spec : Prop :=
  ∀ n, (P1622309051657216748.a n : ℤ) = A217570 (n + 1)

end A217570

/-!
# A217571: a(n) = (2*n*(n+5) + (2*n+1)*(-1)^n - 1)/8.

The programs for A217571, the canonical program `A217571.P698407989893242247` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217571 has offset 1).

The definition of A217571 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A217571.anchor (n : ℕ) : (A217571 (n + 1) : ℚ) = ((2 * (n + 1) * (n + 6) : ℤ) + (2 * (n + 1) + 1 : ℤ) * (-1) ^ (n + 1) - 1 : ℚ) / 8` in `Proof.A217.A217571`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A217571.P17878764837425164074

`ogf((1+3x-x^2-x^3)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A217571.P17878764837425164074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -1, -1] [1, -1, -2, 2, 1, -1] n

end

end A217571.P17878764837425164074

namespace A217571

/-- `ogf((1+3x-x^2-x^3)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P17878764837425164074.Spec : Prop :=
  ∀ n, P17878764837425164074.a n = A217571 (n + 1)

end A217571

/-! ## A217571.P698407989893242247

`(2*(n+1)*(n+6)+(2*(n+1)+1)*(-1)^(n+1)-1)/8`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217571

/-- `(2*(n+1)*(n+6)+(2*(n+1)+1)*(-1)^(n+1)-1)/8` -/
def P698407989893242247.Spec : Prop :=
  ∀ n, P698407989893242247.a n = (A217571 (n + 1) : ℚ)

end A217571

/-! ## A217571.P14540042118462485202

`∑[(2+n)^(n%2)]`
-/

namespace A217571.P14540042118462485202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 + n) ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217571.P14540042118462485202

namespace A217571

/-- `∑[(2+n)^(n%2)]` -/
def P14540042118462485202.Spec : Prop :=
  ∀ n, (P14540042118462485202.a n : ℤ) = A217571 (n + 1)

end A217571

/-! ## A217571.P3888420192823590277

`∑[(n+2)^and(1, n)]`
-/

namespace A217571.P3888420192823590277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217571.P3888420192823590277

namespace A217571

/-- `∑[(n+2)^and(1, n)]` -/
def P3888420192823590277.Spec : Prop :=
  ∀ n, (P3888420192823590277.a n : ℤ) = A217571 (n + 1)

end A217571

/-! ## A217571.P4068101276758139974

`∑[C(2+n, and(1, n))]`
-/

namespace A217571.P4068101276758139974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 + n) (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217571.P4068101276758139974

namespace A217571

/-- `∑[C(2+n, and(1, n))]` -/
def P4068101276758139974.Spec : Prop :=
  ∀ n, (P4068101276758139974.a n : ℤ) = A217571 (n + 1)

end A217571

/-! ## A217571.P11927188763462865695

`∑[C(n+2, n²%2)]`
-/

namespace A217571.P11927188763462865695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (n ^ 2 % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217571.P11927188763462865695

namespace A217571

/-- `∑[C(n+2, n²%2)]` -/
def P11927188763462865695.Spec : Prop :=
  ∀ n, (P11927188763462865695.a n : ℤ) = A217571 (n + 1)

end A217571

/-! ## A217571.P16041785197399500878

`∑[gcd(n+2, log2(gcd(2, n)))]`
-/

namespace A217571.P16041785197399500878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (SequenceMachineLib.roundAway (Real.logb 2 (Nat.gcd 2 n : ℝ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217571.P16041785197399500878

namespace A217571

/-- `∑[gcd(n+2, log2(gcd(2, n)))]` -/
def P16041785197399500878.Spec : Prop :=
  ∀ n, (P16041785197399500878.a n : ℤ) = A217571 (n + 1)

end A217571

/-! ## A217571.P3500574323676240201

`∑[(n+1)*and(1, n)+1]`
-/

namespace A217571.P3500574323676240201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.land 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217571.P3500574323676240201

namespace A217571

/-- `∑[(n+1)*and(1, n)+1]` -/
def P3500574323676240201.Spec : Prop :=
  ∀ n, (P3500574323676240201.a n : ℤ) = A217571 (n + 1)

end A217571

/-! ## A217571.P12360486328701132841

`∑[lcm(n+1, and(1, n))+1]`
-/

namespace A217571.P12360486328701132841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (Nat.land 1 n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217571.P12360486328701132841

namespace A217571

/-- `∑[lcm(n+1, and(1, n))+1]` -/
def P12360486328701132841.Spec : Prop :=
  ∀ n, (P12360486328701132841.a n : ℤ) = A217571 (n + 1)

end A217571

/-! ## A217571.P16253625481583778739

`∑[C(or(1, n+1), n+1)]`
-/

namespace A217571.P16253625481583778739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 (n + 1)) (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217571.P16253625481583778739

namespace A217571

/-- `∑[C(or(1, n+1), n+1)]` -/
def P16253625481583778739.Spec : Prop :=
  ∀ n, (P16253625481583778739.a n : ℤ) = A217571 (n + 1)

end A217571

/-! ## A217571.P13571512996979780066

`∑[floor((n+2)/a(n-1))]` with `a(0)=1`
-/

namespace A217571.P13571512996979780066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊(n + 2 : ℚ) / (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217571.P13571512996979780066

namespace A217571

/-- `∑[floor((n+2)/a(n-1))]` -/
def P13571512996979780066.Spec : Prop :=
  ∀ n, P13571512996979780066.a n = A217571 (n + 1)

end A217571

/-! ## A217571.P5668847490880184896

`∑[round((n+2)/a(n-1))]` with `a(0)=1`
-/

namespace A217571.P5668847490880184896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway ((n + 2 : ℚ) / (f1 (n - 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217571.P5668847490880184896

namespace A217571

/-- `∑[round((n+2)/a(n-1))]` -/
def P5668847490880184896.Spec : Prop :=
  ∀ n, P5668847490880184896.a n = A217571 (n + 1)

end A217571

/-! ## A217571.P478430019732432304

`∑[floor(root(n+2, a(n-1)))]` with `a(0)=1`
-/

namespace A217571.P478430019732432304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊(n + 2 : ℝ) ^ (1 / (f1 (n - 1) : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217571.P478430019732432304

namespace A217571

/-- `∑[floor(root(n+2, a(n-1)))]` -/
def P478430019732432304.Spec : Prop :=
  ∀ n, P478430019732432304.a n = A217571 (n + 1)

end A217571

/-! ## A217571.P597096424040204216

`or(1, a(n-2))+n+2` with `a(0)=1, a(1)=4`
-/

namespace A217571.P597096424040204216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  Nat.lor 1 (a (n - 2)) + (n + 2)

end

end A217571.P597096424040204216

namespace A217571

/-- `or(1, a(n-2))+n+2` -/
def P597096424040204216.Spec : Prop :=
  ∀ n, (P597096424040204216.a n : ℤ) = A217571 (n + 1)

end A217571

/-! ## A217571.P7216069864389471469

`∑[(n+1)*(n+2)%2+1]`
-/

namespace A217571.P7216069864389471469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((n + 2) % 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217571.P7216069864389471469

namespace A217571

/-- `∑[(n+1)*(n+2)%2+1]` -/
def P7216069864389471469.Spec : Prop :=
  ∀ n, (P7216069864389471469.a n : ℤ) = A217571 (n + 1)

end A217571

/-! ## A217571.P13499030922151818942

`a(and(n-1, -2))+n+2` with `a(0)=1`
-/

namespace A217571.P13499030922151818942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (Int.land ((n : ℤ) - 1) (-2)).toNat + (n + 2)

end

end A217571.P13499030922151818942

namespace A217571

/-- `a(and(n-1, -2))+n+2` -/
def P13499030922151818942.Spec : Prop :=
  ∀ n, (P13499030922151818942.a n : ℤ) = A217571 (n + 1)

end A217571

/-! ## A217571.P16673801881579687139

`∑[(n+2)^(n+1-or(1, n))]`
-/

namespace A217571.P16673801881579687139
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ ((n + 1 : ℤ) - (Nat.lor 1 n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217571.P16673801881579687139

namespace A217571

/-- `∑[(n+2)^(n+1-or(1, n))]` -/
def P16673801881579687139.Spec : Prop :=
  ∀ n, P16673801881579687139.a n = (A217571 (n + 1) : ℚ)

end A217571

/-! ## A217571.P9324691475948068644

`∑[C(n+2, 2*floor((n+2)/2))]`
-/

namespace A217571.P9324691475948068644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (2 * ⌊(n + 2 : ℚ) / 2⌋).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217571.P9324691475948068644

namespace A217571

/-- `∑[C(n+2, 2*floor((n+2)/2))]` -/
def P9324691475948068644.Spec : Prop :=
  ∀ n, (P9324691475948068644.a n : ℤ) = A217571 (n + 1)

end A217571

/-! ## A217571.P14782705092545935448

`∑[C(n+1, a(n-1)²)+1]` with `a(0)=1`
-/

namespace A217571.P14782705092545935448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.choose (n + 1) (f1 (n - 1) ^ 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217571.P14782705092545935448

namespace A217571

/-- `∑[C(n+1, a(n-1)²)+1]` -/
def P14782705092545935448.Spec : Prop :=
  ∀ n, (P14782705092545935448.a n : ℤ) = A217571 (n + 1)

end A217571

/-! ## A217571.P15915073652927340295

`∑[xor(n+1, n/a(n-2))]` with `a(0)=1, a(1)=3`
-/

namespace A217571.P15915073652927340295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  Int.xor (n + 1 : ℤ) (SequenceMachineLib.roundAway ((n : ℚ) / (f1 (n - 2) : ℚ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217571.P15915073652927340295

namespace A217571

/-- `∑[xor(n+1, n/a(n-2))]` -/
def P15915073652927340295.Spec : Prop :=
  ∀ n, P15915073652927340295.a n = A217571 (n + 1)

end A217571

/-!
# A217573: Number of integers between -(2*n+1)*Pi and (2*n+2)*Pi.

The programs for A217573, the canonical program `A217573.P13223162292898322636` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217573 has offset 0).

The definition of A217573 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217573.P13223162292898322636

`ceil(π*(2*n+2))+floor(π*(2*n+1))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217573

/-- `ceil(π*(2*n+2))+floor(π*(2*n+1))` -/
def P13223162292898322636.Spec : Prop :=
  ∀ n, P13223162292898322636.a n = A217573 n

theorem P13223162292898322636.correct : P13223162292898322636.Spec := by
  intro n
  simp only [A217573]

end A217573

/-! ## A217573.P15245860624819477937

`Δ[A022795(2*n+1)-n]`
-/

namespace A217573.P15245860624819477937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022795 (2 * n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217573.P15245860624819477937

namespace A217573

/-- `Δ[A022795(2*n+1)-n]` -/
def P15245860624819477937.Spec : Prop :=
  ∀ n, P15245860624819477937.a n = A217573 n

end A217573

/-! ## A217573.P1304936247848271950

`abs(1-Δ[A022795(n+1+n)])`
-/

namespace A217573.P1304936247848271950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022795 (n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (f1 (n + 1) - f1 n)|

end

end A217573.P1304936247848271950

namespace A217573

/-- `abs(1-Δ[A022795(n+1+n)])` -/
def P1304936247848271950.Spec : Prop :=
  ∀ n, P1304936247848271950.a n = A217573 n

end A217573

/-! ## A217573.P6150105678200696588

`A023443(Δ[A022795(Δ[n²])])`
-/

namespace A217573.P6150105678200696588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022795 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n).toNat

end

end A217573.P6150105678200696588

namespace A217573

/-- `A023443(Δ[A022795(Δ[n²])])` -/
def P6150105678200696588.Spec : Prop :=
  ∀ n, P6150105678200696588.a n = A217573 n

end A217573

/-! ## A217573.P5715314233315943074

`A233583(Δ[A022795(Δ[n²])])`
-/

namespace A217573.P5715314233315943074
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022795 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (f1 (n + 1) - f1 n).toNat

end

end A217573.P5715314233315943074

namespace A217573

/-- `A233583(Δ[A022795(Δ[n²])])` -/
def P5715314233315943074.Spec : Prop :=
  ∀ n, P5715314233315943074.a n = A217573 n

end A217573

/-! ## A217573.P12498832845289837503

`Δ[A174738(A005843(n+3))+A033580(n)]`
-/

namespace A217573.P12498832845289837503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174738 (A005843 (n + 3)).toNat + A033580 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217573.P12498832845289837503

namespace A217573

/-- `Δ[A174738(A005843(n+3))+A033580(n)]` -/
def P12498832845289837503.Spec : Prop :=
  ∀ n, P12498832845289837503.a n = A217573 n

end A217573

/-!
# A217574: a(n) = (n^2)*(n^2-1)*(n^2-2)*(n^2-3).

The programs for A217574, the canonical program `A217574.P13972867046200198664` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217574 has offset 0).

The definition of A217574 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(n²-1)*(n²-2)*(n²-3)` (program `A217574.P13972867046200198664`, by `A217574.P13972867046200198664.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A217574.P13972867046200198664

`n²*(n²-1)*(n²-2)*(n²-3)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217574

/-- `n²*(n²-1)*(n²-2)*(n²-3)` -/
def P13972867046200198664.Spec : Prop :=
  ∀ n, P13972867046200198664.a n = A217574 n

theorem P13972867046200198664.correct : P13972867046200198664.Spec := by
  intro n
  simp only [A217574]

end A217574

/-! ## A217574.P15968098336517898037

`A057722(n)²-1`
-/

namespace A217574.P15968098336517898037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057722 n ^ 2 - 1

end

end A217574.P15968098336517898037

namespace A217574

/-- `A057722(n)²-1` -/
def P15968098336517898037.Spec : Prop :=
  ∀ n, P15968098336517898037.a n = A217574 n

theorem P15968098336517898037.correct : P15968098336517898037.Spec := by
  intro n
  simp only [A217574, Nat.add_sub_cancel, A217574.P15968098336517898037.a, A217574.P13972867046200198664.a, A057722, A057722.P17503710663781687125.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A217574

/-! ## A217574.P4878879943366735379

`((A056220(n)-n²)²-n²)²-1`
-/

namespace A217574.P4878879943366735379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A056220 n - (n ^ 2 : ℤ)) ^ 2 - (n ^ 2 : ℤ)) ^ 2 - 1

end

end A217574.P4878879943366735379

namespace A217574

/-- `((A056220(n)-n²)²-n²)²-1` -/
def P4878879943366735379.Spec : Prop :=
  ∀ n, P4878879943366735379.a n = A217574 n

theorem P4878879943366735379.correct : P4878879943366735379.Spec := by
  intro n
  simp only [A217574, Nat.add_sub_cancel, A217574.P4878879943366735379.a, A217574.P13972867046200198664.a, A056220, A056220.P5045014962229294692.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A217574

/-! ## A217574.P10924202957867952877

`xor(1, (A165900(n+1)*A165900(n))²)`
-/

namespace A217574.P10924202957867952877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((A165900 (n + 1) * A165900 n) ^ 2)

end

end A217574.P10924202957867952877

namespace A217574

/-- `xor(1, (A165900(n+1)*A165900(n))²)` -/
def P10924202957867952877.Spec : Prop :=
  ∀ n, P10924202957867952877.a n = A217574 n

end A217574

/-! ## A217574.P10916620174872157151

`A052762(n²)`
-/

namespace A217574.P10916620174872157151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052762 (n ^ 2)

end

end A217574.P10916620174872157151

namespace A217574

/-- `A052762(n²)` -/
def P10916620174872157151.Spec : Prop :=
  ∀ n, P10916620174872157151.a n = A217574 n

theorem P10916620174872157151.correct : P10916620174872157151.Spec := by
  intro n
  simp only [A217574, Nat.add_sub_cancel, A217574.P10916620174872157151.a, A217574.P13972867046200198664.a, A052762, A052762.P17182617027547716710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A217574

/-! ## A217574.P3747969142534013022

`A001094(n²)-n²`
-/

namespace A217574.P3747969142534013022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001094 (n ^ 2) - (n ^ 2 : ℤ)

end

end A217574.P3747969142534013022

namespace A217574

/-- `A001094(n²)-n²` -/
def P3747969142534013022.Spec : Prop :=
  ∀ n, P3747969142534013022.a n = A217574 n

theorem P3747969142534013022.correct : P3747969142534013022.Spec := by
  intro n
  simp only [A217574, Nat.add_sub_cancel, A217574.P3747969142534013022.a, A217574.P13972867046200198664.a, A001094, A001094.P17747753271672634050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A217574

/-! ## A217574.P17926681864017749918

`lcm(2, A052762(A000290(n)))`
-/

namespace A217574.P17926681864017749918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A052762 (A000290 n).toNat)

end

end A217574.P17926681864017749918

namespace A217574

/-- `lcm(2, A052762(A000290(n)))` -/
def P17926681864017749918.Spec : Prop :=
  ∀ n, (P17926681864017749918.a n : ℤ) = A217574 n

end A217574

/-! ## A217574.P7087843867660803734

`A052787(A002522(n))/A002522(n)`
-/

namespace A217574.P7087843867660803734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052787 (A002522 n).toNat : ℚ) / (A002522 n : ℚ)

end

end A217574.P7087843867660803734

namespace A217574

/-- `A052787(A002522(n))/A002522(n)` -/
def P7087843867660803734.Spec : Prop :=
  ∀ n, P7087843867660803734.a n = (A217574 n : ℚ)

end A217574

/-!
# A217575: Numbers n such that floor(sqrt(n)) = floor(n/floor(sqrt(n)))-1.

The programs for A217575, the canonical program `A217575.P8898210276207211588` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217575 has offset 1).

The definition of A217575 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063657, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A217575.P8898210276207211588

`A063657(n+1)-1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A217575

/-- `A063657(n+1)-1` -/
def P8898210276207211588.Spec : Prop :=
  ∀ n, P8898210276207211588.a n = A217575 (n + 1)

theorem P8898210276207211588.correct : P8898210276207211588.Spec := by
  intro n
  simp only [A217575, Nat.add_sub_cancel]

end A217575

/-! ## A217575.P17027949847811773035

`∑{#}[row(n), #+2]+n`
-/

namespace A217575.P17027949847811773035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k + 2) + n

end

end A217575.P17027949847811773035

namespace A217575

/-- `∑{#}[row(n), #+2]+n` -/
def P17027949847811773035.Spec : Prop :=
  ∀ n, (P17027949847811773035.a n : ℤ) = A217575 (n + 1)

end A217575

/-! ## A217575.P9228818666439334407

`comp[n+C(row(n+1), 2)]`
-/

namespace A217575.P9228818666439334407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + Nat.choose (SequenceMachineLib.triRow (n + 1)) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A217575.P9228818666439334407

namespace A217575

/-- `comp[n+C(row(n+1), 2)]` -/
def P9228818666439334407.Spec : Prop :=
  ∀ n, (P9228818666439334407.a n : ℤ) = A217575 (n + 1)

end A217575

/-! ## A217575.P7081089282902654843

`comp[col(n)+row(n)²-1]`
-/

namespace A217575.P7081089282902654843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + SequenceMachineLib.triRow n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A217575.P7081089282902654843

namespace A217575

/-- `comp[col(n)+row(n)²-1]` -/
def P7081089282902654843.Spec : Prop :=
  ∀ n, (P7081089282902654843.a n : ℤ) = A217575 (n + 1)

end A217575

/-! ## A217575.P18186568679455624433

`lt[1, round(sqrt(n+1))²-n]`
-/

namespace A217575.P18186568679455624433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A217575.P18186568679455624433

namespace A217575

/-- `lt[1, round(sqrt(n+1))²-n]` -/
def P18186568679455624433.Spec : Prop :=
  ∀ n, (P18186568679455624433.a n : ℤ) = A217575 (n + 1)

end A217575

/-! ## A217575.P6924427560252151277

`lt[n-round(sqrt(n))², 0]-1`
-/

namespace A217575.P6924427560252151277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A217575.P6924427560252151277

namespace A217575

/-- `lt[n-round(sqrt(n))², 0]-1` -/
def P6924427560252151277.Spec : Prop :=
  ∀ n, P6924427560252151277.a n = A217575 (n + 1)

end A217575

/-! ## A217575.P10224960857321079032

`C(row(n)+3, 2)-1+n`
-/

namespace A217575.P10224960857321079032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n + 3) 2 : ℤ) - 1 + (n : ℤ)

end

end A217575.P10224960857321079032

namespace A217575

/-- `C(row(n)+3, 2)-1+n` -/
def P10224960857321079032.Spec : Prop :=
  ∀ n, P10224960857321079032.a n = A217575 (n + 1)

end A217575

/-! ## A217575.P17459301367119432989

`eq[1, floor(2*sqrt(n+1))%2]`
-/

namespace A217575.P17459301367119432989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n + 1 : ℝ)⌋ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A217575.P17459301367119432989

namespace A217575

/-- `eq[1, floor(2*sqrt(n+1))%2]` -/
def P17459301367119432989.Spec : Prop :=
  ∀ n, (P17459301367119432989.a n : ℤ) = A217575 (n + 1)

end A217575

/-! ## A217575.P3977595714497595056

`eq[1, floor(2*sqrt(n))%2]-1`
-/

namespace A217575.P3977595714497595056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A217575.P3977595714497595056

namespace A217575

/-- `eq[1, floor(2*sqrt(n))%2]-1` -/
def P3977595714497595056.Spec : Prop :=
  ∀ n, P3977595714497595056.a n = A217575 (n + 1)

end A217575

/-! ## A217575.P7988352295448239703

`col(n)+2*C(row(n)+2, 2)`
-/

namespace A217575.P7988352295448239703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n + 2 * Nat.choose (SequenceMachineLib.triRow n + 2) 2

end

end A217575.P7988352295448239703

namespace A217575

/-- `col(n)+2*C(row(n)+2, 2)` -/
def P7988352295448239703.Spec : Prop :=
  ∀ n, (P7988352295448239703.a n : ℤ) = A217575 (n + 1)

end A217575

/-! ## A217575.P11675387407782225762

`col(n)+(row(n)+1)*(row(n)+2)`
-/

namespace A217575.P11675387407782225762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n + (SequenceMachineLib.triRow n + 1) * (SequenceMachineLib.triRow n + 2)

end

end A217575.P11675387407782225762

namespace A217575

/-- `col(n)+(row(n)+1)*(row(n)+2)` -/
def P11675387407782225762.Spec : Prop :=
  ∀ n, (P11675387407782225762.a n : ℤ) = A217575 (n + 1)

end A217575

/-! ## A217575.P12503437139806972568

`(row(n)+1)²+col(n)+1+row(n)`
-/

namespace A217575.P12503437139806972568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + 1) ^ 2 + (SequenceMachineLib.triCol n + 1) + SequenceMachineLib.triRow n

end

end A217575.P12503437139806972568

namespace A217575

/-- `(row(n)+1)²+col(n)+1+row(n)` -/
def P12503437139806972568.Spec : Prop :=
  ∀ n, (P12503437139806972568.a n : ℤ) = A217575 (n + 1)

end A217575

/-! ## A217575.P10212938747412312999

`2*(n+1)+C(∑[char[∑[n]]]+2, 2)-(n+2)-((-1)^n)²`
-/

namespace A217575.P10212938747412312999
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + ((Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 2) 2 : ℤ) - (n + 2 : ℤ) - ((-1) ^ n) ^ 2)

end

end A217575.P10212938747412312999

namespace A217575

/-- `2*(n+1)+C(∑[char[∑[n]]]+2, 2)-(n+2)-((-1)^n)²` -/
def P10212938747412312999.Spec : Prop :=
  ∀ n, P10212938747412312999.a n = A217575 (n + 1)

end A217575

/-! ## A217575.P1308291363871189833

`A377809(n+1)+n`
-/

namespace A217575.P1308291363871189833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377809 (n + 1) + (n : ℤ)

end

end A217575.P1308291363871189833

namespace A217575

/-- `A377809(n+1)+n` -/
def P1308291363871189833.Spec : Prop :=
  ∀ n, P1308291363871189833.a n = A217575 (n + 1)

theorem P1308291363871189833.correct : P1308291363871189833.Spec := by
  intro n
  simp only [A217575, Nat.add_sub_cancel, A217575.P1308291363871189833.a, A217575.P8898210276207211588.a, A063657, A063657.P9374789070347928920.a, A377809, A377809.P6328072400551004124.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A217575

/-! ## A217575.P3855495382959665246

`A000096(∑[char[∑[n]]])+n`
-/

namespace A217575.P3855495382959665246
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A217575.P3855495382959665246

namespace A217575

/-- `A000096(∑[char[∑[n]]])+n` -/
def P3855495382959665246.Spec : Prop :=
  ∀ n, P3855495382959665246.a n = A217575 (n + 1)

end A217575

/-! ## A217575.P15208750694374452982

`A294317(n)+2*(n+1)`
-/

namespace A217575.P15208750694374452982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 n + (2 * (n + 1) : ℤ)

end

end A217575.P15208750694374452982

namespace A217575

/-- `A294317(n)+2*(n+1)` -/
def P15208750694374452982.Spec : Prop :=
  ∀ n, P15208750694374452982.a n = A217575 (n + 1)

end A217575

/-! ## A217575.P2069715945601384543

`A128076(n+1)+Δ[n²]`
-/

namespace A217575.P2069715945601384543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128076 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A217575.P2069715945601384543

namespace A217575

/-- `A128076(n+1)+Δ[n²]` -/
def P2069715945601384543.Spec : Prop :=
  ∀ n, P2069715945601384543.a n = A217575 (n + 1)

end A217575

/-! ## A217575.P3464013259644397754

`comp[2*n-A094727(n+1)]`
-/

namespace A217575.P3464013259644397754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A094727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A217575.P3464013259644397754

namespace A217575

/-- `comp[2*n-A094727(n+1)]` -/
def P3464013259644397754.Spec : Prop :=
  ∀ n, (P3464013259644397754.a n : ℤ) = A217575 (n + 1)

end A217575

/-! ## A217575.P9299178899070230184

`A101881(A131507(n))+n`
-/

namespace A217575.P9299178899070230184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 (A131507 n).toNat + (n : ℤ)

end

end A217575.P9299178899070230184

namespace A217575

/-- `A101881(A131507(n))+n` -/
def P9299178899070230184.Spec : Prop :=
  ∀ n, P9299178899070230184.a n = A217575 (n + 1)

end A217575

/-!
# A217576: a(n) = Sum_{d divides n} (d!)^(n/d).

The programs for A217576, there is no canonical definition to state claims against.
-/

/-! ## A217576.P7557106928404073374

`∑{d}[n+1, ((n+1)/#)!^#]`
-/

namespace A217576.P7557106928404073374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.factorial (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ d

end

end A217576.P7557106928404073374

/-! ## A217576.P7430152626166255065

`∑{d}[n+1, root(#!, #/(n+1))]`
-/

namespace A217576.P7430152626166255065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.factorial d : ℝ) ^ (1 / ((d : ℚ) / (n + 1 : ℚ) : ℝ))

end

end A217576.P7430152626166255065

/-! ## A217576.P3916045761321509820

`or(A143324(3*n+3)+1, A245092((n+1)!))`
-/

namespace A217576.P3916045761321509820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A143324 (3 * n + 3) + 1) (A245092 (Nat.factorial (n + 1)))

end

end A217576.P3916045761321509820

/-!
# A217577: The only prime p such that k*a < p < k*b where a, b are consecutive primes, case k=5.

The programs for A217577, there is no canonical definition to state claims against.
-/

/-! ## A217577.P8389570771834930742

`A132256(lt[A007952(n+1)-A139693(n), 2]+1)`
-/

namespace A217577.P8389570771834930742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007952 (n + 1) - A139693 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132256 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A217577.P8389570771834930742

/-!
# A217578: a(n) is the least multiple of n, greater than n, such that all digits of a(n) are even (resp. odd) if n is even (resp. odd).

The programs for A217578, there is no canonical definition to state claims against.
-/

/-! ## A217578.P696232490611723062

`(n+1)*A217618(n+1)`
-/

namespace A217578.P696232490611723062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A217618 (n + 1)

end

end A217578.P696232490611723062

/-!
# A217579: a(1) = 1; for n > 1, a(n) = max(d*lpf(d) : d|n, d > 1), where lpf is the least prime factor function (A020639).

The programs for A217579, there is no canonical definition to state claims against.
-/

/-! ## A217579.P4263298231949553835

`A006530(n+1)*A034699(A108951(n+1))`
-/

namespace A217579.P4263298231949553835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A034699 (A108951 (n + 1)).toNat

end

end A217579.P4263298231949553835

/-! ## A217579.P3010329288286804661

`A034699(A108951(n+1))*A276440(n+1)`
-/

namespace A217579.P3010329288286804661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A108951 (n + 1)).toNat * A276440 (n + 1)

end

end A217579.P3010329288286804661

/-! ## A217579.P11158976618495560551

`A002034(∏{p}[n+1, #])*A034699(A108951(n+1))`
-/

namespace A217579.P11158976618495560551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (∏ p ∈ Nat.primeFactors (f1 n), p) * A034699 (A108951 (n + 1)).toNat

end

end A217579.P11158976618495560551

/-! ## A217579.P6555936503956010438

`A033677(A077168(n)²*A033677(n+1))`
-/

namespace A217579.P6555936503956010438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A077168 n ^ 2 * A033677 (n + 1)).toNat

end

end A217579.P6555936503956010438

/-! ## A217579.P6967168475090442808

`A033677(A161951(n+1)*A253560(n+1))`
-/

namespace A217579.P6967168475090442808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A161951 (n + 1) * A253560 (n + 1)).toNat

end

end A217579.P6967168475090442808

/-!
# A217580: Triangular array read by rows. T(n,k) is the number of labeled digraphs on n nodes with exactly k isolated nodes. 0<=k<=n.

The programs for A217580, there is no canonical definition to state claims against.
-/

/-! ## A217580.P5134104990762432780

`A007318(n)*A054545(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A217580.P5134104990762432780
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A054545 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A217580.P5134104990762432780

/-!
# A217581: Largest prime divisor of n <= sqrt(n), 1 if n is prime or 1.

The programs for A217581, the canonical program `A217581.P13303256244740024529` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217581 has offset 1).

The definition of A217581 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217581.P13303256244740024529

`A006530(A072504(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A217581

/-- `A006530(A072504(n+1))` -/
def P13303256244740024529.Spec : Prop :=
  ∀ n, P13303256244740024529.a n = A217581 (n + 1)

theorem P13303256244740024529.correct : P13303256244740024529.Spec := by
  intro n
  simp only [A217581, Nat.add_sub_cancel]

end A217581

/-! ## A217581.P7884853354607962316

`A002034(A382486(1+n))`
-/

namespace A217581.P7884853354607962316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A382486 (1 + n)).toNat

end

end A217581.P7884853354607962316

namespace A217581

/-- `A002034(A382486(1+n))` -/
def P7884853354607962316.Spec : Prop :=
  ∀ n, P7884853354607962316.a n = A217581 (n + 1)

end A217581

/-! ## A217581.P9567087829768773619

`A053585(∏{p}[A072504(n+1), #])`
-/

namespace A217581.P9567087829768773619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A217581.P9567087829768773619

namespace A217581

/-- `A053585(∏{p}[A072504(n+1), #])` -/
def P9567087829768773619.Spec : Prop :=
  ∀ n, P9567087829768773619.a n = A217581 (n + 1)

end A217581

/-! ## A217581.P7575059961115622672

`A006530((n+1)/A072505(n+1))`
-/

namespace A217581.P7575059961115622672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A072505 (n + 1) : ℚ))).toNat

end

end A217581.P7575059961115622672

namespace A217581

/-- `A006530((n+1)/A072505(n+1))` -/
def P7575059961115622672.Spec : Prop :=
  ∀ n, P7575059961115622672.a n = A217581 (n + 1)

end A217581

/-! ## A217581.P6387982279084590119

`A006530((n+1)/A346152(n+1))`
-/

namespace A217581.P6387982279084590119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A346152 (n + 1) : ℚ))).toNat

end

end A217581.P6387982279084590119

namespace A217581

/-- `A006530((n+1)/A346152(n+1))` -/
def P6387982279084590119.Spec : Prop :=
  ∀ n, P6387982279084590119.a n = A217581 (n + 1)

end A217581

/-! ## A217581.P15568030253827312363

`A006530(gcd(n+1, A072499(n+1)))`
-/

namespace A217581.P15568030253827312363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (n + 1 : ℤ) (A072499 (n + 1)))

end

end A217581.P15568030253827312363

namespace A217581

/-- `A006530(gcd(n+1, A072499(n+1)))` -/
def P15568030253827312363.Spec : Prop :=
  ∀ n, P15568030253827312363.a n = A217581 (n + 1)

end A217581

/-! ## A217581.P10980991522334387766

`A006530(gcd(n+1, A003418(A000194(n))))`
-/

namespace A217581.P10980991522334387766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (n + 1 : ℤ) (A003418 (A000194 n).toNat))

end

end A217581.P10980991522334387766

namespace A217581

/-- `A006530(gcd(n+1, A003418(A000194(n))))` -/
def P10980991522334387766.Spec : Prop :=
  ∀ n, P10980991522334387766.a n = A217581 (n + 1)

end A217581

/-! ## A217581.P5435307156190031397

`A284695(∏{p}[A072504(n+1), A014963(#)])`
-/

namespace A217581.P5435307156190031397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284695 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A014963 p).toNat

end

end A217581.P5435307156190031397

namespace A217581

/-- `A284695(∏{p}[A072504(n+1), A014963(#)])` -/
def P5435307156190031397.Spec : Prop :=
  ∀ n, P5435307156190031397.a n = A217581 (n + 1)

end A217581

/-! ## A217581.P13628161524075805811

`A006530((n+1)/A020639(A033677(n+1)))`
-/

namespace A217581.P13628161524075805811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (A033677 (n + 1)).toNat : ℚ))).toNat

end

end A217581.P13628161524075805811

namespace A217581

/-- `A006530((n+1)/A020639(A033677(n+1)))` -/
def P13628161524075805811.Spec : Prop :=
  ∀ n, P13628161524075805811.a n = A217581 (n + 1)

end A217581

/-! ## A217581.P18173926193630297147

`A006530((n+1)/A020639(A140271(n+1)))`
-/

namespace A217581.P18173926193630297147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (A140271 (n + 1)).toNat : ℚ))).toNat

end

end A217581.P18173926193630297147

namespace A217581

/-- `A006530((n+1)/A020639(A140271(n+1)))` -/
def P18173926193630297147.Spec : Prop :=
  ∀ n, P18173926193630297147.a n = A217581 (n + 1)

end A217581

/-! ## A217581.P6297436005620340347

`A087039((n+1)*A366510(n+1))`
-/

namespace A217581.P6297436005620340347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 ((n + 1 : ℤ) * A366510 (n + 1)).toNat

end

end A217581.P6297436005620340347

namespace A217581

/-- `A087039((n+1)*A366510(n+1))` -/
def P6297436005620340347.Spec : Prop :=
  ∀ n, P6297436005620340347.a n = A217581 (n + 1)

end A217581

/-! ## A217581.P3083440813840029099

`A366510(A175068(n+1))`
-/

namespace A217581.P3083440813840029099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366510 (A175068 (n + 1)).toNat

end

end A217581.P3083440813840029099

namespace A217581

/-- `A366510(A175068(n+1))` -/
def P3083440813840029099.Spec : Prop :=
  ∀ n, P3083440813840029099.a n = A217581 (n + 1)

end A217581

/-! ## A217581.P14608963602830363396

`A006530(A396068(n+1))`
-/

namespace A217581.P14608963602830363396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A396068 (n + 1)).toNat

end

end A217581.P14608963602830363396

namespace A217581

/-- `A006530(A396068(n+1))` -/
def P14608963602830363396.Spec : Prop :=
  ∀ n, P14608963602830363396.a n = A217581 (n + 1)

end A217581

/-! ## A217581.P11994376102054821542

`A006530(A072499(n+1))`
-/

namespace A217581.P11994376102054821542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A072499 (n + 1)).toNat

end

end A217581.P11994376102054821542

namespace A217581

/-- `A006530(A072499(n+1))` -/
def P11994376102054821542.Spec : Prop :=
  ∀ n, P11994376102054821542.a n = A217581 (n + 1)

end A217581

/-! ## A217581.P8973638364437920297

`A006530(A072500(n+1)/A072501(n+1))`
-/

namespace A217581.P8973638364437920297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A072500 (n + 1) : ℚ) / (A072501 (n + 1) : ℚ))).toNat

end

end A217581.P8973638364437920297

namespace A217581

/-- `A006530(A072500(n+1)/A072501(n+1))` -/
def P8973638364437920297.Spec : Prop :=
  ∀ n, P8973638364437920297.a n = A217581 (n + 1)

end A217581

/-! ## A217581.P11235712312511126103

`A006530(A064446(n+1)/A006530(n+1))`
-/

namespace A217581.P11235712312511126103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A064446 (n + 1) : ℚ) / (A006530 (n + 1) : ℚ))).toNat

end

end A217581.P11235712312511126103

namespace A217581

/-- `A006530(A064446(n+1)/A006530(n+1))` -/
def P11235712312511126103.Spec : Prop :=
  ∀ n, P11235712312511126103.a n = A217581 (n + 1)

end A217581

/-! ## A217581.P6809604039285843586

`A366510(A140580(n+1))`
-/

namespace A217581.P6809604039285843586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366510 (A140580 (n + 1)).toNat

end

end A217581.P6809604039285843586

namespace A217581

/-- `A366510(A140580(n+1))` -/
def P6809604039285843586.Spec : Prop :=
  ∀ n, P6809604039285843586.a n = A217581 (n + 1)

end A217581

/-!
# A217582: E.g.f. 1/2*sqrt(sec(2*x))-1/2, (even part).

The programs for A217582, there is no canonical definition to state claims against.
-/

/-! ## A217582.P13098349341044276696

`Δ[A011782(n)]*A126156(n)`
-/

namespace A217582.P13098349341044276696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A126156 n

end

end A217582.P13098349341044276696

/-! ## A217582.P16049427614538670450

`A034008(n+1)*A126156(n)`
-/

namespace A217582.P16049427614538670450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (n + 1) * A126156 n

end

end A217582.P16049427614538670450

/-! ## A217582.P4752401860107904263

`record[A048675(n+1)]*A126156(n)`
-/

namespace A217582.P4752401860107904263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A126156 n

end

end A217582.P4752401860107904263

/-! ## A217582.P1511101402696546568

`record[A052331(n+1)]*A126156(n)`
-/

namespace A217582.P1511101402696546568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A126156 n

end

end A217582.P1511101402696546568

/-! ## A217582.P16622112198461311297

`record[A285330(n+1)]*A126156(n)`
-/

namespace A217582.P16622112198461311297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A126156 n

end

end A217582.P16622112198461311297

/-!
# A217583: Numbers n^2+1 such that (n-1)^2+1 and (n+1)^2+1 are prime.

The programs for A217583, there is no canonical definition to state claims against.
-/

/-! ## A217583.P3070165286250652657

`1+A108814(1+n)²`
-/

namespace A217583.P3070165286250652657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A108814 (1 + n) ^ 2

end

end A217583.P3070165286250652657

/-! ## A217583.P9980244708398636137

`(A096012(n+1)+1)²+1`
-/

namespace A217583.P9980244708398636137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A096012 (n + 1) + 1) ^ 2 + 1

end

end A217583.P9980244708398636137

/-! ## A217583.P9781385756050664600

`(2*A293621(n+1)+1)²+1`
-/

namespace A217583.P9781385756050664600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A293621 (n + 1) + 1) ^ 2 + 1

end

end A217583.P9781385756050664600

/-! ## A217583.P10249544668258504988

`A108814(n+1)*A108814(n+1)+1`
-/

namespace A217583.P10249544668258504988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108814 (n + 1) * A108814 (n + 1) + 1

end

end A217583.P10249544668258504988

/-! ## A217583.P14829509646210548222

`A096012(n+1)+A206328(n+1)+A108814(n+1)`
-/

namespace A217583.P14829509646210548222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096012 (n + 1) + (A206328 (n + 1) + A108814 (n + 1))

end

end A217583.P14829509646210548222

/-! ## A217583.P11076190845273921862

`∩[A089593(n+1), A090693(n+1)]²+1`
-/

namespace A217583.P11076190845273921862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2 + 1

end

end A217583.P11076190845273921862

/-! ## A217583.P1788481518370828452

`A069894(A293621(n+1))`
-/

namespace A217583.P1788481518370828452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069894 (A293621 (n + 1)).toNat

end

end A217583.P1788481518370828452

/-! ## A217583.P16208883499960629531

`A002522(A108814(n+1))`
-/

namespace A217583.P16208883499960629531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A108814 (n + 1)).toNat

end

end A217583.P16208883499960629531

/-! ## A217583.P8815263171667618210

`A002522(A096012(n+1)+1)`
-/

namespace A217583.P8815263171667618210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A096012 (n + 1) + 1).toNat

end

end A217583.P8815263171667618210

/-!
# A217584: Numbers k such that d(k^2)/d(k) is an integer, where d(k) is the number of divisors of k.

The programs for A217584, there is no canonical definition to state claims against.
-/

/-! ## A217584.P11762774421118392672

`record[(n+1)²^A015692(A008480(n+1)²)]`
-/

namespace A217584.P11762774421118392672
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) ^ (A015692 (A008480 (n + 1) ^ 2).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217584.P11762774421118392672

/-! ## A217584.P17827024731671395775

`record[(-n)^A268643(A104725(n))]`
-/

namespace A217584.P17827024731671395775
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-(n : ℤ) : ℚ) ^ (A268643 (A104725 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217584.P17827024731671395775

/-! ## A217584.P17417566227599308910

`lt[A049705(n+1), (3-n)^A268643(A104725(n))]²`
-/

namespace A217584.P17417566227599308910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 - (n : ℤ) : ℚ) ^ (A268643 (A104725 n).toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n ^ 2

end

end A217584.P17417566227599308910

/-! ## A217584.P8115758739784079071

`lt[(n+1)², A001358(n+1)^A268643(A104725(n))]²`
-/

namespace A217584.P8115758739784079071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001358 (n + 1) : ℚ) ^ (A268643 (A104725 n).toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n ^ 2

end

end A217584.P8115758739784079071

/-! ## A217584.P13292682221340204324

`lt[(n+2)², A057100(n+1)^A268643(A104725(n))]²`
-/

namespace A217584.P13292682221340204324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057100 (n + 1) : ℚ) ^ (A268643 (A104725 n).toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n ^ 2

end

end A217584.P13292682221340204324

/-!
# A217585: Number of triangles with endpoints of the form (x,x^2), x in {-n,...,n}, having at least one angle of 45 degrees.

The programs for A217585, the canonical program `A217585.P9171251183116127751` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217585 has offset 0).

The definition of A217585 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217585.P9171251183116127751

`ogf((x+3x^2+2x^3-2x^4)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217585

/-- `ogf((x+3x^2+2x^3-2x^4)/(1-2x+x^2))` -/
def P9171251183116127751.Spec : Prop :=
  ∀ n, P9171251183116127751.a n = A217585 n

theorem P9171251183116127751.correct : P9171251183116127751.Spec := by
  intro n
  simp only [A217585]

end A217585

/-!
# A217586: a(1) = 1 and, for all n >= 1, if a(n) = 0 then a(2*n) = 1 and a(2*n+1) = 0 whereas if a(n) = 1 then a(2*n) = 0 and a(2*n+1) = 0.

The programs for A217586, the canonical program `A217586.P1086920461744745021` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217586 has offset 1).

The definition of A217586 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217586.P1086920461744745021

`n%(2-a(floor(n/2)))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217586

/-- `n%(2-a(floor(n/2)))` -/
def P1086920461744745021.Spec : Prop :=
  ∀ n, P1086920461744745021.a n = A217586 (n + 1)

theorem P1086920461744745021.correct : P1086920461744745021.Spec := by
  intro n
  simp only [A217586, Nat.add_sub_cancel]

end A217586

/-! ## A217586.P13546720438544987356

`and(n, 1-a(floor(n/2)))` with `a(0)=1`
-/

namespace A217586.P13546720438544987356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (n : ℤ) (1 - a ⌊(n : ℚ) / 2⌋.toNat)

end

end A217586.P13546720438544987356

namespace A217586

/-- `and(n, 1-a(floor(n/2)))` -/
def P13546720438544987356.Spec : Prop :=
  ∀ n, P13546720438544987356.a n = A217586 (n + 1)

end A217586

/-! ## A217586.P1089210580161842748

`and(n, a(a(floor(n/2))))` with `a(0)=1, a(1)=0`
-/

namespace A217586.P1089210580161842748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  Nat.land n (a (a ⌊(n : ℚ) / 2⌋.toNat))

end

end A217586.P1089210580161842748

namespace A217586

/-- `and(n, a(a(floor(n/2))))` -/
def P1089210580161842748.Spec : Prop :=
  ∀ n, (P1089210580161842748.a n : ℤ) = A217586 (n + 1)

end A217586

/-! ## A217586.P4817888176175952558

`(n*(1+a(floor(n/2))))%2` with `a(0)=1`
-/

namespace A217586.P4817888176175952558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * (1 + a ⌊(n : ℚ) / 2⌋.toNat) % 2

end

end A217586.P4817888176175952558

namespace A217586

/-- `(n*(1+a(floor(n/2))))%2` -/
def P4817888176175952558.Spec : Prop :=
  ∀ n, (P4817888176175952558.a n : ℤ) = A217586 (n + 1)

end A217586

/-! ## A217586.P1045627728603430462

`(n+2)%gcd(2, a(floor(n/2)))` with `a(0)=1`
-/

namespace A217586.P1045627728603430462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 2) % Nat.gcd 2 (a ⌊(n : ℚ) / 2⌋.toNat)

end

end A217586.P1045627728603430462

namespace A217586

/-- `(n+2)%gcd(2, a(floor(n/2)))` -/
def P1045627728603430462.Spec : Prop :=
  ∀ n, (P1045627728603430462.a n : ℤ) = A217586 (n + 1)

end A217586

/-! ## A217586.P16635456676298291188

`(n*a(a(floor(n/2))))%2` with `a(0)=1, a(1)=0`
-/

namespace A217586.P16635456676298291188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  n * a (a ⌊(n : ℚ) / 2⌋.toNat) % 2

end

end A217586.P16635456676298291188

namespace A217586

/-- `(n*a(a(floor(n/2))))%2` -/
def P16635456676298291188.Spec : Prop :=
  ∀ n, (P16635456676298291188.a n : ℤ) = A217586 (n + 1)

end A217586

/-! ## A217586.P7403536230385985797

`1-Δ[1-a(floor(n/2))+n]` with `a(0)=1`
-/

namespace A217586.P7403536230385985797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - f1 ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A217586.P7403536230385985797

namespace A217586

/-- `1-Δ[1-a(floor(n/2))+n]` -/
def P7403536230385985797.Spec : Prop :=
  ∀ n, P7403536230385985797.a n = A217586 (n + 1)

end A217586

/-! ## A217586.P9717928527727351903

`1-a(floor((1-n)/(a(n-1)-2)))` with `a(0)=1`
-/

namespace A217586.P9717928527727351903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - a ⌊(1 - (n : ℤ) : ℚ) / (a (n - 1) - 2 : ℚ)⌋.toNat

end

end A217586.P9717928527727351903

namespace A217586

/-- `1-a(floor((1-n)/(a(n-1)-2)))` -/
def P9717928527727351903.Spec : Prop :=
  ∀ n, P9717928527727351903.a n = A217586 (n + 1)

end A217586

/-! ## A217586.P7046055938838034543

`1-char[eq[1, (xor(n, n+1)%(n+1))%3]]`
-/

namespace A217586.P7046055938838034543
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) % (n + 1) % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A217586.P7046055938838034543

namespace A217586

/-- `1-char[eq[1, (xor(n, n+1)%(n+1))%3]]` -/
def P7046055938838034543.Spec : Prop :=
  ∀ n, P7046055938838034543.a n = A217586 (n + 1)

end A217586

/-! ## A217586.P9865183282197514170

`A039982(2*n)`
-/

namespace A217586.P9865183282197514170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039982 (2 * n)

end

end A217586.P9865183282197514170

namespace A217586

/-- `A039982(2*n)` -/
def P9865183282197514170.Spec : Prop :=
  ∀ n, P9865183282197514170.a n = A217586 (n + 1)

end A217586

/-! ## A217586.P5187383508063610038

`A082560(n+1)%2`
-/

namespace A217586.P5187383508063610038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082560 (n + 1)) 2

end

end A217586.P5187383508063610038

namespace A217586

/-- `A082560(n+1)%2` -/
def P5187383508063610038.Spec : Prop :=
  ∀ n, P5187383508063610038.a n = A217586 (n + 1)

end A217586

/-! ## A217586.P16937050345785445150

`A091952(n+1)%2`
-/

namespace A217586.P16937050345785445150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091952 (n + 1)) 2

end

end A217586.P16937050345785445150

namespace A217586

/-- `A091952(n+1)%2` -/
def P16937050345785445150.Spec : Prop :=
  ∀ n, P16937050345785445150.a n = A217586 (n + 1)

end A217586

/-! ## A217586.P5924336689459652372

`A135523(n+1)%2`
-/

namespace A217586.P5924336689459652372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135523 (n + 1)) 2

end

end A217586.P5924336689459652372

namespace A217586

/-- `A135523(n+1)%2` -/
def P5924336689459652372.Spec : Prop :=
  ∀ n, P5924336689459652372.a n = A217586 (n + 1)

end A217586

/-! ## A217586.P7551341914753365404

`A135529(n+1)%2`
-/

namespace A217586.P7551341914753365404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135529 (n + 1)) 2

end

end A217586.P7551341914753365404

namespace A217586

/-- `A135529(n+1)%2` -/
def P7551341914753365404.Spec : Prop :=
  ∀ n, P7551341914753365404.a n = A217586 (n + 1)

end A217586

/-! ## A217586.P4907985679981437475

`A135534(n+1)%3`
-/

namespace A217586.P4907985679981437475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135534 (n + 1)) 3

end

end A217586.P4907985679981437475

namespace A217586

/-- `A135534(n+1)%3` -/
def P4907985679981437475.Spec : Prop :=
  ∀ n, P4907985679981437475.a n = A217586 (n + 1)

end A217586

/-! ## A217586.P2041288648165772196

`1-Δ[A298952(n)]²`
-/

namespace A217586.P2041288648165772196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) ^ 2

end

end A217586.P2041288648165772196

namespace A217586

/-- `1-Δ[A298952(n)]²` -/
def P2041288648165772196.Spec : Prop :=
  ∀ n, P2041288648165772196.a n = A217586 (n + 1)

end A217586

/-! ## A217586.P17841862908337282805

`log2(gcd(2, A135560(n+1)))`
-/

namespace A217586.P17841862908337282805
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A135560 (n + 1)) : ℝ)

end

end A217586.P17841862908337282805

namespace A217586

/-- `log2(gcd(2, A135560(n+1)))` -/
def P17841862908337282805.Spec : Prop :=
  ∀ n, P17841862908337282805.a n = (A217586 (n + 1) : ℝ)

end A217586

/-! ## A217586.P9032671258710773989

`1-char[A039982(n)+n]`
-/

namespace A217586.P9032671258710773989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039982 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A217586.P9032671258710773989

namespace A217586

/-- `1-char[A039982(n)+n]` -/
def P9032671258710773989.Spec : Prop :=
  ∀ n, P9032671258710773989.a n = A217586 (n + 1)

end A217586

/-!
# A217587: Primes p of the form 420k + 1 for some k.

The programs for A217587, the canonical program `A217587.P11225916945597616311` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217587 has offset 1).

The definition of A217587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1224 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217587.P9940256100246182718

`∩[A073102(n+1), A139644(n+1)]`
-/

namespace A217587.P9940256100246182718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217587.P9940256100246182718

namespace A217587

/-- `∩[A073102(n+1), A139644(n+1)]` -/
def P9940256100246182718.Spec : Prop :=
  ∀ n, (P9940256100246182718.a n : ℤ) = A217587 (n + 1)

end A217587

/-! ## A217587.P16402940955429845874

`∩[A139644(n+1), A140535(n+1)]`
-/

namespace A217587.P16402940955429845874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217587.P16402940955429845874

namespace A217587

/-- `∩[A139644(n+1), A140535(n+1)]` -/
def P16402940955429845874.Spec : Prop :=
  ∀ n, (P16402940955429845874.a n : ℤ) = A217587 (n + 1)

end A217587

/-! ## A217587.P7592306670025409593

`∩[A139644(n+1), A142076(n+1)]`
-/

namespace A217587.P7592306670025409593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217587.P7592306670025409593

namespace A217587

/-- `∩[A139644(n+1), A142076(n+1)]` -/
def P7592306670025409593.Spec : Prop :=
  ∀ n, (P7592306670025409593.a n : ℤ) = A217587 (n + 1)

end A217587

/-! ## A217587.P5441587812043612033

`∩[A073102(n+1), A088955(n+1)]`
-/

namespace A217587.P5441587812043612033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217587.P5441587812043612033

namespace A217587

/-- `∩[A073102(n+1), A088955(n+1)]` -/
def P5441587812043612033.Spec : Prop :=
  ∀ n, (P5441587812043612033.a n : ℤ) = A217587 (n + 1)

end A217587

/-! ## A217587.P16057440450586690981

`∩[A088955(n+1), A140535(n+1)]`
-/

namespace A217587.P16057440450586690981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217587.P16057440450586690981

namespace A217587

/-- `∩[A088955(n+1), A140535(n+1)]` -/
def P16057440450586690981.Spec : Prop :=
  ∀ n, (P16057440450586690981.a n : ℤ) = A217587 (n + 1)

end A217587

/-! ## A217587.P3747304289322999040

`∩[A088955(n+1), A142076(n+1)]`
-/

namespace A217587.P3747304289322999040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217587.P3747304289322999040

namespace A217587

/-- `∩[A088955(n+1), A142076(n+1)]` -/
def P3747304289322999040.Spec : Prop :=
  ∀ n, (P3747304289322999040.a n : ℤ) = A217587 (n + 1)

end A217587

/-! ## A217587.P11225916945597616311

`∩[A073102(n+1), A093359(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A217587

/-- `∩[A073102(n+1), A093359(n+1)]` -/
def P11225916945597616311.Spec : Prop :=
  ∀ n, (P11225916945597616311.a n : ℤ) = A217587 (n + 1)

theorem P11225916945597616311.correct : P11225916945597616311.Spec := by
  intro n
  simp only [A217587, Nat.add_sub_cancel]

end A217587

/-! ## A217587.P15684100191196813710

`∩[A088955(n+1), A093359(n+1)]`
-/

namespace A217587.P15684100191196813710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217587.P15684100191196813710

namespace A217587

/-- `∩[A088955(n+1), A093359(n+1)]` -/
def P15684100191196813710.Spec : Prop :=
  ∀ n, (P15684100191196813710.a n : ℤ) = A217587 (n + 1)

end A217587

/-! ## A217587.P12384956636855863432

`∩[A088955(n+1), A111092(n+1)]`
-/

namespace A217587.P12384956636855863432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217587.P12384956636855863432

namespace A217587

/-- `∩[A088955(n+1), A111092(n+1)]` -/
def P12384956636855863432.Spec : Prop :=
  ∀ n, (P12384956636855863432.a n : ℤ) = A217587 (n + 1)

end A217587

/-! ## A217587.P17240442327994993005

`∩[A088955(n+1), A124826(n+1)]`
-/

namespace A217587.P17240442327994993005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217587.P17240442327994993005

namespace A217587

/-- `∩[A088955(n+1), A124826(n+1)]` -/
def P17240442327994993005.Spec : Prop :=
  ∀ n, (P17240442327994993005.a n : ℤ) = A217587 (n + 1)

end A217587

/-! ## A217587.P3243454014416678759

`∩[A093359(n+1), A140535(n+1)]`
-/

namespace A217587.P3243454014416678759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217587.P3243454014416678759

namespace A217587

/-- `∩[A093359(n+1), A140535(n+1)]` -/
def P3243454014416678759.Spec : Prop :=
  ∀ n, (P3243454014416678759.a n : ℤ) = A217587 (n + 1)

end A217587

/-! ## A217587.P1614572986310194053

`∩[A111092(n+1), A139644(n+1)]`
-/

namespace A217587.P1614572986310194053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217587.P1614572986310194053

namespace A217587

/-- `∩[A111092(n+1), A139644(n+1)]` -/
def P1614572986310194053.Spec : Prop :=
  ∀ n, (P1614572986310194053.a n : ℤ) = A217587 (n + 1)

end A217587

/-! ## A217587.P6518858151203577259

`∩[A033215(n+1), A073102(n+1)]`
-/

namespace A217587.P6518858151203577259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217587.P6518858151203577259

namespace A217587

/-- `∩[A033215(n+1), A073102(n+1)]` -/
def P6518858151203577259.Spec : Prop :=
  ∀ n, (P6518858151203577259.a n : ℤ) = A217587 (n + 1)

end A217587

/-! ## A217587.P7164885076514305388

`∩[A033215(n+1), A111092(n+1)]`
-/

namespace A217587.P7164885076514305388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217587.P7164885076514305388

namespace A217587

/-- `∩[A033215(n+1), A111092(n+1)]` -/
def P7164885076514305388.Spec : Prop :=
  ∀ n, (P7164885076514305388.a n : ℤ) = A217587 (n + 1)

end A217587

/-! ## A217587.P11348793881346761169

`∩[A033215(n+1), A140535(n+1)]`
-/

namespace A217587.P11348793881346761169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217587.P11348793881346761169

namespace A217587

/-- `∩[A033215(n+1), A140535(n+1)]` -/
def P11348793881346761169.Spec : Prop :=
  ∀ n, (P11348793881346761169.a n : ℤ) = A217587 (n + 1)

end A217587

/-! ## A217587.P11174637744352416879

`∩[A033215(n+1), A142076(n+1)]`
-/

namespace A217587.P11174637744352416879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217587.P11174637744352416879

namespace A217587

/-- `∩[A033215(n+1), A142076(n+1)]` -/
def P11174637744352416879.Spec : Prop :=
  ∀ n, (P11174637744352416879.a n : ℤ) = A217587 (n + 1)

end A217587

/-! ## A217587.P9582185692099370835

`∩[A073102(n+1), A139495(n+1)]`
-/

namespace A217587.P9582185692099370835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217587.P9582185692099370835

namespace A217587

/-- `∩[A073102(n+1), A139495(n+1)]` -/
def P9582185692099370835.Spec : Prop :=
  ∀ n, (P9582185692099370835.a n : ℤ) = A217587 (n + 1)

end A217587

/-! ## A217587.P6639287198645942477

`∩[A139495(n+1), A140535(n+1)]`
-/

namespace A217587.P6639287198645942477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217587.P6639287198645942477

namespace A217587

/-- `∩[A139495(n+1), A140535(n+1)]` -/
def P6639287198645942477.Spec : Prop :=
  ∀ n, (P6639287198645942477.a n : ℤ) = A217587 (n + 1)

end A217587

/-! ## A217587.P9129797480027598763

`∩[A073102(n+1), A107152(n+1)]`
-/

namespace A217587.P9129797480027598763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217587.P9129797480027598763

namespace A217587

/-- `∩[A073102(n+1), A107152(n+1)]` -/
def P9129797480027598763.Spec : Prop :=
  ∀ n, (P9129797480027598763.a n : ℤ) = A217587 (n + 1)

end A217587

/-! ## A217587.P11298640031634926190

`∩[A107152(n+1), A140535(n+1)]`
-/

namespace A217587.P11298640031634926190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217587.P11298640031634926190

namespace A217587

/-- `∩[A107152(n+1), A140535(n+1)]` -/
def P11298640031634926190.Spec : Prop :=
  ∀ n, (P11298640031634926190.a n : ℤ) = A217587 (n + 1)

end A217587

/-!
# A217588: Primes of the form 2520k + 1 for some k.

The programs for A217588, the canonical program `A217588.P3017189928646110220` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217588 has offset 1).

The definition of A217588 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A217588.anchor (n : ℕ) (hn : 1 ≤ n) : A217588 n = (Nat.nth (fun p => p.Prime ∧ p % 2520 ∈ ({1} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A217.A217588`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A217588.P10480821626818083950

`∩[A142889(n+1), A217862(n+1)]`
-/

namespace A217588.P10480821626818083950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217588.P10480821626818083950

namespace A217588

/-- `∩[A142889(n+1), A217862(n+1)]` -/
def P10480821626818083950.Spec : Prop :=
  ∀ n, (P10480821626818083950.a n : ℤ) = A217588 (n + 1)

end A217588

/-! ## A217588.P4475544970308432185

`∩[A142889(n+1), A163623(n+1)]`
-/

namespace A217588.P4475544970308432185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217588.P4475544970308432185

namespace A217588

/-- `∩[A142889(n+1), A163623(n+1)]` -/
def P4475544970308432185.Spec : Prop :=
  ∀ n, (P4475544970308432185.a n : ℤ) = A217588 (n + 1)

end A217588

/-! ## A217588.P3017189928646110220

`∩[A142312(n+1), A142641(n+1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A217588

/-- `∩[A142312(n+1), A142641(n+1)]` -/
def P3017189928646110220.Spec : Prop :=
  ∀ n, (P3017189928646110220.a n : ℤ) = A217588 (n + 1)

theorem P3017189928646110220.correct : P3017189928646110220.Spec := by
  intro n
  simp only [A217588, Nat.add_sub_cancel]

end A217588

/-! ## A217588.P14834317764102632860

`∩[A142312(n+1), A217862(n+1)]`
-/

namespace A217588.P14834317764102632860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217588.P14834317764102632860

namespace A217588

/-- `∩[A142312(n+1), A217862(n+1)]` -/
def P14834317764102632860.Spec : Prop :=
  ∀ n, (P14834317764102632860.a n : ℤ) = A217588 (n + 1)

end A217588

/-! ## A217588.P9579916136949202195

`∩[A142183(n+1), A142889(n+1)]`
-/

namespace A217588.P9579916136949202195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217588.P9579916136949202195

namespace A217588

/-- `∩[A142183(n+1), A142889(n+1)]` -/
def P9579916136949202195.Spec : Prop :=
  ∀ n, (P9579916136949202195.a n : ℤ) = A217588 (n + 1)

end A217588

/-! ## A217588.P7845676086819876103

`∩[A089716(n+1), A217862(n+1)]`
-/

namespace A217588.P7845676086819876103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217588.P7845676086819876103

namespace A217588

/-- `∩[A089716(n+1), A217862(n+1)]` -/
def P7845676086819876103.Spec : Prop :=
  ∀ n, (P7845676086819876103.a n : ℤ) = A217588 (n + 1)

end A217588

/-! ## A217588.P12119999305406148926

`∩[A057541(n+1), A217587(n+1)]`
-/

namespace A217588.P12119999305406148926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217588.P12119999305406148926

namespace A217588

/-- `∩[A057541(n+1), A217587(n+1)]` -/
def P12119999305406148926.Spec : Prop :=
  ∀ n, (P12119999305406148926.a n : ℤ) = A217588 (n + 1)

end A217588

/-! ## A217588.P1975085527918534998

`∩[A057541(n+1), A217862(n+1)]`
-/

namespace A217588.P1975085527918534998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217588.P1975085527918534998

namespace A217588

/-- `∩[A057541(n+1), A217862(n+1)]` -/
def P1975085527918534998.Spec : Prop :=
  ∀ n, (P1975085527918534998.a n : ℤ) = A217588 (n + 1)

end A217588

/-! ## A217588.P16944641256870350410

`p?[45*56*n+1]`
-/

namespace A217588.P16944641256870350410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  45 * (56 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A217588.P16944641256870350410

namespace A217588

/-- `p?[45*56*n+1]` -/
def P16944641256870350410.Spec : Prop :=
  ∀ n, (P16944641256870350410.a n : ℤ) = A217588 (n + 1)

end A217588

/-! ## A217588.P14693174098684711162

`or(1, p?[A166931(n+1)+2])`
-/

namespace A217588.P14693174098684711162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166931 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A217588.P14693174098684711162

namespace A217588

/-- `or(1, p?[A166931(n+1)+2])` -/
def P14693174098684711162.Spec : Prop :=
  ∀ n, P14693174098684711162.a n = A217588 (n + 1)

end A217588

/-! ## A217588.P1694532479726867846

`lcm(p?[A166931(n+1)+2], A033999(n))`
-/

namespace A217588.P1694532479726867846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166931 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A033999 n)

end

end A217588.P1694532479726867846

namespace A217588

/-- `lcm(p?[A166931(n+1)+2], A033999(n))` -/
def P1694532479726867846.Spec : Prop :=
  ∀ n, (P1694532479726867846.a n : ℤ) = A217588 (n + 1)

end A217588

/-! ## A217588.P818724540806531897

`char[A079048(n)]+p?[A166931(n+1)+2]`
-/

namespace A217588.P818724540806531897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079048 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166931 (n + 1) + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A217588.P818724540806531897

namespace A217588

/-- `char[A079048(n)]+p?[A166931(n+1)+2]` -/
def P818724540806531897.Spec : Prop :=
  ∀ n, P818724540806531897.a n = A217588 (n + 1)

end A217588

/-! ## A217588.P3649246136090756916

`A000007(n+1)+p?[A166931(n+1)+2]`
-/

namespace A217588.P3649246136090756916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166931 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217588.P3649246136090756916

namespace A217588

/-- `A000007(n+1)+p?[A166931(n+1)+2]` -/
def P3649246136090756916.Spec : Prop :=
  ∀ n, P3649246136090756916.a n = A217588 (n + 1)

end A217588

/-! ## A217588.P3190718170109083612

`A000038(n+1)+p?[A166931(n+1)+2]`
-/

namespace A217588.P3190718170109083612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166931 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217588.P3190718170109083612

namespace A217588

/-- `A000038(n+1)+p?[A166931(n+1)+2]` -/
def P3190718170109083612.Spec : Prop :=
  ∀ n, P3190718170109083612.a n = A217588 (n + 1)

end A217588

/-! ## A217588.P15476505341351380500

`p?[A166931(n+1)+2]^(A002061(n)%2)`
-/

namespace A217588.P15476505341351380500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166931 (n + 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (Int.tmod (A002061 n) 2 : ℤ)

end

end A217588.P15476505341351380500

namespace A217588

/-- `p?[A166931(n+1)+2]^(A002061(n)%2)` -/
def P15476505341351380500.Spec : Prop :=
  ∀ n, P15476505341351380500.a n = (A217588 (n + 1) : ℚ)

end A217588

/-! ## A217588.P15546082132482106439

`p?[A166931(n+1)+2]/A007318(C(2, n))`
-/

namespace A217588.P15546082132482106439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166931 (n + 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A217588.P15546082132482106439

namespace A217588

/-- `p?[A166931(n+1)+2]/A007318(C(2, n))` -/
def P15546082132482106439.Spec : Prop :=
  ∀ n, P15546082132482106439.a n = (A217588 (n + 1) : ℚ)

end A217588

/-! ## A217588.P9555027414721633106

`p?[A166931(n+1)+2]%A001567(n+1)²`
-/

namespace A217588.P9555027414721633106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166931 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A001567 (n + 1) ^ 2)

end

end A217588.P9555027414721633106

namespace A217588

/-- `p?[A166931(n+1)+2]%A001567(n+1)²` -/
def P9555027414721633106.Spec : Prop :=
  ∀ n, P9555027414721633106.a n = A217588 (n + 1)

end A217588

/-! ## A217588.P4947376691148896001

`p?[A166931(n+1)+2]/A000041(C(2, n+2))`
-/

namespace A217588.P4947376691148896001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166931 (n + 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A217588.P4947376691148896001

namespace A217588

/-- `p?[A166931(n+1)+2]/A000041(C(2, n+2))` -/
def P4947376691148896001.Spec : Prop :=
  ∀ n, P4947376691148896001.a n = (A217588 (n + 1) : ℚ)

end A217588

/-!
# A217589: Bit reversed 16-bit numbers.

The programs for A217589, the canonical program `A217589.P10449926798010801617` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217589 has offset 0).

The definition of A217589 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217589.P10449926798010801617

`A040000(n)^8*A160638(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A217589

/-- `A040000(n)^8*A160638(n)` -/
def P10449926798010801617.Spec : Prop :=
  ∀ n, P10449926798010801617.a n = A217589 n

theorem P10449926798010801617.correct : P10449926798010801617.Spec := by
  intro n
  simp only [A217589]

end A217589

/-! ## A217589.P15189989269459832785

`A237271(A002476(n+1))^8*A160638(n)`
-/

namespace A217589.P15189989269459832785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A002476 (n + 1)).toNat ^ 8 * A160638 n

end

end A217589.P15189989269459832785

namespace A217589

/-- `A237271(A002476(n+1))^8*A160638(n)` -/
def P15189989269459832785.Spec : Prop :=
  ∀ n, P15189989269459832785.a n = A217589 n

end A217589

/-! ## A217589.P12102609330230422509

`A237271(A107801(n+1))^8*A160638(n)`
-/

namespace A217589.P12102609330230422509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A107801 (n + 1)).toNat ^ 8 * A160638 n

end

end A217589.P12102609330230422509

namespace A217589

/-- `A237271(A107801(n+1))^8*A160638(n)` -/
def P12102609330230422509.Spec : Prop :=
  ∀ n, P12102609330230422509.a n = A217589 n

end A217589

/-! ## A217589.P1631580129907789269

`A237271(A373802(n+1))^8*A160638(n)`
-/

namespace A217589.P1631580129907789269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A373802 (n + 1)).toNat ^ 8 * A160638 n

end

end A217589.P1631580129907789269

namespace A217589

/-- `A237271(A373802(n+1))^8*A160638(n)` -/
def P1631580129907789269.Spec : Prop :=
  ∀ n, P1631580129907789269.a n = A217589 n

end A217589

/-!
# A217590: Values in A091579 that need to be smoothed in order to produce A091588.

The programs for A217590, there is no canonical definition to state claims against.
-/

/-! ## A217590.P2341892168296765929

`A091588(n+1)+1`
-/

namespace A217590.P2341892168296765929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091588 (n + 1) + 1

end

end A217590.P2341892168296765929

/-! ## A217590.P12267528422584558558

`Δ[∑[A091588(n)]-A024000(n)]`
-/

namespace A217590.P12267528422584558558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091588 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A024000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217590.P12267528422584558558

/-! ## A217590.P16803518137722079262

`A291749(A055046(n+1))+A091587(n+1)`
-/

namespace A217590.P16803518137722079262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291749 (A055046 (n + 1)).toNat + A091587 (n + 1)

end

end A217590.P16803518137722079262

/-! ## A217590.P2989814793339615328

`A091587(n+1)+A010054(A278613(n))`
-/

namespace A217590.P2989814793339615328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091587 (n + 1) + A010054 (A278613 n).toNat

end

end A217590.P2989814793339615328

/-!
# A217591: Absolute differences between emirps (A006567) and their reversals.

The programs for A217591, there is no canonical definition to state claims against.
-/

/-! ## A217591.P7312430181422591373

`abs(A056965(A006567(n+1)))`
-/

namespace A217591.P7312430181422591373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056965 (A006567 (n + 1)).toNat|

end

end A217591.P7312430181422591373

/-! ## A217591.P626947186613957992

`gcd(A014027(3*n+1), A056965(A006567(n+1)))`
-/

namespace A217591.P626947186613957992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014027 (3 * n + 1)) (A056965 (A006567 (n + 1)).toNat)

end

end A217591.P626947186613957992

/-!
# A217593: Square array T, read by antidiagonals: T(n,k) = 0 if n-k >=1 or if k-n >= 9, T(0,k) = 1 for k = 0..8, T(n,k) = T(n-1,k) + T(n,k-1).

The programs for A217593, there is no canonical definition to state claims against.
-/

/-! ## A217593.P14136710435593056397

`A003056(A144299(n)%A153288(n))`
-/

namespace A217593.P14136710435593056397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.tmod (A144299 n) (A153288 n)).toNat

end

end A217593.P14136710435593056397

/-! ## A217593.P14903262749999261843

`A120730(A061579(n))%A153288(n)`
-/

namespace A217593.P14903262749999261843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120730 (A061579 n).toNat) (A153288 n)

end

end A217593.P14903262749999261843

/-! ## A217593.P1746193864989915269

`A217315(n)-A143433(A143416(n+3))`
-/

namespace A217593.P1746193864989915269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217315 n - A143433 (A143416 (n + 3)).toNat

end

end A217593.P1746193864989915269

/-! ## A217593.P16912894858585371986

`A082860(A144299(n))`
-/

namespace A217593.P16912894858585371986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082860 (A144299 n).toNat

end

end A217593.P16912894858585371986

/-! ## A217593.P17907894466077158991

`A217315(n)%A002764(n)`
-/

namespace A217593.P17907894466077158991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217315 n) (A002764 n)

end

end A217593.P17907894466077158991

/-!
# A217595: Number of free n-celled polyominoes without holes and odd side lengths.

The programs for A217595, there is no canonical definition to state claims against.
-/

/-! ## A217595.P354659460511214522

`A322440(n)-A066272(A152806(n))`
-/

namespace A217595.P354659460511214522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322440 n - A066272 (A152806 n).toNat

end

end A217595.P354659460511214522

/-! ## A217595.P14016191509732485843

`A347578(A001630(n)+A000720(n+1))`
-/

namespace A217595.P14016191509732485843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347578 (A001630 n + A000720 (n + 1)).toNat

end

end A217595.P14016191509732485843

/-! ## A217595.P5717115501046249483

`A050333(A000045(n+3)-A337667(n))`
-/

namespace A217595.P5717115501046249483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050333 (A000045 (n + 3) - A337667 n).toNat

end

end A217595.P5717115501046249483

/-!
# A217596: Expansion of g.f. x / reversion(x - x^2 - x^3).

The programs for A217596, there is no canonical definition to state claims against.
-/

/-! ## A217596.P474724727012357650

`A168051(n)-A137588(A130579(n))`
-/

namespace A217596.P474724727012357650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168051 n - A137588 (A130579 n).toNat

end

end A217596.P474724727012357650

/-!
# A217599: Prime(n), where n is such that (Sum_{i=1..n} prime(i)^2) / n is an integer.

The programs for A217599, there is no canonical definition to state claims against.
-/

/-! ## A217599.P16471127143428343858

`A000040(A111441(n+1))`
-/

namespace A217599.P16471127143428343858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A111441 (n + 1)).toNat

end

end A217599.P16471127143428343858

/-! ## A217599.P17263367227034572663

`A171057(A111441(comp[7*n]))`
-/

namespace A217599.P17263367227034572663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171057 (A111441 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A217599.P17263367227034572663

