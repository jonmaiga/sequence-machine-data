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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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
# A355901: Records in A355899.

The programs for A355901, there is no canonical definition to state claims against.
-/

/-! ## A355901.P9145308873997128973

`record[A355899(n+1)]`
-/

namespace A355901.P9145308873997128973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355901.P9145308873997128973

/-! ## A355901.P3660972935761458234

`A355899(A355900(n+1))`
-/

namespace A355901.P3660972935761458234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355899 (A355900 (n + 1)).toNat

end

end A355901.P3660972935761458234

/-! ## A355901.P15666436450115910214

`A007913(record[A355899(n^(n%2))])`
-/

namespace A355901.P15666436450115910214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355899 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A355901.P15666436450115910214

/-! ## A355901.P2027666713790884820

`record[gcd(A355898(n+1), A355898(n+2))]`
-/

namespace A355901.P2027666713790884820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A355898 (n + 1)) (A355898 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355901.P2027666713790884820

/-!
# A355902: Start with a 2 X n array of squares, join every vertex on top edge to every vertex on bottom edge; a(n) = one-half the number of cells.

The programs for A355902, there is no canonical definition to state claims against.
-/

/-! ## A355902.P7021487856707275087

`A331756(n)+n`
-/

namespace A355902.P7021487856707275087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331756 n + (n : ℤ)

end

end A355902.P7021487856707275087

/-! ## A355902.P17834764354843071274

`A306302(n)/2+n`
-/

namespace A355902.P17834764354843071274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306302 n : ℚ) / 2 + (n : ℚ)

end

end A355902.P17834764354843071274

/-! ## A355902.P12275778048737053131

`A331754(n+1)+2*n`
-/

namespace A355902.P12275778048737053131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331754 (n + 1) + (2 * n : ℤ)

end

end A355902.P12275778048737053131

/-! ## A355902.P13651644734957036953

`∑[n]+A344993(n)/4+n`
-/

namespace A355902.P13651644734957036953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + ((A344993 n : ℚ) / 4 + (n : ℚ))

end

end A355902.P13651644734957036953

/-! ## A355902.P5704237527382658750

`A290131(n+1)/2+2*n`
-/

namespace A355902.P5704237527382658750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290131 (n + 1) : ℚ) / 2 + (2 * n : ℚ)

end

end A355902.P5704237527382658750

/-! ## A355902.P14183491596628240433

`(A115005(n+1)+n)/2+n`
-/

namespace A355902.P14183491596628240433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115005 (n + 1) + (n : ℤ) : ℚ) / 2 + (n : ℚ)

end

end A355902.P14183491596628240433

/-! ## A355902.P11527636778217552911

`(A141255(n+1)/2+n)/2+n`
-/

namespace A355902.P11527636778217552911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A141255 (n + 1) : ℚ) / 2 + (n : ℚ)) / 2 + (n : ℚ)

end

end A355902.P11527636778217552911

/-! ## A355902.P13408171024413498981

`A332612(n+1)+A005563(n)`
-/

namespace A355902.P13408171024413498981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332612 (n + 1) + A005563 n

end

end A355902.P13408171024413498981

/-! ## A355902.P14953371899099854792

`A306302(n)-A331754(n+1)`
-/

namespace A355902.P14953371899099854792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306302 n - A331754 (n + 1)

end

end A355902.P14953371899099854792

/-! ## A355902.P9625152509329411125

`A005843(n)+A290131(n+1)/2`
-/

namespace A355902.P9625152509329411125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 n : ℚ) + (A290131 (n + 1) : ℚ) / 2

end

end A355902.P9625152509329411125

/-! ## A355902.P350567189436298935

`A332612(n+1)+A002378(n)+n`
-/

namespace A355902.P350567189436298935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332612 (n + 1) + (A002378 n + (n : ℤ))

end

end A355902.P350567189436298935

/-!
# A355904: Negasemiternary (or NST) representation of n.

The programs for A355904, there is no canonical definition to state claims against.
-/

/-! ## A355904.P2557592668553228355

`A113878(A282599(n))+n`
-/

namespace A355904.P2557592668553228355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113878 (A282599 n).toNat + (n : ℤ)

end

end A355904.P2557592668553228355

/-! ## A355904.P1648838849245324231

`A113878(A282987(n))+n`
-/

namespace A355904.P1648838849245324231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113878 (A282987 n).toNat + (n : ℤ)

end

end A355904.P1648838849245324231

/-!
# A355905: Leftmost path in the tree T_0 of all negasemiternary (or NST) fractions whose 2-adic part is zero.

The programs for A355905, there is no canonical definition to state claims against.
-/

/-! ## A355905.P10442735448675603152

`A355908(n)-A355906(n)`
-/

namespace A355905.P10442735448675603152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355908 n - A355906 n

end

end A355905.P10442735448675603152

/-! ## A355905.P8606975515819340453

`A355907(n+1)-(A355906(n+1)+A355906(n))`
-/

namespace A355905.P8606975515819340453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355907 (n + 1) - (A355906 (n + 1) + A355906 n)

end

end A355905.P8606975515819340453

/-! ## A355905.P14721248441837359581

`A105553(A267099(2*(n+2))+n)`
-/

namespace A355905.P14721248441837359581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105553 (A267099 (2 * (n + 2)) + (n : ℤ)).toNat

end

end A355905.P14721248441837359581

/-! ## A355905.P15850328911381195922

`A367905(n+3)%A241641(3*n+1)`
-/

namespace A355905.P15850328911381195922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367905 (n + 3)) (A241641 (3 * n + 1))

end

end A355905.P15850328911381195922

/-! ## A355905.P11344911187081557720

`A368183(n+3)+A010815(A281194(n))`
-/

namespace A355905.P11344911187081557720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368183 (n + 3) + A010815 (A281194 n).toNat

end

end A355905.P11344911187081557720

/-!
# A355906: a(0) = 0; for n >= 1, a(n) = -(3/2)*(a(n-1)+A355905(n-1)).

The programs for A355906, there is no canonical definition to state claims against.
-/

/-! ## A355906.P5264645897607778284

`-(3/2)*(a(n-1)+A355905(n-1))` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A355906.P5264645897607778284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (-((3 : ℚ) / 2)) * (a (n - 1) + (A355905 (n - 1) : ℚ))

end

end A355906.P5264645897607778284

/-! ## A355906.P9894834687226270226

`3*A355907(n)`
-/

namespace A355906.P9894834687226270226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A355907 n

end

end A355906.P9894834687226270226

/-! ## A355906.P17206194422631669997

`3*floor(A355908(n)/3)`
-/

namespace A355906.P17206194422631669997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(A355908 n : ℚ) / 3⌋

end

end A355906.P17206194422631669997

/-! ## A355906.P10897523782242445678

`A355908(n)-A355905(n)`
-/

namespace A355906.P10897523782242445678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355908 n - A355905 n

end

end A355906.P10897523782242445678

/-! ## A355906.P8292135722338774441

`A355907(n)+A355907(n)+floor(A355908(n)/3)`
-/

namespace A355906.P8292135722338774441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355907 n + (A355907 n + ⌊(A355908 n : ℚ) / 3⌋)

end

end A355906.P8292135722338774441

/-!
# A355907: A355906(n)/3.

The programs for A355907, there is no canonical definition to state claims against.
-/

/-! ## A355907.P16897109953219773234

`A355906(n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A355907.P16897109953219773234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355906 n : ℚ) / 3

end

end A355907.P16897109953219773234

/-! ## A355907.P5647442252185660526

`round((char[1]-a(n-1)-1)/2)-a(n-1)` with `a(0)=0`
-/

namespace A355907.P5647442252185660526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway ((((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 1) - 1 : ℚ) / 2) - a (n - 1)

end

end A355907.P5647442252185660526

/-! ## A355907.P17090222411267492759

`floor(A355908(n)/3)`
-/

namespace A355907.P17090222411267492759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A355908 n : ℚ) / 3⌋

end

end A355907.P17090222411267492759

/-! ## A355907.P10062449106721207020

`A000035(n)-((a(n-1)-a(n-1)%2)/2+a(n-1)+1)` with `a(0)=0`
-/

namespace A355907.P10062449106721207020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (A000035 n : ℚ) - ((a (n - 1) - (Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) 2 : ℚ)) / 2 + (a (n - 1) + 1))

end

end A355907.P10062449106721207020

/-! ## A355907.P18142566554963083813

`(A355908(n)-A355905(n))/3`
-/

namespace A355907.P18142566554963083813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355908 n - A355905 n : ℚ) / 3

end

end A355907.P18142566554963083813

/-!
# A355908: A335905(n) + A335906(n).

The programs for A355908, there is no canonical definition to state claims against.
-/

/-! ## A355908.P1147983090648216648

`A355906(n)+A355905(n)`
-/

namespace A355908.P1147983090648216648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355906 n + A355905 n

end

end A355908.P1147983090648216648

/-! ## A355908.P10913736715818444964

`A355905(n)+3*A355907(n)`
-/

namespace A355908.P10913736715818444964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355905 n + 3 * A355907 n

end

end A355908.P10913736715818444964

/-! ## A355908.P12243675869331715920

`A355905(n)-(3/2*a(n-1))%A098270(n)` with `a(0)=0`
-/

namespace A355908.P12243675869331715920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A355905 n - Int.tmod (SequenceMachineLib.roundAway ((3 : ℚ) / 2 * (a (n - 1) : ℚ))) (A098270 n)

end

end A355908.P12243675869331715920

/-! ## A355908.P6331302278630995957

`A355907(n+1)-A355906(n+1)`
-/

namespace A355908.P6331302278630995957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355907 (n + 1) - A355906 (n + 1)

end

end A355908.P6331302278630995957

/-! ## A355908.P16216992831577546719

`A355906(n)+A014710(2*(n+1))-A014707(A014739(n+2))`
-/

namespace A355908.P16216992831577546719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355906 n + (A014710 (2 * (n + 1)) - A014707 (A014739 (n + 2)).toNat)

end

end A355908.P16216992831577546719

/-!
# A355909: Number of nodes at level n in the tree T_0 mentioned in A355905.

The programs for A355909, there is no canonical definition to state claims against.
-/

/-! ## A355909.P3349431169906317510

`∑[A355910(abs(1-n))]`
-/

namespace A355909.P3349431169906317510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355910 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355909.P3349431169906317510

/-! ## A355909.P10371307924510537354

`∑[A355910(n)]+1-A355910(n)`
-/

namespace A355909.P10371307924510537354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A355910 n)

end

end A355909.P10371307924510537354

/-! ## A355909.P14336771319037152333

`A004523(∑[A355910(n)])+1`
-/

namespace A355909.P14336771319037152333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A355909.P14336771319037152333

/-! ## A355909.P6276038748869731978

`abs(Δ[A355907(n)])+1`
-/

namespace A355909.P6276038748869731978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| + 1

end

end A355909.P6276038748869731978

/-! ## A355909.P1339272947941803324

`A001462(ceil(sqrt(A293820(2*n+3))))`
-/

namespace A355909.P1339272947941803324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 ⌈Real.sqrt (A293820 (2 * n + 3) : ℝ)⌉.toNat

end

end A355909.P1339272947941803324

/-!
# A355910: Number of nodes at level n in the tree T_{-2}.

The programs for A355910, there is no canonical definition to state claims against.
-/

/-! ## A355910.P15897264116231772655

`Δ[A355909(n)]`
-/

namespace A355910.P15897264116231772655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A355910.P15897264116231772655

/-! ## A355910.P3846157569897502559

`round(A355909(n+1)/3)`
-/

namespace A355910.P3846157569897502559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A355909 (n + 1) : ℚ) / 3)

end

end A355910.P3846157569897502559

/-! ## A355910.P6319484992283020443

`A355909(n+1)-A355909(n)`
-/

namespace A355910.P6319484992283020443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355909 (n + 1) - A355909 n

end

end A355910.P6319484992283020443

/-! ## A355910.P7151931100765963579

`A028310(A355909(n+1)%A355909(n))`
-/

namespace A355910.P7151931100765963579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A355909 (n + 1)) (A355909 n)).toNat

end

end A355910.P7151931100765963579

/-! ## A355910.P9910621387781461801

`A002264(A355909(n+1)+1)`
-/

namespace A355910.P9910621387781461801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A355909 (n + 1) + 1).toNat

end

end A355910.P9910621387781461801

/-!
# A355912: Negasemiternary (or NST) representation of the unit ambinumber (0,1).

The programs for A355912, there is no canonical definition to state claims against.
-/

/-! ## A355912.P8208759112211921020

`A031219(A006544(n)+A000217(n))`
-/

namespace A355912.P8208759112211921020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (A006544 n + A000217 n).toNat

end

end A355912.P8208759112211921020

/-! ## A355912.P8386788163336597331

`A003137(A329348(n+1)+A168081(n))`
-/

namespace A355912.P8386788163336597331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003137 (A329348 (n + 1) + A168081 n).toNat

end

end A355912.P8386788163336597331

/-! ## A355912.P2854249469130915507

`A010872(A063769(n+2)-A063741(n))`
-/

namespace A355912.P2854249469130915507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A063769 (n + 2) - A063741 n).toNat

end

end A355912.P2854249469130915507

/-! ## A355912.P9498242416930256906

`A163542(A030458(n+1)+A005231(n+1))`
-/

namespace A355912.P9498242416930256906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163542 (A030458 (n + 1) + A005231 (n + 1)).toNat

end

end A355912.P9498242416930256906

/-! ## A355912.P18404276849328205389

`and(A001222(A237167(n+2)), A053383(3*n+4))`
-/

namespace A355912.P18404276849328205389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A237167 (n + 2)).toNat) (A053383 (3 * n + 4))

end

end A355912.P18404276849328205389

/-!
# A355914: a(n) = gcd(b(n-1),b(n)), where b(n) = A351871(n).

The programs for A355914, the canonical program `A355914.P17181587718147780090` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355914 has offset 2).

The definition of A355914 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355914.P17181587718147780090

`gcd(A351871(n+1), A351871(n+2))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A355914

/-- `gcd(A351871(n+1), A351871(n+2))` -/
def P17181587718147780090.Spec : Prop :=
  ∀ n, (P17181587718147780090.a n : ℤ) = A355914 (n + 2)

theorem P17181587718147780090.correct : P17181587718147780090.Spec := by
  intro n
  simp only [A355914, Nat.add_sub_cancel]

end A355914

/-! ## A355914.P13684701953854852919

`gcd(A260503(n), A260521(A278218(2*(n+1))))`
-/

namespace A355914.P13684701953854852919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A260503 n) (A260521 (A278218 (2 * (n + 1))).toNat)

end

end A355914.P13684701953854852919

namespace A355914

/-- `gcd(A260503(n), A260521(A278218(2*(n+1))))` -/
def P13684701953854852919.Spec : Prop :=
  ∀ n, (P13684701953854852919.a n : ℤ) = A355914 (n + 2)

end A355914

/-! ## A355914.P18277227421090599441

`gcd(A000005(A002572(n+5)), A000110(n+1))`
-/

namespace A355914.P18277227421090599441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (A002572 (n + 5)).toNat) (A000110 (n + 1))

end

end A355914.P18277227421090599441

namespace A355914

/-- `gcd(A000005(A002572(n+5)), A000110(n+1))` -/
def P18277227421090599441.Spec : Prop :=
  ∀ n, (P18277227421090599441.a n : ℤ) = A355914 (n + 2)

end A355914

/-! ## A355914.P12411240178605166632

`gcd(A047476(A257864(n+1)), A113175(2*(n+2)))`
-/

namespace A355914.P12411240178605166632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047476 (A257864 (n + 1)).toNat) (A113175 (2 * (n + 2)))

end

end A355914.P12411240178605166632

namespace A355914

/-- `gcd(A047476(A257864(n+1)), A113175(2*(n+2)))` -/
def P12411240178605166632.Spec : Prop :=
  ∀ n, (P12411240178605166632.a n : ℤ) = A355914 (n + 2)

end A355914

/-! ## A355914.P8258498943574609610

`gcd(A000009(A306106(3*n+2)), A096777(n+1))`
-/

namespace A355914.P8258498943574609610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000009 (A306106 (3 * n + 2)).toNat) (A096777 (n + 1))

end

end A355914.P8258498943574609610

namespace A355914

/-- `gcd(A000009(A306106(3*n+2)), A096777(n+1))` -/
def P8258498943574609610.Spec : Prop :=
  ∀ n, (P8258498943574609610.a n : ℤ) = A355914 (n + 2)

end A355914

/-!
# A355915: Number of ways to write n as a sum of numbers of the form 2^r * 3^s, where r and s are >= 0, and no summand divides another.

The programs for A355915, there is no canonical definition to state claims against.
-/

/-! ## A355915.P5001585319429267033

`A001221(A088372(2*(n+1))+A038500(n+1))`
-/

namespace A355915.P5001585319429267033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A088372 (2 * (n + 1)) + A038500 (n + 1)).toNat

end

end A355915.P5001585319429267033

/-! ## A355915.P10798846978736353348

`gcd(2, A029542(A354203(n+1)))`
-/

namespace A355915.P10798846978736353348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A029542 (A354203 (n + 1)).toNat)

end

end A355915.P10798846978736353348

/-! ## A355915.P5499220653261926551

`A026465(A242351(abs(∏{p}[n+1, 1-#])))`
-/

namespace A355915.P5499220653261926551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (A242351 |∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ))|.toNat).toNat

end

end A355915.P5499220653261926551

/-! ## A355915.P10079482770096724869

`gcd(A003420(n+1), A259201(A001359(n+5)))`
-/

namespace A355915.P10079482770096724869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003420 (n + 1)) (A259201 ((A001359 (n + 5)).toNat + 20))

end

end A355915.P10079482770096724869

/-! ## A355915.P3427963218597350708

`A122840(10*∏{p}[n+1, #²-1])`
-/

namespace A355915.P3427963218597350708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (10 * (∏ p ∈ Nat.primeFactors (f1 n), ((p ^ 2 : ℤ) - 1))).toNat

end

end A355915.P3427963218597350708

/-!
# A355917: Variant of Inventory Sequence A342585 where indices are also counted (short version).

The programs for A355917, there is no canonical definition to state claims against.
-/

/-! ## A355917.P2153555706259102164

`A355916(Δ[n²])`
-/

namespace A355917.P2153555706259102164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355916 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A355917.P2153555706259102164

/-! ## A355917.P4172243672945638816

`A355916(2*n+1)%(n+2)`
-/

namespace A355917.P4172243672945638816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355916 (2 * n + 1)) (n + 2 : ℤ)

end

end A355917.P4172243672945638816

/-! ## A355917.P18238587526583162512

`A267084(2*(n+1))*A355916(2*n+1)`
-/

namespace A355917.P18238587526583162512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267084 (2 * (n + 1)) * A355916 (2 * n + 1)

end

end A355917.P18238587526583162512

/-! ## A355917.P6934435183568428266

`A357943(A357944(A355916(2*n+1)))`
-/

namespace A355917.P6934435183568428266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357943 (A357944 (A355916 (2 * n + 1)).toNat).toNat

end

end A355917.P6934435183568428266

/-! ## A355917.P17981584572410154547

`A103141(char[2]*A008619(n))*A355916(2*n+1)`
-/

namespace A355917.P17981584572410154547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103141 (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A008619 n).toNat * A355916 (2 * n + 1)

end

end A355917.P17981584572410154547

/-! ## A355917.P9768358573016542973

`and(A063398(n), A355916(2*n+1))`
-/

namespace A355917.P9768358573016542973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063398 n) (A355916 (2 * n + 1))

end

end A355917.P9768358573016542973

/-!
# A355918: Highest index in n-th inventory in A355916 and A355917.

The programs for A355918, there is no canonical definition to state claims against.
-/

/-! ## A355918.P675494876345313917

`A357371(n+1)-1`
-/

namespace A355918.P675494876345313917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357371 (n + 1) - 1

end

end A355918.P675494876345313917

/-! ## A355918.P1825997237720756209

`A023443(A357371(n+1))`
-/

namespace A355918.P1825997237720756209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A357371 (n + 1)).toNat

end

end A355918.P1825997237720756209

/-! ## A355918.P14249393220613826850

`A357385(A357390(n+1))+A357371(n+1)`
-/

namespace A355918.P14249393220613826850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357385 (A357390 (n + 1)).toNat + A357371 (n + 1)

end

end A355918.P14249393220613826850

/-! ## A355918.P16068269396913307313

`A274528(C(A357371(n+1), 2))`
-/

namespace A355918.P16068269396913307313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274528 (Nat.choose (A357371 (n + 1)).toNat 2)

end

end A355918.P16068269396913307313

/-! ## A355918.P2098961817278549445

`A355916(2*A357370(n+1))`
-/

namespace A355918.P2098961817278549445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355916 (2 * A357370 (n + 1)).toNat

end

end A355918.P2098961817278549445

/-! ## A355918.P2799741656661355152

`A003056(C(A357371(n+1), 2))`
-/

namespace A355918.P2799741656661355152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (A357371 (n + 1)).toNat 2)

end

end A355918.P2799741656661355152

/-! ## A355918.P13833686220882808463

`A355916(∑[2*A357371(n+1)])`
-/

namespace A355918.P13833686220882808463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A357371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355916 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A355918.P13833686220882808463

/-! ## A355918.P8179936202532545999

`A355916(A357370(n+1)+A357370(n+1))`
-/

namespace A355918.P8179936202532545999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355916 (A357370 (n + 1) + A357370 (n + 1)).toNat

end

end A355918.P8179936202532545999

/-!
# A355919: Let n = p_1*p_2*...*p_k be the prime factorization of n, with the primes sorted in descending order; let b(n) = 7^(p_1 - 1)*13^(p_2 - 1)*19^(p_3 - 1)*...*A002476(k)^(p_k - 1). Sequence lists m such that b(m) > A343771(m).

The programs for A355919, there is no canonical definition to state claims against.
-/

/-! ## A355919.P3599359839969659598

`∑[A053644(A033850(n+3))]`
-/

namespace A355919.P3599359839969659598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A033850 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355919.P3599359839969659598

/-! ## A355919.P10218166107294506824

`A116882(2*∩[A116882(n+1), A121542(n+1)])`
-/

namespace A355919.P10218166107294506824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121542 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116882 (2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A355919.P10218166107294506824

/-! ## A355919.P3480302157077044417

`A342126(A188839(n+2))`
-/

namespace A355919.P3480302157077044417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342126 (A188839 (n + 2)).toNat

end

end A355919.P3480302157077044417

/-!
# A355920: Largest prime number p such that x^n + y^n mod p does not take all values on Z/pZ.

The programs for A355920, there is no canonical definition to state claims against.
-/

/-! ## A355920.P6325655146001252910

`A299928(A001511(n+1)*A299961(n+1))`
-/

namespace A355920.P6325655146001252910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299928 (A001511 (n + 1) * A299961 (n + 1)).toNat

end

end A355920.P6325655146001252910

/-!
# A355924: Square array A(n,k) = A342671(A246278(n,k)), read by falling antidiagonals, where A342671(x) = gcd(sigma(x), A003961(x)).

The programs for A355924, there is no canonical definition to state claims against.
-/

/-! ## A355924.P1097047782055168184

`gcd(A355927(n+1), A372563(n+1))`
-/

namespace A355924.P1097047782055168184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A355927 (n + 1)) (A372563 (n + 1))

end

end A355924.P1097047782055168184

/-! ## A355924.P15713720334018293293

`∏{p}[A351544(A246278(n+2)), #]`
-/

namespace A355924.P15713720334018293293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351544 (A246278 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A355924.P15713720334018293293

/-! ## A355924.P6123287241838547505

`A342671(A246278(n+2)%A349756(3*n+5))`
-/

namespace A355924.P6123287241838547505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342671 (Int.tmod (A246278 (n + 2)) (A349756 (3 * n + 5))).toNat

end

end A355924.P6123287241838547505

/-! ## A355924.P6527422771054809637

`A342671(A246278(n+2))`
-/

namespace A355924.P6527422771054809637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342671 (A246278 (n + 2)).toNat

end

end A355924.P6527422771054809637

/-! ## A355924.P11761400227665592193

`A342671(A246275(n+1)+1)`
-/

namespace A355924.P11761400227665592193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342671 (A246275 (n + 1) + 1).toNat

end

end A355924.P11761400227665592193

/-! ## A355924.P18268519971129885377

`A342671(A250250(A083221(n+2)))`
-/

namespace A355924.P18268519971129885377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342671 (A250250 (A083221 (n + 2)).toNat).toNat

end

end A355924.P18268519971129885377

/-! ## A355924.P14015492884985792577

`A342671(A341606(n+1)*A355925(n+1))`
-/

namespace A355924.P14015492884985792577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342671 (A341606 (n + 1) * A355925 (n + 1)).toNat

end

end A355924.P14015492884985792577

/-!
# A355925: Square array A(n, k) = A009194(A246278(n, k)), read by falling antidiagonals.

The programs for A355925, there is no canonical definition to state claims against.
-/

/-! ## A355925.P5249087967692035924

`A355927(n+1)/A341605(n+1)`
-/

namespace A355925.P5249087967692035924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355927 (n + 1) : ℚ) / (A341605 (n + 1) : ℚ)

end

end A355925.P5249087967692035924

/-! ## A355925.P4157312568084952949

`gcd(A378979(n+1), A388285(n+1))`
-/

namespace A355925.P4157312568084952949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A378979 (n + 1)) (A388285 (n + 1))

end

end A355925.P4157312568084952949

/-! ## A355925.P11810438444067602268

`(A246275(n+1)+1)/A341606(n+1)`
-/

namespace A355925.P11810438444067602268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246275 (n + 1) + 1 : ℚ) / (A341606 (n + 1) : ℚ)

end

end A355925.P11810438444067602268

/-! ## A355925.P1294504859401001534

`A246278(n+2)/A341606(n+1)`
-/

namespace A355925.P1294504859401001534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246278 (n + 2) : ℚ) / (A341606 (n + 1) : ℚ)

end

end A355925.P1294504859401001534

/-! ## A355925.P11927493084635808018

`gcd(A246278(n+2), A355927(n+1))`
-/

namespace A355925.P11927493084635808018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A246278 (n + 2)) (A355927 (n + 1))

end

end A355925.P11927493084635808018

/-! ## A355925.P7660247073231460844

`(A246273(A038722(n+1))+1)/A341606(n+1)`
-/

namespace A355925.P7660247073231460844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246273 (A038722 (n + 1)).toNat + 1 : ℚ) / (A341606 (n + 1) : ℚ)

end

end A355925.P7660247073231460844

/-! ## A355925.P12852441591736831152

`(A378979(n+1)+A246278(n+2))/A388284(n+1)`
-/

namespace A355925.P12852441591736831152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378979 (n + 1) + A246278 (n + 2) : ℚ) / (A388284 (n + 1) : ℚ)

end

end A355925.P12852441591736831152

/-! ## A355925.P16940932307886442481

`A341605(n+1)/A379500(n+1)*A246278(n+2)`
-/

namespace A355925.P16940932307886442481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341605 (n + 1) : ℚ) / (A379500 (n + 1) : ℚ) * (A246278 (n + 2) : ℚ)

end

end A355925.P16940932307886442481

/-! ## A355925.P18297579933651515202

`(A249816(A083221(n+2)-1)+1)/A341606(n+1)`
-/

namespace A355925.P18297579933651515202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249816 (A083221 (n + 2) - 1).toNat + 1 : ℚ) / (A341606 (n + 1) : ℚ)

end

end A355925.P18297579933651515202

/-! ## A355925.P9746954637555879132

`A250248(A083221(n+2))/A341606(n+1)`
-/

namespace A355925.P9746954637555879132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250248 (A083221 (n + 2)).toNat : ℚ) / (A341606 (n + 1) : ℚ)

end

end A355925.P9746954637555879132

/-! ## A355925.P10409705142229646377

`A324394(A253551(n+1))`
-/

namespace A355925.P10409705142229646377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324394 (A253551 (n + 1)).toNat

end

end A355925.P10409705142229646377

/-!
# A355926: Square array A(n,k) = A355442(A246278(n,k)), read by falling antidiagonals.

The programs for A355926, there is no canonical definition to state claims against.
-/

/-! ## A355926.P8478782463988064213

`A355442(A246278(n+2))`
-/

namespace A355926.P8478782463988064213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355442 (A246278 (n + 2)).toNat

end

end A355926.P8478782463988064213

/-! ## A355926.P14379088331574717598

`A355442(A246275(n+1)+1)`
-/

namespace A355926.P14379088331574717598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355442 (A246275 (n + 1) + 1).toNat

end

end A355926.P14379088331574717598

/-!
# A355927: Square array A(n, k) = sigma(A246278(n, k)), read by falling antidiagonals.

The programs for A355927, there is no canonical definition to state claims against.
-/

/-! ## A355927.P16620771467246546213

`A341605(n+1)*A355925(n+1)`
-/

namespace A355927.P16620771467246546213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341605 (n + 1) * A355925 (n + 1)

end

end A355927.P16620771467246546213

/-! ## A355927.P1849254587153301103

`A355925(n+1)/A341606(n+1)*A379500(n+1)`
-/

namespace A355927.P1849254587153301103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355925 (n + 1) : ℚ) / (A341606 (n + 1) : ℚ) * (A379500 (n + 1) : ℚ)

end

end A355927.P1849254587153301103

/-! ## A355927.P17077120467743705185

`A379499(n+1)/A246278(n+2)`
-/

namespace A355927.P17077120467743705185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379499 (n + 1) : ℚ) / (A246278 (n + 2) : ℚ)

end

end A355927.P17077120467743705185

/-! ## A355927.P15918422977433848970

`2*A246278(n+2)-A378979(n+1)`
-/

namespace A355927.P15918422977433848970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A246278 (n + 2) - A378979 (n + 1)

end

end A355927.P15918422977433848970

/-! ## A355927.P9665431075009673373

`A341605(n+1)/A341606(n+1)*A246278(n+2)`
-/

namespace A355927.P9665431075009673373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341605 (n + 1) : ℚ) / (A341606 (n + 1) : ℚ) * (A246278 (n + 2) : ℚ)

end

end A355927.P9665431075009673373

/-! ## A355927.P9657302147537402492

`(A246273(A038722(n+1))+1)/A341606(n+1)*A341605(n+1)`
-/

namespace A355927.P9657302147537402492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246273 (A038722 (n + 1)).toNat + 1 : ℚ) / (A341606 (n + 1) : ℚ) * (A341605 (n + 1) : ℚ)

end

end A355927.P9657302147537402492

/-! ## A355927.P4397147777347610925

`A324535(A083221(n+2))+A280496(2*A083221(n+2))`
-/

namespace A355927.P4397147777347610925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324535 (A083221 (n + 2)).toNat + A280496 (2 * A083221 (n + 2)).toNat

end

end A355927.P4397147777347610925

/-! ## A355927.P11726876652398334729

`∑{d}[A246278(n+2), #]`
-/

namespace A355927.P11726876652398334729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246278 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A355927.P11726876652398334729

/-! ## A355927.P876904773010030394

`∑{d}[A246275(n+1)+1, #]`
-/

namespace A355927.P876904773010030394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246275 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A355927.P876904773010030394

/-! ## A355927.P10719941047745796366

`∑{d}[A249818(A083221(n+2)), #]`
-/

namespace A355927.P10719941047745796366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249818 (A083221 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A355927.P10719941047745796366

/-! ## A355927.P15341697230886327523

`∑{d}[A246273(A038722(n+1))+1, #]`
-/

namespace A355927.P15341697230886327523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246273 (A038722 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A355927.P15341697230886327523

/-! ## A355927.P9267361987733765149

`∑{d}[A246273(A061579(n)+1)+1, #]`
-/

namespace A355927.P9267361987733765149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246273 (A061579 n + 1).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A355927.P9267361987733765149

/-! ## A355927.P16371630704947286444

`∑{d}[A280496(2*A083221(n+2)), #]`
-/

namespace A355927.P16371630704947286444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280496 (2 * A083221 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A355927.P16371630704947286444

/-! ## A355927.P6336894281963636320

`∑{d}[A249816(A083221(n+2)-1)+1, #]`
-/

namespace A355927.P6336894281963636320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249816 (A083221 (n + 2) - 1).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A355927.P6336894281963636320

/-! ## A355927.P15602711229028408513

`A000203(A246278(n+2))`
-/

namespace A355927.P15602711229028408513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A246278 (n + 2)).toNat

end

end A355927.P15602711229028408513

/-! ## A355927.P16691377446064884122

`A000203(A246275(n+1)+1)`
-/

namespace A355927.P16691377446064884122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A246275 (n + 1) + 1).toNat

end

end A355927.P16691377446064884122

/-! ## A355927.P16297067905865989683

`∑{d}[A279336(A256997(n+2)), #]`
-/

namespace A355927.P16297067905865989683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279336 (A256997 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A355927.P16297067905865989683

/-! ## A355927.P9369274300510788299

`A324054(A253551(n+1))`
-/

namespace A355927.P9369274300510788299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324054 (A253551 (n + 1)).toNat

end

end A355927.P9369274300510788299

/-! ## A355927.P12779909517975864660

`∑{d}[A005940(A253551(n+1)+1), #]`
-/

namespace A355927.P12779909517975864660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A253551 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A355927.P12779909517975864660

/-! ## A355927.P11572523045327023011

`∑{d}[A246676(A135764(n+1))+1, #]`
-/

namespace A355927.P11572523045327023011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246676 (A135764 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A355927.P11572523045327023011

/-!
# A355928: Squarefree part of the sum of divisors of n.

The programs for A355928, the canonical program `A355928.P5459121208310250653` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355928 has offset 1).

The definition of A355928 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355928.P5459121208310250653

`A007913(A000203(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A355928

/-- `A007913(A000203(n+1))` -/
def P5459121208310250653.Spec : Prop :=
  ∀ n, P5459121208310250653.a n = A355928 (n + 1)

theorem P5459121208310250653.correct : P5459121208310250653.Spec := by
  intro n
  simp only [A355928, Nat.add_sub_cancel]

end A355928

/-! ## A355928.P15000774362056461086

`A355929(n+1)+A007913(n+1)`
-/

namespace A355928.P15000774362056461086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355929 (n + 1) + A007913 (n + 1)

end

end A355928.P15000774362056461086

namespace A355928

/-- `A355929(n+1)+A007913(n+1)` -/
def P15000774362056461086.Spec : Prop :=
  ∀ n, P15000774362056461086.a n = A355928 (n + 1)

theorem P15000774362056461086.correct : P15000774362056461086.Spec := by
  intro n
  simp only [A355928, Nat.add_sub_cancel, A355928.P15000774362056461086.a, A355928.P5459121208310250653.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007913, A007913.P8131970495124731496.a, A355929, A355929.P18162260943095803448.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A355928

/-! ## A355928.P15397702869236603100

`A007913(∑{d}[n+1, #])`
-/

namespace A355928.P15397702869236603100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A355928.P15397702869236603100

namespace A355928

/-- `A007913(∑{d}[n+1, #])` -/
def P15397702869236603100.Spec : Prop :=
  ∀ n, P15397702869236603100.a n = A355928 (n + 1)

end A355928

/-! ## A355928.P12762281647080862267

`A007913(Δ[A160664(n)])`
-/

namespace A355928.P12762281647080862267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (n + 1) - f1 n).toNat

end

end A355928.P12762281647080862267

namespace A355928

/-- `A007913(Δ[A160664(n)])` -/
def P12762281647080862267.Spec : Prop :=
  ∀ n, P12762281647080862267.a n = A355928 (n + 1)

end A355928

/-! ## A355928.P10003085170531322790

`A007913(abs(Δ[A330725(n)]))`
-/

namespace A355928.P10003085170531322790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 |f1 (n + 1) - f1 n|.toNat

end

end A355928.P10003085170531322790

namespace A355928

/-- `A007913(abs(Δ[A330725(n)]))` -/
def P10003085170531322790.Spec : Prop :=
  ∀ n, P10003085170531322790.a n = A355928 (n + 1)

end A355928

/-! ## A355928.P577714750807567027

`A007913(A245092(Δ[n²]))`
-/

namespace A355928.P577714750807567027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A355928.P577714750807567027

namespace A355928

/-- `A007913(A245092(Δ[n²]))` -/
def P577714750807567027.Spec : Prop :=
  ∀ n, P577714750807567027.a n = A355928 (n + 1)

end A355928

/-! ## A355928.P10088240709728526094

`A007913(abs(A143348(n+1)))`
-/

namespace A355928.P10088240709728526094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 |A143348 (n + 1)|.toNat

end

end A355928.P10088240709728526094

namespace A355928

/-- `A007913(abs(A143348(n+1)))` -/
def P10088240709728526094.Spec : Prop :=
  ∀ n, P10088240709728526094.a n = A355928 (n + 1)

end A355928

/-! ## A355928.P1647156166587912805

`A007913(A039653(n+1)+1)`
-/

namespace A355928.P1647156166587912805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A039653 (n + 1) + 1).toNat

end

end A355928.P1647156166587912805

namespace A355928

/-- `A007913(A039653(n+1)+1)` -/
def P1647156166587912805.Spec : Prop :=
  ∀ n, P1647156166587912805.a n = A355928 (n + 1)

end A355928

/-! ## A355928.P13953272739552250790

`A007913(A088580(n+1)-1)`
-/

namespace A355928.P13953272739552250790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A088580 (n + 1) - 1).toNat

end

end A355928.P13953272739552250790

namespace A355928

/-- `A007913(A088580(n+1)-1)` -/
def P13953272739552250790.Spec : Prop :=
  ∀ n, P13953272739552250790.a n = A355928 (n + 1)

theorem P13953272739552250790.correct : P13953272739552250790.Spec := by
  intro n
  simp only [A355928, Nat.add_sub_cancel, A355928.P13953272739552250790.a, A355928.P5459121208310250653.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007913, A007913.P8131970495124731496.a, A088580, A088580.P3089093194242277422.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A355928

/-! ## A355928.P2733025336106602476

`A007913(ceil(A002659(n+1)/2))`
-/

namespace A355928.P2733025336106602476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ⌈(A002659 (n + 1) : ℚ) / 2⌉.toNat

end

end A355928.P2733025336106602476

namespace A355928

/-- `A007913(ceil(A002659(n+1)/2))` -/
def P2733025336106602476.Spec : Prop :=
  ∀ n, P2733025336106602476.a n = A355928 (n + 1)

end A355928

/-! ## A355928.P13236600257890538757

`A007913((A002659(n+1)+1)/2)`
-/

namespace A355928.P13236600257890538757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway ((A002659 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A355928.P13236600257890538757

namespace A355928

/-- `A007913((A002659(n+1)+1)/2)` -/
def P13236600257890538757.Spec : Prop :=
  ∀ n, P13236600257890538757.a n = A355928 (n + 1)

end A355928

/-! ## A355928.P419116720482929138

`A007913(A001065(n+1)+1+n)`
-/

namespace A355928.P419116720482929138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A355928.P419116720482929138

namespace A355928

/-- `A007913(A001065(n+1)+1+n)` -/
def P419116720482929138.Spec : Prop :=
  ∀ n, P419116720482929138.a n = A355928 (n + 1)

theorem P419116720482929138.correct : P419116720482929138.Spec := by
  intro n
  simp only [A355928, Nat.add_sub_cancel, A355928.P419116720482929138.a, A355928.P5459121208310250653.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A007913, A007913.P8131970495124731496.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A355928

/-! ## A355928.P8292405116081155225

`A007913(A064987(n+1)/(n+1))`
-/

namespace A355928.P8292405116081155225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A355928.P8292405116081155225

namespace A355928

/-- `A007913(A064987(n+1)/(n+1))` -/
def P8292405116081155225.Spec : Prop :=
  ∀ n, P8292405116081155225.a n = A355928 (n + 1)

end A355928

/-! ## A355928.P2579476124323965860

`A000203(n+1)/A326039(n+1)`
-/

namespace A355928.P2579476124323965860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A326039 (n + 1) : ℚ)

end

end A355928.P2579476124323965860

namespace A355928

/-- `A000203(n+1)/A326039(n+1)` -/
def P2579476124323965860.Spec : Prop :=
  ∀ n, P2579476124323965860.a n = (A355928 (n + 1) : ℚ)

end A355928

/-! ## A355928.P17013132611228550213

`A000203(n+1)/A326038(n+1)²`
-/

namespace A355928.P17013132611228550213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A326038 (n + 1) ^ 2 : ℚ)

end

end A355928.P17013132611228550213

namespace A355928

/-- `A000203(n+1)/A326038(n+1)²` -/
def P17013132611228550213.Spec : Prop :=
  ∀ n, P17013132611228550213.a n = (A355928 (n + 1) : ℚ)

end A355928

/-! ## A355928.P9145140539992717720

`A326040(n+1)/A326039(n+1)+1`
-/

namespace A355928.P9145140539992717720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326040 (n + 1) : ℚ) / (A326039 (n + 1) : ℚ) + 1

end

end A355928.P9145140539992717720

namespace A355928

/-- `A326040(n+1)/A326039(n+1)+1` -/
def P9145140539992717720.Spec : Prop :=
  ∀ n, P9145140539992717720.a n = (A355928 (n + 1) : ℚ)

end A355928

/-! ## A355928.P15058822868566391580

`A007913(A160664(n+1)-A160664(n))`
-/

namespace A355928.P15058822868566391580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A160664 (n + 1) - A160664 n).toNat

end

end A355928.P15058822868566391580

namespace A355928

/-- `A007913(A160664(n+1)-A160664(n))` -/
def P15058822868566391580.Spec : Prop :=
  ∀ n, P15058822868566391580.a n = A355928 (n + 1)

end A355928

/-! ## A355928.P14377718271218831545

`A007913(A326126(n+1)+Δ[A069891(n)])`
-/

namespace A355928.P14377718271218831545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A326126 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A355928.P14377718271218831545

namespace A355928

/-- `A007913(A326126(n+1)+Δ[A069891(n)])` -/
def P14377718271218831545.Spec : Prop :=
  ∀ n, P14377718271218831545.a n = A355928 (n + 1)

end A355928

/-! ## A355928.P11511550248295156046

`A007913(A051612(n+1)+A000010(n+1))`
-/

namespace A355928.P11511550248295156046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A051612 (n + 1) + A000010 (n + 1)).toNat

end

end A355928.P11511550248295156046

namespace A355928

/-- `A007913(A051612(n+1)+A000010(n+1))` -/
def P11511550248295156046.Spec : Prop :=
  ∀ n, P11511550248295156046.a n = A355928 (n + 1)

theorem P11511550248295156046.correct : P11511550248295156046.Spec := by
  intro n
  simp only [A355928, Nat.add_sub_cancel, A355928.P11511550248295156046.a, A355928.P5459121208310250653.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007913, A007913.P8131970495124731496.a, A051612, A051612.P4135239823752248514.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A355928

/-! ## A355928.P17671693962104699163

`A007913(A326126(n+1)+A007913(n+1))`
-/

namespace A355928.P17671693962104699163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A326126 (n + 1) + A007913 (n + 1)).toNat

end

end A355928.P17671693962104699163

namespace A355928

/-- `A007913(A326126(n+1)+A007913(n+1))` -/
def P17671693962104699163.Spec : Prop :=
  ∀ n, P17671693962104699163.a n = A355928 (n + 1)

theorem P17671693962104699163.correct : P17671693962104699163.Spec := by
  intro n
  simp only [A355928, Nat.add_sub_cancel, A355928.P17671693962104699163.a, A355928.P5459121208310250653.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007913, A007913.P8131970495124731496.a, A326126, A326126.P126110095243043684.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A355928

/-!
# A355929: Difference between the squarefree part of the sum of divisors of n and the squarefree part of n.

The programs for A355929, the canonical program `A355929.P18162260943095803448` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355929 has offset 1).

The definition of A355929 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355929.P18162260943095803448

`A355928(n+1)-A007913(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A355929

/-- `A355928(n+1)-A007913(n+1)` -/
def P18162260943095803448.Spec : Prop :=
  ∀ n, P18162260943095803448.a n = A355929 (n + 1)

theorem P18162260943095803448.correct : P18162260943095803448.Spec := by
  intro n
  simp only [A355929, Nat.add_sub_cancel]

end A355929

/-! ## A355929.P7081210286465764983

`A007913(A000203(n+1))-A007913(n+1)`
-/

namespace A355929.P7081210286465764983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000203 (n + 1)).toNat - A007913 (n + 1)

end

end A355929.P7081210286465764983

namespace A355929

/-- `A007913(A000203(n+1))-A007913(n+1)` -/
def P7081210286465764983.Spec : Prop :=
  ∀ n, P7081210286465764983.a n = A355929 (n + 1)

end A355929

/-! ## A355929.P1877797056668275763

`A007913(∑{d}[n+1, #])-A007913(n+1)`
-/

namespace A355929.P1877797056668275763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (∑ d ∈ Nat.divisors (f1 n), d) - A007913 (n + 1)

end

end A355929.P1877797056668275763

namespace A355929

/-- `A007913(∑{d}[n+1, #])-A007913(n+1)` -/
def P1877797056668275763.Spec : Prop :=
  ∀ n, P1877797056668275763.a n = A355929 (n + 1)

end A355929

/-! ## A355929.P15957407850187761329

`A007913(Δ[A160664(n)])-A007913(n+1)`
-/

namespace A355929.P15957407850187761329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (n + 1) - f1 n).toNat - A007913 (n + 1)

end

end A355929.P15957407850187761329

namespace A355929

/-- `A007913(Δ[A160664(n)])-A007913(n+1)` -/
def P15957407850187761329.Spec : Prop :=
  ∀ n, P15957407850187761329.a n = A355929 (n + 1)

end A355929

/-! ## A355929.P18166879454942591280

`A007913(A245092(Δ[n²]))-A007913(n+1)`
-/

namespace A355929.P18166879454942591280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat - A007913 (n + 1)

end

end A355929.P18166879454942591280

namespace A355929

/-- `A007913(A245092(Δ[n²]))-A007913(n+1)` -/
def P18166879454942591280.Spec : Prop :=
  ∀ n, P18166879454942591280.a n = A355929 (n + 1)

end A355929

/-! ## A355929.P9750879067305866092

`A007913(abs(A143348(n+1)))-A007913(n+1)`
-/

namespace A355929.P9750879067305866092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 |A143348 (n + 1)|.toNat - A007913 (n + 1)

end

end A355929.P9750879067305866092

namespace A355929

/-- `A007913(abs(A143348(n+1)))-A007913(n+1)` -/
def P9750879067305866092.Spec : Prop :=
  ∀ n, P9750879067305866092.a n = A355929 (n + 1)

end A355929

/-! ## A355929.P10903818125795684899

`A007913(A088580(n+1)-1)-A007913(n+1)`
-/

namespace A355929.P10903818125795684899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A088580 (n + 1) - 1).toNat - A007913 (n + 1)

end

end A355929.P10903818125795684899

namespace A355929

/-- `A007913(A088580(n+1)-1)-A007913(n+1)` -/
def P10903818125795684899.Spec : Prop :=
  ∀ n, P10903818125795684899.a n = A355929 (n + 1)

theorem P10903818125795684899.correct : P10903818125795684899.Spec := by
  intro n
  simp only [A355929, Nat.add_sub_cancel, A355929.P10903818125795684899.a, A355929.P18162260943095803448.a, A007913, A007913.P8131970495124731496.a, A088580, A088580.P3089093194242277422.a, A355928, A355928.P5459121208310250653.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A355929

/-! ## A355929.P16473442426819820678

`A007913(A274535(n+1)/5)-A007913(n+1)`
-/

namespace A355929.P16473442426819820678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway ((A274535 (n + 1) : ℚ) / 5)).toNat - A007913 (n + 1)

end

end A355929.P16473442426819820678

namespace A355929

/-- `A007913(A274535(n+1)/5)-A007913(n+1)` -/
def P16473442426819820678.Spec : Prop :=
  ∀ n, P16473442426819820678.a n = A355929 (n + 1)

end A355929

/-! ## A355929.P8982916849196551256

`A007913(ceil(A002659(n+1)/2))-A007913(n+1)`
-/

namespace A355929.P8982916849196551256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ⌈(A002659 (n + 1) : ℚ) / 2⌉.toNat - A007913 (n + 1)

end

end A355929.P8982916849196551256

namespace A355929

/-- `A007913(ceil(A002659(n+1)/2))-A007913(n+1)` -/
def P8982916849196551256.Spec : Prop :=
  ∀ n, P8982916849196551256.a n = A355929 (n + 1)

end A355929

/-! ## A355929.P9096747168239462192

`A007913(A051612(n+1)+A000010(n+1))-A007913(n+1)`
-/

namespace A355929.P9096747168239462192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A051612 (n + 1) + A000010 (n + 1)).toNat - A007913 (n + 1)

end

end A355929.P9096747168239462192

namespace A355929

/-- `A007913(A051612(n+1)+A000010(n+1))-A007913(n+1)` -/
def P9096747168239462192.Spec : Prop :=
  ∀ n, P9096747168239462192.a n = A355929 (n + 1)

theorem P9096747168239462192.correct : P9096747168239462192.Spec := by
  intro n
  simp only [A355929, Nat.add_sub_cancel, A355929.P9096747168239462192.a, A355929.P18162260943095803448.a, A000010, A000010.P4673923239450215316.a, A007913, A007913.P8131970495124731496.a, A051612, A051612.P4135239823752248514.a, A355928, A355928.P5459121208310250653.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A355929

/-! ## A355929.P15470765968229133835

`A007913(A326126(n+1)+A007913(n+1))-A007913(n+1)`
-/

namespace A355929.P15470765968229133835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A326126 (n + 1) + A007913 (n + 1)).toNat - A007913 (n + 1)

end

end A355929.P15470765968229133835

namespace A355929

/-- `A007913(A326126(n+1)+A007913(n+1))-A007913(n+1)` -/
def P15470765968229133835.Spec : Prop :=
  ∀ n, P15470765968229133835.a n = A355929 (n + 1)

theorem P15470765968229133835.correct : P15470765968229133835.Spec := by
  intro n
  simp only [A355929, Nat.add_sub_cancel, A355929.P15470765968229133835.a, A355929.P18162260943095803448.a, A007913, A007913.P8131970495124731496.a, A326126, A326126.P126110095243043684.a, A355928, A355928.P5459121208310250653.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A355929

/-! ## A355929.P9875736810190807623

`A007913(A326142(n+1)+A007947(n+1))-A007913(n+1)`
-/

namespace A355929.P9875736810190807623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A326142 (n + 1) + A007947 (n + 1)).toNat - A007913 (n + 1)

end

end A355929.P9875736810190807623

namespace A355929

/-- `A007913(A326142(n+1)+A007947(n+1))-A007913(n+1)` -/
def P9875736810190807623.Spec : Prop :=
  ∀ n, P9875736810190807623.a n = A355929 (n + 1)

theorem P9875736810190807623.correct : P9875736810190807623.Spec := by
  intro n
  simp only [A355929, Nat.add_sub_cancel, A355929.P9875736810190807623.a, A355929.P18162260943095803448.a, A007913, A007913.P8131970495124731496.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A326142, A326142.P15415912859726343761.a, A355928, A355928.P5459121208310250653.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A355929

/-! ## A355929.P12696305943758900206

`A007913(A326053(n+1)+A008833(n+1))-A007913(n+1)`
-/

namespace A355929.P12696305943758900206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A326053 (n + 1) + A008833 (n + 1)).toNat - A007913 (n + 1)

end

end A355929.P12696305943758900206

namespace A355929

/-- `A007913(A326053(n+1)+A008833(n+1))-A007913(n+1)` -/
def P12696305943758900206.Spec : Prop :=
  ∀ n, P12696305943758900206.a n = A355929 (n + 1)

theorem P12696305943758900206.correct : P12696305943758900206.Spec := by
  intro n
  simp only [A355929, Nat.add_sub_cancel, A355929.P12696305943758900206.a, A355929.P18162260943095803448.a, A007913, A007913.P8131970495124731496.a, A008833, A008833.P11016767941717339701.f1, A008833.P11016767941717339701.a, A326053, A326053.P16383788461503311404.a, A355928, A355928.P5459121208310250653.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A355929

/-! ## A355929.P2492585303165068435

`A007913(A326040(n+1)+A326039(n+1))-A007913(n+1)`
-/

namespace A355929.P2492585303165068435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A326040 (n + 1) + A326039 (n + 1)).toNat - A007913 (n + 1)

end

end A355929.P2492585303165068435

namespace A355929

/-- `A007913(A326040(n+1)+A326039(n+1))-A007913(n+1)` -/
def P2492585303165068435.Spec : Prop :=
  ∀ n, P2492585303165068435.a n = A355929 (n + 1)

theorem P2492585303165068435.correct : P2492585303165068435.Spec := by
  intro n
  simp only [A355929, Nat.add_sub_cancel, A355929.P2492585303165068435.a, A355929.P18162260943095803448.a, A007913, A007913.P8131970495124731496.a, A326039, A326039.P7430383325439106472.a, A326040, A326040.P7505067728848820017.a, A355928, A355928.P5459121208310250653.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008833, A008833.P11016767941717339701.f1, A008833.P11016767941717339701.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A355929

/-! ## A355929.P9673733511033096132

`A007913(A239050(n+1))-A007913(n+1)`
-/

namespace A355929.P9673733511033096132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A239050 (n + 1)).toNat - A007913 (n + 1)

end

end A355929.P9673733511033096132

namespace A355929

/-- `A007913(A239050(n+1))-A007913(n+1)` -/
def P9673733511033096132.Spec : Prop :=
  ∀ n, P9673733511033096132.a n = A355929 (n + 1)

end A355929

/-! ## A355929.P2434156873302558311

`A326126(n+1)-A326128(A000203(n+1))`
-/

namespace A355929.P2434156873302558311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326126 (n + 1) - A326128 (A000203 (n + 1)).toNat

end

end A355929.P2434156873302558311

namespace A355929

/-- `A326126(n+1)-A326128(A000203(n+1))` -/
def P2434156873302558311.Spec : Prop :=
  ∀ n, P2434156873302558311.a n = A355929 (n + 1)

end A355929

/-! ## A355929.P14344152455328564692

`A007913(A325299(n+1))-A007913(n+1)`
-/

namespace A355929.P14344152455328564692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A325299 (n + 1)).toNat - A007913 (n + 1)

end

end A355929.P14344152455328564692

namespace A355929

/-- `A007913(A325299(n+1))-A007913(n+1)` -/
def P14344152455328564692.Spec : Prop :=
  ∀ n, P14344152455328564692.a n = A355929 (n + 1)

end A355929

/-! ## A355929.P16475813552392849260

`A007913(A064987(n+1)/A007913(n+1))-A007913(n+1)`
-/

namespace A355929.P16475813552392849260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (A007913 (n + 1) : ℚ))).toNat - A007913 (n + 1)

end

end A355929.P16475813552392849260

namespace A355929

/-- `A007913(A064987(n+1)/A007913(n+1))-A007913(n+1)` -/
def P16475813552392849260.Spec : Prop :=
  ∀ n, P16475813552392849260.a n = A355929 (n + 1)

end A355929

/-!
# A355930: Sum of the prime indices of n minus the sum of the prime indices of the smallest number with same prime signature as n, when the sum is taken with multiplicity, as in A056239.

The programs for A355930, the canonical program `A355930.P13161575751402351718` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355930 has offset 1).

The definition of A355930 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A056239, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A355930.P7785214413258385052

`A056239(n+1)-A356159(n+1)`
-/

namespace A355930.P7785214413258385052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A356159 (n + 1)

end

end A355930.P7785214413258385052

namespace A355930

/-- `A056239(n+1)-A356159(n+1)` -/
def P7785214413258385052.Spec : Prop :=
  ∀ n, P7785214413258385052.a n = A355930 (n + 1)

end A355930

/-! ## A355930.P13161575751402351718

`A056239(n+1)-A056239(A046523(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A355930

/-- `A056239(n+1)-A056239(A046523(n+1))` -/
def P13161575751402351718.Spec : Prop :=
  ∀ n, P13161575751402351718.a n = A355930 (n + 1)

theorem P13161575751402351718.correct : P13161575751402351718.Spec := by
  intro n
  simp only [A355930, Nat.add_sub_cancel]

end A355930

/-! ## A355930.P360647401919638388

`∑{d}[n+1, A297109(#)]-A356159(n+1)`
-/

namespace A355930.P360647401919638388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A297109 d - A356159 (n + 1)

end

end A355930.P360647401919638388

namespace A355930

/-- `∑{d}[n+1, A297109(#)]-A356159(n+1)` -/
def P360647401919638388.Spec : Prop :=
  ∀ n, P360647401919638388.a n = A355930 (n + 1)

end A355930

/-! ## A355930.P5565997956734839439

`A316436(2*(n+1))-1-A356159(n+1)`
-/

namespace A355930.P5565997956734839439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316436 (2 * (n + 1)) - 1 - A356159 (n + 1)

end

end A355930.P5565997956734839439

namespace A355930

/-- `A316436(2*(n+1))-1-A356159(n+1)` -/
def P5565997956734839439.Spec : Prop :=
  ∀ n, P5565997956734839439.a n = A355930 (n + 1)

end A355930

/-! ## A355930.P8647409584236921979

`A318995(n+1)-A318995(A046523(n+1))`
-/

namespace A355930.P8647409584236921979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (n + 1) - A318995 (A046523 (n + 1)).toNat

end

end A355930.P8647409584236921979

namespace A355930

/-- `A318995(n+1)-A318995(A046523(n+1))` -/
def P8647409584236921979.Spec : Prop :=
  ∀ n, P8647409584236921979.a n = A355930 (n + 1)

end A355930

/-! ## A355930.P17526767374723849911

`A325794(A046523(n+1))-A325794(n+1)`
-/

namespace A355930.P17526767374723849911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325794 (A046523 (n + 1)).toNat - A325794 (n + 1)

end

end A355930.P17526767374723849911

namespace A355930

/-- `A325794(A046523(n+1))-A325794(n+1)` -/
def P17526767374723849911.Spec : Prop :=
  ∀ n, P17526767374723849911.a n = A355930 (n + 1)

end A355930

/-! ## A355930.P12531073463893910828

`A304739(A064664(n+1))-A356159(n+1)`
-/

namespace A355930.P12531073463893910828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304739 (A064664 (n + 1)).toNat - A356159 (n + 1)

end

end A355930.P12531073463893910828

namespace A355930

/-- `A304739(A064664(n+1))-A356159(n+1)` -/
def P12531073463893910828.Spec : Prop :=
  ∀ n, P12531073463893910828.a n = A355930 (n + 1)

end A355930

/-! ## A355930.P17288499889547765033

`A318995(n+1)+Δ[A022559(n)]-A356159(n+1)`
-/

namespace A355930.P17288499889547765033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (n + 1) + (f1 (n + 1) - f1 n) - A356159 (n + 1)

end

end A355930.P17288499889547765033

namespace A355930

/-- `A318995(n+1)+Δ[A022559(n)]-A356159(n+1)` -/
def P17288499889547765033.Spec : Prop :=
  ∀ n, P17288499889547765033.a n = A355930 (n + 1)

theorem P17288499889547765033.correct : P17288499889547765033.Spec := by
  intro n
  simp only [A355930, Nat.add_sub_cancel, A355930.P17288499889547765033.f1, A355930.P17288499889547765033.a, A355930.P13161575751402351718.a, A022559, A022559.P10554250414511796107.a, A046523, A046523.P3407874444772092792.a, A056239, A056239.P11316688788989965672.a, A318995, A318995.P1948814167447618937.f1, A318995.P1948814167447618937.a, A356159, A356159.P17667965768721708085.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A181819, A181819.P15090535388863431201.a, A181821, A181821.P11277667539367847379.a, A001511, A001511.P17146462531039486101.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A008578, A008578.P3639467937083264764.a, A048896, A048896.P6461019053085857547.a, A064989, A064989.P13349672914146769936.a, A108951, A108951.P1294613322156543690.a, A122111, A122111.P18124015185857335041.a, A006519, A006519.P10435570611646570274.a, A048881, A048881.P16567064232951496228.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A105560, A105560.P10934841406439867276.a, A158611, A158611.P9275629407611603775.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A355930

/-! ## A355930.P18066346860400182148

`A339894(n+1)+A339896(n+1)-A356159(n+1)`
-/

namespace A355930.P18066346860400182148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339894 (n + 1) + (A339896 (n + 1) - A356159 (n + 1))

end

end A355930.P18066346860400182148

namespace A355930

/-- `A339894(n+1)+A339896(n+1)-A356159(n+1)` -/
def P18066346860400182148.Spec : Prop :=
  ∀ n, P18066346860400182148.a n = A355930 (n + 1)

theorem P18066346860400182148.correct : P18066346860400182148.Spec := by
  intro n
  simp only [A355930, Nat.add_sub_cancel, A355930.P18066346860400182148.a, A355930.P13161575751402351718.a, A046523, A046523.P3407874444772092792.a, A056239, A056239.P11316688788989965672.a, A339894, A339894.P9202660857362270704.a, A339896, A339896.P16852048549527834821.a, A356159, A356159.P17667965768721708085.a, A000523, A000523.P3314682526375882520.a, A122111, A122111.P18124015185857335041.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A181819, A181819.P15090535388863431201.a, A181821, A181821.P11277667539367847379.a, A001511, A001511.P17146462531039486101.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A008578, A008578.P3639467937083264764.a, A048896, A048896.P6461019053085857547.a, A064989, A064989.P13349672914146769936.a, A105560, A105560.P10934841406439867276.a, A108951, A108951.P1294613322156543690.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A006519, A006519.P10435570611646570274.a, A048881, A048881.P16567064232951496228.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A158611, A158611.P9275629407611603775.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A355930

/-!
# A355931: Greatest common divisor of the odd part of n and sigma(n), where sigma is the sum of divisors function.

The programs for A355931, the canonical program `A355931.P9459275296405827546` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355931 has offset 1).

The definition of A355931 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355931.P9459275296405827546

`gcd(n+1, A161942(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A355931

/-- `gcd(n+1, A161942(n+1))` -/
def P9459275296405827546.Spec : Prop :=
  ∀ n, (P9459275296405827546.a n : ℤ) = A355931 (n + 1)

theorem P9459275296405827546.correct : P9459275296405827546.Spec := by
  intro n
  simp only [A355931, Nat.add_sub_cancel]

end A355931

/-! ## A355931.P18332209378655481754

`A000265(A009194(n+1))`
-/

namespace A355931.P18332209378655481754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A009194 (n + 1)).toNat

end

end A355931.P18332209378655481754

namespace A355931

/-- `A000265(A009194(n+1))` -/
def P18332209378655481754.Spec : Prop :=
  ∀ n, P18332209378655481754.a n = A355931 (n + 1)

end A355931

/-! ## A355931.P14345436494736302623

`gcd(A000203(n+1), A000265(n+1))`
-/

namespace A355931.P14345436494736302623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A000265 (n + 1))

end

end A355931.P14345436494736302623

namespace A355931

/-- `gcd(A000203(n+1), A000265(n+1))` -/
def P14345436494736302623.Spec : Prop :=
  ∀ n, (P14345436494736302623.a n : ℤ) = A355931 (n + 1)

end A355931

/-! ## A355931.P17841642757340804634

`gcd((n+1)/2^val(n+1, 2), ∑{d}[n+1, #])`
-/

namespace A355931.P17841642757340804634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A355931.P17841642757340804634

namespace A355931

/-- `gcd((n+1)/2^val(n+1, 2), ∑{d}[n+1, #])` -/
def P17841642757340804634.Spec : Prop :=
  ∀ n, (P17841642757340804634.a n : ℤ) = A355931 (n + 1)

end A355931

/-! ## A355931.P5998373918094123502

`gcd((n+1)/xor(n, or(n, n+1)), A001065(n+1))`
-/

namespace A355931.P5998373918094123502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ))) (A001065 (n + 1))

end

end A355931.P5998373918094123502

namespace A355931

/-- `gcd((n+1)/xor(n, or(n, n+1)), A001065(n+1))` -/
def P5998373918094123502.Spec : Prop :=
  ∀ n, (P5998373918094123502.a n : ℤ) = A355931 (n + 1)

end A355931

/-! ## A355931.P13025183020152961076

`gcd(floor((n+1)/2^val(n+1, 2)), A324121(n+1))`
-/

namespace A355931.P13025183020152961076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊(n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ (A324121 (n + 1))

end

end A355931.P13025183020152961076

namespace A355931

/-- `gcd(floor((n+1)/2^val(n+1, 2)), A324121(n+1))` -/
def P13025183020152961076.Spec : Prop :=
  ∀ n, (P13025183020152961076.a n : ℤ) = A355931 (n + 1)

end A355931

/-! ## A355931.P7426321630894759255

`gcd(ceil((n+1)/2^val(n+1, 2)), A024816(n+1))`
-/

namespace A355931.P7426321630894759255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌈(n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌉ (A024816 (n + 1))

end

end A355931.P7426321630894759255

namespace A355931

/-- `gcd(ceil((n+1)/2^val(n+1, 2)), A024816(n+1))` -/
def P7426321630894759255.Spec : Prop :=
  ∀ n, (P7426321630894759255.a n : ℤ) = A355931 (n + 1)

end A355931

/-! ## A355931.P9453767793403335825

`gcd(round((n+1)/2^val(n+1, 2)), A033879(n+1))`
-/

namespace A355931.P9453767793403335825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) (A033879 (n + 1))

end

end A355931.P9453767793403335825

namespace A355931

/-- `gcd(round((n+1)/2^val(n+1, 2)), A033879(n+1))` -/
def P9453767793403335825.Spec : Prop :=
  ∀ n, (P9453767793403335825.a n : ℤ) = A355931 (n + 1)

end A355931

/-! ## A355931.P17819992007038257364

`gcd((ϕ²-ϕ)*A000203(2*n-(n-1)), -((n+1)/or(n+1, -(n+1))))`
-/

namespace A355931.P17819992007038257364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((Real.goldenRatio ^ 2 - Real.goldenRatio) * (A000203 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℝ))) (SequenceMachineLib.roundAway (-((n + 1 : ℚ) / (Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))))

end

end A355931.P17819992007038257364

namespace A355931

/-- `gcd((ϕ²-ϕ)*A000203(2*n-(n-1)), -((n+1)/or(n+1, -(n+1))))` -/
def P17819992007038257364.Spec : Prop :=
  ∀ n, (P17819992007038257364.a n : ℤ) = A355931 (n + 1)

end A355931

/-! ## A355931.P12768066823917216420

`A000265(A274382(n+1))`
-/

namespace A355931.P12768066823917216420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A274382 (n + 1)).toNat

end

end A355931.P12768066823917216420

namespace A355931

/-- `A000265(A274382(n+1))` -/
def P12768066823917216420.Spec : Prop :=
  ∀ n, P12768066823917216420.a n = A355931 (n + 1)

end A355931

/-! ## A355931.P5216977189382809084

`A000265(A325636(n+1))`
-/

namespace A355931.P5216977189382809084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A325636 (n + 1)).toNat

end

end A355931.P5216977189382809084

namespace A355931

/-- `A000265(A325636(n+1))` -/
def P5216977189382809084.Spec : Prop :=
  ∀ n, P5216977189382809084.a n = A355931 (n + 1)

end A355931

/-! ## A355931.P4486145568845913801

`gcd(A129514(n+1), A301279(n))`
-/

namespace A355931.P4486145568845913801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A129514 (n + 1)) (A301279 n)

end

end A355931.P4486145568845913801

namespace A355931

/-- `gcd(A129514(n+1), A301279(n))` -/
def P4486145568845913801.Spec : Prop :=
  ∀ n, (P4486145568845913801.a n : ℤ) = A355931 (n + 1)

end A355931

/-! ## A355931.P6878305120290467747

`A000265((n+1)/A017666(n+1))`
-/

namespace A355931.P6878305120290467747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A017666 (n + 1) : ℚ))).toNat

end

end A355931.P6878305120290467747

namespace A355931

/-- `A000265((n+1)/A017666(n+1))` -/
def P6878305120290467747.Spec : Prop :=
  ∀ n, P6878305120290467747.a n = A355931 (n + 1)

end A355931

/-! ## A355931.P17731374545403626115

`gcd(A094471(n+1), A171435(n+1))`
-/

namespace A355931.P17731374545403626115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094471 (n + 1)) (A171435 (n + 1))

end

end A355931.P17731374545403626115

namespace A355931

/-- `gcd(A094471(n+1), A171435(n+1))` -/
def P17731374545403626115.Spec : Prop :=
  ∀ n, (P17731374545403626115.a n : ℤ) = A355931 (n + 1)

end A355931

/-! ## A355931.P9457962698775989364

`A000265(gcd(A001065(n+1), A103517(n)))`
-/

namespace A355931.P9457962698775989364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.gcd (A001065 (n + 1)) (A103517 n))

end

end A355931.P9457962698775989364

namespace A355931

/-- `A000265(gcd(A001065(n+1), A103517(n)))` -/
def P9457962698775989364.Spec : Prop :=
  ∀ n, P9457962698775989364.a n = A355931 (n + 1)

end A355931

/-! ## A355931.P2236922097930802456

`lcm(A006519(n+1), A009194(n+1))/A006519(n+1)`
-/

namespace A355931.P2236922097930802456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A006519 (n + 1)) (A009194 (n + 1)) : ℚ) / (A006519 (n + 1) : ℚ)

end

end A355931.P2236922097930802456

namespace A355931

/-- `lcm(A006519(n+1), A009194(n+1))/A006519(n+1)` -/
def P2236922097930802456.Spec : Prop :=
  ∀ n, P2236922097930802456.a n = (A355931 (n + 1) : ℚ)

end A355931

/-! ## A355931.P16992351339291334471

`gcd(A000265(2*(n+1)), A146076(2*(n+1)))`
-/

namespace A355931.P16992351339291334471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000265 (2 * (n + 1))) (A146076 (2 * (n + 1)))

end

end A355931.P16992351339291334471

namespace A355931

/-- `gcd(A000265(2*(n+1)), A146076(2*(n+1)))` -/
def P16992351339291334471.Spec : Prop :=
  ∀ n, (P16992351339291334471.a n : ℤ) = A355931 (n + 1)

end A355931

/-! ## A355931.P3428731885407979303

`gcd(A173424(n), A325636(n+1))`
-/

namespace A355931.P3428731885407979303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A173424 n) (A325636 (n + 1))

end

end A355931.P3428731885407979303

namespace A355931

/-- `gcd(A173424(n), A325636(n+1))` -/
def P3428731885407979303.Spec : Prop :=
  ∀ n, (P3428731885407979303.a n : ℤ) = A355931 (n + 1)

end A355931

/-! ## A355931.P6001020628735122718

`gcd(A161942(n+1), A176900(n))`
-/

namespace A355931.P6001020628735122718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A161942 (n + 1)) (A176900 n)

end

end A355931.P6001020628735122718

namespace A355931

/-- `gcd(A161942(n+1), A176900(n))` -/
def P6001020628735122718.Spec : Prop :=
  ∀ n, (P6001020628735122718.a n : ℤ) = A355931 (n + 1)

end A355931

/-!
# A355932: a(n) = gcd(sigma(n), sigma(A003961(n))), where A003961 is fully multiplicative with a(p) = nextprime(p).

The programs for A355932, the canonical program `A355932.P15465957735796783743` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355932 has offset 1).

The definition of A355932 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A355932.P16740682327615012329

`A000203(n+1)/A355934(n+1)`
-/

namespace A355932.P16740682327615012329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A355934 (n + 1) : ℚ)

end

end A355932.P16740682327615012329

namespace A355932

/-- `A000203(n+1)/A355934(n+1)` -/
def P16740682327615012329.Spec : Prop :=
  ∀ n, P16740682327615012329.a n = (A355932 (n + 1) : ℚ)

end A355932

/-! ## A355932.P3040083405833634290

`A003973(n+1)/A355933(n+1)`
-/

namespace A355932.P3040083405833634290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℚ) / (A355933 (n + 1) : ℚ)

end

end A355932.P3040083405833634290

namespace A355932

/-- `A003973(n+1)/A355933(n+1)` -/
def P3040083405833634290.Spec : Prop :=
  ∀ n, P3040083405833634290.a n = (A355932 (n + 1) : ℚ)

end A355932

/-! ## A355932.P5803861652777861348

`gcd(A000203(n+1), A003973(n+1))`
-/

namespace A355932.P5803861652777861348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A003973 (n + 1))

end

end A355932.P5803861652777861348

namespace A355932

/-- `gcd(A000203(n+1), A003973(n+1))` -/
def P5803861652777861348.Spec : Prop :=
  ∀ n, (P5803861652777861348.a n : ℤ) = A355932 (n + 1)

end A355932

/-! ## A355932.P15465957735796783743

`gcd(A000203(n+1), A000203(A003961(n+1)))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A355932

/-- `gcd(A000203(n+1), A000203(A003961(n+1)))` -/
def P15465957735796783743.Spec : Prop :=
  ∀ n, (P15465957735796783743.a n : ℤ) = A355932 (n + 1)

theorem P15465957735796783743.correct : P15465957735796783743.Spec := by
  intro n
  simp only [A355932, Nat.add_sub_cancel]

end A355932

/-! ## A355932.P4327230371961187376

`gcd(A143348(n+1), A336852(n+1))`
-/

namespace A355932.P4327230371961187376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143348 (n + 1)) (A336852 (n + 1))

end

end A355932.P4327230371961187376

namespace A355932

/-- `gcd(A143348(n+1), A336852(n+1))` -/
def P4327230371961187376.Spec : Prop :=
  ∀ n, (P4327230371961187376.a n : ℤ) = A355932 (n + 1)

end A355932

/-! ## A355932.P12042077101155257784

`A336850(n+1)*A341525(n+1)/A355933(n+1)`
-/

namespace A355932.P12042077101155257784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336850 (n + 1) * A341525 (n + 1) : ℚ) / (A355933 (n + 1) : ℚ)

end

end A355932.P12042077101155257784

namespace A355932

/-- `A336850(n+1)*A341525(n+1)/A355933(n+1)` -/
def P12042077101155257784.Spec : Prop :=
  ∀ n, P12042077101155257784.a n = (A355932 (n + 1) : ℚ)

end A355932

/-! ## A355932.P15769776694621414260

`A000203(A003961(n+1))/A355933(n+1)`
-/

namespace A355932.P15769776694621414260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A003961 (n + 1)).toNat : ℚ) / (A355933 (n + 1) : ℚ)

end

end A355932.P15769776694621414260

namespace A355932

/-- `A000203(A003961(n+1))/A355933(n+1)` -/
def P15769776694621414260.Spec : Prop :=
  ∀ n, P15769776694621414260.a n = (A355932 (n + 1) : ℚ)

end A355932

/-!
# A355933: a(n) = A003973(n) / gcd(sigma(n), A003973(n)), where A003973(n) = sigma(A003961(n)) and A003961 is fully multiplicative with a(p) = nextprime(p).

The programs for A355933, the canonical program `A355933.P2830370768041058507` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355933 has offset 1).

The definition of A355933 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A355932, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A355933.P2830370768041058507

`A003973(n+1)/A355932(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A355933

/-- `A003973(n+1)/A355932(n+1)` -/
def P2830370768041058507.Spec : Prop :=
  ∀ n, P2830370768041058507.a n = (A355933 (n + 1) : ℚ)

end A355933

/-! ## A355933.P207589538795110267

`A003973(n+1)/gcd(A000203(n+1), A003973(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A355933.P207589538795110267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℚ) / (Int.gcd (A000203 (n + 1)) (A003973 (n + 1)) : ℚ)

end

end A355933.P207589538795110267

namespace A355933

/-- `A003973(n+1)/gcd(A000203(n+1), A003973(n+1))` -/
def P207589538795110267.Spec : Prop :=
  ∀ n, P207589538795110267.a n = (A355933 (n + 1) : ℚ)

end A355933

/-! ## A355933.P12622440468969795963

`∑{d}[n+1, A003961(#)]/A355932(n+1)`
-/

namespace A355933.P12622440468969795963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A003961 d : ℤ) : ℚ) / (A355932 (n + 1) : ℚ)

end

end A355933.P12622440468969795963

namespace A355933

/-- `∑{d}[n+1, A003961(#)]/A355932(n+1)` -/
def P12622440468969795963.Spec : Prop :=
  ∀ n, P12622440468969795963.a n = (A355933 (n + 1) : ℚ)

end A355933

/-! ## A355933.P4409022397138486834

`(A336845(n+1)-A336841(n+1))/A355932(n+1)`
-/

namespace A355933.P4409022397138486834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336845 (n + 1) - A336841 (n + 1) : ℚ) / (A355932 (n + 1) : ℚ)

end

end A355933.P4409022397138486834

namespace A355933

/-- `(A336845(n+1)-A336841(n+1))/A355932(n+1)` -/
def P4409022397138486834.Spec : Prop :=
  ∀ n, P4409022397138486834.a n = (A355933 (n + 1) : ℚ)

end A355933

/-! ## A355933.P2582755649112282594

`A003973(n+1)/A000203(n+1)*A355934(n+1)`
-/

namespace A355933.P2582755649112282594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A355934 (n + 1) : ℚ)

end

end A355933.P2582755649112282594

namespace A355933

/-- `A003973(n+1)/A000203(n+1)*A355934(n+1)` -/
def P2582755649112282594.Spec : Prop :=
  ∀ n, P2582755649112282594.a n = (A355933 (n + 1) : ℚ)

end A355933

/-! ## A355933.P4820533265137432696

`A336850(n+1)*A341525(n+1)/A355932(n+1)`
-/

namespace A355933.P4820533265137432696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336850 (n + 1) * A341525 (n + 1) : ℚ) / (A355932 (n + 1) : ℚ)

end

end A355933.P4820533265137432696

namespace A355933

/-- `A336850(n+1)*A341525(n+1)/A355932(n+1)` -/
def P4820533265137432696.Spec : Prop :=
  ∀ n, P4820533265137432696.a n = (A355933 (n + 1) : ℚ)

end A355933

/-! ## A355933.P18132996573867932727

`∑{d}[n+1, A000005(#)*A003972((n+1)/#)]/A355932(n+1)`
-/

namespace A355933.P18132996573867932727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A000005 d * A003972 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℤ) : ℚ) / (A355932 (n + 1) : ℚ)

end

end A355933.P18132996573867932727

namespace A355933

/-- `∑{d}[n+1, A000005(#)*A003972((n+1)/#)]/A355932(n+1)` -/
def P18132996573867932727.Spec : Prop :=
  ∀ n, P18132996573867932727.a n = (A355933 (n + 1) : ℚ)

end A355933

/-! ## A355933.P15338364549862234253

`∑{d}[n+1, A023900(#)*A347136((n+1)/#)]/A355932(n+1)`
-/

namespace A355933.P15338364549862234253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A023900 d * A347136 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℤ) : ℚ) / (A355932 (n + 1) : ℚ)

end

end A355933.P15338364549862234253

namespace A355933

/-- `∑{d}[n+1, A023900(#)*A347136((n+1)/#)]/A355932(n+1)` -/
def P15338364549862234253.Spec : Prop :=
  ∀ n, P15338364549862234253.a n = (A355933 (n + 1) : ℚ)

end A355933

/-! ## A355933.P7772164908805164928

`∑{d}[n+1, A048250(#)*A347236((n+1)/#)]/A355932(n+1)`
-/

namespace A355933.P7772164908805164928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A048250 d * A347236 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℤ) : ℚ) / (A355932 (n + 1) : ℚ)

end

end A355933.P7772164908805164928

namespace A355933

/-- `∑{d}[n+1, A048250(#)*A347236((n+1)/#)]/A355932(n+1)` -/
def P7772164908805164928.Spec : Prop :=
  ∀ n, P7772164908805164928.a n = (A355933 (n + 1) : ℚ)

end A355933

/-! ## A355933.P1124623441694434803

`A000203(A003961(n+1))/A355932(n+1)`
-/

namespace A355933.P1124623441694434803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A003961 (n + 1)).toNat : ℚ) / (A355932 (n + 1) : ℚ)

end

end A355933.P1124623441694434803

namespace A355933

/-- `A000203(A003961(n+1))/A355932(n+1)` -/
def P1124623441694434803.Spec : Prop :=
  ∀ n, P1124623441694434803.a n = (A355933 (n + 1) : ℚ)

end A355933

/-!
# A355934: a(n) = sigma(n) / gcd(sigma(n), sigma(A003961(n))), where A003961 is fully multiplicative with a(p) = nextprime(p), and sigma is the sum of divisors function.

The programs for A355934, the canonical program `A355934.P12025855991431582106` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355934 has offset 1).

The definition of A355934 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355932, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A355934.P12025855991431582106

`A000203(n+1)/A355932(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A355934

/-- `A000203(n+1)/A355932(n+1)` -/
def P12025855991431582106.Spec : Prop :=
  ∀ n, P12025855991431582106.a n = (A355934 (n + 1) : ℚ)

end A355934

/-! ## A355934.P12332056082830599549

`A000203(n+1)/gcd(A000203(n+1), A003973(n+1))`
-/

namespace A355934.P12332056082830599549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (Int.gcd (A000203 (n + 1)) (A003973 (n + 1)) : ℚ)

end

end A355934.P12332056082830599549

namespace A355934

/-- `A000203(n+1)/gcd(A000203(n+1), A003973(n+1))` -/
def P12332056082830599549.Spec : Prop :=
  ∀ n, P12332056082830599549.a n = (A355934 (n + 1) : ℚ)

end A355934

/-! ## A355934.P1294727894886568484

`A000203(n+1)/gcd(A000203(n+1), A000203(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A355934.P1294727894886568484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (Int.gcd (A000203 (n + 1)) (A000203 (A003961 (n + 1)).toNat) : ℚ)

end

end A355934.P1294727894886568484

namespace A355934

/-- `A000203(n+1)/gcd(A000203(n+1), A000203(A003961(n+1)))` -/
def P1294727894886568484.Spec : Prop :=
  ∀ n, P1294727894886568484.a n = (A355934 (n + 1) : ℚ)

end A355934

/-! ## A355934.P12905050028853252355

`Δ[A160664(n)]/A355932(n+1)`
-/

namespace A355934.P12905050028853252355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A355932 (n + 1) : ℚ)

end

end A355934.P12905050028853252355

namespace A355934

/-- `Δ[A160664(n)]/A355932(n+1)` -/
def P12905050028853252355.Spec : Prop :=
  ∀ n, P12905050028853252355.a n = (A355934 (n + 1) : ℚ)

end A355934

/-! ## A355934.P14754590650738659149

`abs(Δ[A330725(n)]/A355932(n+1))`
-/

namespace A355934.P14754590650738659149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n : ℚ) / (A355932 (n + 1) : ℚ)|

end

end A355934.P14754590650738659149

namespace A355934

/-- `abs(Δ[A330725(n)]/A355932(n+1))` -/
def P14754590650738659149.Spec : Prop :=
  ∀ n, P14754590650738659149.a n = (A355934 (n + 1) : ℚ)

end A355934

/-! ## A355934.P10504368804026389882

`A245092(Δ[n²])/A355932(n+1)`
-/

namespace A355934.P10504368804026389882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A355932 (n + 1) : ℚ)

end

end A355934.P10504368804026389882

namespace A355934

/-- `A245092(Δ[n²])/A355932(n+1)` -/
def P10504368804026389882.Spec : Prop :=
  ∀ n, P10504368804026389882.a n = (A355934 (n + 1) : ℚ)

end A355934

/-! ## A355934.P12072984083117654237

`sqrt(A072861(n+1))/A355932(n+1)`
-/

namespace A355934.P12072984083117654237
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) / (A355932 (n + 1) : ℝ)

end

end A355934.P12072984083117654237

namespace A355934

/-- `sqrt(A072861(n+1))/A355932(n+1)` -/
def P12072984083117654237.Spec : Prop :=
  ∀ n, P12072984083117654237.a n = (A355934 (n + 1) : ℝ)

end A355934

/-! ## A355934.P2689709463187134531

`ceil(A002659(n+1)/(2*A355932(n+1)))`
-/

namespace A355934.P2689709463187134531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002659 (n + 1) : ℚ) / (2 * A355932 (n + 1) : ℚ)⌉

end

end A355934.P2689709463187134531

namespace A355934

/-- `ceil(A002659(n+1)/(2*A355932(n+1)))` -/
def P2689709463187134531.Spec : Prop :=
  ∀ n, P2689709463187134531.a n = A355934 (n + 1)

end A355934

/-! ## A355934.P17567658608105349472

`A000203(n+1)/A003973(n+1)*A355933(n+1)`
-/

namespace A355934.P17567658608105349472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A003973 (n + 1) : ℚ) * (A355933 (n + 1) : ℚ)

end

end A355934.P17567658608105349472

namespace A355934

/-- `A000203(n+1)/A003973(n+1)*A355933(n+1)` -/
def P17567658608105349472.Spec : Prop :=
  ∀ n, P17567658608105349472.a n = (A355934 (n + 1) : ℚ)

end A355934

/-! ## A355934.P9803742294189887925

`A341529(n+1)/(A003961(n+1)*A355932(n+1))`
-/

namespace A355934.P9803742294189887925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341529 (n + 1) : ℚ) / (A003961 (n + 1) * A355932 (n + 1) : ℚ)

end

end A355934.P9803742294189887925

namespace A355934

/-- `A341529(n+1)/(A003961(n+1)*A355932(n+1))` -/
def P9803742294189887925.Spec : Prop :=
  ∀ n, P9803742294189887925.a n = (A355934 (n + 1) : ℚ)

end A355934

/-! ## A355934.P4966820565193333448

`A000203(n+1)/A000203(A003961(n+1))*A355933(n+1)`
-/

namespace A355934.P4966820565193333448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A000203 (A003961 (n + 1)).toNat : ℚ) * (A355933 (n + 1) : ℚ)

end

end A355934.P4966820565193333448

namespace A355934

/-- `A000203(n+1)/A000203(A003961(n+1))*A355933(n+1)` -/
def P4966820565193333448.Spec : Prop :=
  ∀ n, P4966820565193333448.a n = (A355934 (n + 1) : ℚ)

end A355934

/-!
# A355935: Dirichlet inverse of A091862, characteristic function of numbers for which A267116(n) = bigomega(n), where A267116 is the bitwise-OR of the exponents of primes in the prime factorization of n.

The programs for A355935, there is no canonical definition to state claims against.
-/

/-! ## A355935.P11134036676904961017

`A132211(A139393(n+1))`
-/

namespace A355935.P11134036676904961017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132211 (A139393 (n + 1)).toNat

end

end A355935.P11134036676904961017

/-! ## A355935.P7963390832666177920

`A129448(A343511(n+1))`
-/

namespace A355935.P7963390832666177920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129448 (A343511 (n + 1)).toNat

end

end A355935.P7963390832666177920

/-! ## A355935.P188969933942541163

`A345006(A004938(∏{e}[n+1, C(#+6, 6)]))`
-/

namespace A355935.P188969933942541163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345006 (A004938 (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 6) 6)).toNat

end

end A355935.P188969933942541163

/-! ## A355935.P14061394288752062543

`A143424(A038548(∏{e}[n+1, C(#+4, 4)]²))`
-/

namespace A355935.P14061394288752062543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143424 (A038548 ((∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 4) 4) ^ 2)).toNat

end

end A355935.P14061394288752062543

/-! ## A355935.P9326494423959336497

`A008836(n+1)*A323090(A003961(n+1))`
-/

namespace A355935.P9326494423959336497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A323090 (A003961 (n + 1)).toNat

end

end A355935.P9326494423959336497

/-!
# A355936: Dirichlet inverse of A295316, characteristic function of exponentially odd numbers.

The programs for A355936, there is no canonical definition to state claims against.
-/

/-! ## A355936.P5665133879266773439

`(-1)^∑{e}[n+1, #]*A325509(∏{e}[n+1, #!])`
-/

namespace A355936.P5665133879266773439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * A325509 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p))

end

end A355936.P5665133879266773439

/-! ## A355936.P5610062083076410467

`(-1)^∑{e}[n+1, #]*A194917(A256692(n+1))`
-/

namespace A355936.P5610062083076410467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * A194917 (A256692 (n + 1)).toNat

end

end A355936.P5610062083076410467

/-! ## A355936.P2687613061217671919

`A008836(n+1)*A110876(2^∑{e}[n+1, #-1])`
-/

namespace A355936.P2687613061217671919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A110876 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1) : ℤ))).toNat

end

end A355936.P2687613061217671919

/-! ## A355936.P1272589339347807916

`A160408(A162510(n+1))/A162512(n+1)`
-/

namespace A355936.P1272589339347807916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160408 (A162510 (n + 1)).toNat : ℚ) / (A162512 (n + 1) : ℚ)

end

end A355936.P1272589339347807916

/-!
# A355937: a(n) = 1 if the number of divisors of n is a noncomposite, otherwise 0.

The programs for A355937, the canonical program `A355937.P16325604427901141177` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355937 has offset 1).

The definition of A355937 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080339, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A355937.P16325604427901141177

`A080339(A000005(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A355937

/-- `A080339(A000005(n+1))` -/
def P16325604427901141177.Spec : Prop :=
  ∀ n, P16325604427901141177.a n = A355937 (n + 1)

theorem P16325604427901141177.correct : P16325604427901141177.Spec := by
  intro n
  simp only [A355937, Nat.add_sub_cancel]

end A355937

/-! ## A355937.P1504956230926904485

`A140635(n+1)²%3`
-/

namespace A355937.P1504956230926904485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140635 (n + 1) ^ 2) 3

end

end A355937.P1504956230926904485

namespace A355937

/-- `A140635(n+1)²%3` -/
def P1504956230926904485.Spec : Prop :=
  ∀ n, P1504956230926904485.a n = A355937 (n + 1)

end A355937

/-! ## A355937.P3086454787150990333

`floor(1/A331187(n+1))`
-/

namespace A355937.P3086454787150990333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A331187 (n + 1) : ℚ)⌋

end

end A355937.P3086454787150990333

namespace A355937

/-- `floor(1/A331187(n+1))` -/
def P3086454787150990333.Spec : Prop :=
  ∀ n, P3086454787150990333.a n = A355937 (n + 1)

end A355937

/-! ## A355937.P2880473829388001643

`round(1/A010553(n+1))`
-/

namespace A355937.P2880473829388001643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A010553 (n + 1) : ℚ))

end

end A355937.P2880473829388001643

namespace A355937

/-- `round(1/A010553(n+1))` -/
def P2880473829388001643.Spec : Prop :=
  ∀ n, P2880473829388001643.a n = A355937 (n + 1)

end A355937

/-! ## A355937.P7893707024777062274

`A058061(n+1)!%2`
-/

namespace A355937.P7893707024777062274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A058061 (n + 1)).toNat % 2

end

end A355937.P7893707024777062274

namespace A355937

/-- `A058061(n+1)!%2` -/
def P7893707024777062274.Spec : Prop :=
  ∀ n, (P7893707024777062274.a n : ℤ) = A355937 (n + 1)

end A355937

/-! ## A355937.P13071080043157263833

`C(2, A010553(ceil(sqrt(n²+4))))`
-/

namespace A355937.P13071080043157263833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A010553 ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉.toNat).toNat

end

end A355937.P13071080043157263833

namespace A355937

/-- `C(2, A010553(ceil(sqrt(n²+4))))` -/
def P13071080043157263833.Spec : Prop :=
  ∀ n, (P13071080043157263833.a n : ℤ) = A355937 (n + 1)

end A355937

/-! ## A355937.P6130813474759474509

`A001222(∏{e}[char[1]+1+n, #+1])!%2`
-/

namespace A355937.P6130813474759474509
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A001222 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))).toNat % 2

end

end A355937.P6130813474759474509

namespace A355937

/-- `A001222(∏{e}[char[1]+1+n, #+1])!%2` -/
def P6130813474759474509.Spec : Prop :=
  ∀ n, (P6130813474759474509.a n : ℤ) = A355937 (n + 1)

end A355937

/-! ## A355937.P7040920783315104610

`C(A006530(∏{e}[n+1, #+1]), ∑{e}[n+1, #]+1)`
-/

namespace A355937.P7040920783315104610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))).toNat (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)

end

end A355937.P7040920783315104610

namespace A355937

/-- `C(A006530(∏{e}[n+1, #+1]), ∑{e}[n+1, #]+1)` -/
def P7040920783315104610.Spec : Prop :=
  ∀ n, (P7040920783315104610.a n : ℤ) = A355937 (n + 1)

end A355937

/-! ## A355937.P1152472830022057781

`C(A020639(∏{e}[n+1, #+1]), ∑{e}[n+1, #]+1)`
-/

namespace A355937.P1152472830022057781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))).toNat (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)

end

end A355937.P1152472830022057781

namespace A355937

/-- `C(A020639(∏{e}[n+1, #+1]), ∑{e}[n+1, #]+1)` -/
def P1152472830022057781.Spec : Prop :=
  ∀ n, (P1152472830022057781.a n : ℤ) = A355937 (n + 1)

end A355937

/-! ## A355937.P12999079789016917663

`C(∑{e}[n+1, 3^#]%2, A001222(∏{e}[n+1, #+1]))`
-/

namespace A355937.P12999079789016917663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((∑ p ∈ Nat.primeFactors (f1 n), 3 ^ Nat.factorization (f1 n) p) % 2) (A001222 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))).toNat

end

end A355937.P12999079789016917663

namespace A355937

/-- `C(∑{e}[n+1, 3^#]%2, A001222(∏{e}[n+1, #+1]))` -/
def P12999079789016917663.Spec : Prop :=
  ∀ n, (P12999079789016917663.a n : ℤ) = A355937 (n + 1)

end A355937

/-! ## A355937.P7549135724326950314

`C(A006530(∑{d}[n+1, n²%#]+1), ∏{e}[n+1, #+1])`
-/

namespace A355937.P7549135724326950314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (∑ d ∈ Nat.divisors (f1 n), n ^ 2 % d + 1)).toNat (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

end

end A355937.P7549135724326950314

namespace A355937

/-- `C(A006530(∑{d}[n+1, n²%#]+1), ∏{e}[n+1, #+1])` -/
def P7549135724326950314.Spec : Prop :=
  ∀ n, (P7549135724326950314.a n : ℤ) = A355937 (n + 1)

end A355937

/-! ## A355937.P4751100372536204116

`A230594(A000005(n+1)²)`
-/

namespace A355937.P4751100372536204116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230594 (A000005 (n + 1) ^ 2).toNat

end

end A355937.P4751100372536204116

namespace A355937

/-- `A230594(A000005(n+1)²)` -/
def P4751100372536204116.Spec : Prop :=
  ∀ n, P4751100372536204116.a n = A355937 (n + 1)

end A355937

/-! ## A355937.P7577464964112414167

`A340369(A000005(n+1)²)`
-/

namespace A355937.P7577464964112414167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340369 (A000005 (n + 1) ^ 2).toNat

end

end A355937.P7577464964112414167

namespace A355937

/-- `A340369(A000005(n+1)²)` -/
def P7577464964112414167.Spec : Prop :=
  ∀ n, P7577464964112414167.a n = A355937 (n + 1)

end A355937

/-! ## A355937.P2808141305780939446

`A353799(A000005(n+1)²)`
-/

namespace A355937.P2808141305780939446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353799 (A000005 (n + 1) ^ 2).toNat

end

end A355937.P2808141305780939446

namespace A355937

/-- `A353799(A000005(n+1)²)` -/
def P2808141305780939446.Spec : Prop :=
  ∀ n, P2808141305780939446.a n = A355937 (n + 1)

end A355937

/-! ## A355937.P10012266618807051163

`A359471(A000005(n+1)²)`
-/

namespace A355937.P10012266618807051163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359471 (A000005 (n + 1) ^ 2).toNat

end

end A355937.P10012266618807051163

namespace A355937

/-- `A359471(A000005(n+1)²)` -/
def P10012266618807051163.Spec : Prop :=
  ∀ n, P10012266618807051163.a n = A355937 (n + 1)

end A355937

/-! ## A355937.P7463272779969497974

`floor(1/A325765(A325765(n)))`
-/

namespace A355937.P7463272779969497974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A325765 (A325765 n).toNat : ℚ)⌋

end

end A355937.P7463272779969497974

namespace A355937

/-- `floor(1/A325765(A325765(n)))` -/
def P7463272779969497974.Spec : Prop :=
  ∀ n, P7463272779969497974.a n = A355937 (n + 1)

end A355937

/-! ## A355937.P13835824711497028369

`A010051(A070824(n+1)+2)`
-/

namespace A355937.P13835824711497028369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A070824 (n + 1) + 2).toNat

end

end A355937.P13835824711497028369

namespace A355937

/-- `A010051(A070824(n+1)+2)` -/
def P13835824711497028369.Spec : Prop :=
  ∀ n, P13835824711497028369.a n = A355937 (n + 1)

end A355937

/-! ## A355937.P2872520874164717012

`A010051(A264440(n+1)+2)`
-/

namespace A355937.P2872520874164717012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A264440 (n + 1) + 2).toNat

end

end A355937.P2872520874164717012

namespace A355937

/-- `A010051(A264440(n+1)+2)` -/
def P2872520874164717012.Spec : Prop :=
  ∀ n, P2872520874164717012.a n = A355937 (n + 1)

end A355937

/-! ## A355937.P614540809400431307

`A101040(2*A000005(n+1))`
-/

namespace A355937.P614540809400431307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101040 (2 * A000005 (n + 1)).toNat

end

end A355937.P614540809400431307

namespace A355937

/-- `A101040(2*A000005(n+1))` -/
def P614540809400431307.Spec : Prop :=
  ∀ n, P614540809400431307.a n = A355937 (n + 1)

end A355937

/-! ## A355937.P895303223402317107

`A331845(∑{e}[A000005(n+1), #])`
-/

namespace A355937.P895303223402317107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331845 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A355937.P895303223402317107

namespace A355937

/-- `A331845(∑{e}[A000005(n+1), #])` -/
def P895303223402317107.Spec : Prop :=
  ∀ n, P895303223402317107.a n = A355937 (n + 1)

end A355937

/-!
# A355938: a(n) = 1 if sigma(n^2) is a noncomposite, otherwise 0.

The programs for A355938, the canonical program `A355938.P18025129743815674598` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355938 has offset 1).

The definition of A355938 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080339, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A355938.P18025129743815674598

`A080339(A065764(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A355938

/-- `A080339(A065764(n+1))` -/
def P18025129743815674598.Spec : Prop :=
  ∀ n, P18025129743815674598.a n = A355938 (n + 1)

theorem P18025129743815674598.correct : P18025129743815674598.Spec := by
  intro n
  simp only [A355938, Nat.add_sub_cancel]

end A355938

/-! ## A355938.P674098839401137433

`A080339(A000203((n+1)²))`
-/

namespace A355938.P674098839401137433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (A000203 ((n + 1) ^ 2)).toNat

end

end A355938.P674098839401137433

namespace A355938

/-- `A080339(A000203((n+1)²))` -/
def P674098839401137433.Spec : Prop :=
  ∀ n, P674098839401137433.a n = A355938 (n + 1)

end A355938

/-! ## A355938.P16971369357713194783

`char[round(sqrt(A023194(n+1)))-1]`
-/

namespace A355938.P16971369357713194783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A023194 (n + 1) : ℝ)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A355938.P16971369357713194783

namespace A355938

/-- `char[round(sqrt(A023194(n+1)))-1]` -/
def P16971369357713194783.Spec : Prop :=
  ∀ n, (P16971369357713194783.a n : ℤ) = A355938 (n + 1)

end A355938

/-! ## A355938.P686580709991859298

`A019590(∏{e}[∑{d}[(n+1)², #], #+1])`
-/

namespace A355938.P686580709991859298
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A355938.P686580709991859298

namespace A355938

/-- `A019590(∏{e}[∑{d}[(n+1)², #], #+1])` -/
def P686580709991859298.Spec : Prop :=
  ∀ n, P686580709991859298.a n = A355938 (n + 1)

end A355938

/-! ## A355938.P941906941859838698

`A019590(∏{e}[A065764(n+1), #+1])`
-/

namespace A355938.P941906941859838698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A355938.P941906941859838698

namespace A355938

/-- `A019590(∏{e}[A065764(n+1), #+1])` -/
def P941906941859838698.Spec : Prop :=
  ∀ n, P941906941859838698.a n = A355938 (n + 1)

end A355938

/-! ## A355938.P13296375405967193712

`A010051(∑{d}[(n+1)²-A316556(n+1)+1, #])`
-/

namespace A355938.P13296375405967193712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A316556 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A355938.P13296375405967193712

namespace A355938

/-- `A010051(∑{d}[(n+1)²-A316556(n+1)+1, #])` -/
def P13296375405967193712.Spec : Prop :=
  ∀ n, P13296375405967193712.a n = A355938 (n + 1)

end A355938

/-! ## A355938.P12217537445222938897

`A008683(∏{e}[A065764(n+1), A020300(#)])`
-/

namespace A355938.P12217537445222938897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A020300 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A355938.P12217537445222938897

namespace A355938

/-- `A008683(∏{e}[A065764(n+1), A020300(#)])` -/
def P12217537445222938897.Spec : Prop :=
  ∀ n, P12217537445222938897.a n = A355938 (n + 1)

end A355938

/-! ## A355938.P6583035372433578218

`round(1/A000005(∑{d}[(n+1)², #]))`
-/

namespace A355938.P6583035372433578218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A000005 (∑ d ∈ Nat.divisors (f1 n), d) : ℚ))

end

end A355938.P6583035372433578218

namespace A355938

/-- `round(1/A000005(∑{d}[(n+1)², #]))` -/
def P6583035372433578218.Spec : Prop :=
  ∀ n, P6583035372433578218.a n = A355938 (n + 1)

end A355938

/-! ## A355938.P4755223635337267956

`A001222(∑{d}[(n+1)², #])!%2`
-/

namespace A355938.P4755223635337267956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A001222 (∑ d ∈ Nat.divisors (f1 n), d)).toNat % 2

end

end A355938.P4755223635337267956

namespace A355938

/-- `A001222(∑{d}[(n+1)², #])!%2` -/
def P4755223635337267956.Spec : Prop :=
  ∀ n, (P4755223635337267956.a n : ℤ) = A355938 (n + 1)

end A355938

/-! ## A355938.P16967397826599509020

`A010051(A000203(ceil(sqrt(n²+4))²))`
-/

namespace A355938.P16967397826599509020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A000203 (⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉ ^ 2).toNat).toNat

end

end A355938.P16967397826599509020

namespace A355938

/-- `A010051(A000203(ceil(sqrt(n²+4))²))` -/
def P16967397826599509020.Spec : Prop :=
  ∀ n, P16967397826599509020.a n = A355938 (n + 1)

end A355938

/-! ## A355938.P13106586296380488305

`C(n+1-A145569(A001222(∑{d}[(n+1)², #])!), n)`
-/

namespace A355938.P13106586296380488305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1 : ℤ) - A145569 (Nat.factorial (A001222 (∑ d ∈ Nat.divisors (f1 n), d)).toNat)).toNat n

end

end A355938.P13106586296380488305

namespace A355938

/-- `C(n+1-A145569(A001222(∑{d}[(n+1)², #])!), n)` -/
def P13106586296380488305.Spec : Prop :=
  ∀ n, (P13106586296380488305.a n : ℤ) = A355938 (n + 1)

end A355938

/-! ## A355938.P788190512045231276

`A331282(2*(A001222(∑{d}[(n+1)², #])!²+1)+4)`
-/

namespace A355938.P788190512045231276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331282 (2 * (Nat.factorial (A001222 (∑ d ∈ Nat.divisors (f1 n), d)).toNat ^ 2 + 1) + 4)

end

end A355938.P788190512045231276

namespace A355938

/-- `A331282(2*(A001222(∑{d}[(n+1)², #])!²+1)+4)` -/
def P788190512045231276.Spec : Prop :=
  ∀ n, P788190512045231276.a n = A355938 (n + 1)

end A355938

/-! ## A355938.P17778457583137668635

`A080843(A001222(∑{d}[(n+1)², #])!)^A006530(n+2)`
-/

namespace A355938.P17778457583137668635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080843 (Nat.factorial (A001222 (∑ d ∈ Nat.divisors (f1 n), d)).toNat) : ℚ) ^ (A006530 (n + 2) : ℤ)

end

end A355938.P17778457583137668635

namespace A355938

/-- `A080843(A001222(∑{d}[(n+1)², #])!)^A006530(n+2)` -/
def P17778457583137668635.Spec : Prop :=
  ∀ n, P17778457583137668635.a n = (A355938 (n + 1) : ℚ)

end A355938

/-! ## A355938.P12358920029140718505

`and(1, A066247(∑{d}[(n+1)², #])-1)`
-/

namespace A355938.P12358920029140718505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A066247 (∑ d ∈ Nat.divisors (f1 n), d) - 1)

end

end A355938.P12358920029140718505

namespace A355938

/-- `and(1, A066247(∑{d}[(n+1)², #])-1)` -/
def P12358920029140718505.Spec : Prop :=
  ∀ n, P12358920029140718505.a n = A355938 (n + 1)

end A355938

/-! ## A355938.P10404139638402942081

`A340371(A000203(∑[2*n+1]))`
-/

namespace A355938.P10404139638402942081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340371 (A000203 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A355938.P10404139638402942081

namespace A355938

/-- `A340371(A000203(∑[2*n+1]))` -/
def P10404139638402942081.Spec : Prop :=
  ∀ n, P10404139638402942081.a n = A355938 (n + 1)

end A355938

/-! ## A355938.P5467080319319709600

`A327054(A073808(A073808((n+1)²)))`
-/

namespace A355938.P5467080319319709600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327054 (A073808 (A073808 ((n + 1) ^ 2)).toNat).toNat

end

end A355938.P5467080319319709600

namespace A355938

/-- `A327054(A073808(A073808((n+1)²)))` -/
def P5467080319319709600.Spec : Prop :=
  ∀ n, P5467080319319709600.a n = A355938 (n + 1)

end A355938

/-! ## A355938.P15874465030505219388

`A354923(2*A000203((n+1)²))`
-/

namespace A355938.P15874465030505219388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354923 (2 * A000203 ((n + 1) ^ 2)).toNat

end

end A355938.P15874465030505219388

namespace A355938

/-- `A354923(2*A000203((n+1)²))` -/
def P15874465030505219388.Spec : Prop :=
  ∀ n, P15874465030505219388.a n = A355938 (n + 1)

end A355938

/-! ## A355938.P17496900803599016631

`A101040(2*A000203((n+1)²))`
-/

namespace A355938.P17496900803599016631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101040 (2 * A000203 ((n + 1) ^ 2)).toNat

end

end A355938.P17496900803599016631

namespace A355938

/-- `A101040(2*A000203((n+1)²))` -/
def P17496900803599016631.Spec : Prop :=
  ∀ n, P17496900803599016631.a n = A355938 (n + 1)

end A355938

/-! ## A355938.P15142712761895599506

`A323513(A000010(A276528((n+1)²)))`
-/

namespace A355938.P15142712761895599506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323513 (A000010 (A276528 ((n + 1) ^ 2)).toNat).toNat

end

end A355938.P15142712761895599506

namespace A355938

/-- `A323513(A000010(A276528((n+1)²)))` -/
def P15142712761895599506.Spec : Prop :=
  ∀ n, P15142712761895599506.a n = A355938 (n + 1)

end A355938

/-! ## A355938.P18261688428587415967

`A323513(A277906(A276528((n+1)*(n+1))))`
-/

namespace A355938.P18261688428587415967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323513 (A277906 (A276528 ((n + 1) * (n + 1))).toNat).toNat

end

end A355938.P18261688428587415967

namespace A355938

/-- `A323513(A277906(A276528((n+1)*(n+1))))` -/
def P18261688428587415967.Spec : Prop :=
  ∀ n, P18261688428587415967.a n = A355938 (n + 1)

end A355938

/-!
# A355939: Dirichlet inverse of A080339, characteristic function of noncomposite numbers.

The programs for A355939, the canonical program `A355939.P3567040578845444235` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355939 has offset 1).

The definition of A355939 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355939.P3567040578845444235

`∑{e}[n+1, #]!/∏{e}[n+1, #!]*(-1)^∑{e}[n+1, #]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A355939

/-- `∑{e}[n+1, #]!/∏{e}[n+1, #!]*(-1)^∑{e}[n+1, #]` -/
def P3567040578845444235.Spec : Prop :=
  ∀ n, P3567040578845444235.a n = (A355939 (n + 1) : ℚ)

end A355939

/-! ## A355939.P6651522032207996642

`floor(∑{e}[n+1, #]!/∏{e}[n+1, #!])/(-1)^∑{e}[n+1, #]`
-/

namespace A355939.P6651522032207996642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ)⌋ : ℚ) / ((-1) ^ (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p) : ℚ)

end

end A355939.P6651522032207996642

namespace A355939

/-- `floor(∑{e}[n+1, #]!/∏{e}[n+1, #!])/(-1)^∑{e}[n+1, #]` -/
def P6651522032207996642.Spec : Prop :=
  ∀ n, P6651522032207996642.a n = (A355939 (n + 1) : ℚ)

end A355939

/-! ## A355939.P1465353760223781450

`ceil(∑{e}[n+1, #]!/∏{e}[n+1, #!])/(-1)^∑{e}[n+1, #]`
-/

namespace A355939.P1465353760223781450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ)⌉ : ℚ) / ((-1) ^ (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p) : ℚ)

end

end A355939.P1465353760223781450

namespace A355939

/-- `ceil(∑{e}[n+1, #]!/∏{e}[n+1, #!])/(-1)^∑{e}[n+1, #]` -/
def P1465353760223781450.Spec : Prop :=
  ∀ n, P1465353760223781450.a n = (A355939 (n + 1) : ℚ)

end A355939

/-! ## A355939.P5168418827204840892

`round(∑{e}[n+1, #]!/∏{e}[n+1, #!])/(-1)^∑{e}[n+1, #]`
-/

namespace A355939.P5168418827204840892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ)) : ℚ) / ((-1) ^ (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p) : ℚ)

end

end A355939.P5168418827204840892

namespace A355939

/-- `round(∑{e}[n+1, #]!/∏{e}[n+1, #!])/(-1)^∑{e}[n+1, #]` -/
def P5168418827204840892.Spec : Prop :=
  ∀ n, P5168418827204840892.a n = (A355939 (n + 1) : ℚ)

end A355939

/-! ## A355939.P15339012886499909075

`∑{d}[n+1, A341444(#)]`
-/

namespace A355939.P15339012886499909075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341444 d

end

end A355939.P15339012886499909075

namespace A355939

/-- `∑{d}[n+1, A341444(#)]` -/
def P15339012886499909075.Spec : Prop :=
  ∀ n, P15339012886499909075.a n = A355939 (n + 1)

end A355939

/-! ## A355939.P974199319463467370

`∑{d}[n+1, #*A349337((n+1)/#)]`
-/

namespace A355939.P974199319463467370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A349337 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A355939.P974199319463467370

namespace A355939

/-- `∑{d}[n+1, #*A349337((n+1)/#)]` -/
def P974199319463467370.Spec : Prop :=
  ∀ n, P974199319463467370.a n = A355939 (n + 1)

end A355939

/-! ## A355939.P9539719437944135038

`A008480(n+1)*A008836(n+1)`
-/

namespace A355939.P9539719437944135038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) * A008836 (n + 1)

end

end A355939.P9539719437944135038

namespace A355939

/-- `A008480(n+1)*A008836(n+1)` -/
def P9539719437944135038.Spec : Prop :=
  ∀ n, P9539719437944135038.a n = A355939 (n + 1)

end A355939

/-! ## A355939.P7295476967001146365

`A135323(n+1)/A061019(n+1)`
-/

namespace A355939.P7295476967001146365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135323 (n + 1) : ℚ) / (A061019 (n + 1) : ℚ)

end

end A355939.P7295476967001146365

namespace A355939

/-- `A135323(n+1)/A061019(n+1)` -/
def P7295476967001146365.Spec : Prop :=
  ∀ n, P7295476967001146365.a n = (A355939 (n + 1) : ℚ)

end A355939

/-! ## A355939.P7979924877854926214

`(A002819(n+1)-A002819(n))*A008480(n+1)`
-/

namespace A355939.P7979924877854926214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002819 (n + 1) - A002819 n) * A008480 (n + 1)

end

end A355939.P7979924877854926214

namespace A355939

/-- `(A002819(n+1)-A002819(n))*A008480(n+1)` -/
def P7979924877854926214.Spec : Prop :=
  ∀ n, P7979924877854926214.a n = A355939 (n + 1)

end A355939

/-!
# A355940: a(n) = 1 if A003973(n) is a multiple of A000203(n), otherwise 0.

The programs for A355940, the canonical program `A355940.P3503418342827386624` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355940 has offset 1).

The definition of A355940 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355940.P46346140555659140

`round(acot(A355934(n+1)))`
-/

namespace A355940.P46346140555659140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A355934 (n + 1) : ℝ))

end

end A355940.P46346140555659140

namespace A355940

/-- `round(acot(A355934(n+1)))` -/
def P46346140555659140.Spec : Prop :=
  ∀ n, P46346140555659140.a n = A355940 (n + 1)

end A355940

/-! ## A355940.P2284213380316850728

`char[A355941(n+1)-1]`
-/

namespace A355940.P2284213380316850728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355941 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A355940.P2284213380316850728

namespace A355940

/-- `char[A355941(n+1)-1]` -/
def P2284213380316850728.Spec : Prop :=
  ∀ n, (P2284213380316850728.a n : ℤ) = A355940 (n + 1)

end A355940

/-! ## A355940.P3503418342827386624

`A063524(A355934(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A355940

/-- `A063524(A355934(n+1))` -/
def P3503418342827386624.Spec : Prop :=
  ∀ n, P3503418342827386624.a n = A355940 (n + 1)

theorem P3503418342827386624.correct : P3503418342827386624.Spec := by
  intro n
  simp only [A355940, Nat.add_sub_cancel]

end A355940

/-! ## A355940.P7887272116640576024

`A244131(C(2, A355934(n+1)))`
-/

namespace A355940.P7887272116640576024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244131 (Nat.choose 2 (A355934 (n + 1)).toNat)

end

end A355940.P7887272116640576024

namespace A355940

/-- `A244131(C(2, A355934(n+1)))` -/
def P7887272116640576024.Spec : Prop :=
  ∀ n, P7887272116640576024.a n = A355940 (n + 1)

end A355940

/-! ## A355940.P17255926925249647183

`∑{d}[A355934(n+1), A008683(#)]`
-/

namespace A355940.P17255926925249647183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A355940.P17255926925249647183

namespace A355940

/-- `∑{d}[A355934(n+1), A008683(#)]` -/
def P17255926925249647183.Spec : Prop :=
  ∀ n, P17255926925249647183.a n = A355940 (n + 1)

end A355940

/-! ## A355940.P4711470498731524622

`floor(A355932(n+1)/A000203(n+1))`
-/

namespace A355940.P4711470498731524622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A355932 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)⌋

end

end A355940.P4711470498731524622

namespace A355940

/-- `floor(A355932(n+1)/A000203(n+1))` -/
def P4711470498731524622.Spec : Prop :=
  ∀ n, P4711470498731524622.a n = A355940 (n + 1)

end A355940

/-! ## A355940.P18041352878120855642

`C(cosh(A353815(3*n+2)), A355934(n+1))`
-/

namespace A355940.P18041352878120855642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.cosh (A353815 (3 * n + 2) : ℝ))).toNat (A355934 (n + 1)).toNat

end

end A355940.P18041352878120855642

namespace A355940

/-- `C(cosh(A353815(3*n+2)), A355934(n+1))` -/
def P18041352878120855642.Spec : Prop :=
  ∀ n, (P18041352878120855642.a n : ℤ) = A355940 (n + 1)

end A355940

/-! ## A355940.P5325169762547343403

`C(A355934(n+1), A355934(n+1)²-A353815(n+1))`
-/

namespace A355940.P5325169762547343403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A355934 (n + 1)).toNat (A355934 (n + 1) ^ 2 - A353815 (n + 1)).toNat

end

end A355940.P5325169762547343403

namespace A355940

/-- `C(A355934(n+1), A355934(n+1)²-A353815(n+1))` -/
def P5325169762547343403.Spec : Prop :=
  ∀ n, (P5325169762547343403.a n : ℤ) = A355940 (n + 1)

end A355940

/-! ## A355940.P154352265333865686

`A000007(A003973(n+1)%A143348(n+1))`
-/

namespace A355940.P154352265333865686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A003973 (n + 1)) (A143348 (n + 1))).toNat

end

end A355940.P154352265333865686

namespace A355940

/-- `A000007(A003973(n+1)%A143348(n+1))` -/
def P154352265333865686.Spec : Prop :=
  ∀ n, P154352265333865686.a n = A355940 (n + 1)

end A355940

/-! ## A355940.P12082905782377092072

`val(A337360(A003961(n+1)), A337360(n+1))`
-/

namespace A355940.P12082905782377092072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A337360 (A003961 (n + 1)).toNat).toNat (A337360 (n + 1)).toNat

end

end A355940.P12082905782377092072

namespace A355940

/-- `val(A337360(A003961(n+1)), A337360(n+1))` -/
def P12082905782377092072.Spec : Prop :=
  ∀ n, (P12082905782377092072.a n : ℤ) = A355940 (n + 1)

end A355940

/-! ## A355940.P9129127900145401029

`A008683(A355934(n+1)²)`
-/

namespace A355940.P9129127900145401029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A355934 (n + 1) ^ 2).toNat

end

end A355940.P9129127900145401029

namespace A355940

/-- `A008683(A355934(n+1)²)` -/
def P9129127900145401029.Spec : Prop :=
  ∀ n, P9129127900145401029.a n = A355940 (n + 1)

end A355940

/-! ## A355940.P1524759865904183291

`A355943(A355934(n+1)²)`
-/

namespace A355940.P1524759865904183291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355943 (A355934 (n + 1) ^ 2).toNat

end

end A355940.P1524759865904183291

namespace A355940

/-- `A355943(A355934(n+1)²)` -/
def P1524759865904183291.Spec : Prop :=
  ∀ n, P1524759865904183291.a n = A355940 (n + 1)

end A355940

/-! ## A355940.P13783357812633465649

`A008683((A000203(n+1)/A355932(n+1))²)`
-/

namespace A355940.P13783357812633465649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway (((A000203 (n + 1) : ℚ) / (A355932 (n + 1) : ℚ)) ^ 2)).toNat

end

end A355940.P13783357812633465649

namespace A355940

/-- `A008683((A000203(n+1)/A355932(n+1))²)` -/
def P13783357812633465649.Spec : Prop :=
  ∀ n, P13783357812633465649.a n = A355940 (n + 1)

end A355940

/-!
# A355941: Numbers k such that A003973(k) is a multiple of A000203(k).

The programs for A355941, the canonical program `A355941.P5058088448507230669` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355941 has offset 1).

The definition of A355941 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355941.P5058088448507230669

`eq[1, A355940(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A355941

/-- `eq[1, A355940(n+1)]+1` -/
def P5058088448507230669.Spec : Prop :=
  ∀ n, (P5058088448507230669.a n : ℤ) = A355941 (n + 1)

theorem P5058088448507230669.correct : P5058088448507230669.Spec := by
  intro n
  simp only [A355941, Nat.add_sub_cancel]

end A355941

/-! ## A355941.P5964853944073493079

`eq[1, A355934(n+1)]+1`
-/

namespace A355941.P5964853944073493079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355934 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A355941.P5964853944073493079

namespace A355941

/-- `eq[1, A355934(n+1)]+1` -/
def P5964853944073493079.Spec : Prop :=
  ∀ n, (P5964853944073493079.a n : ℤ) = A355941 (n + 1)

end A355941

/-! ## A355941.P5938876174154796210

`eq[A000203(n+1), A355932(n+1)]+1`
-/

namespace A355941.P5938876174154796210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355932 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A355941.P5938876174154796210

namespace A355941

/-- `eq[A000203(n+1), A355932(n+1)]+1` -/
def P5938876174154796210.Spec : Prop :=
  ∀ n, (P5938876174154796210.a n : ℤ) = A355941 (n + 1)

end A355941

/-! ## A355941.P6174443532739231307

`lt[A000007(n), A355940(A028310(n))]`
-/

namespace A355941.P6174443532739231307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355940 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355941.P6174443532739231307

namespace A355941

/-- `lt[A000007(n), A355940(A028310(n))]` -/
def P6174443532739231307.Spec : Prop :=
  ∀ n, (P6174443532739231307.a n : ℤ) = A355941 (n + 1)

end A355941

/-! ## A355941.P16306784680795490396

`lt[A000007(n), A355940(A000007(n)+n)]`
-/

namespace A355941.P16306784680795490396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355940 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355941.P16306784680795490396

namespace A355941

/-- `lt[A000007(n), A355940(A000007(n)+n)]` -/
def P16306784680795490396.Spec : Prop :=
  ∀ n, (P16306784680795490396.a n : ℤ) = A355941 (n + 1)

end A355941

/-! ## A355941.P3138437996863522254

`lt[A355940(2*n+1), A355940(A028310(n))]`
-/

namespace A355941.P3138437996863522254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355940 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355940 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355941.P3138437996863522254

namespace A355941

/-- `lt[A355940(2*n+1), A355940(A028310(n))]` -/
def P3138437996863522254.Spec : Prop :=
  ∀ n, (P3138437996863522254.a n : ℤ) = A355941 (n + 1)

end A355941

/-!
# A355942: Numbers k such that k is a multiple of A326042(k).

The programs for A355942, the canonical program `A355942.P8093612167510493976` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355942 has offset 1).

The definition of A355942 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355942.P8093612167510493976

`lt[(n+1)%A326042(n+1), 1]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A355942

/-- `lt[(n+1)%A326042(n+1), 1]+1` -/
def P8093612167510493976.Spec : Prop :=
  ∀ n, (P8093612167510493976.a n : ℤ) = A355942 (n + 1)

theorem P8093612167510493976.correct : P8093612167510493976.Spec := by
  intro n
  simp only [A355942, Nat.add_sub_cancel]

end A355942

/-! ## A355942.P11521543000086909857

`eq[1, A348942(n+1)]+1`
-/

namespace A355942.P11521543000086909857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348942 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A355942.P11521543000086909857

namespace A355942

/-- `eq[1, A348942(n+1)]+1` -/
def P11521543000086909857.Spec : Prop :=
  ∀ n, (P11521543000086909857.a n : ℤ) = A355942 (n + 1)

end A355942

/-! ## A355942.P11292967772940019713

`record[A000027(n+1)/A348942(n+1)]`
-/

namespace A355942.P11292967772940019713
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A348942 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355942.P11292967772940019713

namespace A355942

/-- `record[A000027(n+1)/A348942(n+1)]` -/
def P11292967772940019713.Spec : Prop :=
  ∀ n, P11292967772940019713.a n = (A355942 (n + 1) : ℚ)

end A355942

/-! ## A355942.P5461083825748223683

`eq[1, A361466(n+1)]+1`
-/

namespace A355942.P5461083825748223683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361466 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A355942.P5461083825748223683

namespace A355942

/-- `eq[1, A361466(n+1)]+1` -/
def P5461083825748223683.Spec : Prop :=
  ∀ n, (P5461083825748223683.a n : ℤ) = A355942 (n + 1)

end A355942

/-! ## A355942.P13966340995152579019

`lt[A057427(n), C(2, A348942(n+1))]+1`
-/

namespace A355942.P13966340995152579019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A348942 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A355942.P13966340995152579019

namespace A355942

/-- `lt[A057427(n), C(2, A348942(n+1))]+1` -/
def P13966340995152579019.Spec : Prop :=
  ∀ n, (P13966340995152579019.a n : ℤ) = A355942 (n + 1)

end A355942

/-!
# A355943: a(n) = 1 if n is odd and A064989(sigma(n)) divides A064989(n), otherwise 0, where A064989 is fully multiplicative with a(2) = 1 and a(p) = prevprime(p) for odd primes p, and sigma is the sum of divisors function.

The programs for A355943, the canonical program `A355943.P14069225664471544171` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355943 has offset 1).

The definition of A355943 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A361465, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A355943.P14069225664471544171

`A000035(n+1)*A361465(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A355943

/-- `A000035(n+1)*A361465(n+1)` -/
def P14069225664471544171.Spec : Prop :=
  ∀ n, P14069225664471544171.a n = A355943 (n + 1)

theorem P14069225664471544171.correct : P14069225664471544171.Spec := by
  intro n
  simp only [A355943, Nat.add_sub_cancel]

end A355943

/-! ## A355943.P5412361953808411868

`A000035(n+1)*A361466(A064989(n+1))`
-/

namespace A355943.P5412361953808411868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A361466 (A064989 (n + 1)).toNat

end

end A355943.P5412361953808411868

namespace A355943

/-- `A000035(n+1)*A361466(A064989(n+1))` -/
def P5412361953808411868.Spec : Prop :=
  ∀ n, P5412361953808411868.a n = A355943 (n + 1)

end A355943

/-! ## A355943.P1349592243509901605

`and(n+1, A361465(n+1))`
-/

namespace A355943.P1349592243509901605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A361465 (n + 1))

end

end A355943.P1349592243509901605

namespace A355943

/-- `and(n+1, A361465(n+1))` -/
def P1349592243509901605.Spec : Prop :=
  ∀ n, P1349592243509901605.a n = A355943 (n + 1)

end A355943

/-! ## A355943.P17405555119795368549

`A361465(A141310(n))`
-/

namespace A355943.P17405555119795368549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361465 (A141310 n).toNat

end

end A355943.P17405555119795368549

namespace A355943

/-- `A361465(A141310(n))` -/
def P17405555119795368549.Spec : Prop :=
  ∀ n, P17405555119795368549.a n = A355943 (n + 1)

end A355943

/-! ## A355943.P8401094694008335030

`A361465(A063914(n+1))`
-/

namespace A355943.P8401094694008335030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361465 (A063914 (n + 1)).toNat

end

end A355943.P8401094694008335030

namespace A355943

/-- `A361465(A063914(n+1))` -/
def P8401094694008335030.Spec : Prop :=
  ∀ n, P8401094694008335030.a n = A355943 (n + 1)

end A355943

/-! ## A355943.P17760449756134645971

`A361465(A230089(n+1))`
-/

namespace A355943.P17760449756134645971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361465 (A230089 (n + 1)).toNat

end

end A355943.P17760449756134645971

namespace A355943

/-- `A361465(A230089(n+1))` -/
def P17760449756134645971.Spec : Prop :=
  ∀ n, P17760449756134645971.a n = A355943 (n + 1)

end A355943

/-! ## A355943.P4515889959735013006

`A059841(n)*A361465(n+1)`
-/

namespace A355943.P4515889959735013006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A361465 (n + 1)

end

end A355943.P4515889959735013006

namespace A355943

/-- `A059841(n)*A361465(n+1)` -/
def P4515889959735013006.Spec : Prop :=
  ∀ n, P4515889959735013006.a n = A355943 (n + 1)

end A355943

/-! ## A355943.P9817117830116790589

`A088911(n)*A361465(n+1)`
-/

namespace A355943.P9817117830116790589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088911 n * A361465 (n + 1)

end

end A355943.P9817117830116790589

namespace A355943

/-- `A088911(n)*A361465(n+1)` -/
def P9817117830116790589.Spec : Prop :=
  ∀ n, P9817117830116790589.a n = A355943 (n + 1)

end A355943

/-! ## A355943.P2368170401005962620

`A115357(n)*A361465(n+1)`
-/

namespace A355943.P2368170401005962620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115357 n * A361465 (n + 1)

end

end A355943.P2368170401005962620

namespace A355943

/-- `A115357(n)*A361465(n+1)` -/
def P2368170401005962620.Spec : Prop :=
  ∀ n, P2368170401005962620.a n = A355943 (n + 1)

end A355943

/-! ## A355943.P15121083312677379277

`A115360(n)*A361465(n+1)`
-/

namespace A355943.P15121083312677379277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115360 n * A361465 (n + 1)

end

end A355943.P15121083312677379277

namespace A355943

/-- `A115360(n)*A361465(n+1)` -/
def P15121083312677379277.Spec : Prop :=
  ∀ n, P15121083312677379277.a n = A355943 (n + 1)

end A355943

/-! ## A355943.P12222133399220084221

`A117907(n)*A361465(n+1)`
-/

namespace A355943.P12222133399220084221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117907 n * A361465 (n + 1)

end

end A355943.P12222133399220084221

namespace A355943

/-- `A117907(n)*A361465(n+1)` -/
def P12222133399220084221.Spec : Prop :=
  ∀ n, P12222133399220084221.a n = A355943 (n + 1)

end A355943

/-! ## A355943.P18184883052939092978

`A266591(n)*A361465(n+1)`
-/

namespace A355943.P18184883052939092978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266591 n * A361465 (n + 1)

end

end A355943.P18184883052939092978

namespace A355943

/-- `A266591(n)*A361465(n+1)` -/
def P18184883052939092978.Spec : Prop :=
  ∀ n, P18184883052939092978.a n = A355943 (n + 1)

end A355943

/-! ## A355943.P16582857033107522516

`A354034(n)*A361465(n+1)`
-/

namespace A355943.P16582857033107522516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354034 n * A361465 (n + 1)

end

end A355943.P16582857033107522516

namespace A355943

/-- `A354034(n)*A361465(n+1)` -/
def P16582857033107522516.Spec : Prop :=
  ∀ n, P16582857033107522516.a n = A355943 (n + 1)

end A355943

/-! ## A355943.P3739595527692767903

`char[eq[A161942(n+1), A356157(n+1)]]`
-/

namespace A355943.P3739595527692767903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161942 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356157 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A355943.P3739595527692767903

namespace A355943

/-- `char[eq[A161942(n+1), A356157(n+1)]]` -/
def P3739595527692767903.Spec : Prop :=
  ∀ n, (P3739595527692767903.a n : ℤ) = A355943 (n + 1)

end A355943

/-! ## A355943.P3246317639725540434

`C(A355931((n+1)/2^val(n+1, 2)), A161942(n+1))`
-/

namespace A355943.P3246317639725540434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A355931 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat).toNat (A161942 (n + 1)).toNat

end

end A355943.P3246317639725540434

namespace A355943

/-- `C(A355931((n+1)/2^val(n+1, 2)), A161942(n+1))` -/
def P3246317639725540434.Spec : Prop :=
  ∀ n, (P3246317639725540434.a n : ℤ) = A355943 (n + 1)

end A355943

/-! ## A355943.P5967463160709912848

`C(A356307((n+1)/2^val(n+1, 2)), A161942(n+1))`
-/

namespace A355943.P5967463160709912848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A356307 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat).toNat (A161942 (n + 1)).toNat

end

end A355943.P5967463160709912848

namespace A355943

/-- `C(A356307((n+1)/2^val(n+1, 2)), A161942(n+1))` -/
def P5967463160709912848.Spec : Prop :=
  ∀ n, (P5967463160709912848.a n : ℤ) = A355943 (n + 1)

end A355943

/-! ## A355943.P12617025671636701524

`A000035((n+1)*A209229(A017665(n+1)))`
-/

namespace A355943.P12617025671636701524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((n + 1 : ℤ) * A209229 (A017665 (n + 1)).toNat).toNat

end

end A355943.P12617025671636701524

namespace A355943

/-- `A000035((n+1)*A209229(A017665(n+1)))` -/
def P12617025671636701524.Spec : Prop :=
  ∀ n, P12617025671636701524.a n = A355943 (n + 1)

end A355943

/-! ## A355943.P15124158736066966032

`C(A009194(A000265(n+1)), A161942(n+1))`
-/

namespace A355943.P15124158736066966032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A009194 (A000265 (n + 1)).toNat).toNat (A161942 (n + 1)).toNat

end

end A355943.P15124158736066966032

namespace A355943

/-- `C(A009194(A000265(n+1)), A161942(n+1))` -/
def P15124158736066966032.Spec : Prop :=
  ∀ n, (P15124158736066966032.a n : ℤ) = A355943 (n + 1)

end A355943

/-! ## A355943.P7988176917716229488

`C(A000265(n+1), A000265(A017665(n+1))+n)`
-/

namespace A355943.P7988176917716229488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000265 (n + 1)).toNat (A000265 (A017665 (n + 1)).toNat + (n : ℤ)).toNat

end

end A355943.P7988176917716229488

namespace A355943

/-- `C(A000265(n+1), A000265(A017665(n+1))+n)` -/
def P7988176917716229488.Spec : Prop :=
  ∀ n, (P7988176917716229488.a n : ℤ) = A355943 (n + 1)

end A355943

/-! ## A355943.P3519895317745145297

`and(A361465(n+1), A392584(n))`
-/

namespace A355943.P3519895317745145297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A361465 (n + 1)) (A392584 n)

end

end A355943.P3519895317745145297

namespace A355943

/-- `and(A361465(n+1), A392584(n))` -/
def P3519895317745145297.Spec : Prop :=
  ∀ n, P3519895317745145297.a n = A355943 (n + 1)

end A355943

/-!
# A355944: a(n) = smallest positive k such that n divides k*A276086(k), where A276086 is primorial base exp-function.

The programs for A355944, there is no canonical definition to state claims against.
-/

/-! ## A355944.P14407484390221671649

`n+1-A355945(n+1)`
-/

namespace A355944.P14407484390221671649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A355945 (n + 1)

end

end A355944.P14407484390221671649

/-! ## A355944.P14197158362956394635

`A024000(A355945(n+1))+n`
-/

namespace A355944.P14197158362956394635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A355945 (n + 1)).toNat + (n : ℤ)

end

end A355944.P14197158362956394635

/-! ## A355944.P12989076887595405536

`A356151(n+1)*A356153(n+1)`
-/

namespace A355944.P12989076887595405536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356151 (n + 1) * A356153 (n + 1)

end

end A355944.P12989076887595405536

/-! ## A355944.P6138248520849809599

`(n+1)/A356152(n+1)*A356153(n+1)`
-/

namespace A355944.P6138248520849809599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A356152 (n + 1) : ℚ) * (A356153 (n + 1) : ℚ)

end

end A355944.P6138248520849809599

/-! ## A355944.P2106986174860017712

`gcd(n+1, A355945(n+1))*A356153(n+1)`
-/

namespace A355944.P2106986174860017712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A355945 (n + 1)) : ℤ) * A356153 (n + 1)

end

end A355944.P2106986174860017712

/-! ## A355944.P7534711930322386034

`A004736(A355945(n+1)+∑[n]+1)`
-/

namespace A355944.P7534711930322386034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A355945 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A355944.P7534711930322386034

/-!
# A355945: a(n) = n minus the smallest positive k such that n divides k*A276086(k), where A276086 is primorial base exp-function.

The programs for A355945, there is no canonical definition to state claims against.
-/

/-! ## A355945.P8379427604677262892

`n+1-A355944(n+1)`
-/

namespace A355945.P8379427604677262892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A355944 (n + 1)

end

end A355945.P8379427604677262892

/-! ## A355945.P234393806702306492

`A024000(A355944(n+1))+n`
-/

namespace A355945.P234393806702306492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A355944 (n + 1)).toNat + (n : ℤ)

end

end A355945.P234393806702306492

/-! ## A355945.P11819187245794533684

`n+1-A356151(n+1)*A356153(n+1)`
-/

namespace A355945.P11819187245794533684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A356151 (n + 1) * A356153 (n + 1)

end

end A355945.P11819187245794533684

/-! ## A355945.P484718836456700516

`A024000(A356151(n+1)*A356153(n+1))+n`
-/

namespace A355945.P484718836456700516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A356151 (n + 1) * A356153 (n + 1)).toNat + (n : ℤ)

end

end A355945.P484718836456700516

/-! ## A355945.P13550387364919752538

`A024000((n+1)/A356152(n+1)*A356153(n+1))+n`
-/

namespace A355945.P13550387364919752538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A356152 (n + 1) : ℚ) * (A356153 (n + 1) : ℚ))).toNat + (n : ℤ)

end

end A355945.P13550387364919752538

/-! ## A355945.P10632316952990521048

`A057428(n+1)*A355944(n+1)+n+1`
-/

namespace A355945.P10632316952990521048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) * A355944 (n + 1) + (n + 1 : ℤ)

end

end A355945.P10632316952990521048

/-!
# A355946: a(n) = 1 if the odd part of sigma(k) divides A003961(k), otherwise 0, where A003961 is fully multiplicative with a(p) = nextprime(p), and sigma is the sum of divisors function.

The programs for A355946, the canonical program `A355946.P7479184387596826010` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355946 has offset 1).

The definition of A355946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355946.P12972796315860400870

`floor(1/A348992(n+1))`
-/

namespace A355946.P12972796315860400870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A348992 (n + 1) : ℚ)⌋

end

end A355946.P12972796315860400870

namespace A355946

/-- `floor(1/A348992(n+1))` -/
def P12972796315860400870.Spec : Prop :=
  ∀ n, P12972796315860400870.a n = A355946 (n + 1)

end A355946

/-! ## A355946.P7479184387596826010

`floor(1/A348993(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A355946

/-- `floor(1/A348993(n+1))` -/
def P7479184387596826010.Spec : Prop :=
  ∀ n, P7479184387596826010.a n = A355946 (n + 1)

theorem P7479184387596826010.correct : P7479184387596826010.Spec := by
  intro n
  simp only [A355946, Nat.add_sub_cancel]

end A355946

/-! ## A355946.P11123043506042033140

`char[A349756(n+1)-1]`
-/

namespace A355946.P11123043506042033140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349756 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A355946.P11123043506042033140

namespace A355946

/-- `char[A349756(n+1)-1]` -/
def P11123043506042033140.Spec : Prop :=
  ∀ n, (P11123043506042033140.a n : ℤ) = A355946 (n + 1)

end A355946

/-! ## A355946.P1188327340354591203

`A000045(C(2, A348992(n+1)))`
-/

namespace A355946.P1188327340354591203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (A348992 (n + 1)).toNat)

end

end A355946.P1188327340354591203

namespace A355946

/-- `A000045(C(2, A348992(n+1)))` -/
def P1188327340354591203.Spec : Prop :=
  ∀ n, P1188327340354591203.a n = A355946 (n + 1)

end A355946

/-! ## A355946.P12860688892944323024

`A000081(C(2, A348992(n+1)))`
-/

namespace A355946.P12860688892944323024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (Nat.choose 2 (A348992 (n + 1)).toNat)

end

end A355946.P12860688892944323024

namespace A355946

/-- `A000081(C(2, A348992(n+1)))` -/
def P12860688892944323024.Spec : Prop :=
  ∀ n, P12860688892944323024.a n = A355946 (n + 1)

end A355946

/-! ## A355946.P12021170570048427458

`A000295(C(2, A348992(n+1)))`
-/

namespace A355946.P12021170570048427458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 (Nat.choose 2 (A348992 (n + 1)).toNat)

end

end A355946.P12021170570048427458

namespace A355946

/-- `A000295(C(2, A348992(n+1)))` -/
def P12021170570048427458.Spec : Prop :=
  ∀ n, P12021170570048427458.a n = A355946 (n + 1)

end A355946

/-! ## A355946.P9275282804509423388

`C(2, A001316(A349162(n+1)))`
-/

namespace A355946.P9275282804509423388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A001316 (A349162 (n + 1)).toNat).toNat

end

end A355946.P9275282804509423388

namespace A355946

/-- `C(2, A001316(A349162(n+1)))` -/
def P9275282804509423388.Spec : Prop :=
  ∀ n, (P9275282804509423388.a n : ℤ) = A355946 (n + 1)

end A355946

/-! ## A355946.P16421709162607081047

`A003415(C(2, A348993(n+1)))`
-/

namespace A355946.P16421709162607081047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (Nat.choose 2 (A348993 (n + 1)).toNat)

end

end A355946.P16421709162607081047

namespace A355946

/-- `A003415(C(2, A348993(n+1)))` -/
def P16421709162607081047.Spec : Prop :=
  ∀ n, P16421709162607081047.a n = A355946 (n + 1)

end A355946

/-! ## A355946.P5677810016211959693

`A025455(C(2, A348992(n+1)))`
-/

namespace A355946.P5677810016211959693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 (Nat.choose 2 (A348992 (n + 1)).toNat)

end

end A355946.P5677810016211959693

namespace A355946

/-- `A025455(C(2, A348992(n+1)))` -/
def P5677810016211959693.Spec : Prop :=
  ∀ n, P5677810016211959693.a n = A355946 (n + 1)

end A355946

/-! ## A355946.P5500598982452524247

`∑{d}[A348993(n+1), A008683(#)]`
-/

namespace A355946.P5500598982452524247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A355946.P5500598982452524247

namespace A355946

/-- `∑{d}[A348993(n+1), A008683(#)]` -/
def P5500598982452524247.Spec : Prop :=
  ∀ n, P5500598982452524247.a n = A355946 (n + 1)

end A355946

/-! ## A355946.P7797602373736598579

`C(A342671(n+1), A000265(∑{d}[n+1, #]))`
-/

namespace A355946.P7797602373736598579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A342671 (n + 1)).toNat (A000265 (∑ d ∈ Nat.divisors (f1 n), d)).toNat

end

end A355946.P7797602373736598579

namespace A355946

/-- `C(A342671(n+1), A000265(∑{d}[n+1, #]))` -/
def P7797602373736598579.Spec : Prop :=
  ∀ n, (P7797602373736598579.a n : ℤ) = A355946 (n + 1)

end A355946

/-! ## A355946.P12271903172872101947

`C(A001222(A151800(n)), A348993(n+1))`
-/

namespace A355946.P12271903172872101947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (A151800 n).toNat).toNat (A348993 (n + 1)).toNat

end

end A355946.P12271903172872101947

namespace A355946

/-- `C(A001222(A151800(n)), A348993(n+1))` -/
def P12271903172872101947.Spec : Prop :=
  ∀ n, (P12271903172872101947.a n : ℤ) = A355946 (n + 1)

end A355946

/-! ## A355946.P17927238619146997726

`C(A342671(n+1), A000265(A000203(n+1)))`
-/

namespace A355946.P17927238619146997726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A342671 (n + 1)).toNat (A000265 (A000203 (n + 1)).toNat).toNat

end

end A355946.P17927238619146997726

namespace A355946

/-- `C(A342671(n+1), A000265(A000203(n+1)))` -/
def P17927238619146997726.Spec : Prop :=
  ∀ n, (P17927238619146997726.a n : ℤ) = A355946 (n + 1)

end A355946

/-! ## A355946.P1632204728869149801

`C(A280703(A014963(n+1)), A348993(n+1))`
-/

namespace A355946.P1632204728869149801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A280703 (A014963 (n + 1)).toNat).toNat (A348993 (n + 1)).toNat

end

end A355946.P1632204728869149801

namespace A355946

/-- `C(A280703(A014963(n+1)), A348993(n+1))` -/
def P1632204728869149801.Spec : Prop :=
  ∀ n, (P1632204728869149801.a n : ℤ) = A355946 (n + 1)

end A355946

/-! ## A355946.P12001269844230551849

`A000007(A342671(n+1)%(A342671(n+1)*A348992(n+1)))`
-/

namespace A355946.P12001269844230551849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A342671 (n + 1)) (A342671 (n + 1) * A348992 (n + 1))).toNat

end

end A355946.P12001269844230551849

namespace A355946

/-- `A000007(A342671(n+1)%(A342671(n+1)*A348992(n+1)))` -/
def P12001269844230551849.Spec : Prop :=
  ∀ n, P12001269844230551849.a n = A355946 (n + 1)

end A355946

/-! ## A355946.P17530766454828440507

`A000007(A349164(n+1)%A348993(n+1))`
-/

namespace A355946.P17530766454828440507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A349164 (n + 1)) (A348993 (n + 1))).toNat

end

end A355946.P17530766454828440507

namespace A355946

/-- `A000007(A349164(n+1)%A348993(n+1))` -/
def P17530766454828440507.Spec : Prop :=
  ∀ n, P17530766454828440507.a n = A355946 (n + 1)

end A355946

/-! ## A355946.P9791867640397814703

`A000007((A348992(n+1)-1)/2)`
-/

namespace A355946.P9791867640397814703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (SequenceMachineLib.roundAway ((A348992 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A355946.P9791867640397814703

namespace A355946

/-- `A000007((A348992(n+1)-1)/2)` -/
def P9791867640397814703.Spec : Prop :=
  ∀ n, P9791867640397814703.a n = A355946 (n + 1)

end A355946

/-! ## A355946.P17070756064117035803

`A000007(A348993(n+1)-1)`
-/

namespace A355946.P17070756064117035803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A348993 (n + 1) - 1).toNat

end

end A355946.P17070756064117035803

namespace A355946

/-- `A000007(A348993(n+1)-1)` -/
def P17070756064117035803.Spec : Prop :=
  ∀ n, P17070756064117035803.a n = A355946 (n + 1)

end A355946

/-! ## A355946.P17525157291105193337

`A000007(xor(1, A348993(n+1)))`
-/

namespace A355946.P17525157291105193337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor 1 (A348993 (n + 1))).toNat

end

end A355946.P17525157291105193337

namespace A355946

/-- `A000007(xor(1, A348993(n+1)))` -/
def P17525157291105193337.Spec : Prop :=
  ∀ n, P17525157291105193337.a n = A355946 (n + 1)

end A355946

/-! ## A355946.P17622449650987939626

`A000007(A348993(n+1)%(A349162(n+1)/A082903(n+1)))`
-/

namespace A355946.P17622449650987939626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A348993 (n + 1)) (SequenceMachineLib.roundAway ((A349162 (n + 1) : ℚ) / (A082903 (n + 1) : ℚ)))).toNat

end

end A355946.P17622449650987939626

namespace A355946

/-- `A000007(A348993(n+1)%(A349162(n+1)/A082903(n+1)))` -/
def P17622449650987939626.Spec : Prop :=
  ∀ n, P17622449650987939626.a n = A355946 (n + 1)

end A355946

/-!
# A355947: a(n) = Sum_{k=1..n} (n+1-k)*floor(n/k).

The programs for A355947, the canonical program `A355947.P8187086082936947056` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355947 has offset 0).

The definition of A355947 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355947.P8187086082936947056

`A362625(n+1)+A339370(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A355947

/-- `A362625(n+1)+A339370(n+1)` -/
def P8187086082936947056.Spec : Prop :=
  ∀ n, P8187086082936947056.a n = A355947 n

theorem P8187086082936947056.correct : P8187086082936947056.Spec := by
  intro n
  simp only [A355947]

end A355947

/-! ## A355947.P16737200232094532094

`A024920(n+1)-A094471(n+1)`
-/

namespace A355947.P16737200232094532094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024920 (n + 1) - A094471 (n + 1)

end

end A355947.P16737200232094532094

namespace A355947

/-- `A024920(n+1)-A094471(n+1)` -/
def P16737200232094532094.Spec : Prop :=
  ∀ n, P16737200232094532094.a n = A355947 n

end A355947

/-! ## A355947.P8649831975320412690

`A024920(n+1)-(∑[n]-A362625(n+1))`
-/

namespace A355947.P8649831975320412690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024920 (n + 1) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A362625 (n + 1))

end

end A355947.P8649831975320412690

namespace A355947

/-- `A024920(n+1)-(∑[n]-A362625(n+1))` -/
def P8649831975320412690.Spec : Prop :=
  ∀ n, P8649831975320412690.a n = A355947 n

end A355947

/-! ## A355947.P7311497132270448188

`∑[A094471(A057428(n)+1+n)+A006218(n)]`
-/

namespace A355947.P7311497132270448188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094471 (A057428 n + 1 + (n : ℤ)).toNat + A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355947.P7311497132270448188

namespace A355947

/-- `∑[A094471(A057428(n)+1+n)+A006218(n)]` -/
def P7311497132270448188.Spec : Prop :=
  ∀ n, P7311497132270448188.a n = A355947 n

end A355947

/-! ## A355947.P10952815237952476055

`∑[A094471(A000038(n)+n)+A006218(n)]-1`
-/

namespace A355947.P10952815237952476055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094471 (A000038 n + (n : ℤ)).toNat + A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A355947.P10952815237952476055

namespace A355947

/-- `∑[A094471(A000038(n)+n)+A006218(n)]-1` -/
def P10952815237952476055.Spec : Prop :=
  ∀ n, P10952815237952476055.a n = A355947 n

end A355947

/-! ## A355947.P4092468490817911324

`∑[A094471(n+1)+A006218(n)]-A094471(n+1)`
-/

namespace A355947.P4092468490817911324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094471 (n + 1) + A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A094471 (n + 1)

end

end A355947.P4092468490817911324

namespace A355947

/-- `∑[A094471(n+1)+A006218(n)]-A094471(n+1)` -/
def P4092468490817911324.Spec : Prop :=
  ∀ n, P4092468490817911324.a n = A355947 n

end A355947

/-! ## A355947.P12598124631000859657

`A078567(n+1)+∑[A094471(n+1)]-A094471(n+1)`
-/

namespace A355947.P12598124631000859657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078567 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A094471 (n + 1))

end

end A355947.P12598124631000859657

namespace A355947

/-- `A078567(n+1)+∑[A094471(n+1)]-A094471(n+1)` -/
def P12598124631000859657.Spec : Prop :=
  ∀ n, P12598124631000859657.a n = A355947 n

end A355947

/-!
# A355948: Number of edges formed in a square by straight line segments when connecting the four corner vertices to the points dividing the sides into n equal parts.

The programs for A355948, there is no canonical definition to state claims against.
-/

/-! ## A355948.P4299902994386424025

`A108914(n+1)+A355949(n+1)-1`
-/

namespace A355948.P4299902994386424025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108914 (n + 1) + A355949 (n + 1) - 1

end

end A355948.P4299902994386424025

/-! ## A355948.P5701580557501867077

`A185048(A355949(n+1))+A108914(n+1)`
-/

namespace A355948.P5701580557501867077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (A355949 (n + 1)).toNat + A108914 (n + 1)

end

end A355948.P5701580557501867077

/-! ## A355948.P11963762145607699250

`A004442(A355949(n+1)+A108914(n+1))`
-/

namespace A355948.P11963762145607699250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A355949 (n + 1) + A108914 (n + 1)).toNat

end

end A355948.P11963762145607699250

/-! ## A355948.P16483509525291498273

`A023443(A355949(n+1)+A108914(n+1))`
-/

namespace A355948.P16483509525291498273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A355949 (n + 1) + A108914 (n + 1)).toNat

end

end A355948.P16483509525291498273

/-! ## A355948.P14404402441854996534

`A356044(∑[n+1]+4)+A355949(n+1)-1`
-/

namespace A355948.P14404402441854996534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356044 (∑ j ∈ Finset.range (n + 1), f1 j + 4) + (A355949 (n + 1) - 1)

end

end A355948.P14404402441854996534

/-!
# A355949: Number of vertices formed in a square by straight line segments when connecting the four corner vertices to the points dividing the sides into n equal parts.

The programs for A355949, there is no canonical definition to state claims against.
-/

/-! ## A355949.P12845730465312973194

`A355948(n+1)-A108914(n+1)+1`
-/

namespace A355949.P12845730465312973194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355948 (n + 1) - A108914 (n + 1) + 1

end

end A355949.P12845730465312973194

/-! ## A355949.P3088275251499043764

`A004442(A355948(n+1)-A108914(n+1))`
-/

namespace A355949.P3088275251499043764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A355948 (n + 1) - A108914 (n + 1)).toNat

end

end A355949.P3088275251499043764

/-! ## A355949.P17423364832055052136

`A354544(∑[n+1]+4)`
-/

namespace A355949.P17423364832055052136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354544 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A355949.P17423364832055052136

/-! ## A355949.P626525553915086872

`A355948(n+1)+A024000(A356044(∑[n+1]+4))`
-/

namespace A355949.P626525553915086872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355948 (n + 1) + A024000 (A356044 (∑ j ∈ Finset.range (n + 1), f1 j + 4)).toNat

end

end A355949.P626525553915086872

/-! ## A355949.P16741884792939841063

`A004442(A355948(n+1)-A356044(∑[n+1]+4))`
-/

namespace A355949.P16741884792939841063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A355948 (n + 1) - A356044 (∑ j ∈ Finset.range (n + 1), f1 j + 4)).toNat

end

end A355949.P16741884792939841063

/-!
# A355950: a(n) = Sum_{k=1..n} k^(k-1) * floor(n/k).

The programs for A355950, there is no canonical definition to state claims against.
-/

/-! ## A355950.P2416931587650064612

`∑[∑{d}[n+1, #^(#-1)]]`
-/

namespace A355950.P2416931587650064612
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (d : ℚ) ^ ((d : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355950.P2416931587650064612

/-! ## A355950.P8280436387176836098

`∑[record[∑{d}[n-1, #^(#-1)]]]`
-/

namespace A355950.P8280436387176836098
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n).natAbs, (d : ℚ) ^ ((d : ℤ) - 1 : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355950.P8280436387176836098

/-! ## A355950.P8561884437346171461

`∑[A262843(n+1)]`
-/

namespace A355950.P8561884437346171461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355950.P8561884437346171461

/-! ## A355950.P2329355663791248213

`∑[record[A262843(A152271(n))]]`
-/

namespace A355950.P2329355663791248213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262843 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355950.P2329355663791248213

/-! ## A355950.P16898517528779728276

`∑[A308701(∑[n+2])]`
-/

namespace A355950.P16898517528779728276
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308701 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355950.P16898517528779728276

/-!
# A355951: Negated column 0 of the irregular triangle A355587.

The programs for A355951, there is no canonical definition to state claims against.
-/

/-! ## A355951.P4891110763350635948

`abs(A355587(∑[ceil(n/2)]))`
-/

namespace A355951.P4891110763350635948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355587 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A355951.P4891110763350635948

/-! ## A355951.P3401037972772016993

`-A355587(∑[A140106(n+3)])`
-/

namespace A355951.P3401037972772016993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A355587 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A355951.P3401037972772016993

/-! ## A355951.P17619075638306124948

`A169764(2*n+1)-A355587(A002620(n+1))`
-/

namespace A355951.P17619075638306124948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169764 (2 * n + 1) - A355587 (A002620 (n + 1)).toNat

end

end A355951.P17619075638306124948

/-!
# A355952: Column 0 of the irregular triangle A355588.

The programs for A355952, there is no canonical definition to state claims against.
-/

/-! ## A355952.P13476378899499356801

`A355588(∑[ceil(n/2)])`
-/

namespace A355952.P13476378899499356801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355588 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A355952.P13476378899499356801

/-! ## A355952.P14335483128638526895

`gcd(A003418(n), A380900(A245822(n+1)))`
-/

namespace A355952.P14335483128638526895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 n) (A380900 (A245822 (n + 1)).toNat)

end

end A355952.P14335483128638526895

/-! ## A355952.P2836165664348168571

`gcd(35, A046786(3*n+2)!)`
-/

namespace A355952.P2836165664348168571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 35 (Nat.factorial (A046786 (3 * n + 2)).toNat)

end

end A355952.P2836165664348168571

/-! ## A355952.P17527548867700877163

`∏[A351086(∏[∏{e}[n+1, #+1]])]`
-/

namespace A355952.P17527548867700877163
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351086 (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A355952.P17527548867700877163

/-! ## A355952.P1788458654401038224

`A335433(floor(n/ϕ²)^floor(n/ϕ²))`
-/

namespace A355952.P1788458654401038224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335433 (SequenceMachineLib.roundAway ((⌊(n : ℝ) / Real.goldenRatio ^ 2⌋ : ℚ) ^ (⌊(n : ℝ) / Real.goldenRatio ^ 2⌋ : ℤ))).toNat

end

end A355952.P1788458654401038224

/-!
# A355956: Index k of partition function p such that p(k) is a member of a cousin prime pair.

The programs for A355956, there is no canonical definition to state claims against.
-/

/-! ## A355956.P18033831933647265446

`A180632(n)+n%2+3`
-/

namespace A355956.P18033831933647265446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180632 n + ((n % 2 + 3 : ℕ) : ℤ)

end

end A355956.P18033831933647265446

/-! ## A355956.P12453263163828550401

`A000035(n)+A180632(n)+3`
-/

namespace A355956.P12453263163828550401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (A180632 n + 3)

end

end A355956.P12453263163828550401

/-!
# A355957: Different Fiedler pencils with repetitions of degree n.

The programs for A355957, there is no canonical definition to state claims against.
-/

/-! ## A355957.P310479012976081776

`∑[A004396(A067318(n+2))]`
-/

namespace A355957.P310479012976081776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A067318 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355957.P310479012976081776

/-!
# A355958: Positions where primes occur in A104589.

The programs for A355958, there is no canonical definition to state claims against.
-/

/-! ## A355958.P845882319786804388

`A096493(A090090(n+1))+A023898(n+1)`
-/

namespace A355958.P845882319786804388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096493 (A090090 (n + 1)).toNat + A023898 (n + 1)

end

end A355958.P845882319786804388

/-!
# A355967: Indices of the primes that occur in A104589.

The programs for A355967, there is no canonical definition to state claims against.
-/

/-! ## A355967.P17539495215587153422

`A000720(p?[A104589(n+1)])`
-/

namespace A355967.P17539495215587153422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A355967.P17539495215587153422

/-! ## A355967.P30129364747870759

`A000720(A104589(A355958(n+1)))`
-/

namespace A355967.P30129364747870759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A104589 (A355958 (n + 1)).toNat).toNat

end

end A355967.P30129364747870759

/-!
# A355968: a(n) is the smallest number that has exactly n odious divisors (A000069).

The programs for A355968, there is no canonical definition to state claims against.
-/

/-! ## A355968.P8268345558912599490

`A000007(n)-A083254(A003680(n+1))`
-/

namespace A355968.P8268345558912599490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A083254 (A003680 (n + 1)).toNat

end

end A355968.P8268345558912599490

/-!
# A355969: Positions of records in A227872, i.e., integers whose number of odious divisors sets a new record.

The programs for A355969, there is no canonical definition to state claims against.
-/

/-! ## A355969.P16138381163770332900

`A355968(record[A227872(n+1)])`
-/

namespace A355969.P16138381163770332900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355968 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A355969.P16138381163770332900

/-! ## A355969.P15484813282140818158

`A355968(record[A290090(n+1)+A010060(n+1)])`
-/

namespace A355969.P15484813282140818158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290090 (n + 1) + A010060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355968 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A355969.P15484813282140818158

/-! ## A355969.P5597903530055313563

`A355968(A035303(n+1)%A333457(3*n+2))`
-/

namespace A355969.P5597903530055313563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355968 (Int.tmod (A035303 (n + 1)) (A333457 (3 * n + 2))).toNat

end

end A355969.P5597903530055313563

/-! ## A355969.P9977324644301249087

`A355968(gcd(A035303(n+1), A333457(3*n+2)))`
-/

namespace A355969.P9977324644301249087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355968 (Int.gcd (A035303 (n + 1)) (A333457 (3 * n + 2)))

end

end A355969.P9977324644301249087

/-! ## A355969.P17724409347533368544

`A355968(A035303(n+1)*A144261(n+1))`
-/

namespace A355969.P17724409347533368544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355968 (A035303 (n + 1) * A144261 (n + 1)).toNat

end

end A355969.P17724409347533368544

/-!
# A355974: a(1) = 2. For n > 1, a(n) = 2*a(n-1) + p for the least prime p > 2*a(n-1) such that 2*a(n-1) + p is prime.

The programs for A355974, there is no canonical definition to state claims against.
-/

/-! ## A355974.P6109952682468772171

`A320393(A261051(n+1))`
-/

namespace A355974.P6109952682468772171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320393 (A261051 (n + 1)).toNat

end

end A355974.P6109952682468772171

/-!
# A355975: a(1) = 1. For n >= 2, add to a(n-1) its prime or nonprime index to obtain a(n).

The programs for A355975, there is no canonical definition to state claims against.
-/

/-! ## A355975.P8946189882929717199

`A026233(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A355975.P8946189882929717199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026233 (a (n - 1)).toNat + a (n - 1)

end

end A355975.P8946189882929717199

/-! ## A355975.P10646902581479364356

`A057627(A293606(n))+A005704(n)`
-/

namespace A355975.P10646902581479364356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (A293606 n).toNat + A005704 n

end

end A355975.P10646902581479364356

/-! ## A355975.P2194866829047853629

`A168134(A011972(n))`
-/

namespace A355975.P2194866829047853629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168134 (A011972 n).toNat

end

end A355975.P2194866829047853629

/-! ## A355975.P9937523833660319393

`A168134(A330937(n))`
-/

namespace A355975.P9937523833660319393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168134 (A330937 n).toNat

end

end A355975.P9937523833660319393

/-!
# A355980: Indices of primes in A049685.

The programs for A355980, there is no canonical definition to state claims against.
-/

/-! ## A355980.P11163287287828029380

`(A074304(n+1)-1)/2`
-/

namespace A355980.P11163287287828029380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074304 (n + 1) - 1 : ℚ) / 2

end

end A355980.P11163287287828029380

/-! ## A355980.P18018540933650881787

`floor(A074304(n+1)/2)`
-/

namespace A355980.P18018540933650881787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074304 (n + 1) : ℚ) / 2⌋

end

end A355980.P18018540933650881787

/-! ## A355980.P12172198054608455061

`A014682(A074304(n+1)-1)`
-/

namespace A355980.P12172198054608455061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A074304 (n + 1) - 1).toNat

end

end A355980.P12172198054608455061

/-! ## A355980.P1817586949949294436

`A014682(xor(1, A074304(n+1)))`
-/

namespace A355980.P1817586949949294436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.xor 1 (A074304 (n + 1))).toNat

end

end A355980.P1817586949949294436

/-! ## A355980.P6445716606313649051

`A014682(A153881(2*(n+1))+A074304(n+1))`
-/

namespace A355980.P6445716606313649051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A153881 (2 * (n + 1)) + A074304 (n + 1)).toNat

end

end A355980.P6445716606313649051

/-!
# A355981: Primes in A052924.

The programs for A355981, there is no canonical definition to state claims against.
-/

/-! ## A355981.P3742177280942256332

`p?[a(n-2)+3*a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A355981.P3742177280942256332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + 3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A355981.P3742177280942256332

/-! ## A355981.P8817178559292388881

`p?[a(n-2)+lcm(3, a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A355981.P8817178559292388881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + Nat.lcm 3 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A355981.P8817178559292388881

/-! ## A355981.P6472878246605660918

`p?[3*a(n-1)-floor(-a(n-2))]` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A355981.P6472878246605660918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  3 * f1 (n - 1) - (-f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A355981.P6472878246605660918

/-!
# A355982: Primes in A004253.

The programs for A355982, there is no canonical definition to state claims against.
-/

/-! ## A355982.P9090744255510514384

`A004253(eq[4, A317359(3*(n+1))])`
-/

namespace A355982.P9090744255510514384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317359 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A355982.P9090744255510514384

/-!
# A355983: Primes whose reversal is a multiple of 4.

The programs for A355983, there is no canonical definition to state claims against.
-/

/-! ## A355983.P11447808006456066834

`p?[eq[1, (A004086(n)+1)%4]]`
-/

namespace A355983.P11447808006456066834
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 n + 1) 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A355983.P11447808006456066834

/-! ## A355983.P6478084700289808803

`p?[lt[A326049(A004086(n)+1)+1, 2]]`
-/

namespace A355983.P6478084700289808803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326049 (A004086 n + 1).toNat + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A355983.P6478084700289808803

/-!
# A355986: a(n) = Sum_{k=1..n} floor(n/k)!.

The programs for A355986, there is no canonical definition to state claims against.
-/

/-! ## A355986.P12623969439927523155

`∑[∑{d}[n+1, A094258(#)]]`
-/

namespace A355986.P12623969439927523155
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A094258 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355986.P12623969439927523155

/-! ## A355986.P7269912531207974890

`A319209(n+1)+A112310(A101220(n))`
-/

namespace A355986.P7269912531207974890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319209 (n + 1) + A112310 (A101220 n).toNat

end

end A355986.P7269912531207974890

/-!
# A355987: a(n) = n! * Sum_{k=1..n} 1/floor(n/k)!.

The programs for A355987, there is no canonical definition to state claims against.
-/

/-! ## A355987.P3213008228772732395

`or(1, A214570(3*n+2))`
-/

namespace A355987.P3213008228772732395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A214570 (3 * n + 2))

end

end A355987.P3213008228772732395

/-!
# A355988: a(n) = n! / floor(n/3)!.

The programs for A355988, the canonical program `A355988.P8805568118417837514` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355988 has offset 0).

The definition of A355988 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355988.P8805568118417837514

`n!/floor(n/3)!`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A355988

/-- `n!/floor(n/3)!` -/
def P8805568118417837514.Spec : Prop :=
  ∀ n, P8805568118417837514.a n = (A355988 n : ℚ)

end A355988

/-! ## A355988.P15590221317218357245

`A374648(n)+A081125(n)`
-/

namespace A355988.P15590221317218357245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374648 n + A081125 n

end

end A355988.P15590221317218357245

namespace A355988

/-- `A374648(n)+A081125(n)` -/
def P15590221317218357245.Spec : Prop :=
  ∀ n, P15590221317218357245.a n = A355988 n

end A355988

/-! ## A355988.P16416243869054868458

`A008279(A111097(n+1))`
-/

namespace A355988.P16416243869054868458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A111097 (n + 1)).toNat

end

end A355988.P16416243869054868458

namespace A355988

/-- `A008279(A111097(n+1))` -/
def P16416243869054868458.Spec : Prop :=
  ∀ n, P16416243869054868458.a n = A355988 n

end A355988

/-! ## A355988.P8604251361467951650

`A008279(A389142(n+1))`
-/

namespace A355988.P8604251361467951650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A389142 (n + 1)).toNat

end

end A355988.P8604251361467951650

namespace A355988

/-- `A008279(A389142(n+1))` -/
def P8604251361467951650.Spec : Prop :=
  ∀ n, P8604251361467951650.a n = A355988 n

end A355988

/-! ## A355988.P18071059735745696808

`A000142(n)/A002264(n)!`
-/

namespace A355988.P18071059735745696808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (Nat.factorial (A002264 n).toNat : ℚ)

end

end A355988.P18071059735745696808

namespace A355988

/-- `A000142(n)/A002264(n)!` -/
def P18071059735745696808.Spec : Prop :=
  ∀ n, P18071059735745696808.a n = (A355988 n : ℚ)

end A355988

/-! ## A355988.P3273050195834292334

`A374648(n)+A211374(n+1)/A081123(n+1)`
-/

namespace A355988.P3273050195834292334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374648 n : ℚ) + (A211374 (n + 1) : ℚ) / (A081123 (n + 1) : ℚ)

end

end A355988.P3273050195834292334

namespace A355988

/-- `A374648(n)+A211374(n+1)/A081123(n+1)` -/
def P3273050195834292334.Spec : Prop :=
  ∀ n, P3273050195834292334.a n = (A355988 n : ℚ)

end A355988

/-!
# A355989: a(n) = n! / (2 * floor(n/2)!).

The programs for A355989, the canonical program `A355989.P164835012218344416` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355989 has offset 2).

The definition of A355989 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355989.P164835012218344416

`A081125(n+2)/2`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A355989

/-- `A081125(n+2)/2` -/
def P164835012218344416.Spec : Prop :=
  ∀ n, P164835012218344416.a n = (A355989 (n + 2) : ℚ)

end A355989

/-! ## A355989.P5792585876075269166

`(n+2)!/(2*floor((n+2)/2)!)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A355989.P5792585876075269166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℚ) / (2 * Nat.factorial ⌊(n + 2 : ℚ) / 2⌋.toNat : ℚ)

end

end A355989.P5792585876075269166

namespace A355989

/-- `(n+2)!/(2*floor((n+2)/2)!)` -/
def P5792585876075269166.Spec : Prop :=
  ∀ n, P5792585876075269166.a n = (A355989 (n + 2) : ℚ)

end A355989

/-! ## A355989.P7582684088587572826

`(n*n%2+2)*a(n-1)` with `a(0)=1`
-/

namespace A355989.P7582684088587572826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n * (n % 2) + 2) * a (n - 1)

end

end A355989.P7582684088587572826

namespace A355989

/-- `(n*n%2+2)*a(n-1)` -/
def P7582684088587572826.Spec : Prop :=
  ∀ n, (P7582684088587572826.a n : ℤ) = A355989 (n + 2)

end A355989

/-! ## A355989.P11736249161314481526

`(lcm(2, n)-n+2)*a(n-1)` with `a(0)=1`
-/

namespace A355989.P11736249161314481526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((Nat.lcm 2 n : ℤ) - (n : ℤ) + 2) * a (n - 1)

end

end A355989.P11736249161314481526

namespace A355989

/-- `(lcm(2, n)-n+2)*a(n-1)` -/
def P11736249161314481526.Spec : Prop :=
  ∀ n, P11736249161314481526.a n = A355989 (n + 2)

end A355989

/-! ## A355989.P36427695102453385

`∏[and(n+1, -a(n-1))+1]` with `a(0)=1`
-/

namespace A355989.P36427695102453385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.land (n + 1 : ℤ) (-f1 (n - 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A355989.P36427695102453385

namespace A355989

/-- `∏[and(n+1, -a(n-1))+1]` -/
def P36427695102453385.Spec : Prop :=
  ∀ n, P36427695102453385.a n = A355989 (n + 2)

end A355989

/-! ## A355989.P17772985363708406462

`(n*(2-gcd(2, n))+2)*a(n-1)` with `a(0)=1`
-/

namespace A355989.P17772985363708406462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) * (2 - (Nat.gcd 2 n : ℤ)) + 2) * a (n - 1)

end

end A355989.P17772985363708406462

namespace A355989

/-- `(n*(2-gcd(2, n))+2)*a(n-1)` -/
def P17772985363708406462.Spec : Prop :=
  ∀ n, P17772985363708406462.a n = A355989 (n + 2)

end A355989

/-! ## A355989.P8421767224649869948

`(C(n+1, and(1, n))+1)*a(n-1)` with `a(0)=1`
-/

namespace A355989.P8421767224649869948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (n + 1) (Nat.land 1 n) + 1) * a (n - 1)

end

end A355989.P8421767224649869948

namespace A355989

/-- `(C(n+1, and(1, n))+1)*a(n-1)` -/
def P8421767224649869948.Spec : Prop :=
  ∀ n, (P8421767224649869948.a n : ℤ) = A355989 (n + 2)

end A355989

/-! ## A355989.P7832105322193226120

`(∑[2-a(n-1)]+n+1)*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A355989.P7832105322193226120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)) * a (n - 2)

end

end A355989.P7832105322193226120

namespace A355989

/-- `(∑[2-a(n-1)]+n+1)*a(n-2)` -/
def P7832105322193226120.Spec : Prop :=
  ∀ n, P7832105322193226120.a n = A355989 (n + 2)

end A355989

/-! ## A355989.P12243935010949510836

`∑[n+1]*A262033(n)`
-/

namespace A355989.P12243935010949510836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A262033 n

end

end A355989.P12243935010949510836

namespace A355989

/-- `∑[n+1]*A262033(n)` -/
def P12243935010949510836.Spec : Prop :=
  ∀ n, P12243935010949510836.a n = A355989 (n + 2)

end A355989

/-! ## A355989.P2195174776585825524

`a(n-1)*A141310(n+1)` with `a(0)=1`
-/

namespace A355989.P2195174776585825524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A141310 (n + 1)

end

end A355989.P2195174776585825524

namespace A355989

/-- `a(n-1)*A141310(n+1)` -/
def P2195174776585825524.Spec : Prop :=
  ∀ n, P2195174776585825524.a n = A355989 (n + 2)

end A355989

/-! ## A355989.P3852949038050331065

`∏[n*n%2+2]/2`
-/

namespace A355989.P3852949038050331065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A355989.P3852949038050331065

namespace A355989

/-- `∏[n*n%2+2]/2` -/
def P3852949038050331065.Spec : Prop :=
  ∀ n, P3852949038050331065.a n = (A355989 (n + 2) : ℚ)

end A355989

/-! ## A355989.P11355992382303155115

`∏[A141310(n+1)]/2`
-/

namespace A355989.P11355992382303155115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A355989.P11355992382303155115

namespace A355989

/-- `∏[A141310(n+1)]/2` -/
def P11355992382303155115.Spec : Prop :=
  ∀ n, P11355992382303155115.a n = (A355989 (n + 2) : ℚ)

end A355989

/-! ## A355989.P5804086710518205830

`A370890(A167614(n+2))`
-/

namespace A355989.P5804086710518205830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370890 (A167614 (n + 2)).toNat

end

end A355989.P5804086710518205830

namespace A355989

/-- `A370890(A167614(n+2))` -/
def P5804086710518205830.Spec : Prop :=
  ∀ n, P5804086710518205830.a n = A355989 (n + 2)

end A355989

/-!
# A355990: a(n) = n! / (6 * floor(n/3)!).

The programs for A355990, the canonical program `A355990.P6521966829317666258` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355990 has offset 3).

The definition of A355990 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355990.P6521966829317666258

`A355988(n+3)/6`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A355990

/-- `A355988(n+3)/6` -/
def P6521966829317666258.Spec : Prop :=
  ∀ n, P6521966829317666258.a n = (A355990 (n + 3) : ℚ)

end A355990

/-! ## A355990.P14815257879339122919

`(n+3)!/(6*floor((n+3)/3)!)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A355990.P14815257879339122919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 3) : ℚ) / (6 * Nat.factorial ⌊(n + 3 : ℚ) / 3⌋.toNat : ℚ)

end

end A355990.P14815257879339122919

namespace A355990

/-- `(n+3)!/(6*floor((n+3)/3)!)` -/
def P14815257879339122919.Spec : Prop :=
  ∀ n, P14815257879339122919.a n = (A355990 (n + 3) : ℚ)

end A355990

/-! ## A355990.P13950888252527086033

`(n*n²%3+3)*a(n-1)` with `a(0)=1`
-/

namespace A355990.P13950888252527086033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n * (n ^ 2 % 3) + 3) * a (n - 1)

end

end A355990.P13950888252527086033

namespace A355990

/-- `(n*n²%3+3)*a(n-1)` -/
def P13950888252527086033.Spec : Prop :=
  ∀ n, (P13950888252527086033.a n : ℤ) = A355990 (n + 3)

end A355990

/-! ## A355990.P2881907877766478615

`(n*Δ[A004523(n)]+3)*a(n-1)` with `a(0)=1`
-/

namespace A355990.P2881907877766478615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) * (f1 (n + 1) - f1 n) + 3) * a (n - 1)

end

end A355990.P2881907877766478615

namespace A355990

/-- `(n*Δ[A004523(n)]+3)*a(n-1)` -/
def P2881907877766478615.Spec : Prop :=
  ∀ n, P2881907877766478615.a n = A355990 (n + 3)

end A355990

/-! ## A355990.P16119853877116021533

`A355996(A167614(n+1))`
-/

namespace A355990.P16119853877116021533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355996 (A167614 (n + 1)).toNat

end

end A355990.P16119853877116021533

namespace A355990

/-- `A355996(A167614(n+1))` -/
def P16119853877116021533.Spec : Prop :=
  ∀ n, P16119853877116021533.a n = A355990 (n + 3)

end A355990

/-! ## A355990.P17113001978865059320

`A356012(n+3)/floor(n/3)!`
-/

namespace A355990.P17113001978865059320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356012 (n + 3) : ℚ) / (Nat.factorial ⌊(n : ℚ) / 3⌋.toNat : ℚ)

end

end A355990.P17113001978865059320

namespace A355990

/-- `A356012(n+3)/floor(n/3)!` -/
def P17113001978865059320.Spec : Prop :=
  ∀ n, P17113001978865059320.a n = (A355990 (n + 3) : ℚ)

end A355990

/-! ## A355990.P8967098940802258625

`∏[2-A099837(n)+n]/A002264(n)!`
-/

namespace A355990.P8967098940802258625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A099837 n + (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (Nat.factorial (A002264 n).toNat : ℚ)

end

end A355990.P8967098940802258625

namespace A355990

/-- `∏[2-A099837(n)+n]/A002264(n)!` -/
def P8967098940802258625.Spec : Prop :=
  ∀ n, P8967098940802258625.a n = (A355990 (n + 3) : ℚ)

end A355990

/-! ## A355990.P3140604551316942894

`A356012(n+3)/A000142(A002264(n))`
-/

namespace A355990.P3140604551316942894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356012 (n + 3) : ℚ) / (A000142 (A002264 n).toNat : ℚ)

end

end A355990.P3140604551316942894

namespace A355990

/-- `A356012(n+3)/A000142(A002264(n))` -/
def P3140604551316942894.Spec : Prop :=
  ∀ n, P3140604551316942894.a n = (A355990 (n + 3) : ℚ)

end A355990

/-!
# A355991: a(n) = n! * Sum_{k=1..n} 1/(k! * floor(n/k)!).

The programs for A355991, there is no canonical definition to state claims against.
-/

/-! ## A355991.P12366500730242910050

`A037915(A260443(∑[n]))`
-/

namespace A355991.P12366500730242910050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037915 (A260443 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A355991.P12366500730242910050

/-! ## A355991.P7463599599159624541

`A007998(A052365(n))+n`
-/

namespace A355991.P7463599599159624541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007998 (A052365 n).toNat + (n : ℤ)

end

end A355991.P7463599599159624541

/-!
# A355994: Expansion of e.g.f. -LambertW(x^2/2 * log(1-x)).

The programs for A355994, there is no canonical definition to state claims against.
-/

/-! ## A355994.P1236164724841906350

`A351505(n^∑{e}[or(1, -n), #])`
-/

namespace A355994.P1236164724841906350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351505 (n ^ (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p))

end

end A355994.P1236164724841906350

/-! ## A355994.P6940662953964914489

`A328399(A353228(n))-1`
-/

namespace A355994.P6940662953964914489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A353228 n).toNat - 1

end

end A355994.P6940662953964914489

/-! ## A355994.P13012847714788725117

`A014682(lcm(n, A353228(n)))`
-/

namespace A355994.P13012847714788725117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lcm (n : ℤ) (A353228 n))

end

end A355994.P13012847714788725117

/-! ## A355994.P10166201680974117377

`A351505(n)*A362687(3^n)`
-/

namespace A355994.P10166201680974117377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351505 n * A362687 (3 ^ n)

end

end A355994.P10166201680974117377

/-! ## A355994.P5878615503373090099

`A351505(n)%∑[A002077(n+1)]`
-/

namespace A355994.P5878615503373090099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351505 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A355994.P5878615503373090099

/-!
# A355995: Expansion of e.g.f. -LambertW(x^3/6 * log(1-x)).

The programs for A355995, there is no canonical definition to state claims against.
-/

/-! ## A355995.P17098581205494534359

`A351506(n)%A068870(n)`
-/

namespace A355995.P17098581205494534359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351506 n) (A068870 n)

end

end A355995.P17098581205494534359

/-! ## A355995.P8592054781637937809

`A351506(n)-A363945(∑[n])`
-/

namespace A355995.P8592054781637937809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351506 n - A363945 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A355995.P8592054781637937809

/-! ## A355995.P1346280264810202616

`A351506(A001222(ceil(3^(n-1)))+1)`
-/

namespace A355995.P1346280264810202616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351506 (A001222 ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + 1).toNat

end

end A355995.P1346280264810202616

/-! ## A355995.P1220601282983679610

`C(A351506(n), A182469(2*(n+2))²)`
-/

namespace A355995.P1220601282983679610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A351506 n).toNat (A182469 (2 * (n + 2)) ^ 2).toNat

end

end A355995.P1220601282983679610

/-! ## A355995.P13005250212585067414

`lcm(A332992(ceil(3^(n-1))), A351506(n))`
-/

namespace A355995.P13005250212585067414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A332992 ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat) (A351506 n)

end

end A355995.P13005250212585067414

/-!
# A355996: Triangle T(n,k), n >= 1, 1 <= k <= n, read by rows, where T(n,k) = n!/(k! * floor(n/k)!).

The programs for A355996, the canonical program `A355996.P6870704800853845500` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355996 has offset 1).

The definition of A355996 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355996.P6870704800853845500

`(row(n)+1)!/((col(n)+1)!*floor((row(n)+1)/(col(n)+1))!)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A355996

/-- `(row(n)+1)!/((col(n)+1)!*floor((row(n)+1)/(col(n)+1))!)` -/
def P6870704800853845500.Spec : Prop :=
  ∀ n, P6870704800853845500.a n = (A355996 (n + 1) : ℚ)

end A355996

/-! ## A355996.P7540053898324700991

`A173333(n+1)/A010766(n+1)!`
-/

namespace A355996.P7540053898324700991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173333 (n + 1) : ℚ) / (Nat.factorial (A010766 (n + 1)).toNat : ℚ)

end

end A355996.P7540053898324700991

namespace A355996

/-- `A173333(n+1)/A010766(n+1)!` -/
def P7540053898324700991.Spec : Prop :=
  ∀ n, P7540053898324700991.a n = (A355996 (n + 1) : ℚ)

end A355996

/-! ## A355996.P959150038669056758

`A356013(n+1)^A218024(A084938(n))`
-/

namespace A355996.P959150038669056758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356013 (n + 1) : ℚ) ^ (A218024 (A084938 n).toNat : ℤ)

end

end A355996.P959150038669056758

namespace A355996

/-- `A356013(n+1)^A218024(A084938(n))` -/
def P959150038669056758.Spec : Prop :=
  ∀ n, P959150038669056758.a n = (A355996 (n + 1) : ℚ)

end A355996

/-!
# A355997: Triangle read by rows: T(n,d) is the number of fixed orthoplex n-ominoes with cell centers determining d-space.

The programs for A355997, there is no canonical definition to state claims against.
-/

/-! ## A355997.P17833947328570816956

`A046523(A000244(n))%A084604(2*n+3)`
-/

namespace A355997.P17833947328570816956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046523 (A000244 n).toNat) (A084604 (2 * n + 3))

end

end A355997.P17833947328570816956

/-! ## A355997.P12860374723232544797

`and(A003352(n+1), A357428(A336456(n+1)))`
-/

namespace A355997.P12860374723232544797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003352 (n + 1)) (A357428 (A336456 (n + 1)).toNat)

end

end A355997.P12860374723232544797

/-! ## A355997.P2315237451342530832

`and(A217780(A217759(n+1)), A217785(2*n+5))`
-/

namespace A355997.P2315237451342530832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A217780 (A217759 (n + 1)).toNat) (A217785 (2 * n + 5))

end

end A355997.P2315237451342530832

/-!
# A355998: Number of fixed orthoplex n-ominoes with cell centers determining (n-2)-space.

The programs for A355998, the canonical program `A355998.P7773803096804668221` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355998 has offset 4).

The definition of A355998 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355998.P7773803096804668221

`2^(n+1)*(n+4)^(n-1)*(n+2)*(n+1)²`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A355998

/-- `2^(n+1)*(n+4)^(n-1)*(n+2)*(n+1)²` -/
def P7773803096804668221.Spec : Prop :=
  ∀ n, P7773803096804668221.a n = (A355998 (n + 4) : ℚ)

end A355998

/-! ## A355998.P12737430056567776015

`A355997(C(n+4, 2))`
-/

namespace A355998.P12737430056567776015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355997 (Nat.choose (n + 4) 2)

end

end A355998.P12737430056567776015

namespace A355998

/-- `A355997(C(n+4, 2))` -/
def P12737430056567776015.Spec : Prop :=
  ∀ n, P12737430056567776015.a n = A355998 (n + 4)

end A355998

/-! ## A355998.P4688845344579850476

`A355997(A115744(n+1))`
-/

namespace A355998.P4688845344579850476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355997 (A115744 (n + 1)).toNat

end

end A355998.P4688845344579850476

namespace A355998

/-- `A355997(A115744(n+1))` -/
def P4688845344579850476.Spec : Prop :=
  ∀ n, P4688845344579850476.a n = A355998 (n + 4)

end A355998

/-! ## A355998.P15619190120458073108

`A355997(A000217(n+3))`
-/

namespace A355998.P15619190120458073108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355997 (A000217 (n + 3)).toNat

end

end A355998.P15619190120458073108

namespace A355998

/-- `A355997(A000217(n+3))` -/
def P15619190120458073108.Spec : Prop :=
  ∀ n, P15619190120458073108.a n = A355998 (n + 4)

end A355998

/-! ## A355998.P10607612540062612400

`A355997(A141214(n)+3)`
-/

namespace A355998.P10607612540062612400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355997 (A141214 n + 3).toNat

end

end A355998.P10607612540062612400

namespace A355998

/-- `A355997(A141214(n)+3)` -/
def P10607612540062612400.Spec : Prop :=
  ∀ n, P10607612540062612400.a n = A355998 (n + 4)

end A355998

/-!
# A355999: Number of fixed orthoplex n-ominoes with cell centers determining (n-3)-space.

The programs for A355999, there is no canonical definition to state claims against.
-/

/-! ## A355999.P16890403867897055733

`A355997(A115744(n+3)-1)`
-/

namespace A355999.P16890403867897055733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355997 (A115744 (n + 3) - 1).toNat

end

end A355999.P16890403867897055733

/-! ## A355999.P15533851124740612925

`A355997(lt[A112911(n), A095861(n+1)])`
-/

namespace A355999.P15533851124740612925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112911 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355997 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A355999.P15533851124740612925

