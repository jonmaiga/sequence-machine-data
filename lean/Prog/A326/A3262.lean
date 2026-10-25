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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
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
import Seq.B010.C000
import Seq.B011.C000
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
# A326200: Lexicographically earliest sequence such that a(i) = a(j) => sigma(i)/i = sigma(j)/j for all i, j.

The programs for A326200, there is no canonical definition to state claims against.
-/

/-! ## A326200.P15427865701557817284

`A214701(A094759(n+1))`
-/

namespace A326200.P15427865701557817284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A094759 (n + 1)).toNat

end

end A326200.P15427865701557817284

/-! ## A326200.P1752584525645615990

`A094759(n+1)-A325169(n-a(n-1)+1)` with `a(0)=1`
-/

namespace A326200.P1752584525645615990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A094759 (n + 1) - A325169 ((n : ℤ) - a (n - 1) + 1).toNat

end

end A326200.P1752584525645615990

/-! ## A326200.P12535936437852787583

`A094759(n+1)-∑[∑{e}[A118135(n), #]]`
-/

namespace A326200.P12535936437852787583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118135 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094759 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A326200.P12535936437852787583

/-! ## A326200.P918721598717606047

`A094759(n+1)-∑[A118135(A118135(n))]`
-/

namespace A326200.P918721598717606047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118135 (A118135 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094759 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326200.P918721598717606047

/-!
# A326201: Lexicographically earliest sequence such that for all i, j, a(i) = a(j) => f(i) = f(j), where f(n) = 0 if n > 1 and gcd(n,A000005(n)) = 1, with f(n) = n for all other numbers.

The programs for A326201, there is no canonical definition to state claims against.
-/

/-! ## A326201.P5955059289792996993

`or(A108563(A011782(n)), A319698(n+1))`
-/

namespace A326201.P5955059289792996993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A108563 (A011782 n).toNat) (A319698 (n + 1))

end

end A326201.P5955059289792996993

/-! ## A326201.P16658377564919065872

`or(A319697(A277867(n)), A319698(n+1))`
-/

namespace A326201.P16658377564919065872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A319697 (A277867 n).toNat) (A319698 (n + 1))

end

end A326201.P16658377564919065872

/-! ## A326201.P9910408182526768873

`or(A267053(n), A293217(A077168(n)))`
-/

namespace A326201.P9910408182526768873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A267053 n) (A293217 (A077168 n).toNat)

end

end A326201.P9910408182526768873

/-! ## A326201.P2090371852791593055

`A293217(n+1)+A021913(A022569(n))`
-/

namespace A326201.P2090371852791593055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293217 (n + 1) + A021913 (A022569 n).toNat

end

end A326201.P2090371852791593055

/-!
# A326202: Lexicographically earliest sequence such that for all i, j, a(i) = a(j) => f(i) = f(j), where f(n) = 0 if n > 2 and gcd(n,sigma(n)) = 1, with f(n) = n for all other numbers.

The programs for A326202, there is no canonical definition to state claims against.
-/

/-! ## A326202.P5130883079614081866

`A322988(n+1)%A065770(A024191(n+1))`
-/

namespace A326202.P5130883079614081866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322988 (n + 1)) (A065770 (A024191 (n + 1)).toNat)

end

end A326202.P5130883079614081866

/-!
# A326203: Lexicographically earliest sequence such that for all i, j, a(i) = a(j) => f(i) = f(j), where f(n) = 0 if n > 2 and gcd(n,phi(n)) = 1, with f(n) = n for all other numbers.

The programs for A326203, there is no canonical definition to state claims against.
-/

/-! ## A326203.P132102793202773614

`A322588(n+1)%A002326(A232797(n+1))`
-/

namespace A326203.P132102793202773614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322588 (n + 1)) (A002326 (A232797 (n + 1)).toNat)

end

end A326203.P132102793202773614

/-! ## A326203.P9023956092049049477

`A323401(n+1)%A050547(A201733(n+1))`
-/

namespace A326203.P9023956092049049477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323401 (n + 1)) (A050547 (A201733 (n + 1)).toNat)

end

end A326203.P9023956092049049477

/-! ## A326203.P9174332499402804101

`A322810(lt[A001157(n+1), A195819(n)])`
-/

namespace A326203.P9174332499402804101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322810 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A326203.P9174332499402804101

/-!
# A326204: Number of Hamiltonian labeled n-vertex digraphs (with loops).

The programs for A326204, there is no canonical definition to state claims against.
-/

/-! ## A326204.P7057717489268780859

`A002416(n)-A326220(n)`
-/

namespace A326204.P7057717489268780859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002416 n - A326220 n

end

end A326204.P7057717489268780859

/-! ## A326204.P7582367669298263245

`2^n*A326219(n)`
-/

namespace A326204.P7582367669298263245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A326219 n

end

end A326204.P7582367669298263245

/-! ## A326204.P7513774141321655492

`A000079(n²)-A326220(n)`
-/

namespace A326204.P7513774141321655492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n ^ 2) - A326220 n

end

end A326204.P7513774141321655492

/-!
# A326205: Number of n-vertex labeled simple graphs not containing a Hamiltonian path.

The programs for A326205, there is no canonical definition to state claims against.
-/

/-! ## A326205.P16890068505161131616

`A006125(n)-A326206(n)`
-/

namespace A326205.P16890068505161131616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n - A326206 n

end

end A326205.P16890068505161131616

/-! ## A326205.P7117120357259712490

`sqrt(A053763(n))-A326206(n)`
-/

namespace A326205.P7117120357259712490
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053763 n : ℝ) - (A326206 n : ℝ)

end

end A326205.P7117120357259712490

/-! ## A326205.P7888477717280324734

`∏[A011782(n)]-A326206(n)`
-/

namespace A326205.P7888477717280324734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A326206 n

end

end A326205.P7888477717280324734

/-! ## A326205.P1895058789171339702

`∏[A249169(n)]-A326206(n)`
-/

namespace A326205.P1895058789171339702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249169 (n + 15)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A326206 n

end

end A326205.P1895058789171339702

/-! ## A326205.P4816251247814380312

`∏[A274864(n)]-A326206(n)`
-/

namespace A326205.P4816251247814380312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A326206 n

end

end A326205.P4816251247814380312

/-!
# A326206: Number of n-vertex labeled simple graphs containing a Hamiltonian path.

The programs for A326206, there is no canonical definition to state claims against.
-/

/-! ## A326206.P5409086448948778395

`A006125(n)-A326205(n)`
-/

namespace A326206.P5409086448948778395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n - A326205 n

end

end A326206.P5409086448948778395

/-! ## A326206.P7734308322061065039

`sqrt(A053763(n))-A326205(n)`
-/

namespace A326206.P7734308322061065039
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053763 n : ℝ) - (A326205 n : ℝ)

end

end A326206.P7734308322061065039

/-! ## A326206.P17914820059770456155

`∏[A011782(n)]-A326205(n)`
-/

namespace A326206.P17914820059770456155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A326205 n

end

end A326206.P17914820059770456155

/-! ## A326206.P1455016366282871388

`∏[A249169(n)]-A326205(n)`
-/

namespace A326206.P1455016366282871388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249169 (n + 15)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A326205 n

end

end A326206.P1455016366282871388

/-! ## A326206.P15127216128989772233

`∏[A274864(n)]-A326205(n)`
-/

namespace A326206.P15127216128989772233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A326205 n

end

end A326206.P15127216128989772233

/-!
# A326207: Number of non-Hamiltonian labeled simple graphs with n vertices.

The programs for A326207, there is no canonical definition to state claims against.
-/

/-! ## A326207.P6295803850733984713

`A006125(n)-A326208(n)`
-/

namespace A326207.P6295803850733984713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n - A326208 n

end

end A326207.P6295803850733984713

/-! ## A326207.P13888456062150329568

`sqrt(A053763(n))-A326208(n)`
-/

namespace A326207.P13888456062150329568
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053763 n : ℝ) - (A326208 n : ℝ)

end

end A326207.P13888456062150329568

/-! ## A326207.P12712315966355296117

`∏[A011782(n)]-A326208(n)`
-/

namespace A326207.P12712315966355296117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A326208 n

end

end A326207.P12712315966355296117

/-! ## A326207.P6434296684002784168

`∏[A249169(n)]-A326208(n)`
-/

namespace A326207.P6434296684002784168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249169 (n + 15)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A326208 n

end

end A326207.P6434296684002784168

/-! ## A326207.P15334425444930407527

`A326205(n)+A326206(n)-A326208(n)`
-/

namespace A326207.P15334425444930407527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326205 n + (A326206 n - A326208 n)

end

end A326207.P15334425444930407527

/-!
# A326208: Number of Hamiltonian labeled simple graphs with n vertices.

The programs for A326208, there is no canonical definition to state claims against.
-/

/-! ## A326208.P2109311631468278579

`A006125(n)-A326207(n)`
-/

namespace A326208.P2109311631468278579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n - A326207 n

end

end A326208.P2109311631468278579

/-! ## A326208.P12053647140887622359

`sqrt(A053763(n))-A326207(n)`
-/

namespace A326208.P12053647140887622359
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053763 n : ℝ) - (A326207 n : ℝ)

end

end A326208.P12053647140887622359

/-! ## A326208.P12375460788261656673

`∏[A011782(n)]-A326207(n)`
-/

namespace A326208.P12375460788261656673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A326207 n

end

end A326208.P12375460788261656673

/-! ## A326208.P5410157290324797422

`∏[A249169(n)]-A326207(n)`
-/

namespace A326208.P5410157290324797422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249169 (n + 15)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A326207 n

end

end A326208.P5410157290324797422

/-! ## A326208.P17441356970296108927

`∏[A274864(n)]-A326207(n)`
-/

namespace A326208.P17441356970296108927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A326207 n

end

end A326208.P17441356970296108927

/-!
# A326209: Number of nesting labeled digraphs with vertices {1..n}.

The programs for A326209, there is no canonical definition to state claims against.
-/

/-! ## A326209.P7502253463623419755

`2^n²-A326237(n)`
-/

namespace A326209.P7502253463623419755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n ^ 2 : ℤ) - A326237 n

end

end A326209.P7502253463623419755

/-!
# A326210: Number of labeled simple graphs with vertices {1..n} containing a nesting pair of edges, where two edges {a,b}, {c,d} are nesting if a < c and b > d or a > c and b < d.

The programs for A326210, there is no canonical definition to state claims against.
-/

/-! ## A326210.P13388134482099729998

`2^C(n, 2)-A054726(n)`
-/

namespace A326210.P13388134482099729998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.choose n 2 : ℤ) - A054726 n

end

end A326210.P13388134482099729998

/-! ## A326210.P12582378440068998941

`A006125(n)-A054726(n)`
-/

namespace A326210.P12582378440068998941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n - A054726 n

end

end A326210.P12582378440068998941

/-! ## A326210.P5664840182898044048

`∏[A011782(n)]-A054726(n)`
-/

namespace A326210.P5664840182898044048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A054726 n

end

end A326210.P5664840182898044048

/-! ## A326210.P4541389233235337591

`2^A161680(n)-A054726(n)`
-/

namespace A326210.P4541389233235337591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A161680 n : ℤ) - (A054726 n : ℚ)

end

end A326210.P4541389233235337591

/-! ## A326210.P9746460742282757239

`A000079(C(n, 2))-A054726(n)`
-/

namespace A326210.P9746460742282757239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Nat.choose n 2) - A054726 n

end

end A326210.P9746460742282757239

/-!
# A326211: Number of unsortable normal multiset partitions of weight n.

The programs for A326211, there is no canonical definition to state claims against.
-/

/-! ## A326211.P5319332530753126969

`A255906(n)-A326212(n)`
-/

namespace A326211.P5319332530753126969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255906 n - A326212 n

end

end A326211.P5319332530753126969

/-! ## A326211.P9300572361894306835

`A324171(n)+A326277(n)-A326212(n)`
-/

namespace A326211.P9300572361894306835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324171 n + (A326277 n - A326212 n)

end

end A326211.P9300572361894306835

/-! ## A326211.P4933711937424806276

`A255906(n)-A008621(A162551(n)+A006516(n))`
-/

namespace A326211.P4933711937424806276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255906 n - A008621 (A162551 n + A006516 n).toNat

end

end A326211.P4933711937424806276

/-!
# A326212: Number of sortable normal multiset partitions of weight n.

The programs for A326212, there is no canonical definition to state claims against.
-/

/-! ## A326212.P1697130203664310279

`A255906(n)-A326211(n)`
-/

namespace A326212.P1697130203664310279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255906 n - A326211 n

end

end A326212.P1697130203664310279

/-! ## A326212.P6463965844646028851

`A324171(n)+A326277(n)-A326211(n)`
-/

namespace A326212.P6463965844646028851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324171 n + (A326277 n - A326211 n)

end

end A326212.P6463965844646028851

/-! ## A326212.P4836482109600220747

`A008621(A162551(n)+A006516(n))`
-/

namespace A326212.P4836482109600220747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A162551 n + A006516 n).toNat

end

end A326212.P4836482109600220747

/-!
# A326213: Number of labeled n-vertex digraphs (with loops) not containing a (directed) Hamiltonian path.

The programs for A326213, there is no canonical definition to state claims against.
-/

/-! ## A326213.P10792373346054597811

`2^n*A326216(n)`
-/

namespace A326213.P10792373346054597811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A326216 n

end

end A326213.P10792373346054597811

/-!
# A326214: Number of labeled n-vertex digraphs (with loops) containing a (directed) Hamiltonian path.

The programs for A326214, there is no canonical definition to state claims against.
-/

/-! ## A326214.P14437465678922728497

`2^n*A326217(n)`
-/

namespace A326214.P14437465678922728497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A326217 n

end

end A326214.P14437465678922728497

/-!
# A326216: Number of labeled n-vertex digraphs (without loops) not containing a (directed) Hamiltonian path.

The programs for A326216, there is no canonical definition to state claims against.
-/

/-! ## A326216.P9985715771168968865

`2*(n!*a(n-1)+2)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A326216.P9985715771168968865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  2 * (Nat.factorial n * a (n - 1) + 2)

end

end A326216.P9985715771168968865

/-!
# A326217: Number of labeled n-vertex digraphs (without loops) containing a Hamiltonian path.

The programs for A326217, there is no canonical definition to state claims against.
-/

/-! ## A326217.P17913643437177441824

`A326214(n)/2^n`
-/

namespace A326217.P17913643437177441824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326214 n : ℚ) / (2 ^ n : ℚ)

end

end A326217.P17913643437177441824

/-!
# A326218: Number of non-Hamiltonian labeled n-vertex digraphs (without loops).

The programs for A326218, there is no canonical definition to state claims against.
-/

/-! ## A326218.P14648333362164693564

`A326220(n)/2^n`
-/

namespace A326218.P14648333362164693564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326220 n : ℚ) / (2 ^ n : ℚ)

end

end A326218.P14648333362164693564

/-! ## A326218.P2074304252937724341

`A053763(n)-A326219(n)`
-/

namespace A326218.P2074304252937724341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053763 n - A326219 n

end

end A326218.P2074304252937724341

/-! ## A326218.P6024583040085474928

`ceil(A326220(n)/A000079(n))`
-/

namespace A326218.P6024583040085474928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A326220 n : ℚ) / (A000079 n : ℚ)⌉

end

end A326218.P6024583040085474928

/-!
# A326219: Number of labeled n-vertex Hamiltonian digraphs (without loops).

The programs for A326219, there is no canonical definition to state claims against.
-/

/-! ## A326219.P229230253656129254

`A326204(n)/2^n`
-/

namespace A326219.P229230253656129254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326204 n : ℚ) / (2 ^ n : ℚ)

end

end A326219.P229230253656129254

/-! ## A326219.P9433046888330239729

`floor(A326204(n)/A000079(n))`
-/

namespace A326219.P9433046888330239729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A326204 n : ℚ) / (A000079 n : ℚ)⌋

end

end A326219.P9433046888330239729

/-! ## A326219.P12716356406061972027

`A053763(n)/A002416(n)*A326204(n)`
-/

namespace A326219.P12716356406061972027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053763 n : ℚ) / (A002416 n : ℚ) * (A326204 n : ℚ)

end

end A326219.P12716356406061972027

/-!
# A326220: Number of non-Hamiltonian labeled n-vertex digraphs (with loops).

The programs for A326220, there is no canonical definition to state claims against.
-/

/-! ## A326220.P11052098171799238738

`2^n*A326218(n)`
-/

namespace A326220.P11052098171799238738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A326218 n

end

end A326220.P11052098171799238738

/-! ## A326220.P6169738035184874298

`2^n²-A326204(n)`
-/

namespace A326220.P6169738035184874298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n ^ 2 : ℤ) - A326204 n

end

end A326220.P6169738035184874298

/-! ## A326220.P5817458197281648628

`A326218(n)*A395145(n)`
-/

namespace A326220.P5817458197281648628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326218 n * A395145 n

end

end A326220.P5817458197281648628

/-!
# A326221: Number of unlabeled n-vertex digraphs (with loops) containing a Hamiltonian path.

The programs for A326221, there is no canonical definition to state claims against.
-/

/-! ## A326221.P4624587281066342982

`A000595(n)-A326224(n)`
-/

namespace A326221.P4624587281066342982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000595 n - A326224 n

end

end A326221.P4624587281066342982

/-!
# A326222: Number of non-Hamiltonian unlabeled n-vertex digraphs (without loops).

The programs for A326222, there is no canonical definition to state claims against.
-/

/-! ## A326222.P834399434614798618

`A000273(n)-A326225(n)`
-/

namespace A326222.P834399434614798618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000273 n - A326225 n

end

end A326222.P834399434614798618

/-!
# A326223: Number of non-Hamiltonian unlabeled n-vertex digraphs (with loops).

The programs for A326223, there is no canonical definition to state claims against.
-/

/-! ## A326223.P13163366418691361378

`A000595(n)-A326226(n)`
-/

namespace A326223.P13163366418691361378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000595 n - A326226 n

end

end A326223.P13163366418691361378

/-!
# A326224: Number of unlabeled n-vertex digraphs (with loops) not containing a Hamiltonian path.

The programs for A326224, there is no canonical definition to state claims against.
-/

/-! ## A326224.P3080160094514880755

`(2*a(n-1)-1)*(2^n-n-(1-2*n%2))` with `a(0)=1`
-/

namespace A326224.P3080160094514880755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * a (n - 1) - 1) * ((2 ^ n : ℤ) - (n : ℤ) - (1 - ((2 * (n % 2) : ℕ) : ℤ)))

end

end A326224.P3080160094514880755

/-!
# A326225: Number of Hamiltonian unlabeled n-vertex digraphs (without loops).

The programs for A326225, there is no canonical definition to state claims against.
-/

/-! ## A326225.P11755585380946593217

`A000273(n)-A326222(n)`
-/

namespace A326225.P11755585380946593217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000273 n - A326222 n

end

end A326225.P11755585380946593217

/-! ## A326225.P1880724577897477760

`∑[A053598(n)]-A326222(n)`
-/

namespace A326225.P1880724577897477760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A326222 n

end

end A326225.P1880724577897477760

/-! ## A326225.P4924624356428762996

`∑[A217654(∑[n])]-A326222(n)`
-/

namespace A326225.P4924624356428762996
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217654 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A326222 n

end

end A326225.P4924624356428762996

/-! ## A326225.P17874931031162930935

`A067309(n)+A051504(n)-A326222(n)`
-/

namespace A326225.P17874931031162930935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067309 n + A051504 n - A326222 n

end

end A326225.P17874931031162930935

/-!
# A326226: Number of unlabeled n-vertex Hamiltonian digraphs (with loops).

The programs for A326226, there is no canonical definition to state claims against.
-/

/-! ## A326226.P12655775151238596873

`A000595(n)-A326223(n)`
-/

namespace A326226.P12655775151238596873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000595 n - A326223 n

end

end A326226.P12655775151238596873

/-!
# A326227: Indices of nonsquarefree numerators (A001008) of harmonic numbers H(n) = Sum_{k=1..n} 1/k.

The programs for A326227, there is no canonical definition to state claims against.
-/

/-! ## A326227.P7115495695872373375

`record[A143051(n+6)-A326690(n+5)]`
-/

namespace A326227.P7115495695872373375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 (n + 6) - A326690 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326227.P7115495695872373375

/-! ## A326227.P3137251500920214694

`eq[A063884(A356069(n+1)), A353378(3*(n+1))]`
-/

namespace A326227.P3137251500920214694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063884 (A356069 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353378 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326227.P3137251500920214694

/-! ## A326227.P11974572121878613954

`eq[A111612(n+1), A345310(n+1)]`
-/

namespace A326227.P11974572121878613954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345310 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326227.P11974572121878613954

/-! ## A326227.P10042663507836441561

`eq[A111612(n+1), A351926(n+1)]`
-/

namespace A326227.P10042663507836441561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351926 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326227.P10042663507836441561

/-! ## A326227.P5169918502619857681

`lt[A299402(A305800(n+1)), A299757(n+1)]`
-/

namespace A326227.P5169918502619857681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299402 (A305800 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299757 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A326227.P5169918502619857681

/-!
# A326230: Least k > 1 such that k^n is a twin rank (cf. A002822: 6*k^n +- 1 are twin primes).

The programs for A326230, there is no canonical definition to state claims against.
-/

/-! ## A326230.P8049922957439177247

`A326229(∑[n+1])`
-/

namespace A326230.P8049922957439177247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326229 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A326230.P8049922957439177247

/-! ## A326230.P8294007085609119957

`A326229(A025747(n))+char[24]`
-/

namespace A326230.P8294007085609119957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326229 (A025747 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A326230.P8294007085609119957

/-! ## A326230.P6892159775659972440

`A326229(record[A038722(n+1)])+char[24]`
-/

namespace A326230.P6892159775659972440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326229 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A326230.P6892159775659972440

/-! ## A326230.P16140604746912392855

`lcm(A054977(n), A326229(A025747(n)))`
-/

namespace A326230.P16140604746912392855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A326229 (A025747 n).toNat)

end

end A326230.P16140604746912392855

/-! ## A326230.P15017065532605205782

`A054977(3*n+2)*A326229(A025747(n))`
-/

namespace A326230.P15017065532605205782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (3 * n + 2) * A326229 (A025747 n).toNat

end

end A326230.P15017065532605205782

/-!
# A326231: Numbers k such that N = (5*k)^2 is a twin rank (cf. A002822: 6N +- 1 are twin primes).

The programs for A326231, there is no canonical definition to state claims against.
-/

/-! ## A326231.P17111203998316844499

`A326232(n+2)/5`
-/

namespace A326231.P17111203998316844499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326232 (n + 2) : ℚ) / 5

end

end A326231.P17111203998316844499

/-! ## A326231.P12606720298288027461

`∑[A134119(Δ[A326232(n+1)])]`
-/

namespace A326231.P12606720298288027461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326232 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326231.P12606720298288027461

/-! ## A326231.P14542664891390732361

`∑[A008616(2*Δ[A326232(n+1)]+3)]`
-/

namespace A326231.P14542664891390732361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326232 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (2 * (f2 (n + 1) - f2 n) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326231.P14542664891390732361

/-! ## A326231.P1695560053928974177

`A002266(A326232(n+2))`
-/

namespace A326231.P1695560053928974177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A326232 (n + 2)).toNat

end

end A326231.P1695560053928974177

/-! ## A326231.P5199751126325125837

`A134119(A326232(n+1)+Δ[A326232(n+1)])`
-/

namespace A326231.P5199751126325125837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 (A326232 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A326231.P5199751126325125837

/-! ## A326231.P5190386998853242342

`A008616(∑[2*Δ[A326232(n+1)]])`
-/

namespace A326231.P5190386998853242342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326232 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A326231.P5190386998853242342

/-!
# A326232: Numbers k such that N = k^2 is a twin rank (cf. A002822: 6N +- 1 are twin primes).

The programs for A326232, there is no canonical definition to state claims against.
-/

/-! ## A326232.P9337864899329435291

`A326229(A133263(n))-C(2, n+2)`
-/

namespace A326232.P9337864899329435291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326229 (A133263 n).toNat - (Nat.choose 2 (n + 2) : ℤ)

end

end A326232.P9337864899329435291

/-! ## A326232.P11842427115044322516

`A326229(A133263(n))-A000007(n)`
-/

namespace A326232.P11842427115044322516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326229 (A133263 n).toNat - A000007 n

end

end A326232.P11842427115044322516

/-! ## A326232.P4052356671379369053

`A326229(A133263(n))/A054977(n)`
-/

namespace A326232.P4052356671379369053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326229 (A133263 n).toNat : ℚ) / (A054977 n : ℚ)

end

end A326232.P4052356671379369053

/-! ## A326232.P14555379618289968070

`A326229(A133263(n))-char[A022286(n)]`
-/

namespace A326232.P14555379618289968070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022286 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326229 (A133263 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A326232.P14555379618289968070

/-! ## A326232.P13940954691480017235

`A326229(A133263(n))-char[A264443(n)]`
-/

namespace A326232.P13940954691480017235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326229 (A133263 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A326232.P13940954691480017235

/-!
# A326233: Numbers k such that N = (7*k)^3 is a twin rank (A002822: 6N +- 1 are twin primes).

The programs for A326233, there is no canonical definition to state claims against.
-/

/-! ## A326233.P16779319487700780465

`A326234(n+2)/7`
-/

namespace A326233.P16779319487700780465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326234 (n + 2) : ℚ) / 7

end

end A326233.P16779319487700780465

/-! ## A326233.P5716628759648212838

`A106608(A326234(n+2))`
-/

namespace A326233.P5716628759648212838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (A326234 (n + 2)).toNat

end

end A326233.P5716628759648212838

/-! ## A326233.P8625263487311140612

`A326229(A167614(n+1))/7`
-/

namespace A326233.P8625263487311140612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326229 (A167614 (n + 1)).toNat : ℚ) / 7

end

end A326233.P8625263487311140612

/-!
# A326234: Numbers n such that N = n^3 is a twin rank (A002822: 6N +- 1 are twin primes).

The programs for A326234, there is no canonical definition to state claims against.
-/

/-! ## A326234.P10463003217426841630

`record[gcd(A000594(n+1), A013658(n+1))]`
-/

namespace A326234.P10463003217426841630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000594 (n + 1)) (A013658 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326234.P10463003217426841630

/-!
# A326235: Numbers k such that N = (35k)^6 is a twin rank (A002822: 6N +- 1 are twin primes).

The programs for A326235, there is no canonical definition to state claims against.
-/

/-! ## A326235.P6200791283304053112

`A326236(n+2)/35`
-/

namespace A326235.P6200791283304053112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326236 (n + 2) : ℚ) / 35

end

end A326235.P6200791283304053112

/-!
# A326237: Number of non-nesting digraphs with vertices {1..n}, where two edges (a,b), (c,d) are nesting if a < c and b > d or a > c and b < d.

The programs for A326237, there is no canonical definition to state claims against.
-/

/-! ## A326237.P6447813830603365156

`A001850(log2(A011782(n)))*A011782(n+1)`
-/

namespace A326237.P6447813830603365156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat * A011782 (n + 1)

end

end A326237.P6447813830603365156

/-! ## A326237.P1481209075792372000

`2^n*A055587(2*n²)`
-/

namespace A326237.P1481209075792372000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A055587 (2 * n ^ 2)

end

end A326237.P1481209075792372000

/-! ## A326237.P1090120203691089647

`A341344(2*n)`
-/

namespace A326237.P1090120203691089647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341344 (2 * n)

end

end A326237.P1090120203691089647

/-! ## A326237.P17378367516610816341

`record[A341344(n)/(-1)^n]`
-/

namespace A326237.P17378367516610816341
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341344 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326237.P17378367516610816341

/-! ## A326237.P12582767694713270576

`record[A341344((n-1)^(n%2))]`
-/

namespace A326237.P12582767694713270576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341344 (((n : ℤ) - 1) ^ (n % 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326237.P12582767694713270576

/-!
# A326238: Expansion of Sum_{k>=1} k * x^k * (1 - x^k) / (1 + x^k)^3.

The programs for A326238, the canonical program `A326238.P2576865909490230932` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326238 has offset 1).

The definition of A326238 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A326238.P2576865909490230932

`(n+1)*A002129(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A326238

/-- `(n+1)*A002129(n+1)` -/
def P2576865909490230932.Spec : Prop :=
  ∀ n, P2576865909490230932.a n = A326238 (n + 1)

theorem P2576865909490230932.correct : P2576865909490230932.Spec := by
  intro n
  simp only [A326238, Nat.add_sub_cancel]

end A326238

/-! ## A326238.P1592412583303933358

`(n+1)*A122858(n+1)/8`
-/

namespace A326238.P1592412583303933358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A122858 (n + 1) : ℚ) / 8)

end

end A326238.P1592412583303933358

namespace A326238

/-- `(n+1)*A122858(n+1)/8` -/
def P1592412583303933358.Spec : Prop :=
  ∀ n, P1592412583303933358.a n = (A326238 (n + 1) : ℚ)

end A326238

/-! ## A326238.P17398006079133463493

`∑{d}[n+1, #*A162395((n+1)/#)]`
-/

namespace A326238.P17398006079133463493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A162395 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326238.P17398006079133463493

namespace A326238

/-- `∑{d}[n+1, #*A162395((n+1)/#)]` -/
def P17398006079133463493.Spec : Prop :=
  ∀ n, P17398006079133463493.a n = A326238 (n + 1)

end A326238

/-! ## A326238.P9083904955270086493

`(-1)^n*A113184(n+1)*(n+1)`
-/

namespace A326238.P9083904955270086493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A113184 (n + 1) * (n + 1 : ℤ)

end

end A326238.P9083904955270086493

namespace A326238

/-- `(-1)^n*A113184(n+1)*(n+1)` -/
def P9083904955270086493.Spec : Prop :=
  ∀ n, P9083904955270086493.a n = A326238 (n + 1)

end A326238

/-! ## A326238.P6582645634326468377

`(n+1)*∑{d}[n+1, #*A033999(#-1)]`
-/

namespace A326238.P6582645634326468377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A033999 (d - 1))

end

end A326238.P6582645634326468377

namespace A326238

/-- `(n+1)*∑{d}[n+1, #*A033999(#-1)]` -/
def P6582645634326468377.Spec : Prop :=
  ∀ n, P6582645634326468377.a n = A326238 (n + 1)

end A326238

/-! ## A326238.P3492965818965486359

`2*A326125(n+1)-A064987(n+1)`
-/

namespace A326238.P3492965818965486359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A326125 (n + 1) - A064987 (n + 1)

end

end A326238.P3492965818965486359

namespace A326238

/-- `2*A326125(n+1)-A064987(n+1)` -/
def P3492965818965486359.Spec : Prop :=
  ∀ n, P3492965818965486359.a n = A326238 (n + 1)

end A326238

/-! ## A326238.P8697616197269061470

`(A000593(n+1)-A146076(n+1))*(n+1)`
-/

namespace A326238.P8697616197269061470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000593 (n + 1) - A146076 (n + 1)) * (n + 1 : ℤ)

end

end A326238.P8697616197269061470

namespace A326238

/-- `(A000593(n+1)-A146076(n+1))*(n+1)` -/
def P8697616197269061470.Spec : Prop :=
  ∀ n, P8697616197269061470.a n = A326238 (n + 1)

theorem P8697616197269061470.correct : P8697616197269061470.Spec := by
  intro n
  simp only [A326238, Nat.add_sub_cancel, A326238.P8697616197269061470.a, A326238.P2576865909490230932.a, A000593, A000593.P13640346029616979906.a, A002129, A002129.P14132575705783117531.a, A146076, A146076.P5513778411624192836.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326238

/-! ## A326238.P17948410502745460938

`∑{d}[n+1, A000010(#)*A321543((n+1)/#)]`
-/

namespace A326238.P17948410502745460938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A321543 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326238.P17948410502745460938

namespace A326238

/-- `∑{d}[n+1, A000010(#)*A321543((n+1)/#)]` -/
def P17948410502745460938.Spec : Prop :=
  ∀ n, P17948410502745460938.a n = A326238 (n + 1)

end A326238

/-! ## A326238.P3902481849743158996

`∑{d}[n+1, A000203(#)*A338547((n+1)/#)]`
-/

namespace A326238.P3902481849743158996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A338547 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326238.P3902481849743158996

namespace A326238

/-- `∑{d}[n+1, A000203(#)*A338547((n+1)/#)]` -/
def P3902481849743158996.Spec : Prop :=
  ∀ n, P3902481849743158996.a n = A326238 (n + 1)

end A326238

/-! ## A326238.P15866008393527756561

`∑{d}[n+1, A214262(#)*A227128((n+1)/#)]`
-/

namespace A326238.P15866008393527756561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A214262 d * A227128 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326238.P15866008393527756561

namespace A326238

/-- `∑{d}[n+1, A214262(#)*A227128((n+1)/#)]` -/
def P15866008393527756561.Spec : Prop :=
  ∀ n, P15866008393527756561.a n = A326238 (n + 1)

end A326238

/-! ## A326238.P14797079800010783150

`∑{d}[n+1, A162728(#)*A321558((n+1)/#)]`
-/

namespace A326238.P14797079800010783150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A162728 d * A321558 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326238.P14797079800010783150

namespace A326238

/-- `∑{d}[n+1, A162728(#)*A321558((n+1)/#)]` -/
def P14797079800010783150.Spec : Prop :=
  ∀ n, P14797079800010783150.a n = A326238 (n + 1)

end A326238

/-! ## A326238.P9069004739056837734

`∑{d}[n+1, A138501(#)*A395768((n+1)/#)]`
-/

namespace A326238.P9069004739056837734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A138501 d * A395768 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326238.P9069004739056837734

namespace A326238

/-- `∑{d}[n+1, A138501(#)*A395768((n+1)/#)]` -/
def P9069004739056837734.Spec : Prop :=
  ∀ n, P9069004739056837734.a n = A326238 (n + 1)

end A326238

/-! ## A326238.P3376075100307719979

`(A000203((n+1)/and(n+1, -(n+1)))-A146076(n+1))*(n+1)`
-/

namespace A326238.P3376075100307719979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat - A146076 (n + 1)) * (n + 1 : ℤ)

end

end A326238.P3376075100307719979

namespace A326238

/-- `(A000203((n+1)/and(n+1, -(n+1)))-A146076(n+1))*(n+1)` -/
def P3376075100307719979.Spec : Prop :=
  ∀ n, P3376075100307719979.a n = A326238 (n + 1)

end A326238

/-! ## A326238.P1243274755292050160

`(A215947((n+1)/and(n+1, -(n+1)))-A146076(n+1))*(n+1)`
-/

namespace A326238.P1243274755292050160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A215947 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat - A146076 (n + 1)) * (n + 1 : ℤ)

end

end A326238.P1243274755292050160

namespace A326238

/-- `(A215947((n+1)/and(n+1, -(n+1)))-A146076(n+1))*(n+1)` -/
def P1243274755292050160.Spec : Prop :=
  ∀ n, P1243274755292050160.a n = A326238 (n + 1)

end A326238

/-! ## A326238.P11591994601318569996

`∑{d}[n+1, (n+1)*A181983(#)]`
-/

namespace A326238.P11591994601318569996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℤ) * A181983 d

end

end A326238.P11591994601318569996

namespace A326238

/-- `∑{d}[n+1, (n+1)*A181983(#)]` -/
def P11591994601318569996.Spec : Prop :=
  ∀ n, P11591994601318569996.a n = A326238 (n + 1)

end A326238

/-! ## A326238.P10096823641891806103

`-((n+1)*∑{d}[n+1, A038608(#)])`
-/

namespace A326238.P10096823641891806103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A038608 d))

end

end A326238.P10096823641891806103

namespace A326238

/-- `-((n+1)*∑{d}[n+1, A038608(#)])` -/
def P10096823641891806103.Spec : Prop :=
  ∀ n, P10096823641891806103.a n = A326238 (n + 1)

end A326238

/-! ## A326238.P12169452763799027504

`A113184(n+1)*A181983(n+1)`
-/

namespace A326238.P12169452763799027504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113184 (n + 1) * A181983 (n + 1)

end

end A326238.P12169452763799027504

namespace A326238

/-- `A113184(n+1)*A181983(n+1)` -/
def P12169452763799027504.Spec : Prop :=
  ∀ n, P12169452763799027504.a n = A326238 (n + 1)

end A326238

/-! ## A326238.P4695396078343674758

`(A004277(A000593(n+1))-A000203(n+1))*(n+1)`
-/

namespace A326238.P4695396078343674758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 (A000593 (n + 1)).toNat - A000203 (n + 1)) * (n + 1 : ℤ)

end

end A326238.P4695396078343674758

namespace A326238

/-- `(A004277(A000593(n+1))-A000203(n+1))*(n+1)` -/
def P4695396078343674758.Spec : Prop :=
  ∀ n, P4695396078343674758.a n = A326238 (n + 1)

end A326238

/-! ## A326238.P10717123540034944961

`(A004277(A000593(n+1))-(A088580(n+1)-1))*(n+1)`
-/

namespace A326238.P10717123540034944961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 (A000593 (n + 1)).toNat - (A088580 (n + 1) - 1)) * (n + 1 : ℤ)

end

end A326238.P10717123540034944961

namespace A326238

/-- `(A004277(A000593(n+1))-(A088580(n+1)-1))*(n+1)` -/
def P10717123540034944961.Spec : Prop :=
  ∀ n, P10717123540034944961.a n = A326238 (n + 1)

end A326238

/-! ## A326238.P381157576458146457

`(A004277(A000593(n+1))-(A155085(n+1)-(n+1)))*(n+1)`
-/

namespace A326238.P381157576458146457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 (A000593 (n + 1)).toNat - (A155085 (n + 1) - (n + 1 : ℤ))) * (n + 1 : ℤ)

end

end A326238.P381157576458146457

namespace A326238

/-- `(A004277(A000593(n+1))-(A155085(n+1)-(n+1)))*(n+1)` -/
def P381157576458146457.Spec : Prop :=
  ∀ n, P381157576458146457.a n = A326238 (n + 1)

end A326238

/-!
# A326239: Number of non-Hamiltonian labeled n-vertex graphs with loops.

The programs for A326239, there is no canonical definition to state claims against.
-/

/-! ## A326239.P113390838943787801

`2^n*A326207(n)`
-/

namespace A326239.P113390838943787801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A326207 n

end

end A326239.P113390838943787801

/-!
# A326240: Number of Hamiltonian labeled n-vertex graphs with loops.

The programs for A326240, there is no canonical definition to state claims against.
-/

/-! ## A326240.P12472188882367770524

`A326208(n)*2^n`
-/

namespace A326240.P12472188882367770524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326208 n * (2 ^ n : ℤ)

end

end A326240.P12472188882367770524

/-! ## A326240.P18081903686415974194

`∏[2*a(n-1)]-2^n*A326207(n)` with `a(0)=1`
-/

namespace A326240.P18081903686415974194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 ^ n : ℤ) * A326207 n

end

end A326240.P18081903686415974194

/-! ## A326240.P10580204528038159683

`A000079(n)*A326208(n)`
-/

namespace A326240.P10580204528038159683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A326208 n

end

end A326240.P10580204528038159683

/-!
# A326241: Number of degree-n even permutations of order dividing 12.

The programs for A326241, there is no canonical definition to state claims against.
-/

/-! ## A326241.P10294712856960625593

`A053502(n)-A326242(n)`
-/

namespace A326241.P10294712856960625593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053502 n - A326242 n

end

end A326241.P10294712856960625593

/-! ## A326241.P15105705339368687201

`∏[∑{p}[(n-1)^(n-1), #]+1]`
-/

namespace A326241.P15105705339368687201
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, p + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A326241.P15105705339368687201

/-! ## A326241.P17308544712251980333

`A001615(∏[A008670(n)])`
-/

namespace A326241.P17308544712251980333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A326241.P17308544712251980333

/-! ## A326241.P3483681279784011915

`A001615(∏[A036410(n)])`
-/

namespace A326241.P3483681279784011915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036410 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A326241.P3483681279784011915

/-! ## A326241.P8010916503904956241

`A001615(∏[A107236(n)])`
-/

namespace A326241.P8010916503904956241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A326241.P8010916503904956241

/-!
# A326242: Number of degree-n odd permutations of order dividing 12.

The programs for A326242, there is no canonical definition to state claims against.
-/

/-! ## A326242.P5930327549003723197

`A053502(n)-A326241(n)`
-/

namespace A326242.P5930327549003723197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053502 n - A326241 n

end

end A326242.P5930327549003723197

/-! ## A326242.P2702252214962860642

`A026741(n*2^(n-3)*A005043(n))`
-/

namespace A326242.P2702252214962860642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (A005043 n : ℚ))).toNat

end

end A326242.P2702252214962860642

/-! ## A326242.P7340585038497179806

`A330925(A080425(n)+A001338(n))`
-/

namespace A326242.P7340585038497179806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330925 (A080425 n + A001338 n).toNat

end

end A326242.P7340585038497179806

/-!
# A326243: Number of capturing set partitions of {1..n}.

The programs for A326243, there is no canonical definition to state claims against.
-/

/-! ## A326243.P10233775787981645552

`A000110(n)-A054391(n)`
-/

namespace A326243.P10233775787981645552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A054391 n

end

end A326243.P10233775787981645552

/-! ## A326243.P8873935092764678124

`abs(A292935(n))-A054391(n)`
-/

namespace A326243.P8873935092764678124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 n| - A054391 n

end

end A326243.P8873935092764678124

/-! ## A326243.P15076287465947042163

`A000110(n)-A326254(n)`
-/

namespace A326243.P15076287465947042163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A326254 n

end

end A326243.P15076287465947042163

/-! ## A326243.P7335914414756238174

`A326249(n)+A016098(n)`
-/

namespace A326243.P7335914414756238174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326249 n + A016098 n

end

end A326243.P7335914414756238174

/-!
# A326244: Number of labeled n-vertex simple graphs without crossing or nesting edges.

The programs for A326244, the canonical program `A326244.P9466472254582380031` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326244 has offset 0).

The definition of A326244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326244.P18209312418325228430

`ogf((1-5x+4x^2)/(1-6x+8x^2-4x^3))`
-/

namespace A326244.P18209312418325228430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 4] [1, -6, 8, -4] n

end

end A326244.P18209312418325228430

namespace A326244

/-- `ogf((1-5x+4x^2)/(1-6x+8x^2-4x^3))` -/
def P18209312418325228430.Spec : Prop :=
  ∀ n, P18209312418325228430.a n = A326244 n

end A326244

/-! ## A326244.P9466472254582380031

`6*a(n-1)-8*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A326244

/-- `6*a(n-1)-8*a(n-2)+4*a(n-3)` -/
def P9466472254582380031.Spec : Prop :=
  ∀ n, P9466472254582380031.a n = A326244 n

theorem P9466472254582380031.correct : P9466472254582380031.Spec := by
  intro n
  simp only [A326244]

end A326244

/-! ## A326244.P970212727065081362

`2^C(n, 2)-A326279(n)`
-/

namespace A326244.P970212727065081362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.choose n 2 : ℤ) - A326279 n

end

end A326244.P970212727065081362

namespace A326244

/-- `2^C(n, 2)-A326279(n)` -/
def P970212727065081362.Spec : Prop :=
  ∀ n, P970212727065081362.a n = A326244 n

end A326244

/-! ## A326244.P17064485435489777685

`A006125(n)-A326279(n)`
-/

namespace A326244.P17064485435489777685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n - A326279 n

end

end A326244.P17064485435489777685

namespace A326244

/-- `A006125(n)-A326279(n)` -/
def P17064485435489777685.Spec : Prop :=
  ∀ n, P17064485435489777685.a n = A326244 n

end A326244

/-!
# A326245: Number of crossing, non-capturing set partitions of {1..n}.

The programs for A326245, there is no canonical definition to state claims against.
-/

/-! ## A326245.P2699534758510520550

`A054391(n)-A001519(n)`
-/

namespace A326245.P2699534758510520550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054391 n - A001519 n

end

end A326245.P2699534758510520550

/-! ## A326245.P14699144596658367506

`A326254(n)-A001519(n)`
-/

namespace A326245.P14699144596658367506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326254 n - A001519 n

end

end A326245.P14699144596658367506

/-! ## A326245.P7635205277148983812

`A054391(n)-A000045(abs(1-2*n))`
-/

namespace A326245.P7635205277148983812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054391 n - A000045 |1 - (2 * n : ℤ)|.toNat

end

end A326245.P7635205277148983812

/-! ## A326245.P4756753555156087388

`A326254(n)-A000045(abs(1-2*n))`
-/

namespace A326245.P4756753555156087388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326254 n - A000045 |1 - (2 * n : ℤ)|.toNat

end

end A326245.P4756753555156087388

/-! ## A326245.P11916449512708037375

`A054391(n)-∑[A000045(abs(n-2+n))]`
-/

namespace A326245.P11916449512708037375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |(n : ℤ) - 2 + (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054391 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326245.P11916449512708037375

/-!
# A326246: Number of crossing, capturing set partitions of {1..n}.

The programs for A326246, there is no canonical definition to state claims against.
-/

/-! ## A326246.P12277818004540387967

`A326249(n)+A326248(n)`
-/

namespace A326246.P12277818004540387967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326249 n + A326248 n

end

end A326246.P12277818004540387967

/-! ## A326246.P15915307069341223716

`A016098(n)-A326245(n)`
-/

namespace A326246.P15915307069341223716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016098 n - A326245 n

end

end A326246.P15915307069341223716

/-! ## A326246.P15154262357438445651

`A326243(n)-A122880(round(acot(n)+n))`
-/

namespace A326246.P15154262357438445651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326243 n - A122880 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A326246.P15154262357438445651

/-! ## A326246.P7497691015234675064

`A000110(n)-(A326245(n)+A000108(n))`
-/

namespace A326246.P7497691015234675064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - (A326245 n + A000108 n)

end

end A326246.P7497691015234675064

/-! ## A326246.P3370062979356227738

`A247491(n)+A247494(n)-A326245(n)`
-/

namespace A326246.P3370062979356227738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247491 n + (A247494 n - A326245 n)

end

end A326246.P3370062979356227738

/-!
# A326247: Number of labeled n-vertex 2-edge multigraphs that are neither crossing nor nesting.

The programs for A326247, the canonical program `A326247.P14318512984437822961` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326247 has offset 0).

The definition of A326247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326247.P10067818335375503833

`(n-∑[n])²-4*C(n, 4)`
-/

namespace A326247.P10067818335375503833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) ^ 2 - (4 * Nat.choose n 4 : ℤ)

end

end A326247.P10067818335375503833

namespace A326247

/-- `(n-∑[n])²-4*C(n, 4)` -/
def P10067818335375503833.Spec : Prop :=
  ∀ n, P10067818335375503833.a n = A326247 n

end A326247

/-! ## A326247.P5322981797525824588

`(∑[n]/3+n-2)*C(n, 2)`
-/

namespace A326247.P5322981797525824588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3 + (n : ℚ) - 2) * (Nat.choose n 2 : ℚ)

end

end A326247.P5322981797525824588

namespace A326247

/-- `(∑[n]/3+n-2)*C(n, 2)` -/
def P5322981797525824588.Spec : Prop :=
  ∀ n, P5322981797525824588.a n = (A326247 n : ℚ)

end A326247

/-! ## A326247.P13335189266290686782

`∑[∑[a(n-1)+2*n]]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A326247.P13335189266290686782
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  f2 (n - 1) + 2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326247.P13335189266290686782

namespace A326247

/-- `∑[∑[a(n-1)+2*n]]` -/
def P13335189266290686782.Spec : Prop :=
  ∀ n, (P13335189266290686782.a n : ℤ) = A326247 n

end A326247

/-! ## A326247.P9323524500326266354

`∑[∑[a(n-1)+n+n]]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A326247.P9323524500326266354
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  f2 (n - 1) + n + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326247.P9323524500326266354

namespace A326247

/-- `∑[∑[a(n-1)+n+n]]` -/
def P9323524500326266354.Spec : Prop :=
  ∀ n, (P9323524500326266354.a n : ℤ) = A326247 n

end A326247

/-! ## A326247.P11063451457145025153

`∑[∑[n²+n-5%∑[n+1]]]`
-/

namespace A326247.P11063451457145025153
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℤ) - ((5 % (∑ j ∈ Finset.range (n + 1), f3 j) : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326247.P11063451457145025153

namespace A326247

/-- `∑[∑[n²+n-5%∑[n+1]]]` -/
def P11063451457145025153.Spec : Prop :=
  ∀ n, P11063451457145025153.a n = A326247 n

end A326247

/-! ## A326247.P16110287266457462248

`∑[∑[∑[2*n]]-n]-C(2*n, 2)`
-/

namespace A326247.P16110287266457462248
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.choose (2 * n) 2 : ℤ)

end

end A326247.P16110287266457462248

namespace A326247

/-- `∑[∑[∑[2*n]]-n]-C(2*n, 2)` -/
def P16110287266457462248.Spec : Prop :=
  ∀ n, P16110287266457462248.a n = A326247 n

end A326247

/-! ## A326247.P11338869989346360651

`n*(12-19*n+6*n²+n^3)/12`
-/

namespace A326247.P11338869989346360651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (12 - (19 * n : ℤ) + (6 * n ^ 2 : ℤ) + (n ^ 3 : ℤ)) : ℚ) / 12

end

end A326247.P11338869989346360651

namespace A326247

/-- `n*(12-19*n+6*n²+n^3)/12` -/
def P11338869989346360651.Spec : Prop :=
  ∀ n, P11338869989346360651.a n = (A326247 n : ℚ)

theorem P11338869989346360651.correct : P11338869989346360651.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A326247, Nat.add_sub_cancel, A326247.P11338869989346360651.a, A326247.P14318512984437822961.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A326247, Nat.add_sub_cancel, A326247.P11338869989346360651.a, A326247.P14318512984437822961.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A326247

/-! ## A326247.P14318512984437822961

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=9, a(4)=32`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A326247

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P14318512984437822961.Spec : Prop :=
  ∀ n, P14318512984437822961.a n = A326247 n

theorem P14318512984437822961.correct : P14318512984437822961.Spec := by
  intro n
  simp only [A326247]

end A326247

/-! ## A326247.P51580634874925107

`A014205(n)-A000384(n)`
-/

namespace A326247.P51580634874925107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014205 n - A000384 n

end

end A326247.P51580634874925107

namespace A326247

/-- `A014205(n)-A000384(n)` -/
def P51580634874925107.Spec : Prop :=
  ∀ n, P51580634874925107.a n = A326247 n

end A326247

/-! ## A326247.P8618368540887421889

`A188667(n)-A008911(n)`
-/

namespace A326247.P8618368540887421889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188667 n - A008911 n

end

end A326247.P8618368540887421889

namespace A326247

/-- `A188667(n)-A008911(n)` -/
def P8618368540887421889.Spec : Prop :=
  ∀ n, P8618368540887421889.a n = A326247 n

end A326247

/-! ## A326247.P10295255393051535738

`A326278(n)-A034827(n)`
-/

namespace A326247.P10295255393051535738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326278 n - A034827 n

end

end A326247.P10295255393051535738

namespace A326247

/-- `A326278(n)-A034827(n)` -/
def P10295255393051535738.Spec : Prop :=
  ∀ n, P10295255393051535738.a n = A326247 n

end A326247

/-! ## A326247.P14015343138439427871

`A006011(n)-A384852(n)`
-/

namespace A326247.P14015343138439427871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006011 n - A384852 n

end

end A326247.P14015343138439427871

namespace A326247

/-- `A006011(n)-A384852(n)` -/
def P14015343138439427871.Spec : Prop :=
  ∀ n, P14015343138439427871.a n = A326247 n

end A326247

/-! ## A326247.P11850601293398777582

`∑[A084990(n)]-A000384(n)`
-/

namespace A326247.P11850601293398777582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000384 n

end

end A326247.P11850601293398777582

namespace A326247

/-- `∑[A084990(n)]-A000384(n)` -/
def P11850601293398777582.Spec : Prop :=
  ∀ n, P11850601293398777582.a n = A326247 n

end A326247

/-! ## A326247.P14832611711948877546

`A014629(n+1)-A049451(n)`
-/

namespace A326247.P14832611711948877546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014629 (n + 1) - A049451 n

end

end A326247.P14832611711948877546

namespace A326247

/-- `A014629(n+1)-A049451(n)` -/
def P14832611711948877546.Spec : Prop :=
  ∀ n, P14832611711948877546.a n = A326247 n

end A326247

/-! ## A326247.P15821918776233544190

`A002415(n)+A007531(n)/2`
-/

namespace A326247.P15821918776233544190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002415 n : ℚ) + (A007531 n : ℚ) / 2

end

end A326247.P15821918776233544190

namespace A326247

/-- `A002415(n)+A007531(n)/2` -/
def P15821918776233544190.Spec : Prop :=
  ∀ n, P15821918776233544190.a n = (A326247 n : ℚ)

end A326247

/-! ## A326247.P14491232060394876906

`A033488(n)/2-A005476(n)`
-/

namespace A326247.P14491232060394876906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033488 n : ℚ) / 2 - (A005476 n : ℚ)

end

end A326247.P14491232060394876906

namespace A326247

/-- `A033488(n)/2-A005476(n)` -/
def P14491232060394876906.Spec : Prop :=
  ∀ n, P14491232060394876906.a n = (A326247 n : ℚ)

end A326247

/-! ## A326247.P1980113931194278905

`A002817(n)-(A000332(n)+A000326(n))`
-/

namespace A326247.P1980113931194278905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n - (A000332 n + A000326 n)

end

end A326247.P1980113931194278905

namespace A326247

/-- `A002817(n)-(A000332(n)+A000326(n))` -/
def P1980113931194278905.Spec : Prop :=
  ∀ n, P1980113931194278905.a n = A326247 n

end A326247

/-! ## A326247.P14187560470191659153

`A007290(n)+A014205(n)-A084990(n)`
-/

namespace A326247.P14187560470191659153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007290 n + (A014205 n - A084990 n)

end

end A326247.P14187560470191659153

namespace A326247

/-- `A007290(n)+A014205(n)-A084990(n)` -/
def P14187560470191659153.Spec : Prop :=
  ∀ n, P14187560470191659153.a n = A326247 n

end A326247

/-! ## A326247.P17611174092036070752

`A299120(n+1)-2*(n²-n)`
-/

namespace A326247.P17611174092036070752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299120 (n + 1) - 2 * ((n ^ 2 : ℤ) - (n : ℤ))

end

end A326247.P17611174092036070752

namespace A326247

/-- `A299120(n+1)-2*(n²-n)` -/
def P17611174092036070752.Spec : Prop :=
  ∀ n, P17611174092036070752.a n = A326247 n

end A326247

/-! ## A326247.P9409389713625500316

`A000217(A000217(n))-(A000332(n)+A000326(n))`
-/

namespace A326247.P9409389713625500316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000217 n).toNat - (A000332 n + A000326 n)

end

end A326247.P9409389713625500316

namespace A326247

/-- `A000217(A000217(n))-(A000332(n)+A000326(n))` -/
def P9409389713625500316.Spec : Prop :=
  ∀ n, P9409389713625500316.a n = A326247 n

end A326247

/-!
# A326248: Number of crossing, nesting set partitions of {1..n}.

The programs for A326248, there is no canonical definition to state claims against.
-/

/-! ## A326248.P17729909067199753501

`A000110(n)-2*A000108(n)+A001519(n)`
-/

namespace A326248.P17729909067199753501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - 2 * A000108 n + A001519 n

end

end A326248.P17729909067199753501

/-! ## A326248.P6565475971347816480

`A016098(n)-A122880(round(acot(n)+n))`
-/

namespace A326248.P6565475971347816480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016098 n - A122880 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A326248.P6565475971347816480

/-! ## A326248.P11089742754495775075

`A016098(n)-A122880(round(sqrt(n²+1)))`
-/

namespace A326248.P11089742754495775075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016098 n - A122880 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A326248.P11089742754495775075

/-! ## A326248.P1676710897909027252

`A001519(n)+A016098(n)-A000108(n)`
-/

namespace A326248.P1676710897909027252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n + (A016098 n - A000108 n)

end

end A326248.P1676710897909027252

/-! ## A326248.P13049047555028930439

`A326246(n)-A326249(n)`
-/

namespace A326248.P13049047555028930439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326246 n - A326249 n

end

end A326248.P13049047555028930439

/-!
# A326249: Number of capturing set partitions of {1..n} that are not nesting.

The programs for A326249, there is no canonical definition to state claims against.
-/

/-! ## A326249.P4692466214902285271

`A000108(n)-A054391(n)`
-/

namespace A326249.P4692466214902285271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A054391 n

end

end A326249.P4692466214902285271

/-! ## A326249.P521653316094522496

`A000108(n)-A326254(n)`
-/

namespace A326249.P521653316094522496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A326254 n

end

end A326249.P521653316094522496

/-! ## A326249.P15683329121055731296

`A326243(n)-A016098(n)`
-/

namespace A326249.P15683329121055731296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326243 n - A016098 n

end

end A326249.P15683329121055731296

/-! ## A326249.P5450786054296559160

`A326246(n)-A326248(n)`
-/

namespace A326249.P5450786054296559160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326246 n - A326248 n

end

end A326249.P5450786054296559160

/-! ## A326249.P9842948830863391525

`A057977(2*n)-A054391(n)`
-/

namespace A326249.P9842948830863391525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (2 * n) - A054391 n

end

end A326249.P9842948830863391525

/-!
# A326250: Number of weakly nesting simple graphs with vertices {1..n}.

The programs for A326250, there is no canonical definition to state claims against.
-/

/-! ## A326250.P13274733380857919798

`2^C(n, 2)-A000108(n)`
-/

namespace A326250.P13274733380857919798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.choose n 2 : ℤ) - A000108 n

end

end A326250.P13274733380857919798

/-! ## A326250.P13929408925111675276

`2^C(n, 2)-A036769(n)`
-/

namespace A326250.P13929408925111675276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.choose n 2 : ℤ) - A036769 n

end

end A326250.P13929408925111675276

/-! ## A326250.P16105502994284125950

`2^C(n, 2)-A243838(n)`
-/

namespace A326250.P16105502994284125950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.choose n 2 : ℤ) - A243838 n

end

end A326250.P16105502994284125950

/-! ## A326250.P1211423503424621030

`2^C(n, 2)-A126324(2*n)`
-/

namespace A326250.P1211423503424621030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.choose n 2 : ℤ) - A126324 (2 * n)

end

end A326250.P1211423503424621030

/-!
# A326251: Number of digraphs with vertices {1..n} whose increasing edges are not crossing.

The programs for A326251, the canonical program `A326251.P16289545305474891037` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326251 has offset 0).

The definition of A326251 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A326251.P16289545305474891037

`2^(n*(n+1)/2)*A054726(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A326251

/-- `2^(n*(n+1)/2)*A054726(n)` -/
def P16289545305474891037.Spec : Prop :=
  ∀ n, P16289545305474891037.a n = (A326251 n : ℝ)

end A326251

/-! ## A326251.P4521941414831294658

`∏[ceil(2^(n-1))]*A326290(n)`
-/

namespace A326251.P4521941414831294658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A326290 n

end

end A326251.P4521941414831294658

namespace A326251

/-- `∏[ceil(2^(n-1))]*A326290(n)` -/
def P4521941414831294658.Spec : Prop :=
  ∀ n, P4521941414831294658.a n = A326251 n

end A326251

/-! ## A326251.P11134336283337878357

`A326290(n)/2^n*A000079(∑[n])`
-/

namespace A326251.P11134336283337878357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326290 n : ℚ) / (2 ^ n : ℚ) * (A000079 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A326251.P11134336283337878357

namespace A326251

/-- `A326290(n)/2^n*A000079(∑[n])` -/
def P11134336283337878357.Spec : Prop :=
  ∀ n, P11134336283337878357.a n = (A326251 n : ℚ)

end A326251

/-! ## A326251.P13955469749015434360

`(A006125(n)-A326210(n))*∏[2*a(n-1)]` with `a(0)=1`
-/

namespace A326251.P13955469749015434360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006125 n - A326210 n) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A326251.P13955469749015434360

namespace A326251

/-- `(A006125(n)-A326210(n))*∏[2*a(n-1)]` -/
def P13955469749015434360.Spec : Prop :=
  ∀ n, P13955469749015434360.a n = A326251 n

end A326251

/-! ## A326251.P1538029030563700199

`A011782(n+1)*A054726(n)*∏[A011782(n)]`
-/

namespace A326251.P1538029030563700199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) * A054726 n * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A326251.P1538029030563700199

namespace A326251

/-- `A011782(n+1)*A054726(n)*∏[A011782(n)]` -/
def P1538029030563700199.Spec : Prop :=
  ∀ n, P1538029030563700199.a n = A326251 n

end A326251

/-!
# A326252: Number of digraphs with vertices {1..n} whose increasing edges are crossing.

The programs for A326252, there is no canonical definition to state claims against.
-/

/-! ## A326252.P11522490537193502499

`2^(n*(n+1)/2)*A326210(n)`
-/

namespace A326252.P11522490537193502499
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((n * (n + 1) : ℚ) / 2 : ℝ) * (A326210 n : ℝ)

end

end A326252.P11522490537193502499

/-! ## A326252.P1781708921191618447

`2^n²-A326251(n)`
-/

namespace A326252.P1781708921191618447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n ^ 2 : ℤ) - A326251 n

end

end A326252.P1781708921191618447

/-! ## A326252.P15522459713827195462

`abs(A002416(n)-A326251(n))`
-/

namespace A326252.P15522459713827195462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002416 n - A326251 n|

end

end A326252.P15522459713827195462

/-! ## A326252.P2234937982352591867

`and(-A326251(n), A212739(n))`
-/

namespace A326252.P2234937982352591867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A326251 n) (A212739 n)

end

end A326252.P2234937982352591867

/-! ## A326252.P454993638099049482

`(A006125(n)-A054726(n))*A006125(n+1)`
-/

namespace A326252.P454993638099049482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006125 n - A054726 n) * A006125 (n + 1)

end

end A326252.P454993638099049482

/-!
# A326253: Number of sequences of distinct ordered pairs of positive integers up to n.

The programs for A326253, the canonical program `A326253.P12016112695788045133` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326253 has offset 0).

The definition of A326253 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A326253.P12016112695788045133

`A000522(n²)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A326253

/-- `A000522(n²)` -/
def P12016112695788045133.Spec : Prop :=
  ∀ n, P12016112695788045133.a n = A326253 n

theorem P12016112695788045133.correct : P12016112695788045133.Spec := by
  intro n
  simp only [A326253]

end A326253

/-! ## A326253.P16814322690506124234

`A007526(n²)+1`
-/

namespace A326253.P16814322690506124234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007526 (n ^ 2) + 1

end

end A326253.P16814322690506124234

namespace A326253

/-- `A007526(n²)+1` -/
def P16814322690506124234.Spec : Prop :=
  ∀ n, P16814322690506124234.a n = A326253 n

end A326253

/-! ## A326253.P14580428026180942693

`A073591(n²)-1`
-/

namespace A326253.P14580428026180942693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073591 (n ^ 2) - 1

end

end A326253.P14580428026180942693

namespace A326253

/-- `A073591(n²)-1` -/
def P14580428026180942693.Spec : Prop :=
  ∀ n, P14580428026180942693.a n = A326253 n

theorem P14580428026180942693.correct : P14580428026180942693.Spec := by
  intro n
  simp only [A326253, Nat.add_sub_cancel, A326253.P14580428026180942693.a, A326253.P12016112695788045133.a, A000522, A000522.P12126844601845706129.a, A073591, A073591.P4345016296114240383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326253

/-! ## A326253.P7709038765569178731

`A073107(A037270(n))`
-/

namespace A326253.P7709038765569178731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073107 (A037270 n).toNat

end

end A326253.P7709038765569178731

namespace A326253

/-- `A073107(A037270(n))` -/
def P7709038765569178731.Spec : Prop :=
  ∀ n, P7709038765569178731.a n = A326253 n

end A326253

/-!
# A326254: Number of non-capturing set partitions of {1..n}.

The programs for A326254, there is no canonical definition to state claims against.
-/

/-! ## A326254.P12469766818812317987

`A054391(n)+char[18]`
-/

namespace A326254.P12469766818812317987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054391 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A326254.P12469766818812317987

/-! ## A326254.P13419574927783037784

`A054391(∑[floor(n^(1/5))])`
-/

namespace A326254.P13419574927783037784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((1 : ℚ) / 5 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054391 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A326254.P13419574927783037784

/-! ## A326254.P8648650296720812571

`A055967(n)+A054391(n)`
-/

namespace A326254.P8648650296720812571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 n + A054391 n

end

end A326254.P8648650296720812571

/-! ## A326254.P2405367445769460274

`A061858(n)+A054391(n)`
-/

namespace A326254.P2405367445769460274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061858 n + A054391 n

end

end A326254.P2405367445769460274

/-! ## A326254.P7172124820602418199

`A067157(n)+A054391(n)`
-/

namespace A326254.P7172124820602418199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067157 (n + 10) + A054391 n

end

end A326254.P7172124820602418199

/-!
# A326255: MM-numbers of capturing multiset partitions.

The programs for A326255, there is no canonical definition to state claims against.
-/

/-! ## A326255.P7755986614300371887

`∪[A326256(n+1), A326260(n+1)]`
-/

namespace A326255.P7755986614300371887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326255.P7755986614300371887

/-!
# A326256: MM-numbers of nesting multiset partitions.

The programs for A326256, there is no canonical definition to state claims against.
-/

/-! ## A326256.P3546029207337613577

`A326255(A361232(n+1)%A326255(2*n+3))`
-/

namespace A326256.P3546029207337613577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326255 (Int.tmod (A361232 (n + 1)) (A326255 (2 * n + 3))).toNat

end

end A326256.P3546029207337613577

/-! ## A326256.P3760675822627867491

`A326255(ceil(log(A241208(n+1))))`
-/

namespace A326256.P3760675822627867491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326255 ⌈Real.log (A241208 (n + 1) : ℝ)⌉.toNat

end

end A326256.P3760675822627867491

/-! ## A326256.P16137371903327159163

`A326255(lt[n, lcm(12, n)]%A326255(3*n+2))`
-/

namespace A326256.P16137371903327159163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 12 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326255 (Int.tmod (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) (A326255 (3 * n + 2))).toNat

end

end A326256.P16137371903327159163

/-! ## A326256.P12047438905245496633

`A326255(A043316(n+1))`
-/

namespace A326256.P12047438905245496633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326255 (A043316 (n + 1)).toNat

end

end A326256.P12047438905245496633

/-! ## A326256.P11337272985400194886

`A326255(A044913(n+1))`
-/

namespace A326256.P11337272985400194886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326255 (A044913 (n + 1)).toNat

end

end A326256.P11337272985400194886

/-!
# A326257: MM-numbers of weakly nesting multiset partitions.

The programs for A326257, there is no canonical definition to state claims against.
-/

/-! ## A326257.P3521744547018966725

`∩[A371969(n+1), A387216(n+1)]`
-/

namespace A326257.P3521744547018966725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326257.P3521744547018966725

/-! ## A326257.P13375128224866546411

`A387216(A032551(n+2))`
-/

namespace A326257.P13375128224866546411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387216 (A032551 (n + 2)).toNat

end

end A326257.P13375128224866546411

/-! ## A326257.P1097946538148539192

`∩[A183233(n+1), A387216(n+1)]`
-/

namespace A326257.P1097946538148539192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326257.P1097946538148539192

/-!
# A326261: E.g.f.: Sum_{n>=0} (3 + exp(n*x))^n * x^n/n!.

The programs for A326261, there is no canonical definition to state claims against.
-/

/-! ## A326261.P16581677235977067864

`ceil(root(A060570(n+3), ϕ))`
-/

namespace A326261.P16581677235977067864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A060570 (n + 3) : ℝ) ^ (1 / Real.goldenRatio)⌉

end

end A326261.P16581677235977067864

/-!
# A326262: G.f. A(x) satisfies: 1 = Sum_{n>=0} ( 1/(1-x)^(2*n) - A(x) )^n.

The programs for A326262, there is no canonical definition to state claims against.
-/

/-! ## A326262.P10340604522398874296

`A268680(A000795(n)+1)`
-/

namespace A326262.P10340604522398874296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268680 (A000795 n + 1).toNat

end

end A326262.P10340604522398874296

/-!
# A326263: G.f. A(x) satisfies: 1 = Sum_{n>=0} ( 1/(1-x)^(3*n) - A(x) )^n.

The programs for A326263, there is no canonical definition to state claims against.
-/

/-! ## A326263.P17917850721592625445

`A000142(n)+A080098(n)*A351299(n+1)`
-/

namespace A326263.P17917850721592625445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + A080098 n * A351299 (n + 1)

end

end A326263.P17917850721592625445

/-!
# A326266: E.g.f.: Sum_{n>=0} (W(x)^n - 1)^n / n!, where W(x) = exp(x*W(x)) = LambertW(-x)/(-x).

The programs for A326266, there is no canonical definition to state claims against.
-/

/-! ## A326266.P5720996162927447433

`A240830(A096752(n)²)`
-/

namespace A326266.P5720996162927447433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240830 (A096752 n ^ 2).toNat

end

end A326266.P5720996162927447433

/-!
# A326267: E.g.f.: Sum_{n>=0} (W(x)^n - 1)^n * x^n / n!, where W(x) = exp(x*W(x)) = LambertW(-x)/(-x).

The programs for A326267, there is no canonical definition to state claims against.
-/

/-! ## A326267.P15594179104872822130

`A322582(A189981(n))+A049310(n)`
-/

namespace A326267.P15594179104872822130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322582 (A189981 n).toNat + A049310 n

end

end A326267.P15594179104872822130

/-!
# A326268: E.g.f.: Sum_{n>=0} (1 + W(x)^n)^n * x^n / n!, where W(x) = exp(x*W(x)) = LambertW(-x)/(-x).

The programs for A326268, there is no canonical definition to state claims against.
-/

/-! ## A326268.P17485415561115232098

`∑[∑[A173466(2*n+3)]+n!]`
-/

namespace A326268.P17485415561115232098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173466 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326268.P17485415561115232098

/-!
# A326269: G.f.: Sum_{n>=0} (1+x + x^n)^n * x^n.

The programs for A326269, there is no canonical definition to state claims against.
-/

/-! ## A326269.P11542697489121665938

`A003002(A323119(n+2))+1`
-/

namespace A326269.P11542697489121665938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A323119 (n + 2)).toNat + 1

end

end A326269.P11542697489121665938

/-! ## A326269.P3005835192320869975

`A024936(A268434(n)+A051042(n))`
-/

namespace A326269.P3005835192320869975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024936 (A268434 n + A051042 n).toNat

end

end A326269.P3005835192320869975

/-! ## A326269.P4835448941596066396

`A357640(n)+A056978(A321403(2*n))`
-/

namespace A326269.P4835448941596066396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357640 n + A056978 (A321403 (2 * n)).toNat

end

end A326269.P4835448941596066396

/-!
# A326272: E.g.f.: Sum_{n>=0} ((1+x)^n - 1)^n * 2^n / n!.

The programs for A326272, there is no canonical definition to state claims against.
-/

/-! ## A326272.P12194062824603236268

`A000079(n)*A093848(A001833(n))`
-/

namespace A326272.P12194062824603236268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A093848 (A001833 n).toNat

end

end A326272.P12194062824603236268

/-!
# A326275: G.f. A(x) satisfies: Sum_{n>=0} A(x)^((n+1)^2) * x^n = Sum_{n>=0} (1 + A(x)^(n+1))^n * x^n.

The programs for A326275, there is no canonical definition to state claims against.
-/

/-! ## A326275.P18258510836836046923

`A008611(∑[A052748(n)])`
-/

namespace A326275.P18258510836836046923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A326275.P18258510836836046923

/-! ## A326275.P5811295621566029581

`A008620(∑[A052748(n)])`
-/

namespace A326275.P5811295621566029581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A326275.P5811295621566029581

/-! ## A326275.P5753435912676278168

`A087627(∑[A052748(n)])`
-/

namespace A326275.P5753435912676278168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087627 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A326275.P5753435912676278168

/-!
# A326276: G.f.: Sum_{n>=0} (1 + (1+x)^(n+1))^n * x^n.

The programs for A326276, there is no canonical definition to state claims against.
-/

/-! ## A326276.P11465027977726008250

`A005375(A011965(n)+A005375(n))`
-/

namespace A326276.P11465027977726008250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005375 (A011965 n + A005375 n).toNat

end

end A326276.P11465027977726008250

/-! ## A326276.P17305560055794005504

`A067434(A202837(n))`
-/

namespace A326276.P17305560055794005504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 (A202837 n).toNat

end

end A326276.P17305560055794005504

/-!
# A326277: Number of crossing normal multiset partitions of weight n.

The programs for A326277, there is no canonical definition to state claims against.
-/

/-! ## A326277.P13551307535233158176

`A255906(n)-A324171(n)`
-/

namespace A326277.P13551307535233158176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255906 n - A324171 n

end

end A326277.P13551307535233158176

/-! ## A326277.P15787956314046928356

`A255906(A028310(n))%A324171(n)`
-/

namespace A326277.P15787956314046928356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255906 (A028310 n).toNat) (A324171 n)

end

end A326277.P15787956314046928356

/-! ## A326277.P2884986180978492115

`A255906(A071669(n))%A324171(n)`
-/

namespace A326277.P2884986180978492115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255906 (A071669 n).toNat) (A324171 n)

end

end A326277.P2884986180978492115

/-! ## A326277.P8933458861897875277

`A255906(A106618(n))%A324171(n)`
-/

namespace A326277.P8933458861897875277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255906 (A106618 n).toNat) (A324171 n)

end

end A326277.P8933458861897875277

/-! ## A326277.P1491233916221550904

`A255906(A118759(n))%A324171(n)`
-/

namespace A326277.P1491233916221550904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255906 (A118759 n).toNat) (A324171 n)

end

end A326277.P1491233916221550904

/-!
# A326278: Number of n-vertex, 2-edge multigraphs that are not nesting. Number of n-vertex, 2-edge multigraphs that are not crossing.

The programs for A326278, the canonical program `A326278.P952258527269817047` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326278 has offset 0).

The definition of A326278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326278.P12607547767131652688

`C(n, 2)²-2*C(n, 4)`
-/

namespace A326278.P12607547767131652688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 ^ 2 : ℤ) - (2 * Nat.choose n 4 : ℤ)

end

end A326278.P12607547767131652688

namespace A326278

/-- `C(n, 2)²-2*C(n, 4)` -/
def P12607547767131652688.Spec : Prop :=
  ∀ n, P12607547767131652688.a n = A326278 n

end A326278

/-! ## A326278.P16190329348328808589

`C(n², 2)/3-C(n, 2)`
-/

namespace A326278.P16190329348328808589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2) 2 : ℚ) / 3 - (Nat.choose n 2 : ℚ)

end

end A326278.P16190329348328808589

namespace A326278

/-- `C(n², 2)/3-C(n, 2)` -/
def P16190329348328808589.Spec : Prop :=
  ∀ n, P16190329348328808589.a n = (A326278 n : ℚ)

end A326278

/-! ## A326278.P8197354949739722910

`n*C(n+1, 3)-C(n, 2)`
-/

namespace A326278.P8197354949739722910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * Nat.choose (n + 1) 3 : ℤ) - (Nat.choose n 2 : ℤ)

end

end A326278.P8197354949739722910

namespace A326278

/-- `n*C(n+1, 3)-C(n, 2)` -/
def P8197354949739722910.Spec : Prop :=
  ∀ n, P8197354949739722910.a n = A326278 n

end A326278

/-! ## A326278.P9552952117153135530

`C(n, 2)+(n+3)*C(n, 3)`
-/

namespace A326278.P9552952117153135530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + (n + 3) * Nat.choose n 3

end

end A326278.P9552952117153135530

namespace A326278

/-- `C(n, 2)+(n+3)*C(n, 3)` -/
def P9552952117153135530.Spec : Prop :=
  ∀ n, (P9552952117153135530.a n : ℤ) = A326278 n

end A326278

/-! ## A326278.P12622402059442459851

`n*∑[∑[n]-n]-C(n, 2)`
-/

namespace A326278.P12622402059442459851
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - (Nat.choose n 2 : ℤ)

end

end A326278.P12622402059442459851

namespace A326278

/-- `n*∑[∑[n]-n]-C(n, 2)` -/
def P12622402059442459851.Spec : Prop :=
  ∀ n, P12622402059442459851.a n = A326278 n

end A326278

/-! ## A326278.P12948664678126151433

`n*(3-4*n+n^3)/6`
-/

namespace A326278.P12948664678126151433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (3 - (4 * n : ℤ) + (n ^ 3 : ℤ)) : ℚ) / 6

end

end A326278.P12948664678126151433

namespace A326278

/-- `n*(3-4*n+n^3)/6` -/
def P12948664678126151433.Spec : Prop :=
  ∀ n, P12948664678126151433.a n = (A326278 n : ℚ)

theorem P12948664678126151433.correct : P12948664678126151433.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A326278, Nat.add_sub_cancel, A326278.P12948664678126151433.a, A326278.P952258527269817047.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A326278, Nat.add_sub_cancel, A326278.P12948664678126151433.a, A326278.P952258527269817047.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A326278

/-! ## A326278.P952258527269817047

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=9, a(4)=34`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A326278

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P952258527269817047.Spec : Prop :=
  ∀ n, P952258527269817047.a n = A326278 n

theorem P952258527269817047.correct : P952258527269817047.Spec := by
  intro n
  simp only [A326278]

end A326278

/-! ## A326278.P313345587717247579

`A257055(n)-n²`
-/

namespace A326278.P313345587717247579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257055 n - (n ^ 2 : ℤ)

end

end A326278.P313345587717247579

namespace A326278

/-- `A257055(n)-n²` -/
def P313345587717247579.Spec : Prop :=
  ∀ n, P313345587717247579.a n = A326278 n

end A326278

/-! ## A326278.P1694953140302355914

`∑[A146298(n)]+n`
-/

namespace A326278.P1694953140302355914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A326278.P1694953140302355914

namespace A326278

/-- `∑[A146298(n)]+n` -/
def P1694953140302355914.Spec : Prop :=
  ∀ n, P1694953140302355914.a n = A326278 n

end A326278

/-! ## A326278.P483236692588051286

`A329523(n)-∑[n]`
-/

namespace A326278.P483236692588051286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329523 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A326278.P483236692588051286

namespace A326278

/-- `A329523(n)-∑[n]` -/
def P483236692588051286.Spec : Prop :=
  ∀ n, P483236692588051286.a n = A326278 n

end A326278

/-! ## A326278.P1650276742247306456

`∑[A037235(n)]-n²`
-/

namespace A326278.P1650276742247306456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037235 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A326278.P1650276742247306456

namespace A326278

/-- `∑[A037235(n)]-n²` -/
def P1650276742247306456.Spec : Prop :=
  ∀ n, P1650276742247306456.a n = A326278 n

end A326278

/-! ## A326278.P2853984148254676968

`A008911(n)+n-∑[n]`
-/

namespace A326278.P2853984148254676968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008911 n + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A326278.P2853984148254676968

namespace A326278

/-- `A008911(n)+n-∑[n]` -/
def P2853984148254676968.Spec : Prop :=
  ∀ n, P2853984148254676968.a n = A326278 n

end A326278

/-! ## A326278.P145283968040390009

`A007290(n)+A006325(n)`
-/

namespace A326278.P145283968040390009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007290 n + A006325 n

end

end A326278.P145283968040390009

namespace A326278

/-- `A007290(n)+A006325(n)` -/
def P145283968040390009.Spec : Prop :=
  ∀ n, P145283968040390009.a n = A326278 n

end A326278

/-! ## A326278.P9866053905119970726

`A117662(n)+A002415(n)`
-/

namespace A326278.P9866053905119970726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117662 n + A002415 n

end

end A326278.P9866053905119970726

namespace A326278

/-- `A117662(n)+A002415(n)` -/
def P9866053905119970726.Spec : Prop :=
  ∀ n, P9866053905119970726.a n = A326278 n

end A326278

/-! ## A326278.P6596994360749702467

`A326247(n)+A034827(n)`
-/

namespace A326278.P6596994360749702467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326247 n + A034827 n

end

end A326278.P6596994360749702467

namespace A326278

/-- `A326247(n)+A034827(n)` -/
def P6596994360749702467.Spec : Prop :=
  ∀ n, P6596994360749702467.a n = A326278 n

end A326278

/-! ## A326278.P13881039740175075497

`A006528(n)-A006008(n)`
-/

namespace A326278.P13881039740175075497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006528 n - A006008 n

end

end A326278.P13881039740175075497

namespace A326278

/-- `A006528(n)-A006008(n)` -/
def P13881039740175075497.Spec : Prop :=
  ∀ n, P13881039740175075497.a n = A326278 n

end A326278

/-! ## A326278.P4111532113983182914

`A071245(n)-A103290(n)`
-/

namespace A326278.P4111532113983182914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071245 n - A103290 n

end

end A326278.P4111532113983182914

namespace A326278

/-- `A071245(n)-A103290(n)` -/
def P4111532113983182914.Spec : Prop :=
  ∀ n, P4111532113983182914.a n = A326278 n

end A326278

/-! ## A326278.P4720803632460533678

`A239352(n)-A117662(n)`
-/

namespace A326278.P4720803632460533678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239352 n - A117662 n

end

end A326278.P4720803632460533678

namespace A326278

/-- `A239352(n)-A117662(n)` -/
def P4720803632460533678.Spec : Prop :=
  ∀ n, P4720803632460533678.a n = A326278 n

end A326278

/-! ## A326278.P3518309354179392845

`A002418(n)-A252870(n+1)`
-/

namespace A326278.P3518309354179392845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002418 n - A252870 (n + 1)

end

end A326278.P3518309354179392845

namespace A326278

/-- `A002418(n)-A252870(n+1)` -/
def P3518309354179392845.Spec : Prop :=
  ∀ n, P3518309354179392845.a n = A326278 n

end A326278

/-! ## A326278.P4255127520826737410

`A132366(n)-A394826(n+1)`
-/

namespace A326278.P4255127520826737410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132366 n - A394826 (n + 1)

end

end A326278.P4255127520826737410

namespace A326278

/-- `A132366(n)-A394826(n+1)` -/
def P4255127520826737410.Spec : Prop :=
  ∀ n, P4255127520826737410.a n = A326278 n

end A326278

/-!
# A326279: Number of labeled n-vertex simple graphs containing either a crossing or a nesting pair of edges.

The programs for A326279, there is no canonical definition to state claims against.
-/

/-! ## A326279.P17440424762758909923

`2^C(n, 2)-A326244(n)`
-/

namespace A326279.P17440424762758909923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.choose n 2 : ℤ) - A326244 n

end

end A326279.P17440424762758909923

/-! ## A326279.P10713086266975263667

`A006125(n)-A326244(n)`
-/

namespace A326279.P10713086266975263667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n - A326244 n

end

end A326279.P10713086266975263667

/-! ## A326279.P10160952092284755664

`sqrt(A053763(n))-A326244(n)`
-/

namespace A326279.P10160952092284755664
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053763 n : ℝ) - (A326244 n : ℝ)

end

end A326279.P10160952092284755664

/-! ## A326279.P11773263972354911161

`∏[A011782(n)]-A326244(n)`
-/

namespace A326279.P11773263972354911161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A326244 n

end

end A326279.P11773263972354911161

/-!
# A326280: Let f(n) be a sequence of distinct Gaussian integers such that f(1) = 0 and for any n > 1, f(n) = f(floor(n/2)) + k(n)*g((1+i)^(A000120(n)-1) * (1-i)^A023416(n)) where k(n) > 0 is as small as possible and g(z) = z/gcd(Re(z), Im(z)); a(n) is the real part of f(n).

The programs for A326280, there is no canonical definition to state claims against.
-/

/-! ## A326280.P13073169599858065964

`A055640(A329908(n+2))-A025897(n)`
-/

namespace A326280.P13073169599858065964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A329908 (n + 2)).toNat - A025897 n

end

end A326280.P13073169599858065964

/-! ## A326280.P7193951148158697243

`A282355(A080300(n)+A000040(2*n+3))`
-/

namespace A326280.P7193951148158697243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282355 (A080300 n + A000040 (2 * n + 3)).toNat

end

end A326280.P7193951148158697243

/-!
# A326282: G.f. A(x) satisfies: 1 = Sum_{n>=0} 2^n * ((1+x)^n - A(x))^n.

The programs for A326282, there is no canonical definition to state claims against.
-/

/-! ## A326282.P5233353458179079981

`A345877(A385894(n+1))`
-/

namespace A326282.P5233353458179079981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345877 (A385894 (n + 1)).toNat

end

end A326282.P5233353458179079981

/-!
# A326283: G.f. A(x) satisfies: 1 = Sum_{n>=0} 3^n * ((1+x)^n - A(x))^n.

The programs for A326283, there is no canonical definition to state claims against.
-/

/-! ## A326283.P14068617013945198333

`A127285(∑[n]^round(n²/5))`
-/

namespace A326283.P14068617013945198333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127285 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 5) : ℤ))).toNat

end

end A326283.P14068617013945198333

/-!
# A326284: G.f. A(x) satisfies: 1 = Sum_{n>=0} 4^n * ((1+x)^n - A(x))^n.

The programs for A326284, there is no canonical definition to state claims against.
-/

/-! ## A326284.P17747563762389732383

`xor(1, A102487(A000680(n)))`
-/

namespace A326284.P17747563762389732383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A102487 (A000680 n).toNat)

end

end A326284.P17747563762389732383

/-!
# A326286: a(n) equals the coefficient of x^(n*(n+1)) in Sum_{m>=0} (m+1) * x^m * (1 + x^m)^m / (1 + x^(m+1))^(m+2) for n >= 0.

The programs for A326286, there is no canonical definition to state claims against.
-/

/-! ## A326286.P6531765919375144859

`A326285(n*(n+1))`
-/

namespace A326286.P6531765919375144859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326285 (n * (n + 1))

end

end A326286.P6531765919375144859

/-! ## A326286.P7114335306962482378

`abs(A326285(n²+n))`
-/

namespace A326286.P7114335306962482378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A326285 (n ^ 2 + n)|

end

end A326286.P7114335306962482378

/-! ## A326286.P15920818256444594269

`lcm(A033999(n), A326285(n²+n))`
-/

namespace A326286.P15920818256444594269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A326285 (n ^ 2 + n))

end

end A326286.P15920818256444594269

/-! ## A326286.P15160947361891692988

`or(A000007(n), A326285(A002378(n)))`
-/

namespace A326286.P15160947361891692988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A326285 (A002378 n).toNat)

end

end A326286.P15160947361891692988

/-! ## A326286.P6941160264600105890

`A326285(A002378(n))/A007318(∑[n])`
-/

namespace A326286.P6941160264600105890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326285 (A002378 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A326286.P6941160264600105890

/-! ## A326286.P1742281749723939231

`A326285(A002378(n))+A000007(n+1)`
-/

namespace A326286.P1742281749723939231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326285 (A002378 n).toNat + A000007 (n + 1)

end

end A326286.P1742281749723939231

/-! ## A326286.P13419919476482824259

`A014963(A008458(n))*A326285(2*A000217(n))`
-/

namespace A326286.P13419919476482824259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A326285 (2 * A000217 n).toNat

end

end A326286.P13419919476482824259

/-!
# A326287: G.f. A(x) satisfies: Sum_{n>=0} A(x)^((n+1)^2) * x^n = Sum_{n>=0} (1 + A(x)^(n+2))^n * x^n.

The programs for A326287, there is no canonical definition to state claims against.
-/

/-! ## A326287.P14455303720817398586

`4*A349150(a(n-1))+1` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A326287.P14455303720817398586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  4 * A349150 (a (n - 1)).toNat + 1

end

end A326287.P14455303720817398586

/-! ## A326287.P6122292601088259040

`A008621(A366200(n))`
-/

namespace A326287.P6122292601088259040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A366200 n).toNat

end

end A326287.P6122292601088259040

/-!
# A326289: a(0) = 0, a(n) = 2^binomial(n,2) - 2^(n - 1).

The programs for A326289, there is no canonical definition to state claims against.
-/

/-! ## A326289.P9320947989582250454

`2^(∑[n]-n)-ceil(2^(n-1))`
-/

namespace A326289.P9320947989582250454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) : ℤ) - (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℚ)

end

end A326289.P9320947989582250454

/-! ## A326289.P18165630055926015012

`abs(2^C(n, 2)-A011782(n))`
-/

namespace A326289.P18165630055926015012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ Nat.choose n 2 : ℤ) - A011782 n|

end

end A326289.P18165630055926015012

/-! ## A326289.P927367459800904496

`abs(ceil(2^(n-1))-A006125(n))`
-/

namespace A326289.P927367459800904496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A006125 n|

end

end A326289.P927367459800904496

/-! ## A326289.P11344130157857498172

`abs(∏[A000010(2^n)]-A011782(n))`
-/

namespace A326289.P11344130157857498172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j - A011782 n|

end

end A326289.P11344130157857498172

/-! ## A326289.P5083206470650664184

`abs(A011782(n)-∏{d}[2^n, A000010(#)])`
-/

namespace A326289.P5083206470650664184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 n - ∏ d ∈ Nat.divisors (f1 n), A000010 d|

end

end A326289.P5083206470650664184

/-!
# A326290: Number of non-crossing n-vertex graphs with loops.

The programs for A326290, the canonical program `A326290.P15676469729340094560` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326290 has offset 0).

The definition of A326290 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A326290.P15676469729340094560

`2^n*A054726(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A326290

/-- `2^n*A054726(n)` -/
def P15676469729340094560.Spec : Prop :=
  ∀ n, P15676469729340094560.a n = A326290 n

theorem P15676469729340094560.correct : P15676469729340094560.Spec := by
  intro n
  simp only [A326290]

end A326290

/-! ## A326290.P4380120183046506

`abs(A054726(n)*A122803(n))`
-/

namespace A326290.P4380120183046506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054726 n * A122803 n|

end

end A326290.P4380120183046506

namespace A326290

/-- `abs(A054726(n)*A122803(n))` -/
def P4380120183046506.Spec : Prop :=
  ∀ n, P4380120183046506.a n = A326290 n

end A326290

/-! ## A326290.P3986925392380645933

`A054726(n)*A102363(∑[n])`
-/

namespace A326290.P3986925392380645933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054726 n * A102363 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A326290.P3986925392380645933

namespace A326290

/-- `A054726(n)*A102363(∑[n])` -/
def P3986925392380645933.Spec : Prop :=
  ∀ n, P3986925392380645933.a n = A326290 n

end A326290

/-! ## A326290.P10485432250766832781

`A054726(n)*A166444(n+2)`
-/

namespace A326290.P10485432250766832781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054726 n * A166444 (n + 2)

end

end A326290.P10485432250766832781

namespace A326290

/-- `A054726(n)*A166444(n+2)` -/
def P10485432250766832781.Spec : Prop :=
  ∀ n, P10485432250766832781.a n = A326290 n

end A326290

/-! ## A326290.P13227645209723727575

`A054726(n)*A077957(2*n)`
-/

namespace A326290.P13227645209723727575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054726 n * A077957 (2 * n)

end

end A326290.P13227645209723727575

namespace A326290

/-- `A054726(n)*A077957(2*n)` -/
def P13227645209723727575.Spec : Prop :=
  ∀ n, P13227645209723727575.a n = A326290 n

end A326290

/-! ## A326290.P1232462502725472650

`A054726(n)*A098293(2*n)`
-/

namespace A326290.P1232462502725472650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054726 n * A098293 (2 * n)

end

end A326290.P1232462502725472650

namespace A326290

/-- `A054726(n)*A098293(2*n)` -/
def P1232462502725472650.Spec : Prop :=
  ∀ n, P1232462502725472650.a n = A326290 n

end A326290

/-! ## A326290.P1638511577337170498

`A054726(n)*A074323(2*n+1)`
-/

namespace A326290.P1638511577337170498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054726 n * A074323 (2 * n + 1)

end

end A326290.P1638511577337170498

namespace A326290

/-- `A054726(n)*A074323(2*n+1)` -/
def P1638511577337170498.Spec : Prop :=
  ∀ n, P1638511577337170498.a n = A326290 n

end A326290

/-! ## A326290.P10584835796941353926

`A054726(n)*A059268(A052905(n+2))`
-/

namespace A326290.P10584835796941353926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054726 n * A059268 (A052905 (n + 2)).toNat

end

end A326290.P10584835796941353926

namespace A326290

/-- `A054726(n)*A059268(A052905(n+2))` -/
def P10584835796941353926.Spec : Prop :=
  ∀ n, P10584835796941353926.a n = A326290 n

end A326290

/-! ## A326290.P18243200801132072788

`A011782(2*n)*A132372(A161680(n))`
-/

namespace A326290.P18243200801132072788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n) * A132372 (A161680 n).toNat

end

end A326290.P18243200801132072788

namespace A326290

/-- `A011782(2*n)*A132372(A161680(n))` -/
def P18243200801132072788.Spec : Prop :=
  ∀ n, P18243200801132072788.a n = A326290 n

end A326290

/-! ## A326290.P10864371833785344095

`A006318(A289207(n))*A011782(2*n)`
-/

namespace A326290.P10864371833785344095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 (A289207 n).toNat * A011782 (2 * n)

end

end A326290.P10864371833785344095

namespace A326290

/-- `A006318(A289207(n))*A011782(2*n)` -/
def P10864371833785344095.Spec : Prop :=
  ∀ n, P10864371833785344095.a n = A326290 n

end A326290

/-!
# A326291: Number of unsortable factorizations of n.

The programs for A326291, there is no canonical definition to state claims against.
-/

/-! ## A326291.P1236510963507462113

`floor(sinh((∑{e}[n+1, #]!/∏{e}[n+1, #!])%(n+1)/6))`
-/

namespace A326291.P1236510963507462113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh ((Int.tmod (SequenceMachineLib.roundAway ((Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ))) (n + 1 : ℤ) : ℚ) / 6 : ℝ)⌋

end

end A326291.P1236510963507462113

/-! ## A326291.P5978583111543863113

`A349797(n+1)/2`
-/

namespace A326291.P5978583111543863113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349797 (n + 1) : ℚ) / 2

end

end A326291.P5978583111543863113

/-! ## A326291.P14246730700654168367

`floor(A050328(n+1)/10)`
-/

namespace A326291.P14246730700654168367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A050328 (n + 1) : ℚ) / 10⌋

end

end A326291.P14246730700654168367

/-! ## A326291.P12179853893469839692

`round(A294018(n+1)/e)`
-/

namespace A326291.P12179853893469839692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A294018 (n + 1) : ℝ) / Real.exp 1)

end

end A326291.P12179853893469839692

/-! ## A326291.P10218868086452229845

`floor(abs(A317581(n+1)/5))`
-/

namespace A326291.P10218868086452229845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(A317581 (n + 1) : ℚ) / 5|⌋

end

end A326291.P10218868086452229845

/-! ## A326291.P12333890268530997718

`floor(A322452((n+1)²)/7)`
-/

namespace A326291.P12333890268530997718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A322452 ((n + 1) ^ 2) : ℚ) / 7⌋

end

end A326291.P12333890268530997718

/-! ## A326291.P6228388139765494890

`floor(A000040(∑{e}[n+1, #]!/∏{e}[n+1, #!])/12)`
-/

namespace A326291.P6228388139765494890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (SequenceMachineLib.roundAway ((Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ))).toNat : ℚ) / 12⌋

end

end A326291.P6228388139765494890

/-! ## A326291.P5849978905974448800

`A059995(A050328(n+1))`
-/

namespace A326291.P5849978905974448800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A050328 (n + 1)).toNat

end

end A326291.P5849978905974448800

/-! ## A326291.P16712547398760958480

`A236567(A008480(n+1))`
-/

namespace A326291.P16712547398760958480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236567 (A008480 (n + 1)).toNat

end

end A326291.P16712547398760958480

/-! ## A326291.P8362448520098320922

`floor(A294018(n+1)/sqrt(5))%A020639(n+2)`
-/

namespace A326291.P8362448520098320922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A294018 (n + 1) : ℝ) / Real.sqrt (5 : ℝ)⌋ (A020639 (n + 2))

end

end A326291.P8362448520098320922

/-!
# A326292: Number of crossing integer partitions of n.

The programs for A326292, there is no canonical definition to state claims against.
-/

/-! ## A326292.P16379087830373196624

`floor(A143591(n+1)/((8*n+4)²-9))`
-/

namespace A326292.P16379087830373196624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A143591 (n + 1) : ℚ) / (((8 * n + 4) ^ 2 : ℤ) - 9 : ℚ)⌋

end

end A326292.P16379087830373196624

/-! ## A326292.P13616851284179953232

`floor(A143592(n+1)/A017126(n))`
-/

namespace A326292.P13616851284179953232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A143592 (n + 1) : ℚ) / (A017126 n : ℚ)⌋

end

end A326292.P13616851284179953232

/-! ## A326292.P1454829919246452281

`floor(A111124(n)/A354877(n+5))`
-/

namespace A326292.P1454829919246452281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A111124 n : ℚ) / (A354877 (n + 5) : ℚ)⌋

end

end A326292.P1454829919246452281

/-! ## A326292.P642333652540439060

`floor((A338553(n)/A338545(n+1))²)`
-/

namespace A326292.P642333652540439060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A338553 n : ℚ) / (A338545 (n + 1) : ℚ)) ^ 2⌋

end

end A326292.P642333652540439060

/-! ## A326292.P314669905116621026

`floor(A391644(n+1)/A325884(n+1))`
-/

namespace A326292.P314669905116621026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A391644 (n + 1) : ℚ) / (A325884 (n + 1) : ℚ)⌋

end

end A326292.P314669905116621026

/-!
# A326293: Number of non-nesting, topologically connected simple graphs with vertices {1..n}.

The programs for A326293, there is no canonical definition to state claims against.
-/

/-! ## A326293.P10671026025029112832

`A164731(a(n-1)+6)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A326293.P10671026025029112832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A164731 (a (n - 1) + 6).toNat

end

end A326293.P10671026025029112832

/-! ## A326293.P8859092701136608615

`A262609(A292320(n))`
-/

namespace A326293.P8859092701136608615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262609 (A292320 n).toNat

end

end A326293.P8859092701136608615

/-! ## A326293.P7123528374826324322

`A262609(A326114(n))`
-/

namespace A326293.P7123528374826324322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262609 (A326114 n).toNat

end

end A326293.P7123528374826324322

/-!
# A326294: Number of connected simple graphs on a subset of {1..n} with no crossing or nesting edges.

The programs for A326294, there is no canonical definition to state claims against.
-/

/-! ## A326294.P1357005255744209886

`∑[∑[round(4^n/12)]]+1`
-/

namespace A326294.P1357005255744209886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 ^ n : ℚ) / 12)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A326294.P1357005255744209886

/-! ## A326294.P9784370179084236787

`∑[4*a(n-1)-1+n]` with `a(0)=1, a(1)=0`
-/

namespace A326294.P9784370179084236787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  4 * f1 (n - 1) - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326294.P9784370179084236787

/-! ## A326294.P6010555663271437544

`∑[4*a(n-1)-(1-n)]` with `a(0)=1, a(1)=0`
-/

namespace A326294.P6010555663271437544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  4 * f1 (n - 1) - (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326294.P6010555663271437544

/-! ## A326294.P6696368747783236491

`∑[a(n-1)/(1/2)²+n-1]` with `a(0)=1, a(1)=0`
-/

namespace A326294.P6696368747783236491
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) / ((1 : ℚ) / 2) ^ 2 + ((n : ℤ) - 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326294.P6696368747783236491

/-!
# A326296: Triangle of numbers T(n,k) = 2*floor(k/2)*(n-k) + ceiling((k-1)^2/2), 1<=k<=n.

The programs for A326296, the canonical program `A326296.P1834401997050092920` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326296 has offset 1).

The definition of A326296 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326296.P1834401997050092920

`A309559(n)-A057059(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A326296

/-- `A309559(n)-A057059(n+1)` -/
def P1834401997050092920.Spec : Prop :=
  ∀ n, P1834401997050092920.a n = A326296 (n + 1)

theorem P1834401997050092920.correct : P1834401997050092920.Spec := by
  intro n
  simp only [A326296, Nat.add_sub_cancel]

end A326296

/-! ## A326296.P6684873923824649664

`A141418(n+1)+1-A057059(n+1)`
-/

namespace A326296.P6684873923824649664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141418 (n + 1) + (1 - A057059 (n + 1))

end

end A326296.P6684873923824649664

namespace A326296

/-- `A141418(n+1)+1-A057059(n+1)` -/
def P6684873923824649664.Spec : Prop :=
  ∀ n, P6684873923824649664.a n = A326296 (n + 1)

theorem P6684873923824649664.correct : P6684873923824649664.Spec := by
  intro n
  simp only [A326296, Nat.add_sub_cancel, A326296.P6684873923824649664.a, A326296.P1834401997050092920.a, A057059, A057059.P4184647556311659396.a, A141418, A141418.P5517368692564182345.a, A309559, A309559.P17554986835767981470.a, A003056, A003056.P5318256527314048597.a, A080251, A080251.P16627620130656438930.a, A087401, A087401.P10568550885334757291.a, A141419, A141419.P13935125868249528284.a, A003991, A003991.P14084851459366035567.a, A004201, A004201.P3444704990256805059.a, A025581, A025581.P420762180635059694.a, A079904, A079904.P1795222969403769225.a, A112367, A112367.P5378126856570841990.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002260, A002260.P769748059679640451.a, A004202, A004202.P6327880886669607984.a, A004736, A004736.P10337537277358081527.a, A057944, A057944.P16851463738746886639.a, A076110, A076110.P10148523856418061428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A326296

/-! ## A326296.P11871255177413590963

`A141418(n+1)-A023443(A057059(n+1))`
-/

namespace A326296.P11871255177413590963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141418 (n + 1) - A023443 (A057059 (n + 1)).toNat

end

end A326296.P11871255177413590963

namespace A326296

/-- `A141418(n+1)-A023443(A057059(n+1))` -/
def P11871255177413590963.Spec : Prop :=
  ∀ n, P11871255177413590963.a n = A326296 (n + 1)

end A326296

/-! ## A326296.P15368908968916228147

`(A057059(n+1)*A141418(n+1))%A309559(n)`
-/

namespace A326296.P15368908968916228147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057059 (n + 1) * A141418 (n + 1)) (A309559 n)

end

end A326296.P15368908968916228147

namespace A326296

/-- `(A057059(n+1)*A141418(n+1))%A309559(n)` -/
def P15368908968916228147.Spec : Prop :=
  ∀ n, P15368908968916228147.a n = A326296 (n + 1)

end A326296

/-! ## A326296.P12442452026236096474

`A109129(A136555(n)*A179456(n))`
-/

namespace A326296.P12442452026236096474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (A136555 n * A179456 n).toNat

end

end A326296.P12442452026236096474

namespace A326296

/-- `A109129(A136555(n)*A179456(n))` -/
def P12442452026236096474.Spec : Prop :=
  ∀ n, P12442452026236096474.a n = A326296 (n + 1)

end A326296

/-!
# A326297: If n = Product (p_j^k_j) then a(n) = Product ((p_j - 1)^(k_j - 1)).

The programs for A326297, the canonical program `A326297.P1023007589455328915` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326297 has offset 1).

The definition of A326297 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325126, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326297.P13831901589209930812

`A003958(n+1)/A173557(n+1)`
-/

namespace A326297.P13831901589209930812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ)

end

end A326297.P13831901589209930812

namespace A326297

/-- `A003958(n+1)/A173557(n+1)` -/
def P13831901589209930812.Spec : Prop :=
  ∀ n, P13831901589209930812.a n = (A326297 (n + 1) : ℚ)

end A326297

/-! ## A326297.P5064988786684575450

`A003958(n+1)/abs(A023900(n+1))`
-/

namespace A326297.P5064988786684575450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (|A023900 (n + 1)| : ℚ)

end

end A326297.P5064988786684575450

namespace A326297

/-- `A003958(n+1)/abs(A023900(n+1))` -/
def P5064988786684575450.Spec : Prop :=
  ∀ n, P5064988786684575450.a n = (A326297 (n + 1) : ℚ)

end A326297

/-! ## A326297.P1023007589455328915

`abs(A325126(n+1))/A007947(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A326297

/-- `abs(A325126(n+1))/A007947(n+1)` -/
def P1023007589455328915.Spec : Prop :=
  ∀ n, P1023007589455328915.a n = (A326297 (n + 1) : ℚ)

end A326297

/-! ## A326297.P5775826183663622095

`abs(A349340(n+1))`
-/

namespace A326297.P5775826183663622095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A349340 (n + 1)|

end

end A326297.P5775826183663622095

namespace A326297

/-- `abs(A349340(n+1))` -/
def P5775826183663622095.Spec : Prop :=
  ∀ n, P5775826183663622095.a n = A326297 (n + 1)

end A326297

/-! ## A326297.P715264643743208085

`A003958((n+1)/∏{p}[n+1, #])`
-/

namespace A326297.P715264643743208085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A326297.P715264643743208085

namespace A326297

/-- `A003958((n+1)/∏{p}[n+1, #])` -/
def P715264643743208085.Spec : Prop :=
  ∀ n, P715264643743208085.a n = A326297 (n + 1)

end A326297

/-! ## A326297.P4248974443340050369

`A003958(A003557(n+1))`
-/

namespace A326297.P4248974443340050369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A003557 (n + 1)).toNat

end

end A326297.P4248974443340050369

namespace A326297

/-- `A003958(A003557(n+1))` -/
def P4248974443340050369.Spec : Prop :=
  ∀ n, P4248974443340050369.a n = A326297 (n + 1)

end A326297

/-! ## A326297.P5397318456581265764

`A003958(A336651(n+1))`
-/

namespace A326297.P5397318456581265764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A336651 (n + 1)).toNat

end

end A326297.P5397318456581265764

namespace A326297

/-- `A003958(A336651(n+1))` -/
def P5397318456581265764.Spec : Prop :=
  ∀ n, P5397318456581265764.a n = A326297 (n + 1)

end A326297

/-! ## A326297.P3937328849273949618

`A003958(A347291(n+1))`
-/

namespace A326297.P3937328849273949618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A347291 (n + 1)).toNat

end

end A326297.P3937328849273949618

namespace A326297

/-- `A003958(A347291(n+1))` -/
def P3937328849273949618.Spec : Prop :=
  ∀ n, P3937328849273949618.a n = A326297 (n + 1)

end A326297

/-! ## A326297.P5063329866070759980

`A003958(A357689(n+1))`
-/

namespace A326297.P5063329866070759980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A357689 (n + 1)).toNat

end

end A326297.P5063329866070759980

namespace A326297

/-- `A003958(A357689(n+1))` -/
def P5063329866070759980.Spec : Prop :=
  ∀ n, P5063329866070759980.a n = A326297 (n + 1)

end A326297

/-! ## A326297.P5578649089494886092

`A003958(A336551(n+1)+1)`
-/

namespace A326297.P5578649089494886092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A336551 (n + 1) + 1).toNat

end

end A326297.P5578649089494886092

namespace A326297

/-- `A003958(A336551(n+1)+1)` -/
def P5578649089494886092.Spec : Prop :=
  ∀ n, P5578649089494886092.a n = A326297 (n + 1)

end A326297

/-! ## A326297.P5262274452907527679

`gcd(A000038(n), A349340(n+1))`
-/

namespace A326297.P5262274452907527679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A349340 (n + 1))

end

end A326297.P5262274452907527679

namespace A326297

/-- `gcd(A000038(n), A349340(n+1))` -/
def P5262274452907527679.Spec : Prop :=
  ∀ n, (P5262274452907527679.a n : ℤ) = A326297 (n + 1)

end A326297

/-! ## A326297.P13135102502392282477

`lcm(A020985(n), A349340(n+1))`
-/

namespace A326297.P13135102502392282477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A349340 (n + 1))

end

end A326297.P13135102502392282477

namespace A326297

/-- `lcm(A020985(n), A349340(n+1))` -/
def P13135102502392282477.Spec : Prop :=
  ∀ n, (P13135102502392282477.a n : ℤ) = A326297 (n + 1)

end A326297

/-! ## A326297.P2658892846281476087

`∑{d}[A349340(n+1), A000010(#)]`
-/

namespace A326297.P2658892846281476087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A326297.P2658892846281476087

namespace A326297

/-- `∑{d}[A349340(n+1), A000010(#)]` -/
def P2658892846281476087.Spec : Prop :=
  ∀ n, P2658892846281476087.a n = A326297 (n + 1)

end A326297

/-! ## A326297.P11020588173863379116

`A003958(1-A010848(n+1)+n)`
-/

namespace A326297.P11020588173863379116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (1 - A010848 (n + 1) + (n : ℤ)).toNat

end

end A326297.P11020588173863379116

namespace A326297

/-- `A003958(1-A010848(n+1)+n)` -/
def P11020588173863379116.Spec : Prop :=
  ∀ n, P11020588173863379116.a n = A326297 (n + 1)

end A326297

/-! ## A326297.P18305455176275209585

`A076479(n+1)*A349340(n+1)`
-/

namespace A326297.P18305455176275209585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (n + 1) * A349340 (n + 1)

end

end A326297.P18305455176275209585

namespace A326297

/-- `A076479(n+1)*A349340(n+1)` -/
def P18305455176275209585.Spec : Prop :=
  ∀ n, P18305455176275209585.a n = A326297 (n + 1)

end A326297

/-! ## A326297.P18367276022616508502

`A003958((n+1)/A007947(n+1))`
-/

namespace A326297.P18367276022616508502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A326297.P18367276022616508502

namespace A326297

/-- `A003958((n+1)/A007947(n+1))` -/
def P18367276022616508502.Spec : Prop :=
  ∀ n, P18367276022616508502.a n = A326297 (n + 1)

end A326297

/-! ## A326297.P2341232738799071417

`A079579(n+1)/A299822(n+1)`
-/

namespace A326297.P2341232738799071417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079579 (n + 1) : ℚ) / (A299822 (n + 1) : ℚ)

end

end A326297.P2341232738799071417

namespace A326297

/-- `A079579(n+1)/A299822(n+1)` -/
def P2341232738799071417.Spec : Prop :=
  ∀ n, P2341232738799071417.a n = (A326297 (n + 1) : ℚ)

end A326297

/-! ## A326297.P18230940114208028354

`A340323(n+1)/A048250(n+1)`
-/

namespace A326297.P18230940114208028354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340323 (n + 1) : ℚ) / (A048250 (n + 1) : ℚ)

end

end A326297.P18230940114208028354

namespace A326297

/-- `A340323(n+1)/A048250(n+1)` -/
def P18230940114208028354.Spec : Prop :=
  ∀ n, P18230940114208028354.a n = (A326297 (n + 1) : ℚ)

end A326297

/-! ## A326297.P3676868828648060569

`A167343(n+1)/A351434(n+1)`
-/

namespace A326297.P3676868828648060569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167343 (n + 1) : ℚ) / (A351434 (n + 1) : ℚ)

end

end A326297.P3676868828648060569

namespace A326297

/-- `A167343(n+1)/A351434(n+1)` -/
def P3676868828648060569.Spec : Prop :=
  ∀ n, P3676868828648060569.a n = (A326297 (n + 1) : ℚ)

end A326297

/-! ## A326297.P5241952953974983070

`A003958(n+1)²/A351434(n+1)`
-/

namespace A326297.P5241952953974983070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) ^ 2 : ℚ) / (A351434 (n + 1) : ℚ)

end

end A326297.P5241952953974983070

namespace A326297

/-- `A003958(n+1)²/A351434(n+1)` -/
def P5241952953974983070.Spec : Prop :=
  ∀ n, P5241952953974983070.a n = (A326297 (n + 1) : ℚ)

end A326297

/-!
# A326299: a(n) = floor(n*log_2(n)).

The programs for A326299, the canonical program `A326299.P4701382152849269894` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326299 has offset 1).

The definition of A326299 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*log2(n+1))` (program `A326299.P4701382152849269894`, by `A326299.P4701382152849269894.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A326299.P4701382152849269894

`floor((n+1)*log2(n+1))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A326299

/-- `floor((n+1)*log2(n+1))` -/
def P4701382152849269894.Spec : Prop :=
  ∀ n, P4701382152849269894.a n = A326299 (n + 1)

theorem P4701382152849269894.correct : P4701382152849269894.Spec := by
  intro n
  simp only [A326299, Nat.add_sub_cancel]

end A326299

/-! ## A326299.P8588289474933397534

`ceil((n+1)*(log2(n+1)-acot(n+1)))`
-/

namespace A326299.P8588289474933397534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * (Real.logb 2 (n + 1 : ℝ) - SequenceMachineLib.acot (n + 1 : ℝ))⌉

end

end A326299.P8588289474933397534

namespace A326299

/-- `ceil((n+1)*(log2(n+1)-acot(n+1)))` -/
def P8588289474933397534.Spec : Prop :=
  ∀ n, P8588289474933397534.a n = A326299 (n + 1)

end A326299

/-! ## A326299.P16781375373495828820

`A259368(n+1)-1`
-/

namespace A326299.P16781375373495828820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259368 (n + 1) - 1

end

end A326299.P16781375373495828820

namespace A326299

/-- `A259368(n+1)-1` -/
def P16781375373495828820.Spec : Prop :=
  ∀ n, P16781375373495828820.a n = A326299 (n + 1)

end A326299

/-! ## A326299.P12018068990543249880

`A061717(n+1)-A043545(n)`
-/

namespace A326299.P12018068990543249880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061717 (n + 1) - A043545 n

end

end A326299.P12018068990543249880

namespace A326299

/-- `A061717(n+1)-A043545(n)` -/
def P12018068990543249880.Spec : Prop :=
  ∀ n, P12018068990543249880.a n = A326299 (n + 1)

end A326299

/-! ## A326299.P14040810396177098869

`A340301(n+1)+A336018(n+1)`
-/

namespace A326299.P14040810396177098869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340301 (n + 1) + A336018 (n + 1)

end

end A326299.P14040810396177098869

namespace A326299

/-- `A340301(n+1)+A336018(n+1)` -/
def P14040810396177098869.Spec : Prop :=
  ∀ n, P14040810396177098869.a n = A326299 (n + 1)

theorem P14040810396177098869.correct : P14040810396177098869.Spec := by
  intro n
  simp only [A326299, Nat.add_sub_cancel, A326299.P14040810396177098869.a, A326299.P4701382152849269894.a, A336018, A336018.P4470048094391084160.a, A340301, A340301.P504169698259140585.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326299

/-! ## A326299.P15031102658235699813

`A061717(n+1)+A036987(n)-1`
-/

namespace A326299.P15031102658235699813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061717 (n + 1) + (A036987 n - 1)

end

end A326299.P15031102658235699813

namespace A326299

/-- `A061717(n+1)+A036987(n)-1` -/
def P15031102658235699813.Spec : Prop :=
  ∀ n, P15031102658235699813.a n = A326299 (n + 1)

end A326299

/-! ## A326299.P3034897392814020765

`A000523(n+1)+A061717(n+1)-A029837(n+1)`
-/

namespace A326299.P3034897392814020765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) + (A061717 (n + 1) - A029837 (n + 1))

end

end A326299.P3034897392814020765

namespace A326299

/-- `A000523(n+1)+A061717(n+1)-A029837(n+1)` -/
def P3034897392814020765.Spec : Prop :=
  ∀ n, P3034897392814020765.a n = A326299 (n + 1)

end A326299

/-! ## A326299.P539864235337668887

`A023443(A259368(n+1))`
-/

namespace A326299.P539864235337668887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A259368 (n + 1)).toNat

end

end A326299.P539864235337668887

namespace A326299

/-- `A023443(A259368(n+1))` -/
def P539864235337668887.Spec : Prop :=
  ∀ n, P539864235337668887.a n = A326299 (n + 1)

end A326299

/-! ## A326299.P2483066700011768127

`ceil(log2(A062874(n+1)))`
-/

namespace A326299.P2483066700011768127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A062874 (n + 1) : ℝ)⌉

end

end A326299.P2483066700011768127

namespace A326299

/-- `ceil(log2(A062874(n+1)))` -/
def P2483066700011768127.Spec : Prop :=
  ∀ n, P2483066700011768127.a n = A326299 (n + 1)

end A326299

/-! ## A326299.P1470906385149560708

`ceil(log2(A117694(n+1)))`
-/

namespace A326299.P1470906385149560708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A117694 (n + 1) : ℝ)⌉

end

end A326299.P1470906385149560708

namespace A326299

/-- `ceil(log2(A117694(n+1)))` -/
def P1470906385149560708.Spec : Prop :=
  ∀ n, P1470906385149560708.a n = A326299 (n + 1)

end A326299

