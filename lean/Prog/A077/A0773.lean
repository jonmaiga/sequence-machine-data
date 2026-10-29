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
import Seq.B000.C010
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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C043
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B011.C000
import Seq.B012.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A077306: Smallest multiple of n formed by the concatenation of n successive numbers, or 0 if no such number exists.

The programs for A077306, there is no canonical definition to state claims against.
-/

/-! ## A077306.P9971307515301214782

`(n+1)*A075000(n+1)`
-/

namespace A077306.P9971307515301214782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A075000 (n + 1)

end

end A077306.P9971307515301214782

/-! ## A077306.P4305113244925162942

`A075000(n+1)/(n+1)^A008683(A063535(n))`
-/

namespace A077306.P4305113244925162942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075000 (n + 1) : ℚ) / (n + 1 : ℚ) ^ (A008683 (A063535 n).toNat : ℤ)

end

end A077306.P4305113244925162942

/-!
# A077307: Partial sums of theta series of diamond (A005925).

The programs for A077307, there is no canonical definition to state claims against.
-/

/-! ## A077307.P10779025292979805577

`∑[A005925(n)]`
-/

namespace A077307.P10779025292979805577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077307.P10779025292979805577

/-! ## A077307.P710406271534363168

`A005925(n%(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A077307.P710406271534363168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005925 (n % (n + 1)) + a (n - 1)

end

end A077307.P710406271534363168

/-! ## A077307.P18239969299482507918

`A005925(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A077307.P18239969299482507918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005925 n + a (A023443 n).toNat

end

end A077307.P18239969299482507918

/-! ## A077307.P4473176239298212476

`a(n-1)+A007318(C(2, n))*A005925(n)` with `a(0)=1`
-/

namespace A077307.P4473176239298212476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A007318 (Nat.choose 2 n) * A005925 n

end

end A077307.P4473176239298212476

/-! ## A077307.P17637863385808716258

`a(n-1)+A005925(n)+A008683(4*(n+1))` with `a(0)=1`
-/

namespace A077307.P17637863385808716258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A005925 n + A008683 (4 * (n + 1)))

end

end A077307.P17637863385808716258

/-! ## A077307.P2774951990615273666

`∑[A004013(n)-A005927(n)]`
-/

namespace A077307.P2774951990615273666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 n - A005927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077307.P2774951990615273666

/-! ## A077307.P1116977996770061591

`A022998(a(n-1))+A005925(n)` with `a(0)=1`
-/

namespace A077307.P1116977996770061591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A022998 (a (n - 1)).toNat + A005925 n

end

end A077307.P1116977996770061591

/-! ## A077307.P10159239970103585355

`A026741(a(n-1))+A005925(n)` with `a(0)=1`
-/

namespace A077307.P10159239970103585355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026741 (a (n - 1)).toNat + A005925 n

end

end A077307.P10159239970103585355

/-! ## A077307.P6663560022445095018

`A029579(a(n-1))+A005925(n)` with `a(0)=1`
-/

namespace A077307.P6663560022445095018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029579 (a (n - 1)).toNat + A005925 n

end

end A077307.P6663560022445095018

/-!
# A077309: Concatenation of n numbers starting with n.

The programs for A077309, there is no canonical definition to state claims against.
-/

/-! ## A077309.P8065032265007571587

`A048794(2^n*∑[2^n])`
-/

namespace A077309.P8065032265007571587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (2 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A077309.P8065032265007571587

/-! ## A077309.P15639296375576318786

`record[A048794(A105373(n+1))]`
-/

namespace A077309.P15639296375576318786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (A105373 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077309.P15639296375576318786

/-! ## A077309.P7129695178460929393

`or(1, A048794(A006516(n+1)))`
-/

namespace A077309.P7129695178460929393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A048794 (A006516 (n + 1)).toNat)

end

end A077309.P7129695178460929393

/-!
# A077310: Smallest multiple of n that is a concatenation of (increasing) natural numbers starting with(n+1).

The programs for A077310, there is no canonical definition to state claims against.
-/

/-! ## A077310.P1383321235588213402

`(n+1)*A077311(n+1)`
-/

namespace A077310.P1383321235588213402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A077311 (n + 1)

end

end A077310.P1383321235588213402

/-!
# A077311: a(n) = A077310(n)/n.

The programs for A077311, there is no canonical definition to state claims against.
-/

/-! ## A077311.P6447018571560058174

`A077310(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077311.P6447018571560058174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077310 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A077311.P6447018571560058174

/-!
# A077312: Smallest k such that the concatenation of natural numbers from (n+1) to k is a multiple of n.

The programs for A077312, there is no canonical definition to state claims against.
-/

/-! ## A077312.P7857132397539283402

`A069862(n+1)+1+n`
-/

namespace A077312.P7857132397539283402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069862 (n + 1) + 1 + (n : ℤ)

end

end A077312.P7857132397539283402

/-! ## A077312.P9845674770783961587

`A020725(A069862(n+1)+n)`
-/

namespace A077312.P9845674770783961587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A069862 (n + 1) + (n : ℤ)).toNat

end

end A077312.P9845674770783961587

/-! ## A077312.P8238039104760705275

`A069862(A077168(n))+n+1`
-/

namespace A077312.P8238039104760705275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069862 (A077168 n).toNat + (n + 1 : ℤ)

end

end A077312.P8238039104760705275

/-! ## A077312.P6613517590279630897

`A077168(n)+A069862(A077168(n))`
-/

namespace A077312.P6613517590279630897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n + A069862 (A077168 n).toNat

end

end A077312.P6613517590279630897

/-!
# A077313: Primes of the form 2^r*5^s - 1.

The programs for A077313, there is no canonical definition to state claims against.
-/

/-! ## A077313.P10836377387981216292

`∩[A158911(n+1), A293194(n+1)]`
-/

namespace A077313.P10836377387981216292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077313.P10836377387981216292

/-! ## A077313.P10889683455227074196

`∩[A158911(n+1), A219669(n+1)]`
-/

namespace A077313.P10889683455227074196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077313.P10889683455227074196

/-! ## A077313.P8557672899579963775

`∩[A158911(n+1), A219697(n+1)]`
-/

namespace A077313.P8557672899579963775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077313.P8557672899579963775

/-! ## A077313.P10673030663799847508

`p?[A158911(n+1)]`
-/

namespace A077313.P10673030663799847508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077313.P10673030663799847508

/-! ## A077313.P7605003415866666587

`p?[∑[A164768(n+1)]]`
-/

namespace A077313.P7605003415866666587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164768 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077313.P7605003415866666587

/-!
# A077314: Primes of the form 2^r*7^s - 1.

The programs for A077314, there is no canonical definition to state claims against.
-/

/-! ## A077314.P7776907209437302672

`p?[∑[A165742(n+1)]]`
-/

namespace A077314.P7776907209437302672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165742 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077314.P7776907209437302672

/-! ## A077314.P7246902618972393960

`p?[A003591(n+1)-1]`
-/

namespace A077314.P7246902618972393960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003591 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077314.P7246902618972393960

/-! ## A077314.P15872542641450434763

`p?[A165742(n)+a(n-1)]` with `a(0)=0`
-/

namespace A077314.P15872542641450434763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A165742 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077314.P15872542641450434763

/-! ## A077314.P9784186954706536596

`p?[A057428(n)+A003591(n+1)]`
-/

namespace A077314.P9784186954706536596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A003591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077314.P9784186954706536596

/-!
# A077315: Primes of the form 2^r * 11^s - 1.

The programs for A077315, there is no canonical definition to state claims against.
-/

/-! ## A077315.P1202774386968832115

`p?[A003596(n+1)-1]`
-/

namespace A077315.P1202774386968832115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003596 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077315.P1202774386968832115

/-! ## A077315.P10327713879280554654

`p?[A057428(n)+A003596(n+1)]`
-/

namespace A077315.P10327713879280554654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A003596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077315.P10327713879280554654

/-! ## A077315.P5541839778854549176

`p?[A153881(n+2)+A003596(n+1)]`
-/

namespace A077315.P5541839778854549176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A003596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077315.P5541839778854549176

/-! ## A077315.P4200221393316319013

`p?[A033999(2*n+1)+A003596(n+1)]`
-/

namespace A077315.P4200221393316319013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A003596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077315.P4200221393316319013

/-!
# A077316: Triangle read by rows: T(n,k) is the k-th prime = 1 (mod n).

The programs for A077316, there is no canonical definition to state claims against.
-/

/-! ## A077316.P10627351092513894428

`A002024(n+1)*A087377(n+1)+1`
-/

namespace A077316.P10627351092513894428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A087377 (n + 1) + 1

end

end A077316.P10627351092513894428

/-! ## A077316.P17785553115904085381

`A151800(A002024(n+1)*A087377(n+1))`
-/

namespace A077316.P17785553115904085381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A002024 (n + 1) * A087377 (n + 1)).toNat

end

end A077316.P17785553115904085381

/-! ## A077316.P8883490942208097420

`A141310(A002024(n+1)*A087377(n+1))`
-/

namespace A077316.P8883490942208097420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A002024 (n + 1) * A087377 (n + 1)).toNat

end

end A077316.P8883490942208097420

/-! ## A077316.P17970210782270005121

`A034694(A002024(n+1)*A087377(n+1))`
-/

namespace A077316.P17970210782270005121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A002024 (n + 1) * A087377 (n + 1)).toNat

end

end A077316.P17970210782270005121

/-! ## A077316.P16124596252394627520

`A079114(A002024(n+1)*A087377(n+1))`
-/

namespace A077316.P16124596252394627520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079114 (A002024 (n + 1) * A087377 (n + 1)).toNat

end

end A077316.P16124596252394627520

/-!
# A077317: a(n) is the n-th prime == 1 (mod n).

The programs for A077317, there is no canonical definition to state claims against.
-/

/-! ## A077317.P14370774657235626351

`(n+1)*A087376(n+1)+1`
-/

namespace A077317.P14370774657235626351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A087376 (n + 1) + 1

end

end A077317.P14370774657235626351

/-! ## A077317.P14031329311540609373

`A077316(∑[n+1])`
-/

namespace A077317.P14031329311540609373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077316 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077317.P14031329311540609373

/-! ## A077317.P13787441128677310387

`or(A010060(n), A077316(A000096(n)+1))`
-/

namespace A077317.P13787441128677310387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010060 n) (A077316 (A000096 n + 1).toNat)

end

end A077317.P13787441128677310387

/-! ## A077317.P1151808829232963346

`or(A077316(A000096(n)+1), A357448(n))`
-/

namespace A077317.P1151808829232963346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A077316 (A000096 n + 1).toNat) (A357448 n)

end

end A077317.P1151808829232963346

/-! ## A077317.P15803868407347438971

`or(A077316(A000096(n)+1), A295891(n+1))`
-/

namespace A077317.P15803868407347438971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A077316 (A000096 n + 1).toNat) (A295891 (n + 1))

end

end A077317.P15803868407347438971

/-! ## A077317.P7475404460640950315

`A369667(A025428(n))+A077316(A000217(n+1))`
-/

namespace A077317.P7475404460640950315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369667 (A025428 n).toNat + A077316 (A000217 (n + 1)).toNat

end

end A077317.P7475404460640950315

/-! ## A077317.P15578590567948652133

`A369667(A003434(n+1))+A077316(A000217(n+1))`
-/

namespace A077317.P15578590567948652133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369667 (A003434 (n + 1)).toNat + A077316 (A000217 (n + 1)).toNat

end

end A077317.P15578590567948652133

/-! ## A077317.P8006064092546953974

`A368994(A179693(n+1))+A077316(A000217(n+1))`
-/

namespace A077317.P8006064092546953974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368994 (A179693 (n + 1)).toNat + A077316 (A000217 (n + 1)).toNat

end

end A077317.P8006064092546953974

/-! ## A077317.P13151409039662327034

`A369667(A188817(n+1))+A077316(A000217(n+1))`
-/

namespace A077317.P13151409039662327034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369667 (A188817 (n + 1)).toNat + A077316 (A000217 (n + 1)).toNat

end

end A077317.P13151409039662327034

/-! ## A077317.P414526907608060983

`A369667(A194446(n+1))+A077316(A000217(n+1))`
-/

namespace A077317.P414526907608060983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369667 (A194446 (n + 1)).toNat + A077316 (A000217 (n + 1)).toNat

end

end A077317.P414526907608060983

/-! ## A077317.P921237471954505162

`A368994(A003434(n+4))+A077316(A000217(n+1))`
-/

namespace A077317.P921237471954505162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368994 (A003434 (n + 4)).toNat + A077316 (A000217 (n + 1)).toNat

end

end A077317.P921237471954505162

/-! ## A077317.P3395286090832213765

`A369667(A062378(n+5))+A077316(A000217(n+1))`
-/

namespace A077317.P3395286090832213765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369667 (A062378 (n + 5)).toNat + A077316 (A000217 (n + 1)).toNat

end

end A077317.P3395286090832213765

/-! ## A077317.P5370211142376917477

`(n+1)*A087377(∑[n+1])+1`
-/

namespace A077317.P5370211142376917477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A087377 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A077317.P5370211142376917477

/-! ## A077317.P15987396954936627867

`A006530(A077316(C(n+2, 2)))`
-/

namespace A077317.P15987396954936627867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A077316 (Nat.choose (n + 2) 2)).toNat

end

end A077317.P15987396954936627867

/-! ## A077317.P14537453713503424319

`A000010(A077316(C(n+2, n)))+1`
-/

namespace A077317.P14537453713503424319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A077316 (Nat.choose (n + 2) n)).toNat + 1

end

end A077317.P14537453713503424319

/-! ## A077317.P4442093621351818142

`A020639(A077316(A000124(n)+n))`
-/

namespace A077317.P4442093621351818142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A077316 (A000124 n + (n : ℤ)).toNat).toNat

end

end A077317.P4442093621351818142

/-!
# A077318: Sum of terms in n-th row of A077316.

The programs for A077318, there is no canonical definition to state claims against.
-/

/-! ## A077318.P10723252911061595425

`(n+1)*A077319(n+1)`
-/

namespace A077318.P10723252911061595425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A077319 (n + 1)

end

end A077318.P10723252911061595425

/-! ## A077318.P17601137774016372874

`-(xor(n, -1)*A077319(ϕ²-(ϕ-n)))`
-/

namespace A077318.P17601137774016372874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (n : ℤ) (-1) * A077319 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat)

end

end A077318.P17601137774016372874

/-! ## A077318.P16618973314536780061

`A077319(A110514(2*n))*A110514(2*n)`
-/

namespace A077318.P16618973314536780061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077319 (A110514 (2 * n)).toNat * A110514 (2 * n)

end

end A077318.P16618973314536780061

/-! ## A077318.P16467007088770855338

`A077319(ϕ²-(ϕ-n))-A001489(n)*A077319(ϕ²-(ϕ-n))`
-/

namespace A077318.P16467007088770855338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077319 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat - A001489 n * A077319 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

end

end A077318.P16467007088770855338

/-!
# A077319: Average of terms in n-th row of A077316.

The programs for A077319, there is no canonical definition to state claims against.
-/

/-! ## A077319.P6229014896697881001

`A077318(n+1)/(n+1)`
-/

namespace A077319.P6229014896697881001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077318 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A077319.P6229014896697881001

/-!
# A077320: Triangle in which n-th row contains n smallest multiples of the n-th prime.

The programs for A077320, the canonical program `A077320.P15464909350270334360` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077320 has offset 1).

The definition of A077320 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077320.P15464909350270334360

`(col(n)+1)*A000040(row(n)+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A077320

/-- `(col(n)+1)*A000040(row(n)+1)` -/
def P15464909350270334360.Spec : Prop :=
  ∀ n, P15464909350270334360.a n = A077320 (n + 1)

theorem P15464909350270334360.correct : P15464909350270334360.Spec := by
  intro n
  simp only [A077320, Nat.add_sub_cancel]

end A077320

/-! ## A077320.P13145193597817057828

`A002260(n+1)*A005145(n+1)`
-/

namespace A077320.P13145193597817057828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A005145 (n + 1)

end

end A077320.P13145193597817057828

namespace A077320

/-- `A002260(n+1)*A005145(n+1)` -/
def P13145193597817057828.Spec : Prop :=
  ∀ n, P13145193597817057828.a n = A077320 (n + 1)

theorem P13145193597817057828.correct : P13145193597817057828.Spec := by
  intro n
  simp only [A077320, Nat.add_sub_cancel, A077320.P13145193597817057828.a, A077320.P15464909350270334360.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A002260, A002260.P9170571874073898642.a, A005145, A005145.P7903299518883907964.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077320

/-! ## A077320.P4842413916756578135

`(A002262(n)+1)*A005145(n+1)`
-/

namespace A077320.P4842413916756578135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A005145 (n + 1)

end

end A077320.P4842413916756578135

namespace A077320

/-- `(A002262(n)+1)*A005145(n+1)` -/
def P4842413916756578135.Spec : Prop :=
  ∀ n, P4842413916756578135.a n = A077320 (n + 1)

end A077320

/-! ## A077320.P7434265125123426256

`A002260(n+1)*A051599(A057944(n))`
-/

namespace A077320.P7434265125123426256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A051599 (A057944 n).toNat

end

end A077320.P7434265125123426256

namespace A077320

/-- `A002260(n+1)*A051599(A057944(n))` -/
def P7434265125123426256.Spec : Prop :=
  ∀ n, P7434265125123426256.a n = A077320 (n + 1)

end A077320

/-! ## A077320.P5040748022756548773

`A002260(n+1)*A067747(A131507(n))`
-/

namespace A077320.P5040748022756548773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A067747 (A131507 n).toNat

end

end A077320.P5040748022756548773

namespace A077320

/-- `A002260(n+1)*A067747(A131507(n))` -/
def P5040748022756548773.Spec : Prop :=
  ∀ n, P5040748022756548773.a n = A077320 (n + 1)

end A077320

/-! ## A077320.P3086378252183206179

`A000040(A002024(n+1))*A002260(n+1)`
-/

namespace A077320.P3086378252183206179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002024 (n + 1)).toNat * A002260 (n + 1)

end

end A077320.P3086378252183206179

namespace A077320

/-- `A000040(A002024(n+1))*A002260(n+1)` -/
def P3086378252183206179.Spec : Prop :=
  ∀ n, P3086378252183206179.a n = A077320 (n + 1)

end A077320

/-! ## A077320.P13646087005873755573

`(A002262(n)+1)*A000040(A002024(n+1))`
-/

namespace A077320.P13646087005873755573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A000040 (A002024 (n + 1)).toNat

end

end A077320.P13646087005873755573

namespace A077320

/-- `(A002262(n)+1)*A000040(A002024(n+1))` -/
def P13646087005873755573.Spec : Prop :=
  ∀ n, P13646087005873755573.a n = A077320 (n + 1)

end A077320

/-! ## A077320.P9297404476044441782

`A000040(A003056(n)+1)*A002260(n+1)`
-/

namespace A077320.P9297404476044441782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A003056 n + 1).toNat * A002260 (n + 1)

end

end A077320.P9297404476044441782

namespace A077320

/-- `A000040(A003056(n)+1)*A002260(n+1)` -/
def P9297404476044441782.Spec : Prop :=
  ∀ n, P9297404476044441782.a n = A077320 (n + 1)

end A077320

/-! ## A077320.P13277570152529977041

`(A002262(n)+1)*A000040(A003056(n)+1)`
-/

namespace A077320.P13277570152529977041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A000040 (A003056 n + 1).toNat

end

end A077320.P13277570152529977041

namespace A077320

/-- `(A002262(n)+1)*A000040(A003056(n)+1)` -/
def P13277570152529977041.Spec : Prop :=
  ∀ n, P13277570152529977041.a n = A077320 (n + 1)

end A077320

/-! ## A077320.P3851886666927462042

`A005145(n+1)*A087712(A037126(n+1))`
-/

namespace A077320.P3851886666927462042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (n + 1) * A087712 (A037126 (n + 1)).toNat

end

end A077320.P3851886666927462042

namespace A077320

/-- `A005145(n+1)*A087712(A037126(n+1))` -/
def P3851886666927462042.Spec : Prop :=
  ∀ n, P3851886666927462042.a n = A077320 (n + 1)

end A077320

/-! ## A077320.P7014889361175204390

`A000040(A003057(n+2)-1)*A002260(n+1)`
-/

namespace A077320.P7014889361175204390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A003057 (n + 2) - 1).toNat * A002260 (n + 1)

end

end A077320.P7014889361175204390

namespace A077320

/-- `A000040(A003057(n+2)-1)*A002260(n+1)` -/
def P7014889361175204390.Spec : Prop :=
  ∀ n, P7014889361175204390.a n = A077320 (n + 1)

end A077320

/-! ## A077320.P9361106025770362132

`ceil(A158405(n+1)/2)*A000040(A002024(n+1))`
-/

namespace A077320.P9361106025770362132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158405 (n + 1) : ℚ) / 2⌉ * A000040 (A002024 (n + 1)).toNat

end

end A077320.P9361106025770362132

namespace A077320

/-- `ceil(A158405(n+1)/2)*A000040(A002024(n+1))` -/
def P9361106025770362132.Spec : Prop :=
  ∀ n, P9361106025770362132.a n = A077320 (n + 1)

end A077320

/-! ## A077320.P14306228403406726478

`A000040(A025581(n)+A002260(n+1))*A002260(n+1)`
-/

namespace A077320.P14306228403406726478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A025581 n + A002260 (n + 1)).toNat * A002260 (n + 1)

end

end A077320.P14306228403406726478

namespace A077320

/-- `A000040(A025581(n)+A002260(n+1))*A002260(n+1)` -/
def P14306228403406726478.Spec : Prop :=
  ∀ n, P14306228403406726478.a n = A077320 (n + 1)

end A077320

/-! ## A077320.P14276762894721292774

`(A002024(n+1)-A025581(n))*A000040(A002024(n+1))`
-/

namespace A077320.P14276762894721292774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) - A025581 n) * A000040 (A002024 (n + 1)).toNat

end

end A077320.P14276762894721292774

namespace A077320

/-- `(A002024(n+1)-A025581(n))*A000040(A002024(n+1))` -/
def P14276762894721292774.Spec : Prop :=
  ∀ n, P14276762894721292774.a n = A077320 (n + 1)

end A077320

/-! ## A077320.P17751942855484236756

`A000040(A075362(n+1)/A002260(n+1))*A002260(n+1)`
-/

namespace A077320.P17751942855484236756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A075362 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ))).toNat * A002260 (n + 1)

end

end A077320.P17751942855484236756

namespace A077320

/-- `A000040(A075362(n+1)/A002260(n+1))*A002260(n+1)` -/
def P17751942855484236756.Spec : Prop :=
  ∀ n, P17751942855484236756.a n = A077320 (n + 1)

end A077320

/-! ## A077320.P4304000058275363941

`A000040(A002024(n+1))*A054073(A054077(n+1))`
-/

namespace A077320.P4304000058275363941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002024 (n + 1)).toNat * A054073 (A054077 (n + 1)).toNat

end

end A077320.P4304000058275363941

namespace A077320

/-- `A000040(A002024(n+1))*A054073(A054077(n+1))` -/
def P4304000058275363941.Spec : Prop :=
  ∀ n, P4304000058275363941.a n = A077320 (n + 1)

end A077320

/-! ## A077320.P2136732906536625173

`A000040(A002024(n+1))*A054065(A054069(n+1))`
-/

namespace A077320.P2136732906536625173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002024 (n + 1)).toNat * A054065 (A054069 (n + 1)).toNat

end

end A077320.P2136732906536625173

namespace A077320

/-- `A000040(A002024(n+1))*A054065(A054069(n+1))` -/
def P2136732906536625173.Spec : Prop :=
  ∀ n, P2136732906536625173.a n = A077320 (n + 1)

end A077320

/-! ## A077320.P791894154570472533

`A002260(n+1)*A037126(A127739(n+1))`
-/

namespace A077320.P791894154570472533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A037126 (A127739 (n + 1)).toNat

end

end A077320.P791894154570472533

namespace A077320

/-- `A002260(n+1)*A037126(A127739(n+1))` -/
def P791894154570472533.Spec : Prop :=
  ∀ n, P791894154570472533.a n = A077320 (n + 1)

end A077320

/-! ## A077320.P13141998564519173385

`A000040(A002024(n+1))*A026100(A026098(n+1))`
-/

namespace A077320.P13141998564519173385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002024 (n + 1)).toNat * A026100 (A026098 (n + 1)).toNat

end

end A077320.P13141998564519173385

namespace A077320

/-- `A000040(A002024(n+1))*A026100(A026098(n+1))` -/
def P13141998564519173385.Spec : Prop :=
  ∀ n, P13141998564519173385.a n = A077320 (n + 1)

end A077320

/-! ## A077320.P6401350809515496650

`A004738(A143844(n)+1)*A005145(n+1)`
-/

namespace A077320.P6401350809515496650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 (A143844 n + 1).toNat * A005145 (n + 1)

end

end A077320.P6401350809515496650

namespace A077320

/-- `A004738(A143844(n)+1)*A005145(n+1)` -/
def P6401350809515496650.Spec : Prop :=
  ∀ n, P6401350809515496650.a n = A077320 (n + 1)

end A077320

/-!
# A077321: Rearrange primes so as to form a triangle in which n-th row contains the n smallest primes == 1 (mod n) which have not occurred earlier.

The programs for A077321, there is no canonical definition to state claims against.
-/

/-! ## A077321.P11083391309357646265

`p?[A352745(A079051(n))-1]`
-/

namespace A077321.P11083391309357646265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352745 (A079051 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077321.P11083391309357646265

/-! ## A077321.P12327414547474734040

`p?[n-A331003(A330965(n+2))]`
-/

namespace A077321.P12327414547474734040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A331003 (A330965 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077321.P12327414547474734040

/-! ## A077321.P8186914878689329812

`p?[A336503(n+1)+A336495(A336499(n))]`
-/

namespace A077321.P8186914878689329812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336503 (n + 1) + A336495 (A336499 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077321.P8186914878689329812

/-! ## A077321.P13099706075892710861

`A185956(lt[A000032(n+1), A167321(n+1)])`
-/

namespace A077321.P13099706075892710861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185956 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A077321.P13099706075892710861

/-! ## A077321.P17127838831184494981

`A185956(lt[A002182(n+1), A167321(n+1)])`
-/

namespace A077321.P17127838831184494981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185956 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A077321.P17127838831184494981

/-!
# A077322: Initial terms of rows of A077321.

The programs for A077322, there is no canonical definition to state claims against.
-/

/-! ## A077322.P5386055448647434932

`A077321(∑[n]+1)`
-/

namespace A077322.P5386055448647434932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077321 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A077322.P5386055448647434932

/-! ## A077322.P3538435151776459996

`A077321(A000124(n))%A000045(n+6)`
-/

namespace A077322.P3538435151776459996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077321 (A000124 n).toNat) (A000045 (n + 6))

end

end A077322.P3538435151776459996

/-! ## A077322.P9764382550799434241

`A064882(A149420(n+1))`
-/

namespace A077322.P9764382550799434241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064882 (A149420 (n + 1)).toNat

end

end A077322.P9764382550799434241

/-!
# A077323: Final terms of rows of A077321.

The programs for A077323, there is no canonical definition to state claims against.
-/

/-! ## A077323.P17135049271505167169

`A077321(∑[n+1])`
-/

namespace A077323.P17135049271505167169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077321 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077323.P17135049271505167169

/-! ## A077323.P13278086137645794143

`A139254(A019135(n+4))`
-/

namespace A077323.P13278086137645794143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139254 (A019135 (n + 4)).toNat

end

end A077323.P13278086137645794143

/-!
# A077324: Sum of terms of n-th row of A077321.

The programs for A077324, there is no canonical definition to state claims against.
-/

/-! ## A077324.P16377302731900878272

`(n+1)*A077325(n+1)`
-/

namespace A077324.P16377302731900878272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A077325 (n + 1)

end

end A077324.P16377302731900878272

/-! ## A077324.P6068020641781935574

`A077325(A110514(2*n))*A110514(2*n)`
-/

namespace A077324.P6068020641781935574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077325 (A110514 (2 * n)).toNat * A110514 (2 * n)

end

end A077324.P6068020641781935574

/-!
# A077325: Average of terms of n-th row of A077321.

The programs for A077325, there is no canonical definition to state claims against.
-/

/-! ## A077325.P9939394972802201771

`A077324(n+1)/(n+1)`
-/

namespace A077325.P9939394972802201771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077324 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A077325.P9939394972802201771

/-!
# A077326: Smallest number beginning with 1 and having exactly n distinct prime divisors.

The programs for A077326, there is no canonical definition to state claims against.
-/

/-! ## A077326.P17604559152407663393

`A106411(n)-A275494(A204060(n+5))`
-/

namespace A077326.P17604559152407663393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106411 n - A275494 (A204060 (n + 5)).toNat

end

end A077326.P17604559152407663393

/-! ## A077326.P5104245387143961396

`A106411(n)-A160145(A026523(n+3))`
-/

namespace A077326.P5104245387143961396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106411 n - A160145 (A026523 (n + 3)).toNat

end

end A077326.P5104245387143961396

/-!
# A077328: Smallest number beginning with 3 and having exactly n distinct prime divisors.

The programs for A077328, there is no canonical definition to state claims against.
-/

/-! ## A077328.P12223405480279442929

`A000027(A106413(n+1))`
-/

namespace A077328.P12223405480279442929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A106413 (n + 1)).toNat

end

end A077328.P12223405480279442929

/-!
# A077329: Smallest number beginning with 4 and having exactly n distinct prime divisors.

The programs for A077329, there is no canonical definition to state claims against.
-/

/-! ## A077329.P17050675229939434572

`A082794(A082794(C(record[n^(n%2)+1]+1, n)))`
-/

namespace A077329.P17050675229939434572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082794 (A082794 (Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1) n)).toNat

end

end A077329.P17050675229939434572

/-!
# A077330: Smallest number beginning with 5 and having exactly n distinct prime divisors.

The programs for A077330, there is no canonical definition to state claims against.
-/

/-! ## A077330.P7156918912164975581

`xor(A106385(n+1)-1, A106415(n+1))`
-/

namespace A077330.P7156918912164975581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A106385 (n + 1) - 1) (A106415 (n + 1))

end

end A077330.P7156918912164975581

/-!
# A077332: Smallest number beginning with 7 and having exactly n distinct prime divisors.

The programs for A077332, there is no canonical definition to state claims against.
-/

/-! ## A077332.P12544650549878691046

`A082797(C(A232559(2*(n+1)), A100280(n)))`
-/

namespace A077332.P12544650549878691046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082797 (Nat.choose (A232559 (2 * (n + 1))).toNat (A100280 n).toNat)

end

end A077332.P12544650549878691046

/-!
# A077333: Smallest number beginning with 8 and having exactly n distinct prime divisors.

The programs for A077333, there is no canonical definition to state claims against.
-/

/-! ## A077333.P13948024368441352053

`A082798(A003168(n)*A042968(2*(n+1)))`
-/

namespace A077333.P13948024368441352053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082798 (A003168 n * A042968 (2 * (n + 1))).toNat

end

end A077333.P13948024368441352053

/-!
# A077334: Smallest number beginning with 9 and having exactly n distinct prime divisors.

The programs for A077334, there is no canonical definition to state claims against.
-/

/-! ## A077334.P12484939728255940696

`A106419(n+1)%A047223(A077332(n+1))`
-/

namespace A077334.P12484939728255940696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106419 (n + 1)) (A047223 (A077332 (n + 1)).toNat)

end

end A077334.P12484939728255940696

/-!
# A077335: Sum of products of squares of parts in all partitions of n.

The programs for A077335, there is no canonical definition to state claims against.
-/

/-! ## A077335.P8698972581908620874

`A292193(∑[n+3])`
-/

namespace A077335.P8698972581908620874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292193 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077335.P8698972581908620874

/-! ## A077335.P14315673595540460413

`A292193(A055998(n+1))%A198964(n)`
-/

namespace A077335.P14315673595540460413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292193 (A055998 (n + 1)).toNat) (A198964 n)

end

end A077335.P14315673595540460413

/-! ## A077335.P13599261125952866065

`A007318(C(n, 2))*A292193(A055998(n+1))`
-/

namespace A077335.P13599261125952866065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A292193 (A055998 (n + 1)).toNat

end

end A077335.P13599261125952866065

/-! ## A077335.P13446724104395750744

`A007318(A000217(n))*A292193(A055998(n+1))`
-/

namespace A077335.P13446724104395750744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A292193 (A055998 (n + 1)).toNat

end

end A077335.P13446724104395750744

/-!
# A077337: Numbers k such that k and R(k) both are squarefree where R(n) (A004086) is the digit reversal of n.

The programs for A077337, there is no canonical definition to state claims against.
-/

/-! ## A077337.P835255675115910798

`record[A007947(A071591(n+1))]`
-/

namespace A077337.P835255675115910798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A071591 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077337.P835255675115910798

/-! ## A077337.P17619638545861761851

`filter[A071591(n+1), A008966(#)]`
-/

namespace A077337.P17619638545861761851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A077337.P17619638545861761851

/-! ## A077337.P17465613559035333847

`filter[A071591(n+1), A353559(#)]`
-/

namespace A077337.P17465613559035333847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A077337.P17465613559035333847

/-! ## A077337.P6633897561881884624

`∩[A005117(n+1), A071591(n+1)]`
-/

namespace A077337.P6633897561881884624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077337.P6633897561881884624

/-! ## A077337.P2011290470281930773

`∩[A071591(n+1), A193303(n+1)]`
-/

namespace A077337.P2011290470281930773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077337.P2011290470281930773

/-! ## A077337.P10115396617555663332

`∩[A071591(n+1), A348499(n+1)]`
-/

namespace A077337.P10115396617555663332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077337.P10115396617555663332

/-! ## A077337.P11513282401522692550

`∩[A071591(n+1), A348506(n+1)]`
-/

namespace A077337.P11513282401522692550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077337.P11513282401522692550

/-! ## A077337.P15123730414333525463

`eq[2, A255326(A004086(n))+A255326(n)]`
-/

namespace A077337.P15123730414333525463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 (A004086 n).toNat + A255326 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A077337.P15123730414333525463

/-! ## A077337.P4398316058383824928

`record[A007947(n+1)/A000190(A004086(n+1))]`
-/

namespace A077337.P4398316058383824928
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A000190 (A004086 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077337.P4398316058383824928

/-! ## A077337.P16410276695029817261

`record[A019554(n+1)/A000190(A004086(n+1))]`
-/

namespace A077337.P16410276695029817261
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019554 (n + 1) : ℚ) / (A000190 (A004086 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077337.P16410276695029817261

/-! ## A077337.P2189833589624044526

`record[A325978(n+1)/A000190(A004086(n+1))]`
-/

namespace A077337.P2189833589624044526
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325978 (n + 1) : ℚ) / (A000190 (A004086 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077337.P2189833589624044526

/-!
# A077338: a(n) = smallest multiple of prime(n) such that a(n) +1 is a multiple of prime(n+1).

The programs for A077338, there is no canonical definition to state claims against.
-/

/-! ## A077338.P4613621707317148212

`A073604(n+1)-1`
-/

namespace A077338.P4613621707317148212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073604 (n + 1) - 1

end

end A077338.P4613621707317148212

/-! ## A077338.P6288091741724790421

`A006094(n+1)-A073603(n+1)`
-/

namespace A077338.P6288091741724790421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) - A073603 (n + 1)

end

end A077338.P6288091741724790421

/-! ## A077338.P12663319836482213911

`A000040(n+1)*A077005(n+2)`
-/

namespace A077338.P12663319836482213911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A077005 (n + 2)

end

end A077338.P12663319836482213911

/-! ## A077338.P3854019077765960523

`A180096(n+1)%A006094(n+1)`
-/

namespace A077338.P3854019077765960523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180096 (n + 1)) (A006094 (n + 1))

end

end A077338.P3854019077765960523

/-! ## A077338.P435328044060639061

`A180159(n+1)%A006094(n+1)`
-/

namespace A077338.P435328044060639061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180159 (n + 1)) (A006094 (n + 1))

end

end A077338.P435328044060639061

/-! ## A077338.P15764850429179624129

`A037166(n+1)+Δ[A007504(n)]-A073603(n+1)`
-/

namespace A077338.P15764850429179624129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037166 (n + 1) + (f1 (n + 1) - f1 n) - A073603 (n + 1)

end

end A077338.P15764850429179624129

/-! ## A077338.P6711067140560174019

`Δ[A007504(n)]*A065091(n+1)-A073603(n+1)`
-/

namespace A077338.P6711067140560174019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A065091 (n + 1) - A073603 (n + 1)

end

end A077338.P6711067140560174019

/-! ## A077338.P11297747105181489918

`A000040(n+1)+A037166(n+1)-A073603(n+1)`
-/

namespace A077338.P11297747105181489918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A037166 (n + 1) - A073603 (n + 1))

end

end A077338.P11297747105181489918

/-! ## A077338.P13209676558428057285

`A001043(n+1)+A037165(n+1)-A073603(n+1)`
-/

namespace A077338.P13209676558428057285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + (A037165 (n + 1) - A073603 (n + 1))

end

end A077338.P13209676558428057285

/-! ## A077338.P11924483796307779229

`A037167(n+1)+A065091(n+1)-A073603(n+1)`
-/

namespace A077338.P11924483796307779229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037167 (n + 1) + (A065091 (n + 1) - A073603 (n + 1))

end

end A077338.P11924483796307779229

/-! ## A077338.P8249527590384931001

`A123134(n+1)-(A073603(n+1)+A000040(n+1))`
-/

namespace A077338.P8249527590384931001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123134 (n + 1) - (A073603 (n + 1) + A000040 (n + 1))

end

end A077338.P8249527590384931001

/-! ## A077338.P8716338293182453577

`A001248(n+1)+A291463(n+1)-A073603(n+1)`
-/

namespace A077338.P8716338293182453577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + (A291463 (n + 1) - A073603 (n + 1))

end

end A077338.P8716338293182453577

/-! ## A077338.P2297018916894627223

`A286624(n+1)-(A073603(n+1)+A008864(n+1))`
-/

namespace A077338.P2297018916894627223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286624 (n + 1) - (A073603 (n + 1) + A008864 (n + 1))

end

end A077338.P2297018916894627223

/-! ## A077338.P760691175719746766

`A111071(n+1)+A215848(n+1)-A073603(n+1)`
-/

namespace A077338.P760691175719746766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111071 (n + 1) + (A215848 (n + 1) - A073603 (n + 1))

end

end A077338.P760691175719746766

/-! ## A077338.P7113974840845734171

`A037165(n+1)+A011974(n+2)-A073603(n+1)`
-/

namespace A077338.P7113974840845734171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037165 (n + 1) + A011974 (n + 2) - A073603 (n + 1)

end

end A077338.P7113974840845734171

/-! ## A077338.P9190838359249550858

`A000040(n+1)*A065091(n+1)-A073603(n+1)`
-/

namespace A077338.P9190838359249550858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A065091 (n + 1) - A073603 (n + 1)

end

end A077338.P9190838359249550858

/-! ## A077338.P6493638960732438180

`A073603(n+1)/A069830(n+1)*A077005(n+2)`
-/

namespace A077338.P6493638960732438180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073603 (n + 1) : ℚ) / (A069830 (n + 1) : ℚ) * (A077005 (n + 2) : ℚ)

end

end A077338.P6493638960732438180

/-! ## A077338.P11210041713338948610

`A065091(n+1)*A087454(n+2)-1`
-/

namespace A077338.P11210041713338948610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) * A087454 (n + 2) - 1

end

end A077338.P11210041713338948610

/-! ## A077338.P8472644692433246872

`(A000040(n+2)-A069830(n+1))*A000040(n+1)`
-/

namespace A077338.P8472644692433246872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) - A069830 (n + 1)) * A000040 (n + 1)

end

end A077338.P8472644692433246872

/-! ## A077338.P3612312555442333068

`A000040(n+1)*A000040(n+2)-A073603(n+1)`
-/

namespace A077338.P3612312555442333068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A000040 (n + 2) - A073603 (n + 1)

end

end A077338.P3612312555442333068

/-!
# A077340: Final terms of rows in A077339.

The programs for A077340, there is no canonical definition to state claims against.
-/

/-! ## A077340.P9615036435987369558

`A077339(∑[n+1])`
-/

namespace A077340.P9615036435987369558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077339 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077340.P9615036435987369558

/-!
# A077344: Triangle in which n-th row contains n smallest primes beginning with n.

The programs for A077344, there is no canonical definition to state claims against.
-/

/-! ## A077344.P15309832586105221784

`A262369(A245300(n)+1)`
-/

namespace A077344.P15309832586105221784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262369 (A245300 n + 1).toNat

end

end A077344.P15309832586105221784

/-! ## A077344.P3127892236573591722

`A262369((A214661(n+1)+1)/2)`
-/

namespace A077344.P3127892236573591722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262369 (SequenceMachineLib.roundAway ((A214661 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A077344.P3127892236573591722

/-!
# A077345: a(n) is the n-th prime whose decimal expansion begins with the decimal expansion of n.

The programs for A077345, there is no canonical definition to state claims against.
-/

/-! ## A077345.P15866238625606382083

`A077344(∑[n+1])`
-/

namespace A077345.P15866238625606382083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077344 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077345.P15866238625606382083

/-! ## A077345.P12328909647030927182

`or(1, A077344(A000217(n+1)))`
-/

namespace A077345.P12328909647030927182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A077344 (A000217 (n + 1)).toNat)

end

end A077345.P12328909647030927182

/-! ## A077345.P11641455551455604285

`A077344(A000217(n+1))+A000007(n+1)`
-/

namespace A077345.P11641455551455604285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077344 (A000217 (n + 1)).toNat + A000007 (n + 1)

end

end A077345.P11641455551455604285

/-! ## A077345.P15807875234373381285

`A077344(A000217(n+1))+A000038(n+1)`
-/

namespace A077345.P15807875234373381285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077344 (A000217 (n + 1)).toNat + A000038 (n + 1)

end

end A077345.P15807875234373381285

/-! ## A077345.P16952890090257027404

`A077344(A000217(n+1))+A000035(2*n)`
-/

namespace A077345.P16952890090257027404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077344 (A000217 (n + 1)).toNat + A000035 (2 * n)

end

end A077345.P16952890090257027404

/-! ## A077345.P17486741365189959529

`A007318(C(3, n))*A077344(A000217(n+1))`
-/

namespace A077345.P17486741365189959529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A077344 (A000217 (n + 1)).toNat

end

end A077345.P17486741365189959529

/-! ## A077345.P7321628774312544234

`A077344(A000217(n+1))%A001248(n+1)²`
-/

namespace A077345.P7321628774312544234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077344 (A000217 (n + 1)).toNat) (A001248 (n + 1) ^ 2)

end

end A077345.P7321628774312544234

/-! ## A077345.P10724603072918967172

`A077344(A000217(n+1))+A008683(4*(n+1))`
-/

namespace A077345.P10724603072918967172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077344 (A000217 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A077345.P10724603072918967172

/-! ## A077345.P9943405796930229850

`A014963(6*(n+1))*A077344(A000217(n+1))`
-/

namespace A077345.P9943405796930229850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A077344 (A000217 (n + 1)).toNat

end

end A077345.P9943405796930229850

/-! ## A077345.P6439133659402787001

`A000040(n+2)%2*A077344(A000217(n+1))`
-/

namespace A077345.P6439133659402787001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A077344 (A000217 (n + 1)).toNat

end

end A077345.P6439133659402787001

/-! ## A077345.P8408359872237338131

`A000108(C(2, n+2))*A077344(A000217(n+1))`
-/

namespace A077345.P8408359872237338131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A077344 (A000217 (n + 1)).toNat

end

end A077345.P8408359872237338131

/-! ## A077345.P14299851210080056681

`A077344(A000217(n+1))/A007318(C(2, n+2))`
-/

namespace A077345.P14299851210080056681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077344 (A000217 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 (n + 2)) : ℚ)

end

end A077345.P14299851210080056681

/-! ## A077345.P11384112557713641782

`A005117(gcd(n, n+1))*A077344(A000217(n+1))`
-/

namespace A077345.P11384112557713641782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (Nat.gcd n (n + 1)) * A077344 (A000217 (n + 1)).toNat

end

end A077345.P11384112557713641782

/-! ## A077345.P5599640489778234185

`A077344(A000217(n+1))+A000045(C(n, n+2))`
-/

namespace A077345.P5599640489778234185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077344 (A000217 (n + 1)).toNat + A000045 (Nat.choose n (n + 2))

end

end A077345.P5599640489778234185

/-! ## A077345.P4070201468597017298

`A000045(((-1)^n)²)*A077344(A000217(n+1))`
-/

namespace A077345.P4070201468597017298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (((-1) ^ n) ^ 2).toNat * A077344 (A000217 (n + 1)).toNat

end

end A077345.P4070201468597017298

/-! ## A077345.P8274359103221507462

`floor(1/A001222(n+2))!*A077344(A000217(n+1))`
-/

namespace A077345.P8274359103221507462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌊1 / (A001222 (n + 2) : ℚ)⌋.toNat : ℤ) * A077344 (A000217 (n + 1)).toNat

end

end A077345.P8274359103221507462

/-! ## A077345.P16377657681123432713

`A264668(A002262(n))+A077344(A000217(n+1))`
-/

namespace A077345.P16377657681123432713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 (A002262 n).toNat + A077344 (A000217 (n + 1)).toNat

end

end A077345.P16377657681123432713

/-! ## A077345.P596133829937745009

`A262369(∑[4*n]+1)`
-/

namespace A077345.P596133829937745009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262369 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A077345.P596133829937745009

/-!
# A077346: Triangle in which n-th row contains n smallest squares beginning with n.

The programs for A077346, there is no canonical definition to state claims against.
-/

/-! ## A077346.P10853219310815388941

`A077348(n+1)²`
-/

namespace A077346.P10853219310815388941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077348 (n + 1) ^ 2

end

end A077346.P10853219310815388941

/-! ## A077346.P14800314284610859310

`A077348(n+1)^(A000007(n)+2)`
-/

namespace A077346.P14800314284610859310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077348 (n + 1) : ℚ) ^ (A000007 n + 2 : ℤ)

end

end A077346.P14800314284610859310

/-! ## A077346.P15053120297265178713

`A077348(n+1)^gcd(2, A132759(n))`
-/

namespace A077346.P15053120297265178713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077348 (n + 1) ^ Int.gcd 2 (A132759 n)

end

end A077346.P15053120297265178713

/-! ## A077346.P3707511500979762382

`A000290(and(-1, A077348(n+1)))`
-/

namespace A077346.P3707511500979762382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.land (-1) (A077348 (n + 1))).toNat

end

end A077346.P3707511500979762382

/-! ## A077346.P2000343496811006400

`A002620(2*A077348(n+1))`
-/

namespace A077346.P2000343496811006400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A077348 (n + 1)).toNat

end

end A077346.P2000343496811006400

/-! ## A077346.P10424363065355714861

`A018796(A077348(n+1)^2)`
-/

namespace A077346.P10424363065355714861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018796 (A077348 (n + 1) ^ 2).toNat

end

end A077346.P10424363065355714861

/-! ## A077346.P4754342993433934820

`A018796(A077348(n+1)*A077348(n+1))`
-/

namespace A077346.P4754342993433934820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018796 (A077348 (n + 1) * A077348 (n + 1)).toNat

end

end A077346.P4754342993433934820

/-!
# A077347: Final terms of rows of A077346.

The programs for A077347, there is no canonical definition to state claims against.
-/

/-! ## A077347.P9839191432315920780

`A077349(n+1)²`
-/

namespace A077347.P9839191432315920780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077349 (n + 1) ^ 2

end

end A077347.P9839191432315920780

/-! ## A077347.P12138460000900064563

`A077349(n+1)^A020639(2*(n+2))`
-/

namespace A077347.P12138460000900064563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077349 (n + 1) : ℚ) ^ (A020639 (2 * (n + 2)) : ℤ)

end

end A077347.P12138460000900064563

/-! ## A077347.P5070147175626668976

`A077349(n+1)*A077349(-xor(n, -1))`
-/

namespace A077347.P5070147175626668976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077349 (n + 1) * A077349 (-Int.xor (n : ℤ) (-1)).toNat

end

end A077347.P5070147175626668976

/-! ## A077347.P4517970530675234552

`A077349(A000027(n+1))*A077349(n+1)`
-/

namespace A077347.P4517970530675234552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077349 (A000027 (n + 1)).toNat * A077349 (n + 1)

end

end A077347.P4517970530675234552

/-! ## A077347.P14019716091319558721

`A077349(n+1)^A000005(A000040(n+1))`
-/

namespace A077347.P14019716091319558721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077349 (n + 1) : ℚ) ^ (A000005 (A000040 (n + 1)).toNat : ℤ)

end

end A077347.P14019716091319558721

/-! ## A077347.P3824581659316035351

`A077349(n+1)^A000005(A002144(n+1))`
-/

namespace A077347.P3824581659316035351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077349 (n + 1) : ℚ) ^ (A000005 (A002144 (n + 1)).toNat : ℤ)

end

end A077347.P3824581659316035351

/-! ## A077347.P5380453401577092163

`A077349(n+1)^A000005(A077316(n+1))`
-/

namespace A077347.P5380453401577092163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077349 (n + 1) : ℚ) ^ (A000005 (A077316 (n + 1)).toNat : ℤ)

end

end A077347.P5380453401577092163

/-! ## A077347.P8661288090755222873

`A077349(n+1)^A000005(A077359(n+1))`
-/

namespace A077347.P8661288090755222873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077349 (n + 1) : ℚ) ^ (A000005 (A077359 (n + 1)).toNat : ℤ)

end

end A077347.P8661288090755222873

/-! ## A077347.P16717999358637899640

`A077346(∑[n+1])`
-/

namespace A077347.P16717999358637899640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077346 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077347.P16717999358637899640

/-! ## A077347.P12587764077723929858

`record[A077346(A038722(n+1))]`
-/

namespace A077347.P12587764077723929858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077346 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077347.P12587764077723929858

/-! ## A077347.P13069981714079177636

`lcm(1-and(2, n), A077346(A000217(n+1)))`
-/

namespace A077347.P13069981714079177636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A077346 (A000217 (n + 1)).toNat)

end

end A077347.P13069981714079177636

/-! ## A077347.P8393798578963595334

`lcm(A057077(n), A077346(A000217(n+1)))`
-/

namespace A077347.P8393798578963595334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A077346 (A000217 (n + 1)).toNat)

end

end A077347.P8393798578963595334

/-! ## A077347.P9347253317278985283

`A077348(∑[n+1])²`
-/

namespace A077347.P9347253317278985283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077348 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A077347.P9347253317278985283

/-!
# A077348: a(n) = A077346(n)^(1/2).

The programs for A077348, there is no canonical definition to state claims against.
-/

/-! ## A077348.P1331519524860887403

`A077346(n+1)^(1/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077348.P1331519524860887403
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A077346 (n + 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A077348.P1331519524860887403

/-! ## A077348.P6228451151004731857

`sqrt(A077346(n+1))`
-/

namespace A077348.P6228451151004731857
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A077346 (n + 1) : ℝ)

end

end A077348.P6228451151004731857

/-! ## A077348.P13645803336279035497

`A000027(root(A077346(n+1), 2))`
-/

namespace A077348.P13645803336279035497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A077346 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A077348.P13645803336279035497

/-! ## A077348.P5672500126485213716

`root(A077346(n+1), A020639(2*(n+1)))`
-/

namespace A077348.P5672500126485213716
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A077346 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A077348.P5672500126485213716

/-! ## A077348.P5462299490767896620

`root(A077346(n+1), A269735(2*n+3))`
-/

namespace A077348.P5462299490767896620
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A077346 (n + 1) : ℝ) ^ (1 / (A269735 (2 * n + 3) : ℝ))

end

end A077348.P5462299490767896620

/-!
# A077349: a(n) = A077347(n)^(1/2).

The programs for A077349, there is no canonical definition to state claims against.
-/

/-! ## A077349.P5047657209004890418

`A077347(n+1)^(1/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077349.P5047657209004890418
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A077347 (n + 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A077349.P5047657209004890418

/-! ## A077349.P1250372160434340464

`sqrt(A077347(n+1))`
-/

namespace A077349.P1250372160434340464
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A077347 (n + 1) : ℝ)

end

end A077349.P1250372160434340464

/-! ## A077349.P1753202328992172871

`sqrt(A077346(∑[n+1]))`
-/

namespace A077349.P1753202328992172871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A077346 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A077349.P1753202328992172871

/-! ## A077349.P344003935089396459

`A077348(∑[n+1])`
-/

namespace A077349.P344003935089396459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077348 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077349.P344003935089396459

/-! ## A077349.P8333825772713781614

`record[gcd(A077348(n+1), A122286(n))]`
-/

namespace A077349.P8333825772713781614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A077348 (n + 1)) (A122286 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077349.P8333825772713781614

/-!
# A077351: Smallest multiple of n using all the digits of all its divisors (a permutation of the concatenation of its divisors), or 0 if no such number exists.

The programs for A077351, there is no canonical definition to state claims against.
-/

/-! ## A077351.P9586048230630557323

`A030302(A001764(n))*A037278(n+1)`
-/

namespace A077351.P9586048230630557323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (A001764 n).toNat * A037278 (n + 1)

end

end A077351.P9586048230630557323

/-! ## A077351.P8854372588401713006

`A037278(n+1)*A128174(A000142(n))`
-/

namespace A077351.P8854372588401713006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (n + 1) * A128174 (A000142 n).toNat

end

end A077351.P8854372588401713006

/-! ## A077351.P15887853527111976039

`A037278(n+1)*A125999(A008598(n))`
-/

namespace A077351.P15887853527111976039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (n + 1) * A125999 (A008598 n).toNat

end

end A077351.P15887853527111976039

/-! ## A077351.P18088526002024612344

`A037278(n+1)*A054521(A091148(n))`
-/

namespace A077351.P18088526002024612344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (n + 1) * A054521 (A091148 n).toNat

end

end A077351.P18088526002024612344

/-!
# A077352: a(n) = (concatenation in ascending order of divisors of 2^n)/2^n.

The programs for A077352, there is no canonical definition to state claims against.
-/

/-! ## A077352.P800261919697080966

`A045507(n)/A000079(n)`
-/

namespace A077352.P800261919697080966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045507 n : ℚ) / (A000079 n : ℚ)

end

end A077352.P800261919697080966

/-! ## A077352.P7007299471986671063

`A045507(n)/record[A059268(n)]`
-/

namespace A077352.P7007299471986671063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045507 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A077352.P7007299471986671063

/-! ## A077352.P7674264762958375240

`A045507(n)/record[A130321(n)]`
-/

namespace A077352.P7674264762958375240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045507 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A077352.P7674264762958375240

/-! ## A077352.P14801793613217838956

`A045507(n)/A102363(A000217(n))`
-/

namespace A077352.P14801793613217838956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045507 n : ℚ) / (A102363 (A000217 n).toNat : ℚ)

end

end A077352.P14801793613217838956

/-! ## A077352.P18030495664139521810

`A078810(2^n)`
-/

namespace A077352.P18030495664139521810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078810 (2 ^ n)

end

end A077352.P18030495664139521810

/-!
# A077353: a(n) = (concatenation in ascending order of divisors of 5^n)/5^n.

The programs for A077353, the canonical program `A077353.P7669968731459567172` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077353 has offset 0).

The definition of A077353 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077353.P7669968731459567172

`1+10^A055642(5^n)/5*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A077353

/-- `1+10^A055642(5^n)/5*a(n-1)` -/
def P7669968731459567172.Spec : Prop :=
  ∀ n, P7669968731459567172.a n = (A077353 n : ℚ)

end A077353

/-!
# A077354: a(n) = Sum_{i=n+1..2n} prime(i) - Sum_{i=1..n} prime(i).

The programs for A077354, the canonical program `A077354.P15018745007241807855` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077354 has offset 1).

The definition of A077354 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131740, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A077354.P15018745007241807855

`A131740(n+1)-A007504(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A077354

/-- `A131740(n+1)-A007504(n+1)` -/
def P15018745007241807855.Spec : Prop :=
  ∀ n, P15018745007241807855.a n = A077354 (n + 1)

theorem P15018745007241807855.correct : P15018745007241807855.Spec := by
  intro n
  simp only [A077354, Nat.add_sub_cancel]

end A077354

/-! ## A077354.P745367784902904276

`∑{#}[n, A000040(n+1+#+1)-A000040(#+1)]`
-/

namespace A077354.P745367784902904276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A000040 (n + 1 + (k + 1)) - A000040 (k + 1))

end

end A077354.P745367784902904276

namespace A077354

/-- `∑{#}[n, A000040(n+1+#+1)-A000040(#+1)]` -/
def P745367784902904276.Spec : Prop :=
  ∀ n, P745367784902904276.a n = A077354 (n + 1)

end A077354

/-! ## A077354.P6910433858329045032

`A109722(n+1)-(A007504(n+1)+A007504(n+1))`
-/

namespace A077354.P6910433858329045032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109722 (n + 1) - (A007504 (n + 1) + A007504 (n + 1))

end

end A077354.P6910433858329045032

namespace A077354

/-- `A109722(n+1)-(A007504(n+1)+A007504(n+1))` -/
def P6910433858329045032.Spec : Prop :=
  ∀ n, P6910433858329045032.a n = A077354 (n + 1)

end A077354

/-! ## A077354.P2097593096086254327

`A115298(Δ[n²])`
-/

namespace A077354.P2097593096086254327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115298 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A077354.P2097593096086254327

namespace A077354

/-- `A115298(Δ[n²])` -/
def P2097593096086254327.Spec : Prop :=
  ∀ n, P2097593096086254327.a n = A077354 (n + 1)

end A077354

/-! ## A077354.P8290305058064590130

`or(1, A115298(2*n+1))`
-/

namespace A077354.P8290305058064590130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A115298 (2 * n + 1))

end

end A077354.P8290305058064590130

namespace A077354

/-- `or(1, A115298(2*n+1))` -/
def P8290305058064590130.Spec : Prop :=
  ∀ n, P8290305058064590130.a n = A077354 (n + 1)

end A077354

/-! ## A077354.P10687424415764813773

`record[A115298(and(n, n+1)+1)]`
-/

namespace A077354.P10687424415764813773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115298 (Nat.land n (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077354.P10687424415764813773

namespace A077354

/-- `record[A115298(and(n, n+1)+1)]` -/
def P10687424415764813773.Spec : Prop :=
  ∀ n, P10687424415764813773.a n = A077354 (n + 1)

end A077354

/-! ## A077354.P6896780434410773357

`record[A115298(n+1)/(-1)^n]`
-/

namespace A077354.P6896780434410773357
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115298 (n + 1) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077354.P6896780434410773357

namespace A077354

/-- `record[A115298(n+1)/(-1)^n]` -/
def P6896780434410773357.Spec : Prop :=
  ∀ n, P6896780434410773357.a n = (A077354 (n + 1) : ℚ)

end A077354

/-! ## A077354.P8649268450037125462

`record[A115298(A000265(n+1))]`
-/

namespace A077354.P8649268450037125462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115298 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077354.P8649268450037125462

namespace A077354

/-- `record[A115298(A000265(n+1))]` -/
def P8649268450037125462.Spec : Prop :=
  ∀ n, P8649268450037125462.a n = A077354 (n + 1)

end A077354

/-!
# A077355: Squares whose internal digits form a square.

The programs for A077355, there is no canonical definition to state claims against.
-/

/-! ## A077355.P1825036807976001907

`A077487(A028310(n))%A000027(A000712(n))`
-/

namespace A077355.P1825036807976001907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077487 (A028310 n).toNat) (A000027 (A000712 n).toNat)

end

end A077355.P1825036807976001907

/-! ## A077355.P7148370536967541925

`A077487(A028310(n))-A008683(A077487(n+1))`
-/

namespace A077355.P7148370536967541925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077487 (A028310 n).toNat - A008683 (A077487 (n + 1)).toNat

end

end A077355.P7148370536967541925

/-! ## A077355.P4874700024563504516

`lt[A222275(n+1), A205402(n+1)]²`
-/

namespace A077355.P4874700024563504516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205402 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A077355.P4874700024563504516

/-! ## A077355.P16976699016709830669

`A215009(n+1)^A093663(A093663(n+1))`
-/

namespace A077355.P16976699016709830669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215009 (n + 1) : ℚ) ^ (A093663 (A093663 (n + 1)).toNat : ℤ)

end

end A077355.P16976699016709830669

/-! ## A077355.P15851675105538870687

`A000290(lt[A359231(n+1), A076983(3*(n+1))])`
-/

namespace A077355.P15851675105538870687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076983 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A077355.P15851675105538870687

/-!
# A077356: Squares whose external digits (MSD and LSD) form a square. Or squares from which deleting the internal digits leaves a square.

The programs for A077356, there is no canonical definition to state claims against.
-/

/-! ## A077356.P1316375606298011953

`or(n, A321936(A036978(n+1))²)²`
-/

namespace A077356.P1316375606298011953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A321936 (A036978 (n + 1)).toNat ^ 2) ^ 2

end

end A077356.P1316375606298011953

/-! ## A077356.P12954752803099992994

`eq[A024163(n+1), A024165(n+2)]²`
-/

namespace A077356.P12954752803099992994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024165 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A077356.P12954752803099992994

/-! ## A077356.P908741653124618339

`lt[A000010(n+1), A165116(3*(n+1))]²`
-/

namespace A077356.P908741653124618339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165116 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A077356.P908741653124618339

/-! ## A077356.P13104931355788652041

`A077357(A043316(n+1))`
-/

namespace A077356.P13104931355788652041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077357 (A043316 (n + 1)).toNat

end

end A077356.P13104931355788652041

/-! ## A077356.P13625383124344181436

`A077357(A044913(n+1))`
-/

namespace A077356.P13625383124344181436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077357 (A044913 (n + 1)).toNat

end

end A077356.P13625383124344181436

/-!
# A077357: Squares whose external digits (MSD and LSD) as well as internal digits form squares.

The programs for A077357, there is no canonical definition to state claims against.
-/

/-! ## A077357.P15346740727587655613

`∩[A077355(n+1), A077356(n+1)]`
-/

namespace A077357.P15346740727587655613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077357.P15346740727587655613

/-! ## A077357.P16245444340702228902

`lt[A249745(2*n+1), 24]²`
-/

namespace A077357.P16245444340702228902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249745 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2

end

end A077357.P16245444340702228902

/-! ## A077357.P3280430231630734104

`lt[A064216(3*n+1), 48]²`
-/

namespace A077357.P3280430231630734104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  48

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2

end

end A077357.P3280430231630734104

/-! ## A077357.P11104764843499173120

`A052046(∑[A048804(C(n, 9)+1)])`
-/

namespace A077357.P11104764843499173120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048804 (Nat.choose n 9 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052046 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A077357.P11104764843499173120

/-! ## A077357.P10353273297476817074

`eq[A032560(n+1), A241183(n+1)]²`
-/

namespace A077357.P10353273297476817074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241183 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A077357.P10353273297476817074

/-!
# A077359: Primes whose external digits form a prime. Or primes from which deleting the internal digits leaves a prime.

The programs for A077359, there is no canonical definition to state claims against.
-/

/-! ## A077359.P4147670444891911204

`A000040(lt[A025899(n+1), A064415(2*n+1)])`
-/

namespace A077359.P4147670444891911204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A077359.P4147670444891911204

/-! ## A077359.P13405827140376574445

`A000040(lt[A196933(n), A274924(n)])`
-/

namespace A077359.P13405827140376574445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A077359.P13405827140376574445

/-! ## A077359.P6706215600632395180

`A000040(lt[val(A185700(2*(n+2))+1, 6), 2]+1)`
-/

namespace A077359.P6706215600632395180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A185700 (2 * (n + 2)) + 1).toNat 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A077359.P6706215600632395180

/-! ## A077359.P17007131389013846038

`A000040(lt[A108917(n), A028387(n)])`
-/

namespace A077359.P17007131389013846038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108917 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A077359.P17007131389013846038

/-! ## A077359.P17725028012605471496

`A000040(lt[A275972(n), A055932(n+1)])`
-/

namespace A077359.P17725028012605471496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275972 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A077359.P17725028012605471496

/-!
# A077360: Primes whose external digits as well as internal digits form a prime.

The programs for A077360, there is no canonical definition to state claims against.
-/

/-! ## A077360.P9667054786617971982

`∩[A069686(n+1), A077359(n+1)]`
-/

namespace A077360.P9667054786617971982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077360.P9667054786617971982

/-! ## A077360.P2472871647474700422

`∑{p}[A190731(n+5)², #]`
-/

namespace A077360.P2472871647474700422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190731 (n + 5) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A077360.P2472871647474700422

/-! ## A077360.P65395107555815903

`∏{p}[A190731(n+5)², A006530(#)]`
-/

namespace A077360.P65395107555815903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190731 (n + 5) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A006530 p

end

end A077360.P65395107555815903

/-! ## A077360.P11973934856152715902

`A006530(A028310(3*n+4)*A190731(n+5))`
-/

namespace A077360.P11973934856152715902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028310 (3 * n + 4) * A190731 (n + 5)).toNat

end

end A077360.P11973934856152715902

/-! ## A077360.P11272017367108798880

`A006530(A000040(n+1)*A190731(n+5))`
-/

namespace A077360.P11272017367108798880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000040 (n + 1) * A190731 (n + 5)).toNat

end

end A077360.P11272017367108798880

/-!
# A077361: Smallest n-digit prime whose external digits as well as internal digits form a prime, or 0 if no such number exists.

The programs for A077361, there is no canonical definition to state claims against.
-/

/-! ## A077361.P8328545438969612926

`A001414(or(A077379(n+1), A236954(n)))`
-/

namespace A077361.P8328545438969612926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (Int.lor (A077379 (n + 1)) (A236954 n)).toNat

end

end A077361.P8328545438969612926

/-!
# A077363: Smallest n-digit square whose external digits as well as internal digits form a square, or 0 if no such number exists.

The programs for A077363, there is no canonical definition to state claims against.
-/

/-! ## A077363.P8680278045920348868

`A255680(A099626(n+1)²)`
-/

namespace A077363.P8680278045920348868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255680 (A099626 (n + 1) ^ 2).toNat

end

end A077363.P8680278045920348868

/-!
# A077365: Sum of products of factorials of parts in all partitions of n.

The programs for A077365, there is no canonical definition to state claims against.
-/

/-! ## A077365.P8174212731763145643

`A110654(A307401(n)+A005651(n))`
-/

namespace A077365.P8174212731763145643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A307401 n + A005651 n).toNat

end

end A077365.P8174212731763145643

/-! ## A077365.P12760041500019419365

`or(A094573(A036626(n)), A107895(n))`
-/

namespace A077365.P12760041500019419365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A094573 (A036626 n).toNat) (A107895 n)

end

end A077365.P12760041500019419365

/-! ## A077365.P18402387329998857675

`or(A107895(n), A299203(A320430(n)))`
-/

namespace A077365.P18402387329998857675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A107895 n) (A299203 (A320430 n).toNat)

end

end A077365.P18402387329998857675

/-!
# A077366: Triangular numbers whose internal digits form a triangular number. Or triangular number such that deleting the MSD and LSD leaves a triangular number.

The programs for A077366, there is no canonical definition to state claims against.
-/

/-! ## A077366.P14997436476599928618

`∪[A069702(n+1), A077368(n+1)]`
-/

namespace A077366.P14997436476599928618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A077366.P14997436476599928618

/-! ## A077366.P5701614769677951769

`A000217(lt[A334313(n+1), A340569(n+4)])`
-/

namespace A077366.P5701614769677951769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340569 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A077366.P5701614769677951769

/-! ## A077366.P14585274713028796874

`A000217(lt[A274879(2*n+1), A184763(n+1)])`
-/

namespace A077366.P14585274713028796874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274879 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A077366.P14585274713028796874

/-! ## A077366.P6736551976410847553

`A000217(lt[A123258(n+1), A013929(2*n+5)])`
-/

namespace A077366.P6736551976410847553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A077366.P6736551976410847553

/-! ## A077366.P12627399620725246344

`record[∑[n]/A007318(A298848(n))]`
-/

namespace A077366.P12627399620725246344
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / (A007318 (A298848 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077366.P12627399620725246344

/-!
# A077367: Triangular numbers whose external digits form a triangular number. Or triangular number whose MSD and LSD form a triangular number.

The programs for A077367, there is no canonical definition to state claims against.
-/

/-! ## A077367.P2398434536362075489

`A000217(lt[A085169(n), 18])`
-/

namespace A077367.P2398434536362075489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085169 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A077367.P2398434536362075489

/-! ## A077367.P16805530955748024807

`A000217(lt[A122282(n), 18])`
-/

namespace A077367.P16805530955748024807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122282 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A077367.P16805530955748024807

/-! ## A077367.P8326148654042979496

`A000217(lt[A071324(n+1), 13])`
-/

namespace A077367.P8326148654042979496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071324 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A077367.P8326148654042979496

/-! ## A077367.P14681261451083707535

`A000217(lt[A302309(n+1), 22])`
-/

namespace A077367.P14681261451083707535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A077367.P14681261451083707535

/-! ## A077367.P11762522763839264247

`A000217(lt[A302877(n+1), 22])`
-/

namespace A077367.P11762522763839264247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A077367.P11762522763839264247

/-!
# A077368: Triangular numbers whose external digits as well as internal digits form triangular numbers.

The programs for A077368, there is no canonical definition to state claims against.
-/

/-! ## A077368.P12314445881552521185

`∩[A077366(n+1), A077367(n+1)]`
-/

namespace A077368.P12314445881552521185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077368.P12314445881552521185

/-! ## A077368.P6399148739151726417

`C(∑[A093602(A184955(n))], 2)`
-/

namespace A077368.P6399148739151726417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093602 ((A184955 n).toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A077368.P6399148739151726417

/-! ## A077368.P14290407091963875310

`A000217(lt[A308180(2*n+1), 32])`
-/

namespace A077368.P14290407091963875310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308180 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A077368.P14290407091963875310

/-! ## A077368.P2798801995805389576

`A000217(lt[A000009(n), A244154(n+1)])`
-/

namespace A077368.P2798801995805389576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244154 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A077368.P2798801995805389576

/-! ## A077368.P7493543060469691743

`A000217(lt[A354680(n+1), A158633(n+1)])`
-/

namespace A077368.P7493543060469691743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A077368.P7493543060469691743

/-!
# A077371: Fibonacci numbers whose internal digits form a Fibonacci number. Equivalently, Fibonacci numbers from which deleting the MSD and LSD leaves a Fibonacci number.

The programs for A077371, there is no canonical definition to state claims against.
-/

/-! ## A077371.P3191760239503628971

`A000045(comp[3^n+11])`
-/

namespace A077371.P3191760239503628971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n + 11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A077371.P3191760239503628971

/-! ## A077371.P5882828998536145156

`A247309(lt[tan(n+1)², 2])`
-/

namespace A077371.P5882828998536145156
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n + 1 : ℝ) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247309 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n)

end

end A077371.P5882828998536145156

/-! ## A077371.P1569456155712512673

`A103609(record[A134187(n)])`
-/

namespace A077371.P1569456155712512673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A077371.P1569456155712512673

/-! ## A077371.P2347194270813536289

`A212804(A129304(n+1))`
-/

namespace A077371.P2347194270813536289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A129304 (n + 1)).toNat

end

end A077371.P2347194270813536289

/-!
# A077372: Fibonacci numbers whose external digits form a Fibonacci number. Or Fibonacci numbers whose MSD and LSD form a Fibonacci number.

The programs for A077372, there is no canonical definition to state claims against.
-/

/-! ## A077372.P6153294650943214914

`A000045(lt[A260209(n+1), A066531(n+1)])`
-/

namespace A077372.P6153294650943214914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A077372.P6153294650943214914

/-! ## A077372.P2335651048944291537

`A000045(A243020(n+1)-1)`
-/

namespace A077372.P2335651048944291537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A243020 (n + 1) - 1).toNat

end

end A077372.P2335651048944291537

/-! ## A077372.P16962810431653761909

`A000045(A185284(3*n)+n)`
-/

namespace A077372.P16962810431653761909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A185284 (3 * n) + (n : ℤ)).toNat

end

end A077372.P16962810431653761909

/-! ## A077372.P10310665486602391570

`A000045(C(A083292(n), 13)+n)`
-/

namespace A077372.P10310665486602391570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose (A083292 n).toNat 13 + n)

end

end A077372.P10310665486602391570

/-! ## A077372.P13352939617174230706

`A000045(floor(A185254(n+1)/28)+n)`
-/

namespace A077372.P13352939617174230706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (⌊(A185254 (n + 1) : ℚ) / 28⌋ + (n : ℤ)).toNat

end

end A077372.P13352939617174230706

/-!
# A077373: Fibonacci numbers whose external digits as well as internal digits form a Fibonacci number.

The programs for A077373, there is no canonical definition to state claims against.
-/

/-! ## A077373.P17791785033190463084

`round(ϕ^(n-5/3))`
-/

namespace A077373.P17791785033190463084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ ((n : ℚ) - (5 : ℚ) / 3 : ℝ))

end

end A077373.P17791785033190463084

/-! ## A077373.P3446492241951564999

`floor(ϕ^n/sqrt(5))+n%2`
-/

namespace A077373.P3446492241951564999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)⌋ + ((n % 2 : ℕ) : ℤ)

end

end A077373.P3446492241951564999

/-!
# A077374: Odd numbers m whose abundance by absolute value is at most 10, that is, -10 <= sigma(m) - 2m <= 10.

The programs for A077374, there is no canonical definition to state claims against.
-/

/-! ## A077374.P15487484627562530928

`∩[2*n+1, A108864(n+1)]`
-/

namespace A077374.P15487484627562530928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077374.P15487484627562530928

/-! ## A077374.P5973988577964960963

`2*lt[A109883(2*n+1), 11]+1`
-/

namespace A077374.P5973988577964960963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109883 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A077374.P5973988577964960963

/-! ## A077374.P5908231151289272269

`record[A093178(A108864(n+1))]`
-/

namespace A077374.P5908231151289272269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A108864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077374.P5908231151289272269

/-! ## A077374.P16578605250694435333

`filter[A108864(n+1), A000035(#)]`
-/

namespace A077374.P16578605250694435333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A077374.P16578605250694435333

/-! ## A077374.P8007170389857721567

`∩[A108864(n+1), A340718(n)]`
-/

namespace A077374.P8007170389857721567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340718 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077374.P8007170389857721567

/-!
# A077375: Numbers k such that 2^k + prime(k) is prime.

The programs for A077375, there is no canonical definition to state claims against.
-/

/-! ## A077375.P17875774640970049828

`A000720(A242944(n+1))`
-/

namespace A077375.P17875774640970049828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A242944 (n + 1)).toNat

end

end A077375.P17875774640970049828

/-! ## A077375.P3350893750634966922

`A061395(2*A242944(n+1))`
-/

namespace A077375.P3350893750634966922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A242944 (n + 1)).toNat

end

end A077375.P3350893750634966922

/-! ## A077375.P6154585395831955926

`A061395(lcm(2, A242944(n+1)))`
-/

namespace A077375.P6154585395831955926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A242944 (n + 1)))

end

end A077375.P6154585395831955926

/-!
# A077376: Squarefree numbers whose internal digits form a squarefree number.

The programs for A077376, there is no canonical definition to state claims against.
-/

/-! ## A077376.P5221695187451580713

`A005117(A351870(n)+76)`
-/

namespace A077376.P5221695187451580713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A351870 n + 76).toNat

end

end A077376.P5221695187451580713

/-! ## A077376.P4147990887118079872

`eq[3, or(A284345(n)², A178334(n))]`
-/

namespace A077376.P4147990887118079872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A284345 n ^ 2) (A178334 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A077376.P4147990887118079872

/-! ## A077376.P11542035696324484436

`eq[A027187(A178334(n)), A255326(n)]`
-/

namespace A077376.P11542035696324484436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 (A178334 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077376.P11542035696324484436

/-! ## A077376.P3583929694736647386

`eq[A098742(A178334(n)), A284345(n)]`
-/

namespace A077376.P3583929694736647386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098742 (A178334 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284345 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077376.P3583929694736647386

/-!
# A077377: Squarefree numbers whose external digits form a squarefree number.

The programs for A077377, there is no canonical definition to state claims against.
-/

/-! ## A077377.P16376136172210822850

`eq[A105570(n), A151878(A001414(n+1))]`
-/

namespace A077377.P16376136172210822850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 (A001414 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077377.P16376136172210822850

/-! ## A077377.P7783145337362043253

`eq[A105570(n), A151878(A020500(n+1))]`
-/

namespace A077377.P7783145337362043253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 (A020500 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077377.P7783145337362043253

/-! ## A077377.P2655273667499493077

`record[A007947(n+1)-A151878(A273283(n+2))]`
-/

namespace A077377.P2655273667499493077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) - A151878 (A273283 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077377.P2655273667499493077

/-! ## A077377.P4133353646488749686

`record[A007947(n+1)-A151878(A273288(n+2))]`
-/

namespace A077377.P4133353646488749686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) - A151878 (A273288 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077377.P4133353646488749686

/-! ## A077377.P4015294147951339741

`record[A007947(n+1)-A151878(A273289(n+2))]`
-/

namespace A077377.P4015294147951339741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) - A151878 (A273289 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077377.P4015294147951339741

/-! ## A077377.P15192028684404363598

`record[A007947(n+1)/A118626(n+1)!]`
-/

namespace A077377.P15192028684404363598
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (Nat.factorial (A118626 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077377.P15192028684404363598

/-!
# A077378: Squarefree numbers whose external as well as internal digits form a squarefree number.

The programs for A077378, there is no canonical definition to state claims against.
-/

/-! ## A077378.P10731373096123739834

`∩[A077376(n+1), A077377(n+1)]`
-/

namespace A077378.P10731373096123739834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077378.P10731373096123739834

/-! ## A077378.P8934232658456964195

`A077376(A032555(n+2))`
-/

namespace A077378.P8934232658456964195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077376 (A032555 (n + 2)).toNat

end

end A077378.P8934232658456964195

/-! ## A077378.P14058844696599391792

`A077376(A032559(n+2))`
-/

namespace A077378.P14058844696599391792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077376 (A032559 (n + 2)).toNat

end

end A077378.P14058844696599391792

/-! ## A077378.P14294583769794318151

`A077376(A077739(n+2))`
-/

namespace A077378.P14294583769794318151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077376 (A077739 (n + 2)).toNat

end

end A077378.P14294583769794318151

/-!
# A077381: Number of squarefree numbers between successive squares (exclusive).

The programs for A077381, the canonical program `A077381.P14666678183193705887` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077381 has offset 1).

The definition of A077381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077381.P11704768512975338756

`Δ[ceil(A278100(n+1)+acot(n))]`
-/

namespace A077381.P11704768512975338756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A278100 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077381.P11704768512975338756

namespace A077381

/-- `Δ[ceil(A278100(n+1)+acot(n))]` -/
def P11704768512975338756.Spec : Prop :=
  ∀ n, P11704768512975338756.a n = A077381 (n + 1)

end A077381

/-! ## A077381.P14666678183193705887

`Δ[A278100(n+1)+A000007(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A077381

/-- `Δ[A278100(n+1)+A000007(n)]` -/
def P14666678183193705887.Spec : Prop :=
  ∀ n, P14666678183193705887.a n = A077381 (n + 1)

theorem P14666678183193705887.correct : P14666678183193705887.Spec := by
  intro n
  simp only [A077381, Nat.add_sub_cancel]

end A077381

/-! ## A077381.P15585586899410318708

`Δ[A278100(n+1)-A057427(n)]`
-/

namespace A077381.P15585586899410318708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278100 (n + 1) - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077381.P15585586899410318708

namespace A077381

/-- `Δ[A278100(n+1)-A057427(n)]` -/
def P15585586899410318708.Spec : Prop :=
  ∀ n, P15585586899410318708.a n = A077381 (n + 1)

end A077381

/-! ## A077381.P10314522953264763839

`Δ[A013928((n+1)²+1)]`
-/

namespace A077381.P10314522953264763839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 ((n + 1) ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077381.P10314522953264763839

namespace A077381

/-- `Δ[A013928((n+1)²+1)]` -/
def P10314522953264763839.Spec : Prop :=
  ∀ n, P10314522953264763839.a n = A077381 (n + 1)

end A077381

/-! ## A077381.P14319475135949955234

`Δ[A107079((n+1)²+1)]`
-/

namespace A077381.P14319475135949955234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 ((n + 1) ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077381.P14319475135949955234

namespace A077381

/-- `Δ[A107079((n+1)²+1)]` -/
def P14319475135949955234.Spec : Prop :=
  ∀ n, P14319475135949955234.a n = A077381 (n + 1)

end A077381

/-! ## A077381.P16511404628383850989

`Δ[record[A013928(A160457(n))]]`
-/

namespace A077381.P16511404628383850989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A160457 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077381.P16511404628383850989

namespace A077381

/-- `Δ[record[A013928(A160457(n))]]` -/
def P16511404628383850989.Spec : Prop :=
  ∀ n, P16511404628383850989.a n = A077381 (n + 1)

end A077381

/-! ## A077381.P8442666962500485529

`Δ[A028310(A013928((n+1)²))]`
-/

namespace A077381.P8442666962500485529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A013928 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077381.P8442666962500485529

namespace A077381

/-- `Δ[A028310(A013928((n+1)²))]` -/
def P8442666962500485529.Spec : Prop :=
  ∀ n, P8442666962500485529.a n = A077381 (n + 1)

end A077381

/-! ## A077381.P12992828181070896270

`Δ[A072490((n+1)²)]`
-/

namespace A077381.P12992828181070896270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072490 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077381.P12992828181070896270

namespace A077381

/-- `Δ[A072490((n+1)²)]` -/
def P12992828181070896270.Spec : Prop :=
  ∀ n, P12992828181070896270.a n = A077381 (n + 1)

end A077381

/-! ## A077381.P10627781310241045272

`Δ[A091813((n+1)²)]`
-/

namespace A077381.P10627781310241045272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091813 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077381.P10627781310241045272

namespace A077381

/-- `Δ[A091813((n+1)²)]` -/
def P10627781310241045272.Spec : Prop :=
  ∀ n, P10627781310241045272.a n = A077381 (n + 1)

end A077381

/-! ## A077381.P15087733127513469768

`Δ[A262869(2*(n+1)²)]`
-/

namespace A077381.P15087733127513469768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077381.P15087733127513469768

namespace A077381

/-- `Δ[A262869(2*(n+1)²)]` -/
def P15087733127513469768.Spec : Prop :=
  ∀ n, P15087733127513469768.a n = A077381 (n + 1)

end A077381

/-!
# A077384: a(1) = 1, then add, multiply, subtract, multiply 2, 3, 4, 5; 6, 7, 8, 9; ... in that order.

The programs for A077384, there is no canonical definition to state claims against.
-/

/-! ## A077384.P4329595178685829977

`A004277(A185275(n))-A009001(n+1)`
-/

namespace A077384.P4329595178685829977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A185275 n).toNat - A009001 (n + 1)

end

end A077384.P4329595178685829977

/-!
# A077385: Triangle read by rows in which n-th row contains 2n-1 terms starting from n^0 to n^(n-1) in increasing order and then in decreasing order to n^0.

The programs for A077385, the canonical program `A077385.P17331936456348378182` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077385 has offset 1).

The definition of A077385 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3306 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077385.P17331936456348378182

`ceil(ceil(sqrt(n))^(A004737(n+1)-1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A077385

/-- `ceil(ceil(sqrt(n))^(A004737(n+1)-1))` -/
def P17331936456348378182.Spec : Prop :=
  ∀ n, P17331936456348378182.a n = A077385 (n + 1)

theorem P17331936456348378182.correct : P17331936456348378182.Spec := by
  intro n
  simp only [A077385, Nat.add_sub_cancel]

end A077385

/-! ## A077385.P4738974026702888970

`∑[char[n²]]^A053615(n-floor(sqrt(n)))`
-/

namespace A077385.P4738974026702888970
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A053615 (n - Nat.sqrt n) : ℤ)

end

end A077385.P4738974026702888970

namespace A077385

/-- `∑[char[n²]]^A053615(n-floor(sqrt(n)))` -/
def P4738974026702888970.Spec : Prop :=
  ∀ n, P4738974026702888970.a n = (A077385 (n + 1) : ℚ)

end A077385

/-! ## A077385.P3805508187652277163

`A003059(n+1)^(A004737(n+1)-1)`
-/

namespace A077385.P3805508187652277163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003059 (n + 1) : ℚ) ^ (A004737 (n + 1) - 1 : ℤ)

end

end A077385.P3805508187652277163

namespace A077385

/-- `A003059(n+1)^(A004737(n+1)-1)` -/
def P3805508187652277163.Spec : Prop :=
  ∀ n, P3805508187652277163.a n = (A077385 (n + 1) : ℚ)

end A077385

/-! ## A077385.P15765690614056896314

`ceil((n+1)^(tanh(7)/2))^A259361(A133823(n)^(2/3))`
-/

namespace A077385.P15765690614056896314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(n + 1 : ℝ) ^ (Real.tanh (7 : ℝ) / 2)⌉ : ℚ) ^ (A259361 (SequenceMachineLib.roundAway ((A133823 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ))).toNat : ℤ)

end

end A077385.P15765690614056896314

namespace A077385

/-- `ceil((n+1)^(tanh(7)/2))^A259361(A133823(n)^(2/3))` -/
def P15765690614056896314.Spec : Prop :=
  ∀ n, P15765690614056896314.a n = (A077385 (n + 1) : ℚ)

end A077385

/-! ## A077385.P13356412476100758808

`A135034(n)^A004197(A161983(n))`
-/

namespace A077385.P13356412476100758808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135034 n : ℚ) ^ (A004197 (A161983 n).toNat : ℤ)

end

end A077385.P13356412476100758808

namespace A077385

/-- `A135034(n)^A004197(A161983(n))` -/
def P13356412476100758808.Spec : Prop :=
  ∀ n, P13356412476100758808.a n = (A077385 (n + 1) : ℚ)

end A077385

/-!
# A077386: Sums of rows of triangle in A077385.

The programs for A077386, there is no canonical definition to state claims against.
-/

/-! ## A077386.P4850764806019908173

`(n+2)*((n+1)^n-1)/(abs(1-n)+1)+1`
-/

namespace A077386.P4850764806019908173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((((n + 1) ^ n : ℤ) - 1 : ℚ) / (|1 - (n : ℤ)| + 1 : ℚ)) + 1

end

end A077386.P4850764806019908173

/-! ## A077386.P15930778523035441940

`abs(A023037(n+1)+((n+1)^n-1)/(abs(1-n)+1))`
-/

namespace A077386.P15930778523035441940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((A023037 (n + 1) : ℚ) + (((n + 1) ^ n : ℤ) - 1 : ℚ) / (|1 - (n : ℤ)| + 1 : ℚ))|

end

end A077386.P15930778523035441940

/-! ## A077386.P5045387309990708198

`A067763(2*(n+1)²)`
-/

namespace A077386.P5045387309990708198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067763 (2 * (n + 1) ^ 2)

end

end A077386.P5045387309990708198

/-!
# A077388: Row sums of the triangle in A122820.

The programs for A077388, there is no canonical definition to state claims against.
-/

/-! ## A077388.P8767284981679397239

`(n+1)*A077389(n+1)`
-/

namespace A077388.P8767284981679397239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A077389 (n + 1)

end

end A077388.P8767284981679397239

/-! ## A077388.P16835192679125577163

`A077389(A029579(2*n))*A080513(2*n)`
-/

namespace A077388.P16835192679125577163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077389 (A029579 (2 * n)).toNat * A080513 (2 * n)

end

end A077388.P16835192679125577163

/-! ## A077388.P6746070861762980131

`A077389(A029579(2*n))*A158416(2*n)`
-/

namespace A077388.P6746070861762980131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077389 (A029579 (2 * n)).toNat * A158416 (2 * n)

end

end A077388.P6746070861762980131

/-! ## A077388.P1267415808962544628

`A077389(A080513(2*n))*A158416(2*n)`
-/

namespace A077388.P1267415808962544628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077389 (A080513 (2 * n)).toNat * A158416 (2 * n)

end

end A077388.P1267415808962544628

/-! ## A077388.P18228801610868884625

`gcd(A077389(A158416(2*n))*A158416(2*n), A000038(n))`
-/

namespace A077388.P18228801610868884625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A077389 (A158416 (2 * n)).toNat * A158416 (2 * n)) (A000038 n)

end

end A077388.P18228801610868884625

/-!
# A077389: Smallest integer that is the average of n consecutive primes.

The programs for A077389, there is no canonical definition to state claims against.
-/

/-! ## A077389.P12692986348705411346

`A077388(n+1)/(n+1)`
-/

namespace A077389.P12692986348705411346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077388 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A077389.P12692986348705411346

/-! ## A077389.P11562933861165400610

`abs(A077388(A008620(3*n))/xor(n, -1))`
-/

namespace A077389.P11562933861165400610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A077388 (A008620 (3 * n)).toNat : ℚ) / (Int.xor (n : ℤ) (-1) : ℚ)|

end

end A077389.P11562933861165400610

/-! ## A077389.P13076780788647909086

`floor(A077388(A008620(3*n))/A029579(2*n))`
-/

namespace A077389.P13076780788647909086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077388 (A008620 (3 * n)).toNat : ℚ) / (A029579 (2 * n) : ℚ)⌋

end

end A077389.P13076780788647909086

/-! ## A077389.P2874345290338618392

`ceil(A077388(A008620(3*n))/A080513(2*n))`
-/

namespace A077389.P2874345290338618392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077388 (A008620 (3 * n)).toNat : ℚ) / (A080513 (2 * n) : ℚ)⌉

end

end A077389.P2874345290338618392

/-! ## A077389.P17095539434214919100

`A132811(A031285(n))%A276504(2*(n+1))`
-/

namespace A077389.P17095539434214919100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132811 (A031285 n).toNat) (A276504 (2 * (n + 1)))

end

end A077389.P17095539434214919100

/-!
# A077390: Primes which leave primes at every step if most significant digit and least significant digit are deleted until a one digit or two digit prime is obtained.

The programs for A077390, there is no canonical definition to state claims against.
-/

/-! ## A077390.P15815899937564109107

`lt[A107909(A130891(n)), A343231(n)]`
-/

namespace A077390.P15815899937564109107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107909 (A130891 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343231 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A077390.P15815899937564109107

/-!
# A077391: Smallest n-digit prime which leaves a prime at every step if most significant digit and least significant digit are deleted until a one digit or two digit prime is obtained, or 0 if no such prime exists.

The programs for A077391, there is no canonical definition to state claims against.
-/

/-! ## A077391.P10524219194240101562

`A000040(or(A034494(n), A180119(n)))`
-/

namespace A077391.P10524219194240101562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.lor (A034494 n) (A180119 n)).toNat

end

end A077391.P10524219194240101562

/-!
# A077392: Number of n-node simple graphs having clique number 5.

The programs for A077392, there is no canonical definition to state claims against.
-/

/-! ## A077392.P16079094450121793207

`A025463(or(5, A215973(n)))`
-/

namespace A077392.P16079094450121793207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 (Int.lor 5 (A215973 n)).toNat

end

end A077392.P16079094450121793207

/-! ## A077392.P6501711523636422987

`A243823(A001349(n)*A140995(n))`
-/

namespace A077392.P6501711523636422987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243823 (A001349 n * A140995 n).toNat

end

end A077392.P6501711523636422987

/-! ## A077392.P14765544264921721639

`A025429(xor(A000142(n), A137959(n)))`
-/

namespace A077392.P14765544264921721639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 (Int.xor (A000142 n) (A137959 n)).toNat

end

end A077392.P14765544264921721639

/-! ## A077392.P10868400116450258095

`A243823(A001349(n)*A305313(n+1))`
-/

namespace A077392.P10868400116450258095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243823 (A001349 n * A305313 (n + 1)).toNat

end

end A077392.P10868400116450258095

/-!
# A077393: Number of n-node simple graphs having clique number 6.

The programs for A077393, there is no canonical definition to state claims against.
-/

/-! ## A077393.P12940959184163621540

`A076282(n+1)-A007489(A324088(n+1))`
-/

namespace A077393.P12940959184163621540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076282 (n + 1) - A007489 (A324088 (n + 1)).toNat

end

end A077393.P12940959184163621540

/-! ## A077393.P11011551624576772476

`A076318(n+1)-(A076317(n+1)+A007489(A324088(n+1)))`
-/

namespace A077393.P11011551624576772476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076318 (n + 1) - (A076317 (n + 1) + A007489 (A324088 (n + 1)).toNat)

end

end A077393.P11011551624576772476

/-!
# A077394: Number of n-node simple graphs having clique number 7.

The programs for A077394, there is no canonical definition to state claims against.
-/

/-! ## A077394.P4038871753938926647

`A205578(n+1)+∑[A217987(n+1)]`
-/

namespace A077394.P4038871753938926647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205578 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077394.P4038871753938926647

/-! ## A077394.P16179275412683928919

`A342266(C(n, 6)+1)`
-/

namespace A077394.P16179275412683928919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342266 (Nat.choose n 6 + 1)

end

end A077394.P16179275412683928919

/-! ## A077394.P17157021225445457313

`A194531(A137746(n))`
-/

namespace A077394.P17157021225445457313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194531 (A137746 n).toNat

end

end A077394.P17157021225445457313

/-! ## A077394.P1926272325397072512

`A242435(A161474(n))`
-/

namespace A077394.P1926272325397072512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242435 (A161474 n).toNat

end

end A077394.P1926272325397072512

/-! ## A077394.P1024777753324939255

`A342266(A212385(n))`
-/

namespace A077394.P1024777753324939255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342266 (A212385 n).toNat

end

end A077394.P1024777753324939255

/-!
# A077396: Square roots of squares arising in A076991.

The programs for A077396, there is no canonical definition to state claims against.
-/

/-! ## A077396.P7610438949440230704

`sqrt(A076093(n+1))`
-/

namespace A077396.P7610438949440230704
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A076093 (n + 1) : ℝ)

end

end A077396.P7610438949440230704

/-! ## A077396.P6654073843903675144

`root(A076093(n+1), A020639(16*(n+1)))`
-/

namespace A077396.P6654073843903675144
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A076093 (n + 1) : ℝ) ^ (1 / (A020639 (16 * (n + 1)) : ℝ))

end

end A077396.P6654073843903675144

/-! ## A077396.P10565575016261464092

`A033676(A076093(n+1)-1)+1`
-/

namespace A077396.P10565575016261464092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A076093 (n + 1) - 1).toNat + 1

end

end A077396.P10565575016261464092

/-! ## A077396.P4432147397321093003

`A033676(A076093(n+1)%A017366(n))`
-/

namespace A077396.P4432147397321093003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (Int.tmod (A076093 (n + 1)) (A017366 n)).toNat

end

end A077396.P4432147397321093003

/-! ## A077396.P4855774911680663464

`A000196(A076093(n+1)+1)`
-/

namespace A077396.P4855774911680663464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A076093 (n + 1) + 1).toNat

end

end A077396.P4855774911680663464

/-! ## A077396.P10840996272933394229

`A002260(2*A076093(n+1))`
-/

namespace A077396.P10840996272933394229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (2 * A076093 (n + 1)).toNat

end

end A077396.P10840996272933394229

/-!
# A077397: Expansion of (1+31*x-2*x^2-2*x^3)/(1-16*x^2+x^4).

The programs for A077397, the canonical program `A077397.P7456031142027412149` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077397 has offset 0).

The definition of A077397 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+31x-2x^2-2x^3)/(1-16x^2+x^4))` (program `A077397.P7456031142027412149`, by `A077397.P7456031142027412149.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077397.P7456031142027412149

`ogf((1+31x-2x^2-2x^3)/(1-16x^2+x^4))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A077397

/-- `ogf((1+31x-2x^2-2x^3)/(1-16x^2+x^4))` -/
def P7456031142027412149.Spec : Prop :=
  ∀ n, P7456031142027412149.a n = A077397 n

theorem P7456031142027412149.correct : P7456031142027412149.Spec := by
  intro n
  simp only [A077397]

end A077397

/-! ## A077397.P8898760876923826398

`16*a(n-2)-a(n-4)` with `a(0)=1, a(1)=31, a(2)=14, a(3)=494`
-/

namespace A077397.P8898760876923826398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 31, 14, 494] fun n a =>
  16 * a (n - 2) - a (n - 4)

end

end A077397.P8898760876923826398

namespace A077397

/-- `16*a(n-2)-a(n-4)` -/
def P8898760876923826398.Spec : Prop :=
  ∀ n, P8898760876923826398.a n = A077397 n

end A077397

/-! ## A077397.P2767605071968726467

`Δ[Δ[A077398(n)]]`
-/

namespace A077397.P2767605071968726467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077398 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077397.P2767605071968726467

namespace A077397

/-- `Δ[Δ[A077398(n)]]` -/
def P2767605071968726467.Spec : Prop :=
  ∀ n, P2767605071968726467.a n = A077397 n

end A077397

/-! ## A077397.P10853127510497212219

`A202638(xor(1, n+1)+1)`
-/

namespace A077397.P10853127510497212219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202638 (Nat.xor 1 (n + 1) + 1)

end

end A077397.P10853127510497212219

namespace A077397

/-- `A202638(xor(1, n+1)+1)` -/
def P10853127510497212219.Spec : Prop :=
  ∀ n, P10853127510497212219.a n = A077397 n

end A077397

/-! ## A077397.P16067222499583842127

`A202638(2*n%2+n+1)`
-/

namespace A077397.P16067222499583842127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202638 (2 * (n % 2) + (n + 1))

end

end A077397.P16067222499583842127

namespace A077397

/-- `A202638(2*n%2+n+1)` -/
def P16067222499583842127.Spec : Prop :=
  ∀ n, P16067222499583842127.a n = A077397 n

end A077397

/-! ## A077397.P7000471750948215454

`A202638(2*and(1, n)+n+1)`
-/

namespace A077397.P7000471750948215454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202638 (2 * Nat.land 1 n + (n + 1))

end

end A077397.P7000471750948215454

namespace A077397

/-- `A202638(2*and(1, n)+n+1)` -/
def P7000471750948215454.Spec : Prop :=
  ∀ n, P7000471750948215454.a n = A077397 n

end A077397

/-! ## A077397.P12312290221998466724

`A202638(and(2, n+n)+n+1)`
-/

namespace A077397.P12312290221998466724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202638 (Nat.land 2 (n + n) + (n + 1))

end

end A077397.P12312290221998466724

namespace A077397

/-- `A202638(and(2, n+n)+n+1)` -/
def P12312290221998466724.Spec : Prop :=
  ∀ n, P12312290221998466724.a n = A077397 n

end A077397

/-! ## A077397.P9870802872235730164

`A202638(A103889(n+2))`
-/

namespace A077397.P9870802872235730164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202638 (A103889 (n + 2)).toNat

end

end A077397.P9870802872235730164

namespace A077397

/-- `A202638(A103889(n+2))` -/
def P9870802872235730164.Spec : Prop :=
  ∀ n, P9870802872235730164.a n = A077397 n

end A077397

/-! ## A077397.P11048834238534115261

`A041009(2*A004442(n+1))`
-/

namespace A077397.P11048834238534115261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041009 (2 * A004442 (n + 1)).toNat

end

end A077397.P11048834238534115261

namespace A077397

/-- `A041009(2*A004442(n+1))` -/
def P11048834238534115261.Spec : Prop :=
  ∀ n, P11048834238534115261.a n = A077397 n

end A077397

/-!
# A077398: First member of the Diophantine pair (m,k) that satisfies 7*(m^2+m) = k^2+k; a(n)=m.

The programs for A077398, the canonical program `A077398.P7595743396008062868` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077398 has offset 0).

The definition of A077398 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077398.P5247150113580994858

`ogf((2x+3x^2+2x^3)/(1-x-16x^2+16x^3+x^4-x^5))`
-/

namespace A077398.P5247150113580994858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 3, 2] [1, -1, -16, 16, 1, -1] n

end

end A077398.P5247150113580994858

namespace A077398

/-- `ogf((2x+3x^2+2x^3)/(1-x-16x^2+16x^3+x^4-x^5))` -/
def P5247150113580994858.Spec : Prop :=
  ∀ n, P5247150113580994858.a n = A077398 n

end A077398

/-! ## A077398.P7595743396008062868

`16*a(n-2)-a(n-4)+7` with `a(0)=0, a(1)=2, a(2)=5, a(3)=39`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A077398

/-- `16*a(n-2)-a(n-4)+7` -/
def P7595743396008062868.Spec : Prop :=
  ∀ n, P7595743396008062868.a n = A077398 n

theorem P7595743396008062868.correct : P7595743396008062868.Spec := by
  intro n
  simp only [A077398]

end A077398

/-! ## A077398.P8407383308996953428

`floor(A077401(n)/sqrt(7))`
-/

namespace A077398.P8407383308996953428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077401 n : ℝ) / Real.sqrt (7 : ℝ)⌋

end

end A077398.P8407383308996953428

namespace A077398

/-- `floor(A077401(n)/sqrt(7))` -/
def P8407383308996953428.Spec : Prop :=
  ∀ n, P8407383308996953428.a n = A077398 n

end A077398

/-! ## A077398.P7518961550022234854

`floor(A161852(n+1)/2)`
-/

namespace A077398.P7518961550022234854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161852 (n + 1) : ℚ) / 2⌋

end

end A077398.P7518961550022234854

namespace A077398

/-- `floor(A161852(n+1)/2)` -/
def P7518961550022234854.Spec : Prop :=
  ∀ n, P7518961550022234854.a n = A077398 n

end A077398

/-! ## A077398.P14667609721376086201

`floor(A195878(n+1)/sqrt(28))`
-/

namespace A077398.P14667609721376086201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A195878 (n + 1) : ℝ) / Real.sqrt (28 : ℝ)⌋

end

end A077398.P14667609721376086201

namespace A077398

/-- `floor(A195878(n+1)/sqrt(28))` -/
def P14667609721376086201.Spec : Prop :=
  ∀ n, P14667609721376086201.a n = A077398 n

end A077398

/-! ## A077398.P4391407991500000705

`∑[A202637(n+1)%A084069(n+1)]`
-/

namespace A077398.P4391407991500000705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202637 (n + 1)) (A084069 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077398.P4391407991500000705

namespace A077398

/-- `∑[A202637(n+1)%A084069(n+1)]` -/
def P4391407991500000705.Spec : Prop :=
  ∀ n, P4391407991500000705.a n = A077398 n

end A077398

/-! ## A077398.P4054114659008109014

`floor(sqrt(A195917(n+1))/2)`
-/

namespace A077398.P4054114659008109014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A195917 (n + 1) : ℝ) / 2⌋

end

end A077398.P4054114659008109014

namespace A077398

/-- `floor(sqrt(A195917(n+1))/2)` -/
def P4054114659008109014.Spec : Prop :=
  ∀ n, P4054114659008109014.a n = A077398 n

end A077398

/-!
# A077399: Triangular numbers that are 1/7 of triangular numbers.

The programs for A077399, the canonical program `A077399.P16597783867148407357` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077399 has offset 0).

The definition of A077399 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077399.P16597783867148407357

`254*a(n-2)-a(n-4)+18` with `a(0)=0, a(1)=3, a(2)=15, a(3)=780`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A077399

/-- `254*a(n-2)-a(n-4)+18` -/
def P16597783867148407357.Spec : Prop :=
  ∀ n, P16597783867148407357.a n = A077399 n

theorem P16597783867148407357.correct : P16597783867148407357.Spec := by
  intro n
  simp only [A077399]

end A077399

/-! ## A077399.P8855596498916849483

`A077400(n)/7`
-/

namespace A077399.P8855596498916849483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077400 n : ℚ) / 7

end

end A077399.P8855596498916849483

namespace A077399

/-- `A077400(n)/7` -/
def P8855596498916849483.Spec : Prop :=
  ∀ n, P8855596498916849483.a n = (A077399 n : ℚ)

end A077399

/-! ## A077399.P14717266790404941187

`A195917(n+1)/8`
-/

namespace A077399.P14717266790404941187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195917 (n + 1) : ℚ) / 8

end

end A077399.P14717266790404941187

namespace A077399

/-- `A195917(n+1)/8` -/
def P14717266790404941187.Spec : Prop :=
  ∀ n, P14717266790404941187.a n = (A077399 n : ℚ)

end A077399

/-! ## A077399.P11854651713102692789

`C(A077398(n)+1, 2)`
-/

namespace A077399.P11854651713102692789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A077398 n + 1).toNat 2

end

end A077399.P11854651713102692789

namespace A077399

/-- `C(A077398(n)+1, 2)` -/
def P11854651713102692789.Spec : Prop :=
  ∀ n, (P11854651713102692789.a n : ℤ) = A077399 n

end A077399

/-! ## A077399.P17716000138292750002

`(A161852(n+1)²-1)/8`
-/

namespace A077399.P17716000138292750002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161852 (n + 1) ^ 2 - 1 : ℚ) / 8

end

end A077399.P17716000138292750002

namespace A077399

/-- `(A161852(n+1)²-1)/8` -/
def P17716000138292750002.Spec : Prop :=
  ∀ n, P17716000138292750002.a n = (A077399 n : ℚ)

end A077399

/-! ## A077399.P11113945309025657155

`A007750(comp[or(2, n)-1])/8`
-/

namespace A077399.P11113945309025657155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007750 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ) / 8

end

end A077399.P11113945309025657155

namespace A077399

/-- `A007750(comp[or(2, n)-1])/8` -/
def P11113945309025657155.Spec : Prop :=
  ∀ n, P11113945309025657155.a n = (A077399 n : ℚ)

end A077399

/-! ## A077399.P10992044229309569022

`A007750(A014601(n))/8`
-/

namespace A077399.P10992044229309569022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007750 (A014601 n).toNat : ℚ) / 8

end

end A077399.P10992044229309569022

namespace A077399

/-- `A007750(A014601(n))/8` -/
def P10992044229309569022.Spec : Prop :=
  ∀ n, P10992044229309569022.a n = (A077399 n : ℚ)

end A077399

/-! ## A077399.P5583182746447871643

`A195917(n+1)-A077400(n)`
-/

namespace A077399.P5583182746447871643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195917 (n + 1) - A077400 n

end

end A077399.P5583182746447871643

namespace A077399

/-- `A195917(n+1)-A077400(n)` -/
def P5583182746447871643.Spec : Prop :=
  ∀ n, P5583182746447871643.a n = A077399 n

end A077399

/-! ## A077399.P3033653308986258248

`A007750(A014601(n))-A077400(n)`
-/

namespace A077399.P3033653308986258248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007750 (A014601 n).toNat - A077400 n

end

end A077399.P3033653308986258248

namespace A077399

/-- `A007750(A014601(n))-A077400(n)` -/
def P3033653308986258248.Spec : Prop :=
  ∀ n, P3033653308986258248.a n = A077399 n

end A077399

/-! ## A077399.P6636887652764198276

`A195917(n+1)%A077400(A028310(n))`
-/

namespace A077399.P6636887652764198276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195917 (n + 1)) (A077400 (A028310 n).toNat)

end

end A077399.P6636887652764198276

namespace A077399

/-- `A195917(n+1)%A077400(A028310(n))` -/
def P6636887652764198276.Spec : Prop :=
  ∀ n, P6636887652764198276.a n = A077399 n

end A077399

