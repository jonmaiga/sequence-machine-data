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
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
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
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A321400: A family of sequences converging to the exponential limit of sec + tan (A320956). Square array A(n, k) for n >= 0 and k >= 0, read by descending antidiagonals.

The programs for A321400, there is no canonical definition to state claims against.
-/

/-! ## A321400.P1622003422279067811

`A000111(A025581(n))*A108934(n)`
-/

namespace A321400.P1622003422279067811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (A025581 n).toNat * A108934 n

end

end A321400.P1622003422279067811

/-! ## A321400.P12381470341346808774

`A000111(A025581(n))*A320955(A114327(n)+n)`
-/

namespace A321400.P12381470341346808774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (A025581 n).toNat * A320955 (A114327 n + (n : ℤ)).toNat

end

end A321400.P12381470341346808774

/-! ## A321400.P13288673961484462321

`A129396(A289978(n))-1`
-/

namespace A321400.P13288673961484462321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129396 (A289978 n).toNat - 1

end

end A321400.P13288673961484462321

/-! ## A321400.P1200823973546995782

`A335678(2^A300705(n))`
-/

namespace A321400.P1200823973546995782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335678 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A300705 n : ℤ))).toNat

end

end A321400.P1200823973546995782

/-! ## A321400.P11767003576455481227

`A132896(4^A215977(n))`
-/

namespace A321400.P11767003576455481227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A215977 n : ℤ))).toNat

end

end A321400.P11767003576455481227

/-!
# A321401: Number of non-isomorphic strict self-dual multiset partitions of weight n.

The programs for A321401, there is no canonical definition to state claims against.
-/

/-! ## A321401.P3299665063685614130

`A074206(A000244(n))-A361857(n+1)`
-/

namespace A321401.P3299665063685614130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A000244 n).toNat - A361857 (n + 1)

end

end A321401.P3299665063685614130

/-! ## A321401.P3831253371156623034

`A071912(A151452(n))`
-/

namespace A321401.P3831253371156623034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071912 (A151452 n).toNat

end

end A321401.P3831253371156623034

/-! ## A321401.P7120048969776272371

`A194339(A148906(n))`
-/

namespace A321401.P7120048969776272371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194339 (A148906 n).toNat

end

end A321401.P7120048969776272371

/-! ## A321401.P688089869699620017

`A201206(A199247(n))`
-/

namespace A321401.P688089869699620017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201206 (A199247 n).toNat

end

end A321401.P688089869699620017

/-!
# A321402: Number of non-isomorphic strict self-dual multiset partitions of weight n with no singletons.

The programs for A321402, there is no canonical definition to state claims against.
-/

/-! ## A321402.P15401697107810507606

`round(sqrt(2*A204389(n²)))`
-/

namespace A321402.P15401697107810507606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A204389 (n ^ 2) : ℝ))

end

end A321402.P15401697107810507606

/-! ## A321402.P4444764725721285934

`floor(sqrt((A076865(n)+1)/2))`
-/

namespace A321402.P4444764725721285934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A076865 n + 1 : ℚ) / 2 : ℝ)⌋

end

end A321402.P4444764725721285934

/-! ## A321402.P15421534009363757462

`A008616(floor((n/2)²)+2^n-1)`
-/

namespace A321402.P15421534009363757462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (⌊((n : ℚ) / 2) ^ 2⌋ + ((2 ^ n : ℤ) - 1)).toNat

end

end A321402.P15421534009363757462

/-! ## A321402.P15240751777795816132

`A123578(A204389(n²))`
-/

namespace A321402.P15240751777795816132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A204389 (n ^ 2)).toNat

end

end A321402.P15240751777795816132

/-! ## A321402.P1953781252571469541

`A008612(or(2, A293323(n)))`
-/

namespace A321402.P1953781252571469541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (Int.lor 2 (A293323 n)).toNat

end

end A321402.P1953781252571469541

/-!
# A321403: Number of non-isomorphic self-dual set multipartitions (multisets of sets) of weight n.

The programs for A321403, there is no canonical definition to state claims against.
-/

/-! ## A321403.P4220581383933756831

`A123548(∑[n²])`
-/

namespace A321403.P4220581383933756831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123548 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A321403.P4220581383933756831

/-! ## A321403.P4244133333946434778

`A123548(A000330(n))+A000035(2*(n+1))`
-/

namespace A321403.P4244133333946434778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123548 (A000330 n).toNat + A000035 (2 * (n + 1))

end

end A321403.P4244133333946434778

/-! ## A321403.P16906150198730795373

`A006949(A005251(n+2)^A035931(n))`
-/

namespace A321403.P16906150198730795373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006949 (SequenceMachineLib.roundAway ((A005251 (n + 2) : ℚ) ^ (A035931 n : ℤ))).toNat

end

end A321403.P16906150198730795373

/-! ## A321403.P8651915950023158162

`A111651(A148566(n))`
-/

namespace A321403.P8651915950023158162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (A148566 n).toNat

end

end A321403.P8651915950023158162

/-! ## A321403.P10345863263846174728

`A096491(A082582(n))-A370813(n+1)`
-/

namespace A321403.P10345863263846174728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096491 (A082582 n).toNat - A370813 (n + 1)

end

end A321403.P10345863263846174728

/-!
# A321405: Number of non-isomorphic self-dual set systems of weight n.

The programs for A321405, there is no canonical definition to state claims against.
-/

/-! ## A321405.P11073567315086041284

`a(n-1)+a(n-2)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=2, a(5)=3`
-/

namespace A321405.P11073567315086041284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 2, 3] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) - a (n - 4)

end

end A321405.P11073567315086041284

/-! ## A321405.P7617859640612677527

`A127683(2*n+9)+1`
-/

namespace A321405.P7617859640612677527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127683 (2 * n + 9) + 1

end

end A321405.P7617859640612677527

/-! ## A321405.P8288890749959673821

`A127686(2*n+9)+1`
-/

namespace A321405.P8288890749959673821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127686 (2 * n + 9) + 1

end

end A321405.P8288890749959673821

/-! ## A321405.P11810200635870846333

`A000045(n)+1-ceil(n²/12)`
-/

namespace A321405.P11810200635870846333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + 1 - ⌈(n ^ 2 : ℚ) / 12⌉

end

end A321405.P11810200635870846333

/-! ## A321405.P13023961825766492271

`A146787(n+1)+round(n²/12)`
-/

namespace A321405.P13023961825766492271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146787 (n + 1) + SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12)

end

end A321405.P13023961825766492271

/-!
# A321407: Number of non-isomorphic multiset partitions of weight n with no constant parts.

The programs for A321407, there is no canonical definition to state claims against.
-/

/-! ## A321407.P4348248761883857580

`A316355(A195210(n)+A000166(n))`
-/

namespace A321407.P4348248761883857580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (A195210 n + A000166 n).toNat

end

end A321407.P4348248761883857580

/-!
# A321408: Number of non-isomorphic self-dual multiset partitions of weight n whose parts are aperiodic.

The programs for A321408, there is no canonical definition to state claims against.
-/

/-! ## A321408.P4147692576637687370

`floor(root(A324374(3*n), 7))`
-/

namespace A321408.P4147692576637687370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A324374 (3 * n) : ℝ) ^ (1 / (7 : ℝ))⌋

end

end A321408.P4147692576637687370

/-! ## A321408.P16289359822308632567

`A111651(A149015(n))`
-/

namespace A321408.P16289359822308632567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (A149015 n).toNat

end

end A321408.P16289359822308632567

/-! ## A321408.P9465015062926369955

`A166937(A331934(n+1))`
-/

namespace A321408.P9465015062926369955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166937 (A331934 (n + 1)).toNat

end

end A321408.P9465015062926369955

/-! ## A321408.P15947189154165840256

`A137734(A328280(n)-n)`
-/

namespace A321408.P15947189154165840256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A328280 n - (n : ℤ)).toNat

end

end A321408.P15947189154165840256

/-! ## A321408.P2462443831153654515

`A000602(∑{e}[A099996(n), #])`
-/

namespace A321408.P2462443831153654515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000602 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A321408.P2462443831153654515

/-!
# A321409: Number of non-isomorphic self-dual multiset partitions of weight n whose part sizes are relatively prime.

The programs for A321409, there is no canonical definition to state claims against.
-/

/-! ## A321409.P18137286968862213599

`A316983(n)+A321413(n)-A320797(n)`
-/

namespace A321409.P18137286968862213599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316983 n + (A321413 n - A320797 n)

end

end A321409.P18137286968862213599

/-!
# A321410: Number of non-isomorphic self-dual multiset partitions of weight n whose parts are aperiodic multisets whose sizes are relatively prime.

The programs for A321410, there is no canonical definition to state claims against.
-/

/-! ## A321410.P18068341533547769341

`A321408(n)+A321411(n)-A321412(n)`
-/

namespace A321410.P18068341533547769341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321408 n + (A321411 n - A321412 n)

end

end A321410.P18068341533547769341

/-! ## A321410.P8040771740672968210

`A348086(A038085(n+1))`
-/

namespace A321410.P8040771740672968210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348086 (A038085 (n + 1)).toNat

end

end A321410.P8040771740672968210

/-! ## A321410.P8738098486827590641

`A238886(A306731(n+1))`
-/

namespace A321410.P8738098486827590641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238886 (A306731 (n + 1)).toNat

end

end A321410.P8738098486827590641

/-! ## A321410.P2566489522303847605

`A024317(xor(4, A071725(n)))`
-/

namespace A321410.P2566489522303847605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024317 (Int.xor 4 (A071725 n)).toNat

end

end A321410.P2566489522303847605

/-! ## A321410.P4866244040244706340

`A000194(A035938(∑[∑{d}[n+1, #-1]]))`
-/

namespace A321410.P4866244040244706340
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((d : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A035938 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A321410.P4866244040244706340

/-!
# A321412: Number of non-isomorphic self-dual multiset partitions of weight n with no singletons and with aperiodic parts.

The programs for A321412, there is no canonical definition to state claims against.
-/

/-! ## A321412.P1336228740185328834

`round(A075219(n+1)/(n+1))`
-/

namespace A321412.P1336228740185328834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A075219 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A321412.P1336228740185328834

/-! ## A321412.P16226790208139211340

`A065361(A264594(∑[n]))`
-/

namespace A321412.P16226790208139211340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A264594 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A321412.P16226790208139211340

/-! ## A321412.P16256351213933611637

`floor(A006138(n)/A060320(n))`
-/

namespace A321412.P16256351213933611637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006138 n : ℚ) / (A060320 n : ℚ)⌋

end

end A321412.P16256351213933611637

/-! ## A321412.P16952139598812323260

`floor(A192421(n)/A100637(n))`
-/

namespace A321412.P16952139598812323260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A192421 n : ℚ) / (A100637 n : ℚ)⌋

end

end A321412.P16952139598812323260

/-! ## A321412.P16716096326977003865

`A323906(A000031(n))-ceil(n/2)`
-/

namespace A321412.P16716096326977003865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323906 (A000031 n).toNat - ⌈(n : ℚ) / 2⌉

end

end A321412.P16716096326977003865

/-!
# A321413: Number of non-isomorphic self-dual multiset partitions of weight n with no singletons and relatively prime part sizes.

The programs for A321413, there is no canonical definition to state claims against.
-/

/-! ## A321413.P5860350296993801191

`A320797(n)+A321409(n)-A316983(n)`
-/

namespace A321413.P5860350296993801191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320797 n + (A321409 n - A316983 n)

end

end A321413.P5860350296993801191

/-!
# A321414: Array read by antidiagonals: T(n,k) is the number of n element multisets of the 2k-th roots of unity with zero sum.

The programs for A321414, there is no canonical definition to state claims against.
-/

/-! ## A321414.P370713160605302643

`C(A364197(n), A350090(A222311(n+5)))`
-/

namespace A321414.P370713160605302643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A364197 n).toNat (A350090 (A222311 (n + 5)).toNat).toNat

end

end A321414.P370713160605302643

/-! ## A321414.P12164868551319566092

`A065373(A182988(n))%A179927(n)`
-/

namespace A321414.P12164868551319566092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065373 (A182988 n).toNat) (A179927 n)

end

end A321414.P12164868551319566092

/-! ## A321414.P14369365160552907392

`A095767(∑{d}[n+1, #]^A097805(n))`
-/

namespace A321414.P14369365160552907392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095767 (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) ^ (A097805 n : ℤ))).toNat

end

end A321414.P14369365160552907392

/-! ## A321414.P2382577611722281919

`and(A248813(n), A349165(A152090(n)))`
-/

namespace A321414.P2382577611722281919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A248813 n) (A349165 (A152090 n).toNat)

end

end A321414.P2382577611722281919

/-! ## A321414.P17044991679642980223

`A182833(A182833(n+1))%A259344(n+1)`
-/

namespace A321414.P17044991679642980223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182833 (A182833 (n + 1)).toNat) (A259344 (n + 1))

end

end A321414.P17044991679642980223

/-!
# A321415: Number of n element multisets of the 2n-th roots of unity with zero sum.

The programs for A321415, there is no canonical definition to state claims against.
-/

/-! ## A321415.P17634172522759814958

`A321414(∑[4*n]+1)`
-/

namespace A321415.P17634172522759814958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321414 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A321415.P17634172522759814958

/-! ## A321415.P17402398625390575377

`lcm(2, A321414(or(1, ∑[4*n])))`
-/

namespace A321415.P17402398625390575377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A321414 (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A321415.P17402398625390575377

/-! ## A321415.P6801243629751697431

`lcm(2, A321414(A001844(n)))`
-/

namespace A321415.P6801243629751697431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A321414 (A001844 n).toNat)

end

end A321415.P6801243629751697431

/-! ## A321415.P7307823185744838539

`A007318(∑[n])*A321414(A001844(n))`
-/

namespace A321415.P7307823185744838539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A321414 (A001844 n).toNat

end

end A321415.P7307823185744838539

/-! ## A321415.P18191837859447037476

`char[A007318(n)]*A321414(A001844(n))`
-/

namespace A321415.P18191837859447037476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A321414 (A001844 n).toNat

end

end A321415.P18191837859447037476

/-!
# A321416: Number of n element multisets of the 10th roots of unity with zero sum.

The programs for A321416, there is no canonical definition to state claims against.
-/

/-! ## A321416.P4558741832454638759

`A321414(eq[9, A258207(n+1)])`
-/

namespace A321416.P4558741832454638759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321414 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321416.P4558741832454638759

/-! ## A321416.P15703665692281273213

`A321414(A112355(n+1)+n)`
-/

namespace A321416.P15703665692281273213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321414 (A112355 (n + 1) + (n : ℤ)).toNat

end

end A321416.P15703665692281273213

/-! ## A321416.P6638115047707180257

`A321414(A056000(n)+6)+C(2, n+2)`
-/

namespace A321416.P6638115047707180257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321414 (A056000 n + 6).toNat + (Nat.choose 2 (n + 2) : ℤ)

end

end A321416.P6638115047707180257

/-! ## A321416.P980546962601859624

`A321414(A056000(n)+6)+A000007(n)`
-/

namespace A321416.P980546962601859624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321414 (A056000 n + 6).toNat + A000007 n

end

end A321416.P980546962601859624

/-! ## A321416.P12566405157518573556

`A321414(A056000(n)+6)^and(1, A000040(n+1))`
-/

namespace A321416.P12566405157518573556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321414 (A056000 n + 6).toNat : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A321416.P12566405157518573556

/-!
# A321417: Number of n element multisets of the 12th roots of unity with zero sum.

The programs for A321417, there is no canonical definition to state claims against.
-/

/-! ## A321417.P4031093384540550211

`A321414(∑[n+5]+5)`
-/

namespace A321417.P4031093384540550211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321414 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A321417.P4031093384540550211

/-!
# A321419: Number of n element multisets of the 30th roots of unity with zero sum.

The programs for A321419, there is no canonical definition to state claims against.
-/

/-! ## A321419.P1961464182108902197

`A284869(a(n-1))` with `a(0)=1, a(1)=0, a(2)=15, a(3)=10`
-/

namespace A321419.P1961464182108902197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 15, 10] fun n a =>
  A284869 (a (n - 1)).toNat

end

end A321419.P1961464182108902197

/-!
# A321420: Primes p whose reversal is a Chen prime.

The programs for A321420, there is no canonical definition to state claims against.
-/

/-! ## A321420.P5862640752573309712

`∪[A118725(n+1), A321422(n+1)]`
-/

namespace A321420.P5862640752573309712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A321420.P5862640752573309712

/-! ## A321420.P4005255887639856789

`A007500(lt[A058885(n+2), A331087(n+1)])`
-/

namespace A321420.P4005255887639856789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058885 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A321420.P4005255887639856789

/-! ## A321420.P6764199472483466017

`A007500(lt[A365911(n), A304961(n)])`
-/

namespace A321420.P6764199472483466017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365911 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A321420.P6764199472483466017

/-! ## A321420.P644868691193901990

`A007500(lt[A000700(n+3), A209253(2*(n+1))])`
-/

namespace A321420.P644868691193901990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209253 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A321420.P644868691193901990

/-! ## A321420.P12331966566342101156

`filter[A202264(n+2), A248863(#)]`
-/

namespace A321420.P12331966566342101156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202264 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A248863 (f1 j).toNat = 1) n)

end

end A321420.P12331966566342101156

/-!
# A321421: a(n) = 10*(4^n - 1)/3 + 1.

The programs for A321421, the canonical program `A321421.P8386024441041371331` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321421 has offset 0).

The definition of A321421 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*(4^n-1)/3+1` (program `A321421.P3014513016705326285`, by `A321421.P3014513016705326285.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A321421.P8386024441041371331

`4*a(n-1)+7` with `a(0)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A321421

/-- `4*a(n-1)+7` -/
def P8386024441041371331.Spec : Prop :=
  ∀ n, (P8386024441041371331.a n : ℤ) = A321421 n

theorem P8386024441041371331.correct : P8386024441041371331.Spec := by
  intro n
  simp only [A321421]

end A321421

/-! ## A321421.P11845047941257735972

`10*A002450(n)+1`
-/

namespace A321421.P11845047941257735972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A002450 n + 1

end

end A321421.P11845047941257735972

namespace A321421

/-- `10*A002450(n)+1` -/
def P11845047941257735972.Spec : Prop :=
  ∀ n, P11845047941257735972.a n = A321421 n

end A321421

/-! ## A321421.P3014513016705326285

`10*(4^n-1)/3+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A321421.P3014513016705326285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 * ((4 ^ n : ℤ) - 1) : ℚ) / 3 + 1

end

end A321421.P3014513016705326285

namespace A321421

/-- `10*(4^n-1)/3+1` -/
def P3014513016705326285.Spec : Prop :=
  ∀ n, P3014513016705326285.a n = (A321421 n : ℚ)

theorem P3014513016705326285.correct : P3014513016705326285.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A321421, Nat.add_sub_cancel, A321421.P3014513016705326285.a, A321421.P8386024441041371331.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A321421, Nat.add_sub_cancel, A321421.P3014513016705326285.a, A321421.P8386024441041371331.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A321421

/-! ## A321421.P271117349569754473

`ogf((1+6x)/(1-5x+4x^2))`
-/

namespace A321421.P271117349569754473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6] [1, -5, 4] n

end

end A321421.P271117349569754473

namespace A321421

/-- `ogf((1+6x)/(1-5x+4x^2))` -/
def P271117349569754473.Spec : Prop :=
  ∀ n, P271117349569754473.a n = A321421 n

end A321421

/-! ## A321421.P909120877894820273

`∑[4*a(n-1)]` with `a(0)=1, a(1)=10`
-/

namespace A321421.P909120877894820273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321421.P909120877894820273

namespace A321421

/-- `∑[4*a(n-1)]` -/
def P909120877894820273.Spec : Prop :=
  ∀ n, (P909120877894820273.a n : ℤ) = A321421 n

end A321421

/-! ## A321421.P12264007612830020889

`or(1, A086462(n))`
-/

namespace A321421.P12264007612830020889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A086462 n)

end

end A321421.P12264007612830020889

namespace A321421

/-- `or(1, A086462(n))` -/
def P12264007612830020889.Spec : Prop :=
  ∀ n, P12264007612830020889.a n = A321421 n

end A321421

/-! ## A321421.P10687814259598976387

`A084640(Δ[n²])`
-/

namespace A321421.P10687814259598976387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084640 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A321421.P10687814259598976387

namespace A321421

/-- `A084640(Δ[n²])` -/
def P10687814259598976387.Spec : Prop :=
  ∀ n, P10687814259598976387.a n = A321421 n

end A321421

/-! ## A321421.P2802298842532476996

`A140359(Δ[n²])`
-/

namespace A321421.P2802298842532476996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140359 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A321421.P2802298842532476996

namespace A321421

/-- `A140359(Δ[n²])` -/
def P2802298842532476996.Spec : Prop :=
  ∀ n, P2802298842532476996.a n = A321421 n

end A321421

/-! ## A321421.P6243112458082785999

`A173078(Δ[n²])`
-/

namespace A321421.P6243112458082785999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173078 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A321421.P6243112458082785999

namespace A321421

/-- `A173078(Δ[n²])` -/
def P6243112458082785999.Spec : Prop :=
  ∀ n, P6243112458082785999.a n = A321421 n

end A321421

/-! ## A321421.P13564526118827202600

`A344109(Δ[n²])`
-/

namespace A321421.P13564526118827202600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344109 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A321421.P13564526118827202600

namespace A321421

/-- `A344109(Δ[n²])` -/
def P13564526118827202600.Spec : Prop :=
  ∀ n, P13564526118827202600.a n = A321421 n

end A321421

/-! ## A321421.P2791438553720335922

`∑[A146523(2*n)]`
-/

namespace A321421.P2791438553720335922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146523 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321421.P2791438553720335922

namespace A321421

/-- `∑[A146523(2*n)]` -/
def P2791438553720335922.Spec : Prop :=
  ∀ n, P2791438553720335922.a n = A321421 n

end A321421

/-! ## A321421.P14157639230538923161

`xor(A057427(n), A086462(n))`
-/

namespace A321421.P14157639230538923161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A086462 n)

end

end A321421.P14157639230538923161

namespace A321421

/-- `xor(A057427(n), A086462(n))` -/
def P14157639230538923161.Spec : Prop :=
  ∀ n, P14157639230538923161.a n = A321421 n

end A321421

/-! ## A321421.P18147465645902152539

`∩[A084640(n), A173078(n+1)]`
-/

namespace A321421.P18147465645902152539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084640 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321421.P18147465645902152539

namespace A321421

/-- `∩[A084640(n), A173078(n+1)]` -/
def P18147465645902152539.Spec : Prop :=
  ∀ n, (P18147465645902152539.a n : ℤ) = A321421 n

end A321421

/-! ## A321421.P2813470938167015169

`(A146882(n)-3)/2`
-/

namespace A321421.P2813470938167015169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146882 n - 3 : ℚ) / 2

end

end A321421.P2813470938167015169

namespace A321421

/-- `(A146882(n)-3)/2` -/
def P2813470938167015169.Spec : Prop :=
  ∀ n, P2813470938167015169.a n = (A321421 n : ℚ)

end A321421

/-! ## A321421.P10109716210020558678

`A072201(n+1)%A199116(n)`
-/

namespace A321421.P10109716210020558678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072201 (n + 1)) (A199116 n)

end

end A321421.P10109716210020558678

namespace A321421

/-- `A072201(n+1)%A199116(n)` -/
def P10109716210020558678.Spec : Prop :=
  ∀ n, P10109716210020558678.a n = A321421 n

end A321421

/-!
# A321422: Primes that are non-Chen primes whose reversal is a Chen prime.

The programs for A321422, there is no canonical definition to state claims against.
-/

/-! ## A321422.P15883212157165933372

`∩[A102540(n+1), A321420(n+1)]`
-/

namespace A321422.P15883212157165933372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321422.P15883212157165933372

/-!
# A321423: Expansion of 1/2 * Product_{0 <= i <= j} (1 + x^(i^2 + j^2)).

The programs for A321423, there is no canonical definition to state claims against.
-/

/-! ## A321423.P17156113287162197507

`∑[A117957(n)%A144353(2*(n+1))]`
-/

namespace A321423.P17156113287162197507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117957 n) (A144353 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321423.P17156113287162197507

/-! ## A321423.P9199442724970174927

`A035451(n)-∑[A025456(A104144(n))]`
-/

namespace A321423.P9199442724970174927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 (A104144 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035451 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321423.P9199442724970174927

/-! ## A321423.P16092584059386063552

`A035451(n)-A010051(A252130(n+1))`
-/

namespace A321423.P16092584059386063552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035451 n - A010051 (A252130 (n + 1)).toNat

end

end A321423.P16092584059386063552

/-! ## A321423.P15195579274281911722

`A035451(n)-A025456(2*A104144(n))`
-/

namespace A321423.P15195579274281911722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035451 n - A025456 (2 * A104144 n).toNat

end

end A321423.P15195579274281911722

/-!
# A321424: Expansion of 1/2 * Product_{0 <= i <= j <= k} (1 + x^(i^2 + j^2 + k^2)).

The programs for A321424, there is no canonical definition to state claims against.
-/

/-! ## A321424.P10232116530478029456

`A156251(A087897(2*n+3)+A015742(n+7))`
-/

namespace A321424.P10232116530478029456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156251 (A087897 (2 * n + 3) + A015742 (n + 7)).toNat

end

end A321424.P10232116530478029456

/-! ## A321424.P18330170389279184534

`A187392(A015754(n))%A000217(A000051(n))`
-/

namespace A321424.P18330170389279184534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187392 (A015754 n).toNat) (A000217 (A000051 n).toNat)

end

end A321424.P18330170389279184534

/-! ## A321424.P12240218939378497277

`A332577(n)-A320656(A324886(n+1))`
-/

namespace A321424.P12240218939378497277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332577 n - A320656 (A324886 (n + 1)).toNat

end

end A321424.P12240218939378497277

/-! ## A321424.P11790526269915722272

`A048766((A237668(n)+A000010(n+2))²)`
-/

namespace A321424.P11790526269915722272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 ((A237668 n + A000010 (n + 2)) ^ 2).toNat

end

end A321424.P11790526269915722272

/-! ## A321424.P16174371998267597517

`A339221(A339255(n+1)+A339114(n+2))`
-/

namespace A321424.P16174371998267597517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339221 (A339255 (n + 1) + A339114 (n + 2)).toNat

end

end A321424.P16174371998267597517

/-!
# A321425: Number of connected labeled almost cubic graphs on 2n nodes.

The programs for A321425, there is no canonical definition to state claims against.
-/

/-! ## A321425.P16838544573506870049

`3*n*A002829(n)`
-/

namespace A321425.P16838544573506870049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) * A002829 n

end

end A321425.P16838544573506870049

/-! ## A321425.P14331589935421074616

`A002829(n)*A008585(n)`
-/

namespace A321425.P14331589935421074616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002829 n * A008585 n

end

end A321425.P14331589935421074616

/-! ## A321425.P12278993706282450101

`n*3*(A007102(A233583(n+1))+A004109(n))`
-/

namespace A321425.P12278993706282450101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (3 * (A007102 (A233583 (n + 1)).toNat + A004109 n))

end

end A321425.P12278993706282450101

/-! ## A321425.P8060199886285051561

`n*3*(A004109(n)+A007102(n)%A005814(n))`
-/

namespace A321425.P8060199886285051561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (3 * (A004109 n + Int.tmod (A007102 n) (A005814 n)))

end

end A321425.P8060199886285051561

/-! ## A321425.P2402243629149298718

`3*n*A059441(A130883(n)+3)`
-/

namespace A321425.P2402243629149298718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) * A059441 (A130883 n + 3).toNat

end

end A321425.P2402243629149298718

/-!
# A321426: Number of connected labeled fairly cubic graphs on 2n nodes.

The programs for A321426, there is no canonical definition to state claims against.
-/

/-! ## A321426.P15658832486788413304

`A321427(n)/(2*n+1)`
-/

namespace A321426.P15658832486788413304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321427 n : ℚ) / (2 * n + 1 : ℚ)

end

end A321426.P15658832486788413304

/-! ## A321426.P6133319841695817950

`floor(A321427(n)/A005408(n))`
-/

namespace A321426.P6133319841695817950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A321427 n : ℚ) / (A005408 n : ℚ)⌋

end

end A321426.P6133319841695817950

/-! ## A321426.P12880748806505812684

`floor(A321427(n)/record[A000265(n+1)])`
-/

namespace A321426.P12880748806505812684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A321427 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋

end

end A321426.P12880748806505812684

/-! ## A321426.P1064563067323197508

`A321427(n)/A005408(n)*A280865(n)`
-/

namespace A321426.P1064563067323197508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321427 n : ℚ) / (A005408 n : ℚ) * (A280865 n : ℚ)

end

end A321426.P1064563067323197508

/-! ## A321426.P16028611630546520764

`lcm(A000265(n+1), A321427(n))/A005408(n)`
-/

namespace A321426.P16028611630546520764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000265 (n + 1)) (A321427 n) : ℚ) / (A005408 n : ℚ)

end

end A321426.P16028611630546520764

/-!
# A321427: Number of connected labeled closely cubic graphs on 2n+1 nodes.

The programs for A321427, there is no canonical definition to state claims against.
-/

/-! ## A321427.P15325472196044490185

`(2*n+1)*A321426(n)`
-/

namespace A321427.P15325472196044490185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A321426 n

end

end A321427.P15325472196044490185

/-! ## A321427.P17854220152895569448

`lcm(2, A005408(n)*A321426(n))`
-/

namespace A321427.P17854220152895569448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A005408 n * A321426 n)

end

end A321427.P17854220152895569448

/-! ## A321427.P17133009970823594719

`A005408(n)*A321426(n)*A178334(n)`
-/

namespace A321427.P17133009970823594719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A321426 n * A178334 n

end

end A321427.P17133009970823594719

/-! ## A321427.P7081154432935310067

`A005408(n)*A321426(n)*A165471(n²)`
-/

namespace A321427.P7081154432935310067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A321426 n * A165471 (n ^ 2)

end

end A321427.P7081154432935310067

/-! ## A321427.P3775630362905418009

`A005408(n)*A321426(n)*A001221(4-(-1)^n)`
-/

namespace A321427.P3775630362905418009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A321426 n * A001221 (4 - (-1) ^ n).toNat

end

end A321427.P3775630362905418009

/-!
# A321428: Expansion of Product_{i>0, j>0} (1 + x^(i^2 + j^2)).

The programs for A321428, there is no canonical definition to state claims against.
-/

/-! ## A321428.P12506072998920421481

`A008284(3*n+2)-A011628(floor(2^(n-1)))`
-/

namespace A321428.P12506072998920421481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (3 * n + 2) - A011628 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

end

end A321428.P12506072998920421481

/-! ## A321428.P10337046520328176353

`A008284(3*n+2)-A079978(12^∑{e}[n+1, #])`
-/

namespace A321428.P10337046520328176353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (3 * n + 2) - A079978 (12 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A321428.P10337046520328176353

/-! ## A321428.P3126184364641647505

`A008284(3*n+2)-A066247(((n+1)²+n)²)`
-/

namespace A321428.P3126184364641647505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (3 * n + 2) - A066247 (((n + 1) ^ 2 + n) ^ 2)

end

end A321428.P3126184364641647505

/-! ## A321428.P838455585438790939

`A167970(A187829(n+1))*A321435(n)`
-/

namespace A321428.P838455585438790939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167970 (A187829 (n + 1)).toNat * A321435 n

end

end A321428.P838455585438790939

/-! ## A321428.P13764822202392873499

`A001222(A066875(n+1)^A321435(n))`
-/

namespace A321428.P13764822202392873499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A066875 (n + 1) : ℚ) ^ (A321435 n : ℤ))).toNat

end

end A321428.P13764822202392873499

/-!
# A321429: Expansion of Product_{i>0, j>0, k>0} (1 + x^(i^2 + j^2 + k^2)).

The programs for A321429, there is no canonical definition to state claims against.
-/

/-! ## A321429.P18093685756062075263

`A001222(C(A321453(n+3), A321433(n)))`
-/

namespace A321429.P18093685756062075263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose (A321453 (n + 3)).toNat (A321433 n).toNat)

end

end A321429.P18093685756062075263

/-!
# A321430: Expansion of Product_{i>0, j>0} (1 - x^(i^2 + j^2)).

The programs for A321430, there is no canonical definition to state claims against.
-/

/-! ## A321430.P10154236638920952098

`A002828(A000079(n))*A321436(n)`
-/

namespace A321430.P10154236638920952098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A000079 n).toNat * A321436 n

end

end A321430.P10154236638920952098

/-! ## A321430.P8864402700559894958

`A151691(A022902(n+1))*A321436(n)`
-/

namespace A321430.P8864402700559894958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151691 (A022902 (n + 1)).toNat * A321436 n

end

end A321430.P8864402700559894958

/-! ## A321430.P10262452654390858083

`A001511(A238315(n+1))*A321436(n)`
-/

namespace A321430.P10262452654390858083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A238315 (n + 1)).toNat * A321436 n

end

end A321430.P10262452654390858083

/-! ## A321430.P18191337659245610280

`A000034(A000975(n))*A321436(n)`
-/

namespace A321430.P18191337659245610280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A000975 n).toNat * A321436 n

end

end A321430.P18191337659245610280

/-! ## A321430.P8358925948365821652

`A129265(A000204(n+1))*A321436(n)`
-/

namespace A321430.P8358925948365821652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129265 (A000204 (n + 1)).toNat * A321436 n

end

end A321430.P8358925948365821652

/-!
# A321431: Expansion of Product_{i>0, j>0} 1/(1 - x^(i^2 + j^2)).

The programs for A321431, there is no canonical definition to state claims against.
-/

/-! ## A321431.P18080046612561279990

`A263143(lt[A027828(n), A004722(n)])`
-/

namespace A321431.P18080046612561279990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027828 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263143 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A321431.P18080046612561279990

/-! ## A321431.P2051661234350601923

`A107286(A262876(n)^4)`
-/

namespace A321431.P2051661234350601923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A262876 n ^ 4).toNat

end

end A321431.P2051661234350601923

/-! ## A321431.P4026879629414464815

`A107286(A262876(n)²²)`
-/

namespace A321431.P4026879629414464815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 ((A262876 n ^ 2) ^ 2).toNat

end

end A321431.P4026879629414464815

/-! ## A321431.P7242926046951784433

`A048793(A262876(n)^A222656(n))`
-/

namespace A321431.P7242926046951784433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048793 (SequenceMachineLib.roundAway ((A262876 n : ℚ) ^ (A222656 n : ℤ))).toNat

end

end A321431.P7242926046951784433

/-! ## A321431.P17369467807197482962

`A107286(lcm(A262876(n), A281751(n)))`
-/

namespace A321431.P17369467807197482962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (Int.lcm (A262876 n) (A281751 n))

end

end A321431.P17369467807197482962

/-!
# A321434: Triangle read by rows; T(n,k) is the number of achiral rows of n colors using exactly k colors.

The programs for A321434, there is no canonical definition to state claims against.
-/

/-! ## A321434.P14466906528370421056

`A291969(n-A185284(2*(n+2)))`
-/

namespace A321434.P14466906528370421056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291969 ((n : ℤ) - A185284 (2 * (n + 2))).toNat

end

end A321434.P14466906528370421056

/-! ## A321434.P4798562858148369725

`A291969(lt[A063804(n+3), A181133(n+5)])`
-/

namespace A321434.P4798562858148369725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063804 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181133 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291969 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A321434.P4798562858148369725

/-! ## A321434.P244810896659362280

`A291969(lt[A291944(n), A043509(2*n+5)])`
-/

namespace A321434.P244810896659362280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291944 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043509 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291969 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A321434.P244810896659362280

/-! ## A321434.P8548197264788751573

`A291969(lt[A367210(n+1), A329866(2*(n+1))])`
-/

namespace A321434.P8548197264788751573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329866 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291969 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A321434.P8548197264788751573

/-! ## A321434.P14660174097869137258

`A291969(lt[A189481(3*n+5), A214250(n+5)])`
-/

namespace A321434.P14660174097869137258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189481 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214250 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291969 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A321434.P14660174097869137258

/-!
# A321435: Expansion of Product_{1 <= i <= j} (1 + x^(i^2 + j^2)).

The programs for A321435, there is no canonical definition to state claims against.
-/

/-! ## A321435.P2691606725525070383

`A001221(ceil(cosh(A321428(n))))`
-/

namespace A321435.P2691606725525070383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ⌈Real.cosh (A321428 n : ℝ)⌉.toNat

end

end A321435.P2691606725525070383

/-! ## A321435.P9943265127437829209

`A297036(4*ceil(cosh(A321428(n))))`
-/

namespace A321435.P9943265127437829209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297036 (4 * ⌈Real.cosh (A321428 n : ℝ)⌉).toNat

end

end A321435.P9943265127437829209

/-! ## A321435.P5949244001980776725

`A049115(A293313(A321428(n)))`
-/

namespace A321435.P5949244001980776725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (A293313 (A321428 n).toNat).toNat

end

end A321435.P5949244001980776725

/-! ## A321435.P17746127377248520007

`A053251(A321428(n)%A339618(3*(n+1)))`
-/

namespace A321435.P17746127377248520007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053251 (Int.tmod (A321428 n) (A339618 (3 * (n + 1)))).toNat

end

end A321435.P17746127377248520007

/-! ## A321435.P14723382624913915926

`A382425(∑[A170806(n+1)])`
-/

namespace A321435.P14723382624913915926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382425 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A321435.P14723382624913915926

/-!
# A321436: Expansion of Product_{1 <= i <= j} (1 - x^(i^2 + j^2)).

The programs for A321436, there is no canonical definition to state claims against.
-/

/-! ## A321436.P16850838492701065876

`A112609(n)-A112609(A225466(n))`
-/

namespace A321436.P16850838492701065876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112609 n - A112609 (A225466 n).toNat

end

end A321436.P16850838492701065876

/-! ## A321436.P15089556703846903764

`A014029(A311460(n)+A107847(n+1))`
-/

namespace A321436.P15089556703846903764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014029 (A311460 n + A107847 (n + 1)).toNat

end

end A321436.P15089556703846903764

/-! ## A321436.P9877725624642803090

`A005171(A041009(n))-A284627(n+1)`
-/

namespace A321436.P9877725624642803090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A041009 n).toNat - A284627 (n + 1)

end

end A321436.P9877725624642803090

/-! ## A321436.P2411945546199937119

`A378397(A326704(n+3))-A380562(n+1)`
-/

namespace A321436.P2411945546199937119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378397 (A326704 (n + 3)).toNat - A380562 (n + 1)

end

end A321436.P2411945546199937119

/-! ## A321436.P9480927844337408337

`A030213(A328242(n+1)*A363721(3*n+1))`
-/

namespace A321436.P9480927844337408337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030213 (A328242 (n + 1) * A363721 (3 * n + 1)).toNat

end

end A321436.P9480927844337408337

/-!
# A321437: Expansion of Product_{1 <= i <= j} 1/(1 - x^(i^2 + j^2)).

The programs for A321437, there is no canonical definition to state claims against.
-/

/-! ## A321437.P14396880921269181636

`or(A025458(A095020(n+1)), A029205(n))`
-/

namespace A321437.P14396880921269181636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025458 (A095020 (n + 1)).toNat) (A029205 n)

end

end A321437.P14396880921269181636

/-! ## A321437.P10361448277529947213

`A055091(A025808(n)^A029100(n))`
-/

namespace A321437.P10361448277529947213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 (SequenceMachineLib.roundAway ((A025808 n : ℚ) ^ (A029100 n : ℤ))).toNat

end

end A321437.P10361448277529947213

/-! ## A321437.P12547302142472126292

`A055091(A025808(n)^A110654(n))`
-/

namespace A321437.P12547302142472126292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 (SequenceMachineLib.roundAway ((A025808 n : ℚ) ^ (A110654 n : ℤ))).toNat

end

end A321437.P12547302142472126292

/-! ## A321437.P8478529838577103184

`A007895(A000677(n)+A084938(n)²)`
-/

namespace A321437.P8478529838577103184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A000677 n + A084938 n ^ 2).toNat

end

end A321437.P8478529838577103184

/-! ## A321437.P17699160049456992047

`A127325(A029145(n)²)+A029205(n)`
-/

namespace A321437.P17699160049456992047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127325 (A029145 n ^ 2).toNat + A029205 n

end

end A321437.P17699160049456992047

/-!
# A321438: a(n) = Sum_{d|n} (-1)^(n/d+1)*d^n.

The programs for A321438, there is no canonical definition to state claims against.
-/

/-! ## A321438.P17871288944827657847

`∑{d}[n+1, (-1)^((n+1)/#+1)*#^(n+1)]`
-/

namespace A321438.P17871288944827657847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-1 : ℝ) ^ ((n + 1 : ℚ) / (d : ℚ) + 1 : ℝ) * (d ^ (n + 1) : ℝ)

end

end A321438.P17871288944827657847

/-! ## A321438.P15169658521310925817

`A322081(2*(n+1)²)`
-/

namespace A321438.P15169658521310925817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322081 (2 * (n + 1) ^ 2)

end

end A321438.P15169658521310925817

/-! ## A321438.P14981868665442186448

`record[A322081(A053439(n))]`
-/

namespace A321438.P14981868665442186448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322081 (A053439 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321438.P14981868665442186448

/-!
# A321439: Numbers k such that if j is the sum of the first prime(k) primes then the sum of the first j primes is prime.

The programs for A321439, there is no canonical definition to state claims against.
-/

/-! ## A321439.P2333207349919407487

`A000720(A321343(n+1))`
-/

namespace A321439.P2333207349919407487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A321343 (n + 1)).toNat

end

end A321439.P2333207349919407487

/-! ## A321439.P12229413780533427727

`A061395(p?[A321343(n+1)])`
-/

namespace A321439.P12229413780533427727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A321439.P12229413780533427727

/-! ## A321439.P10067712353581152182

`A061395(or(1, A321343(n+1)))`
-/

namespace A321439.P10067712353581152182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A321343 (n + 1))).toNat

end

end A321439.P10067712353581152182

/-! ## A321439.P1885022676995513083

`∑{d}[A321343(n+1), A061395(#)]`
-/

namespace A321439.P1885022676995513083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A321439.P1885022676995513083

/-! ## A321439.P10096715672347207040

`A061395(A321343(n+1))%A111351(n+1)`
-/

namespace A321439.P10096715672347207040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A321343 (n + 1)).toNat) (A111351 (n + 1))

end

end A321439.P10096715672347207040

/-! ## A321439.P10419466595255544885

`A061395(A321343(n+1)%A244918(n+1))`
-/

namespace A321439.P10419466595255544885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A321343 (n + 1)) (A244918 (n + 1))).toNat

end

end A321439.P10419466595255544885

/-! ## A321439.P14677763154610049906

`A061395(2*A321343(n+1))`
-/

namespace A321439.P14677763154610049906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A321343 (n + 1)).toNat

end

end A321439.P14677763154610049906

/-! ## A321439.P6346950106408722538

`A056239(p?[A321343(n+1)])`
-/

namespace A321439.P6346950106408722538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A321439.P6346950106408722538

/-! ## A321439.P15356522787214211815

`A056239(or(1, A321343(n+1)))`
-/

namespace A321439.P15356522787214211815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.lor 1 (A321343 (n + 1))).toNat

end

end A321439.P15356522787214211815

/-! ## A321439.P7102671733763423933

`∑{d}[A321343(n+1), A056239(#)]`
-/

namespace A321439.P7102671733763423933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A321439.P7102671733763423933

/-!
# A321440: Number of partitions of n into consecutive parts, all singletons except the largest.

The programs for A321440, there is no canonical definition to state claims against.
-/

/-! ## A321440.P7997581907536067916

`A238872(2*n)`
-/

namespace A321440.P7997581907536067916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238872 (2 * n)

end

end A321440.P7997581907536067916

/-! ## A321440.P14046624650481117886

`xor(1, xor(1, A238872(n+n)))`
-/

namespace A321440.P14046624650481117886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A238872 (n + n)))

end

end A321440.P14046624650481117886

/-! ## A321440.P6532117499675080798

`A000027(A238872(n+n))`
-/

namespace A321440.P6532117499675080798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A238872 (n + n)).toNat

end

end A321440.P6532117499675080798

/-! ## A321440.P16806734833641986623

`A006371(A131098(n+1))`
-/

namespace A321440.P16806734833641986623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006371 (A131098 (n + 1)).toNat

end

end A321440.P16806734833641986623

/-! ## A321440.P7706219051978721388

`A238872(n+n)+A010051(A007522(n+1)+1)`
-/

namespace A321440.P7706219051978721388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238872 (n + n) + A010051 (A007522 (n + 1) + 1).toNat

end

end A321440.P7706219051978721388

/-! ## A321440.P16734353520907024522

`abs(A292511(abs(1-2*n)))`
-/

namespace A321440.P16734353520907024522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A292511 |1 - (2 * n : ℤ)|.toNat)|

end

end A321440.P16734353520907024522

/-!
# A321441: Number of "hexagonal partitions" of n.

The programs for A321441, there is no canonical definition to state claims against.
-/

/-! ## A321441.P8748922682618915203

`1-A001222(A288820(n+1))+n`
-/

namespace A321441.P8748922682618915203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001222 (A288820 (n + 1)).toNat + (n : ℤ)

end

end A321441.P8748922682618915203

/-! ## A321441.P5245057906547439885

`A297030(A293741(n)+ceil(2^(n-1)))`
-/

namespace A321441.P5245057906547439885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297030 (A293741 n + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉).toNat

end

end A321441.P5245057906547439885

/-! ## A321441.P8596829807727375558

`A077168(n)-A001222(A288820(n+1))`
-/

namespace A321441.P8596829807727375558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n - A001222 (A288820 (n + 1)).toNat

end

end A321441.P8596829807727375558

/-! ## A321441.P5626250631598767561

`A291769(n)-A001222(A288820(n+1))`
-/

namespace A321441.P5626250631598767561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 n - A001222 (A288820 (n + 1)).toNat

end

end A321441.P5626250631598767561

/-!
# A321443: Number of "bilaterally symmetric hexagonal partitions" of n.

The programs for A321443, there is no canonical definition to state claims against.
-/

/-! ## A321443.P7108291975501912512

`A081604(lcm(A006233(n), A183953(3*n+4)))`
-/

namespace A321443.P7108291975501912512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (Int.lcm (A006233 n) (A183953 (3 * n + 4)))

end

end A321443.P7108291975501912512

/-! ## A321443.P458899688303117810

`∑{e}[A092431(A344005(n+1)), #]`
-/

namespace A321443.P458899688303117810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092431 (A344005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A321443.P458899688303117810

/-! ## A321443.P17926957278517434812

`A322900(n)+A005089(A322898(n))`
-/

namespace A321443.P17926957278517434812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322900 n + A005089 (A322898 n).toNat

end

end A321443.P17926957278517434812

/-! ## A321443.P5843893604931538640

`A316864(A070933(n))+A298423(n)`
-/

namespace A321443.P5843893604931538640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A070933 n).toNat + A298423 n

end

end A321443.P5843893604931538640

/-! ## A321443.P269983549345323197

`A242443(A306821(n)+A078182(n+1))`
-/

namespace A321443.P269983549345323197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242443 (A306821 n + A078182 (n + 1)).toNat

end

end A321443.P269983549345323197

/-!
# A321444: Expansion of Product_{0 < i < j} (1 - x^(i^2 + j^2)).

The programs for A321444, there is no canonical definition to state claims against.
-/

/-! ## A321444.P6756077177795725101

`(-A319734(n))^A283691(2*(n+2))`
-/

namespace A321444.P6756077177795725101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A319734 n : ℚ) ^ (A283691 (2 * (n + 2)) : ℤ)

end

end A321444.P6756077177795725101

/-! ## A321444.P1304686106885155513

`A319734(n)-A025441(n^3)`
-/

namespace A321444.P1304686106885155513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319734 n - A025441 (n ^ 3)

end

end A321444.P1304686106885155513

/-! ## A321444.P8363296919594972651

`A014081(A240235(n+1))-A025435(A001105(n))`
-/

namespace A321444.P8363296919594972651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A240235 (n + 1)).toNat - A025435 (A001105 n).toNat

end

end A321444.P8363296919594972651

/-! ## A321444.P11786882393711670241

`A072670(3^A321445(n))-A025441(A000578(n))`
-/

namespace A321444.P11786882393711670241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A321445 n : ℤ))).toNat - A025441 (A000578 n).toNat

end

end A321444.P11786882393711670241

/-! ## A321444.P6466160906142467311

`A033999(A000045(n))*A319734(n)`
-/

namespace A321444.P6466160906142467311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A000045 n).toNat * A319734 n

end

end A321444.P6466160906142467311

/-!
# A321445: Expansion of Product_{0 < i < j} 1/(1 - x^(i^2 + j^2)).

The programs for A321445, there is no canonical definition to state claims against.
-/

/-! ## A321445.P60734363119499725

`A175788(A031285(A094599(n+1)))*A319734(n)`
-/

namespace A321445.P60734363119499725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (A031285 (A094599 (n + 1)).toNat).toNat * A319734 n

end

end A321445.P60734363119499725

/-! ## A321445.P14780225014529534176

`A055641(A062584(n)*A230099(n))`
-/

namespace A321445.P14780225014529534176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A062584 n * A230099 n).toNat

end

end A321445.P14780225014529534176

/-! ## A321445.P10247186586660382910

`A055641(lcm(A062584(n), A230099(n)))`
-/

namespace A321445.P10247186586660382910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (Int.lcm (A062584 n) (A230099 n))

end

end A321445.P10247186586660382910

/-! ## A321445.P37422267238377942

`A000002(A059328(n+3))*A319734(n)`
-/

namespace A321445.P37422267238377942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A059328 (n + 3)).toNat * A319734 n

end

end A321445.P37422267238377942

/-! ## A321445.P5721950384523991583

`A053838(A288778(2*n+5)*A319734(n))`
-/

namespace A321445.P5721950384523991583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 (A288778 (2 * n + 5) * A319734 n).toNat

end

end A321445.P5721950384523991583

/-!
# A321446: Number of (0,1)-matrices with n ones, no zero rows or columns, and distinct rows and columns.

The programs for A321446, there is no canonical definition to state claims against.
-/

/-! ## A321446.P7935244768612474489

`A007614(A007788(n))`
-/

namespace A321446.P7935244768612474489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007614 (A007788 n).toNat

end

end A321446.P7935244768612474489

/-! ## A321446.P16220827900859105251

`A305117(A006153(n))`
-/

namespace A321446.P16220827900859105251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 (A006153 n).toNat

end

end A321446.P16220827900859105251

/-!
# A321447: Expansion of Product_{0 < i < j < k} (1 - x^(i^2 + j^2 + k^2)).

The programs for A321447, there is no canonical definition to state claims against.
-/

/-! ## A321447.P7630291423817984956

`A320332(n)-A084888(A339431(n)!)`
-/

namespace A321447.P7630291423817984956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320332 n - A084888 (Nat.factorial (A339431 n).toNat)

end

end A321447.P7630291423817984956

/-! ## A321447.P15749419657413072649

`and(-A320332(n), A033999(C(3*n, 2)))`
-/

namespace A321447.P15749419657413072649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A320332 n) (A033999 (Nat.choose (3 * n) 2))

end

end A321447.P15749419657413072649

/-! ## A321447.P11825877169295967208

`(a(A025437(n))-1)%A333416(n+1)` with `a(0)=1`
-/

namespace A321447.P11825877169295967208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (A025437 n).toNat - 1) (A333416 (n + 1))

end

end A321447.P11825877169295967208

/-! ## A321447.P7743997714517571573

`A102448(A100450(n))-A025442(n)`
-/

namespace A321447.P7743997714517571573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102448 (A100450 n).toNat - A025442 n

end

end A321447.P7743997714517571573

/-! ## A321447.P14870204160978185392

`A102448(A100450(n))-(A025437(n)-A025443(n))`
-/

namespace A321447.P14870204160978185392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102448 (A100450 n).toNat - (A025437 n - A025443 n)

end

end A321447.P14870204160978185392

/-!
# A321448: Expansion of Product_{0 < i < j < k} 1/(1 - x^(i^2 + j^2 + k^2)).

The programs for A321448, there is no canonical definition to state claims against.
-/

/-! ## A321448.P11251715702098137950

`A320332(A181838(3*n+1)+n)`
-/

namespace A321448.P11251715702098137950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320332 (A181838 (3 * n + 1) + (n : ℤ)).toNat

end

end A321448.P11251715702098137950

/-! ## A321448.P1971735806412485639

`A320332(∏{p}[n, #]%A288578(n))`
-/

namespace A321448.P1971735806412485639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320332 (Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A288578 n)).toNat

end

end A321448.P1971735806412485639

/-! ## A321448.P238323721014967112

`A320332(A182129(2*n+3))+A320332(n)`
-/

namespace A321448.P238323721014967112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320332 (A182129 (2 * n + 3)).toNat + A320332 n

end

end A321448.P238323721014967112

/-! ## A321448.P8010745228627571509

`A320332(or(n, A320302(3*(n+1))))`
-/

namespace A321448.P8010745228627571509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320332 (Int.lor (n : ℤ) (A320302 (3 * (n + 1)))).toNat

end

end A321448.P8010745228627571509

/-! ## A321448.P5573443297271227832

`gcd(A025435(A058348(n)), A320332(n))`
-/

namespace A321448.P5573443297271227832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025435 (A058348 n).toNat) (A320332 n)

end

end A321448.P5573443297271227832

/-!
# A321449: Regular triangle read by rows where T(n,k) is the number of twice-partitions of n with a combined total of k parts.

The programs for A321449, there is no canonical definition to state claims against.
-/

/-! ## A321449.P3515547582381082155

`A364912(n)+A321412(A274835(n))`
-/

namespace A321449.P3515547582381082155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364912 n + A321412 (A274835 n).toNat

end

end A321449.P3515547582381082155

/-! ## A321449.P4080646717989190877

`or(A039966(A004928(n+1)), A364912(n))`
-/

namespace A321449.P4080646717989190877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A039966 (A004928 (n + 1)).toNat) (A364912 n)

end

end A321449.P4080646717989190877

/-! ## A321449.P1867600862891603433

`A364912(n)+A070109(A210866(3*(n+1)))`
-/

namespace A321449.P1867600862891603433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364912 n + A070109 (A210866 (3 * (n + 1))).toNat

end

end A321449.P1867600862891603433

/-! ## A321449.P14900228652463046192

`A244231(2*A267480(n))`
-/

namespace A321449.P14900228652463046192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244231 (2 * A267480 n).toNat

end

end A321449.P14900228652463046192

/-! ## A321449.P2794791186059416860

`A258198(lcm(2, A289546(n)))`
-/

namespace A321449.P2794791186059416860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258198 (Int.lcm 2 (A289546 n))

end

end A321449.P2794791186059416860

/-!
# A321451: Number of integer partitions of n that cannot be partitioned into two or more blocks with equal sums.

The programs for A321451, there is no canonical definition to state claims against.
-/

/-! ## A321451.P330281488961646270

`A000041(n)-A321452(n)`
-/

namespace A321451.P330281488961646270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A321452 n

end

end A321451.P330281488961646270

/-! ## A321451.P1928293201827226974

`sqrt(A001255(n))-A321452(n)`
-/

namespace A321451.P1928293201827226974
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A321452 n : ℝ)

end

end A321451.P1928293201827226974

/-! ## A321451.P9985614024153550964

`∑[A002865(n)]-A321452(n)`
-/

namespace A321451.P9985614024153550964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A321452 n

end

end A321451.P9985614024153550964

/-! ## A321451.P1539480046911813145

`A000065(n)+1-A321452(n)`
-/

namespace A321451.P1539480046911813145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A321452 n)

end

end A321451.P1539480046911813145

/-! ## A321451.P11840605583565392699

`A035363(2*n)-A321452(n)`
-/

namespace A321451.P11840605583565392699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A321452 n

end

end A321451.P11840605583565392699

/-! ## A321451.P14528072140624669232

`A100824(2*n)-A321452(n)`
-/

namespace A321451.P14528072140624669232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * n) - A321452 n

end

end A321451.P14528072140624669232

/-! ## A321451.P7838110325348254771

`A026794(A000124(n))-A321452(n)`
-/

namespace A321451.P7838110325348254771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A000124 n).toNat - A321452 n

end

end A321451.P7838110325348254771

/-! ## A321451.P7330605609753083422

`A035444(A008586(n))-A321452(n)`
-/

namespace A321451.P7330605609753083422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A008586 n).toNat - A321452 n

end

end A321451.P7330605609753083422

/-! ## A321451.P13329296713595860819

`A079025(A000217(n))-A321452(n)`
-/

namespace A321451.P13329296713595860819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079025 (A000217 n).toNat - A321452 n

end

end A321451.P13329296713595860819

/-!
# A321452: Number of integer partitions of n that can be partitioned into two or more blocks with equal sums.

The programs for A321452, there is no canonical definition to state claims against.
-/

/-! ## A321452.P5959091167061731205

`A000041(n)-A321451(n)`
-/

namespace A321452.P5959091167061731205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A321451 n

end

end A321452.P5959091167061731205

/-! ## A321452.P3939750861414160716

`sqrt(A001255(n))-A321451(n)`
-/

namespace A321452.P3939750861414160716
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A321451 n : ℝ)

end

end A321452.P3939750861414160716

/-! ## A321452.P13095265572361702715

`∑[A002865(n)]-A321451(n)`
-/

namespace A321452.P13095265572361702715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A321451 n

end

end A321452.P13095265572361702715

/-! ## A321452.P927051567926809106

`A054225(∑[n])-A321451(n)`
-/

namespace A321452.P927051567926809106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (∑ j ∈ Finset.range (n + 1), f1 j) - A321451 n

end

end A321452.P927051567926809106

/-! ## A321452.P3638114952173093977

`A194543(∑[n])-A321451(n)`
-/

namespace A321452.P3638114952173093977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 (∑ j ∈ Finset.range (n + 1), f1 j) - A321451 n

end

end A321452.P3638114952173093977

/-! ## A321452.P850860118446091299

`A035363(2*n)-A321451(n)`
-/

namespace A321452.P850860118446091299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A321451 n

end

end A321452.P850860118446091299

/-! ## A321452.P4909753835652953181

`A100824(2*n)-A321451(n)`
-/

namespace A321452.P4909753835652953181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * n) - A321451 n

end

end A321452.P4909753835652953181

/-! ## A321452.P4702858026787215678

`A133041(n)-(A321451(n)+n)`
-/

namespace A321452.P4702858026787215678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (A321451 n + (n : ℤ))

end

end A321452.P4702858026787215678

/-! ## A321452.P4821522128316878647

`A026794(A000124(n))-A321451(n)`
-/

namespace A321452.P4821522128316878647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A000124 n).toNat - A321451 n

end

end A321452.P4821522128316878647

/-! ## A321452.P16193461942504718542

`A035444(A008586(n))-A321451(n)`
-/

namespace A321452.P16193461942504718542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A008586 n).toNat - A321451 n

end

end A321452.P16193461942504718542

/-!
# A321453: Numbers that cannot be factored into two or more factors all having the same sum of prime indices.

The programs for A321453, there is no canonical definition to state claims against.
-/

/-! ## A321453.P14067743719225613014

`eq[1, A318434(n+1)]+1`
-/

namespace A321453.P14067743719225613014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318434 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A321453.P14067743719225613014

/-! ## A321453.P8779246411829115222

`eq[1, A321455(n+1)]+1`
-/

namespace A321453.P8779246411829115222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A321453.P8779246411829115222

/-! ## A321453.P17331048918393449508

`lt[A371733(n+1), 2]+1`
-/

namespace A321453.P17331048918393449508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371733 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A321453.P17331048918393449508

/-! ## A321453.P12533186579815501145

`record[n-a(A321455(n))]` with `a(0)=1, a(1)=0`
-/

namespace A321453.P12533186579815501145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (n : ℤ) - f1 (A321455 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321453.P12533186579815501145

/-! ## A321453.P11685431708931611084

`comp[A321454(n+1)-1]+1`
-/

namespace A321453.P11685431708931611084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321454 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A321453.P11685431708931611084

/-! ## A321453.P7213001375436524284

`record[A000027(n+1)/A318434(n+1)]`
-/

namespace A321453.P7213001375436524284
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A318434 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321453.P7213001375436524284

/-! ## A321453.P16162153148601358126

`record[A000027(n+1)/A321455(n+1)]`
-/

namespace A321453.P16162153148601358126
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A321455 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321453.P16162153148601358126

/-! ## A321453.P9655698130307839153

`record[1-A001489(n)/A321455(n+1)]`
-/

namespace A321453.P9655698130307839153
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (A001489 n : ℚ) / (A321455 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321453.P9655698130307839153

/-! ## A321453.P16566764292007670538

`lt[A321455(n+1), root(3, A000040(n+1))]+1`
-/

namespace A321453.P16566764292007670538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321455 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 : ℝ) ^ (1 / (A000040 (n + 1) : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1

end

end A321453.P16566764292007670538

/-! ## A321453.P6503360355293161395

`A000720(p?[A000040(n+1)*A321455(n+1)])`
-/

namespace A321453.P6503360355293161395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A321455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A321453.P6503360355293161395

/-!
# A321454: Numbers that can be factored into two or more factors all having the same sum of prime indices.

The programs for A321454, there is no canonical definition to state claims against.
-/

/-! ## A321454.P13519339297512354165

`lt[1, A321455(n+1)]+1`
-/

namespace A321454.P13519339297512354165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A321454.P13519339297512354165

/-! ## A321454.P12806141235273313956

`lt[1, A371733(n+1)]+1`
-/

namespace A321454.P12806141235273313956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371733 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A321454.P12806141235273313956

/-! ## A321454.P2833678296450477948

`lt[n/a(A321455(n)), n]` with `a(0)=1, a(1)=1`
-/

namespace A321454.P2833678296450477948
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n : ℚ) / f1 (A321455 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A321454.P2833678296450477948

/-! ## A321454.P5142410858423915967

`lt[1, A321455(A028310(n))]`
-/

namespace A321454.P5142410858423915967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321455 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A321454.P5142410858423915967

/-! ## A321454.P6472573346705820603

`A020725(lt[1, A321455(n+1)])`
-/

namespace A321454.P6472573346705820603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A321454.P6472573346705820603

/-!
# A321455: Number of ways to factor n into factors > 1 all having the same sum of prime indices.

The programs for A321455, there is no canonical definition to state claims against.
-/

/-! ## A321455.P10234763990480086420

`A318434(n+1)+char[35]`
-/

namespace A321455.P10234763990480086420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318434 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A321455.P10234763990480086420

/-! ## A321455.P8923388840857685922

`or(A023531(n), A318434(n+1))`
-/

namespace A321455.P8923388840857685922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023531 n) (A318434 (n + 1))

end

end A321455.P8923388840857685922

/-! ## A321455.P11446334330637279419

`or(A023533(n), A318434(n+1))`
-/

namespace A321455.P11446334330637279419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023533 n) (A318434 (n + 1))

end

end A321455.P11446334330637279419

/-! ## A321455.P2615391790966271575

`or(A025455(n), A318434(n+1))`
-/

namespace A321455.P2615391790966271575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025455 n) (A318434 (n + 1))

end

end A321455.P2615391790966271575

/-! ## A321455.P8338936341890649492

`or(A025465(n), A318434(n+1))`
-/

namespace A321455.P8338936341890649492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025465 n) (A318434 (n + 1))

end

end A321455.P8338936341890649492

/-! ## A321455.P8908370405247978595

`or(A025468(n), A318434(n+1))`
-/

namespace A321455.P8908370405247978595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025468 n) (A318434 (n + 1))

end

end A321455.P8908370405247978595

/-! ## A321455.P12330154961372895256

`or(abs(A016346(n)), A318434(n+1))`
-/

namespace A321455.P12330154961372895256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor |A016346 n| (A318434 (n + 1))

end

end A321455.P12330154961372895256

/-! ## A321455.P10157053009940466433

`or(A010054(n²), A318434(n+1))`
-/

namespace A321455.P10157053009940466433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (n ^ 2)) (A318434 (n + 1))

end

end A321455.P10157053009940466433

/-! ## A321455.P15649652297682023943

`or(∑[A103452(n)], A318434(n+1))`
-/

namespace A321455.P15649652297682023943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A318434 (n + 1))

end

end A321455.P15649652297682023943

/-! ## A321455.P14371191405850956519

`or(Δ[A003056(n)], A318434(n+1))`
-/

namespace A321455.P14371191405850956519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A318434 (n + 1))

end

end A321455.P14371191405850956519

/-!
# A321457: Expansion of Product_{1 <= i <= j <= k} (1 + x^(i^2 + j^2 + k^2)).

The programs for A321457, there is no canonical definition to state claims against.
-/

/-! ## A321457.P2098370325850410958

`A341793(lcm(n, A333782(n+1)))`
-/

namespace A321457.P2098370325850410958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341793 (Int.lcm (n : ℤ) (A333782 (n + 1)) + 10)

end

end A321457.P2098370325850410958

/-! ## A321457.P579628928182120187

`A000188(A000204(n+1))*A025855(n)`
-/

namespace A321457.P579628928182120187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A000204 (n + 1)).toNat * A025855 n

end

end A321457.P579628928182120187

/-! ## A321457.P9312179094020623659

`A000188(A080023(n+1))*A025855(n)`
-/

namespace A321457.P9312179094020623659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A080023 (n + 1)).toNat * A025855 n

end

end A321457.P9312179094020623659

/-! ## A321457.P9763901185466325326

`A316716(A025855(n)*A063460(n+1))`
-/

namespace A321457.P9763901185466325326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316716 (A025855 n * A063460 (n + 1)).toNat

end

end A321457.P9763901185466325326

/-! ## A321457.P11425704150147643655

`A316716(lcm(A025855(n), A029205(3*n+4)))`
-/

namespace A321457.P11425704150147643655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316716 (Int.lcm (A025855 n) (A029205 (3 * n + 4)))

end

end A321457.P11425704150147643655

/-!
# A321458: Expansion of Product_{1 <= i <= j <= k} (1 - x^(i^2 + j^2 + k^2)).

The programs for A321458, there is no canonical definition to state claims against.
-/

/-! ## A321458.P18324092948358824515

`A161519(lt[3, A161492(3*(n+1))])`
-/

namespace A321458.P18324092948358824515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161492 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A321458.P18324092948358824515

/-! ## A321458.P16680279946839357856

`A277582(A029579(n)*A055999(n))`
-/

namespace A321458.P16680279946839357856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277582 (A029579 n * A055999 n).toNat

end

end A321458.P16680279946839357856

/-! ## A321458.P11727200448573872271

`A277582(A055999(n)*A093178(n))`
-/

namespace A321458.P11727200448573872271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277582 (A055999 n * A093178 n).toNat

end

end A321458.P11727200448573872271

/-! ## A321458.P16940699441911341080

`A030199(A103881(n+1)*A328667(n+1))`
-/

namespace A321458.P16940699441911341080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030199 (A103881 (n + 1) * A328667 (n + 1)).toNat

end

end A321458.P16940699441911341080

/-!
# A321459: Expansion of Product_{1 <= i <= j <= k} 1/(1 - x^(i^2 + j^2 + k^2)).

The programs for A321459, there is no canonical definition to state claims against.
-/

/-! ## A321459.P7839011478838673397

`A029302(n)+A025466(A294627(n))`
-/

namespace A321459.P7839011478838673397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029302 n + A025466 (A294627 n).toNat

end

end A321459.P7839011478838673397

/-! ## A321459.P8221322017489753596

`A265757(A056469(n))+A029302(n)`
-/

namespace A321459.P8221322017489753596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265757 (A056469 n).toNat + A029302 n

end

end A321459.P8221322017489753596

/-! ## A321459.P14928316435855208166

`and(A029253(n), A127321(A011782(n)))`
-/

namespace A321459.P14928316435855208166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029253 n) (A127321 (A011782 n).toNat)

end

end A321459.P14928316435855208166

/-! ## A321459.P11959299807163118032

`A001222(C(A200327(n+2), A029302(n)))`
-/

namespace A321459.P11959299807163118032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose (A200327 (n + 2)).toNat (A029302 n).toNat)

end

end A321459.P11959299807163118032

/-! ## A321459.P3111756528415151659

`A064873(A098320(n))+A035377(n)`
-/

namespace A321459.P3111756528415151659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064873 (A098320 n).toNat + A035377 n

end

end A321459.P3111756528415151659

/-!
# A321460: Expansion of Product_{k>0} (1 - x^k)^A001055(k).

The programs for A321460, there is no canonical definition to state claims against.
-/

/-! ## A321460.P11580134986737237835

`A319517(n)-A185284(A325132(n))`
-/

namespace A321460.P11580134986737237835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319517 n - A185284 (A325132 n).toNat

end

end A321460.P11580134986737237835

/-! ## A321460.P15782785638182300029

`A319517(n)+A054361(A338869(n+2))`
-/

namespace A321460.P15782785638182300029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319517 n + A054361 (A338869 (n + 2)).toNat

end

end A321460.P15782785638182300029

/-! ## A321460.P37699773057965197

`A319517(n)+A185284(A027082(n+2))`
-/

namespace A321460.P37699773057965197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319517 n + A185284 (A027082 (n + 2)).toNat

end

end A321460.P37699773057965197

/-! ## A321460.P4391417450870423056

`A319517(n)+A161435(A235862(n+5))`
-/

namespace A321460.P4391417450870423056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319517 n + A161435 (A235862 (n + 5)).toNat

end

end A321460.P4391417450870423056

/-! ## A321460.P7900209685711160441

`A319517(n)+A010051(A014945(3*n+5))`
-/

namespace A321460.P7900209685711160441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319517 n + A010051 (A014945 (3 * n + 5)).toNat

end

end A321460.P7900209685711160441

/-!
# A321461: a(n) = -a(n-1) + 2*a(n-2) + a(n-3), a(0) = -1, a(1) = -2, a(2) = -4.

The programs for A321461, the canonical program `A321461.P14604770523776349040` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321461 has offset 0).

The definition of A321461 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-a(n-1)+2*a(n-2)+a(n-3)` (program `A321461.P14604770523776349040`, by `A321461.P14604770523776349040.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A321461.P14604770523776349040

`-a(n-1)+2*a(n-2)+a(n-3)` with `a(0)=-1, a(1)=-2, a(2)=-4`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A321461

/-- `-a(n-1)+2*a(n-2)+a(n-3)` -/
def P14604770523776349040.Spec : Prop :=
  ∀ n, P14604770523776349040.a n = A321461 n

theorem P14604770523776349040.correct : P14604770523776349040.Spec := by
  intro n
  simp only [A321461]

end A321461

/-! ## A321461.P12846829124509088942

`ogf((1+3x+4x^2)/(-1-x+2x^2+x^3))`
-/

namespace A321461.P12846829124509088942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, -3, -4] [1, 1, -2, -1] n

end

end A321461.P12846829124509088942

namespace A321461

/-- `ogf((1+3x+4x^2)/(-1-x+2x^2+x^3))` -/
def P12846829124509088942.Spec : Prop :=
  ∀ n, P12846829124509088942.a n = A321461 n

end A321461

/-! ## A321461.P15176884998025768239

`∑[A321175(A004273(n)-n)]`
-/

namespace A321461.P15176884998025768239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321175 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321461.P15176884998025768239

namespace A321461

/-- `∑[A321175(A004273(n)-n)]` -/
def P15176884998025768239.Spec : Prop :=
  ∀ n, P15176884998025768239.a n = A321461 n

end A321461

/-! ## A321461.P559195464105947230

`∑[A321175(n-A057427(n))]`
-/

namespace A321461.P559195464105947230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321175 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321461.P559195464105947230

namespace A321461

/-- `∑[A321175(n-A057427(n))]` -/
def P559195464105947230.Spec : Prop :=
  ∀ n, P559195464105947230.a n = A321461 n

end A321461

/-! ## A321461.P189129816417463235

`∑[A321175(A004524(A004273(n)))]`
-/

namespace A321461.P189129816417463235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321175 (A004524 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321461.P189129816417463235

namespace A321461

/-- `∑[A321175(A004524(A004273(n)))]` -/
def P189129816417463235.Spec : Prop :=
  ∀ n, P189129816417463235.a n = A321461 n

end A321461

/-! ## A321461.P8919077989077042661

`∑[A321175(A004524(A004280(n+1)))]`
-/

namespace A321461.P8919077989077042661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321175 (A004524 (A004280 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321461.P8919077989077042661

namespace A321461

/-- `∑[A321175(A004524(A004280(n+1)))]` -/
def P8919077989077042661.Spec : Prop :=
  ∀ n, P8919077989077042661.a n = A321461 n

end A321461

/-! ## A321461.P2945035780626004140

`∑[A321175(n)]-(A321175(n)+1)`
-/

namespace A321461.P2945035780626004140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A321175 n + 1)

end

end A321461.P2945035780626004140

namespace A321461

/-- `∑[A321175(n)]-(A321175(n)+1)` -/
def P2945035780626004140.Spec : Prop :=
  ∀ n, P2945035780626004140.a n = A321461 n

end A321461

/-! ## A321461.P18206213356329750049

`A321175(n+1)-A094648(n+1)`
-/

namespace A321461.P18206213356329750049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321175 (n + 1) - A094648 (n + 1)

end

end A321461.P18206213356329750049

namespace A321461

/-- `A321175(n+1)-A094648(n+1)` -/
def P18206213356329750049.Spec : Prop :=
  ∀ n, P18206213356329750049.a n = A321461 n

end A321461

/-!
# A321464: Reverse nonzero digits in ternary expansion of n and convert back to decimal.

The programs for A321464, there is no canonical definition to state claims against.
-/

/-! ## A321464.P16521496865651407886

`A004488(A357616(n))%A360104(2*n)`
-/

namespace A321464.P16521496865651407886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004488 (A357616 n).toNat) (A360104 (2 * n))

end

end A321464.P16521496865651407886

/-! ## A321464.P8513310131671076855

`A263273(A220400(A185255(n))+n)`
-/

namespace A321464.P8513310131671076855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A220400 (A185255 n).toNat + (n : ℤ)).toNat

end

end A321464.P8513310131671076855

/-! ## A321464.P14649394388514578701

`A263273(n)-A220400(A185255(n))`
-/

namespace A321464.P14649394388514578701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 n - A220400 (A185255 n).toNat

end

end A321464.P14649394388514578701

/-! ## A321464.P4306941816692442054

`A357616(A004488(n)%A173951(n+1))`
-/

namespace A321464.P4306941816692442054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (Int.tmod (A004488 n) (A173951 (n + 1))).toNat

end

end A321464.P4306941816692442054

/-! ## A321464.P1958344114335149955

`A357616(A004488(n))%A141823(n+4)`
-/

namespace A321464.P1958344114335149955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357616 (A004488 n).toNat) (A141823 (n + 4))

end

end A321464.P1958344114335149955

/-!
# A321465: Expansion of (phi(x)^3 / phi(x^3))^2 in powers of x where phi() is a Ramanujan theta function.

The programs for A321465, there is no canonical definition to state claims against.
-/

/-! ## A321465.P17967416204683180587

`(-1)^n*A229616(n)`
-/

namespace A321465.P17967416204683180587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A229616 n

end

end A321465.P17967416204683180587

/-! ## A321465.P16334888092949295745

`A229616(n)/A033999(n)`
-/

namespace A321465.P16334888092949295745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229616 n : ℚ) / (A033999 n : ℚ)

end

end A321465.P16334888092949295745

/-! ## A321465.P14505577508736414498

`A229616(n)/A057077(A057077(n)+n)`
-/

namespace A321465.P14505577508736414498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229616 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A321465.P14505577508736414498

/-! ## A321465.P6412191796836775568

`A229616(n)/A057077(2*n)`
-/

namespace A321465.P6412191796836775568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229616 n : ℚ) / (A057077 (2 * n) : ℚ)

end

end A321465.P6412191796836775568

/-! ## A321465.P13012239356737018521

`A122858(n)*A229616(n)/A143336(n)`
-/

namespace A321465.P13012239356737018521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122858 n * A229616 n : ℚ) / (A143336 n : ℚ)

end

end A321465.P13012239356737018521

/-!
# A321466: Expansion of (phi(x^3)^3 / phi(x))^2 in powers of x where phi() is a Ramanujan theta function.

The programs for A321466, there is no canonical definition to state claims against.
-/

/-! ## A321466.P12290875892717804253

`(-1)^n*A227226(n)`
-/

namespace A321466.P12290875892717804253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A227226 n

end

end A321466.P12290875892717804253

/-! ## A321466.P4233788902008667231

`A227226(n)/(1-A010673(n))`
-/

namespace A321466.P4233788902008667231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227226 n : ℚ) / (1 - A010673 n : ℚ)

end

end A321466.P4233788902008667231

/-! ## A321466.P4864455142231486772

`A227226(n)/A009001(A005843(n))`
-/

namespace A321466.P4864455142231486772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227226 n : ℚ) / (A009001 (A005843 n).toNat : ℚ)

end

end A321466.P4864455142231486772

/-! ## A321466.P10823446244966801636

`A227226(n)/A164677(2*n+1)`
-/

namespace A321466.P10823446244966801636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227226 n : ℚ) / (A164677 (2 * n + 1) : ℚ)

end

end A321466.P10823446244966801636

/-! ## A321466.P13243989398770896203

`A227226(n)/A034947(A151548(n))`
-/

namespace A321466.P13243989398770896203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227226 n : ℚ) / (A034947 (A151548 n).toNat : ℚ)

end

end A321466.P13243989398770896203

/-! ## A321466.P1665248474415789901

`A227226(n)/A197870(A000217(n))`
-/

namespace A321466.P1665248474415789901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227226 n : ℚ) / (A197870 (A000217 n).toNat : ℚ)

end

end A321466.P1665248474415789901

/-! ## A321466.P4996727859902124293

`A227226(n)/A189021(A057602(n+1))`
-/

namespace A321466.P4996727859902124293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227226 n : ℚ) / (A189021 (A057602 (n + 1)).toNat : ℚ)

end

end A321466.P4996727859902124293

/-!
# A321467: Number of factorizations of n! into factors > 1 that can be obtained by taking the block-products of some set partition of {2,3,...,n}.

The programs for A321467, there is no canonical definition to state claims against.
-/

/-! ## A321467.P15098769155104321914

`A065719(A017942(n))+1`
-/

namespace A321467.P15098769155104321914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (A017942 n).toNat + 1

end

end A321467.P15098769155104321914

/-! ## A321467.P7572813039841542473

`A328668(floor(sqrt(A001862(n))))`
-/

namespace A321467.P7572813039841542473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328668 (Int.sqrt (A001862 n)).toNat

end

end A321467.P7572813039841542473

/-! ## A321467.P14445294169933568025

`A118241(A301700(n+1)+1)`
-/

namespace A321467.P14445294169933568025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118241 (A301700 (n + 1) + 1).toNat

end

end A321467.P14445294169933568025

/-! ## A321467.P13603174120335383077

`A243284(A057364(n)+A000112(n))`
-/

namespace A321467.P13603174120335383077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243284 (A057364 n + A000112 n).toNat

end

end A321467.P13603174120335383077

/-!
# A321468: Number of factorizations of n! into factors > 1 that can be obtained by taking the multiset union of a choice of factorizations of each positive integer from 2 to n into factors > 1.

The programs for A321468, there is no canonical definition to state claims against.
-/

/-! ## A321468.P11035586346760668741

`A126870(A339555(n))`
-/

namespace A321468.P11035586346760668741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126870 (A339555 n).toNat

end

end A321468.P11035586346760668741

/-! ## A321468.P6546937413905278518

`A265541(∏[A226378(n)])`
-/

namespace A321468.P6546937413905278518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265541 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A321468.P6546937413905278518

/-! ## A321468.P406641862070967644

`A265541(∏[A001222(round(acot(n)+n))])`
-/

namespace A321468.P406641862070967644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265541 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A321468.P406641862070967644

/-! ## A321468.P7985485913155167210

`∏{e}[A330043(n), A240027(#)]`
-/

namespace A321468.P7985485913155167210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A240027 (Nat.factorization (f1 n).natAbs p)

end

end A321468.P7985485913155167210

/-! ## A321468.P1627475907892133461

`A265529(A265582(n)+A199238(n+1))`
-/

namespace A321468.P1627475907892133461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265529 (A265582 n + A199238 (n + 1)).toNat

end

end A321468.P1627475907892133461

/-!
# A321469: Number of factorizations of n into factors > 1 with different sums of prime indices. Number of multiset partitions of the multiset of prime indices of n with distinct block-sums.

The programs for A321469, there is no canonical definition to state claims against.
-/

/-! ## A321469.P14868562421137112493

`A055642(A319342(n+1)/∑{digits}[n, 10^#]%9)`
-/

namespace A321469.P14868562421137112493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (SequenceMachineLib.roundAway ((A319342 (n + 1) : ℚ) / ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 9 : ℕ) : ℚ))).toNat

end

end A321469.P14868562421137112493

/-! ## A321469.P2007665075288632833

`A055642(A026351(A324193(n+1)))`
-/

namespace A321469.P2007665075288632833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A026351 (A324193 (n + 1)).toNat).toNat

end

end A321469.P2007665075288632833

/-! ## A321469.P5690127782580052272

`A043537(A211776(n+1)+A033665(n))`
-/

namespace A321469.P5690127782580052272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A211776 (n + 1) + A033665 n).toNat

end

end A321469.P5690127782580052272

/-! ## A321469.P1525956890609609022

`A043539(A319342(n+1))`
-/

namespace A321469.P1525956890609609022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043539 (A319342 (n + 1)).toNat

end

end A321469.P1525956890609609022

/-! ## A321469.P13683153561362826210

`A045778(n+1)-A173857(A220461(n+2))`
-/

namespace A321469.P13683153561362826210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (n + 1) - A173857 (A220461 (n + 2)).toNat

end

end A321469.P13683153561362826210

/-!
# A321470: Number of integer partitions of the n-th triangular number 1 + 2 + ... + n that can be obtained by choosing a partition of each integer from 1 to n and combining.

The programs for A321470, there is no canonical definition to state claims against.
-/

/-! ## A321470.P1971731062156454180

`A133832(A279556(n))-1`
-/

namespace A321470.P1971731062156454180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133832 (A279556 n).toNat - 1

end

end A321470.P1971731062156454180

/-! ## A321470.P14101125116541940612

`A090620(13*A001681(n))`
-/

namespace A321470.P14101125116541940612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090620 (13 * A001681 n).toNat

end

end A321470.P14101125116541940612

/-! ## A321470.P4367409714526916284

`A363201(A099145(n+1)+1)`
-/

namespace A321470.P4367409714526916284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363201 (A099145 (n + 1) + 1).toNat

end

end A321470.P4367409714526916284

/-!
# A321473: Nonnegative numbers whose nonzero digits in ternary expansion are palindromic.

The programs for A321473, there is no canonical definition to state claims against.
-/

/-! ## A321473.P15909934310632095289

`eq[n, A321464(n)]`
-/

namespace A321473.P15909934310632095289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321464 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A321473.P15909934310632095289

/-! ## A321473.P16985701732885273736

`record[A321464(n)%A098181(n)]`
-/

namespace A321473.P16985701732885273736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321464 n) (A098181 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321473.P16985701732885273736

/-! ## A321473.P11463229789386286744

`record[gcd(A005843(n), A321464(n))]`
-/

namespace A321473.P11463229789386286744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005843 n) (A321464 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321473.P11463229789386286744

/-! ## A321473.P6788175289011059844

`record[n/(A000027(n+1)-A321464(n))]`
-/

namespace A321473.P6788175289011059844
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A000027 (n + 1) - A321464 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321473.P6788175289011059844

/-! ## A321473.P12754079410575235432

`A321464(record[n/(1-A321464(n)+n)])`
-/

namespace A321473.P12754079410575235432
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (1 - A321464 n + (n : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321464 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A321473.P12754079410575235432

/-!
# A321474: Reverse the nonzero digits of n.

The programs for A321474, there is no canonical definition to state claims against.
-/

/-! ## A321474.P6537661830725706340

`A336956(n)%A000998(n)`
-/

namespace A321474.P6537661830725706340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336956 n) (A000998 n)

end

end A321474.P6537661830725706340

/-! ## A321474.P16360793500399142975

`A336956(n)+A000007(A096751(n+1))`
-/

namespace A321474.P16360793500399142975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336956 n + A000007 (A096751 (n + 1)).toNat

end

end A321474.P16360793500399142975

/-! ## A321474.P1614774942244148760

`lcm(A134323(A035284(n+1)), A336956(n))`
-/

namespace A321474.P1614774942244148760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A134323 (A035284 (n + 1)).toNat) (A336956 n)

end

end A321474.P1614774942244148760

/-! ## A321474.P11120999918906079035

`A336956(n)+A000007(A249818(3*n+5))`
-/

namespace A321474.P11120999918906079035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336956 n + A000007 (A249818 (3 * n + 5)).toNat

end

end A321474.P11120999918906079035

/-! ## A321474.P16536165665205004770

`A336956(C(A085398(n+4), 2*(n+2))+n)`
-/

namespace A321474.P16536165665205004770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336956 (Nat.choose (A085398 (n + 4)).toNat (2 * (n + 2)) + n)

end

end A321474.P16536165665205004770

/-! ## A321474.P7602486073950555941

`A336956(n)+A010051(A033587(n+1))`
-/

namespace A321474.P7602486073950555941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336956 n + A010051 (A033587 (n + 1)).toNat

end

end A321474.P7602486073950555941

/-! ## A321474.P9858965069561915523

`A336956(n)+A083916(A038542(n+1))`
-/

namespace A321474.P9858965069561915523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336956 n + A083916 (A038542 (n + 1)).toNat

end

end A321474.P9858965069561915523

/-! ## A321474.P3078750183463960768

`A336956(C(A336956(n), A258026(3*n+5))+n)`
-/

namespace A321474.P3078750183463960768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336956 (Nat.choose (A336956 n).toNat (A258026 (3 * n + 5)).toNat + n)

end

end A321474.P3078750183463960768

/-! ## A321474.P1210085797650040840

`and(A086827(n+1), A336956(n))`
-/

namespace A321474.P1210085797650040840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086827 (n + 1)) (A336956 n)

end

end A321474.P1210085797650040840

/-! ## A321474.P16515710966563953956

`A336956(n)+A000007(A023235(3*n+2))`
-/

namespace A321474.P16515710966563953956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336956 n + A000007 (A023235 (3 * n + 2)).toNat

end

end A321474.P16515710966563953956

/-! ## A321474.P15928757310736383965

`A336956(n)+A151878(A113061(2*(n+2)))`
-/

namespace A321474.P15928757310736383965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336956 n + A151878 (A113061 (2 * (n + 2))).toNat

end

end A321474.P15928757310736383965

/-! ## A321474.P5551175830267361347

`A166166(A166166(A336956(n)))`
-/

namespace A321474.P5551175830267361347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166166 (A166166 (A336956 n).toNat).toNat

end

end A321474.P5551175830267361347

/-! ## A321474.P12426119402549641695

`A352152(n)%A054242(A220269(3*n+5))`
-/

namespace A321474.P12426119402549641695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352152 n) (A054242 (A220269 (3 * n + 5)).toNat)

end

end A321474.P12426119402549641695

/-! ## A321474.P4638782207451164427

`A352152(n)%A008706(n²)`
-/

namespace A321474.P4638782207451164427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352152 n) (A008706 (n ^ 2))

end

end A321474.P4638782207451164427

/-! ## A321474.P2745650562354878223

`A032742(A178668(n+1))*A333659(n)`
-/

namespace A321474.P2745650562354878223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A178668 (n + 1)).toNat * A333659 n

end

end A321474.P2745650562354878223

/-!
# A321476: Regular triangle read by rows: T(n,k) is the rank of {A172236(k,m)} modulo n, 0 <= k <= n - 1.

The programs for A321476, there is no canonical definition to state claims against.
-/

/-! ## A321476.P11649169943673698845

`A321477(n+1)/A323017(n+1)`
-/

namespace A321476.P11649169943673698845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321477 (n + 1) : ℚ) / (A323017 (n + 1) : ℚ)

end

end A321476.P11649169943673698845

/-! ## A321476.P9725845298725953018

`A309981(A007528(n+1)-A351976(n))`
-/

namespace A321476.P9725845298725953018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309981 (A007528 (n + 1) - A351976 n).toNat

end

end A321476.P9725845298725953018

/-! ## A321476.P14561894521374092783

`A341737(A341739(n+1)-A155161(n))`
-/

namespace A321476.P14561894521374092783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341737 (A341739 (n + 1) - A155161 n).toNat

end

end A321476.P14561894521374092783

/-! ## A321476.P3874114709501896807

`A341737(A341739(n+1)-A285229(n))`
-/

namespace A321476.P3874114709501896807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341737 (A341739 (n + 1) - A285229 n).toNat

end

end A321476.P3874114709501896807

/-! ## A321476.P10350704987070500504

`A341737(A341739(n+1)-A331956(n))`
-/

namespace A321476.P10350704987070500504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341737 (A341739 (n + 1) - A331956 n).toNat

end

end A321476.P10350704987070500504

/-!
# A321477: Regular triangle read by rows: T(n,k) is the period of {A172236(k,m)} modulo n, 0 <= k <= n - 1.

The programs for A321477, there is no canonical definition to state claims against.
-/

/-! ## A321477.P15174059796393294291

`A321476(n+1)*A323017(n+1)`
-/

namespace A321477.P15174059796393294291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321476 (n + 1) * A323017 (n + 1)

end

end A321477.P15174059796393294291

/-! ## A321477.P15392192937175689281

`A323017(n+1)*A341737(A341739(n+1)-A155161(n))`
-/

namespace A321477.P15392192937175689281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323017 (n + 1) * A341737 (A341739 (n + 1) - A155161 n).toNat

end

end A321477.P15392192937175689281

/-! ## A321477.P16696651454650666674

`A323017(n+1)*A341737(A341739(n+1)-A285229(n))`
-/

namespace A321477.P16696651454650666674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323017 (n + 1) * A341737 (A341739 (n + 1) - A285229 n).toNat

end

end A321477.P16696651454650666674

/-! ## A321477.P13584637757266167509

`A323017(n+1)*A341737(A341739(n+1)-A331956(n))`
-/

namespace A321477.P13584637757266167509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323017 (n + 1) * A341737 (A341739 (n + 1) - A331956 n).toNat

end

end A321477.P13584637757266167509

/-! ## A321477.P14650184806735125687

`A323017(n+1)*A341737(A341739(n+1)-A341753(n+3))`
-/

namespace A321477.P14650184806735125687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323017 (n + 1) * A341737 (A341739 (n + 1) - A341753 (n + 3)).toNat

end

end A321477.P14650184806735125687

/-!
# A321478: Regular triangle read by rows: T(n,k) is the rank of {A316269(k,m)} modulo n, 0 <= k <= n - 1.

The programs for A321478, there is no canonical definition to state claims against.
-/

/-! ## A321478.P14129135724199245953

`A321479(n+1)/A323018(n+1)`
-/

namespace A321478.P14129135724199245953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321479 (n + 1) : ℚ) / (A323018 (n + 1) : ℚ)

end

end A321478.P14129135724199245953

/-! ## A321478.P14617665608580567422

`A321479(n+1)/A040001(A182222(n)^A324341(n))`
-/

namespace A321478.P14617665608580567422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321479 (n + 1) : ℚ) / (A040001 (SequenceMachineLib.roundAway ((A182222 n : ℚ) ^ (A324341 n : ℤ))).toNat : ℚ)

end

end A321478.P14617665608580567422

/-! ## A321478.P15724746568625720743

`A321479(n+1)/A040001(A182222(n)^3)`
-/

namespace A321478.P15724746568625720743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321479 (n + 1) : ℚ) / (A040001 (A182222 n ^ 3).toNat : ℚ)

end

end A321478.P15724746568625720743

/-! ## A321478.P14958453310431598793

`A134451(A096824(n))+A096815(n)`
-/

namespace A321478.P14958453310431598793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A096824 n).toNat + A096815 n

end

end A321478.P14958453310431598793

/-! ## A321478.P17826133839169516844

`∑[A037012(A033273(2^(-1%(n+1)+n)))]`
-/

namespace A321478.P17826133839169516844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 (A033273 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.tmod (-1) (n + 1 : ℤ) + (n : ℤ) : ℤ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321478.P17826133839169516844

/-!
# A321479: Regular triangle read by rows: T(n,k) is the period of {A316269(k,m)} modulo n, 0 <= k <= n - 1.

The programs for A321479, there is no canonical definition to state claims against.
-/

/-! ## A321479.P1719344211422463767

`A321478(n+1)*A323018(n+1)`
-/

namespace A321479.P1719344211422463767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321478 (n + 1) * A323018 (n + 1)

end

end A321479.P1719344211422463767

/-! ## A321479.P10526213202466705480

`A040001(A182222(n)^A324341(n))*A321478(n+1)`
-/

namespace A321479.P10526213202466705480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (SequenceMachineLib.roundAway ((A182222 n : ℚ) ^ (A324341 n : ℤ))).toNat * A321478 (n + 1)

end

end A321479.P10526213202466705480

/-! ## A321479.P434535641903204814

`A040001(A182222(n)^3)*A321478(n+1)`
-/

namespace A321479.P434535641903204814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A182222 n ^ 3).toNat * A321478 (n + 1)

end

end A321479.P434535641903204814

/-! ## A321479.P11041917976007085424

`(A134451(A096824(n))+A096815(n))*A323018(n+1)`
-/

namespace A321479.P11041917976007085424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A134451 (A096824 n).toNat + A096815 n) * A323018 (n + 1)

end

end A321479.P11041917976007085424

/-!
# A321481: Expansion of Sum_{n>=1} q^(n*(n-1)) / (1-q)^n.

The programs for A321481, there is no canonical definition to state claims against.
-/

/-! ## A321481.P9203792645021283062

`A098132(n)+a(n-1)` with `a(0)=1`
-/

namespace A321481.P9203792645021283062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098132 n + a (n - 1)

end

end A321481.P9203792645021283062

/-! ## A321481.P4606791376439568782

`∑[A098132(abs(1-n)+1)]`
-/

namespace A321481.P4606791376439568782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098132 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321481.P4606791376439568782

/-! ## A321481.P17651500138363435693

`∑[A098132(floor(sqrt(n²+1)))]+1`
-/

namespace A321481.P17651500138363435693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098132 (Nat.sqrt (n ^ 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A321481.P17651500138363435693

/-! ## A321481.P4052470346537680982

`∑[A098132(A028310(n))+1]-n`
-/

namespace A321481.P4052470346537680982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098132 (A028310 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A321481.P4052470346537680982

/-! ## A321481.P9694349465183658673

`∑[A098132(n+1)]+1-A098132(n+1)`
-/

namespace A321481.P9694349465183658673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A098132 (n + 1)

end

end A321481.P9694349465183658673

/-!
# A321482: a(n) = log_2(A305677(n)).

The programs for A321482, there is no canonical definition to state claims against.
-/

/-! ## A321482.P9904934912364198749

`log2(A305677(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A321482.P9904934912364198749
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A305677 (n + 1) : ℝ)

end

end A321482.P9904934912364198749

/-! ## A321482.P4133967883536704141

`val(A305677(n+1), ratio[A003945(n)])`
-/

namespace A321482.P4133967883536704141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A305677 (n + 1)).toNat (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A321482.P4133967883536704141

/-! ## A321482.P14146066497539915318

`val(A305677(n+1), A001222(A001748(n+1)))`
-/

namespace A321482.P14146066497539915318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A305677 (n + 1)).toNat (A001222 (A001748 (n + 1)).toNat).toNat

end

end A321482.P14146066497539915318

/-! ## A321482.P959040192432571181

`val(A305677(n+1), A001222(A001750(n+1)))`
-/

namespace A321482.P959040192432571181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A305677 (n + 1)).toNat (A001222 (A001750 (n + 1)).toNat).toNat

end

end A321482.P959040192432571181

/-! ## A321482.P12499557614438110176

`val(A305677(n+1), A000005(A048848(n+1)))`
-/

namespace A321482.P12499557614438110176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A305677 (n + 1)).toNat (A000005 (A048848 (n + 1)).toNat).toNat

end

end A321482.P12499557614438110176

/-! ## A321482.P17479769780899830784

`val(A305677(n+1), A000005(A065995(n+1)))`
-/

namespace A321482.P17479769780899830784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A305677 (n + 1)).toNat (A000005 (A065995 (n + 1)).toNat).toNat

end

end A321482.P17479769780899830784

/-! ## A321482.P2619564323694264463

`val(A305677(n+1), A000005(A258578(n+1)))`
-/

namespace A321482.P2619564323694264463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A305677 (n + 1)).toNat (A000005 (A258578 (n + 1)).toNat).toNat

end

end A321482.P2619564323694264463

/-! ## A321482.P6636321604899327390

`val(A305677(n+1), A000005(A090933(n+1)))`
-/

namespace A321482.P6636321604899327390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A305677 (n + 1)).toNat (A000005 (A090933 (n + 1)).toNat).toNat

end

end A321482.P6636321604899327390

/-!
# A321483: a(n) = 7*2^n + (-1)^n.

The programs for A321483, the canonical program `A321483.P3691815999031952642` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321483 has offset 0).

The definition of A321483 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*2^n+(-1)^n` (program `A321483.P3691815999031952642`, by `A321483.P3691815999031952642.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A321483.P3691815999031952642

`7*2^n+(-1)^n`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A321483

/-- `7*2^n+(-1)^n` -/
def P3691815999031952642.Spec : Prop :=
  ∀ n, P3691815999031952642.a n = A321483 n

theorem P3691815999031952642.correct : P3691815999031952642.Spec := by
  intro n
  simp only [A321483]

end A321483

/-! ## A321483.P2574942612616019871

`ogf((8+5x)/(1-x-2x^2))`
-/

namespace A321483.P2574942612616019871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 5] [1, -1, -2] n

end

end A321483.P2574942612616019871

namespace A321483

/-- `ogf((8+5x)/(1-x-2x^2))` -/
def P2574942612616019871.Spec : Prop :=
  ∀ n, P2574942612616019871.a n = A321483 n

end A321483

/-! ## A321483.P16734113042310933105

`record[A010737(xor(1, n))+or(2, n)-n]`
-/

namespace A321483.P16734113042310933105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010737 (Nat.xor 1 n) + ((Nat.lor 2 n : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321483.P16734113042310933105

namespace A321483

/-- `record[A010737(xor(1, n))+or(2, n)-n]` -/
def P16734113042310933105.Spec : Prop :=
  ∀ n, P16734113042310933105.a n = A321483 n

end A321483

/-! ## A321483.P14947769690155712426

`abs(Δ[or(1, n+1)]+A005009(n)-1)`
-/

namespace A321483.P14947769690155712426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A005009 n - 1)|

end

end A321483.P14947769690155712426

namespace A321483

/-- `abs(Δ[or(1, n+1)]+A005009(n)-1)` -/
def P14947769690155712426.Spec : Prop :=
  ∀ n, P14947769690155712426.a n = A321483 n

end A321483

/-! ## A321483.P5236859264812599146

`abs(A033999(n)+A005009(n))`
-/

namespace A321483.P5236859264812599146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n + A005009 n|

end

end A321483.P5236859264812599146

namespace A321483

/-- `abs(A033999(n)+A005009(n))` -/
def P5236859264812599146.Spec : Prop :=
  ∀ n, P5236859264812599146.a n = A321483 n

end A321483

/-! ## A321483.P10829401018745062630

`abs(A165326(n+1)+A005009(n))`
-/

namespace A321483.P10829401018745062630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A165326 (n + 1) + A005009 n|

end

end A321483.P10829401018745062630

namespace A321483

/-- `abs(A165326(n+1)+A005009(n))` -/
def P10829401018745062630.Spec : Prop :=
  ∀ n, P10829401018745062630.a n = A321483 n

end A321483

/-! ## A321483.P8160855245002119424

`abs(A009531(2*n+1)+A005009(n))`
-/

namespace A321483.P8160855245002119424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009531 (2 * n + 1) + A005009 n|

end

end A321483.P8160855245002119424

namespace A321483

/-- `abs(A009531(2*n+1)+A005009(n))` -/
def P8160855245002119424.Spec : Prop :=
  ∀ n, P8160855245002119424.a n = A321483 n

end A321483

/-! ## A321483.P10990698921416679276

`Δ[2*a(n-1)-(-2)^and(1, n)]` with `a(0)=6`
-/

namespace A321483.P10990698921416679276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  2 * f1 (n - 1) - (-2) ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A321483.P10990698921416679276

namespace A321483

/-- `Δ[2*a(n-1)-(-2)^and(1, n)]` -/
def P10990698921416679276.Spec : Prop :=
  ∀ n, P10990698921416679276.a n = A321483 n

end A321483

/-! ## A321483.P12428866419077649446

`Δ[A322417(n)]`
-/

namespace A321483.P12428866419077649446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322417 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A321483.P12428866419077649446

namespace A321483

/-- `Δ[A322417(n)]` -/
def P12428866419077649446.Spec : Prop :=
  ∀ n, P12428866419077649446.a n = A321483 n

end A321483

/-! ## A321483.P6398131757723697936

`Δ[or(n, A176448(n))]`
-/

namespace A321483.P6398131757723697936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A176448 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A321483.P6398131757723697936

namespace A321483

/-- `Δ[or(n, A176448(n))]` -/
def P6398131757723697936.Spec : Prop :=
  ∀ n, P6398131757723697936.a n = A321483 n

end A321483

/-! ## A321483.P2393773353708550736

`Δ[A048489(n)+n%2]`
-/

namespace A321483.P2393773353708550736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048489 n + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A321483.P2393773353708550736

namespace A321483

/-- `Δ[A048489(n)+n%2]` -/
def P2393773353708550736.Spec : Prop :=
  ∀ n, P2393773353708550736.a n = A321483 n

end A321483

/-! ## A321483.P679161235844013366

`Δ[or(n, A026622(n+2))]`
-/

namespace A321483.P679161235844013366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A026622 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A321483.P679161235844013366

namespace A321483

/-- `Δ[or(n, A026622(n+2))]` -/
def P679161235844013366.Spec : Prop :=
  ∀ n, P679161235844013366.a n = A321483 n

end A321483

/-! ## A321483.P11630582761546661262

`Δ[xor(2*a(n-1), A040001(n))]` with `a(0)=7`
-/

namespace A321483.P11630582761546661262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  Int.xor (2 * f1 (n - 1)) (A040001 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A321483.P11630582761546661262

namespace A321483

/-- `Δ[xor(2*a(n-1), A040001(n))]` -/
def P11630582761546661262.Spec : Prop :=
  ∀ n, P11630582761546661262.a n = A321483 n

end A321483

/-! ## A321483.P2099912218905931476

`∪[A199207(n), A206372(n)]`
-/

namespace A321483.P2099912218905931476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199207 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206372 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A321483.P2099912218905931476

namespace A321483

/-- `∪[A199207(n), A206372(n)]` -/
def P2099912218905931476.Spec : Prop :=
  ∀ n, (P2099912218905931476.a n : ℤ) = A321483 n

end A321483

/-! ## A321483.P6403008322817589597

`Δ[A005009(n)+A000034(n)]`
-/

namespace A321483.P6403008322817589597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005009 n + A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A321483.P6403008322817589597

namespace A321483

/-- `Δ[A005009(n)+A000034(n)]` -/
def P6403008322817589597.Spec : Prop :=
  ∀ n, P6403008322817589597.a n = A321483 n

end A321483

/-! ## A321483.P1430109830075948939

`Δ[A005009(n)+A000035(n)]`
-/

namespace A321483.P1430109830075948939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005009 n + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A321483.P1430109830075948939

namespace A321483

/-- `Δ[A005009(n)+A000035(n)]` -/
def P1430109830075948939.Spec : Prop :=
  ∀ n, P1430109830075948939.a n = A321483 n

end A321483

/-! ## A321483.P8942386538804817947

`∪[A198694(n)+2, A206372(n)]`
-/

namespace A321483.P8942386538804817947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198694 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206372 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A321483.P8942386538804817947

namespace A321483

/-- `∪[A198694(n)+2, A206372(n)]` -/
def P8942386538804817947.Spec : Prop :=
  ∀ n, (P8942386538804817947.a n : ℤ) = A321483 n

end A321483

/-! ## A321483.P7171369454095506756

`∪[A086224(2*n+1), A086224(2*n)+2]`
-/

namespace A321483.P7171369454095506756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086224 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086224 (2 * n) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A321483.P7171369454095506756

namespace A321483

/-- `∪[A086224(2*n+1), A086224(2*n)+2]` -/
def P7171369454095506756.Spec : Prop :=
  ∀ n, (P7171369454095506756.a n : ℤ) = A321483 n

end A321483

/-!
# A321484: Number of non-isomorphic self-dual connected multiset partitions of weight n.

The programs for A321484, there is no canonical definition to state claims against.
-/

/-! ## A321484.P16712613021935993762

`A215067(n)-A210713(n)`
-/

namespace A321484.P16712613021935993762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215067 n - A210713 n

end

end A321484.P16712613021935993762

/-! ## A321484.P6486511403020922440

`A215067(n)-A308908(n)`
-/

namespace A321484.P6486511403020922440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215067 n - A308908 n

end

end A321484.P6486511403020922440

/-! ## A321484.P8980497685660525904

`A178852(n)-A053735(A241549(n))`
-/

namespace A321484.P8980497685660525904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178852 n - A053735 (A241549 n).toNat

end

end A321484.P8980497685660525904

/-! ## A321484.P7199677032156515546

`A178852(n)-A270657(A309427(n))`
-/

namespace A321484.P7199677032156515546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178852 n - A270657 (A309427 n).toNat

end

end A321484.P7199677032156515546

/-! ## A321484.P4175017211223927483

`A063687(n)-A321480(A024791(n+1))`
-/

namespace A321484.P4175017211223927483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063687 n - A321480 (A024791 (n + 1)).toNat

end

end A321484.P4175017211223927483

/-!
# A321485: Describe n from left to right in terms of blocks with the maximum number of repetitions (and then with the maximum size).

The programs for A321485, there is no canonical definition to state claims against.
-/

/-! ## A321485.P3637638040020415288

`A045918(n)%A234497(A014963(A045918(n)))`
-/

namespace A321485.P3637638040020415288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045918 n) (A234497 (A014963 (A045918 n).toNat).toNat)

end

end A321485.P3637638040020415288

/-! ## A321485.P15823868062688076873

`A244514(A047842(A151949(n)))+n+1`
-/

namespace A321485.P15823868062688076873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244514 (A047842 (A151949 n).toNat).toNat + (n + 1 : ℤ)

end

end A321485.P15823868062688076873

/-! ## A321485.P11453295946023464290

`A059920(A027441(n+1))`
-/

namespace A321485.P11453295946023464290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059920 (A027441 (n + 1)).toNat

end

end A321485.P11453295946023464290

/-! ## A321485.P16288329407604710309

`A225683(A300819(n+2))`
-/

namespace A321485.P16288329407604710309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225683 (A300819 (n + 2)).toNat

end

end A321485.P16288329407604710309

/-!
# A321486: Number of maximal matchings in the n-triangular honeycomb acute knight graph.

The programs for A321486, there is no canonical definition to state claims against.
-/

/-! ## A321486.P9333800650920484733

`A072137(n^n)^3`
-/

namespace A321486.P9333800650920484733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072137 (n ^ n) ^ 3

end

end A321486.P9333800650920484733

/-! ## A321486.P1005489176145712759

`A004719(A046091(n)^3)`
-/

namespace A321486.P1005489176145712759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A046091 n ^ 3).toNat

end

end A321486.P1005489176145712759

/-!
# A321487: Numbers in A121707 (n^3 > 1 divides Sum_{k=1..n-1} k^n) which are not semiprimes.

The programs for A321487, there is no canonical definition to state claims against.
-/

/-! ## A321487.P12875047651546189143

`∩[A121707(n+1), A307515(n+1)]`
-/

namespace A321487.P12875047651546189143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321487.P12875047651546189143

/-! ## A321487.P10699792276769316558

`∩[A121707(n+1), A333326(n+1)]`
-/

namespace A321487.P10699792276769316558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321487.P10699792276769316558

/-! ## A321487.P3171045028447802790

`∩[A121707(n+1), A176847(n+1)]`
-/

namespace A321487.P3171045028447802790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321487.P3171045028447802790

/-! ## A321487.P13578985520177601194

`∩[A121707(n+1), A306103(n+1)]`
-/

namespace A321487.P13578985520177601194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321487.P13578985520177601194

/-! ## A321487.P12271308798564915360

`∩[A121707(n+1), A354145(n+1)]`
-/

namespace A321487.P12271308798564915360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321487.P12271308798564915360

/-!
# A321488: Nonsemiprimes in A306097 = A121707 \ A267999.

The programs for A321488, there is no canonical definition to state claims against.
-/

/-! ## A321488.P9321220638876606448

`∩[A306097(n+1), A321487(n+1)]`
-/

namespace A321488.P9321220638876606448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321488.P9321220638876606448

/-! ## A321488.P9936914942261627541

`∩[A306097(n+1), A306103(n+1)]`
-/

namespace A321488.P9936914942261627541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321488.P9936914942261627541

/-! ## A321488.P678953546480186631

`filter[A306097(n+1), A101605(#)]`
-/

namespace A321488.P678953546480186631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A321488.P678953546480186631

/-! ## A321488.P6911189773181389079

`filter[A306097(n+1), A165560(#)]`
-/

namespace A321488.P6911189773181389079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165560 (f1 j).toNat = 1) n)

end

end A321488.P6911189773181389079

/-!
# A321490: Triangular table T[n,k] = (n+k)(n^2+k^2), 1 <= k <= n = 1, 2, 3, ...; read by rows.

The programs for A321490, the canonical program `A321490.P3505959311792862823` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321490 has offset 1).

The definition of A321490 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321490.P3505959311792862823

`A070216(n+1)*A108872(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A321490

/-- `A070216(n+1)*A108872(n+1)` -/
def P3505959311792862823.Spec : Prop :=
  ∀ n, P3505959311792862823.a n = A321490 (n + 1)

theorem P3505959311792862823.correct : P3505959311792862823.Spec := by
  intro n
  simp only [A321490, Nat.add_sub_cancel]

end A321490

/-! ## A321490.P14387672924630801810

`(A094727(n+1)+1)*A070216(n+1)`
-/

namespace A321490.P14387672924630801810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094727 (n + 1) + 1) * A070216 (n + 1)

end

end A321490.P14387672924630801810

namespace A321490

/-- `(A094727(n+1)+1)*A070216(n+1)` -/
def P14387672924630801810.Spec : Prop :=
  ∀ n, P14387672924630801810.a n = A321490 (n + 1)

end A321490

/-! ## A321490.P6599198099460332685

`A070216(n+1)*A094727(A014132(n+1))`
-/

namespace A321490.P6599198099460332685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070216 (n + 1) * A094727 (A014132 (n + 1)).toNat

end

end A321490.P6599198099460332685

namespace A321490

/-- `A070216(n+1)*A094727(A014132(n+1))` -/
def P6599198099460332685.Spec : Prop :=
  ∀ n, P6599198099460332685.a n = A321490 (n + 1)

end A321490

/-! ## A321490.P11197873866510623200

`(A002260(n+1)+A002024(n+1))*A070216(n+1)`
-/

namespace A321490.P11197873866510623200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) + A002024 (n + 1)) * A070216 (n + 1)

end

end A321490.P11197873866510623200

namespace A321490

/-- `(A002260(n+1)+A002024(n+1))*A070216(n+1)` -/
def P11197873866510623200.Spec : Prop :=
  ∀ n, P11197873866510623200.a n = A321490 (n + 1)

end A321490

/-! ## A321490.P3997430718953844096

`A321500(comp[∑[n]])`
-/

namespace A321490.P3997430718953844096
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321500 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A321490.P3997430718953844096

namespace A321490

/-- `A321500(comp[∑[n]])` -/
def P3997430718953844096.Spec : Prop :=
  ∀ n, P3997430718953844096.a n = A321490 (n + 1)

end A321490

/-! ## A321490.P12923426932509158270

`A321500(A185871(n+1))/8`
-/

namespace A321490.P12923426932509158270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321500 (A185871 (n + 1)).toNat : ℚ) / 8

end

end A321490.P12923426932509158270

namespace A321490

/-- `A321500(A185871(n+1))/8` -/
def P12923426932509158270.Spec : Prop :=
  ∀ n, P12923426932509158270.a n = (A321490 (n + 1) : ℚ)

end A321490

/-!
# A321491: Numbers of the form (x+y)(x^2+y^2), with integers x > y > 0.

The programs for A321491, there is no canonical definition to state claims against.
-/

/-! ## A321491.P11895556647824695629

`∩[A336607(n+1), A365166(n+1)]`
-/

namespace A321491.P11895556647824695629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336607 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321491.P11895556647824695629

/-! ## A321491.P1644805837572960253

`A336607(lt[A336617(n+1), A336650(n+1)])`
-/

namespace A321491.P1644805837572960253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336607 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A321491.P1644805837572960253

/-!
# A321499: Numbers of the form (x - y)(x^2 - y^2) with x > y > 0.

The programs for A321499, the canonical program `A321499.P3394694727584104486` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321499 has offset 1).

The definition of A321499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321499.P3394694727584104486

`∪[2*n+3, 8*(n+2)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A321499

/-- `∪[2*n+3, 8*(n+2)]` -/
def P3394694727584104486.Spec : Prop :=
  ∀ n, (P3394694727584104486.a n : ℤ) = A321499 (n + 1)

theorem P3394694727584104486.correct : P3394694727584104486.Spec := by
  intro n
  simp only [A321499, Nat.add_sub_cancel]

end A321499

/-! ## A321499.P314677130619233603

`comp[A321501(n+1)]`
-/

namespace A321499.P314677130619233603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A321499.P314677130619233603

namespace A321499

/-- `comp[A321501(n+1)]` -/
def P314677130619233603.Spec : Prop :=
  ∀ n, (P314677130619233603.a n : ℤ) = A321499 (n + 1)

end A321499

/-! ## A321499.P17108542658067126047

`comp[2*comp[A004767(n+1)]]+2`
-/

namespace A321499.P17108542658067126047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2

end

end A321499.P17108542658067126047

namespace A321499

/-- `comp[2*comp[A004767(n+1)]]+2` -/
def P17108542658067126047.Spec : Prop :=
  ∀ n, (P17108542658067126047.a n : ℤ) = A321499 (n + 1)

end A321499

/-! ## A321499.P7203842490888654379

`A047486(A055495(n+1))`
-/

namespace A321499.P7203842490888654379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (A055495 (n + 1)).toNat

end

end A321499.P7203842490888654379

namespace A321499

/-- `A047486(A055495(n+1))` -/
def P7203842490888654379.Spec : Prop :=
  ∀ n, P7203842490888654379.a n = A321499 (n + 1)

end A321499

/-! ## A321499.P980320276271919973

`A047486(A008486(n)+2-A058992(n+1))`
-/

namespace A321499.P980320276271919973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (A008486 n + (2 - A058992 (n + 1))).toNat

end

end A321499.P980320276271919973

namespace A321499

/-- `A047486(A008486(n)+2-A058992(n+1))` -/
def P980320276271919973.Spec : Prop :=
  ∀ n, P980320276271919973.a n = A321499 (n + 1)

end A321499

/-! ## A321499.P2739364720163756554

`comp[lcm(2*n, A135517(n))]+2`
-/

namespace A321499.P2739364720163756554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n : ℤ) (A135517 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2

end

end A321499.P2739364720163756554

namespace A321499

/-- `comp[lcm(2*n, A135517(n))]+2` -/
def P2739364720163756554.Spec : Prop :=
  ∀ n, (P2739364720163756554.a n : ℤ) = A321499 (n + 1)

end A321499

/-! ## A321499.P1346610687463317314

`lt[4, A309407(a(n-1)*A091090(n))]` with `a(0)=4`
-/

namespace A321499.P1346610687463317314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A309407 (f2 (n - 1) * A091090 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A321499.P1346610687463317314

namespace A321499

/-- `lt[4, A309407(a(n-1)*A091090(n))]` -/
def P1346610687463317314.Spec : Prop :=
  ∀ n, (P1346610687463317314.a n : ℤ) = A321499 (n + 1)

end A321499

/-! ## A321499.P2602298893366255479

`lt[5, Δ[A352783(n+1)]]`
-/

namespace A321499.P2602298893366255479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A321499.P2602298893366255479

namespace A321499

/-- `lt[5, Δ[A352783(n+1)]]` -/
def P2602298893366255479.Spec : Prop :=
  ∀ n, (P2602298893366255479.a n : ℤ) = A321499 (n + 1)

end A321499

/-! ## A321499.P9260509842286066854

`A004396(eq[2, A107393(A214394(n))])`
-/

namespace A321499.P9260509842286066854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A214394 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321499.P9260509842286066854

namespace A321499

/-- `A004396(eq[2, A107393(A214394(n))])` -/
def P9260509842286066854.Spec : Prop :=
  ∀ n, P9260509842286066854.a n = A321499 (n + 1)

end A321499

/-! ## A321499.P10996984516679223325

`lt[A188134(2*n)+A175628(n+2), A175628(2*(n+1))]`
-/

namespace A321499.P10996984516679223325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (2 * n) + A175628 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175628 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A321499.P10996984516679223325

namespace A321499

/-- `lt[A188134(2*n)+A175628(n+2), A175628(2*(n+1))]` -/
def P10996984516679223325.Spec : Prop :=
  ∀ n, (P10996984516679223325.a n : ℤ) = A321499 (n + 1)

end A321499

/-! ## A321499.P16214150093156539205

`lt[1, Δ[A306921(2*(n+1))]]`
-/

namespace A321499.P16214150093156539205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306921 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A321499.P16214150093156539205

namespace A321499

/-- `lt[1, Δ[A306921(2*(n+1))]]` -/
def P16214150093156539205.Spec : Prop :=
  ∀ n, (P16214150093156539205.a n : ℤ) = A321499 (n + 1)

end A321499

/-! ## A321499.P9577235599746487491

`record[A264827(A057979(3*n))]`
-/

namespace A321499.P9577235599746487491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264827 (A057979 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321499.P9577235599746487491

namespace A321499

/-- `record[A264827(A057979(3*n))]` -/
def P9577235599746487491.Spec : Prop :=
  ∀ n, P9577235599746487491.a n = A321499 (n + 1)

end A321499

/-! ## A321499.P5886308069630837326

`lt[A281685(n+1), Δ[A281672(n)]]`
-/

namespace A321499.P5886308069630837326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281685 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A321499.P5886308069630837326

namespace A321499

/-- `lt[A281685(n+1), Δ[A281672(n)]]` -/
def P5886308069630837326.Spec : Prop :=
  ∀ n, (P5886308069630837326.a n : ℤ) = A321499 (n + 1)

end A321499

/-! ## A321499.P13180086928844315169

`A047486(A002024(∑[n+4]))`
-/

namespace A321499.P13180086928844315169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (A002024 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A321499.P13180086928844315169

namespace A321499

/-- `A047486(A002024(∑[n+4]))` -/
def P13180086928844315169.Spec : Prop :=
  ∀ n, P13180086928844315169.a n = A321499 (n + 1)

end A321499

