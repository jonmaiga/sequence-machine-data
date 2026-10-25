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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A261400: Number of n X n knot mosaics.

The programs for A261400, there is no canonical definition to state claims against.
-/

/-! ## A261400.P10362140878951217924

`A375353(∑[n+1])`
-/

namespace A261400.P10362140878951217924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375353 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261400.P10362140878951217924

/-!
# A261406: Numbers n such that the norm of Phi_n(alpha), the n-th cyclotomic polynomial evaluated at alpha, is +-1, where alpha is the Salem number defined in A073011.

The programs for A261406, there is no canonical definition to state claims against.
-/

/-! ## A261406.P8488704797941921244

`lt[A143656(A007304(n+2)), A060411(3*n+1)]`
-/

namespace A261406.P8488704797941921244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143656 (A007304 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060411 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261406.P8488704797941921244

/-! ## A261406.P11932046587824103679

`eq[A188037(A185974(n)), A322389(3*(n+1))]`
-/

namespace A261406.P11932046587824103679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188037 (A185974 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322389 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261406.P11932046587824103679

/-! ## A261406.P11297612031600030698

`∑[A043283(A129202(n²))]`
-/

namespace A261406.P11297612031600030698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (A129202 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261406.P11297612031600030698

/-! ## A261406.P14131485192357982639

`∑[A187447(∑[A078812(n)])]`
-/

namespace A261406.P14131485192357982639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187447 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261406.P14131485192357982639

/-! ## A261406.P17005314655171029352

`∑[A051903(A139377(3*n+1)+1)]`
-/

namespace A261406.P17005314655171029352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A139377 (3 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261406.P17005314655171029352

/-!
# A261412: Positions of records in A109732.

The programs for A261412, there is no canonical definition to state claims against.
-/

/-! ## A261412.P63771757732440896

`A109734(floor(A261413(n+1)/2))`
-/

namespace A261412.P63771757732440896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109734 ⌊(A261413 (n + 1) : ℚ) / 2⌋.toNat

end

end A261412.P63771757732440896

/-! ## A261412.P7330185003205816322

`A109734((A261413(n+1)-1)/2)`
-/

namespace A261412.P7330185003205816322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109734 (SequenceMachineLib.roundAway ((A261413 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A261412.P7330185003205816322

/-! ## A261412.P5465263266001569871

`A109734(xor(1, A261413(n+1))/2)`
-/

namespace A261412.P5465263266001569871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109734 (SequenceMachineLib.roundAway ((Int.xor 1 (A261413 (n + 1)) : ℚ) / 2)).toNat

end

end A261412.P5465263266001569871

/-! ## A261412.P10542258046959277864

`A109734(A006370(A261413(n+1)-1))`
-/

namespace A261412.P10542258046959277864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109734 (A006370 (A261413 (n + 1) - 1).toNat).toNat

end

end A261412.P10542258046959277864

/-! ## A261412.P7611826586720867142

`A109734(A006370(xor(1, A261413(n+1))))`
-/

namespace A261412.P7611826586720867142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109734 (A006370 (Int.xor 1 (A261413 (n + 1))).toNat).toNat

end

end A261412.P7611826586720867142

/-!
# A261413: Records in A109732.

The programs for A261413, there is no canonical definition to state claims against.
-/

/-! ## A261413.P2865818939176422257

`record[A109732(n+1)]`
-/

namespace A261413.P2865818939176422257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261413.P2865818939176422257

/-! ## A261413.P3546378048637584621

`A109732(A261412(n+1))`
-/

namespace A261413.P3546378048637584621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109732 (A261412 (n + 1)).toNat

end

end A261413.P3546378048637584621

/-! ## A261413.P9514118154057597174

`record[or(1, A109732(A028310(n)))]`
-/

namespace A261413.P9514118154057597174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A109732 (A028310 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261413.P9514118154057597174

/-! ## A261413.P1202975992395396967

`record[A109732(A028310(n))%A017222(n)]`
-/

namespace A261413.P1202975992395396967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109732 (A028310 n).toNat) (A017222 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261413.P1202975992395396967

/-! ## A261413.P4216291770680944279

`record[or(1, A109732(A028242(2*n)))]`
-/

namespace A261413.P4216291770680944279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A109732 (A028242 (2 * n)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261413.P4216291770680944279

/-! ## A261413.P8526417369210633159

`record[A109732(A028310(n))]%A001576(n)`
-/

namespace A261413.P8526417369210633159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109732 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A001576 n)

end

end A261413.P8526417369210633159

/-!
# A261414: 2^n+1 appears in A109732 at position a(n).

The programs for A261414, there is no canonical definition to state claims against.
-/

/-! ## A261414.P4156018224458083147

`A109734(2^n)`
-/

namespace A261414.P4156018224458083147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109734 (2 ^ n)

end

end A261414.P4156018224458083147

/-! ## A261414.P7646007745086225028

`record[A109734(A008949(n))]`
-/

namespace A261414.P7646007745086225028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109734 (A008949 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261414.P7646007745086225028

/-! ## A261414.P1977841099748197654

`record[A109734(A017911(n))]`
-/

namespace A261414.P1977841099748197654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109734 (A017911 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261414.P1977841099748197654

/-! ## A261414.P1624529715814747300

`record[A109734(A017979(n))]`
-/

namespace A261414.P1624529715814747300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109734 (A017979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261414.P1624529715814747300

/-! ## A261414.P5147207491929161395

`record[A109734(A017981(n))]`
-/

namespace A261414.P5147207491929161395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109734 (A017981 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261414.P5147207491929161395

/-!
# A261415: The maximal midpoint-free set Z_7^{+}{0,1,3}.

The programs for A261415, there is no canonical definition to state claims against.
-/

/-! ## A261415.P1209847995320638061

`A037466(record[n-A055115(n)])`
-/

namespace A261415.P1209847995320638061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055115 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A261415.P1209847995320638061

/-! ## A261415.P12070087054702389829

`record[n/A072436(A338880(n))]`
-/

namespace A261415.P12070087054702389829
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A072436 (A338880 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261415.P12070087054702389829

/-! ## A261415.P14094326090683715729

`A037466(record[gcd(n, A332413(n))])`
-/

namespace A261415.P14094326090683715729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A332413 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A261415.P14094326090683715729

/-! ## A261415.P9033347729413961817

`record[A037466(n)-A332413(n)²²]`
-/

namespace A261415.P9033347729413961817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 n - (A332413 n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261415.P9033347729413961817

/-! ## A261415.P8121902903267652122

`record[gcd(A039041(n+1), A039043(n+1))]`
-/

namespace A261415.P8121902903267652122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A039041 (n + 1)) (A039043 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261415.P8121902903267652122

/-! ## A261415.P16245209086813017677

`A004525(eq[0, A332497(A037475(n))])`
-/

namespace A261415.P16245209086813017677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332497 (A037475 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261415.P16245209086813017677

/-! ## A261415.P6816550501546375641

`record[A037466(n)/A000120(A194459(n))]`
-/

namespace A261415.P6816550501546375641
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037466 n : ℚ) / (A000120 (A194459 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261415.P6816550501546375641

/-!
# A261416: Let b(k) denote A260273(k). It appears that for k >= 200, whenever b(k) just passes a power of 2, 2^m say, the successive differences b(k)-2^m converge to this sequence.

The programs for A261416, there is no canonical definition to state claims against.
-/

/-! ## A261416.P2824249234599833145

`A261926(n)+a(n-1)` with `a(0)=2`
-/

namespace A261416.P2824249234599833145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A261926 n + a (n - 1)

end

end A261416.P2824249234599833145

/-! ## A261416.P14629904786731078228

`A262290(n)+2-2%(n+1)`
-/

namespace A261416.P14629904786731078228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262290 n + (2 - ((2 % (n + 1) : ℕ) : ℤ))

end

end A261416.P14629904786731078228

/-! ## A261416.P4108707806064960115

`A262281(a(n-1))+a(n-1)` with `a(0)=2`
-/

namespace A261416.P4108707806064960115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A262281 (a (n - 1)).toNat + a (n - 1)

end

end A261416.P4108707806064960115

/-! ## A261416.P5029283366047193270

`A262289(a(n-1))+a(n-1)` with `a(0)=2`
-/

namespace A261416.P5029283366047193270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A262289 (a (n - 1)).toNat + a (n - 1)

end

end A261416.P5029283366047193270

/-! ## A261416.P10710655432290849782

`∑[A261926(A028310(n))]-1`
-/

namespace A261416.P10710655432290849782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261926 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A261416.P10710655432290849782

/-! ## A261416.P15102572864905581421

`A262290(n)+A000038(floor(n/2))`
-/

namespace A261416.P15102572864905581421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262290 n + A000038 ⌊(n : ℚ) / 2⌋.toNat

end

end A261416.P15102572864905581421

/-! ## A261416.P6806793807566662202

`A262290(n)+A000122(A002061(n))`
-/

namespace A261416.P6806793807566662202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262290 n + A000122 (A002061 n).toNat

end

end A261416.P6806793807566662202

/-! ## A261416.P13376886385250582097

`A262290(n)+A001222(A014973(2*(n+1))²)`
-/

namespace A261416.P13376886385250582097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262290 n + A001222 (A014973 (2 * (n + 1)) ^ 2).toNat

end

end A261416.P13376886385250582097

/-! ## A261416.P17490183496946867810

`∑[A261926(n+1)]+2-A261926(n+1)`
-/

namespace A261416.P17490183496946867810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A261926 (n + 1))

end

end A261416.P17490183496946867810

/-!
# A261417: Numbers n such that both ceiling(sqrt(n)) and ceiling(n^(1/3)) divide n.

The programs for A261417, there is no canonical definition to state claims against.
-/

/-! ## A261417.P10708568464579488325

`∩[A261011(n+1), A222030(n)]`
-/

namespace A261417.P10708568464579488325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222030 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261417.P10708568464579488325

/-! ## A261417.P11470725725813699811

`∩[A087811(n+1), A261011(n+1)]`
-/

namespace A261417.P11470725725813699811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261417.P11470725725813699811

/-! ## A261417.P7041366374055861418

`filter[A261011(n+1), A240025(#)]`
-/

namespace A261417.P7041366374055861418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A240025 (f1 j).toNat = 1) n)

end

end A261417.P7041366374055861418

/-!
# A261419: Numerators of coefficients in Taylor series expansion of sqrt( 1 + Sum_{k>=1} k^2*x^k ).

The programs for A261419, there is no canonical definition to state claims against.
-/

/-! ## A261419.P10415113911223625700

`A327539(A239771(n)+15)`
-/

namespace A261419.P10415113911223625700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327539 (A239771 n + 15).toNat

end

end A261419.P10415113911223625700

/-!
# A261420: Numerators of coefficients in Taylor series expansion of sqrt( 1 + Sum_{k>=1} (k*(k+1)/2)*x^k ).

The programs for A261420, there is no canonical definition to state claims against.
-/

/-! ## A261420.P14184048043275338592

`A286517(5*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A261420.P14184048043275338592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A286517 (5 * a (n - 1)).toNat

end

end A261420.P14184048043275338592

/-!
# A261421: Numerators of coefficients in Taylor series expansion of sqrt(m(x)) where m(x) is g.f. for Motzkin numbers A001006.

The programs for A261421, there is no canonical definition to state claims against.
-/

/-! ## A261421.P4242091858966798864

`A185010(n)/A001316(n)`
-/

namespace A261421.P4242091858966798864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185010 n : ℚ) / (A001316 n : ℚ)

end

end A261421.P4242091858966798864

/-! ## A261421.P11974521951538463113

`A098597(n)*A329008(n+1)`
-/

namespace A261421.P11974521951538463113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098597 n * A329008 (n + 1)

end

end A261421.P11974521951538463113

/-! ## A261421.P14863178363729252800

`A185010(n)/A000079(A000120(n))`
-/

namespace A261421.P14863178363729252800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185010 n : ℚ) / (A000079 (A000120 n).toNat : ℚ)

end

end A261421.P14863178363729252800

/-! ## A261421.P6141236315978609558

`A185010(n)/A000005(A019565(n))`
-/

namespace A261421.P6141236315978609558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185010 n : ℚ) / (A000005 (A019565 n).toNat : ℚ)

end

end A261421.P6141236315978609558

/-! ## A261421.P10713897531603696144

`A000108(n)/A001316(n)*∑[A046717(n)]`
-/

namespace A261421.P10713897531603696144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046717 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) / (A001316 n : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A261421.P10713897531603696144

/-!
# A261422: Number of ordered triples (u,v,w) of palindromes such that u+v+w = n.

The programs for A261422, there is no canonical definition to state claims against.
-/

/-! ## A261422.P10713906494064529052

`A262544(n+1)-A173068(A288620(n+1))`
-/

namespace A261422.P10713906494064529052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262544 (n + 1) - A173068 (A288620 (n + 1)).toNat

end

end A261422.P10713906494064529052

/-! ## A261422.P6369852430392672659

`A118759(A262544(n+1))`
-/

namespace A261422.P6369852430392672659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A262544 (n + 1)).toNat

end

end A261422.P6369852430392672659

/-! ## A261422.P9273583810038266021

`A000188(A262544(n+1)²)`
-/

namespace A261422.P9273583810038266021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A262544 (n + 1) ^ 2).toNat

end

end A261422.P9273583810038266021

/-! ## A261422.P943011483361607443

`A000194(A262544(n+1)²)`
-/

namespace A261422.P943011483361607443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A262544 (n + 1) ^ 2).toNat

end

end A261422.P943011483361607443

/-! ## A261422.P7969683324809727313

`A000196(A262544(n+1)²)`
-/

namespace A261422.P7969683324809727313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A262544 (n + 1) ^ 2).toNat

end

end A261422.P7969683324809727313

/-!
# A261423: Largest palindrome <= n.

The programs for A261423, there is no canonical definition to state claims against.
-/

/-! ## A261423.P6080922489976438226

`A261914(n+1)`
-/

namespace A261423.P6080922489976438226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261914 (n + 1)

end

end A261423.P6080922489976438226

/-! ## A261423.P10904475312913413720

`n-A261424(n)`
-/

namespace A261423.P10904475312913413720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A261424 n

end

end A261423.P10904475312913413720

/-! ## A261423.P846346630810519739

`∑[abs(Δ[A261914(n)])]`
-/

namespace A261423.P846346630810519739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261914 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261423.P846346630810519739

/-! ## A261423.P15091126831962124260

`A002113(A136687(n))`
-/

namespace A261423.P15091126831962124260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A136687 n).toNat

end

end A261423.P15091126831962124260

/-! ## A261423.P15132676398915456238

`A002113(∑[A136522(n)])`
-/

namespace A261423.P15132676398915456238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A261423.P15132676398915456238

/-! ## A261423.P6064183313012394645

`A002113(A137180(n)+1)`
-/

namespace A261423.P6064183313012394645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A137180 n + 1).toNat

end

end A261423.P6064183313012394645

/-! ## A261423.P17824902528957314060

`A002113(∑[char[A002113(n+1)]])`
-/

namespace A261423.P17824902528957314060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261423.P17824902528957314060

/-!
# A261424: Difference between n and the largest palindrome <= n.

The programs for A261424, there is no canonical definition to state claims against.
-/

/-! ## A261424.P3718030340452304251

`n-A261423(n)`
-/

namespace A261424.P3718030340452304251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A261423 n

end

end A261424.P3718030340452304251

/-! ## A261424.P9089507422074542108

`n-A261914(n+1)`
-/

namespace A261424.P9089507422074542108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A261914 (n + 1)

end

end A261424.P9089507422074542108

/-! ## A261424.P10428493394246661335

`∑[1-Δ[A261914(n)]]-1`
-/

namespace A261424.P10428493394246661335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261914 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A261424.P10428493394246661335

/-! ## A261424.P9983949720770491177

`n-A002113(A136687(n))`
-/

namespace A261424.P9983949720770491177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A002113 (A136687 n).toNat

end

end A261424.P9983949720770491177

/-! ## A261424.P19409006798535709

`n%A261423(A028310(n))`
-/

namespace A261424.P19409006798535709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A261423 (A028310 n).toNat)

end

end A261424.P19409006798535709

/-! ## A261424.P15695059330354696389

`n-A002113(∑[A136522(n)])`
-/

namespace A261424.P15695059330354696389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A002113 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A261424.P15695059330354696389

/-! ## A261424.P16490675143925390548

`n-A002113(∑[char[A002113(n+1)]])`
-/

namespace A261424.P16490675143925390548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A002113 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261424.P16490675143925390548

/-! ## A261424.P17083398192465634085

`A052036(A261423(n)+A052036(n))`
-/

namespace A261424.P17083398192465634085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052036 (A261423 n + A052036 n).toNat

end

end A261424.P17083398192465634085

/-! ## A261424.P13198100916540666743

`A061601(A261423(n)+A061601(n))`
-/

namespace A261424.P13198100916540666743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A261423 n + A061601 n).toNat

end

end A261424.P13198100916540666743

/-!
# A261425: Number of convergent configurations of size n.

The programs for A261425, there is no canonical definition to state claims against.
-/

/-! ## A261425.P5964476697722519030

`A167158(A000692(n+1))`
-/

namespace A261425.P5964476697722519030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167158 (A000692 (n + 1)).toNat

end

end A261425.P5964476697722519030

/-! ## A261425.P9149128662317649126

`A167158(A290436(n)+1+n)`
-/

namespace A261425.P9149128662317649126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167158 (A290436 n + 1 + (n : ℤ)).toNat

end

end A261425.P9149128662317649126

/-!
# A261426: Expansion of f(-x^3)^3 * phi(x^6) / f(-x) in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A261426, there is no canonical definition to state claims against.
-/

/-! ## A261426.P14556315889899517565

`A261444(2*n)`
-/

namespace A261426.P14556315889899517565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261444 (2 * n)

end

end A261426.P14556315889899517565

/-! ## A261426.P17295156992523184777

`A263527(2*n)`
-/

namespace A261426.P17295156992523184777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263527 (2 * n)

end

end A261426.P17295156992523184777

/-! ## A261426.P12446617536236293659

`A261444(n+n)%(n+2)`
-/

namespace A261426.P12446617536236293659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261444 (n + n)) (n + 2 : ℤ)

end

end A261426.P12446617536236293659

/-! ## A261426.P7872267620179530422

`A263527(n+n)/gcd(n, n+1)`
-/

namespace A261426.P7872267620179530422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263527 (n + n) : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A261426.P7872267620179530422

/-! ## A261426.P7430528704954368229

`A045832(3*n+1)`
-/

namespace A261426.P7430528704954368229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045832 (3 * n + 1)

end

end A261426.P7430528704954368229

/-! ## A261426.P16274413947926345828

`A005889(3*n+1)/3`
-/

namespace A261426.P16274413947926345828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005889 (3 * n + 1) : ℚ) / 3

end

end A261426.P16274413947926345828

/-! ## A261426.P3050981804693520221

`A005885(3*n)/3`
-/

namespace A261426.P3050981804693520221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005885 (3 * n) : ℚ) / 3

end

end A261426.P3050981804693520221

/-! ## A261426.P9157435954052762942

`A263527(n+n)/A027642(A001097(n+1))`
-/

namespace A261426.P9157435954052762942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263527 (n + n) : ℚ) / (A027642 (A001097 (n + 1)).toNat : ℚ)

end

end A261426.P9157435954052762942

/-! ## A261426.P7905294021744267989

`and(A261444(A060747(n)+1), A290862(n+1))`
-/

namespace A261426.P7905294021744267989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A261444 (A060747 n + 1).toNat) (A290862 (n + 1))

end

end A261426.P7905294021744267989

/-!
# A261427: 

The programs for A261427, there is no canonical definition to state claims against.
-/

/-! ## A261427.P8489073271054983373

`(7*n)!/(7^n*n!)`
-/

namespace A261427.P8489073271054983373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (7 * n) : ℚ) / (7 ^ n * Nat.factorial n : ℚ)

end

end A261427.P8489073271054983373

/-!
# A261428: Number of permutations p of [2n] without fixed points such that p^8 = Id.

The programs for A261428, there is no canonical definition to state claims against.
-/

/-! ## A261428.P193237592611293874

`A261430(A187989(n+1))`
-/

namespace A261428.P193237592611293874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261430 (A187989 (n + 1)).toNat

end

end A261428.P193237592611293874

/-!
# A261429: Number of permutations p of [3n] without fixed points such that p^9 = Id.

The programs for A261429, there is no canonical definition to state claims against.
-/

/-! ## A261429.P16386966361675479103

`record[A261430(A056000(n))]`
-/

namespace A261429.P16386966361675479103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261430 (A056000 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261429.P16386966361675479103

/-!
# A261430: Number A(n,k) of permutations p of [n] without fixed points such that p^k = Id; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A261430, there is no canonical definition to state claims against.
-/

/-! ## A261430.P16406935080886882916

`A004218(2^(A143841(n)*A226206(n)))`
-/

namespace A261430.P16406935080886882916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A143841 n * A226206 n : ℤ))).toNat

end

end A261430.P16406935080886882916

/-! ## A261430.P7435471264487680972

`A202304(A107652(∑{p}[A008949(n), #]))`
-/

namespace A261430.P7435471264487680972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A107652 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)).toNat

end

end A261430.P7435471264487680972

/-! ## A261430.P6802794488557094563

`val(A277605(A059427(n+2)), 3)`
-/

namespace A261430.P6802794488557094563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A277605 (A059427 (n + 2)).toNat).toNat 3

end

end A261430.P6802794488557094563

/-! ## A261430.P731131689771042805

`C(2, A257770(A224524(n+1)))`
-/

namespace A261430.P731131689771042805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A257770 (A224524 (n + 1)).toNat).toNat

end

end A261430.P731131689771042805

/-! ## A261430.P18193964868023394490

`A375107(A238010(n)^A324198(n))`
-/

namespace A261430.P18193964868023394490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375107 (SequenceMachineLib.roundAway ((A238010 n : ℚ) ^ (A324198 n : ℤ))).toNat

end

end A261430.P18193964868023394490

/-!
# A261431: Number of permutations p of [n] without fixed points such that p^n = Id.

The programs for A261431, there is no canonical definition to state claims against.
-/

/-! ## A261431.P15642419315152382211

`A261430(∑[4*n])`
-/

namespace A261431.P15642419315152382211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261430 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261431.P15642419315152382211

/-! ## A261431.P16337595760404033082

`or(A000007(n), A261430(A046092(n)))`
-/

namespace A261431.P16337595760404033082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A261430 (A046092 n).toNat)

end

end A261431.P16337595760404033082

/-! ## A261431.P1027622915023823927

`or(A036988(n), A261430(A046092(n)))`
-/

namespace A261431.P1027622915023823927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036988 n) (A261430 (A046092 n).toNat)

end

end A261431.P1027622915023823927

/-! ## A261431.P17898694626262842626

`A261430(A046092(n))+A000007(n+1)`
-/

namespace A261431.P17898694626262842626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261430 (A046092 n).toNat + A000007 (n + 1)

end

end A261431.P17898694626262842626

/-! ## A261431.P13403048234048458028

`A054977(A103450(n))*A261430(A046092(n))`
-/

namespace A261431.P13403048234048458028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A103450 n).toNat * A261430 (A046092 n).toNat

end

end A261431.P13403048234048458028

/-!
# A261434: Primes having only {0, 3, 8} as digits.

The programs for A261434, there is no canonical definition to state claims against.
-/

/-! ## A261434.P14015195713651488943

`∩[A386059(n+1), A386063(n+1)]`
-/

namespace A261434.P14015195713651488943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261434.P14015195713651488943

/-! ## A261434.P5594090584063589649

`∩[A386059(n+1), A386066(n+1)]`
-/

namespace A261434.P5594090584063589649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261434.P5594090584063589649

/-! ## A261434.P8017215957742105902

`∩[A386063(n+1), A386066(n+1)]`
-/

namespace A261434.P8017215957742105902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261434.P8017215957742105902

/-! ## A261434.P4377188895998210859

`∩[A386045(n+1), A386059(n+1)]`
-/

namespace A261434.P4377188895998210859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261434.P4377188895998210859

/-! ## A261434.P8944204547324531922

`∩[A386045(n+1), A386063(n+1)]`
-/

namespace A261434.P8944204547324531922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261434.P8944204547324531922

/-! ## A261434.P2210124135732558929

`∩[A386045(n+1), A386066(n+1)]`
-/

namespace A261434.P2210124135732558929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261434.P2210124135732558929

/-! ## A261434.P15192640804924690000

`∩[A386045(n+1), A386069(n+1)]`
-/

namespace A261434.P15192640804924690000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261434.P15192640804924690000

/-! ## A261434.P9603196755458043117

`∩[A386059(n+1), A386069(n+1)]`
-/

namespace A261434.P9603196755458043117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261434.P9603196755458043117

/-! ## A261434.P732081316920394904

`∩[A386063(n+1), A386069(n+1)]`
-/

namespace A261434.P732081316920394904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261434.P732081316920394904

/-! ## A261434.P10200506332889056287

`∩[A386066(n+1), A386069(n+1)]`
-/

namespace A261434.P10200506332889056287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261434.P10200506332889056287

/-! ## A261434.P3587528062559305247

`∩[A386045(n+1), A386067(n+1)]`
-/

namespace A261434.P3587528062559305247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261434.P3587528062559305247

/-! ## A261434.P7755980205876829535

`∩[A386059(n+1), A386067(n+1)]`
-/

namespace A261434.P7755980205876829535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261434.P7755980205876829535

/-! ## A261434.P4167022813543527637

`∩[A386063(n+1), A386067(n+1)]`
-/

namespace A261434.P4167022813543527637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261434.P4167022813543527637

/-! ## A261434.P4245016396142290001

`∩[A386066(n+1), A386067(n+1)]`
-/

namespace A261434.P4245016396142290001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261434.P4245016396142290001

/-! ## A261434.P14880786095676075560

`∩[A386067(n+1), A386069(n+1)]`
-/

namespace A261434.P14880786095676075560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261434.P14880786095676075560

/-! ## A261434.P5213436010579775935

`∩[A125308(n+1), A386045(n+1)]`
-/

namespace A261434.P5213436010579775935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261434.P5213436010579775935

/-! ## A261434.P8992744672160692606

`∩[A125308(n+1), A386059(n+1)]`
-/

namespace A261434.P8992744672160692606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261434.P8992744672160692606

/-! ## A261434.P17352935418477203964

`∩[A125308(n+1), A386063(n+1)]`
-/

namespace A261434.P17352935418477203964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261434.P17352935418477203964

/-! ## A261434.P11363370950784825199

`∩[A125308(n+1), A386066(n+1)]`
-/

namespace A261434.P11363370950784825199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261434.P11363370950784825199

/-! ## A261434.P10326613888467727695

`∩[A125308(n+1), A386067(n+1)]`
-/

namespace A261434.P10326613888467727695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261434.P10326613888467727695

/-!
# A261435: Numbers k such that k^5-1 is a semiprime.

The programs for A261435, there is no canonical definition to state claims against.
-/

/-! ## A261435.P264041499842247503

`p?[A286094(n+1)-1]+1`
-/

namespace A261435.P264041499842247503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286094 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A261435.P264041499842247503

/-! ## A261435.P6506984409401903851

`p?[A049409(n+1)-1]+1`
-/

namespace A261435.P6506984409401903851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049409 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A261435.P6506984409401903851

/-! ## A261435.P1204254519488505189

`p?[A258979(n+1)]+1`
-/

namespace A261435.P1204254519488505189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A261435.P1204254519488505189

/-! ## A261435.P14676233084087324378

`∩[A049409(n+1), A135731(n+1)]`
-/

namespace A261435.P14676233084087324378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261435.P14676233084087324378

/-! ## A261435.P390168537663095307

`∩[A135731(n+1), A286094(n+1)]`
-/

namespace A261435.P390168537663095307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261435.P390168537663095307

/-! ## A261435.P1947149719013811252

`∩[A286094(n+1), A028815(n)]`
-/

namespace A261435.P1947149719013811252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261435.P1947149719013811252

/-! ## A261435.P5524360494050728241

`∩[A008864(n+1), A049409(n+1)]`
-/

namespace A261435.P5524360494050728241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261435.P5524360494050728241

/-! ## A261435.P18011119093434880306

`∩[A008864(n+1), A286094(n+1)]`
-/

namespace A261435.P18011119093434880306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261435.P18011119093434880306

/-! ## A261435.P17321815727597699461

`∩[A093515(n+1), A286094(n+1)]`
-/

namespace A261435.P17321815727597699461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261435.P17321815727597699461

/-! ## A261435.P3867698066036556735

`∩[A111688(n+1), A286094(n+1)]`
-/

namespace A261435.P3867698066036556735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261435.P3867698066036556735

/-! ## A261435.P7114402915101625242

`eq[2, A059910(n+1)]+1`
-/

namespace A261435.P7114402915101625242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059910 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A261435.P7114402915101625242

/-! ## A261435.P2998351491228481036

`A000593(p?[A258979(n+1)])`
-/

namespace A261435.P2998351491228481036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A261435.P2998351491228481036

/-!
# A261436: Numbers k such that k^7-1 is a semiprime.

The programs for A261436, there is no canonical definition to state claims against.
-/

/-! ## A261436.P6076429348590909956

`p?[A259252(n+1)]+1`
-/

namespace A261436.P6076429348590909956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A261436.P6076429348590909956

/-! ## A261436.P13564732900690611067

`p?[A100330(n+1)-1]+1`
-/

namespace A261436.P13564732900690611067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A261436.P13564732900690611067

/-! ## A261436.P7471139533802493904

`∩[A008864(n+1), A100330(n+1)]`
-/

namespace A261436.P7471139533802493904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261436.P7471139533802493904

/-! ## A261436.P7837863181668780250

`∩[A100330(n+1), A135731(n+1)]`
-/

namespace A261436.P7837863181668780250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261436.P7837863181668780250

/-! ## A261436.P12115068204250361908

`∩[A000040(n+1)+1, A100330(n+1)]`
-/

namespace A261436.P12115068204250361908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261436.P12115068204250361908

/-! ## A261436.P7400806793954460716

`∩[A100330(n+2), A182986(n+2)+1]`
-/

namespace A261436.P7400806793954460716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261436.P7400806793954460716

/-! ## A261436.P2840777122536472535

`A003959(p?[A100330(n+1)-1])`
-/

namespace A261436.P2840777122536472535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A261436.P2840777122536472535

/-! ## A261436.P12093599207381276725

`A230593(p?[A100330(n+1)-1])`
-/

namespace A261436.P12093599207381276725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230593 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A261436.P12093599207381276725

/-! ## A261436.P308554165385398200

`A335876(p?[A100330(n+1)-1])`
-/

namespace A261436.P308554165385398200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335876 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A261436.P308554165385398200

/-! ## A261436.P18425423476111485420

`A332993(p?[A100330(n+1)-1])`
-/

namespace A261436.P18425423476111485420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332993 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A261436.P18425423476111485420

/-! ## A261436.P4449482791273779035

`∩[A100330(n+1), A240960(n+1)+1]`
-/

namespace A261436.P4449482791273779035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261436.P4449482791273779035

/-!
# A261437: Least positive integer k such that k*n+1 = prime(p) and k^2*n+1 = prime(q) for some pair of primes p and q.

The programs for A261437, there is no canonical definition to state claims against.
-/

/-! ## A261437.P12060733298312482645

`A266303(A008417(n)-n)`
-/

namespace A261437.P12060733298312482645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 (A008417 n - (n : ℤ)).toNat

end

end A261437.P12060733298312482645

/-!
# A261441: Number of binary strings of length n+3 such that the smallest number whose binary representation is not visible in the string is 5.

The programs for A261441, the canonical program `A261441.P385757714479173947` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261441 has offset 0).

The definition of A261441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 407 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261441.P385757714479173947

`∑[A054405(2*n)-A000930(n+2)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A261441

/-- `∑[A054405(2*n)-A000930(n+2)]` -/
def P385757714479173947.Spec : Prop :=
  ∀ n, P385757714479173947.a n = A261441 n

theorem P385757714479173947.correct : P385757714479173947.Spec := by
  intro n
  simp only [A261441]

end A261441

/-! ## A261441.P15806894090386620034

`∑[∑[A005251(n+3)]-A000930(n+2)]`
-/

namespace A261441.P15806894090386620034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000930 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261441.P15806894090386620034

namespace A261441

/-- `∑[∑[A005251(n+3)]-A000930(n+2)]` -/
def P15806894090386620034.Spec : Prop :=
  ∀ n, P15806894090386620034.a n = A261441 n

end A261441

/-! ## A261441.P18024739388456328830

`A261015(4*A048578(n))`
-/

namespace A261441.P18024739388456328830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261015 (4 * A048578 n).toNat

end

end A261441.P18024739388456328830

namespace A261441

/-- `A261015(4*A048578(n))` -/
def P18024739388456328830.Spec : Prop :=
  ∀ n, P18024739388456328830.a n = A261441 n

end A261441

/-! ## A261441.P9033917130624505426

`A261015(lcm(4, A048578(n)))`
-/

namespace A261441.P9033917130624505426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261015 (Int.lcm 4 (A048578 n))

end

end A261441.P9033917130624505426

namespace A261441

/-- `A261015(lcm(4, A048578(n)))` -/
def P9033917130624505426.Spec : Prop :=
  ∀ n, P9033917130624505426.a n = A261441 n

end A261441

/-! ## A261441.P4277250084884606335

`A261015(A000051(n+3)+3)`
-/

namespace A261441.P4277250084884606335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261015 (A000051 (n + 3) + 3).toNat

end

end A261441.P4277250084884606335

namespace A261441

/-- `A261015(A000051(n+3)+3)` -/
def P4277250084884606335.Spec : Prop :=
  ∀ n, P4277250084884606335.a n = A261441 n

end A261441

/-!
# A261442: Number of binary strings of length n+6 such that the smallest number whose binary representation is not visible in the string is 6.

The programs for A261442, there is no canonical definition to state claims against.
-/

/-! ## A261442.P5349025495088970388

`A261015(A000079(n+6)+5)`
-/

namespace A261442.P5349025495088970388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261015 (A000079 (n + 6) + 5).toNat

end

end A261442.P5349025495088970388

/-! ## A261442.P5482415797987785025

`A328798(3*n)-A124766(A212606(n))`
-/

namespace A261442.P5482415797987785025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328798 (3 * n) - A124766 (A212606 n).toNat

end

end A261442.P5482415797987785025

/-! ## A261442.P16174371997214867672

`A052146(A255613(n))`
-/

namespace A261442.P16174371997214867672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (A255613 n).toNat

end

end A261442.P16174371997214867672

/-!
# A261443: Number of binary strings of length n+5 such that the smallest number whose binary representation is not visible in the string is 7.

The programs for A261443, there is no canonical definition to state claims against.
-/

/-! ## A261443.P8203240488544115787

`A274661(A001349(n))+A026960(n)`
-/

namespace A261443.P8203240488544115787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274661 (A001349 n).toNat + A026960 n

end

end A261443.P8203240488544115787

/-! ## A261443.P10589405785534694794

`A006530(A103456(n))-A029759(n)`
-/

namespace A261443.P10589405785534694794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A103456 n).toNat - A029759 n

end

end A261443.P10589405785534694794

/-!
# A261444: Expansion of f(x^3)^2 * f(-x^6)^2 / f(-x^2) in powers of x where f() is a Ramanujan theta function.

The programs for A261444, there is no canonical definition to state claims against.
-/

/-! ## A261444.P17359021848824995033

`A261426(2*n+1)`
-/

namespace A261444.P17359021848824995033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261426 (2 * n + 1)

end

end A261444.P17359021848824995033

/-! ## A261444.P14274315919111570143

`abs(A263527(n))`
-/

namespace A261444.P14274315919111570143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A263527 n|

end

end A261444.P14274315919111570143

/-! ## A261444.P667342314977586056

`A033999(n)*A263527(n)`
-/

namespace A261444.P667342314977586056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A263527 n

end

end A261444.P667342314977586056

/-! ## A261444.P10320732016367793473

`gcd(A000038(n), A263527(n))`
-/

namespace A261444.P10320732016367793473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A263527 n)

end

end A261444.P10320732016367793473

/-! ## A261444.P12184632137539517219

`lcm(A000034(n), A263527(n))`
-/

namespace A261444.P12184632137539517219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A263527 n)

end

end A261444.P12184632137539517219

/-! ## A261444.P8146612201811699691

`A134824(A133622(n+1))*A263527(n)`
-/

namespace A261444.P8146612201811699691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A133622 (n + 1)).toNat * A263527 n

end

end A261444.P8146612201811699691

/-! ## A261444.P2685693501905201912

`A263527(4*n+2)`
-/

namespace A261444.P2685693501905201912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263527 (4 * n + 2)

end

end A261444.P2685693501905201912

/-! ## A261444.P1389394912764741977

`A045832(6*n+4)`
-/

namespace A261444.P1389394912764741977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045832 (6 * n + 4)

end

end A261444.P1389394912764741977

/-!
# A261445: Expansion of f(x, x^3) * f(x, x^2)^3 in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A261445, the canonical program `A261445.P1983018921288395960` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261445 has offset 0).

The definition of A261445 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A260109, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A261445.P1983018921288395960

`A260109(2*n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A261445

/-- `A260109(2*n)` -/
def P1983018921288395960.Spec : Prop :=
  ∀ n, P1983018921288395960.a n = A261445 n

theorem P1983018921288395960.correct : P1983018921288395960.Spec := by
  intro n
  simp only [A261445]

end A261445

/-! ## A261445.P7333803114620945810

`A263021(3*n)`
-/

namespace A261445.P7333803114620945810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263021 (3 * n)

end

end A261445.P7333803114620945810

namespace A261445

/-- `A263021(3*n)` -/
def P7333803114620945810.Spec : Prop :=
  ∀ n, P7333803114620945810.a n = A261445 n

end A261445

/-! ## A261445.P10828649229031033890

`A124815(4*n+1)`
-/

namespace A261445.P10828649229031033890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124815 (4 * n + 1)

end

end A261445.P10828649229031033890

namespace A261445

/-- `A124815(4*n+1)` -/
def P10828649229031033890.Spec : Prop :=
  ∀ n, P10828649229031033890.a n = A261445 n

theorem P10828649229031033890.correct : P10828649229031033890.Spec := by
  intro n
  simp only [A261445, Nat.add_sub_cancel, A261445.P10828649229031033890.a, A261445.P1983018921288395960.a, A124815, A124815.P7342009755196343803.f1, A124815.P7342009755196343803.a, A260109, A260109.P720565460012442485.a, A080512, A080512.P14368604902377273702.a, A091338, A091338.P7387993790083234101.f1, A091338.P7387993790083234101.a, A005811, A005811.P8696411420205566785.a, A049347, A049347.P9996747395155426839.a, A000120, A000120.P2816527436160941581.a, A003188, A003188.P10544524695508875182.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261445

/-! ## A261445.P17392636667515053646

`A209613(4*n+1)`
-/

namespace A261445.P17392636667515053646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209613 (4 * n + 1)

end

end A261445.P17392636667515053646

namespace A261445

/-- `A209613(4*n+1)` -/
def P17392636667515053646.Spec : Prop :=
  ∀ n, P17392636667515053646.a n = A261445 n

end A261445

/-! ## A261445.P9850741327820417684

`A260109(n+n)/gcd(n, n+1)`
-/

namespace A261445.P9850741327820417684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260109 (n + n) : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A261445.P9850741327820417684

namespace A261445

/-- `A260109(n+n)/gcd(n, n+1)` -/
def P9850741327820417684.Spec : Prop :=
  ∀ n, P9850741327820417684.a n = (A261445 n : ℚ)

theorem P9850741327820417684.correct : P9850741327820417684.Spec := by
  intro n
  simp only [A261445, Nat.add_sub_cancel, A261445.P9850741327820417684.a, A261445.P1983018921288395960.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A261445

/-! ## A261445.P14036718013810791803

`A260109(A004277(n))%A002522(n+1)`
-/

namespace A261445.P14036718013810791803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260109 (A004277 n).toNat) (A002522 (n + 1))

end

end A261445.P14036718013810791803

namespace A261445

/-- `A260109(A004277(n))%A002522(n+1)` -/
def P14036718013810791803.Spec : Prop :=
  ∀ n, P14036718013810791803.a n = A261445 n

end A261445

/-! ## A261445.P14919033120474129947

`A260109(n+n)/A007318(∑[n])`
-/

namespace A261445.P14919033120474129947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260109 (n + n) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A261445.P14919033120474129947

namespace A261445

/-- `A260109(n+n)/A007318(∑[n])` -/
def P14919033120474129947.Spec : Prop :=
  ∀ n, P14919033120474129947.a n = (A261445 n : ℚ)

end A261445

/-!
# A261446: Expansion of f(-x^3, -x^3) * f(-x, -x^5) / f(-x, -x)^2 in powers of x where f(,) is Ramanujan's general theta function.

The programs for A261446, there is no canonical definition to state claims against.
-/

/-! ## A261446.P13655282590436207577

`(-1)^n*A261325(n)`
-/

namespace A261446.P13655282590436207577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A261325 n

end

end A261446.P13655282590436207577

/-! ## A261446.P1159802592198930838

`A123649(3*n+1)`
-/

namespace A261446.P1159802592198930838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123649 (3 * n + 1)

end

end A261446.P1159802592198930838

/-! ## A261446.P3269732552724815270

`A139214(3*n+1)`
-/

namespace A261446.P3269732552724815270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139214 (3 * n + 1)

end

end A261446.P3269732552724815270

/-! ## A261446.P5573326043232682593

`A233693(3*n+1)`
-/

namespace A261446.P5573326043232682593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233693 (3 * n + 1)

end

end A261446.P5573326043232682593

/-! ## A261446.P17220076679554501846

`abs(A261325(n))`
-/

namespace A261446.P17220076679554501846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A261325 n|

end

end A261446.P17220076679554501846

/-! ## A261446.P13806140402607306332

`gcd(A000038(n), A261325(n))`
-/

namespace A261446.P13806140402607306332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A261325 n)

end

end A261446.P13806140402607306332

/-! ## A261446.P8011546396259306933

`lcm(A006466(n), A261325(n))`
-/

namespace A261446.P8011546396259306933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006466 n) (A261325 n)

end

end A261446.P8011546396259306933

/-! ## A261446.P1635154815555240700

`record[A123649(n+1)]`
-/

namespace A261446.P1635154815555240700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261446.P1635154815555240700

/-! ## A261446.P12994901294854452648

`record[A139214(n+1)]`
-/

namespace A261446.P12994901294854452648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261446.P12994901294854452648

/-! ## A261446.P10683229237718751414

`record[abs(A187153(n+1))]`
-/

namespace A261446.P10683229237718751414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187153 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261446.P10683229237718751414

/-! ## A261446.P7175344447704729096

`abs(A187153(3*n+1))`
-/

namespace A261446.P7175344447704729096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187153 (3 * n + 1)|

end

end A261446.P7175344447704729096

/-! ## A261446.P5576617958042255445

`abs(A233670(3*n+1))`
-/

namespace A261446.P5576617958042255445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A233670 (3 * n + 1)|

end

end A261446.P5576617958042255445

/-! ## A261446.P9935652422284288493

`A293387(3*n+1)/2`
-/

namespace A261446.P9935652422284288493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293387 (3 * n + 1) : ℚ) / 2

end

end A261446.P9935652422284288493

/-! ## A261446.P3718786767966731825

`record[abs(A213265(n))]`
-/

namespace A261446.P3718786767966731825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A213265 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261446.P3718786767966731825

/-! ## A261446.P17104680273302647850

`A261154(3*n+1)`
-/

namespace A261446.P17104680273302647850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261154 (3 * n + 1)

end

end A261446.P17104680273302647850

/-! ## A261446.P2836579913674199421

`record[A139213(n+1)/2]`
-/

namespace A261446.P2836579913674199421
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139213 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261446.P2836579913674199421

/-! ## A261446.P11272036749226735798

`A261325(n)*A261326(n)/A398619(n)`
-/

namespace A261446.P11272036749226735798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261325 n * A261326 n : ℚ) / (A398619 n : ℚ)

end

end A261446.P11272036749226735798

/-!
# A261447: The number of distinct prime factors of the number of proper divisors of n.

The programs for A261447, the canonical program `A261447.P2588180063038653049` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261447 has offset 2).

The definition of A261447 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A032741, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A261447.P2588180063038653049

`A001221(A032741(n+2))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A261447

/-- `A001221(A032741(n+2))` -/
def P2588180063038653049.Spec : Prop :=
  ∀ n, P2588180063038653049.a n = A261447 (n + 2)

theorem P2588180063038653049.correct : P2588180063038653049.Spec := by
  intro n
  simp only [A261447, Nat.add_sub_cancel]

end A261447

/-! ## A261447.P7472334825121703840

`A001221(∏{e}[n+2, #+1]-1)`
-/

namespace A261447.P7472334825121703840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) - 1)

end

end A261447.P7472334825121703840

namespace A261447

/-- `A001221(∏{e}[n+2, #+1]-1)` -/
def P7472334825121703840.Spec : Prop :=
  ∀ n, P7472334825121703840.a n = A261447 (n + 2)

end A261447

/-! ## A261447.P837855418967636304

`A001221(∑[A051950(n+2)])`
-/

namespace A261447.P837855418967636304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A261447.P837855418967636304

namespace A261447

/-- `A001221(∑[A051950(n+2)])` -/
def P837855418967636304.Spec : Prop :=
  ∀ n, P837855418967636304.a n = A261447 (n + 2)

end A261447

/-! ## A261447.P15741958336778510888

`A001221(A000005(n+2)-1)`
-/

namespace A261447.P15741958336778510888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000005 (n + 2) - 1).toNat

end

end A261447.P15741958336778510888

namespace A261447

/-- `A001221(A000005(n+2)-1)` -/
def P15741958336778510888.Spec : Prop :=
  ∀ n, P15741958336778510888.a n = A261447 (n + 2)

theorem P15741958336778510888.correct : P15741958336778510888.Spec := by
  intro n
  simp only [A261447, Nat.add_sub_cancel, A261447.P15741958336778510888.a, A261447.P2588180063038653049.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261447

/-! ## A261447.P972758956409627083

`A001222(∏{p}[A000005(n+2)-1, #])`
-/

namespace A261447.P972758956409627083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A261447.P972758956409627083

namespace A261447

/-- `A001222(∏{p}[A000005(n+2)-1, #])` -/
def P972758956409627083.Spec : Prop :=
  ∀ n, P972758956409627083.a n = A261447 (n + 2)

end A261447

/-! ## A261447.P3058258747394514116

`A001221(∑[-Δ[-A000005(n+1)]])`
-/

namespace A261447.P3058258747394514116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A000005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A261447.P3058258747394514116

namespace A261447

/-- `A001221(∑[-Δ[-A000005(n+1)]])` -/
def P3058258747394514116.Spec : Prop :=
  ∀ n, P3058258747394514116.a n = A261447 (n + 2)

end A261447

/-! ## A261447.P5899119103149048501

`A001221(A325765(n+1))`
-/

namespace A261447.P5899119103149048501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A325765 (n + 1)).toNat

end

end A261447.P5899119103149048501

namespace A261447

/-- `A001221(A325765(n+1))` -/
def P5899119103149048501.Spec : Prop :=
  ∀ n, P5899119103149048501.a n = A261447 (n + 2)

end A261447

/-! ## A261447.P10032672756487438998

`A001221(Δ[A002541(n+1)])`
-/

namespace A261447.P10032672756487438998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A261447.P10032672756487438998

namespace A261447

/-- `A001221(Δ[A002541(n+1)])` -/
def P10032672756487438998.Spec : Prop :=
  ∀ n, P10032672756487438998.a n = A261447 (n + 2)

end A261447

/-! ## A261447.P11792509302118379290

`∑{p}[A032741(n+2), A001222(#)]`
-/

namespace A261447.P11792509302118379290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A261447.P11792509302118379290

namespace A261447

/-- `∑{p}[A032741(n+2), A001222(#)]` -/
def P11792509302118379290.Spec : Prop :=
  ∀ n, P11792509302118379290.a n = A261447 (n + 2)

end A261447

/-! ## A261447.P11243358764643101473

`A001222(∏{p}[A032741(n+2), #])`
-/

namespace A261447.P11243358764643101473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A261447.P11243358764643101473

namespace A261447

/-- `A001222(∏{p}[A032741(n+2), #])` -/
def P11243358764643101473.Spec : Prop :=
  ∀ n, P11243358764643101473.a n = A261447 (n + 2)

end A261447

/-!
# A261448: Numbers n >= 100 that are divisible by n mod 100.

The programs for A261448, there is no canonical definition to state claims against.
-/

/-! ## A261448.P8391811984120079628

`A255725(A032551(n+1)+6)`
-/

namespace A261448.P8391811984120079628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255725 (A032551 (n + 1) + 6).toNat

end

end A261448.P8391811984120079628

/-! ## A261448.P7349697532023317946

`∩[A129848(n+1), A255725(n+1)]`
-/

namespace A261448.P7349697532023317946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261448.P7349697532023317946

/-! ## A261448.P10575924253252069830

`∩[A249766(n+1), A011531(A357929(n+1))]`
-/

namespace A261448.P10575924253252069830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011531 (A357929 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261448.P10575924253252069830

/-!
# A261449: Prime numbers whose decimal digits contain a total of two loops.

The programs for A261449, there is no canonical definition to state claims against.
-/

/-! ## A261449.P355925518935012873

`p?[n*(A064692(n)-1)]`
-/

namespace A261449.P355925518935012873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A064692 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261449.P355925518935012873

/-! ## A261449.P1484572999094453768

`p?[eq[A064692(n), A077462(n)]]`
-/

namespace A261449.P1484572999094453768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A261449.P1484572999094453768

/-! ## A261449.P14327132313745501809

`p?[eq[A064692(n), A141310(n)]]`
-/

namespace A261449.P14327132313745501809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A261449.P14327132313745501809

/-! ## A261449.P1661851557782346535

`eq[2, A003415(n)*A064692(n)]`
-/

namespace A261449.P1661851557782346535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n * A064692 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A261449.P1661851557782346535

/-! ## A261449.P13514078057308538565

`p?[A001489(n)+n*A064692(n)]`
-/

namespace A261449.P13514078057308538565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (n : ℤ) * A064692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261449.P13514078057308538565

/-! ## A261449.P18419951072236973455

`eq[A007918(A003415(n)), A064692(n)]`
-/

namespace A261449.P18419951072236973455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A003415 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261449.P18419951072236973455

/-! ## A261449.P3702989682212223815

`A000040(eq[2, A064692(A008578(n+1))])`
-/

namespace A261449.P3702989682212223815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261449.P3702989682212223815

/-!
# A261451: Expansion of Product_{k>=1} ((1+x^k)/(1-x^k))^(k+1).

The programs for A261451, there is no canonical definition to state claims against.
-/

/-! ## A261451.P13737925233042830234

`∑[∑[A003056(6^n-n)]]`
-/

namespace A261451.P13737925233042830234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (6 ^ n - n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261451.P13737925233042830234

/-! ## A261451.P12558736765445703220

`∑[∑[A342741(a(n-1)+1)]]` with `a(0)=1, a(1)=2`
-/

namespace A261451.P12558736765445703220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  A342741 (f2 (n - 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261451.P12558736765445703220

/-!
# A261452: Expansion of Product_{k>=1} ((1+x^k)/(1-x^k))^(2*k-1).

The programs for A261452, there is no canonical definition to state claims against.
-/

/-! ## A261452.P5738367935449851089

`floor(2^(n-1)*∑[∑[n+2]]/A065603(2*(n+1)))`
-/

namespace A261452.P5738367935449851089
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A065603 (2 * (n + 1)) : ℚ)⌋

end

end A261452.P5738367935449851089

/-! ## A261452.P14677369668629908670

`Δ[A008612(record[A350816(n+1)])]`
-/

namespace A261452.P14677369668629908670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350816 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261452.P14677369668629908670

/-! ## A261452.P12717188223884161855

`A154327(2*n)-A372172(A370644(n))`
-/

namespace A261452.P12717188223884161855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154327 (2 * n) - A372172 (A370644 n).toNat

end

end A261452.P12717188223884161855

/-!
# A261453: Near-repdigit palindromes with an odd number of digits and all digits except the middle digit equal.

The programs for A261453, there is no canonical definition to state claims against.
-/

/-! ## A261453.P188990331138710661

`∩[A002113(n+1), A210666(n+1)]`
-/

namespace A261453.P188990331138710661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261453.P188990331138710661

/-! ## A261453.P12154160274754977453

`∩[A056525(n+1), A210666(n+1)]`
-/

namespace A261453.P12154160274754977453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261453.P12154160274754977453

/-! ## A261453.P3520730195589410121

`∩[A061379(n+1), A210666(n+1)]`
-/

namespace A261453.P3520730195589410121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261453.P3520730195589410121

/-! ## A261453.P17570120946195940985

`∩[A110751(n+1), A210666(n+1)]`
-/

namespace A261453.P17570120946195940985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261453.P17570120946195940985

/-!
# A261454: Expansion of a(x^2) / f(-x) in powers of x where a() is a cubic AGM theta function and f() is a Ramanujan theta function.

The programs for A261454, there is no canonical definition to state claims against.
-/

/-! ## A261454.P4530853010052723375

`A053268(n)+2*A153251(n)`
-/

namespace A261454.P4530853010052723375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053268 n + 2 * A153251 n

end

end A261454.P4530853010052723375

/-! ## A261454.P8697442809755465347

`A053268(n)+2*A053271(2*n)`
-/

namespace A261454.P8697442809755465347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053268 n + 2 * A053271 (2 * n)

end

end A261454.P8697442809755465347

/-! ## A261454.P12671740710540864076

`A053268(n)+A053268(n)-A053273(2*n)`
-/

namespace A261454.P12671740710540864076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053268 n + (A053268 n - A053273 (2 * n))

end

end A261454.P12671740710540864076

/-! ## A261454.P3463168177289846302

`A153251(n)+A153251(n)+A053273(2*n)+2*A053271(2*n)`
-/

namespace A261454.P3463168177289846302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153251 n + (A153251 n + (A053273 (2 * n) + 2 * A053271 (2 * n)))

end

end A261454.P3463168177289846302

/-! ## A261454.P11318388708784567034

`A053268(n)+A005843(A153251(n))`
-/

namespace A261454.P11318388708784567034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053268 n + A005843 (A153251 n).toNat

end

end A261454.P11318388708784567034

/-!
# A261456: Prime numbers whose sum of digits is not a power of 2.

The programs for A261456, the canonical program `A261456.P17740723349919891104` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261456 has offset 1).

The definition of A261456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1995 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261456.P17740723349919891104

`p?[A005408(n)*A043545(A004092(n))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A261456

/-- `p?[A005408(n)*A043545(A004092(n))]` -/
def P17740723349919891104.Spec : Prop :=
  ∀ n, P17740723349919891104.a n = A261456 (n + 1)

theorem P17740723349919891104.correct : P17740723349919891104.Spec := by
  intro n
  simp only [A261456, Nat.add_sub_cancel]

end A261456

/-! ## A261456.P15738883390187613898

`p?[comp[A028838(n+1)]]`
-/

namespace A261456.P15738883390187613898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A261456.P15738883390187613898

namespace A261456

/-- `p?[comp[A028838(n+1)]]` -/
def P15738883390187613898.Spec : Prop :=
  ∀ n, (P15738883390187613898.a n : ℤ) = A261456 (n + 1)

end A261456

/-! ## A261456.P16602598824047231767

`p?[n-A048298(A007953(n))]`
-/

namespace A261456.P16602598824047231767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A048298 (A007953 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261456.P16602598824047231767

namespace A261456

/-- `p?[n-A048298(A007953(n))]` -/
def P16602598824047231767.Spec : Prop :=
  ∀ n, P16602598824047231767.a n = A261456 (n + 1)

end A261456

/-! ## A261456.P7832415535387869770

`eq[A018783(n), A293668(A007953(n))]`
-/

namespace A261456.P7832415535387869770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293668 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261456.P7832415535387869770

namespace A261456

/-- `eq[A018783(n), A293668(A007953(n))]` -/
def P7832415535387869770.Spec : Prop :=
  ∀ n, (P7832415535387869770.a n : ℤ) = A261456 (n + 1)

end A261456

/-! ## A261456.P3261844915482974591

`p?[(n+1)*A000035(A006530(A007953(n+1)))]`
-/

namespace A261456.P3261844915482974591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000035 (A006530 (A007953 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261456.P3261844915482974591

namespace A261456

/-- `p?[(n+1)*A000035(A006530(A007953(n+1)))]` -/
def P3261844915482974591.Spec : Prop :=
  ∀ n, P3261844915482974591.a n = A261456 (n + 1)

end A261456

/-! ## A261456.P5524368466386138469

`p?[(n+1)*A014963(A000010(A118881(n+1)))]`
-/

namespace A261456.P5524368466386138469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A014963 (A000010 (A118881 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261456.P5524368466386138469

namespace A261456

/-- `p?[(n+1)*A014963(A000010(A118881(n+1)))]` -/
def P5524368466386138469.Spec : Prop :=
  ∀ n, P5524368466386138469.a n = A261456 (n + 1)

end A261456

/-! ## A261456.P655379463475704459

`p?[A043545(A007953(n))*A225891(n+1)]`
-/

namespace A261456.P655379463475704459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (A007953 n).toNat * A225891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261456.P655379463475704459

namespace A261456

/-- `p?[A043545(A007953(n))*A225891(n+1)]` -/
def P655379463475704459.Spec : Prop :=
  ∀ n, P655379463475704459.a n = A261456 (n + 1)

end A261456

/-!
# A261457: a(n) = prime(n)! - n!.

The programs for A261457, the canonical program `A261457.P16800842563720939048` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261457 has offset 1).

The definition of A261457 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261457.P16800842563720939048

`A039716(n+1)-A000142(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A261457

/-- `A039716(n+1)-A000142(n+1)` -/
def P16800842563720939048.Spec : Prop :=
  ∀ n, P16800842563720939048.a n = A261457 (n + 1)

theorem P16800842563720939048.correct : P16800842563720939048.Spec := by
  intro n
  simp only [A261457, Nat.add_sub_cancel]

end A261457

/-! ## A261457.P6980196066607619797

`p?[comp[n²]]!-(n+1)!`
-/

namespace A261457.P6980196066607619797
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℤ) - (Nat.factorial (n + 1) : ℤ)

end

end A261457.P6980196066607619797

namespace A261457

/-- `p?[comp[n²]]!-(n+1)!` -/
def P6980196066607619797.Spec : Prop :=
  ∀ n, P6980196066607619797.a n = A261457 (n + 1)

end A261457

/-! ## A261457.P13467676778672092472

`record[∑{p}[n+2, #!]]-(n+1)!`
-/

namespace A261457.P13467676778672092472
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorial p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (Nat.factorial (n + 1) : ℤ)

end

end A261457.P13467676778672092472

namespace A261457

/-- `record[∑{p}[n+2, #!]]-(n+1)!` -/
def P13467676778672092472.Spec : Prop :=
  ∀ n, P13467676778672092472.a n = A261457 (n + 1)

end A261457

/-! ## A261457.P7683714187555774588

`record[∏{p}[n+2, #!]]-(n+1)!`
-/

namespace A261457.P7683714187555774588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (Nat.factorial (n + 1) : ℤ)

end

end A261457.P7683714187555774588

namespace A261457

/-- `record[∏{p}[n+2, #!]]-(n+1)!` -/
def P7683714187555774588.Spec : Prop :=
  ∀ n, P7683714187555774588.a n = A261457 (n + 1)

end A261457

/-! ## A261457.P8173491933259032324

`eq[1, ∑{d}[n, floor(atan(#))]]!-(n+1)!`
-/

namespace A261457.P8173491933259032324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), ⌊Real.arctan (d : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℤ) - (Nat.factorial (n + 1) : ℤ)

end

end A261457.P8173491933259032324

namespace A261457

/-- `eq[1, ∑{d}[n, floor(atan(#))]]!-(n+1)!` -/
def P8173491933259032324.Spec : Prop :=
  ∀ n, P8173491933259032324.a n = A261457 (n + 1)

end A261457

/-!
# A261459: Numbers k such that the concatenation of k 1's, the digits of k^2 + k + 1, and k 1's is prime.

The programs for A261459, there is no canonical definition to state claims against.
-/

/-! ## A261459.P16824963255072158238

`A303387(A338115(n+2))+floor(sqrt(n))²+n`
-/

namespace A261459.P16824963255072158238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303387 (A338115 (n + 2)).toNat + (Nat.sqrt n ^ 2 + n : ℤ)

end

end A261459.P16824963255072158238

/-! ## A261459.P2867327813395681331

`eq[A079904(A011862(n)), A177517(n+1)]`
-/

namespace A261459.P2867327813395681331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 (A011862 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261459.P2867327813395681331

/-! ## A261459.P7517917464477107339

`A147472(A147470(n+1))+A047363(n+1)`
-/

namespace A261459.P7517917464477107339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147472 (A147470 (n + 1)).toNat + A047363 (n + 1)

end

end A261459.P7517917464477107339

/-!
# A261460: Numbers k such that k^11-1 is a semiprime.

The programs for A261460, there is no canonical definition to state claims against.
-/

/-! ## A261460.P7089921649139089758

`A194944(A102971(n+1)+1)`
-/

namespace A261460.P7089921649139089758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194944 (A102971 (n + 1) + 1).toNat

end

end A261460.P7089921649139089758

/-!
# A261461: a(n) is the smallest nonzero number that is not a substring of n in its binary representation.

The programs for A261461, there is no canonical definition to state claims against.
-/

/-! ## A261461.P13940363412617730949

`gcd(A069517(n+1), A261922(n))`
-/

namespace A261461.P13940363412617730949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A069517 (n + 1)) (A261922 n)

end

end A261461.P13940363412617730949

/-! ## A261461.P9369031503896562373

`A261922(n)+A000038(A261922(n))`
-/

namespace A261461.P9369031503896562373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261922 n + A000038 (A261922 n).toNat

end

end A261461.P9369031503896562373

/-! ## A261461.P5041038197844229480

`or(A069517(A007947(n+1)), A261922(n))`
-/

namespace A261461.P5041038197844229480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A069517 (A007947 (n + 1)).toNat) (A261922 n)

end

end A261461.P5041038197844229480

/-! ## A261461.P14456112785444380412

`A091460(n)+A048298(A181497(n))`
-/

namespace A261461.P14456112785444380412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091460 n + A048298 (A181497 n).toNat

end

end A261461.P14456112785444380412

/-! ## A261461.P5230868571843983509

`A209229(A062708(n))+A091460(n)`
-/

namespace A261461.P5230868571843983509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A062708 n).toNat + A091460 n

end

end A261461.P5230868571843983509

/-! ## A261461.P256353445591174891

`A209229(A062728(n))+A091460(n)`
-/

namespace A261461.P256353445591174891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A062728 n).toNat + A091460 n

end

end A261461.P256353445591174891

/-! ## A261461.P16067434689445831192

`A091460(n)+A033683(A006918(n))`
-/

namespace A261461.P16067434689445831192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091460 n + A033683 (A006918 n).toNat

end

end A261461.P16067434689445831192

/-! ## A261461.P11998977064596496711

`A091460(n)+A007814(A018800(n+1))`
-/

namespace A261461.P11998977064596496711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091460 n + A007814 (A018800 (n + 1)).toNat

end

end A261461.P11998977064596496711

/-! ## A261461.P12812179526906443533

`A091460(n)+A007814(A068164(n+1))`
-/

namespace A261461.P12812179526906443533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091460 n + A007814 (A068164 (n + 1)).toNat

end

end A261461.P12812179526906443533

/-! ## A261461.P14805579691370238684

`A091460(n)-A159075(n²)`
-/

namespace A261461.P14805579691370238684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091460 n - A159075 (n ^ 2)

end

end A261461.P14805579691370238684

/-! ## A261461.P13657226228989380836

`A091460(n)*A286299(n²)`
-/

namespace A261461.P13657226228989380836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091460 n * A286299 (n ^ 2)

end

end A261461.P13657226228989380836

/-! ## A261461.P15873292844208580275

`A091460(n)*A373565(n²)`
-/

namespace A261461.P15873292844208580275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091460 n * A373565 (n ^ 2)

end

end A261461.P15873292844208580275

/-!
# A261463: Numbers n such that n is a twin prime and 2n + 1 is a twin prime.

The programs for A261463, there is no canonical definition to state claims against.
-/

/-! ## A261463.P11160981678309436509

`∪[A069142(n+1), A229092(n+1)]`
-/

namespace A261463.P11160981678309436509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A261463.P11160981678309436509

/-! ## A261463.P2264367639232535509

`A221310(n+3)-A043545(2*n)`
-/

namespace A261463.P2264367639232535509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221310 (n + 3) - A043545 (2 * n)

end

end A261463.P2264367639232535509

/-! ## A261463.P2468621455572754560

`A221310(n+3)-char[A252867(n+1)]`
-/

namespace A261463.P2468621455572754560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252867 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221310 (n + 3) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A261463.P2468621455572754560

/-! ## A261463.P3884412967218090031

`A221310(n+3)-A010051(A335364(n+1))`
-/

namespace A261463.P3884412967218090031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221310 (n + 3) - A010051 (A335364 (n + 1)).toNat

end

end A261463.P3884412967218090031

/-! ## A261463.P12073148125601778815

`A221310(n+3)-A275855(A188069(n+1))`
-/

namespace A261463.P12073148125601778815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221310 (n + 3) - A275855 (A188069 (n + 1)).toNat

end

end A261463.P12073148125601778815

/-! ## A261463.P1924585780457103544

`p?[A128436(n+1)-2%A000040(n+1)]`
-/

namespace A261463.P1924585780457103544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128436 (n + 1) - Int.tmod 2 (A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261463.P1924585780457103544

/-! ## A261463.P10577677761793262658

`p?[A128436(n+1)-A001359(n+1)%3]`
-/

namespace A261463.P10577677761793262658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128436 (n + 1) - Int.tmod (A001359 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261463.P10577677761793262658

/-! ## A261463.P12648686541861748048

`A221310(n+3)-A266588(A246035(n))`
-/

namespace A261463.P12648686541861748048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221310 (n + 3) - A266588 (A246035 n).toNat

end

end A261463.P12648686541861748048

/-!
# A261464: a(n) = prime(n+2)^3 - prime(n+1)^2 + prime(n).

The programs for A261464, the canonical program `A261464.P8206708161756603330` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261464 has offset 1).

The definition of A261464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261464.P8206708161756603330

`A030078(n+3)-A261465(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A261464

/-- `A030078(n+3)-A261465(n+1)` -/
def P8206708161756603330.Spec : Prop :=
  ∀ n, P8206708161756603330.a n = A261464 (n + 1)

theorem P8206708161756603330.correct : P8206708161756603330.Spec := by
  intro n
  simp only [A261464, Nat.add_sub_cancel]

end A261464

/-! ## A261464.P4423618666379281915

`A000578(A215848(n+1))-A261465(n+1)`
-/

namespace A261464.P4423618666379281915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A215848 (n + 1)).toNat - A261465 (n + 1)

end

end A261464.P4423618666379281915

namespace A261464

/-- `A000578(A215848(n+1))-A261465(n+1)` -/
def P4423618666379281915.Spec : Prop :=
  ∀ n, P4423618666379281915.a n = A261464 (n + 1)

end A261464

/-! ## A261464.P12686650950488710129

`A000578(A000040(n+3))-A261465(n+1)`
-/

namespace A261464.P12686650950488710129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A000040 (n + 3)).toNat - A261465 (n + 1)

end

end A261464.P12686650950488710129

namespace A261464

/-- `A000578(A000040(n+3))-A261465(n+1)` -/
def P12686650950488710129.Spec : Prop :=
  ∀ n, P12686650950488710129.a n = A261464 (n + 1)

end A261464

/-!
# A261465: a(n) = prime(n+1)^2 - prime(n).

The programs for A261465, the canonical program `A261465.P5878718986034780619` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261465 has offset 1).

The definition of A261465 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A261465.P5878718986034780619

`A036689(n+2)+A001223(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A261465

/-- `A036689(n+2)+A001223(n+1)` -/
def P5878718986034780619.Spec : Prop :=
  ∀ n, P5878718986034780619.a n = A261465 (n + 1)

theorem P5878718986034780619.correct : P5878718986034780619.Spec := by
  intro n
  simp only [A261465, Nat.add_sub_cancel]

end A261465

/-! ## A261465.P15913206904409447697

`A069482(n+1)+A036689(n+1)`
-/

namespace A261465.P15913206904409447697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069482 (n + 1) + A036689 (n + 1)

end

end A261465.P15913206904409447697

namespace A261465

/-- `A069482(n+1)+A036689(n+1)` -/
def P15913206904409447697.Spec : Prop :=
  ∀ n, P15913206904409447697.a n = A261465 (n + 1)

end A261465

/-! ## A261465.P1877205516690361935

`A069484(n+1)-A036690(n+1)`
-/

namespace A261465.P1877205516690361935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069484 (n + 1) - A036690 (n + 1)

end

end A261465.P1877205516690361935

namespace A261465

/-- `A069484(n+1)-A036690(n+1)` -/
def P1877205516690361935.Spec : Prop :=
  ∀ n, P1877205516690361935.a n = A261465 (n + 1)

end A261465

/-! ## A261465.P6513730484168499671

`A117961(n+1)-A064051(n+1)`
-/

namespace A261465.P6513730484168499671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117961 (n + 1) - A064051 (n + 1)

end

end A261465.P6513730484168499671

namespace A261465

/-- `A117961(n+1)-A064051(n+1)` -/
def P6513730484168499671.Spec : Prop :=
  ∀ n, P6513730484168499671.a n = A261465 (n + 1)

end A261465

/-! ## A261465.P9497150033641701625

`A349660(n+1)-A100484(n+1)`
-/

namespace A261465.P9497150033641701625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349660 (n + 1) - A100484 (n + 1)

end

end A261465.P9497150033641701625

namespace A261465

/-- `A349660(n+1)-A100484(n+1)` -/
def P9497150033641701625.Spec : Prop :=
  ∀ n, P9497150033641701625.a n = A261465 (n + 1)

end A261465

/-! ## A261465.P17638165989100338072

`A143928(n+1)-A349660(n+1)`
-/

namespace A261465.P17638165989100338072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143928 (n + 1) - A349660 (n + 1)

end

end A261465.P17638165989100338072

namespace A261465

/-- `A143928(n+1)-A349660(n+1)` -/
def P17638165989100338072.Spec : Prop :=
  ∀ n, P17638165989100338072.a n = A261465 (n + 1)

end A261465

/-! ## A261465.P12543190856147278191

`A367335(n+1)-A364411(n+1)`
-/

namespace A261465.P12543190856147278191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367335 (n + 1) - A364411 (n + 1)

end

end A261465.P12543190856147278191

namespace A261465

/-- `A367335(n+1)-A364411(n+1)` -/
def P12543190856147278191.Spec : Prop :=
  ∀ n, P12543190856147278191.a n = A261465 (n + 1)

end A261465

/-! ## A261465.P16605720950005201484

`A066872(n+2)-A008864(n+1)`
-/

namespace A261465.P16605720950005201484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 2) - A008864 (n + 1)

end

end A261465.P16605720950005201484

namespace A261465

/-- `A066872(n+2)-A008864(n+1)` -/
def P16605720950005201484.Spec : Prop :=
  ∀ n, P16605720950005201484.a n = A261465 (n + 1)

end A261465

/-! ## A261465.P15961034471564875992

`A065091(n+1)²-Δ[A007504(n)]`
-/

namespace A261465.P15961034471564875992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) ^ 2 - (f1 (n + 1) - f1 n)

end

end A261465.P15961034471564875992

namespace A261465

/-- `A065091(n+1)²-Δ[A007504(n)]` -/
def P15961034471564875992.Spec : Prop :=
  ∀ n, P15961034471564875992.a n = A261465 (n + 1)

end A261465

/-! ## A261465.P14660851901682484609

`A065091(n+1)²-A000040(n+1)`
-/

namespace A261465.P14660851901682484609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) ^ 2 - A000040 (n + 1)

end

end A261465.P14660851901682484609

namespace A261465

/-- `A065091(n+1)²-A000040(n+1)` -/
def P14660851901682484609.Spec : Prop :=
  ∀ n, P14660851901682484609.a n = A261465 (n + 1)

end A261465

/-! ## A261465.P4160048623934816609

`A349660(n+1)-2*A000040(n+1)`
-/

namespace A261465.P4160048623934816609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349660 (n + 1) - 2 * A000040 (n + 1)

end

end A261465.P4160048623934816609

namespace A261465

/-- `A349660(n+1)-2*A000040(n+1)` -/
def P4160048623934816609.Spec : Prop :=
  ∀ n, P4160048623934816609.a n = A261465 (n + 1)

end A261465

/-! ## A261465.P9640041547878927942

`A006094(n+1)+A048852(n+1)-A000040(n+1)`
-/

namespace A261465.P9640041547878927942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + (A048852 (n + 1) - A000040 (n + 1))

end

end A261465.P9640041547878927942

namespace A261465

/-- `A006094(n+1)+A048852(n+1)-A000040(n+1)` -/
def P9640041547878927942.Spec : Prop :=
  ∀ n, P9640041547878927942.a n = A261465 (n + 1)

end A261465

/-! ## A261465.P4655725985692510914

`A036689(n+1)+A349660(n+1)-A036690(n+1)`
-/

namespace A261465.P4655725985692510914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) + (A349660 (n + 1) - A036690 (n + 1))

end

end A261465.P4655725985692510914

namespace A261465

/-- `A036689(n+1)+A349660(n+1)-A036690(n+1)` -/
def P4655725985692510914.Spec : Prop :=
  ∀ n, P4655725985692510914.a n = A261465 (n + 1)

end A261465

/-! ## A261465.P16122904711390026182

`Δ[A024450(n+1)-A007504(n)]`
-/

namespace A261465.P16122904711390026182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (n + 1) - A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261465.P16122904711390026182

namespace A261465

/-- `Δ[A024450(n+1)-A007504(n)]` -/
def P16122904711390026182.Spec : Prop :=
  ∀ n, P16122904711390026182.a n = A261465 (n + 1)

end A261465

/-! ## A261465.P14098970878481300935

`A001248(n+2)-A000040(n+1)`
-/

namespace A261465.P14098970878481300935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 2) - A000040 (n + 1)

end

end A261465.P14098970878481300935

namespace A261465

/-- `A001248(n+2)-A000040(n+1)` -/
def P14098970878481300935.Spec : Prop :=
  ∀ n, P14098970878481300935.a n = A261465 (n + 1)

end A261465

/-! ## A261465.P13526827880132461497

`A036690(n+2)-A001043(n+1)`
-/

namespace A261465.P13526827880132461497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036690 (n + 2) - A001043 (n + 1)

end

end A261465.P13526827880132461497

namespace A261465

/-- `A036690(n+2)-A001043(n+1)` -/
def P13526827880132461497.Spec : Prop :=
  ∀ n, P13526827880132461497.a n = A261465 (n + 1)

end A261465

/-! ## A261465.P2222959724573759725

`A049001(n+2)-A040976(n+1)`
-/

namespace A261465.P2222959724573759725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (n + 2) - A040976 (n + 1)

end

end A261465.P2222959724573759725

namespace A261465

/-- `A049001(n+2)-A040976(n+1)` -/
def P2222959724573759725.Spec : Prop :=
  ∀ n, P2222959724573759725.a n = A261465 (n + 1)

end A261465

/-! ## A261465.P4495842408519046331

`A084920(n+2)-A006093(n+1)`
-/

namespace A261465.P4495842408519046331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 2) - A006093 (n + 1)

end

end A261465.P4495842408519046331

namespace A261465

/-- `A084920(n+2)-A006093(n+1)` -/
def P4495842408519046331.Spec : Prop :=
  ∀ n, P4495842408519046331.a n = A261465 (n + 1)

end A261465

/-! ## A261465.P7027737699914872723

`A349660(n+1)-A001747(n+2)`
-/

namespace A261465.P7027737699914872723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349660 (n + 1) - A001747 (n + 2)

end

end A261465.P7027737699914872723

namespace A261465

/-- `A349660(n+1)-A001747(n+2)` -/
def P7027737699914872723.Spec : Prop :=
  ∀ n, P7027737699914872723.a n = A261465 (n + 1)

end A261465

/-! ## A261465.P2855600181319459202

`A001248(n+2)-A008578(n+2)`
-/

namespace A261465.P2855600181319459202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 2) - A008578 (n + 2)

end

end A261465.P2855600181319459202

namespace A261465

/-- `A001248(n+2)-A008578(n+2)` -/
def P2855600181319459202.Spec : Prop :=
  ∀ n, P2855600181319459202.a n = A261465 (n + 1)

end A261465

/-!
# A261466: Records in A261461.

The programs for A261466, there is no canonical definition to state claims against.
-/

/-! ## A261466.P896752000151359706

`comp[2*or(n, 2*n)]`
-/

namespace A261466.P896752000151359706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A261466.P896752000151359706

/-! ## A261466.P10554978658855365586

`comp[abs(xor(5*n, -n))]`
-/

namespace A261466.P10554978658855365586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (5 * n : ℤ) (-(n : ℤ))|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A261466.P10554978658855365586

/-! ## A261466.P11592016854283171721

`comp[-xor(5*n, -n)]`
-/

namespace A261466.P11592016854283171721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (5 * n : ℤ) (-(n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A261466.P11592016854283171721

/-! ## A261466.P2720914852619549770

`∪[2*n+1, A035262(n+1)]`
-/

namespace A261466.P2720914852619549770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A261466.P2720914852619549770

/-!
# A261467: Where records occur in A261461.

The programs for A261467, there is no canonical definition to state claims against.
-/

/-! ## A261467.P8892335534411114990

`record[A056744(A062050(n+1))%A000244(n)]`
-/

namespace A261467.P8892335534411114990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056744 (A062050 (n + 1)).toNat) (A000244 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261467.P8892335534411114990

/-! ## A261467.P6234304379321748069

`A091461(comp[2*or(n, 2*n)])%A341803(n)`
-/

namespace A261467.P6234304379321748069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091461 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A341803 n)

end

end A261467.P6234304379321748069

/-! ## A261467.P3687276829847821450

`A091461(comp[-xor(5*n, -n)])%A341803(n)`
-/

namespace A261467.P3687276829847821450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (5 * n : ℤ) (-(n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091461 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) (A341803 n)

end

end A261467.P3687276829847821450

/-! ## A261467.P8320099583525744652

`A091461(A261466(n+1))%A341803(n)`
-/

namespace A261467.P8320099583525744652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091461 (A261466 (n + 1)).toNat) (A341803 n)

end

end A261467.P8320099583525744652

/-!
# A261468: a(n) = prime(n+2) mod prime(n).

The programs for A261468, the canonical program `A261468.P14571084693483149754` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261468 has offset 1).

The definition of A261468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261468.P14571084693483149754

`A031131(n+1)%(∑[n]+2)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A261468

/-- `A031131(n+1)%(∑[n]+2)` -/
def P14571084693483149754.Spec : Prop :=
  ∀ n, P14571084693483149754.a n = A261468 (n + 1)

theorem P14571084693483149754.correct : P14571084693483149754.Spec := by
  intro n
  simp only [A261468, Nat.add_sub_cancel]

end A261468

/-! ## A261468.P17765923981501700502

`p?[2*n+5]%Δ[A007504(n)]`
-/

namespace A261468.P17765923981501700502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (f2 (n + 1) - f2 n)

end

end A261468.P17765923981501700502

namespace A261468

/-- `p?[2*n+5]%Δ[A007504(n)]` -/
def P17765923981501700502.Spec : Prop :=
  ∀ n, P17765923981501700502.a n = A261468 (n + 1)

end A261468

/-! ## A261468.P5849897086864978081

`A004139(n+1)%A000040(n+1)`
-/

namespace A261468.P5849897086864978081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004139 (n + 1)) (A000040 (n + 1))

end

end A261468.P5849897086864978081

namespace A261468

/-- `A004139(n+1)%A000040(n+1)` -/
def P5849897086864978081.Spec : Prop :=
  ∀ n, P5849897086864978081.a n = A261468 (n + 1)

end A261468

/-! ## A261468.P13903109624717526351

`A215848(n+1)%A000040(n+1)`
-/

namespace A261468.P13903109624717526351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215848 (n + 1)) (A000040 (n + 1))

end

end A261468.P13903109624717526351

namespace A261468

/-- `A215848(n+1)%A000040(n+1)` -/
def P13903109624717526351.Spec : Prop :=
  ∀ n, P13903109624717526351.a n = A261468 (n + 1)

end A261468

/-! ## A261468.P11253762524983772223

`A292926(n+1)%A000040(n+1)`
-/

namespace A261468.P11253762524983772223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292926 (n + 1)) (A000040 (n + 1))

end

end A261468.P11253762524983772223

namespace A261468

/-- `A292926(n+1)%A000040(n+1)` -/
def P11253762524983772223.Spec : Prop :=
  ∀ n, P11253762524983772223.a n = A261468 (n + 1)

end A261468

/-! ## A261468.P1450662541079190821

`p?[a(n-1)+2]%p?[n-(-1)^n]` with `a(0)=5`
-/

namespace A261468.P1450662541079190821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A261468.P1450662541079190821

namespace A261468

/-- `p?[a(n-1)+2]%p?[n-(-1)^n]` -/
def P1450662541079190821.Spec : Prop :=
  ∀ n, P1450662541079190821.a n = A261468 (n + 1)

end A261468

/-! ## A261468.P9990674782209879969

`A000040(n+3)%p?[abs(xor(n, -2))]`
-/

namespace A261468.P9990674782209879969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 3)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A261468.P9990674782209879969

namespace A261468

/-- `A000040(n+3)%p?[abs(xor(n, -2))]` -/
def P9990674782209879969.Spec : Prop :=
  ∀ n, P9990674782209879969.a n = A261468 (n + 1)

end A261468

/-! ## A261468.P12831535227646713027

`A008578(n+4)%p?[xor(1, n)+1]`
-/

namespace A261468.P12831535227646713027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 4)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A261468.P12831535227646713027

namespace A261468

/-- `A008578(n+4)%p?[xor(1, n)+1]` -/
def P12831535227646713027.Spec : Prop :=
  ∀ n, P12831535227646713027.a n = A261468 (n + 1)

end A261468

/-! ## A261468.P8117112039248848403

`sqrt(A001248(n+3))%p?[xor(1, n)+1]`
-/

namespace A261468.P8117112039248848403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 3) : ℝ))) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A261468.P8117112039248848403

namespace A261468

/-- `sqrt(A001248(n+3))%p?[xor(1, n)+1]` -/
def P8117112039248848403.Spec : Prop :=
  ∀ n, P8117112039248848403.a n = A261468 (n + 1)

end A261468

/-! ## A261468.P12058450811250786160

`A207409(C(n+3, 2))`
-/

namespace A261468.P12058450811250786160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207409 (Nat.choose (n + 3) 2)

end

end A261468.P12058450811250786160

namespace A261468

/-- `A207409(C(n+3, 2))` -/
def P12058450811250786160.Spec : Prop :=
  ∀ n, P12058450811250786160.a n = A261468 (n + 1)

end A261468

/-! ## A261468.P17589499092815175825

`A207409(A253145(n+1))`
-/

namespace A261468.P17589499092815175825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207409 (A253145 (n + 1)).toNat

end

end A261468.P17589499092815175825

namespace A261468

/-- `A207409(A253145(n+1))` -/
def P17589499092815175825.Spec : Prop :=
  ∀ n, P17589499092815175825.a n = A261468 (n + 1)

end A261468

/-! ## A261468.P3831774674737285878

`A207409(A000217(n+2))`
-/

namespace A261468.P3831774674737285878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207409 (A000217 (n + 2)).toNat

end

end A261468.P3831774674737285878

namespace A261468

/-- `A207409(A000217(n+2))` -/
def P3831774674737285878.Spec : Prop :=
  ∀ n, P3831774674737285878.a n = A261468 (n + 1)

end A261468

/-! ## A261468.P14611607603756695854

`A207409(A350295(n+3))`
-/

namespace A261468.P14611607603756695854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207409 (A350295 (n + 3)).toNat

end

end A261468.P14611607603756695854

namespace A261468

/-- `A207409(A350295(n+3))` -/
def P14611607603756695854.Spec : Prop :=
  ∀ n, P14611607603756695854.a n = A261468 (n + 1)

end A261468

/-!
# A261469: a(n) = prime(n+3) mod prime(n).

The programs for A261469, the canonical program `A261469.P1821801578246138474` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261469 has offset 1).

The definition of A261469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261469.P12920270680113004692

`A031165(n+1)%A022438(n)`
-/

namespace A261469.P12920270680113004692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031165 (n + 1)) (A022438 n)

end

end A261469.P12920270680113004692

namespace A261469

/-- `A031165(n+1)%A022438(n)` -/
def P12920270680113004692.Spec : Prop :=
  ∀ n, P12920270680113004692.a n = A261469 (n + 1)

end A261469

/-! ## A261469.P1821801578246138474

`A140461(n+1)%A000040(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A261469

/-- `A140461(n+1)%A000040(n+1)` -/
def P1821801578246138474.Spec : Prop :=
  ∀ n, P1821801578246138474.a n = A261469 (n + 1)

theorem P1821801578246138474.correct : P1821801578246138474.Spec := by
  intro n
  simp only [A261469, Nat.add_sub_cancel]

end A261469

/-! ## A261469.P2124286329664181542

`A004139(n+2)%A000040(n+1)`
-/

namespace A261469.P2124286329664181542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004139 (n + 2)) (A000040 (n + 1))

end

end A261469.P2124286329664181542

namespace A261469

/-- `A004139(n+2)%A000040(n+1)` -/
def P2124286329664181542.Spec : Prop :=
  ∀ n, P2124286329664181542.a n = A261469 (n + 1)

end A261469

/-! ## A261469.P18198317397216668604

`Δ[A034961(n+1)]%A000040(n+1)`
-/

namespace A261469.P18198317397216668604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000040 (n + 1))

end

end A261469.P18198317397216668604

namespace A261469

/-- `Δ[A034961(n+1)]%A000040(n+1)` -/
def P18198317397216668604.Spec : Prop :=
  ∀ n, P18198317397216668604.a n = A261469 (n + 1)

end A261469

/-! ## A261469.P16716089775300060001

`A065091(n+3)%Δ[A007504(n)]`
-/

namespace A261469.P16716089775300060001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065091 (n + 3)) (f1 (n + 1) - f1 n)

end

end A261469.P16716089775300060001

namespace A261469

/-- `A065091(n+3)%Δ[A007504(n)]` -/
def P16716089775300060001.Spec : Prop :=
  ∀ n, P16716089775300060001.a n = A261469 (n + 1)

end A261469

/-! ## A261469.P5641093974200519389

`A045319(n+3)%A000040(n+1)`
-/

namespace A261469.P5641093974200519389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045319 (n + 3)) (A000040 (n + 1))

end

end A261469.P5641093974200519389

namespace A261469

/-- `A045319(n+3)%A000040(n+1)` -/
def P5641093974200519389.Spec : Prop :=
  ∀ n, P5641093974200519389.a n = A261469 (n + 1)

end A261469

/-! ## A261469.P654427731268753496

`A045344(n+3)%A000040(n+1)`
-/

namespace A261469.P654427731268753496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045344 (n + 3)) (A000040 (n + 1))

end

end A261469.P654427731268753496

namespace A261469

/-- `A045344(n+3)%A000040(n+1)` -/
def P654427731268753496.Spec : Prop :=
  ∀ n, P654427731268753496.a n = A261469 (n + 1)

end A261469

/-! ## A261469.P14042084963276440899

`A000040(n+4)%Δ[A007504(n)]`
-/

namespace A261469.P14042084963276440899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 4)) (f1 (n + 1) - f1 n)

end

end A261469.P14042084963276440899

namespace A261469

/-- `A000040(n+4)%Δ[A007504(n)]` -/
def P14042084963276440899.Spec : Prop :=
  ∀ n, P14042084963276440899.a n = A261469 (n + 1)

end A261469

/-! ## A261469.P11906911921658261379

`A008578(n+5)%A000040(n+1)`
-/

namespace A261469.P11906911921658261379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 5)) (A000040 (n + 1))

end

end A261469.P11906911921658261379

namespace A261469

/-- `A008578(n+5)%A000040(n+1)` -/
def P11906911921658261379.Spec : Prop :=
  ∀ n, P11906911921658261379.a n = A261469 (n + 1)

end A261469

/-! ## A261469.P2680563287113669169

`p?[A020742(n)]%p?[A278029(n+1)]`
-/

namespace A261469.P2680563287113669169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A261469.P2680563287113669169

namespace A261469

/-- `p?[A020742(n)]%p?[A278029(n+1)]` -/
def P2680563287113669169.Spec : Prop :=
  ∀ n, P2680563287113669169.a n = A261469 (n + 1)

end A261469

/-! ## A261469.P10079356587198145082

`A207409(A000217(n+2)+n+2)`
-/

namespace A261469.P10079356587198145082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207409 (A000217 (n + 2) + (n + 2 : ℤ)).toNat

end

end A261469.P10079356587198145082

namespace A261469

/-- `A207409(A000217(n+2)+n+2)` -/
def P10079356587198145082.Spec : Prop :=
  ∀ n, P10079356587198145082.a n = A261469 (n + 1)

end A261469

/-!
# A261470: a(n) = prime(n+3) - prime(n+2) - prime(n+1) + prime(n).

The programs for A261470, the canonical program `A261470.P15751200643723974198` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261470 has offset 1).

The definition of A261470 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A261470.P15751200643723974198

`A001223(n+3)-A001223(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A261470

/-- `A001223(n+3)-A001223(n+1)` -/
def P15751200643723974198.Spec : Prop :=
  ∀ n, P15751200643723974198.a n = A261470 (n + 1)

theorem P15751200643723974198.correct : P15751200643723974198.Spec := by
  intro n
  simp only [A261470, Nat.add_sub_cancel]

end A261470

/-! ## A261470.P17233303563778028413

`A036263(n+1)+A036263(n+2)`
-/

namespace A261470.P17233303563778028413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1) + A036263 (n + 2)

end

end A261470.P17233303563778028413

namespace A261470

/-- `A036263(n+1)+A036263(n+2)` -/
def P17233303563778028413.Spec : Prop :=
  ∀ n, P17233303563778028413.a n = A261470 (n + 1)

theorem P17233303563778028413.correct : P17233303563778028413.Spec := by
  intro n
  simp only [A261470, Nat.add_sub_cancel, A261470.P17233303563778028413.a, A261470.P15751200643723974198.a, A001223, A001223.P5083310856331133973.a, A036263, A036263.P14888342997651084870.a, A046933, A046933.P9479947770746769512.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261470

/-! ## A261470.P14541993742142452689

`A100484(n+1)-A096380(n+1)`
-/

namespace A261470.P14541993742142452689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A096380 (n + 1)

end

end A261470.P14541993742142452689

namespace A261470

/-- `A100484(n+1)-A096380(n+1)` -/
def P14541993742142452689.Spec : Prop :=
  ∀ n, P14541993742142452689.a n = A261470 (n + 1)

end A261470

/-! ## A261470.P9128814708888395925

`A375097(n+2)-A305748(n+1)`
-/

namespace A261470.P9128814708888395925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375097 (n + 2) - A305748 (n + 1)

end

end A261470.P9128814708888395925

namespace A261470

/-- `A375097(n+2)-A305748(n+1)` -/
def P9128814708888395925.Spec : Prop :=
  ∀ n, P9128814708888395925.a n = A261470 (n + 1)

end A261470

/-! ## A261470.P2128536880345851909

`Δ[A001223(n+1)+A001223(n+2)]`
-/

namespace A261470.P2128536880345851909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + A001223 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261470.P2128536880345851909

namespace A261470

/-- `Δ[A001223(n+1)+A001223(n+2)]` -/
def P2128536880345851909.Spec : Prop :=
  ∀ n, P2128536880345851909.a n = A261470 (n + 1)

theorem P2128536880345851909.correct : P2128536880345851909.Spec := by
  intro n
  simp only [A261470, Nat.add_sub_cancel, A261470.P2128536880345851909.f1, A261470.P2128536880345851909.a, A261470.P15751200643723974198.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A261470

/-! ## A261470.P18407154504892644087

`2*A000040(n+1)-A096380(n+1)`
-/

namespace A261470.P18407154504892644087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - A096380 (n + 1)

end

end A261470.P18407154504892644087

namespace A261470

/-- `2*A000040(n+1)-A096380(n+1)` -/
def P18407154504892644087.Spec : Prop :=
  ∀ n, P18407154504892644087.a n = A261470 (n + 1)

end A261470

/-! ## A261470.P888632556552519879

`A031165(n+1)-2*A305748(n+1)`
-/

namespace A261470.P888632556552519879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031165 (n + 1) - 2 * A305748 (n + 1)

end

end A261470.P888632556552519879

namespace A261470

/-- `A031165(n+1)-2*A305748(n+1)` -/
def P888632556552519879.Spec : Prop :=
  ∀ n, P888632556552519879.a n = A261470 (n + 1)

end A261470

/-! ## A261470.P6734766379063284347

`2*A375097(n+2)-A031165(n+1)`
-/

namespace A261470.P6734766379063284347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A375097 (n + 2) - A031165 (n + 1)

end

end A261470.P6734766379063284347

namespace A261470

/-- `2*A375097(n+2)-A031165(n+1)` -/
def P6734766379063284347.Spec : Prop :=
  ∀ n, P6734766379063284347.a n = A261470 (n + 1)

end A261470

/-! ## A261470.P18424634723082214804

`A034963(n+1)-(A181428(n+1)+A034961(n+1))`
-/

namespace A261470.P18424634723082214804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034963 (n + 1) - (A181428 (n + 1) + A034961 (n + 1))

end

end A261470.P18424634723082214804

namespace A261470

/-- `A034963(n+1)-(A181428(n+1)+A034961(n+1))` -/
def P18424634723082214804.Spec : Prop :=
  ∀ n, P18424634723082214804.a n = A261470 (n + 1)

theorem P18424634723082214804.correct : P18424634723082214804.Spec := by
  intro n
  simp only [A261470, Nat.add_sub_cancel, A261470.P18424634723082214804.a, A261470.P15751200643723974198.a, A001223, A001223.P5083310856331133973.a, A034961, A034961.P9480249767911558173.a, A034963, A034963.P11708242366348853171.a, A181428, A181428.P2003735190548304675.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A031131, A031131.P2453725465626413076.a, A046933, A046933.P9479947770746769512.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261470

/-! ## A261470.P7460814563995710646

`A000040(n+1)+A136612(n+1)-A210497(n+1)`
-/

namespace A261470.P7460814563995710646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A136612 (n + 1) - A210497 (n + 1))

end

end A261470.P7460814563995710646

namespace A261470

/-- `A000040(n+1)+A136612(n+1)-A210497(n+1)` -/
def P7460814563995710646.Spec : Prop :=
  ∀ n, P7460814563995710646.a n = A261470 (n + 1)

theorem P7460814563995710646.correct : P7460814563995710646.Spec := by
  intro n
  simp only [A261470, Nat.add_sub_cancel, A261470.P7460814563995710646.a, A261470.P15751200643723974198.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5083310856331133973.a, A136612, A136612.P2775654094035174028.a, A210497, A210497.P15561998313545519789.a, A001043, A001043.P18269783162673735460.a, A046933, A046933.P9479947770746769512.a, A062234, A062234.P8592873382335253705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261470

/-! ## A261470.P953457838222215939

`A000040(n+1)+A375097(n+2)-A024675(n+1)`
-/

namespace A261470.P953457838222215939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A375097 (n + 2) - A024675 (n + 1))

end

end A261470.P953457838222215939

namespace A261470

/-- `A000040(n+1)+A375097(n+2)-A024675(n+1)` -/
def P953457838222215939.Spec : Prop :=
  ∀ n, P953457838222215939.a n = A261470 (n + 1)

end A261470

/-! ## A261470.P14125744278559150545

`Δ[A031131(n+1)]`
-/

namespace A261470.P14125744278559150545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261470.P14125744278559150545

namespace A261470

/-- `Δ[A031131(n+1)]` -/
def P14125744278559150545.Spec : Prop :=
  ∀ n, P14125744278559150545.a n = A261470 (n + 1)

theorem P14125744278559150545.correct : P14125744278559150545.Spec := by
  intro n
  simp only [A261470, Nat.add_sub_cancel, A261470.P14125744278559150545.f1, A261470.P14125744278559150545.a, A261470.P15751200643723974198.a, A001223, A001223.P5083310856331133973.a, A031131, A031131.P2453725465626413076.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261470

/-! ## A261470.P5961145342227138237

`A031131(n+2)-A031131(n+1)`
-/

namespace A261470.P5961145342227138237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 2) - A031131 (n + 1)

end

end A261470.P5961145342227138237

namespace A261470

/-- `A031131(n+2)-A031131(n+1)` -/
def P5961145342227138237.Spec : Prop :=
  ∀ n, P5961145342227138237.a n = A261470 (n + 1)

theorem P5961145342227138237.correct : P5961145342227138237.Spec := by
  intro n
  simp only [A261470, Nat.add_sub_cancel, A261470.P5961145342227138237.a, A261470.P15751200643723974198.a, A001223, A001223.P5083310856331133973.a, A031131, A031131.P2453725465626413076.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261470

/-! ## A261470.P7048729748581318494

`A000040(n+1)-A096379(n+2)`
-/

namespace A261470.P7048729748581318494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A096379 (n + 2)

end

end A261470.P7048729748581318494

namespace A261470

/-- `A000040(n+1)-A096379(n+2)` -/
def P7048729748581318494.Spec : Prop :=
  ∀ n, P7048729748581318494.a n = A261470 (n + 1)

theorem P7048729748581318494.correct : P7048729748581318494.Spec := by
  intro n
  simp only [A261470, Nat.add_sub_cancel, A261470.P7048729748581318494.a, A261470.P15751200643723974198.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5083310856331133973.a, A096379, A096379.P11420595779051591420.a, A001043, A001043.P18269783162673735460.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261470

/-! ## A261470.P1001529259814021134

`A135732(n+2)-A046933(n+1)`
-/

namespace A261470.P1001529259814021134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135732 (n + 2) - A046933 (n + 1)

end

end A261470.P1001529259814021134

namespace A261470

/-- `A135732(n+2)-A046933(n+1)` -/
def P1001529259814021134.Spec : Prop :=
  ∀ n, P1001529259814021134.a n = A261470 (n + 1)

end A261470

/-! ## A261470.P281682666345011371

`A176246(n+2)-A046933(n+1)`
-/

namespace A261470.P281682666345011371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176246 (n + 2) - A046933 (n + 1)

end

end A261470.P281682666345011371

namespace A261470

/-- `A176246(n+2)-A046933(n+1)` -/
def P281682666345011371.Spec : Prop :=
  ∀ n, P281682666345011371.a n = A261470 (n + 1)

theorem P281682666345011371.correct : P281682666345011371.Spec := by
  intro n
  simp only [A261470, Nat.add_sub_cancel, A261470.P281682666345011371.a, A261470.P15751200643723974198.a, A001223, A001223.P5083310856331133973.a, A046933, A046933.P9479947770746769512.a, A176246, A176246.P14955082673946823167.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261470

/-! ## A261470.P6712827883955329058

`A008578(n+2)-A096379(n+2)`
-/

namespace A261470.P6712827883955329058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A096379 (n + 2)

end

end A261470.P6712827883955329058

namespace A261470

/-- `A008578(n+2)-A096379(n+2)` -/
def P6712827883955329058.Spec : Prop :=
  ∀ n, P6712827883955329058.a n = A261470 (n + 1)

end A261470

/-! ## A261470.P910348043743405148

`Δ[A215848(n+1)-Δ[A007504(n)]]`
-/

namespace A261470.P910348043743405148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261470.P910348043743405148

namespace A261470

/-- `Δ[A215848(n+1)-Δ[A007504(n)]]` -/
def P910348043743405148.Spec : Prop :=
  ∀ n, P910348043743405148.a n = A261470 (n + 1)

end A261470

/-! ## A261470.P5319566973724236613

`Δ[A176246(n+1)+A046933(n+1)]`
-/

namespace A261470.P5319566973724236613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176246 (n + 1) + A046933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261470.P5319566973724236613

namespace A261470

/-- `Δ[A176246(n+1)+A046933(n+1)]` -/
def P5319566973724236613.Spec : Prop :=
  ∀ n, P5319566973724236613.a n = A261470 (n + 1)

theorem P5319566973724236613.correct : P5319566973724236613.Spec := by
  intro n
  simp only [A261470, Nat.add_sub_cancel, A261470.P5319566973724236613.f1, A261470.P5319566973724236613.a, A261470.P15751200643723974198.a, A001223, A001223.P5083310856331133973.a, A046933, A046933.P9479947770746769512.a, A176246, A176246.P14955082673946823167.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261470

/-! ## A261470.P1015995659605621277

`Δ[A215848(n+1)-A000040(n+1)]`
-/

namespace A261470.P1015995659605621277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261470.P1015995659605621277

namespace A261470

/-- `Δ[A215848(n+1)-A000040(n+1)]` -/
def P1015995659605621277.Spec : Prop :=
  ∀ n, P1015995659605621277.a n = A261470 (n + 1)

theorem P1015995659605621277.correct : P1015995659605621277.Spec := by
  intro n
  simp only [A261470, Nat.add_sub_cancel, A261470.P1015995659605621277.f1, A261470.P1015995659605621277.a, A261470.P15751200643723974198.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5083310856331133973.a, A215848, A215848.P17068717743202425727.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261470

/-!
# A261471: Cyclotomic polynomial value Phi(6,n!).

The programs for A261471, the canonical program `A261471.P3037058945594442936` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261471 has offset 0).

The definition of A261471 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261471.P3037058945594442936

`A002061(n!)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A261471

/-- `A002061(n!)` -/
def P3037058945594442936.Spec : Prop :=
  ∀ n, P3037058945594442936.a n = A261471 n

theorem P3037058945594442936.correct : P3037058945594442936.Spec := by
  intro n
  simp only [A261471]

end A261471

/-! ## A261471.P16092470963259024510

`2*C(n!, 2)+1`
-/

namespace A261471.P16092470963259024510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (Nat.factorial n) 2 + 1

end

end A261471.P16092470963259024510

namespace A261471

/-- `2*C(n!, 2)+1` -/
def P16092470963259024510.Spec : Prop :=
  ∀ n, (P16092470963259024510.a n : ℤ) = A261471 n

theorem P16092470963259024510.correct : P16092470963259024510.Spec := by
  intro n
  simp only [A261471, Nat.add_sub_cancel, A261471.P16092470963259024510.a, A261471.P3037058945594442936.a, A002061, A002061.P13016590216674735232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A261471

/-! ## A261471.P9451016149988666609

`or(1, 2*C(n!, 2))`
-/

namespace A261471.P9451016149988666609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * Nat.choose (Nat.factorial n) 2)

end

end A261471.P9451016149988666609

namespace A261471

/-- `or(1, 2*C(n!, 2))` -/
def P9451016149988666609.Spec : Prop :=
  ∀ n, (P9451016149988666609.a n : ℤ) = A261471 n

end A261471

/-! ## A261471.P3735436906789055370

`xor(1, 2*C(n!, 2))`
-/

namespace A261471.P3735436906789055370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * Nat.choose (Nat.factorial n) 2)

end

end A261471.P3735436906789055370

namespace A261471

/-- `xor(1, 2*C(n!, 2))` -/
def P3735436906789055370.Spec : Prop :=
  ∀ n, (P3735436906789055370.a n : ℤ) = A261471 n

end A261471

/-! ## A261471.P12576128788312177678

`ceil((1/2-n!)²)`
-/

namespace A261471.P12576128788312177678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 : ℚ) / 2 - (Nat.factorial n : ℚ)) ^ 2⌉

end

end A261471.P12576128788312177678

namespace A261471

/-- `ceil((1/2-n!)²)` -/
def P12576128788312177678.Spec : Prop :=
  ∀ n, P12576128788312177678.a n = A261471 n

end A261471

/-!
# A261473: Number of binary strings of length n+6 such that the smallest number whose binary representation is not visible in the string is 8.

The programs for A261473, there is no canonical definition to state claims against.
-/

/-! ## A261473.P1018210136718510963

`record[A261015(A157336(n+1)-1)]`
-/

namespace A261473.P1018210136718510963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261015 (A157336 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261473.P1018210136718510963

/-!
# A261474: Number of binary strings of length n+7 such that the smallest number whose binary representation is not visible in the string is 9.

The programs for A261474, there is no canonical definition to state claims against.
-/

/-! ## A261474.P5494901349165281301

`record[A261015(A157336(n+1))]`
-/

namespace A261474.P5494901349165281301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261015 (A157336 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261474.P5494901349165281301

/-!
# A261475: Number of binary strings of length n+10 such that the smallest number whose binary representation is not visible in the string is 10.

The programs for A261475, there is no canonical definition to state claims against.
-/

/-! ## A261475.P7165251728614719051

`record[A261015(A157336(n+1)+1)]`
-/

namespace A261475.P7165251728614719051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261015 (A157336 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261475.P7165251728614719051

/-!
# A261476: Indices of records in A260073: Numbers n such that, for all 0 < m < n, there are more triples {x, y, x mod y} of three distinct divisors of n than of m.

The programs for A261476, there is no canonical definition to state claims against.
-/

/-! ## A261476.P16698027852101185151

`filter[A266228(n+1), A173857(#)]`
-/

namespace A261476.P16698027852101185151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A173857 (f1 j).toNat = 1) n)

end

end A261476.P16698027852101185151

/-! ## A261476.P12983462090540087869

`filter[A266228(n+1), A179020(#)]`
-/

namespace A261476.P12983462090540087869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179020 (f1 j).toNat = 1) n)

end

end A261476.P12983462090540087869

/-! ## A261476.P7110968789589274819

`filter[A266228(n+1), A267579(#)]`
-/

namespace A261476.P7110968789589274819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A261476.P7110968789589274819

/-! ## A261476.P16371489307387640275

`filter[A266228(n+1), A329680(#)]`
-/

namespace A261476.P16371489307387640275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A329680 (f1 j).toNat = 1) n)

end

end A261476.P16371489307387640275

/-! ## A261476.P2441551563237245647

`∩[A188916(n), A266228(n+1)]`
-/

namespace A261476.P2441551563237245647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188916 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261476.P2441551563237245647

/-!
# A261477: Number T(n,k) of set partitions of [n] into exactly k parts such that no part contains two elements with a circular distance less than three; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A261477, there is no canonical definition to state claims against.
-/

/-! ## A261477.P5003820199860592676

`A003849(A094544(n))*A103633(n)`
-/

namespace A261477.P5003820199860592676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A094544 n).toNat * A103633 n

end

end A261477.P5003820199860592676

/-! ## A261477.P13078289915698688801

`and(A103633(n), A185037(n))^A278987(n+1)`
-/

namespace A261477.P13078289915698688801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A103633 n) (A185037 n) : ℚ) ^ (A278987 (n + 1) : ℤ)

end

end A261477.P13078289915698688801

/-! ## A261477.P14497950338263333498

`A330960(and(A051142(n+1), A264428(n)))`
-/

namespace A261477.P14497950338263333498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330960 (Int.land (A051142 (n + 1)) (A264428 n)).toNat

end

end A261477.P14497950338263333498

/-! ## A261477.P3451857068924151082

`∑{d}[A210502(A193845(n)), #]`
-/

namespace A261477.P3451857068924151082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210502 (A193845 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A261477.P3451857068924151082

/-! ## A261477.P12818413127952685281

`A000045(A210502(A193845(n))²)`
-/

namespace A261477.P12818413127952685281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A210502 (A193845 n).toNat ^ 2).toNat

end

end A261477.P12818413127952685281

/-!
# A261478: Number of set partitions of [n] such that no part contains two elements with a circular distance less than three.

The programs for A261478, there is no canonical definition to state claims against.
-/

/-! ## A261478.P7865485433105434965

`A051574(A084716(n+1))`
-/

namespace A261478.P7865485433105434965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051574 (A084716 (n + 1)).toNat

end

end A261478.P7865485433105434965

/-! ## A261478.P8718405657067576485

`A035936(∑[A092492(n+1)²])`
-/

namespace A261478.P8718405657067576485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092492 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A261478.P8718405657067576485

/-! ## A261478.P2909595256482788737

`A151571(A000910(n)*A086543(n))`
-/

namespace A261478.P2909595256482788737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151571 (A000910 n * A086543 n).toNat

end

end A261478.P2909595256482788737

/-! ## A261478.P17375798975292581476

`A331927(n)+A061857(A072880(n+1))`
-/

namespace A261478.P17375798975292581476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331927 n + A061857 (A072880 (n + 1)).toNat

end

end A261478.P17375798975292581476

/-!
# A261479: Number of set partitions of [2n] into exactly n parts such that no part contains two elements with a circular distance less than three.

The programs for A261479, there is no canonical definition to state claims against.
-/

/-! ## A261479.P16543054474556813018

`A261477(∑[4*n])`
-/

namespace A261479.P16543054474556813018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261479.P16543054474556813018

/-! ## A261479.P1774688544310451586

`lcm(A033999(n), A261477(A046092(n)))`
-/

namespace A261479.P1774688544310451586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A261477 (A046092 n).toNat)

end

end A261479.P1774688544310451586

/-! ## A261479.P6328332476069304379

`and(A153881(n+1), A261477(A046092(n)))`
-/

namespace A261479.P6328332476069304379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153881 (n + 1)) (A261477 (A046092 n).toNat)

end

end A261479.P6328332476069304379

/-! ## A261479.P12877147382179569290

`A000041(C(n, 64))*A261477(A046092(n))`
-/

namespace A261479.P12877147382179569290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 64) * A261477 (A046092 n).toNat

end

end A261479.P12877147382179569290

/-! ## A261479.P15965921614702104145

`A261477(A046092(n))+and((-2)^n, A000032(n))`
-/

namespace A261479.P15965921614702104145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (A046092 n).toNat + Int.land ((-2) ^ n) (A000032 n)

end

end A261479.P15965921614702104145

/-!
# A261480: Number of set partitions of [n] into exactly four parts such that no part contains two elements with a circular distance less than three.

The programs for A261480, there is no canonical definition to state claims against.
-/

/-! ## A261480.P4653557097413170845

`A261477(eq[3, A141169(n)])`
-/

namespace A261480.P4653557097413170845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261480.P4653557097413170845

/-! ## A261480.P15628476501398393748

`A261477(eq[4, A002262(n)])`
-/

namespace A261480.P15628476501398393748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261480.P15628476501398393748

/-! ## A261480.P14888150960092626615

`A261477(A167614(n+3)+1)`
-/

namespace A261480.P14888150960092626615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (A167614 (n + 3) + 1).toNat

end

end A261480.P14888150960092626615

/-! ## A261480.P3717677328850961449

`A261477(A000096(n+3)+5)`
-/

namespace A261480.P3717677328850961449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (A000096 (n + 3) + 5).toNat

end

end A261480.P3717677328850961449

/-! ## A261480.P8583040976936382266

`A261477(A046691(n+2)+8)`
-/

namespace A261480.P8583040976936382266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (A046691 (n + 2) + 8).toNat

end

end A261480.P8583040976936382266

/-! ## A261480.P1655793695666079049

`A261477(eq[5, A002260(n+1)])`
-/

namespace A261480.P1655793695666079049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261480.P1655793695666079049

/-! ## A261480.P8494799695307842735

`A261477(eq[2, A144328(n+1)-2])`
-/

namespace A261480.P8494799695307842735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261480.P8494799695307842735

/-! ## A261480.P7750290665882524614

`A261477(eq[2, A144328(n+1)/2])`
-/

namespace A261480.P7750290665882524614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A261480.P7750290665882524614

/-!
# A261481: Number of set partitions of [n] into exactly five parts such that no part contains two elements with a circular distance less than three.

The programs for A261481, there is no canonical definition to state claims against.
-/

/-! ## A261481.P13081087717386112539

`A261477(A077169(n+6))`
-/

namespace A261481.P13081087717386112539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (A077169 (n + 6)).toNat

end

end A261481.P13081087717386112539

/-! ## A261481.P3836733154933905120

`record[A261477(A000217(n)+5)]`
-/

namespace A261481.P3836733154933905120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (A000217 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261481.P3836733154933905120

/-! ## A261481.P16377381376570299383

`record[A261477(A253145(n)+5)]`
-/

namespace A261481.P16377381376570299383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (A253145 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261481.P16377381376570299383

/-! ## A261481.P14808860063295428225

`record[A261477(A152950(n+1)+2)]`
-/

namespace A261481.P14808860063295428225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (A152950 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261481.P14808860063295428225

/-! ## A261481.P17768150110350305835

`record[A261477(A077169(A008611(n)))]`
-/

namespace A261481.P17768150110350305835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (A077169 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261481.P17768150110350305835

/-! ## A261481.P7906266069901588387

`record[A261477(A077169(A008620(n)))]`
-/

namespace A261481.P7906266069901588387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (A077169 (A008620 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261481.P7906266069901588387

/-! ## A261481.P11416599390750229036

`record[A261477(A077169(A057979(n)))]`
-/

namespace A261481.P11416599390750229036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (A077169 (A057979 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261481.P11416599390750229036

/-!
# A261482: Number of set partitions of [n] into exactly six parts such that no part contains two elements with a circular distance less than three.

The programs for A261482, there is no canonical definition to state claims against.
-/

/-! ## A261482.P4259414545751922247

`A261477(A166136(n+5))`
-/

namespace A261482.P4259414545751922247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (A166136 (n + 5)).toNat

end

end A261482.P4259414545751922247

/-! ## A261482.P5171602736658828140

`A261477(eq[6, A002262(n)])`
-/

namespace A261482.P5171602736658828140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261482.P5171602736658828140

/-! ## A261482.P5661665085034229980

`A261477(eq[64, A059268(n)])`
-/

namespace A261482.P5661665085034229980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261482.P5661665085034229980

/-! ## A261482.P13657017123692902522

`record[A261477(A077169(n)+1)]`
-/

namespace A261482.P13657017123692902522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (A077169 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261482.P13657017123692902522

/-! ## A261482.P10427900385336218796

`A261477(A167614(n+5)+3)`
-/

namespace A261482.P10427900385336218796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (A167614 (n + 5) + 3).toNat

end

end A261482.P10427900385336218796

/-! ## A261482.P6319954258877051979

`A261477(A000096(n+5)+7)`
-/

namespace A261482.P6319954258877051979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (A000096 (n + 5) + 7).toNat

end

end A261482.P6319954258877051979

/-! ## A261482.P2414849568887168484

`A261477(A000217(n+6)+6)`
-/

namespace A261482.P2414849568887168484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (A000217 (n + 6) + 6).toNat

end

end A261482.P2414849568887168484

/-! ## A261482.P1921905981415934238

`A261477(eq[7, A002260(n+1)])`
-/

namespace A261482.P1921905981415934238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261482.P1921905981415934238

/-! ## A261482.P17791598775264949514

`record[A261477(A167499(n+1)+1)]`
-/

namespace A261482.P17791598775264949514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (A167499 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261482.P17791598775264949514

/-!
# A261483: Number of set partitions of [n] into exactly seven parts such that no part contains two elements with a circular distance less than three.

The programs for A261483, there is no canonical definition to state claims against.
-/

/-! ## A261483.P8795142241074875292

`A261477(eq[7, A002262(n)])`
-/

namespace A261483.P8795142241074875292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261483.P8795142241074875292

/-! ## A261483.P4747598310448559675

`A261477(eq[13, A141169(n)])`
-/

namespace A261483.P4747598310448559675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261483.P4747598310448559675

/-! ## A261483.P12669738022781992707

`A261477(A000096(n+6)+8)`
-/

namespace A261483.P12669738022781992707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (A000096 (n + 6) + 8).toNat

end

end A261483.P12669738022781992707

/-! ## A261483.P36499458360419399

`A261477(eq[8, A002260(n+1)])`
-/

namespace A261483.P36499458360419399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261483.P36499458360419399

/-! ## A261483.P6108499622100841341

`A261477(A027379(n+6)-(n-2))`
-/

namespace A261483.P6108499622100841341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (A027379 (n + 6) - ((n : ℤ) - 2)).toNat

end

end A261483.P6108499622100841341

/-!
# A261484: Number of set partitions of [n] into exactly eight parts such that no part contains two elements with a circular distance less than three.

The programs for A261484, there is no canonical definition to state claims against.
-/

/-! ## A261484.P6845603982414423153

`A261477(eq[8, A002262(n)])`
-/

namespace A261484.P6845603982414423153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261484.P6845603982414423153

/-! ## A261484.P1177577784887440151

`record[A261477(A167499(n)+3)]`
-/

namespace A261484.P1177577784887440151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (A167499 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261484.P1177577784887440151

/-! ## A261484.P1677986972915692341

`record[A261477(A000096(n)+9)]`
-/

namespace A261484.P1677986972915692341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (A000096 n + 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261484.P1677986972915692341

/-! ## A261484.P9204380395775686552

`A261477(A000096(n+7)+9)`
-/

namespace A261484.P9204380395775686552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (A000096 (n + 7) + 9).toNat

end

end A261484.P9204380395775686552

/-! ## A261484.P9298309382053440946

`record[A261477(A166136(n+2)+2)]`
-/

namespace A261484.P9298309382053440946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (A166136 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261484.P9298309382053440946

/-! ## A261484.P2241263835646115626

`A261477(A000217(n+9)-(n+1))`
-/

namespace A261484.P2241263835646115626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (A000217 (n + 9) - (n + 1 : ℤ)).toNat

end

end A261484.P2241263835646115626

/-!
# A261485: Number of set partitions of [n] into exactly nine parts such that no part contains two elements with a circular distance less than three.

The programs for A261485, there is no canonical definition to state claims against.
-/

/-! ## A261485.P8084894474292086471

`record[A261477(A077169(n)+4)]`
-/

namespace A261485.P8084894474292086471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (A077169 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261485.P8084894474292086471

/-! ## A261485.P14546468318545264377

`record[A261477(A000124(n)+8)]`
-/

namespace A261485.P14546468318545264377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (A000124 n + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261485.P14546468318545264377

/-! ## A261485.P6090731396967253079

`record[A261477(A000217(n)+9)]`
-/

namespace A261485.P6090731396967253079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (A000217 n + 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261485.P6090731396967253079

/-! ## A261485.P4862804371373799661

`A261477(A000096(n+8)+10)`
-/

namespace A261485.P4862804371373799661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (A000096 (n + 8) + 10).toNat

end

end A261485.P4862804371373799661

/-! ## A261485.P4255349248729712384

`A261477(A000217(n+9)+9)`
-/

namespace A261485.P4255349248729712384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (A000217 (n + 9) + 9).toNat

end

end A261485.P4255349248729712384

/-!
# A261486: Number of set partitions of [n] into exactly ten parts such that no part contains two elements with a circular distance less than three.

The programs for A261486, there is no canonical definition to state claims against.
-/

/-! ## A261486.P17250436245598832593

`A261477(eq[10, A002262(n)])`
-/

namespace A261486.P17250436245598832593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261486.P17250436245598832593

/-! ## A261486.P16515495902496645122

`A261477(A000096(n+9)+11)`
-/

namespace A261486.P16515495902496645122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (A000096 (n + 9) + 11).toNat

end

end A261486.P16515495902496645122

/-! ## A261486.P5572081137838842969

`A261477(eq[10, A144328(n+1)])`
-/

namespace A261486.P5572081137838842969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261486.P5572081137838842969

/-! ## A261486.P3333647214632144385

`A261477(eq[11, A002260(n+1)])`
-/

namespace A261486.P3333647214632144385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261486.P3333647214632144385

/-! ## A261486.P3518711499162755862

`A261477(eq[11, A134868(n+1)])`
-/

namespace A261486.P3518711499162755862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261486.P3518711499162755862

/-! ## A261486.P6227167761858198378

`A261477(eq[11, A132118(n+1)-n])`
-/

namespace A261486.P6227167761858198378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132118 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261477 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261486.P6227167761858198378

/-!
# A261488: Number of triples (x, y, x mod y) such that x > y are divisors of n and x mod y is an anti-divisor of n.

The programs for A261488, there is no canonical definition to state claims against.
-/

/-! ## A261488.P7777299683410258874

`A346607(n+1)%A097033(A088511(n+1))`
-/

namespace A261488.P7777299683410258874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346607 (n + 1)) (A097033 (A088511 (n + 1)).toNat)

end

end A261488.P7777299683410258874

/-! ## A261488.P3164912547080228494

`and(A354957(n+2), A354992(A354987(n+1)))`
-/

namespace A261488.P3164912547080228494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A354957 (n + 2)) (A354992 (A354987 (n + 1)).toNat)

end

end A261488.P3164912547080228494

/-! ## A261488.P4471912448221660731

`and(A354992(A354987(n+1)), A355025(n+2))`
-/

namespace A261488.P4471912448221660731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A354992 (A354987 (n + 1)).toNat) (A355025 (n + 2))

end

end A261488.P4471912448221660731

/-! ## A261488.P12432551874405585906

`and(A052409(A354987(n+1)), A354961(n))`
-/

namespace A261488.P12432551874405585906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052409 (A354987 (n + 1)).toNat) (A354961 n)

end

end A261488.P12432551874405585906

/-! ## A261488.P15777397400408888216

`A360676(A354986(n+1))%A029518(n+1)`
-/

namespace A261488.P15777397400408888216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360676 (A354986 (n + 1)).toNat) (A029518 (n + 1))

end

end A261488.P15777397400408888216

/-!
# A261489: Number of partitions of subsets of {1,...,n}, where consecutive integers and the elements in {1, n} are required to be in different parts.

The programs for A261489, there is no canonical definition to state claims against.
-/

/-! ## A261489.P8397744441965265834

`A213172(floor(2^(n-1)))+2^floor(n/2)`
-/

namespace A261489.P8397744441965265834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213172 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat : ℚ) + (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A261489.P8397744441965265834

/-! ## A261489.P16256823195025462657

`A247971(A148950(n)-A057428(n))`
-/

namespace A261489.P16256823195025462657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247971 (A148950 n - A057428 n).toNat

end

end A261489.P16256823195025462657

/-! ## A261489.P14621865316298779809

`A247971(A148950(n)+A057428(n)²)`
-/

namespace A261489.P14621865316298779809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247971 (A148950 n + A057428 n ^ 2).toNat

end

end A261489.P14621865316298779809

/-!
# A261490: The total element sum of the n-fold f transform applied to the length n sequence of 1's. And f returns a sorted result after multiplying the elements in its input sequence with 1, 2, 3,... in descending size order.

The programs for A261490, there is no canonical definition to state claims against.
-/

/-! ## A261490.P15962063679528092646

`A166278(∑[4*n])`
-/

namespace A261490.P15962063679528092646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166278 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261490.P15962063679528092646

/-! ## A261490.P446226838194113797

`record[A166278(n*A003982(n))]`
-/

namespace A261490.P446226838194113797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166278 ((n : ℤ) * A003982 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261490.P446226838194113797

/-! ## A261490.P7172152530465149582

`record[A166278(gcd(n, A061579(n)))]`
-/

namespace A261490.P7172152530465149582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166278 (Int.gcd (n : ℤ) (A061579 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261490.P7172152530465149582

/-! ## A261490.P18403121390694728196

`record[gcd(A166278(4*n), A166278(n))]`
-/

namespace A261490.P18403121390694728196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166278 (4 * n)) (A166278 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261490.P18403121390694728196

/-! ## A261490.P12868828619827529260

`record[A166278(A000034(n)*A002620(n))]`
-/

namespace A261490.P12868828619827529260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166278 (A000034 n * A002620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261490.P12868828619827529260

/-!
# A261491: a(n) = ceiling(2 + sqrt(8*n-4)).

The programs for A261491, the canonical program `A261491.P14119426483975818925` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261491 has offset 1).

The definition of A261491 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(2+sqrt(8*(n+1)-4))` (program `A261491.P14119426483975818925`, by `A261491.P14119426483975818925.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A261491.P14119426483975818925

`ceil(2+sqrt(8*(n+1)-4))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A261491

/-- `ceil(2+sqrt(8*(n+1)-4))` -/
def P14119426483975818925.Spec : Prop :=
  ∀ n, P14119426483975818925.a n = A261491 (n + 1)

theorem P14119426483975818925.correct : P14119426483975818925.Spec := by
  intro n
  simp only [A261491, Nat.add_sub_cancel]

end A261491

/-! ## A261491.P13050431194645117566

`A133196(n+1)+A101776(n)`
-/

namespace A261491.P13050431194645117566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133196 (n + 1) + A101776 n

end

end A261491.P13050431194645117566

namespace A261491

/-- `A133196(n+1)+A101776(n)` -/
def P13050431194645117566.Spec : Prop :=
  ∀ n, P13050431194645117566.a n = A261491 (n + 1)

end A261491

/-! ## A261491.P16360437081601132302

`A350361(n+1)+A172471(n)`
-/

namespace A261491.P16360437081601132302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350361 (n + 1) + A172471 n

end

end A261491.P16360437081601132302

namespace A261491

/-- `A350361(n+1)+A172471(n)` -/
def P16360437081601132302.Spec : Prop :=
  ∀ n, P16360437081601132302.a n = A261491 (n + 1)

end A261491

/-! ## A261491.P2914550059180270945

`A000267(2*n)+3`
-/

namespace A261491.P2914550059180270945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (2 * n) + 3

end

end A261491.P2914550059180270945

namespace A261491

/-- `A000267(2*n)+3` -/
def P2914550059180270945.Spec : Prop :=
  ∀ n, P2914550059180270945.a n = A261491 (n + 1)

end A261491

/-! ## A261491.P7327546715153248734

`A168230(2*A000267(2*n))`
-/

namespace A261491.P7327546715153248734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168230 (2 * A000267 (2 * n)).toNat

end

end A261491.P7327546715153248734

namespace A261491

/-- `A168230(2*A000267(2*n))` -/
def P7327546715153248734.Spec : Prop :=
  ∀ n, P7327546715153248734.a n = A261491 (n + 1)

end A261491

/-! ## A261491.P4799211666185357010

`A055086(2*n)+4`
-/

namespace A261491.P4799211666185357010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (2 * n) + 4

end

end A261491.P4799211666185357010

namespace A261491

/-- `A055086(2*n)+4` -/
def P4799211666185357010.Spec : Prop :=
  ∀ n, P4799211666185357010.a n = A261491 (n + 1)

end A261491

/-! ## A261491.P1692102103217480797

`A307136(Δ[n²])+1`
-/

namespace A261491.P1692102103217480797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307136 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A261491.P1692102103217480797

namespace A261491

/-- `A307136(Δ[n²])+1` -/
def P1692102103217480797.Spec : Prop :=
  ∀ n, P1692102103217480797.a n = A261491 (n + 1)

end A261491

/-! ## A261491.P7555083963778771641

`A027434(Δ[n²])+2`
-/

namespace A261491.P7555083963778771641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A261491.P7555083963778771641

namespace A261491

/-- `A027434(Δ[n²])+2` -/
def P7555083963778771641.Spec : Prop :=
  ∀ n, P7555083963778771641.a n = A261491 (n + 1)

end A261491

/-! ## A261491.P5836952679541862711

`A235382(Δ[n²])/2`
-/

namespace A261491.P5836952679541862711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235382 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A261491.P5836952679541862711

namespace A261491

/-- `A235382(Δ[n²])/2` -/
def P5836952679541862711.Spec : Prop :=
  ∀ n, P5836952679541862711.a n = (A261491 (n + 1) : ℚ)

end A261491

/-! ## A261491.P14320069932963534859

`A080037(2*n+1)-2*n`
-/

namespace A261491.P14320069932963534859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080037 (2 * n + 1) - (2 * n : ℤ)

end

end A261491.P14320069932963534859

namespace A261491

/-- `A080037(2*n+1)-2*n` -/
def P14320069932963534859.Spec : Prop :=
  ∀ n, P14320069932963534859.a n = A261491 (n + 1)

end A261491

/-! ## A261491.P8504584216682682024

`A111234(A027709(2*n+1))`
-/

namespace A261491.P8504584216682682024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111234 (A027709 (2 * n + 1)).toNat

end

end A261491.P8504584216682682024

namespace A261491

/-- `A111234(A027709(2*n+1))` -/
def P8504584216682682024.Spec : Prop :=
  ∀ n, P8504584216682682024.a n = A261491 (n + 1)

end A261491

/-! ## A261491.P18060472689406439190

`A004526(A235382(2*n+1))`
-/

namespace A261491.P18060472689406439190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A235382 (2 * n + 1)).toNat

end

end A261491.P18060472689406439190

namespace A261491

/-- `A004526(A235382(2*n+1))` -/
def P18060472689406439190.Spec : Prop :=
  ∀ n, P18060472689406439190.a n = A261491 (n + 1)

end A261491

/-! ## A261491.P17778836886055757794

`A008619(A143730(2*n+1)+1)`
-/

namespace A261491.P17778836886055757794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A143730 (2 * n + 1) + 1).toNat

end

end A261491.P17778836886055757794

namespace A261491

/-- `A008619(A143730(2*n+1)+1)` -/
def P17778836886055757794.Spec : Prop :=
  ∀ n, P17778836886055757794.a n = A261491 (n + 1)

end A261491

/-! ## A261491.P897712045972415885

`A027656(A143730(2*n+1)+1)`
-/

namespace A261491.P897712045972415885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A143730 (2 * n + 1) + 1).toNat

end

end A261491.P897712045972415885

namespace A261491

/-- `A027656(A143730(2*n+1)+1)` -/
def P897712045972415885.Spec : Prop :=
  ∀ n, P897712045972415885.a n = A261491 (n + 1)

end A261491

/-! ## A261491.P3971271557886835208

`A002264(A336754(2*n+1))+1`
-/

namespace A261491.P3971271557886835208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A336754 (2 * n + 1)).toNat + 1

end

end A261491.P3971271557886835208

namespace A261491

/-- `A002264(A336754(2*n+1))+1` -/
def P3971271557886835208.Spec : Prop :=
  ∀ n, P3971271557886835208.a n = A261491 (n + 1)

end A261491

/-! ## A261491.P4132758297519688974

`A117910(A336754(2*n+1)+1)`
-/

namespace A261491.P4132758297519688974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (A336754 (2 * n + 1) + 1).toNat

end

end A261491.P4132758297519688974

namespace A261491

/-- `A117910(A336754(2*n+1)+1)` -/
def P4132758297519688974.Spec : Prop :=
  ∀ n, P4132758297519688974.a n = A261491 (n + 1)

end A261491

/-! ## A261491.P5617452689540830508

`A065033(A143730(2*n+1)+2)`
-/

namespace A261491.P5617452689540830508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A143730 (2 * n + 1) + 2).toNat

end

end A261491.P5617452689540830508

namespace A261491

/-- `A065033(A143730(2*n+1)+2)` -/
def P5617452689540830508.Spec : Prop :=
  ∀ n, P5617452689540830508.a n = A261491 (n + 1)

end A261491

/-! ## A261491.P15431492547186908298

`A008619(A235382(2*n+1)-1)`
-/

namespace A261491.P15431492547186908298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A235382 (2 * n + 1) - 1).toNat

end

end A261491.P15431492547186908298

namespace A261491

/-- `A008619(A235382(2*n+1)-1)` -/
def P15431492547186908298.Spec : Prop :=
  ∀ n, P15431492547186908298.a n = A261491 (n + 1)

end A261491

/-! ## A261491.P10949023823652781581

`A110654(A143730(2*n+1)+2)`
-/

namespace A261491.P10949023823652781581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A143730 (2 * n + 1) + 2).toNat

end

end A261491.P10949023823652781581

namespace A261491

/-- `A110654(A143730(2*n+1)+2)` -/
def P10949023823652781581.Spec : Prop :=
  ∀ n, P10949023823652781581.a n = A261491 (n + 1)

end A261491

/-! ## A261491.P1819461044340146235

`A152271(A143730(2*n+1)+2)`
-/

namespace A261491.P1819461044340146235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A143730 (2 * n + 1) + 2).toNat

end

end A261491.P1819461044340146235

namespace A261491

/-- `A152271(A143730(2*n+1)+2)` -/
def P1819461044340146235.Spec : Prop :=
  ∀ n, P1819461044340146235.a n = A261491 (n + 1)

end A261491

/-!
# A261492: Number of partitions of subsets of {1,...,n}, where consecutive integers are required to be in the same part and the elements of {1, n} are required to be in the same part if they are both members of a subset.

The programs for A261492, there is no canonical definition to state claims against.
-/

/-! ## A261492.P18294185206104195615

`A127757(A094374(n)+A027082(n*(n+2)))`
-/

namespace A261492.P18294185206104195615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A094374 n + A027082 (n * (n + 2))).toNat

end

end A261492.P18294185206104195615

/-! ## A261492.P16396364563864958775

`record[gcd(floor(n/10), A167022(n))]`
-/

namespace A261492.P16396364563864958775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊(n : ℚ) / 10⌋ (A167022 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261492.P16396364563864958775

/-! ## A261492.P11021444438208189429

`A095773(A150045(n))`
-/

namespace A261492.P11021444438208189429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095773 (A150045 n).toNat

end

end A261492.P11021444438208189429

/-! ## A261492.P2165720768531006954

`A356874(A225826(n))`
-/

namespace A261492.P2165720768531006954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356874 (A225826 n).toNat

end

end A261492.P2165720768531006954

/-!
# A261494: Number A(n,k) of necklaces with n white beads and k*n black beads; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A261494, there is no canonical definition to state claims against.
-/

/-! ## A261494.P4861336678542740223

`A333764(A065941(n)^A269482(n))`
-/

namespace A261494.P4861336678542740223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333764 (SequenceMachineLib.roundAway ((A065941 n : ℚ) ^ (A269482 n : ℤ))).toNat

end

end A261494.P4861336678542740223

/-! ## A261494.P14878348830919747129

`A293991(n)+A010054(A002411(n+3))`
-/

namespace A261494.P14878348830919747129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293991 n + A010054 (A002411 (n + 3)).toNat

end

end A261494.P14878348830919747129

/-! ## A261494.P16539406765365848573

`A293991(n)+A240328(A010026(n+3))`
-/

namespace A261494.P16539406765365848573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293991 n + A240328 (A010026 (n + 3)).toNat

end

end A261494.P16539406765365848573

/-!
# A261495: Number of necklaces with n white beads and n^2 black beads.

The programs for A261495, there is no canonical definition to state claims against.
-/

/-! ## A261495.P7398108732493110225

`A261494(∑[4*n])`
-/

namespace A261495.P7398108732493110225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261495.P7398108732493110225

/-! ## A261495.P125493421971909842

`A261494(A046092(n))^C(3, C(3, n²))`
-/

namespace A261495.P125493421971909842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (A046092 n).toNat ^ Nat.choose 3 (Nat.choose 3 (n ^ 2))

end

end A261495.P125493421971909842

/-! ## A261495.P12844009275321755615

`A007318(C(2, n))*A261494(A046092(n))`
-/

namespace A261495.P12844009275321755615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A261494 (A046092 n).toNat

end

end A261495.P12844009275321755615

/-! ## A261495.P9333965328604734838

`A000041(C(2, n+2))*A261494(A046092(n))`
-/

namespace A261495.P9333965328604734838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A261494 (A046092 n).toNat

end

end A261495.P9333965328604734838

/-! ## A261495.P2249472806931353892

`A261494(A046092(n))^A014963(C(n+3, 2))`
-/

namespace A261495.P2249472806931353892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261494 (A046092 n).toNat : ℚ) ^ (A014963 (Nat.choose (n + 3) 2) : ℤ)

end

end A261495.P2249472806931353892

/-!
# A261496: Number of necklaces with n white beads and n^2-n black beads.

The programs for A261496, there is no canonical definition to state claims against.
-/

/-! ## A261496.P2034762553197999477

`A261494(2*n²)`
-/

namespace A261496.P2034762553197999477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (2 * n ^ 2)

end

end A261496.P2034762553197999477

/-! ## A261496.P4771429910658085956

`A261494(A001105(n))+A070138(2*n+1)`
-/

namespace A261496.P4771429910658085956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (A001105 n).toNat + A070138 (2 * n + 1)

end

end A261496.P4771429910658085956

/-! ## A261496.P12267467114055316391

`A261494(A001105(n))%A125659(n+4)`
-/

namespace A261496.P12267467114055316391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261494 (A001105 n).toNat) (A125659 (n + 4))

end

end A261496.P12267467114055316391

/-! ## A261496.P18036566483974047691

`A047996(A000217(n²)+n)`
-/

namespace A261496.P18036566483974047691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A000217 (n ^ 2) + (n : ℤ)).toNat

end

end A261496.P18036566483974047691

/-! ## A261496.P8444335644856996283

`A047996(A027441(n)+A000217(n))`
-/

namespace A261496.P8444335644856996283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A027441 n + A000217 n).toNat

end

end A261496.P8444335644856996283

/-!
# A261497: Number of necklaces with n white beads and 3*n black beads.

The programs for A261497, there is no canonical definition to state claims against.
-/

/-! ## A261497.P7080870190567235146

`A261494(∑[n+3]+n+3)`
-/

namespace A261497.P7080870190567235146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A261497.P7080870190567235146

/-! ## A261497.P9878422577755206427

`A072506(A179865(2*n+1)-n)`
-/

namespace A261497.P9878422577755206427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072506 (A179865 (2 * n + 1) - (n : ℤ)).toNat

end

end A261497.P9878422577755206427

/-! ## A261497.P4397805011455299497

`A132892(A360417(n))`
-/

namespace A261497.P4397805011455299497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132892 (A360417 n).toNat

end

end A261497.P4397805011455299497

/-! ## A261497.P10089513047083023169

`A047996(A139276(n))`
-/

namespace A261497.P10089513047083023169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A139276 n).toNat

end

end A261497.P10089513047083023169

/-! ## A261497.P4529641081689346904

`A047996(A139277(n))`
-/

namespace A261497.P4529641081689346904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A139277 n).toNat

end

end A261497.P4529641081689346904

/-!
# A261498: Number of necklaces with n white beads and 4*n black beads.

The programs for A261498, there is no canonical definition to state claims against.
-/

/-! ## A261498.P13091328694261435196

`A261494(A052905(n+2))`
-/

namespace A261498.P13091328694261435196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (A052905 (n + 2)).toNat

end

end A261498.P13091328694261435196

/-! ## A261498.P2937885570408819898

`A261494(eq[4, A025581(n)])`
-/

namespace A261498.P2937885570408819898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261498.P2937885570408819898

/-! ## A261498.P8289109757482555146

`A261494(eq[9, A099375(n)])`
-/

namespace A261498.P8289109757482555146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261498.P8289109757482555146

/-! ## A261498.P10629823546060157202

`A261494(Δ[A055831(n+4)])`
-/

namespace A261498.P10629823546060157202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (f1 (n + 1) - f1 n).toNat

end

end A261498.P10629823546060157202

/-! ## A261498.P936480849543930558

`A261494(A246172(n+1)+9)`
-/

namespace A261498.P936480849543930558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (A246172 (n + 1) + 9).toNat

end

end A261498.P936480849543930558

/-! ## A261498.P716317970767205439

`A261494(A000217(n+5)-5)`
-/

namespace A261498.P716317970767205439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (A000217 (n + 5) - 5).toNat

end

end A261498.P716317970767205439

/-! ## A261498.P18337841207980660739

`A261494(eq[5, A004736(n+1)])`
-/

namespace A261498.P18337841207980660739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261498.P18337841207980660739

/-! ## A261498.P4693849472192352518

`A261494(eq[2, A144257(n+1)-2])`
-/

namespace A261498.P4693849472192352518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261498.P4693849472192352518

/-! ## A261498.P2174386466096678987

`A261494(eq[2, A144257(n+1)/2])`
-/

namespace A261498.P2174386466096678987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144257 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A261498.P2174386466096678987

/-!
# A261499: Number of necklaces with n white beads and 5*n black beads.

The programs for A261499, there is no canonical definition to state claims against.
-/

/-! ## A261499.P7220573678140857120

`∑{d}[round(sqrt(n²+1)), A346580(#)]`
-/

namespace A261499.P7220573678140857120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A346580 d

end

end A261499.P7220573678140857120

/-! ## A261499.P12821152052120206976

`A261494(A055999(n+3))`
-/

namespace A261499.P12821152052120206976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (A055999 (n + 3)).toNat

end

end A261499.P12821152052120206976

/-! ## A261499.P4000696871664885076

`A261494(eq[5, A025581(n)])`
-/

namespace A261499.P4000696871664885076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261499.P4000696871664885076

/-! ## A261499.P14543162511605710806

`A261494(eq[11, A099375(n)])`
-/

namespace A261499.P14543162511605710806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261499.P14543162511605710806

/-! ## A261499.P7041950597434188813

`A261494(A000217(n+6)-6)`
-/

namespace A261499.P7041950597434188813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (A000217 (n + 6) - 6).toNat

end

end A261499.P7041950597434188813

/-! ## A261499.P7278350089699809116

`A261494(eq[6, A004736(n+1)])`
-/

namespace A261499.P7278350089699809116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261499.P7278350089699809116

/-! ## A261499.P3651477656155414738

`A261494(Δ[A055831(n+5)]-1)`
-/

namespace A261499.P3651477656155414738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (f1 (n + 1) - f1 n - 1).toNat

end

end A261499.P3651477656155414738

