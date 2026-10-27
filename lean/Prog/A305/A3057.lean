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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A305701: Nonnegative integers whose decimal digits span an initial interval of {0,...,9}.

The programs for A305701, there is no canonical definition to state claims against.
-/

/-! ## A305701.P12665389651124676962

`∩[A011540(n+1), A134336(n+1)]`
-/

namespace A305701.P12665389651124676962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305701.P12665389651124676962

/-! ## A305701.P8786131565747467528

`eq[0, A023416(A086066(n))]`
-/

namespace A305701.P8786131565747467528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A305701.P8786131565747467528

/-! ## A305701.P6301865091049742691

`lt[A054055(n), A067898(n)]`
-/

namespace A305701.P6301865091049742691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A305701.P6301865091049742691

/-! ## A305701.P9988258709075680185

`lt[A306958(n)², A047842(n)]`
-/

namespace A305701.P9988258709075680185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306958 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A305701.P9988258709075680185

/-! ## A305701.P12404567049634406402

`eq[1, A000120(A086066(n)+1)]`
-/

namespace A305701.P12404567049634406402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A086066 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A305701.P12404567049634406402

/-! ## A305701.P4943742627041369664

`eq[1, A160552(A086066(n)+1)]`
-/

namespace A305701.P4943742627041369664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (A086066 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A305701.P4943742627041369664

/-! ## A305701.P6835885071923045252

`eq[1, A336158(A086066(n)+1)]`
-/

namespace A305701.P6835885071923045252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (A086066 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A305701.P6835885071923045252

/-! ## A305701.P1140645213987346069

`eq[2, A006530(A086066(n)+1)]`
-/

namespace A305701.P1140645213987346069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A086066 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A305701.P1140645213987346069

/-! ## A305701.P956432361178251279

`eq[2, A014963(A086066(n)+1)]`
-/

namespace A305701.P956432361178251279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A086066 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A305701.P956432361178251279

/-! ## A305701.P17638844163887147786

`eq[1, A035327(A086066(n)-1)]`
-/

namespace A305701.P17638844163887147786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A086066 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A305701.P17638844163887147786

/-!
# A305702: a(n) is the denominator of Sum_{primes p < n} 1/(n-p).

The programs for A305702, there is no canonical definition to state claims against.
-/

/-! ## A305702.P976462023597920945

`A130492(n^A274759(A000120(n)))`
-/

namespace A305702.P976462023597920945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130492 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A274759 (A000120 n).toNat : ℤ))).toNat

end

end A305702.P976462023597920945

/-! ## A305702.P16620160578674488939

`A130492(A028310(n))%A263675(A139832(n+1))`
-/

namespace A305702.P16620160578674488939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130492 (A028310 n).toNat) (A263675 (A139832 (n + 1)).toNat)

end

end A305702.P16620160578674488939

/-!
# A305703: Positive even integers that are not the perimeter of any Heronian triangle.

The programs for A305703, there is no canonical definition to state claims against.
-/

/-! ## A305703.P14800818147416491798

`2*A305705(n+1)`
-/

namespace A305703.P14800818147416491798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A305705 (n + 1)

end

end A305703.P14800818147416491798

/-! ## A305703.P1764855746874879019

`A004277(A305705(n+1))`
-/

namespace A305703.P1764855746874879019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A305705 (n + 1)).toNat

end

end A305703.P1764855746874879019

/-! ## A305703.P6268755380242880239

`record[2*A305705(A126759(n))]`
-/

namespace A305703.P6268755380242880239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A305705 (A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305703.P6268755380242880239

/-! ## A305703.P14580725447480726107

`A004275(A305705(n+1)+1)`
-/

namespace A305703.P14580725447480726107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A305705 (n + 1) + 1).toNat

end

end A305703.P14580725447480726107

/-! ## A305703.P13963269153971021659

`A305705(n+1)+record[A305705(A126759(n))]`
-/

namespace A305703.P13963269153971021659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305705 (A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305705 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305703.P13963269153971021659

/-! ## A305703.P10268596579220379939

`A305705(A000027(n+1))+A305705(n+1)`
-/

namespace A305703.P10268596579220379939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305705 (A000027 (n + 1)).toNat + A305705 (n + 1)

end

end A305703.P10268596579220379939

/-! ## A305703.P15746671601195255950

`eq[and(1, n+1), A051516(n+1)]+1`
-/

namespace A305703.P15746671601195255950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A305703.P15746671601195255950

/-! ## A305703.P12611432008509291414

`record[gcd(2*(n+1), A051516(2*(n+1)))]`
-/

namespace A305703.P12611432008509291414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * (n + 1) : ℤ) (A051516 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305703.P12611432008509291414

/-! ## A305703.P7904739497502455195

`eq[A051516(A028310(n)), A073097(n)]`
-/

namespace A305703.P7904739497502455195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A305703.P7904739497502455195

/-!
# A305704: Numbers that are the semiperimeter of some triangle with integer sides and area.

The programs for A305704, there is no canonical definition to state claims against.
-/

/-! ## A305704.P14074266510538193521

`A051518(n+1)/2`
-/

namespace A305704.P14074266510538193521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051518 (n + 1) : ℚ) / 2

end

end A305704.P14074266510538193521

/-! ## A305704.P12672763664307527342

`lt[0, A051517(n+2)]+2`
-/

namespace A305704.P12672763664307527342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051517 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A305704.P12672763664307527342

/-! ## A305704.P13646945479102086608

`comp[A305705(n+1)-1]+1`
-/

namespace A305704.P13646945479102086608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305705 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A305704.P13646945479102086608

/-! ## A305704.P11698689110806485403

`lt[0, A051516(2*(n+1))]+1`
-/

namespace A305704.P11698689110806485403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A305704.P11698689110806485403

/-! ## A305704.P11626468821278149667

`A001281(A051518(n+1))`
-/

namespace A305704.P11626468821278149667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A051518 (n + 1)).toNat

end

end A305704.P11626468821278149667

/-! ## A305704.P3392021650268213087

`A004524(A051518(n+1)+1)`
-/

namespace A305704.P3392021650268213087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A051518 (n + 1) + 1).toNat

end

end A305704.P3392021650268213087

/-! ## A305704.P8631153466127004784

`A028242(A051518(n+1)+1)`
-/

namespace A305704.P8631153466127004784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A051518 (n + 1) + 1).toNat

end

end A305704.P8631153466127004784

/-! ## A305704.P8487071080446510173

`A002265(2*A051518(n+1))`
-/

namespace A305704.P8487071080446510173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A051518 (n + 1)).toNat

end

end A305704.P8487071080446510173

/-! ## A305704.P9766433072813018736

`A008615(3*A051518(n+1))`
-/

namespace A305704.P9766433072813018736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A051518 (n + 1)).toNat

end

end A305704.P9766433072813018736

/-! ## A305704.P6837541623873329536

`A008624(2*A051518(n+1)+1)`
-/

namespace A305704.P6837541623873329536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (2 * A051518 (n + 1) + 1).toNat

end

end A305704.P6837541623873329536

/-! ## A305704.P14383744595227163687

`A059169(2*(A051518(n+1)+1))`
-/

namespace A305704.P14383744595227163687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (2 * (A051518 (n + 1) + 1)).toNat

end

end A305704.P14383744595227163687

/-! ## A305704.P10917522146026571709

`A276071(2*A051518(n+1)+3)`
-/

namespace A305704.P10917522146026571709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276071 (2 * A051518 (n + 1) + 3).toNat

end

end A305704.P10917522146026571709

/-! ## A305704.P17796234501421363516

`A008619(lt[1, A051516(n+1)+1])`
-/

namespace A305704.P17796234501421363516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A305704.P17796234501421363516

/-! ## A305704.P6251030114106798212

`A002265(A051518(n+1)+A051518(n+1)+1)`
-/

namespace A305704.P6251030114106798212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A051518 (n + 1) + (A051518 (n + 1) + 1)).toNat

end

end A305704.P6251030114106798212

/-! ## A305704.P16026561207991894552

`A008624(A051518(n+1)+A051518(n+1)+1)`
-/

namespace A305704.P16026561207991894552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A051518 (n + 1) + (A051518 (n + 1) + 1)).toNat

end

end A305704.P16026561207991894552

/-! ## A305704.P5554106749179599970

`A059169(A051518(n+1)+A051518(n+1))+1`
-/

namespace A305704.P5554106749179599970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A051518 (n + 1) + A051518 (n + 1)).toNat + 1

end

end A305704.P5554106749179599970

/-! ## A305704.P15048316808931364155

`A334936(n+1)/4`
-/

namespace A305704.P15048316808931364155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334936 (n + 1) : ℚ) / 4

end

end A305704.P15048316808931364155

/-! ## A305704.P1773308730689409776

`A002265(A334936(n+1))`
-/

namespace A305704.P1773308730689409776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A334936 (n + 1)).toNat

end

end A305704.P1773308730689409776

/-!
# A305705: Positive integers which are not the semiperimeter of any triangle with integer sides and area.

The programs for A305705, there is no canonical definition to state claims against.
-/

/-! ## A305705.P13345918750092765978

`A305703(n+1)/2`
-/

namespace A305705.P13345918750092765978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305703 (n + 1) : ℚ) / 2

end

end A305705.P13345918750092765978

/-! ## A305705.P9380857360882802639

`lt[A051517(n+1), 1]+1`
-/

namespace A305705.P9380857360882802639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051517 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A305705.P9380857360882802639

/-! ## A305705.P13602228746271305952

`A014682(A305703(n+1))`
-/

namespace A305705.P13602228746271305952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A305703 (n + 1)).toNat

end

end A305705.P13602228746271305952

/-! ## A305705.P11383535693929164917

`eq[0, A051516(2*(n+1))]+1`
-/

namespace A305705.P11383535693929164917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A305705.P11383535693929164917

/-! ## A305705.P14553695829923470969

`lt[A051516(2*n+2), 1]+1`
-/

namespace A305705.P14553695829923470969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (2 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A305705.P14553695829923470969

/-! ## A305705.P12374350109100638123

`A004526(A305703(n+1)+1)`
-/

namespace A305705.P12374350109100638123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A305703 (n + 1) + 1).toNat

end

end A305705.P12374350109100638123

/-! ## A305705.P10819962659873593119

`A001057(A305703(n+1)-1)`
-/

namespace A305705.P10819962659873593119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A305703 (n + 1) - 1).toNat

end

end A305705.P10819962659873593119

/-! ## A305705.P5908240315481773713

`eq[A051516(A028310(n)), A073097(n)]/2`
-/

namespace A305705.P5908240315481773713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A305705.P5908240315481773713

/-! ## A305705.P919931017577477445

`eq[A073097(2*n)², A051516(A028310(2*n))]`
-/

namespace A305705.P919931017577477445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 (2 * n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (A028310 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A305705.P919931017577477445

/-! ## A305705.P17653437922320301265

`∪[A000040(n+1), A125302(n+1)]`
-/

namespace A305705.P17653437922320301265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A305705.P17653437922320301265

/-! ## A305705.P8498114787267931829

`∪[A008578(n+1), A125302(n+1)]`
-/

namespace A305705.P8498114787267931829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A305705.P8498114787267931829

/-! ## A305705.P17860905210371012816

`∪[A046022(n+1), A125302(n+1)]`
-/

namespace A305705.P17860905210371012816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A305705.P17860905210371012816

/-! ## A305705.P13728431658871212373

`∪[A125302(n+1), A175787(n+1)]`
-/

namespace A305705.P13728431658871212373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A305705.P13728431658871212373

/-!
# A305707: Numbers n such that for every k = 1, 2, ..., A305706(n)-1, it is possible to insert plus signs into the decimal representation of n^k to make sum equal n.

The programs for A305707, there is no canonical definition to state claims against.
-/

/-! ## A305707.P8636023769702538860

`lt[A278060(A215366(n)), 10]`
-/

namespace A305707.P8636023769702538860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278060 (A215366 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A305707.P8636023769702538860

/-! ## A305707.P1266849414874142167

`lt[A198518(n), A358523(n+4)²]`
-/

namespace A305707.P1266849414874142167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198518 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358523 (n + 4) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A305707.P1266849414874142167

/-! ## A305707.P9565511721883389897

`lt[A272436(n+1), A006509(2*(n+1))²]`
-/

namespace A305707.P9565511721883389897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006509 (2 * (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A305707.P9565511721883389897

/-! ## A305707.P168972548760132826

`lt[A046034(n+1), A005384(A031131(n+1))]`
-/

namespace A305707.P168972548760132826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (A031131 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A305707.P168972548760132826

/-! ## A305707.P16959557954709216916

`lt[A003277(n+1), A057548(A031131(n+1))]`
-/

namespace A305707.P16959557954709216916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057548 (A031131 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A305707.P16959557954709216916

/-!
# A305710: Expansion of e.g.f. exp(sec(x)*exp(x) - 1).

The programs for A305710, there is no canonical definition to state claims against.
-/

/-! ## A305710.P12184651158268199730

`A005206(Δ[A000720(Δ[n!]+1)])`
-/

namespace A305710.P12184651158268199730
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (f1 (n + 1) - f1 n).toNat

end

end A305710.P12184651158268199730

/-! ## A305710.P9772363204395922716

`A087559(6*a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A305710.P9772363204395922716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A087559 (6 * a (n - 1)).toNat

end

end A305710.P9772363204395922716

/-!
# A305712: Polydivisible nonnegative integers whose decimal digits span an initial interval of {0,...,9}.

The programs for A305712, there is no canonical definition to state claims against.
-/

/-! ## A305712.P12910168877217165600

`∩[A144688(n+1), A305701(n+1)]`
-/

namespace A305712.P12910168877217165600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305712.P12910168877217165600

/-! ## A305712.P15547570752483974588

`∩[A144688(n+1), A107411(n)]`
-/

namespace A305712.P15547570752483974588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107411 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305712.P15547570752483974588

/-!
# A305713: Number of strict integer partitions of n into pairwise coprime parts.

The programs for A305713, there is no canonical definition to state claims against.
-/

/-! ## A305713.P5133084386997536403

`A007360(n+1)-ceil(n/(n+1))`
-/

namespace A305713.P5133084386997536403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007360 (n + 1) - ⌈(n : ℚ) / (n + 1 : ℚ)⌉

end

end A305713.P5133084386997536403

/-! ## A305713.P5159137923627043880

`A057428(n)+A007360(n+1)`
-/

namespace A305713.P5159137923627043880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A007360 (n + 1)

end

end A305713.P5159137923627043880

/-! ## A305713.P16495300837503914722

`A337485(n+1)+A007359(n)`
-/

namespace A305713.P16495300837503914722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337485 (n + 1) + A007359 n

end

end A305713.P16495300837503914722

/-! ## A305713.P11712474928193071174

`A007359(A004277(n)+1-n)+A007359(n)-1`
-/

namespace A305713.P11712474928193071174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007359 (A004277 n + (1 - (n : ℤ))).toNat + (A007359 n - 1)

end

end A305713.P11712474928193071174

/-! ## A305713.P9490692626498517608

`A007359(n+1)+A007359(n)-A001222(A008578(n+1))`
-/

namespace A305713.P9490692626498517608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007359 (n + 1) + A007359 n - A001222 (A008578 (n + 1)).toNat

end

end A305713.P9490692626498517608

/-! ## A305713.P4422027174501141915

`A007359(n+1)+A007359(n)-A001222(A139421(n+1))`
-/

namespace A305713.P4422027174501141915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007359 (n + 1) + A007359 n - A001222 (A139421 (n + 1)).toNat

end

end A305713.P4422027174501141915

/-! ## A305713.P14956942767704238183

`A078374(n+1)-A303140(n+1)`
-/

namespace A305713.P14956942767704238183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078374 (n + 1) - A303140 (n + 1)

end

end A305713.P14956942767704238183

/-!
# A305716: Order of rowmotion on the divisor lattice for n.

The programs for A305716, the canonical program `A305716.P17923809306606080360` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305716 has offset 1).

The definition of A305716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305716.P17923809306606080360

`∑{e}[n+1, #]+2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A305716

/-- `∑{e}[n+1, #]+2` -/
def P17923809306606080360.Spec : Prop :=
  ∀ n, (P17923809306606080360.a n : ℤ) = A305716 (n + 1)

theorem P17923809306606080360.correct : P17923809306606080360.Spec := by
  intro n
  simp only [A305716, Nat.add_sub_cancel]

end A305716

/-! ## A305716.P159856917348613460

`∑{e}[Δ[Δ[n^3]], #]`
-/

namespace A305716.P159856917348613460
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A305716.P159856917348613460

namespace A305716

/-- `∑{e}[Δ[Δ[n^3]], #]` -/
def P159856917348613460.Spec : Prop :=
  ∀ n, (P159856917348613460.a n : ℤ) = A305716 (n + 1)

end A305716

/-! ## A305716.P696807770745407134

`log(∏{e}[n+1, exp(#)])+2`
-/

namespace A305716.P696807770745407134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (∏ p ∈ Nat.primeFactors (f1 n), Real.exp (Nat.factorization (f1 n) p : ℝ)) + 2

end

end A305716.P696807770745407134

namespace A305716

/-- `log(∏{e}[n+1, exp(#)])+2` -/
def P696807770745407134.Spec : Prop :=
  ∀ n, P696807770745407134.a n = (A305716 (n + 1) : ℝ)

end A305716

/-! ## A305716.P5325118180342417569

`log2(∏{e}[n+1, 2^#])+2`
-/

namespace A305716.P5325118180342417569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p : ℕ) : ℝ) + 2

end

end A305716.P5325118180342417569

namespace A305716

/-- `log2(∏{e}[n+1, 2^#])+2` -/
def P5325118180342417569.Spec : Prop :=
  ∀ n, P5325118180342417569.a n = (A305716 (n + 1) : ℝ)

end A305716

/-! ## A305716.P17155745912050615330

`val(∏{e}[n+1, 2^#], 2)+2`
-/

namespace A305716.P17155745912050615330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p) 2 + 2

end

end A305716.P17155745912050615330

namespace A305716

/-- `val(∏{e}[n+1, 2^#], 2)+2` -/
def P17155745912050615330.Spec : Prop :=
  ∀ n, (P17155745912050615330.a n : ℤ) = A305716 (n + 1)

end A305716

/-! ## A305716.P16320749138764596060

`∑{p}[n+1, val(n+1, #)]+2`
-/

namespace A305716.P16320749138764596060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p + 2

end

end A305716.P16320749138764596060

namespace A305716

/-- `∑{p}[n+1, val(n+1, #)]+2` -/
def P16320749138764596060.Spec : Prop :=
  ∀ n, (P16320749138764596060.a n : ℤ) = A305716 (n + 1)

end A305716

/-! ## A305716.P12230361324355342413

`Δ[A022559(n)]+2`
-/

namespace A305716.P12230361324355342413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A305716.P12230361324355342413

namespace A305716

/-- `Δ[A022559(n)]+2` -/
def P12230361324355342413.Spec : Prop :=
  ∀ n, P12230361324355342413.a n = A305716 (n + 1)

end A305716

/-! ## A305716.P11341412669916876370

`A073093(n+1)+1`
-/

namespace A305716.P11341412669916876370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1) + 1

end

end A305716.P11341412669916876370

namespace A305716

/-- `A073093(n+1)+1` -/
def P11341412669916876370.Spec : Prop :=
  ∀ n, P11341412669916876370.a n = A305716 (n + 1)

end A305716

/-! ## A305716.P91969948758510598

`2+A001222(n+1)`
-/

namespace A305716.P91969948758510598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + A001222 (n + 1)

end

end A305716.P91969948758510598

namespace A305716

/-- `2+A001222(n+1)` -/
def P91969948758510598.Spec : Prop :=
  ∀ n, P91969948758510598.a n = A305716 (n + 1)

end A305716

/-! ## A305716.P5241576372907008787

`A086436(4*(n+1))`
-/

namespace A305716.P5241576372907008787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (4 * (n + 1))

end

end A305716.P5241576372907008787

namespace A305716

/-- `A086436(4*(n+1))` -/
def P5241576372907008787.Spec : Prop :=
  ∀ n, P5241576372907008787.a n = A305716 (n + 1)

end A305716

/-! ## A305716.P15775957117842217591

`A144494(4*(n+1))`
-/

namespace A305716.P15775957117842217591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144494 (4 * (n + 1))

end

end A305716.P15775957117842217591

namespace A305716

/-- `A144494(4*(n+1))` -/
def P15775957117842217591.Spec : Prop :=
  ∀ n, P15775957117842217591.a n = A305716 (n + 1)

end A305716

/-! ## A305716.P11617579840667629328

`A249901(4*(n+1))`
-/

namespace A305716.P11617579840667629328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249901 (4 * (n + 1))

end

end A305716.P11617579840667629328

namespace A305716

/-- `A249901(4*(n+1))` -/
def P11617579840667629328.Spec : Prop :=
  ∀ n, P11617579840667629328.a n = A305716 (n + 1)

end A305716

/-! ## A305716.P11452386002213643425

`A289641(4*(n+1))`
-/

namespace A305716.P11452386002213643425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289641 (4 * (n + 1))

end

end A305716.P11452386002213643425

namespace A305716

/-- `A289641(4*(n+1))` -/
def P11452386002213643425.Spec : Prop :=
  ∀ n, P11452386002213643425.a n = A305716 (n + 1)

end A305716

/-! ## A305716.P11622161360212789431

`A359360(4*(n+1))`
-/

namespace A305716.P11622161360212789431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359360 (4 * (n + 1))

end

end A305716.P11622161360212789431

namespace A305716

/-- `A359360(4*(n+1))` -/
def P11622161360212789431.Spec : Prop :=
  ∀ n, P11622161360212789431.a n = A305716 (n + 1)

end A305716

/-! ## A305716.P6969014461761824057

`A378309(4*(n+1))`
-/

namespace A305716.P6969014461761824057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378309 (4 * (n + 1))

end

end A305716.P6969014461761824057

namespace A305716

/-- `A378309(4*(n+1))` -/
def P6969014461761824057.Spec : Prop :=
  ∀ n, P6969014461761824057.a n = A305716 (n + 1)

end A305716

/-! ## A305716.P14964307688067945677

`A252736(8*(n+1))`
-/

namespace A305716.P14964307688067945677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (8 * (n + 1))

end

end A305716.P14964307688067945677

namespace A305716

/-- `A252736(8*(n+1))` -/
def P14964307688067945677.Spec : Prop :=
  ∀ n, P14964307688067945677.a n = A305716 (n + 1)

end A305716

/-! ## A305716.P9309085727047632926

`a(A089196(n))+1` with `a(0)=2`
-/

namespace A305716.P9309085727047632926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (A089196 n).toNat + 1

end

end A305716.P9309085727047632926

namespace A305716

/-- `a(A089196(n))+1` -/
def P9309085727047632926.Spec : Prop :=
  ∀ n, (P9309085727047632926.a n : ℤ) = A305716 (n + 1)

end A305716

/-! ## A305716.P14861685127477013082

`A058321(∑{e}[n+1, #])`
-/

namespace A305716.P14861685127477013082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058321 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A305716.P14861685127477013082

namespace A305716

/-- `A058321(∑{e}[n+1, #])` -/
def P14861685127477013082.Spec : Prop :=
  ∀ n, P14861685127477013082.a n = A305716 (n + 1)

end A305716

/-! ## A305716.P16965650635812587856

`A172974(∑{e}[n+1, #])`
-/

namespace A305716.P16965650635812587856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172974 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A305716.P16965650635812587856

namespace A305716

/-- `A172974(∑{e}[n+1, #])` -/
def P16965650635812587856.Spec : Prop :=
  ∀ n, P16965650635812587856.a n = A305716 (n + 1)

end A305716

/-!
# A305717: Number of distinct Heronian triangles with perimeter A051518(n).

The programs for A305717, there is no canonical definition to state claims against.
-/

/-! ## A305717.P2773095756999014281

`A051516(A051518(n+1))`
-/

namespace A305717.P2773095756999014281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (A051518 (n + 1)).toNat

end

end A305717.P2773095756999014281

/-! ## A305717.P976002723187561353

`A051517(A305704(n+1))`
-/

namespace A305717.P976002723187561353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051517 (A305704 (n + 1)).toNat

end

end A305717.P976002723187561353

/-! ## A305717.P939576979886195340

`A051516(2*A305704(n+1))`
-/

namespace A305717.P939576979886195340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (2 * A305704 (n + 1)).toNat

end

end A305717.P939576979886195340

/-! ## A305717.P11689648986317189705

`A051517(A051518(n+1)/2)`
-/

namespace A305717.P11689648986317189705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051517 (SequenceMachineLib.roundAway ((A051518 (n + 1) : ℚ) / 2)).toNat

end

end A305717.P11689648986317189705

/-! ## A305717.P15047013615152959067

`∑{d}[A051518(n+1), A070138(#)]`
-/

namespace A305717.P15047013615152959067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A070138 d

end

end A305717.P15047013615152959067

/-! ## A305717.P4884354635886556337

`A051516(lt[n, A051516(n+1)+n]+1)`
-/

namespace A305717.P4884354635886556337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A305717.P4884354635886556337

/-! ## A305717.P13044443827943826230

`A051516(comp[n*(1-A051516(n+1))]+1)`
-/

namespace A305717.P13044443827943826230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A051516 (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A305717.P13044443827943826230

/-! ## A305717.P1937461093831410069

`A051516(A305704(n+1)+A305704(n+1))`
-/

namespace A305717.P1937461093831410069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (A305704 (n + 1) + A305704 (n + 1)).toNat

end

end A305717.P1937461093831410069

/-! ## A305717.P11898776478308462653

`A051516(A334936(n+1)/2)`
-/

namespace A305717.P11898776478308462653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (SequenceMachineLib.roundAway ((A334936 (n + 1) : ℚ) / 2)).toNat

end

end A305717.P11898776478308462653

/-!
# A305719: Numbers whose squares have the same first and last digits.

The programs for A305719, there is no canonical definition to state claims against.
-/

/-! ## A305719.P2810909829364919820

`eq[1, A123896(n)%10]`
-/

namespace A305719.P2810909829364919820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123896 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A305719.P2810909829364919820

/-! ## A305719.P5453673570578238678

`record[A056926(A128827(n+1))]`
-/

namespace A305719.P5453673570578238678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A128827 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305719.P5453673570578238678

/-! ## A305719.P16808415352317273467

`eq[1, A010879(A123896(n))]`
-/

namespace A305719.P16808415352317273467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A123896 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A305719.P16808415352317273467

/-!
# A305720: Square array T(n, k) read by antidiagonals, n > 0 and k > 0; for any prime number p, the p-adic valuation of T(n, k) is the product of the p-adic valuations of n and of k.

The programs for A305720, there is no canonical definition to state claims against.
-/

/-! ## A305720.P7361706998969516506

`A003989(n+1)^∏{e}[A003990(n+1), #]`
-/

namespace A305720.P7361706998969516506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1) ^ (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A305720.P7361706998969516506

/-! ## A305720.P4974952590994800300

`A003989(n+1)^A000688(A003990(n+1))`
-/

namespace A305720.P4974952590994800300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003989 (n + 1) : ℚ) ^ (A000688 (A003990 (n + 1)).toNat : ℤ)

end

end A305720.P4974952590994800300

/-! ## A305720.P7858377423718042494

`A287957(n+1)^A005361(A287958(n+1))`
-/

namespace A305720.P7858377423718042494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287957 (n + 1) : ℚ) ^ (A005361 (A287958 (n + 1)).toNat : ℤ)

end

end A305720.P7858377423718042494

/-! ## A305720.P5469337597630905545

`A002260(A286101(n+1))^A000688(A003990(n+1))`
-/

namespace A305720.P5469337597630905545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (A286101 (n + 1)).toNat : ℚ) ^ (A000688 (A003990 (n + 1)).toNat : ℤ)

end

end A305720.P5469337597630905545

/-! ## A305720.P1464466203401005762

`A003989(n+1)^A005361(A002260(n+1)*A112543(n+1))`
-/

namespace A305720.P1464466203401005762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003989 (n + 1) : ℚ) ^ (A005361 (A002260 (n + 1) * A112543 (n + 1)).toNat : ℤ)

end

end A305720.P1464466203401005762

/-! ## A305720.P16603062143771424123

`A050873(A003057(n+2)+n)^A005361(A003989(n+1)*A089913(n+1))`
-/

namespace A305720.P16603062143771424123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050873 (A003057 (n + 2) + (n : ℤ)).toNat : ℚ) ^ (A005361 (A003989 (n + 1) * A089913 (n + 1)).toNat : ℤ)

end

end A305720.P16603062143771424123

/-! ## A305720.P11828464817122785096

`(A003057(n+2)-A074712(n+1))^A005361(A003989(n+1)*A089913(n+1))`
-/

namespace A305720.P11828464817122785096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) - A074712 (n + 1) : ℚ) ^ (A005361 (A003989 (n + 1) * A089913 (n + 1)).toNat : ℤ)

end

end A305720.P11828464817122785096

/-! ## A305720.P5949066849922854498

`A003989(n+1)^A005361(A091256(n+1))`
-/

namespace A305720.P5949066849922854498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003989 (n + 1) : ℚ) ^ (A005361 (A091256 (n + 1)).toNat : ℤ)

end

end A305720.P5949066849922854498

/-! ## A305720.P6027089068993320990

`gcd(A143180(n)², A329655(n+1))`
-/

namespace A305720.P6027089068993320990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143180 n ^ 2) (A329655 (n + 1))

end

end A305720.P6027089068993320990

/-!
# A305721: Crystal ball sequence for the lattice C_7.

The programs for A305721, the canonical program `A305721.P5842318793537541038` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305721 has offset 0).

The definition of A305721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305721.P5842318793537541038

`∑[A019563(n)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A305721

/-- `∑[A019563(n)]` -/
def P5842318793537541038.Spec : Prop :=
  ∀ n, P5842318793537541038.a n = A305721 n

theorem P5842318793537541038.correct : P5842318793537541038.Spec := by
  intro n
  simp only [A305721]

end A305721

/-! ## A305721.P14910235343995942111

`∑[A008415(2*n)]`
-/

namespace A305721.P14910235343995942111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008415 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305721.P14910235343995942111

namespace A305721

/-- `∑[A008415(2*n)]` -/
def P14910235343995942111.Spec : Prop :=
  ∀ n, P14910235343995942111.a n = A305721 n

end A305721

/-! ## A305721.P5187061899431276311

`A008415(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A305721.P5187061899431276311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008415 (n + n) + a (n - 1)

end

end A305721.P5187061899431276311

namespace A305721

/-- `A008415(n+n)+a(n-1)` -/
def P5187061899431276311.Spec : Prop :=
  ∀ n, P5187061899431276311.a n = A305721 n

end A305721

/-! ## A305721.P6306693352103903183

`A099193(Δ[n²])`
-/

namespace A305721.P6306693352103903183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099193 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A305721.P6306693352103903183

namespace A305721

/-- `A099193(Δ[n²])` -/
def P6306693352103903183.Spec : Prop :=
  ∀ n, P6306693352103903183.a n = A305721 n

end A305721

/-! ## A305721.P10951624118119455216

`A035601(Δ[n²])/2`
-/

namespace A305721.P10951624118119455216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035601 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A305721.P10951624118119455216

namespace A305721

/-- `A035601(Δ[n²])/2` -/
def P10951624118119455216.Spec : Prop :=
  ∀ n, P10951624118119455216.a n = (A305721 n : ℚ)

end A305721

/-! ## A305721.P15222924088857951520

`A001849(2*n)-A099193(2*n)`
-/

namespace A305721.P15222924088857951520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001849 (2 * n) - A099193 (2 * n)

end

end A305721.P15222924088857951520

namespace A305721

/-- `A001849(2*n)-A099193(2*n)` -/
def P15222924088857951520.Spec : Prop :=
  ∀ n, P15222924088857951520.a n = A305721 n

end A305721

/-! ## A305721.P6282211843207264168

`(A001849(2*n)+A001848(2*n))/2`
-/

namespace A305721.P6282211843207264168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001849 (2 * n) + A001848 (2 * n) : ℚ) / 2

end

end A305721.P6282211843207264168

namespace A305721

/-- `(A001849(2*n)+A001848(2*n))/2` -/
def P6282211843207264168.Spec : Prop :=
  ∀ n, P6282211843207264168.a n = (A305721 n : ℚ)

end A305721

/-! ## A305721.P259586758368645267

`A001849(2*n)-A035601(2*n)/2`
-/

namespace A305721.P259586758368645267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001849 (2 * n) : ℚ) - (A035601 (2 * n) : ℚ) / 2

end

end A305721.P259586758368645267

namespace A305721

/-- `A001849(2*n)-A035601(2*n)/2` -/
def P259586758368645267.Spec : Prop :=
  ∀ n, P259586758368645267.a n = (A305721 n : ℚ)

end A305721

/-! ## A305721.P3242768683231476831

`A047664(2*n+1)-A047663(2*n+1)`
-/

namespace A305721.P3242768683231476831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047664 (2 * n + 1) - A047663 (2 * n + 1)

end

end A305721.P3242768683231476831

namespace A305721

/-- `A047664(2*n+1)-A047663(2*n+1)` -/
def P3242768683231476831.Spec : Prop :=
  ∀ n, P3242768683231476831.a n = A305721 n

end A305721

/-! ## A305721.P4736959692264933738

`A035601(2*n+1)-A099193(2*n+1)`
-/

namespace A305721.P4736959692264933738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035601 (2 * n + 1) - A099193 (2 * n + 1)

end

end A305721.P4736959692264933738

namespace A305721

/-- `A035601(2*n+1)-A099193(2*n+1)` -/
def P4736959692264933738.Spec : Prop :=
  ∀ n, P4736959692264933738.a n = A305721 n

end A305721

/-! ## A305721.P3009562363683380577

`gcd(2, A168116(2*n+1))*A099193(2*n+1)`
-/

namespace A305721.P3009562363683380577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A168116 (2 * n + 1)) : ℤ) * A099193 (2 * n + 1)

end

end A305721.P3009562363683380577

namespace A305721

/-- `gcd(2, A168116(2*n+1))*A099193(2*n+1)` -/
def P3009562363683380577.Spec : Prop :=
  ∀ n, P3009562363683380577.a n = A305721 n

end A305721

/-! ## A305721.P4498099800137098533

`A099193(2*n+1)²/A099193(A004273(n+1))`
-/

namespace A305721.P4498099800137098533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099193 (2 * n + 1) ^ 2 : ℚ) / (A099193 (A004273 (n + 1)).toNat : ℚ)

end

end A305721.P4498099800137098533

namespace A305721

/-- `A099193(2*n+1)²/A099193(A004273(n+1))` -/
def P4498099800137098533.Spec : Prop :=
  ∀ n, P4498099800137098533.a n = (A305721 n : ℚ)

end A305721

/-! ## A305721.P6741635608741844395

`A035601(2*n+1)*A099193(n+1)/A035601(n+1)`
-/

namespace A305721.P6741635608741844395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035601 (2 * n + 1) * A099193 (n + 1) : ℚ) / (A035601 (n + 1) : ℚ)

end

end A305721.P6741635608741844395

namespace A305721

/-- `A035601(2*n+1)*A099193(n+1)/A035601(n+1)` -/
def P6741635608741844395.Spec : Prop :=
  ∀ n, P6741635608741844395.a n = (A305721 n : ℚ)

end A305721

/-! ## A305721.P15199381548333895849

`gcd(A047786(n+1)*A099193(2*n+1), A099193(2*n+1))`
-/

namespace A305721.P15199381548333895849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047786 (n + 1) * A099193 (2 * n + 1)) (A099193 (2 * n + 1))

end

end A305721.P15199381548333895849

namespace A305721

/-- `gcd(A047786(n+1)*A099193(2*n+1), A099193(2*n+1))` -/
def P15199381548333895849.Spec : Prop :=
  ∀ n, (P15199381548333895849.a n : ℤ) = A305721 n

end A305721

/-! ## A305721.P2076698992985410165

`A099193(2*n+1)%A035602(2*(n+2))`
-/

namespace A305721.P2076698992985410165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099193 (2 * n + 1)) (A035602 (2 * (n + 2)))

end

end A305721.P2076698992985410165

namespace A305721

/-- `A099193(2*n+1)%A035602(2*(n+2))` -/
def P2076698992985410165.Spec : Prop :=
  ∀ n, P2076698992985410165.a n = A305721 n

end A305721

/-! ## A305721.P17555867281020154082

`A099193(2*n+1)%A227485(n)`
-/

namespace A305721.P17555867281020154082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099193 (2 * n + 1)) (A227485 n)

end

end A305721.P17555867281020154082

namespace A305721

/-- `A099193(2*n+1)%A227485(n)` -/
def P17555867281020154082.Spec : Prop :=
  ∀ n, P17555867281020154082.a n = A305721 n

end A305721

/-!
# A305722: Crystal ball sequence for the lattice C_8.

The programs for A305722, the canonical program `A305722.P15996365835608789780` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305722 has offset 0).

The definition of A305722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305722.P15996365835608789780

`∑[A019564(n)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A305722

/-- `∑[A019564(n)]` -/
def P15996365835608789780.Spec : Prop :=
  ∀ n, P15996365835608789780.a n = A305722 n

theorem P15996365835608789780.correct : P15996365835608789780.Spec := by
  intro n
  simp only [A305722]

end A305722

/-! ## A305722.P8674325385765298954

`∑[A008416(2*n)]`
-/

namespace A305722.P8674325385765298954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008416 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305722.P8674325385765298954

namespace A305722

/-- `∑[A008416(2*n)]` -/
def P8674325385765298954.Spec : Prop :=
  ∀ n, P8674325385765298954.a n = A305722 n

end A305722

/-! ## A305722.P997994431296882618

`A008416(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A305722.P997994431296882618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008416 (n + n) + a (n - 1)

end

end A305722.P997994431296882618

namespace A305722

/-- `A008416(n+n)+a(n-1)` -/
def P997994431296882618.Spec : Prop :=
  ∀ n, P997994431296882618.a n = A305722 n

end A305722

/-! ## A305722.P9543302451405910752

`A099195(Δ[n²])`
-/

namespace A305722.P9543302451405910752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099195 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A305722.P9543302451405910752

namespace A305722

/-- `A099195(Δ[n²])` -/
def P9543302451405910752.Spec : Prop :=
  ∀ n, P9543302451405910752.a n = A305722 n

end A305722

/-! ## A305722.P3248226898564567559

`A035602(Δ[n²])/2`
-/

namespace A305722.P3248226898564567559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035602 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A305722.P3248226898564567559

namespace A305722

/-- `A035602(Δ[n²])/2` -/
def P3248226898564567559.Spec : Prop :=
  ∀ n, P3248226898564567559.a n = (A305722 n : ℚ)

end A305722

/-! ## A305722.P3486940793374444920

`lcm(2*n+1, A099195(2*n+1))`
-/

namespace A305722.P3486940793374444920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A099195 (2 * n + 1))

end

end A305722.P3486940793374444920

namespace A305722

/-- `lcm(2*n+1, A099195(2*n+1))` -/
def P3486940793374444920.Spec : Prop :=
  ∀ n, (P3486940793374444920.a n : ℤ) = A305722 n

end A305722

/-! ## A305722.P17371139326737878743

`A099195(2*n)+A001849(2*n)`
-/

namespace A305722.P17371139326737878743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099195 (2 * n) + A001849 (2 * n)

end

end A305722.P17371139326737878743

namespace A305722

/-- `A099195(2*n)+A001849(2*n)` -/
def P17371139326737878743.Spec : Prop :=
  ∀ n, P17371139326737878743.a n = A305722 n

end A305722

/-! ## A305722.P8242061055732024231

`A008417(2*n)-A099195(2*n)`
-/

namespace A305722.P8242061055732024231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008417 (2 * n) - A099195 (2 * n)

end

end A305722.P8242061055732024231

namespace A305722

/-- `A008417(2*n)-A099195(2*n)` -/
def P8242061055732024231.Spec : Prop :=
  ∀ n, P8242061055732024231.a n = A305722 n

end A305722

/-! ## A305722.P12515124546998926709

`A099195(2*n+1)+A000007(n+1)`
-/

namespace A305722.P12515124546998926709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099195 (2 * n + 1) + A000007 (n + 1)

end

end A305722.P12515124546998926709

namespace A305722

/-- `A099195(2*n+1)+A000007(n+1)` -/
def P12515124546998926709.Spec : Prop :=
  ∀ n, P12515124546998926709.a n = A305722 n

end A305722

/-! ## A305722.P2733482344097300845

`(A008417(2*n)+A001849(2*n))/2`
-/

namespace A305722.P2733482344097300845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008417 (2 * n) + A001849 (2 * n) : ℚ) / 2

end

end A305722.P2733482344097300845

namespace A305722

/-- `(A008417(2*n)+A001849(2*n))/2` -/
def P2733482344097300845.Spec : Prop :=
  ∀ n, P2733482344097300845.a n = (A305722 n : ℚ)

end A305722

/-! ## A305722.P7451022962885772117

`A008417(2*n)-A035602(2*n)/2`
-/

namespace A305722.P7451022962885772117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008417 (2 * n) : ℚ) - (A035602 (2 * n) : ℚ) / 2

end

end A305722.P7451022962885772117

namespace A305722

/-- `A008417(2*n)-A035602(2*n)/2` -/
def P7451022962885772117.Spec : Prop :=
  ∀ n, P7451022962885772117.a n = (A305722 n : ℚ)

end A305722

/-! ## A305722.P3283390879619692966

`A035602(2*n+1)-A099195(2*n+1)`
-/

namespace A305722.P3283390879619692966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035602 (2 * n + 1) - A099195 (2 * n + 1)

end

end A305722.P3283390879619692966

namespace A305722

/-- `A035602(2*n+1)-A099195(2*n+1)` -/
def P3283390879619692966.Spec : Prop :=
  ∀ n, P3283390879619692966.a n = A305722 n

end A305722

/-! ## A305722.P7382728617931513710

`A099195(2*n+1)²/A099195(A004273(n+1))`
-/

namespace A305722.P7382728617931513710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099195 (2 * n + 1) ^ 2 : ℚ) / (A099195 (A004273 (n + 1)).toNat : ℚ)

end

end A305722.P7382728617931513710

namespace A305722

/-- `A099195(2*n+1)²/A099195(A004273(n+1))` -/
def P7382728617931513710.Spec : Prop :=
  ∀ n, P7382728617931513710.a n = (A305722 n : ℚ)

end A305722

/-! ## A305722.P12380400013588077737

`A035602(2*n+1)*A099195(n+1)/A035602(n+1)`
-/

namespace A305722.P12380400013588077737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035602 (2 * n + 1) * A099195 (n + 1) : ℚ) / (A035602 (n + 1) : ℚ)

end

end A305722.P12380400013588077737

namespace A305722

/-- `A035602(2*n+1)*A099195(n+1)/A035602(n+1)` -/
def P12380400013588077737.Spec : Prop :=
  ∀ n, P12380400013588077737.a n = (A305722 n : ℚ)

end A305722

/-! ## A305722.P14107799099636278848

`A099195(2*n+1)%A035602(2*(n+2))`
-/

namespace A305722.P14107799099636278848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099195 (2 * n + 1)) (A035602 (2 * (n + 2)))

end

end A305722.P14107799099636278848

namespace A305722

/-- `A099195(2*n+1)%A035602(2*(n+2))` -/
def P14107799099636278848.Spec : Prop :=
  ∀ n, P14107799099636278848.a n = A305722 n

end A305722

/-! ## A305722.P13196651237911744008

`A099195(2*n+1)%A227485(n)`
-/

namespace A305722.P13196651237911744008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099195 (2 * n + 1)) (A227485 n)

end

end A305722.P13196651237911744008

namespace A305722

/-- `A099195(2*n+1)%A227485(n)` -/
def P13196651237911744008.Spec : Prop :=
  ∀ n, P13196651237911744008.a n = A305722 n

end A305722

/-!
# A305723: Crystal ball sequence for the lattice C_9.

The programs for A305723, the canonical program `A305723.P14653554493018338077` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305723 has offset 0).

The definition of A305723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305723.P14653554493018338077

`∑[A035746(n)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A305723

/-- `∑[A035746(n)]` -/
def P14653554493018338077.Spec : Prop :=
  ∀ n, P14653554493018338077.a n = A305723 n

theorem P14653554493018338077.correct : P14653554493018338077.Spec := by
  intro n
  simp only [A305723]

end A305723

/-! ## A305723.P3352657579589895573

`∑[A008418(2*n)]`
-/

namespace A305723.P3352657579589895573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008418 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305723.P3352657579589895573

namespace A305723

/-- `∑[A008418(2*n)]` -/
def P3352657579589895573.Spec : Prop :=
  ∀ n, P3352657579589895573.a n = A305723 n

end A305723

/-! ## A305723.P5349546456971728981

`A008418(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A305723.P5349546456971728981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008418 (n + n) + a (n - 1)

end

end A305723.P5349546456971728981

namespace A305723

/-- `A008418(n+n)+a(n-1)` -/
def P5349546456971728981.Spec : Prop :=
  ∀ n, P5349546456971728981.a n = A305723 n

end A305723

/-! ## A305723.P4087762918615817690

`A099196(Δ[n²])`
-/

namespace A305723.P4087762918615817690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099196 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A305723.P4087762918615817690

namespace A305723

/-- `A099196(Δ[n²])` -/
def P4087762918615817690.Spec : Prop :=
  ∀ n, P4087762918615817690.a n = A305723 n

end A305723

/-! ## A305723.P12979932827998741240

`A035603(Δ[n²])/2`
-/

namespace A305723.P12979932827998741240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035603 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A305723.P12979932827998741240

namespace A305723

/-- `A035603(Δ[n²])/2` -/
def P12979932827998741240.Spec : Prop :=
  ∀ n, P12979932827998741240.a n = (A305723 n : ℚ)

end A305723

/-! ## A305723.P5528029851709149717

`record[A099196(A000265(n+1))]`
-/

namespace A305723.P5528029851709149717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099196 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305723.P5528029851709149717

namespace A305723

/-- `record[A099196(A000265(n+1))]` -/
def P5528029851709149717.Spec : Prop :=
  ∀ n, P5528029851709149717.a n = A305723 n

end A305723

/-! ## A305723.P11719158807814751868

`A099196(2*n)+A008417(2*n)`
-/

namespace A305723.P11719158807814751868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099196 (2 * n) + A008417 (2 * n)

end

end A305723.P11719158807814751868

namespace A305723

/-- `A099196(2*n)+A008417(2*n)` -/
def P11719158807814751868.Spec : Prop :=
  ∀ n, P11719158807814751868.a n = A305723 n

end A305723

/-! ## A305723.P2206432815576356454

`A008419(2*n)-A099196(2*n)`
-/

namespace A305723.P2206432815576356454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008419 (2 * n) - A099196 (2 * n)

end

end A305723.P2206432815576356454

namespace A305723

/-- `A008419(2*n)-A099196(2*n)` -/
def P2206432815576356454.Spec : Prop :=
  ∀ n, P2206432815576356454.a n = A305723 n

end A305723

/-! ## A305723.P4471473253760180518

`(A008419(2*n)+A008417(2*n))/2`
-/

namespace A305723.P4471473253760180518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008419 (2 * n) + A008417 (2 * n) : ℚ) / 2

end

end A305723.P4471473253760180518

namespace A305723

/-- `(A008419(2*n)+A008417(2*n))/2` -/
def P4471473253760180518.Spec : Prop :=
  ∀ n, P4471473253760180518.a n = (A305723 n : ℚ)

end A305723

/-! ## A305723.P11662461088793393025

`A008419(2*n)-A035603(2*n)/2`
-/

namespace A305723.P11662461088793393025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008419 (2 * n) : ℚ) - (A035603 (2 * n) : ℚ) / 2

end

end A305723.P11662461088793393025

namespace A305723

/-- `A008419(2*n)-A035603(2*n)/2` -/
def P11662461088793393025.Spec : Prop :=
  ∀ n, P11662461088793393025.a n = (A305723 n : ℚ)

end A305723

/-! ## A305723.P5595168896539873110

`A035603(2*n+1)-A099196(2*n+1)`
-/

namespace A305723.P5595168896539873110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035603 (2 * n + 1) - A099196 (2 * n + 1)

end

end A305723.P5595168896539873110

namespace A305723

/-- `A035603(2*n+1)-A099196(2*n+1)` -/
def P5595168896539873110.Spec : Prop :=
  ∀ n, P5595168896539873110.a n = A305723 n

end A305723

/-! ## A305723.P616009711698388521

`A016969(n)%2*A099196(A005408(n))`
-/

namespace A305723.P616009711698388521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016969 n) 2 * A099196 (A005408 n).toNat

end

end A305723.P616009711698388521

namespace A305723

/-- `A016969(n)%2*A099196(A005408(n))` -/
def P616009711698388521.Spec : Prop :=
  ∀ n, P616009711698388521.a n = A305723 n

end A305723

/-! ## A305723.P16091236812855221892

`A099196(2*n+1)²/A099196(A004273(n+1))`
-/

namespace A305723.P16091236812855221892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099196 (2 * n + 1) ^ 2 : ℚ) / (A099196 (A004273 (n + 1)).toNat : ℚ)

end

end A305723.P16091236812855221892

namespace A305723

/-- `A099196(2*n+1)²/A099196(A004273(n+1))` -/
def P16091236812855221892.Spec : Prop :=
  ∀ n, P16091236812855221892.a n = (A305723 n : ℚ)

end A305723

/-! ## A305723.P5415265118217118571

`A099196(A000265(2*n+1))²/A099196(2*n+1)`
-/

namespace A305723.P5415265118217118571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099196 (A000265 (2 * n + 1)).toNat ^ 2 : ℚ) / (A099196 (2 * n + 1) : ℚ)

end

end A305723.P5415265118217118571

namespace A305723

/-- `A099196(A000265(2*n+1))²/A099196(2*n+1)` -/
def P5415265118217118571.Spec : Prop :=
  ∀ n, P5415265118217118571.a n = (A305723 n : ℚ)

end A305723

/-! ## A305723.P15792243700125151879

`A035603(2*n+1)*A099196(n+1)/A035603(n+1)`
-/

namespace A305723.P15792243700125151879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035603 (2 * n + 1) * A099196 (n + 1) : ℚ) / (A035603 (n + 1) : ℚ)

end

end A305723.P15792243700125151879

namespace A305723

/-- `A035603(2*n+1)*A099196(n+1)/A035603(n+1)` -/
def P15792243700125151879.Spec : Prop :=
  ∀ n, P15792243700125151879.a n = (A305723 n : ℚ)

end A305723

/-! ## A305723.P14689622418251765874

`gcd(A099196(2*n+1)*A099196(n+1), A099196(2*n+1))`
-/

namespace A305723.P14689622418251765874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099196 (2 * n + 1) * A099196 (n + 1)) (A099196 (2 * n + 1))

end

end A305723.P14689622418251765874

namespace A305723

/-- `gcd(A099196(2*n+1)*A099196(n+1), A099196(2*n+1))` -/
def P14689622418251765874.Spec : Prop :=
  ∀ n, (P14689622418251765874.a n : ℤ) = A305723 n

end A305723

/-! ## A305723.P12670947400578414257

`A099196(A005408(n))%A053805(2*n+3)`
-/

namespace A305723.P12670947400578414257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099196 (A005408 n).toNat) (A053805 (2 * n + 3))

end

end A305723.P12670947400578414257

namespace A305723

/-- `A099196(A005408(n))%A053805(2*n+3)` -/
def P12670947400578414257.Spec : Prop :=
  ∀ n, P12670947400578414257.a n = A305723 n

end A305723

/-!
# A305724: Crystal ball sequence for the lattice C_10.

The programs for A305724, the canonical program `A305724.P8769741493615946767` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305724 has offset 0).

The definition of A305724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305724.P8769741493615946767

`∑[A035747(n)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A305724

/-- `∑[A035747(n)]` -/
def P8769741493615946767.Spec : Prop :=
  ∀ n, P8769741493615946767.a n = A305724 n

theorem P8769741493615946767.correct : P8769741493615946767.Spec := by
  intro n
  simp only [A305724]

end A305724

/-! ## A305724.P12386584756279364278

`∑[A008420(2*n)]`
-/

namespace A305724.P12386584756279364278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008420 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305724.P12386584756279364278

namespace A305724

/-- `∑[A008420(2*n)]` -/
def P12386584756279364278.Spec : Prop :=
  ∀ n, P12386584756279364278.a n = A305724 n

end A305724

/-! ## A305724.P11744772659875765130

`A008420(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A305724.P11744772659875765130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008420 (n + n) + a (n - 1)

end

end A305724.P11744772659875765130

namespace A305724

/-- `A008420(n+n)+a(n-1)` -/
def P11744772659875765130.Spec : Prop :=
  ∀ n, P11744772659875765130.a n = A305724 n

end A305724

/-! ## A305724.P15008086290424048752

`A099197(Δ[n²])`
-/

namespace A305724.P15008086290424048752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099197 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A305724.P15008086290424048752

namespace A305724

/-- `A099197(Δ[n²])` -/
def P15008086290424048752.Spec : Prop :=
  ∀ n, P15008086290424048752.a n = A305724 n

end A305724

/-! ## A305724.P12686895132854054954

`A035604(Δ[n²])/2`
-/

namespace A305724.P12686895132854054954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035604 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A305724.P12686895132854054954

namespace A305724

/-- `A035604(Δ[n²])/2` -/
def P12686895132854054954.Spec : Prop :=
  ∀ n, P12686895132854054954.a n = (A305724 n : ℚ)

end A305724

/-! ## A305724.P51540380092542003

`(A008421(2*n)+A008419(2*n))/2`
-/

namespace A305724.P51540380092542003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008421 (2 * n) + A008419 (2 * n) : ℚ) / 2

end

end A305724.P51540380092542003

namespace A305724

/-- `(A008421(2*n)+A008419(2*n))/2` -/
def P51540380092542003.Spec : Prop :=
  ∀ n, P51540380092542003.a n = (A305724 n : ℚ)

end A305724

/-! ## A305724.P10070837202466121468

`A008421(2*n)-A035604(2*n)/2`
-/

namespace A305724.P10070837202466121468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008421 (2 * n) : ℚ) - (A035604 (2 * n) : ℚ) / 2

end

end A305724.P10070837202466121468

namespace A305724

/-- `A008421(2*n)-A035604(2*n)/2` -/
def P10070837202466121468.Spec : Prop :=
  ∀ n, P10070837202466121468.a n = (A305724 n : ℚ)

end A305724

/-! ## A305724.P14153956003948379594

`A035604(2*n+1)-A099197(2*n+1)`
-/

namespace A305724.P14153956003948379594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035604 (2 * n + 1) - A099197 (2 * n + 1)

end

end A305724.P14153956003948379594

namespace A305724

/-- `A035604(2*n+1)-A099197(2*n+1)` -/
def P14153956003948379594.Spec : Prop :=
  ∀ n, P14153956003948379594.a n = A305724 n

end A305724

/-! ## A305724.P14568443726267637422

`A099197(2*n+1)²/A099197(A004273(n+1))`
-/

namespace A305724.P14568443726267637422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099197 (2 * n + 1) ^ 2 : ℚ) / (A099197 (A004273 (n + 1)).toNat : ℚ)

end

end A305724.P14568443726267637422

namespace A305724

/-- `A099197(2*n+1)²/A099197(A004273(n+1))` -/
def P14568443726267637422.Spec : Prop :=
  ∀ n, P14568443726267637422.a n = (A305724 n : ℚ)

end A305724

/-! ## A305724.P2815087947570616360

`A035604(2*n+1)*A099197(n+1)/A035604(n+1)`
-/

namespace A305724.P2815087947570616360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035604 (2 * n + 1) * A099197 (n + 1) : ℚ) / (A035604 (n + 1) : ℚ)

end

end A305724.P2815087947570616360

namespace A305724

/-- `A035604(2*n+1)*A099197(n+1)/A035604(n+1)` -/
def P2815087947570616360.Spec : Prop :=
  ∀ n, P2815087947570616360.a n = (A305724 n : ℚ)

end A305724

/-!
# A305725: a(n) is the n-th term of the sequence that shifts left by one position when Euler transform is applied n times; a(0) = 0.

The programs for A305725, there is no canonical definition to state claims against.
-/

/-! ## A305725.P17222062591470193117

`A026806(A037992(n))-A266477(n)`
-/

namespace A305725.P17222062591470193117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (A037992 n).toNat - A266477 n

end

end A305725.P17222062591470193117

/-! ## A305725.P5606070601745427035

`xor(5, A187211(2*a(n-1)-a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A305725.P5606070601745427035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.xor 5 (A187211 (2 * a (n - 1) - a (n - 2)).toNat)

end

end A305725.P5606070601745427035

/-!
# A305726: Totients t the solutions of which cannot be divided by a prime to yield the solutions of a totient < t.

The programs for A305726, there is no canonical definition to state claims against.
-/

/-! ## A305726.P9205756393517117291

`∩[A124391(n+1), A191743(n+1)]`
-/

namespace A305726.P9205756393517117291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305726.P9205756393517117291

/-! ## A305726.P12064404388962914739

`record[A191743(n+1)%A054781(2*(n+2))]`
-/

namespace A305726.P12064404388962914739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191743 (n + 1)) (A054781 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305726.P12064404388962914739

/-!
# A305727: Shifts left when Euler transform applied 10 times.

The programs for A305727, there is no canonical definition to state claims against.
-/

/-! ## A305727.P16986183196099598708

`A057427(n)*A144042(A046691(n+7)-5)`
-/

namespace A305727.P16986183196099598708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A144042 (A046691 (n + 7) - 5).toNat

end

end A305727.P16986183196099598708

/-! ## A305727.P5405728825861087511

`A144042(A046691(n+7)-5)*A178334(n)`
-/

namespace A305727.P5405728825861087511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144042 (A046691 (n + 7) - 5).toNat * A178334 n

end

end A305727.P5405728825861087511

/-! ## A305727.P4223731269156796720

`char[A007318(n)]*A144042(A046691(n+7)-5)`
-/

namespace A305727.P4223731269156796720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A144042 (A046691 (n + 7) - 5).toNat

end

end A305727.P4223731269156796720

/-! ## A305727.P16660800187662358068

`A144042(A046691(n+7)-5)*A157928(n+1)`
-/

namespace A305727.P16660800187662358068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144042 (A046691 (n + 7) - 5).toNat * A157928 (n + 1)

end

end A305727.P16660800187662358068

/-! ## A305727.P8285670232224559133

`A144042(A046691(n+7)-5)%A132961(n+1)`
-/

namespace A305727.P8285670232224559133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144042 (A046691 (n + 7) - 5).toNat) (A132961 (n + 1))

end

end A305727.P8285670232224559133

/-!
# A305728: Numbers of the form 216*p^3, where p is a Pythagorean prime (A002144).

The programs for A305728, the canonical program `A305728.P16486474473058137855` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305728 has offset 1).

The definition of A305728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305728.P16486474473058137855

`(2*A055131(n))^3`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A305728

/-- `(2*A055131(n))^3` -/
def P16486474473058137855.Spec : Prop :=
  ∀ n, P16486474473058137855.a n = A305728 (n + 1)

theorem P16486474473058137855.correct : P16486474473058137855.Spec := by
  intro n
  simp only [A305728, Nat.add_sub_cancel]

end A305728

/-! ## A305728.P4468154152112993885

`(6*A002144(n+1))^3`
-/

namespace A305728.P4468154152112993885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * A002144 (n + 1)) ^ 3

end

end A305728.P4468154152112993885

namespace A305728

/-- `(6*A002144(n+1))^3` -/
def P4468154152112993885.Spec : Prop :=
  ∀ n, P4468154152112993885.a n = A305728 (n + 1)

theorem P4468154152112993885.correct : P4468154152112993885.Spec := by
  intro n
  simp only [A305728, Nat.add_sub_cancel, A305728.P4468154152112993885.a, A305728.P16486474473058137855.a, A002144, A002144.P15538936588089724505.f1, A002144.P15538936588089724505.a, A055131, A055131.P8908878053079909028.f1, A055131.P8908878053079909028.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A305728

/-! ## A305728.P12351127850103492170

`(6*p?[A008846(n+1)])^3`
-/

namespace A305728.P12351127850103492170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ^ 3

end

end A305728.P12351127850103492170

namespace A305728

/-- `(6*p?[A008846(n+1)])^3` -/
def P12351127850103492170.Spec : Prop :=
  ∀ n, P12351127850103492170.a n = A305728 (n + 1)

end A305728

/-! ## A305728.P11758718695702225110

`(6*A002313(n+2))^3`
-/

namespace A305728.P11758718695702225110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * A002313 (n + 2)) ^ 3

end

end A305728.P11758718695702225110

namespace A305728

/-- `(6*A002313(n+2))^3` -/
def P11758718695702225110.Spec : Prop :=
  ∀ n, P11758718695702225110.a n = A305728 (n + 1)

end A305728

/-! ## A305728.P4033120355352101926

`(6*p?[abs(A016945(round(n/2))+2-n)])^3`
-/

namespace A305728.P4033120355352101926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016945 (SequenceMachineLib.roundAway ((n : ℚ) / 2)).toNat + 2 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ^ 3

end

end A305728.P4033120355352101926

namespace A305728

/-- `(6*p?[abs(A016945(round(n/2))+2-n)])^3` -/
def P4033120355352101926.Spec : Prop :=
  ∀ n, P4033120355352101926.a n = A305728 (n + 1)

end A305728

/-! ## A305728.P334655466948999134

`(6*p?[A042948(n)])^3`
-/

namespace A305728.P334655466948999134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ^ 3

end

end A305728.P334655466948999134

namespace A305728

/-- `(6*p?[A042948(n)])^3` -/
def P334655466948999134.Spec : Prop :=
  ∀ n, P334655466948999134.a n = A305728 (n + 1)

end A305728

/-! ## A305728.P10167563730462268079

`(6*p?[A005408(A005843(n))])^3`
-/

namespace A305728.P10167563730462268079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ^ 3

end

end A305728.P10167563730462268079

namespace A305728

/-- `(6*p?[A005408(A005843(n))])^3` -/
def P10167563730462268079.Spec : Prop :=
  ∀ n, P10167563730462268079.a n = A305728 (n + 1)

end A305728

/-! ## A305728.P13369365214603738204

`A017595(A104636(n+1))`
-/

namespace A305728.P13369365214603738204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017595 (A104636 (n + 1)).toNat

end

end A305728.P13369365214603738204

namespace A305728

/-- `A017595(A104636(n+1))` -/
def P13369365214603738204.Spec : Prop :=
  ∀ n, P13369365214603738204.a n = A305728 (n + 1)

end A305728

/-! ## A305728.P5141170426968382975

`A307150(p?[3*n+n+1])^3`
-/

namespace A305728.P5141170426968382975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307150 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) ^ 3

end

end A305728.P5141170426968382975

namespace A305728

/-- `A307150(p?[3*n+n+1])^3` -/
def P5141170426968382975.Spec : Prop :=
  ∀ n, P5141170426968382975.a n = A305728 (n + 1)

end A305728

/-! ## A305728.P11562598435226048317

`A016911(A002144(n+1))`
-/

namespace A305728.P11562598435226048317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016911 (A002144 (n + 1)).toNat

end

end A305728.P11562598435226048317

namespace A305728

/-- `A016911(A002144(n+1))` -/
def P11562598435226048317.Spec : Prop :=
  ∀ n, P11562598435226048317.a n = A305728 (n + 1)

end A305728

/-! ## A305728.P17678103388812788487

`A016911(A002313(n+2))`
-/

namespace A305728.P17678103388812788487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016911 (A002313 (n + 2)).toNat

end

end A305728.P17678103388812788487

namespace A305728

/-- `A016911(A002313(n+2))` -/
def P17678103388812788487.Spec : Prop :=
  ∀ n, P17678103388812788487.a n = A305728 (n + 1)

end A305728

/-! ## A305728.P2486119671089795997

`A016911(A280084(n+2))`
-/

namespace A305728.P2486119671089795997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016911 (A280084 (n + 2)).toNat

end

end A305728.P2486119671089795997

namespace A305728

/-- `A016911(A280084(n+2))` -/
def P2486119671089795997.Spec : Prop :=
  ∀ n, P2486119671089795997.a n = A305728 (n + 1)

end A305728

/-! ## A305728.P1815683164786732352

`A016911(A080169(n+1)/A080109(n+1))`
-/

namespace A305728.P1815683164786732352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016911 (SequenceMachineLib.roundAway ((A080169 (n + 1) : ℚ) / (A080109 (n + 1) : ℚ))).toNat

end

end A305728.P1815683164786732352

namespace A305728

/-- `A016911(A080169(n+1)/A080109(n+1))` -/
def P1815683164786732352.Spec : Prop :=
  ∀ n, P1815683164786732352.a n = A305728 (n + 1)

end A305728

/-! ## A305728.P17157394757081208153

`A016911(A080175(n+1)/A080169(n+1))`
-/

namespace A305728.P17157394757081208153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016911 (SequenceMachineLib.roundAway ((A080175 (n + 1) : ℚ) / (A080169 (n + 1) : ℚ))).toNat

end

end A305728.P17157394757081208153

namespace A305728

/-- `A016911(A080175(n+1)/A080169(n+1))` -/
def P17157394757081208153.Spec : Prop :=
  ∀ n, P17157394757081208153.a n = A305728 (n + 1)

end A305728

/-! ## A305728.P15627931154609898783

`A016743(A055131(n))`
-/

namespace A305728.P15627931154609898783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016743 (A055131 n).toNat

end

end A305728.P15627931154609898783

namespace A305728

/-- `A016743(A055131(n))` -/
def P15627931154609898783.Spec : Prop :=
  ∀ n, P15627931154609898783.a n = A305728 (n + 1)

end A305728

/-! ## A305728.P13024481805153562458

`8*A000578(3*A002313(n+2))`
-/

namespace A305728.P13024481805153562458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000578 (3 * A002313 (n + 2)).toNat

end

end A305728.P13024481805153562458

namespace A305728

/-- `8*A000578(3*A002313(n+2))` -/
def P13024481805153562458.Spec : Prop :=
  ∀ n, P13024481805153562458.a n = A305728 (n + 1)

end A305728

/-!
# A305729: Numbers k such that A000010(k) = A023900(k) and A000010(A023900(k)) = A023900(A000010(k)).

The programs for A305729, there is no canonical definition to state claims against.
-/

/-! ## A305729.P1258218043360605505

`(2*A088179(n+1))^ceil(sin(n)²)`
-/

namespace A305729.P1258218043360605505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A088179 (n + 1) : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A305729.P1258218043360605505

/-! ## A305729.P13180538644541799140

`∩[A244466(n+1), A306146(n+1)]`
-/

namespace A305729.P13180538644541799140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305729.P13180538644541799140

/-! ## A305729.P7291384604683211862

`∩[A244466(n+1), A255219(n+1)]`
-/

namespace A305729.P7291384604683211862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305729.P7291384604683211862

/-! ## A305729.P13384746896230125712

`∩[A255219(n+1), A306146(n+1)]`
-/

namespace A305729.P13384746896230125712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305729.P13384746896230125712

/-! ## A305729.P4578664608997708907

`∩[A207574(n+1), A244466(n+1)]`
-/

namespace A305729.P4578664608997708907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305729.P4578664608997708907

/-! ## A305729.P8861301517809116594

`∩[A207574(n+1), A255219(n+1)]`
-/

namespace A305729.P8861301517809116594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305729.P8861301517809116594

/-! ## A305729.P11726896080158995224

`∩[A207574(n+1), A306146(n+1)]`
-/

namespace A305729.P11726896080158995224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305729.P11726896080158995224

/-! ## A305729.P5167565458834151516

`∩[A216090(n+1), A244466(n+1)]`
-/

namespace A305729.P5167565458834151516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305729.P5167565458834151516

/-! ## A305729.P11460792061316233970

`∩[A216090(n+1), A255219(n+1)]`
-/

namespace A305729.P11460792061316233970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305729.P11460792061316233970

/-! ## A305729.P16171549104752596723

`∩[A216090(n+1), A306146(n+1)]`
-/

namespace A305729.P16171549104752596723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305729.P16171549104752596723

/-! ## A305729.P6399833764593816512

`∩[A192109(n+1), A244466(n+1)]`
-/

namespace A305729.P6399833764593816512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305729.P6399833764593816512

/-! ## A305729.P8029253334002336841

`∩[A192109(n+1), A255219(n+1)]`
-/

namespace A305729.P8029253334002336841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305729.P8029253334002336841

/-! ## A305729.P700905734639753002

`∩[A192109(n+1), A306146(n+1)]`
-/

namespace A305729.P700905734639753002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305729.P700905734639753002

/-! ## A305729.P8513937052251566700

`∩[A015921(n+1), A244466(n+1)]`
-/

namespace A305729.P8513937052251566700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305729.P8513937052251566700

/-! ## A305729.P598957249100357599

`∩[A015921(n+1), A255219(n+1)]`
-/

namespace A305729.P598957249100357599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305729.P598957249100357599

/-! ## A305729.P9807148802051256507

`∩[A015921(n+1), A306146(n+1)]`
-/

namespace A305729.P9807148802051256507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305729.P9807148802051256507

/-! ## A305729.P2361186577862115889

`∩[A067935(n+1), A244466(n+1)]`
-/

namespace A305729.P2361186577862115889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305729.P2361186577862115889

/-! ## A305729.P6659140873743470613

`∩[A067935(n+1), A255219(n+1)]`
-/

namespace A305729.P6659140873743470613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305729.P6659140873743470613

/-! ## A305729.P16694983139432571588

`∩[A049196(n+1), A244466(n+1)]`
-/

namespace A305729.P16694983139432571588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305729.P16694983139432571588

/-! ## A305729.P4475000653069342073

`∩[A049196(n+1), A306146(n+1)]`
-/

namespace A305729.P4475000653069342073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305729.P4475000653069342073

/-!
# A305730: a(n) is the total displacement of all letters in all permutations of n letters with no fixed points.

The programs for A305730, the canonical program `A305730.P15139581977774088631` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305730 has offset 0).

The definition of A305730 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A305730.P15139581977774088631

`n*(n+1)*(a(n-1)/(n-1)+(-1)^n/3)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A305730

/-- `n*(n+1)*(a(n-1)/(n-1)+(-1)^n/3)` -/
def P15139581977774088631.Spec : Prop :=
  ∀ n, P15139581977774088631.a n = (A305730 n : ℚ)

end A305730

/-! ## A305730.P12470647260736256620

`2*A000313(n+2)`
-/

namespace A305730.P12470647260736256620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000313 (n + 2)

end

end A305730.P12470647260736256620

namespace A305730

/-- `2*A000313(n+2)` -/
def P12470647260736256620.Spec : Prop :=
  ∀ n, P12470647260736256620.a n = A305730 n

end A305730

/-! ## A305730.P1558100815647317682

`2/3*A065087(n)`
-/

namespace A305730.P1558100815647317682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A065087 n : ℚ)

end

end A305730.P1558100815647317682

namespace A305730

/-- `2/3*A065087(n)` -/
def P1558100815647317682.Spec : Prop :=
  ∀ n, P1558100815647317682.a n = (A305730 n : ℚ)

end A305730

/-! ## A305730.P11433047151220318048

`n*(n+1)*A000166(n)/3`
-/

namespace A305730.P11433047151220318048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * A000166 n : ℚ) / 3

end

end A305730.P11433047151220318048

namespace A305730

/-- `n*(n+1)*A000166(n)/3` -/
def P11433047151220318048.Spec : Prop :=
  ∀ n, P11433047151220318048.a n = (A305730 n : ℚ)

end A305730

/-! ## A305730.P5536446473852157390

`2*floor((n!+1)/e)*∑[n]/3`
-/

namespace A305730.P5536446473852157390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (⌊(Nat.factorial n + 1 : ℝ) / Real.exp 1⌋ * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) : ℚ) / 3

end

end A305730.P5536446473852157390

namespace A305730

/-- `2*floor((n!+1)/e)*∑[n]/3` -/
def P5536446473852157390.Spec : Prop :=
  ∀ n, P5536446473852157390.a n = (A305730 n : ℚ)

end A305730

/-! ## A305730.P12105313647614124156

`n/3*A000240(n+1)`
-/

namespace A305730.P12105313647614124156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A000240 (n + 1) : ℚ)

end

end A305730.P12105313647614124156

namespace A305730

/-- `n/3*A000240(n+1)` -/
def P12105313647614124156.Spec : Prop :=
  ∀ n, P12105313647614124156.a n = (A305730 n : ℚ)

end A305730

/-! ## A305730.P10195477359208051209

`∑[2*n/3]*A000166(n)`
-/

namespace A305730.P10195477359208051209
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000166 n : ℚ)

end

end A305730.P10195477359208051209

namespace A305730

/-- `∑[2*n/3]*A000166(n)` -/
def P10195477359208051209.Spec : Prop :=
  ∀ n, P10195477359208051209.a n = (A305730 n : ℚ)

end A305730

/-! ## A305730.P5040349707266991982

`∑[2*n/3]*A068106(∑[n])`
-/

namespace A305730.P5040349707266991982
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A068106 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

end

end A305730.P5040349707266991982

namespace A305730

/-- `∑[2*n/3]*A068106(∑[n])` -/
def P5040349707266991982.Spec : Prop :=
  ∀ n, P5040349707266991982.a n = (A305730 n : ℚ)

end A305730

/-! ## A305730.P9277651817122670297

`(n+1)*A008290(∑[n])*n/3`
-/

namespace A305730.P9277651817122670297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A008290 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) * ((n : ℚ) / 3)

end

end A305730.P9277651817122670297

namespace A305730

/-- `(n+1)*A008290(∑[n])*n/3` -/
def P9277651817122670297.Spec : Prop :=
  ∀ n, P9277651817122670297.a n = (A305730 n : ℚ)

end A305730

/-! ## A305730.P2782242449101263205

`A065087(n)-A000313(n+2)`
-/

namespace A305730.P2782242449101263205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065087 n - A000313 (n + 2)

end

end A305730.P2782242449101263205

namespace A305730

/-- `A065087(n)-A000313(n+2)` -/
def P2782242449101263205.Spec : Prop :=
  ∀ n, P2782242449101263205.a n = A305730 n

end A305730

/-!
# A305731: Number of irreducible integer partitions of n.

The programs for A305731, there is no canonical definition to state claims against.
-/

/-! ## A305731.P8029688279483035310

`A008571(A024537(n))*A204389(n)`
-/

namespace A305731.P8029688279483035310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008571 (A024537 n).toNat * A204389 n

end

end A305731.P8029688279483035310

/-! ## A305731.P18199847799360736034

`A005779(n+2)%A004171(A082024(n))`
-/

namespace A305731.P18199847799360736034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005779 (n + 2)) (A004171 (A082024 n).toNat)

end

end A305731.P18199847799360736034

/-! ## A305731.P11811599117085156487

`A001222(13^A339242(n))*A000194(A187219(n+1))`
-/

namespace A305731.P11811599117085156487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((13 : ℚ) ^ (A339242 n : ℤ))).toNat * A000194 (A187219 (n + 1)).toNat

end

end A305731.P11811599117085156487

/-!
# A305732: Heinz numbers of reducible integer partitions. Numbers n > 1 that are prime or whose prime indices are relatively prime and such that A181819(n) is already in the sequence.

The programs for A305732, there is no canonical definition to state claims against.
-/

/-! ## A305732.P8457273907381073096

`comp[A305733(n+1)-1]+1`
-/

namespace A305732.P8457273907381073096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305733 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A305732.P8457273907381073096

/-! ## A305732.P5971408994833785389

`comp[A023443(A305733(n+1))]+1`
-/

namespace A305732.P5971408994833785389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A305733 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A305732.P5971408994833785389

/-! ## A305732.P15324593734369764539

`eq[char[A305733(n+1)], A151878(n)]`
-/

namespace A305732.P15324593734369764539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305733 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A305732.P15324593734369764539

/-! ## A305732.P824283735430544099

`eq[char[A305733(n+1)], A151933(n)]`
-/

namespace A305732.P824283735430544099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305733 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A305732.P824283735430544099

/-! ## A305732.P3461009772684826603

`∪[A053577(n+1), A298748(n+1)]`
-/

namespace A305732.P3461009772684826603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A305732.P3461009772684826603

/-! ## A305732.P16217038278934960862

`∪[A058363(n+1), A298748(n+1)]`
-/

namespace A305732.P16217038278934960862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A305732.P16217038278934960862

/-! ## A305732.P2537758196486512109

`∪[A066191(n+1), A298748(n+1)]`
-/

namespace A305732.P2537758196486512109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A305732.P2537758196486512109

/-! ## A305732.P17259532728954163522

`∪[A066542(n+1), A298748(n+1)]`
-/

namespace A305732.P17259532728954163522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A305732.P17259532728954163522

/-! ## A305732.P9020833735570308211

`∪[A166159(n+1), A298748(n+1)]`
-/

namespace A305732.P9020833735570308211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A305732.P9020833735570308211

/-! ## A305732.P9056601747172761203

`∪[A270342(n+1), A298748(n+1)]`
-/

namespace A305732.P9056601747172761203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A305732.P9056601747172761203

/-!
# A305733: Heinz numbers of irreducible integer partitions. Nonprime numbers whose prime indices have a common divisor > 1 or such that A181819(n) is already in the sequence.

The programs for A305733, there is no canonical definition to state claims against.
-/

/-! ## A305733.P1505243089347416799

`∪[A131605(n+1), A322336(n+1)]`
-/

namespace A305733.P1505243089347416799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A305733.P1505243089347416799

/-!
# A305735: Number of integer partitions of n whose greatest common divisor is a prime number.

The programs for A305735, there is no canonical definition to state claims against.
-/

/-! ## A305735.P8141508595088029898

`∑{p}[n+1, A000837((n+1)/#)]`
-/

namespace A305735.P8141508595088029898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000837 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat

end

end A305735.P8141508595088029898

/-! ## A305735.P13928406395789243568

`A018783(n+1)-A305736(n+1)`
-/

namespace A305735.P13928406395789243568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (n + 1) - A305736 (n + 1)

end

end A305735.P13928406395789243568

/-! ## A305735.P834144565160208256

`∑{d}[n+1, A000041(#)*A143519((n+1)/#)]`
-/

namespace A305735.P834144565160208256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000041 d * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305735.P834144565160208256

/-! ## A305735.P12882874085305172270

`A328673(A187829(n+1))-A050379(n+1)`
-/

namespace A305735.P12882874085305172270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328673 (A187829 (n + 1)).toNat - A050379 (n + 1)

end

end A305735.P12882874085305172270

/-! ## A305735.P9650640121949961797

`A200976(A187829(n+1))-A305736(n+1)`
-/

namespace A305735.P9650640121949961797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200976 (A187829 (n + 1)).toNat - A305736 (n + 1)

end

end A305735.P9650640121949961797

/-!
# A305736: Number of integer partitions of n whose greatest common divisor is composite (nonprime and > 1).

The programs for A305736, there is no canonical definition to state claims against.
-/

/-! ## A305736.P12657052450685179092

`A018783(n+1)-A305735(n+1)`
-/

namespace A305736.P12657052450685179092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (n + 1) - A305735 (n + 1)

end

end A305736.P12657052450685179092

/-! ## A305736.P6142207368987462019

`A000041(n+1)-(A305735(n+1)+A000837(n+1))`
-/

namespace A305736.P6142207368987462019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A305735 (n + 1) + A000837 (n + 1))

end

end A305736.P6142207368987462019

/-! ## A305736.P12879164605973456103

`A018783(A079880(n+1))%p?[A026780(n)]`
-/

namespace A305736.P12879164605973456103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018783 (A079880 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A305736.P12879164605973456103

/-! ## A305736.P17966916093069541588

`A001511(A075707(n+1))*A018783(A079880(n+1))`
-/

namespace A305736.P17966916093069541588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A075707 (n + 1)).toNat * A018783 (A079880 (n + 1)).toNat

end

end A305736.P17966916093069541588

/-! ## A305736.P1880530250491984712

`A165419(A293813(n+1))`
-/

namespace A305736.P1880530250491984712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165419 (A293813 (n + 1)).toNat

end

end A305736.P1880530250491984712

/-!
# A305737: Number of subsets S of vectors in GF(2)^n such that span(S) = GF(2)^n.

The programs for A305737, there is no canonical definition to state claims against.
-/

/-! ## A305737.P15582279551580084192

`A000079(n)*A051502(A028310(n))`
-/

namespace A305737.P15582279551580084192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A051502 (A028310 n).toNat

end

end A305737.P15582279551580084192

/-! ## A305737.P16125924310378777920

`A000079(n)*A051502(A219209(n))`
-/

namespace A305737.P16125924310378777920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A051502 (A219209 n).toNat

end

end A305737.P16125924310378777920

/-!
# A305739: a(n) = n!*T(n) - 1, where T(n) is the n-th triangular number.

The programs for A305739, the canonical program `A305739.P9759240343848292300` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305739 has offset 1).

The definition of A305739 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A305739.P9759240343848292300

`A180119(n+1)-1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A305739

/-- `A180119(n+1)-1` -/
def P9759240343848292300.Spec : Prop :=
  ∀ n, P9759240343848292300.a n = A305739 (n + 1)

theorem P9759240343848292300.correct : P9759240343848292300.Spec := by
  intro n
  simp only [A305739, Nat.add_sub_cancel]

end A305739

/-! ## A305739.P7850858423085747552

`A001286(n+2)-1`
-/

namespace A305739.P7850858423085747552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001286 (n + 2) - 1

end

end A305739.P7850858423085747552

namespace A305739

/-- `A001286(n+2)-1` -/
def P7850858423085747552.Spec : Prop :=
  ∀ n, P7850858423085747552.a n = A305739 (n + 1)

theorem P7850858423085747552.correct : P7850858423085747552.Spec := by
  intro n
  simp only [A305739, Nat.add_sub_cancel, A305739.P7850858423085747552.a, A305739.P9759240343848292300.a, A001286, A001286.P18093615335450425260.a, A180119, A180119.P7712605466301032233.a, A000142, A000142.P3272619076580183195.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A305739

/-! ## A305739.P12343005499403584194

`(n+1)*(n+2)!/2-1`
-/

namespace A305739.P12343005499403584194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.factorial (n + 2) : ℚ) / 2 - 1

end

end A305739.P12343005499403584194

namespace A305739

/-- `(n+1)*(n+2)!/2-1` -/
def P12343005499403584194.Spec : Prop :=
  ∀ n, P12343005499403584194.a n = (A305739 (n + 1) : ℚ)

theorem P12343005499403584194.correct : P12343005499403584194.Spec := by
  intro n
  simp only [A305739, Nat.add_sub_cancel, A305739.P12343005499403584194.a, A305739.P9759240343848292300.a, A180119, A180119.P7712605466301032233.a, A000142, A000142.P3272619076580183195.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A305739

/-! ## A305739.P455647730241331513

`Δ[∑[n!*∑[n]]-n]`
-/

namespace A305739.P455647730241331513
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A305739.P455647730241331513

namespace A305739

/-- `Δ[∑[n!*∑[n]]-n]` -/
def P455647730241331513.Spec : Prop :=
  ∀ n, P455647730241331513.a n = A305739 (n + 1)

end A305739

/-! ## A305739.P1149826967654445090

`∑[lcm(n, Δ[n!*∑[n]])]`
-/

namespace A305739.P1149826967654445090
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305739.P1149826967654445090

namespace A305739

/-- `∑[lcm(n, Δ[n!*∑[n]])]` -/
def P1149826967654445090.Spec : Prop :=
  ∀ n, (P1149826967654445090.a n : ℤ) = A305739 (n + 1)

end A305739

/-! ## A305739.P18289474727432794036

`(n+1)!*∑[n+1]-1`
-/

namespace A305739.P18289474727432794036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 1

end

end A305739.P18289474727432794036

namespace A305739

/-- `(n+1)!*∑[n+1]-1` -/
def P18289474727432794036.Spec : Prop :=
  ∀ n, P18289474727432794036.a n = A305739 (n + 1)

end A305739

/-! ## A305739.P3830121614813260129

`∏[n+3]-((n+2)!+1)`
-/

namespace A305739.P3830121614813260129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.factorial (n + 2) + 1 : ℤ)

end

end A305739.P3830121614813260129

namespace A305739

/-- `∏[n+3]-((n+2)!+1)` -/
def P3830121614813260129.Spec : Prop :=
  ∀ n, P3830121614813260129.a n = A305739 (n + 1)

end A305739

/-! ## A305739.P13382176465075236613

`∑[n+1]*∏[n+1]-1`
-/

namespace A305739.P13382176465075236613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) * (∏ j ∈ Finset.range (n + 1), f2 j) : ℕ) : ℤ) - 1

end

end A305739.P13382176465075236613

namespace A305739

/-- `∑[n+1]*∏[n+1]-1` -/
def P13382176465075236613.Spec : Prop :=
  ∀ n, P13382176465075236613.a n = A305739 (n + 1)

end A305739

/-!
# A305746: Solution of the complementary equation a(n) = 2*a(n-1) - a(n-3) + b(n), where a(0) = 1, a(1) = 2, a(2) = 3, b(0)= 4, b(1) = 5, b(2) = 6; b(3) = 7. See Comments.

The programs for A305746, there is no canonical definition to state claims against.
-/

/-! ## A305746.P10227396118243501937

`A004277(A295613(n))-A295616(n)`
-/

namespace A305746.P10227396118243501937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A295613 n).toNat - A295616 n

end

end A305746.P10227396118243501937

/-! ## A305746.P770013013654615986

`A115060(A295614(n))-n`
-/

namespace A305746.P770013013654615986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (A295614 n).toNat - (n : ℤ)

end

end A305746.P770013013654615986

/-! ## A305746.P3236630350245803978

`A295614(A004913(n+1))-n`
-/

namespace A305746.P3236630350245803978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295614 (A004913 (n + 1)).toNat - (n : ℤ)

end

end A305746.P3236630350245803978

/-! ## A305746.P16273600148488884741

`A295614(n)-A001222(A000351(n))`
-/

namespace A305746.P16273600148488884741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295614 n - A001222 (A000351 n).toNat

end

end A305746.P16273600148488884741

/-!
# A305747: Let c be the n-th composite number; then a(n) is the smallest divisor of c such that a(n) >= sqrt(c).

The programs for A305747, there is no canonical definition to state claims against.
-/

/-! ## A305747.P14477964756774545512

`A033677(A002808(n+1))`
-/

namespace A305747.P14477964756774545512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A002808 (n + 1)).toNat

end

end A305747.P14477964756774545512

/-! ## A305747.P5551172975958271223

`A033677(Δ[A053767(n)])`
-/

namespace A305747.P5551172975958271223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (f1 (n + 1) - f1 n).toNat

end

end A305747.P5551172975958271223

/-! ## A305747.P7835653146499900524

`A162348(A282671(n+1))`
-/

namespace A305747.P7835653146499900524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162348 (A282671 (n + 1)).toNat

end

end A305747.P7835653146499900524

/-! ## A305747.P13434837193450484316

`A033677(A018252(n+2))`
-/

namespace A305747.P13434837193450484316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A018252 (n + 2)).toNat

end

end A305747.P13434837193450484316

/-! ## A305747.P3150052843966058788

`A162348(A139270(n+2))`
-/

namespace A305747.P3150052843966058788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162348 (A139270 (n + 2)).toNat

end

end A305747.P3150052843966058788

/-! ## A305747.P5573181262883320538

`A033677(lt[1, A078898(n)])`
-/

namespace A305747.P5573181262883320538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A305747.P5573181262883320538

/-! ## A305747.P5815752080814561246

`A033677(A072668(n+1)+1)`
-/

namespace A305747.P5815752080814561246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A072668 (n + 1) + 1).toNat

end

end A305747.P5815752080814561246

/-! ## A305747.P7196781292898709905

`A033677(A166460(n+2)+1)`
-/

namespace A305747.P7196781292898709905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A166460 (n + 2) + 1).toNat

end

end A305747.P7196781292898709905

/-! ## A305747.P3277531682038147028

`A162348(2*A002808(n+1))`
-/

namespace A305747.P3277531682038147028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162348 (2 * A002808 (n + 1)).toNat

end

end A305747.P3277531682038147028

/-! ## A305747.P17649483366963663409

`A033677(lt[1, A052126(n+1)]+1)`
-/

namespace A305747.P17649483366963663409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A305747.P17649483366963663409

/-! ## A305747.P9649873475815949114

`A033677(lt[1, A181569(n+1)]+2)`
-/

namespace A305747.P9649873475815949114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A305747.P9649873475815949114

/-! ## A305747.P4438059087044528057

`A033677(lt[A033677(n+1), n]+1)`
-/

namespace A305747.P4438059087044528057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A305747.P4438059087044528057

/-! ## A305747.P4044366064336583561

`A162348(A002808(n+1)+A002808(n+1))`
-/

namespace A305747.P4044366064336583561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162348 (A002808 (n + 1) + A002808 (n + 1)).toNat

end

end A305747.P4044366064336583561

/-!
# A305748: Distance of a prime number from the average of the next two consecutive prime numbers.

The programs for A305748, the canonical program `A305748.P15139415621940203754` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305748 has offset 1).

The definition of A305748 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A305748.P15139415621940203754

`A024675(n+1)-A000040(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A305748

/-- `A024675(n+1)-A000040(n+1)` -/
def P15139415621940203754.Spec : Prop :=
  ∀ n, P15139415621940203754.a n = A305748 (n + 1)

theorem P15139415621940203754.correct : P15139415621940203754.Spec := by
  intro n
  simp only [A305748, Nat.add_sub_cancel]

end A305748

/-! ## A305748.P9198190295738391901

`A024675(n+1)-Δ[A007504(n)]`
-/

namespace A305748.P9198190295738391901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) - (f1 (n + 1) - f1 n)

end

end A305748.P9198190295738391901

namespace A305748

/-- `A024675(n+1)-Δ[A007504(n)]` -/
def P9198190295738391901.Spec : Prop :=
  ∀ n, P9198190295738391901.a n = A305748 (n + 1)

end A305748

/-! ## A305748.P2303062182839971514

`A028334(n+2)+A001223(n+1)`
-/

namespace A305748.P2303062182839971514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2) + A001223 (n + 1)

end

end A305748.P2303062182839971514

namespace A305748

/-- `A028334(n+2)+A001223(n+1)` -/
def P2303062182839971514.Spec : Prop :=
  ∀ n, P2303062182839971514.a n = A305748 (n + 1)

end A305748

/-! ## A305748.P16500426404798237372

`A024678(n+1)-A065890(n+1)`
-/

namespace A305748.P16500426404798237372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024678 (n + 1) - A065890 (n + 1)

end

end A305748.P16500426404798237372

namespace A305748

/-- `A024678(n+1)-A065890(n+1)` -/
def P16500426404798237372.Spec : Prop :=
  ∀ n, P16500426404798237372.a n = A305748 (n + 1)

theorem P16500426404798237372.correct : P16500426404798237372.Spec := by
  intro n
  simp only [A305748, Nat.add_sub_cancel, A305748.P16500426404798237372.a, A305748.P15139415621940203754.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A024675, A024675.P1773648843625354992.a, A024678, A024678.P7047042052226671607.a, A065890, A065890.P15936493256530540462.a, A001043, A001043.P18269783162673735460.a, A014689, A014689.P6286543075765329050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A305748

/-! ## A305748.P15680742645646302963

`A181428(n+1)-A024675(n+1)`
-/

namespace A305748.P15680742645646302963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181428 (n + 1) - A024675 (n + 1)

end

end A305748.P15680742645646302963

namespace A305748

/-- `A181428(n+1)-A024675(n+1)` -/
def P15680742645646302963.Spec : Prop :=
  ∀ n, P15680742645646302963.a n = A305748 (n + 1)

end A305748

/-! ## A305748.P4147369020139378585

`A031131(n+1)-A028334(n+2)`
-/

namespace A305748.P4147369020139378585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1) - A028334 (n + 2)

end

end A305748.P4147369020139378585

namespace A305748

/-- `A031131(n+1)-A028334(n+2)` -/
def P4147369020139378585.Spec : Prop :=
  ∀ n, P4147369020139378585.a n = A305748 (n + 1)

end A305748

/-! ## A305748.P1470261365836984059

`A031165(n+1)-A375097(n+2)`
-/

namespace A305748.P1470261365836984059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031165 (n + 1) - A375097 (n + 2)

end

end A305748.P1470261365836984059

namespace A305748

/-- `A031165(n+1)-A375097(n+2)` -/
def P1470261365836984059.Spec : Prop :=
  ∀ n, P1470261365836984059.a n = A305748 (n + 1)

end A305748

/-! ## A305748.P18109307926446088761

`A375097(n+2)-A261470(n+1)`
-/

namespace A305748.P18109307926446088761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375097 (n + 2) - A261470 (n + 1)

end

end A305748.P18109307926446088761

namespace A305748

/-- `A375097(n+2)-A261470(n+1)` -/
def P18109307926446088761.Spec : Prop :=
  ∀ n, P18109307926446088761.a n = A305748 (n + 1)

end A305748

/-! ## A305748.P4579429235589496851

`(A031131(n+1)+A001223(n+1))/2`
-/

namespace A305748.P4579429235589496851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031131 (n + 1) + A001223 (n + 1) : ℚ) / 2

end

end A305748.P4579429235589496851

namespace A305748

/-- `(A031131(n+1)+A001223(n+1))/2` -/
def P4579429235589496851.Spec : Prop :=
  ∀ n, P4579429235589496851.a n = (A305748 (n + 1) : ℚ)

end A305748

/-! ## A305748.P1505378964568120848

`A001223(n+1)+A001223(n+2)/2`
-/

namespace A305748.P1505378964568120848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001223 (n + 1) : ℚ) + (A001223 (n + 2) : ℚ) / 2

end

end A305748.P1505378964568120848

namespace A305748

/-- `A001223(n+1)+A001223(n+2)/2` -/
def P1505378964568120848.Spec : Prop :=
  ∀ n, P1505378964568120848.a n = (A305748 (n + 1) : ℚ)

end A305748

/-! ## A305748.P9846094602292974417

`A024675(n+1)-A100484(n+1)/2`
-/

namespace A305748.P9846094602292974417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024675 (n + 1) : ℚ) - (A100484 (n + 1) : ℚ) / 2

end

end A305748.P9846094602292974417

namespace A305748

/-- `A024675(n+1)-A100484(n+1)/2` -/
def P9846094602292974417.Spec : Prop :=
  ∀ n, P9846094602292974417.a n = (A305748 (n + 1) : ℚ)

theorem P9846094602292974417.correct : P9846094602292974417.Spec := by
  intro n
  simp only [A305748, Nat.add_sub_cancel, A305748.P9846094602292974417.a, A305748.P15139415621940203754.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A024675, A024675.P1773648843625354992.a, A100484, A100484.P9678625670825099636.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A305748

/-! ## A305748.P9822342807759927362

`(A181428(n+1)-A000040(n+1))/2`
-/

namespace A305748.P9822342807759927362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181428 (n + 1) - A000040 (n + 1) : ℚ) / 2

end

end A305748.P9822342807759927362

namespace A305748

/-- `(A181428(n+1)-A000040(n+1))/2` -/
def P9822342807759927362.Spec : Prop :=
  ∀ n, P9822342807759927362.a n = (A305748 (n + 1) : ℚ)

end A305748

/-! ## A305748.P3176292361347450388

`(A215848(n+1)-A062234(n+1))/2`
-/

namespace A305748.P3176292361347450388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215848 (n + 1) - A062234 (n + 1) : ℚ) / 2

end

end A305748.P3176292361347450388

namespace A305748

/-- `(A215848(n+1)-A062234(n+1))/2` -/
def P3176292361347450388.Spec : Prop :=
  ∀ n, P3176292361347450388.a n = (A305748 (n + 1) : ℚ)

end A305748

/-! ## A305748.P9420565874789678506

`A078898(A001223(n+2))+A001223(n+1)`
-/

namespace A305748.P9420565874789678506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A001223 (n + 2)).toNat + A001223 (n + 1)

end

end A305748.P9420565874789678506

namespace A305748

/-- `A078898(A001223(n+2))+A001223(n+1)` -/
def P9420565874789678506.Spec : Prop :=
  ∀ n, P9420565874789678506.a n = A305748 (n + 1)

end A305748

/-! ## A305748.P13150479763826165873

`A001223(n+1)+A073273(n+1)-A078444(n+1)`
-/

namespace A305748.P13150479763826165873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + (A073273 (n + 1) - A078444 (n + 1))

end

end A305748.P13150479763826165873

namespace A305748

/-- `A001223(n+1)+A073273(n+1)-A078444(n+1)` -/
def P13150479763826165873.Spec : Prop :=
  ∀ n, P13150479763826165873.a n = A305748 (n + 1)

end A305748

/-! ## A305748.P753392023189603076

`A005097(n+1)+A089038(n+1)-A086801(n+1)`
-/

namespace A305748.P753392023189603076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + (A089038 (n + 1) - A086801 (n + 1))

end

end A305748.P753392023189603076

namespace A305748

/-- `A005097(n+1)+A089038(n+1)-A086801(n+1)` -/
def P753392023189603076.Spec : Prop :=
  ∀ n, P753392023189603076.a n = A305748 (n + 1)

end A305748

/-! ## A305748.P3035647475353170143

`A302042(A001223(n+2))+A001223(A302042(2*(n+1)))`
-/

namespace A305748.P3035647475353170143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A001223 (n + 2)).toNat + A001223 (A302042 (2 * (n + 1))).toNat

end

end A305748.P3035647475353170143

namespace A305748

/-- `A302042(A001223(n+2))+A001223(A302042(2*(n+1)))` -/
def P3035647475353170143.Spec : Prop :=
  ∀ n, P3035647475353170143.a n = A305748 (n + 1)

end A305748

/-! ## A305748.P3601530502287861877

`Δ[A283623(n+1)]`
-/

namespace A305748.P3601530502287861877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A305748.P3601530502287861877

namespace A305748

/-- `Δ[A283623(n+1)]` -/
def P3601530502287861877.Spec : Prop :=
  ∀ n, P3601530502287861877.a n = A305748 (n + 1)

end A305748

/-! ## A305748.P10494477272876147775

`A024675(n+1)-A008578(n+2)`
-/

namespace A305748.P10494477272876147775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) - A008578 (n + 2)

end

end A305748.P10494477272876147775

namespace A305748

/-- `A024675(n+1)-A008578(n+2)` -/
def P10494477272876147775.Spec : Prop :=
  ∀ n, P10494477272876147775.a n = A305748 (n + 1)

end A305748

/-! ## A305748.P14016477637619815803

`A162735(n+2)-A000040(n+1)`
-/

namespace A305748.P14016477637619815803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 2) - A000040 (n + 1)

end

end A305748.P14016477637619815803

namespace A305748

/-- `A162735(n+2)-A000040(n+1)` -/
def P14016477637619815803.Spec : Prop :=
  ∀ n, P14016477637619815803.a n = A305748 (n + 1)

end A305748

/-!
# A305749: T(n,k) is the number of achiral color patterns (set partitions) in a row or loop of length n with k or fewer colors (sets).

The programs for A305749, there is no canonical definition to state claims against.
-/

/-! ## A305749.P1824531921800385017

`A320748(n+1)-A320742(n+1)`
-/

namespace A305749.P1824531921800385017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320748 (n + 1) - A320742 (n + 1)

end

end A305749.P1824531921800385017

/-! ## A305749.P6935268204438668534

`2*A320748(n+1)-A320747(n+1)`
-/

namespace A305749.P6935268204438668534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A320748 (n + 1) - A320747 (n + 1)

end

end A305749.P6935268204438668534

/-! ## A305749.P1530111252131891604

`A320747(n+1)-2*A320742(n+1)`
-/

namespace A305749.P1530111252131891604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320747 (n + 1) - 2 * A320742 (n + 1)

end

end A305749.P1530111252131891604

/-! ## A305749.P4862577333099636381

`A004277(A320748(n+1))-A320747(n+1)`
-/

namespace A305749.P4862577333099636381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A320748 (n + 1)).toNat - A320747 (n + 1)

end

end A305749.P4862577333099636381

/-! ## A305749.P15439668668302500675

`A320747(n+1)-A005843(A320742(n+1))`
-/

namespace A305749.P15439668668302500675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320747 (n + 1) - A005843 (A320742 (n + 1)).toNat

end

end A305749.P15439668668302500675

/-! ## A305749.P6861312626497987450

`A137855(n+1)-2*A320751(n+1)`
-/

namespace A305749.P6861312626497987450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137855 (n + 1) - 2 * A320751 (n + 1)

end

end A305749.P6861312626497987450

/-! ## A305749.P15088148572909807684

`A137855(n+1)-A005843(A320751(n+1))`
-/

namespace A305749.P15088148572909807684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137855 (n + 1) - A005843 (A320751 (n + 1)).toNat

end

end A305749.P15088148572909807684

/-! ## A305749.P16603733321344661777

`A320750(n+1)-A320751(n+1)`
-/

namespace A305749.P16603733321344661777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320750 (n + 1) - A320751 (n + 1)

end

end A305749.P16603733321344661777

/-! ## A305749.P5836469590700749819

`2*A320750(n+1)-A137855(n+1)`
-/

namespace A305749.P5836469590700749819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A320750 (n + 1) - A137855 (n + 1)

end

end A305749.P5836469590700749819

/-!
# A305750: Number of achiral color patterns (set partitions) in a row or cycle of length n with 4 or fewer colors (subsets).

The programs for A305750, the canonical program `A305750.P16265421090738274738` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305750 has offset 0).

The definition of A305750 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A305750.P16265421090738274738

`a(n-1)+4*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A305750

/-- `a(n-1)+4*a(n-2)-4*a(n-3)` -/
def P16265421090738274738.Spec : Prop :=
  ∀ n, P16265421090738274738.a n = A305750 n

theorem P16265421090738274738.correct : P16265421090738274738.Spec := by
  intro n
  simp only [A305750]

end A305750

/-! ## A305750.P10741502101005458661

`2*A056323(n)-A124303(n)`
-/

namespace A305750.P10741502101005458661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056323 n - A124303 n

end

end A305750.P10741502101005458661

namespace A305750

/-- `2*A056323(n)-A124303(n)` -/
def P10741502101005458661.Spec : Prop :=
  ∀ n, P10741502101005458661.a n = A305750 n

end A305750

/-! ## A305750.P5715756624653024224

`∑[ogf((1-3x^2+x^3)/(1-4x^2))]`
-/

namespace A305750.P5715756624653024224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3, 1] [1, 0, -4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305750.P5715756624653024224

namespace A305750

/-- `∑[ogf((1-3x^2+x^3)/(1-4x^2))]` -/
def P5715756624653024224.Spec : Prop :=
  ∀ n, P5715756624653024224.a n = A305750 n

end A305750

/-! ## A305750.P7833892790360095545

`ogf((1-3x^2+x^3)/(1-x-4x^2+4x^3))`
-/

namespace A305750.P7833892790360095545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3, 1] [1, -1, -4, 4] n

end

end A305750.P7833892790360095545

namespace A305750

/-- `ogf((1-3x^2+x^3)/(1-x-4x^2+4x^3))` -/
def P7833892790360095545.Spec : Prop :=
  ∀ n, P7833892790360095545.a n = A305750 n

end A305750

/-! ## A305750.P3449455689636184848

`4*a(n-2)-1` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A305750.P3449455689636184848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  4 * a (n - 2) - 1

end

end A305750.P3449455689636184848

namespace A305750

/-- `4*a(n-2)-1` -/
def P3449455689636184848.Spec : Prop :=
  ∀ n, P3449455689636184848.a n = A305750 n

end A305750

/-! ## A305750.P4866180003334664687

`∑[Δ[Δ[A158780(n)]]²]`
-/

namespace A305750.P4866180003334664687
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305750.P4866180003334664687

namespace A305750

/-- `∑[Δ[Δ[A158780(n)]]²]` -/
def P4866180003334664687.Spec : Prop :=
  ∀ n, P4866180003334664687.a n = A305750 n

end A305750

/-! ## A305750.P14982226471760216245

`ceil(∑[(A016116(n)/2)²])`
-/

namespace A305750.P14982226471760216245
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016116 n : ℚ) / 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A305750.P14982226471760216245

namespace A305750

/-- `ceil(∑[(A016116(n)/2)²])` -/
def P14982226471760216245.Spec : Prop :=
  ∀ n, P14982226471760216245.a n = A305750 n

end A305750

/-! ## A305750.P12139086793424932698

`A213173(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A305750.P12139086793424932698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A213173 (n - 2) + a (n - 1)

end

end A305750.P12139086793424932698

namespace A305750

/-- `A213173(n-2)+a(n-1)` -/
def P12139086793424932698.Spec : Prop :=
  ∀ n, P12139086793424932698.a n = A305750 n

end A305750

/-! ## A305750.P10661338820248715552

`A061547(n)+A057427(n)`
-/

namespace A305750.P10661338820248715552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061547 n + A057427 n

end

end A305750.P10661338820248715552

namespace A305750

/-- `A061547(n)+A057427(n)` -/
def P10661338820248715552.Spec : Prop :=
  ∀ n, P10661338820248715552.a n = A305750 n

end A305750

/-! ## A305750.P7200587147792299000

`A304974(n)+A182522(n)`
-/

namespace A305750.P7200587147792299000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304974 n + A182522 n

end

end A305750.P7200587147792299000

namespace A305750

/-- `A304974(n)+A182522(n)` -/
def P7200587147792299000.Spec : Prop :=
  ∀ n, P7200587147792299000.a n = A305750 n

theorem P7200587147792299000.correct : P7200587147792299000.Spec := by
  intro n
  simp only [A305750, Nat.add_sub_cancel, A305750.P7200587147792299000.a, A305750.P16265421090738274738.a, A182522, A182522.P14682687547002529594.a, A304974, A304974.P17883165039520731159.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A305750

/-! ## A305750.P16341731854840991912

`A061547(n)-A057428(n)`
-/

namespace A305750.P16341731854840991912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061547 n - A057428 n

end

end A305750.P16341731854840991912

namespace A305750

/-- `A061547(n)-A057428(n)` -/
def P16341731854840991912.Spec : Prop :=
  ∀ n, P16341731854840991912.a n = A305750 n

end A305750

/-! ## A305750.P9217226757454088441

`∑[A131577(A123108(n))²]`
-/

namespace A305750.P9217226757454088441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A123108 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305750.P9217226757454088441

namespace A305750

/-- `∑[A131577(A123108(n))²]` -/
def P9217226757454088441.Spec : Prop :=
  ∀ n, P9217226757454088441.a n = A305750 n

end A305750

/-! ## A305750.P11386192555787069219

`∑[A131577(A004526(n))²]+1`
-/

namespace A305750.P11386192555787069219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A004526 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A305750.P11386192555787069219

namespace A305750

/-- `∑[A131577(A004526(n))²]+1` -/
def P11386192555787069219.Spec : Prop :=
  ∀ n, P11386192555787069219.a n = A305750 n

end A305750

/-! ## A305750.P14893563375803534244

`∑[A034008(n)/(A000035(n)+1)]`
-/

namespace A305750.P14893563375803534244
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034008 n : ℚ) / (A000035 n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305750.P14893563375803534244

namespace A305750

/-- `∑[A034008(n)/(A000035(n)+1)]` -/
def P14893563375803534244.Spec : Prop :=
  ∀ n, P14893563375803534244.a n = (A305750 n : ℚ)

end A305750

/-! ## A305750.P1880184485732507720

`A061547(n)+(n-A014681(n))²`
-/

namespace A305750.P1880184485732507720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061547 n + ((n : ℤ) - A014681 n) ^ 2

end

end A305750.P1880184485732507720

namespace A305750

/-- `A061547(n)+(n-A014681(n))²` -/
def P1880184485732507720.Spec : Prop :=
  ∀ n, P1880184485732507720.a n = A305750 n

end A305750

/-! ## A305750.P3012433158506316615

`∑[A131577(A002265(2*n))²]+1`
-/

namespace A305750.P3012433158506316615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A002265 (2 * n)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A305750.P3012433158506316615

namespace A305750

/-- `∑[A131577(A002265(2*n))²]+1` -/
def P3012433158506316615.Spec : Prop :=
  ∀ n, P3012433158506316615.a n = A305750 n

end A305750

/-! ## A305750.P17262748841580964563

`A061547(n)+A001221(A034444(n+1))`
-/

namespace A305750.P17262748841580964563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061547 n + A001221 (A034444 (n + 1)).toNat

end

end A305750.P17262748841580964563

namespace A305750

/-- `A061547(n)+A001221(A034444(n+1))` -/
def P17262748841580964563.Spec : Prop :=
  ∀ n, P17262748841580964563.a n = A305750 n

end A305750

/-! ## A305750.P5812826791971026029

`ceil(abs(3/8*2^n+1/24*(-2)^n))`
-/

namespace A305750.P5812826791971026029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(3 : ℚ) / 8 * (2 ^ n : ℚ) + (1 : ℚ) / 24 * ((-2) ^ n : ℚ)|⌉

end

end A305750.P5812826791971026029

namespace A305750

/-- `ceil(abs(3/8*2^n+1/24*(-2)^n))` -/
def P5812826791971026029.Spec : Prop :=
  ∀ n, P5812826791971026029.a n = A305750 n

end A305750

/-! ## A305750.P17061421403231658515

`A136336(n)-A131577(n)`
-/

namespace A305750.P17061421403231658515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136336 n - A131577 n

end

end A305750.P17061421403231658515

namespace A305750

/-- `A136336(n)-A131577(n)` -/
def P17061421403231658515.Spec : Prop :=
  ∀ n, P17061421403231658515.a n = A305750 n

end A305750

/-! ## A305750.P8770430627422172661

`A136326(n)-A061547(n+1)`
-/

namespace A305750.P8770430627422172661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136326 n - A061547 (n + 1)

end

end A305750.P8770430627422172661

namespace A305750

/-- `A136326(n)-A061547(n+1)` -/
def P8770430627422172661.Spec : Prop :=
  ∀ n, P8770430627422172661.a n = A305750 n

end A305750

/-!
# A305751: Number of achiral color patterns (set partitions) in a row or cycle of length n with 5 or fewer colors (subsets).

The programs for A305751, the canonical program `A305751.P16351866337366111292` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305751 has offset 0).

The definition of A305751 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A305751.P16351866337366111292

`a(n-1)+7*a(n-2)-7*a(n-3)-10*a(n-4)+10*a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=7, a(5)=12`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A305751

/-- `a(n-1)+7*a(n-2)-7*a(n-3)-10*a(n-4)+10*a(n-5)` -/
def P16351866337366111292.Spec : Prop :=
  ∀ n, P16351866337366111292.a n = A305751 n

theorem P16351866337366111292.correct : P16351866337366111292.Spec := by
  intro n
  simp only [A305751]

end A305751

/-! ## A305751.P5662375093321722345

`2*A056324(n)-A056272(n)`
-/

namespace A305751.P5662375093321722345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056324 n - A056272 n

end

end A305751.P5662375093321722345

namespace A305751

/-- `2*A056324(n)-A056272(n)` -/
def P5662375093321722345.Spec : Prop :=
  ∀ n, P5662375093321722345.a n = A305751 n

end A305751

/-! ## A305751.P2703242779621402626

`A305750(n)+A304975(n)`
-/

namespace A305751.P2703242779621402626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305750 n + A304975 n

end

end A305751.P2703242779621402626

namespace A305751

/-- `A305750(n)+A304975(n)` -/
def P2703242779621402626.Spec : Prop :=
  ∀ n, P2703242779621402626.a n = A305751 n

theorem P2703242779621402626.correct : P2703242779621402626.Spec := by
  intro n
  simp only [A305751, Nat.add_sub_cancel, A305751.P2703242779621402626.a, A305751.P16351866337366111292.a, A304975, A304975.P8256716132214659542.a, A305750, A305750.P16265421090738274738.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A305751

/-! ## A305751.P13806345330842743106

`A182522(n)+A304975(n)+A304974(n)`
-/

namespace A305751.P13806345330842743106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 n + (A304975 n + A304974 n)

end

end A305751.P13806345330842743106

namespace A305751

/-- `A182522(n)+A304975(n)+A304974(n)` -/
def P13806345330842743106.Spec : Prop :=
  ∀ n, P13806345330842743106.a n = A305751 n

theorem P13806345330842743106.correct : P13806345330842743106.Spec := by
  intro n
  simp only [A305751, Nat.add_sub_cancel, A305751.P13806345330842743106.a, A305751.P16351866337366111292.a, A182522, A182522.P14682687547002529594.a, A304974, A304974.P17883165039520731159.a, A304975, A304975.P8256716132214659542.a, A305750, A305750.P16265421090738274738.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A305751

/-! ## A305751.P13314197776628694326

`A305752(n)-A304976(n)`
-/

namespace A305751.P13314197776628694326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305752 n - A304976 n

end

end A305751.P13314197776628694326

namespace A305751

/-- `A305752(n)-A304976(n)` -/
def P13314197776628694326.Spec : Prop :=
  ∀ n, P13314197776628694326.a n = A305751 n

end A305751

/-! ## A305751.P9215281106752011454

`A056355(n)-A320745(A028310(n))`
-/

namespace A305751.P9215281106752011454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056355 n - A320745 (A028310 n).toNat

end

end A305751.P9215281106752011454

namespace A305751

/-- `A056355(n)-A320745(A028310(n))` -/
def P9215281106752011454.Spec : Prop :=
  ∀ n, P9215281106752011454.a n = A305751 n

end A305751

/-! ## A305751.P16043057063663248037

`A056272(n)-2*A320935(A028310(n))`
-/

namespace A305751.P16043057063663248037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056272 n - 2 * A320935 (A028310 n).toNat

end

end A305751.P16043057063663248037

namespace A305751

/-- `A056272(n)-2*A320935(A028310(n))` -/
def P16043057063663248037.Spec : Prop :=
  ∀ n, P16043057063663248037.a n = A305751 n

end A305751

/-! ## A305751.P5180669406051998740

`A056272(n)-2*A320935(A233583(n+1))`
-/

namespace A305751.P5180669406051998740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056272 n - 2 * A320935 (A233583 (n + 1)).toNat

end

end A305751.P5180669406051998740

namespace A305751

/-- `A056272(n)-2*A320935(A233583(n+1))` -/
def P5180669406051998740.Spec : Prop :=
  ∀ n, P5180669406051998740.a n = A305751 n

end A305751

/-!
# A305752: Number of achiral color patterns (set partitions) in a row or cycle of length n with 6 or fewer colors (subsets).

The programs for A305752, there is no canonical definition to state claims against.
-/

/-! ## A305752.P3731146918010107804

`2*A056325(n)-A056273(n)`
-/

namespace A305752.P3731146918010107804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056325 n - A056273 n

end

end A305752.P3731146918010107804

/-! ## A305752.P10635924409851301919

`A305751(n)+A304976(n)`
-/

namespace A305752.P10635924409851301919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305751 n + A304976 n

end

end A305752.P10635924409851301919

/-! ## A305752.P7612855414999892381

`A056356(n)-A320746(A028310(n))`
-/

namespace A305752.P7612855414999892381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056356 n - A320746 (A028310 n).toNat

end

end A305752.P7612855414999892381

/-! ## A305752.P11725783501261641647

`A056356(n)-A320746(A233583(n+1))`
-/

namespace A305752.P11725783501261641647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056356 n - A320746 (A233583 (n + 1)).toNat

end

end A305752.P11725783501261641647

/-! ## A305752.P5384246314279169919

`A056325(n)-A320936(A028310(n))`
-/

namespace A305752.P5384246314279169919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056325 n - A320936 (A028310 n).toNat

end

end A305752.P5384246314279169919

/-! ## A305752.P15573760742299019838

`A056273(n)-2*A320936(A028310(n))`
-/

namespace A305752.P15573760742299019838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056273 n - 2 * A320936 (A028310 n).toNat

end

end A305752.P15573760742299019838

/-!
# A305753: A base-3/2 sorted Fibonacci sequence that starts with a(0) = 0 and a(1) = 1. The terms are interpreted as numbers written in base 3/2. To get a(n+2), add a(n) and a(n+1), write the result in base 3/2 and sort the "digits" into increasing order, omitting all zeros.

The programs for A305753, the canonical program `A305753.P7675791117896993034` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305753 has offset 0).

The definition of A305753 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A305753.P7675791117896993034

`a(n-1)+10*a(n-2)-10*a(n-3)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A305753

/-- `a(n-1)+10*a(n-2)-10*a(n-3)` -/
def P7675791117896993034.Spec : Prop :=
  ∀ n, P7675791117896993034.a n = A305753 n

theorem P7675791117896993034.correct : P7675791117896993034.Spec := by
  intro n
  simp only [A305753]

end A305753

/-! ## A305753.P5127443850851836363

`10*a(n-2)-8` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A305753.P5127443850851836363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  10 * a (n - 2) - 8

end

end A305753.P5127443850851836363

namespace A305753

/-- `10*a(n-2)-8` -/
def P5127443850851836363.Spec : Prop :=
  ∀ n, P5127443850851836363.a n = A305753 n

end A305753

/-! ## A305753.P13952318570219204659

`A002275(A140106(n+1))-A057428(n)`
-/

namespace A305753.P13952318570219204659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (A140106 (n + 1)).toNat - A057428 n

end

end A305753.P13952318570219204659

namespace A305753

/-- `A002275(A140106(n+1))-A057428(n)` -/
def P13952318570219204659.Spec : Prop :=
  ∀ n, P13952318570219204659.a n = A305753 n

end A305753

/-! ## A305753.P7942883368595899947

`ceil(A322927(n)/50)`
-/

namespace A305753.P7942883368595899947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A322927 n : ℚ) / 50⌉

end

end A305753.P7942883368595899947

namespace A305753

/-- `ceil(A322927(n)/50)` -/
def P7942883368595899947.Spec : Prop :=
  ∀ n, P7942883368595899947.a n = A305753 n

end A305753

/-! ## A305753.P18431592239827046333

`∑[A104459(n+1)-10^floor(n/2)]`
-/

namespace A305753.P18431592239827046333
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104459 (n + 1) : ℚ) - (10 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305753.P18431592239827046333

namespace A305753

/-- `∑[A104459(n+1)-10^floor(n/2)]` -/
def P18431592239827046333.Spec : Prop :=
  ∀ n, P18431592239827046333.a n = (A305753 n : ℚ)

end A305753

/-! ## A305753.P1973158916276923530

`∑[A281366(2*n+1)-A281366(A116966(2*n))]`
-/

namespace A305753.P1973158916276923530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281366 (2 * n + 1) - A281366 (A116966 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305753.P1973158916276923530

namespace A305753

/-- `∑[A281366(2*n+1)-A281366(A116966(2*n))]` -/
def P1973158916276923530.Spec : Prop :=
  ∀ n, P1973158916276923530.a n = A305753 n

end A305753

/-! ## A305753.P13259255788573442630

`ceil(A002283(n)/A050683(n+3))`
-/

namespace A305753.P13259255788573442630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002283 n : ℚ) / (A050683 (n + 3) : ℚ)⌉

end

end A305753.P13259255788573442630

namespace A305753

/-- `ceil(A002283(n)/A050683(n+3))` -/
def P13259255788573442630.Spec : Prop :=
  ∀ n, P13259255788573442630.a n = A305753 n

end A305753

/-!
# A305754: Inverse Euler transform of n^n.

The programs for A305754, there is no canonical definition to state claims against.
-/

/-! ## A305754.P3724958364355265174

`A130483((n+1)*A007559(n))`
-/

namespace A305754.P3724958364355265174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130483 ((n + 1 : ℤ) * A007559 n).toNat

end

end A305754.P3724958364355265174

/-!
# A305757: Inverse Euler transform of q*(j-720) where j is j-function (A000521).

The programs for A305757, there is no canonical definition to state claims against.
-/

/-! ## A305757.P17943857318398760198

`A305920(n+1)+24`
-/

namespace A305757.P17943857318398760198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305920 (n + 1) + 24

end

end A305757.P17943857318398760198

/-!
# A305759: Numbers that can be factored as a product of numbers of the form 2^k+1 (A000051).

The programs for A305759, there is no canonical definition to state claims against.
-/

/-! ## A305759.P10178153935171829959

`eq[A291168(n), A295989(A141256(n))]`
-/

namespace A305759.P10178153935171829959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291168 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295989 (A141256 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A305759.P10178153935171829959

/-!
# A305761: Nonprime Heinz numbers of z-trees.

The programs for A305761, there is no canonical definition to state claims against.
-/

/-! ## A305761.P2439052778173171079

`filter[A339002(n+1), A378442(#)]`
-/

namespace A305761.P2439052778173171079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378442 (f1 j).toNat = 1) n)

end

end A305761.P2439052778173171079

/-! ## A305761.P5003045932717200980

`∩[A316476(n+1), A339002(n+1)]`
-/

namespace A305761.P5003045932717200980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305761.P5003045932717200980

/-! ## A305761.P11255675125288343716

`∩[A318992(n+1), A339002(n+1)]`
-/

namespace A305761.P11255675125288343716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305761.P11255675125288343716

/-! ## A305761.P17559590395597075437

`∩[A318992(n+1), A338909(n+1)]`
-/

namespace A305761.P17559590395597075437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305761.P17559590395597075437

/-!
# A305762: a(0) = 24, a(n) = 2^(max(0, min(3, p - 1))) * 3^(max(0, min(1, q - 1))) where n = 2^p * 3^q * 5^r * ... .

The programs for A305762, the canonical program `A305762.P3345363767026438393` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305762 has offset 0).

The definition of A305762 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A305762.P3345363767026438393

`gcd(24, n/gcd(6, n))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A305762

/-- `gcd(24, n/gcd(6, n))` -/
def P3345363767026438393.Spec : Prop :=
  ∀ n, (P3345363767026438393.a n : ℤ) = A305762 n

theorem P3345363767026438393.correct : P3345363767026438393.Spec := by
  intro n
  simp only [A305762]

end A305762

/-!
# A305763: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305763, there is no canonical definition to state claims against.
-/

/-! ## A305763.P11917953416084810050

`A305769(∑[4*n]+1)`
-/

namespace A305763.P11917953416084810050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305769 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305763.P11917953416084810050

/-! ## A305763.P17187441769933255119

`record[A003982(n)*A305769(n+1)]`
-/

namespace A305763.P17187441769933255119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A305769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305763.P17187441769933255119

/-! ## A305763.P9050290147459972629

`A305769(A001844(n))^A326029(n)`
-/

namespace A305763.P9050290147459972629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305769 (A001844 n).toNat : ℚ) ^ (A326029 n : ℤ)

end

end A305763.P9050290147459972629

/-! ## A305763.P905965181680588175

`gcd(A017909(n), A305769(A001844(n)))`
-/

namespace A305763.P905965181680588175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017909 n) (A305769 (A001844 n).toNat)

end

end A305763.P905965181680588175

/-! ## A305763.P13284572267118954739

`lcm(A033999(n), A305769(A001844(n)))`
-/

namespace A305763.P13284572267118954739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A305769 (A001844 n).toNat)

end

end A305763.P13284572267118954739

/-!
# A305764: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305764, there is no canonical definition to state claims against.
-/

/-! ## A305764.P7843035369121081727

`A305769(∑[n+2]+4)`
-/

namespace A305764.P7843035369121081727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305769 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305764.P7843035369121081727

/-! ## A305764.P10226623938140166089

`A305769(A167614(n+1))+A011731(n)`
-/

namespace A305764.P10226623938140166089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305769 (A167614 (n + 1)).toNat + A011731 n

end

end A305764.P10226623938140166089

/-! ## A305764.P6606679340916972076

`or(A025462(n), A305769(A167614(n+1)))`
-/

namespace A305764.P6606679340916972076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025462 n) (A305769 (A167614 (n + 1)).toNat)

end

end A305764.P6606679340916972076

/-! ## A305764.P872919725062456544

`or(A025465(n), A305769(A167614(n+1)))`
-/

namespace A305764.P872919725062456544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025465 n) (A305769 (A167614 (n + 1)).toNat)

end

end A305764.P872919725062456544

/-! ## A305764.P7448440254257672888

`A305769(A167614(n+1))%A281951(n+1)`
-/

namespace A305764.P7448440254257672888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305769 (A167614 (n + 1)).toNat) (A281951 (n + 1))

end

end A305764.P7448440254257672888

/-!
# A305765: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305765, there is no canonical definition to state claims against.
-/

/-! ## A305765.P718297191574856356

`A305769(A374004(n+1))`
-/

namespace A305765.P718297191574856356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305769 (A374004 (n + 1)).toNat

end

end A305765.P718297191574856356

/-! ## A305765.P5975679950584952427

`A305769(A141214(n)+7)`
-/

namespace A305765.P5975679950584952427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305769 (A141214 n + 7).toNat

end

end A305765.P5975679950584952427

/-! ## A305765.P13424321529089128372

`A305769(A052905(n)+9)`
-/

namespace A305765.P13424321529089128372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305769 (A052905 n + 9).toNat

end

end A305765.P13424321529089128372

/-! ## A305765.P4506415099401021931

`A305769(A055999(n)+10)`
-/

namespace A305765.P4506415099401021931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305769 (A055999 n + 10).toNat

end

end A305765.P4506415099401021931

/-! ## A305765.P14201931650237280189

`A305769(A167614(n+2)+1)`
-/

namespace A305765.P14201931650237280189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305769 (A167614 (n + 2) + 1).toNat

end

end A305765.P14201931650237280189

/-!
# A305766: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305766, there is no canonical definition to state claims against.
-/

/-! ## A305766.P3674584336968488199

`A305769(A374005(n+1))`
-/

namespace A305766.P3674584336968488199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305769 (A374005 (n + 1)).toNat

end

end A305766.P3674584336968488199

/-! ## A305766.P9107927034264484735

`A305769(A155212(n)+13)`
-/

namespace A305766.P9107927034264484735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305769 (A155212 n + 13).toNat

end

end A305766.P9107927034264484735

/-! ## A305766.P9063269991576181106

`A305769(A056000(n)+15)`
-/

namespace A305766.P9063269991576181106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305769 (A056000 n + 15).toNat

end

end A305766.P9063269991576181106

/-! ## A305766.P12985312846048722392

`A305769(A167614(n+3)+2)`
-/

namespace A305766.P12985312846048722392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305769 (A167614 (n + 3) + 2).toNat

end

end A305766.P12985312846048722392

/-! ## A305766.P9535280453135741816

`A305769(A141214(n+1)+8)`
-/

namespace A305766.P9535280453135741816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305769 (A141214 (n + 1) + 8).toNat

end

end A305766.P9535280453135741816

/-!
# A305767: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305767, there is no canonical definition to state claims against.
-/

/-! ## A305767.P11069795707468398949

`A305769(A374007(n+1))`
-/

namespace A305767.P11069795707468398949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305769 (A374007 (n + 1)).toNat

end

end A305767.P11069795707468398949

/-! ## A305767.P18077290434953071713

`A305769(A167499(n+4)+1)`
-/

namespace A305767.P18077290434953071713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305769 (A167499 (n + 4) + 1).toNat

end

end A305767.P18077290434953071713

/-! ## A305767.P12051932629376459336

`A305769(eq[7, A131818(n+1)])`
-/

namespace A305767.P12051932629376459336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305767.P12051932629376459336

/-! ## A305767.P336463968222215473

`A305769(A056119(n)+16)`
-/

namespace A305767.P336463968222215473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305769 (A056119 n + 16).toNat

end

end A305767.P336463968222215473

/-! ## A305767.P10676372902940801357

`A305769(eq[3, A219347(n)])`
-/

namespace A305767.P10676372902940801357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305767.P10676372902940801357

/-!
# A305768: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305768, there is no canonical definition to state claims against.
-/

/-! ## A305768.P16404536891298122246

`A305769(A374008(n+1))`
-/

namespace A305768.P16404536891298122246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305769 (A374008 (n + 1)).toNat

end

end A305768.P16404536891298122246

/-! ## A305768.P638260197702622448

`A305769(eq[8, A131818(n+1)])`
-/

namespace A305768.P638260197702622448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305768.P638260197702622448

/-! ## A305768.P16236686160214033271

`A305769(A055999(n+4))`
-/

namespace A305768.P16236686160214033271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305769 (A055999 (n + 4)).toNat

end

end A305768.P16236686160214033271

/-! ## A305768.P10133034206560624806

`A305769(eq[4, A219347(n)])`
-/

namespace A305768.P10133034206560624806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305768.P10133034206560624806

/-! ## A305768.P7228252042178669506

`A305769(eq[6, A193592(n)])`
-/

namespace A305768.P7228252042178669506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305768.P7228252042178669506

/-!
# A305769: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305769, there is no canonical definition to state claims against.
-/

/-! ## A305769.P15707371780003432488

`A317118(n+1)+A016389(A022166(n))`
-/

namespace A305769.P15707371780003432488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317118 (n + 1) + A016389 (A022166 n).toNat

end

end A305769.P15707371780003432488

/-! ## A305769.P4595392924542676233

`A317118(n+1)+A016389(A027336(n))`
-/

namespace A305769.P4595392924542676233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317118 (n + 1) + A016389 (A027336 n).toNat

end

end A305769.P4595392924542676233

/-! ## A305769.P5156982359747077528

`A317118(n+1)+A016389(A176561(n))`
-/

namespace A305769.P5156982359747077528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317118 (n + 1) + A016389 (A176561 n).toNat

end

end A305769.P5156982359747077528

/-! ## A305769.P3859647892879738077

`A317118(n+1)+A178780(A174376(n))`
-/

namespace A305769.P3859647892879738077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317118 (n + 1) + A178780 (A174376 n).toNat

end

end A305769.P3859647892879738077

/-! ## A305769.P12801143059200982687

`A317118(n+1)-A011731(A022171(n))`
-/

namespace A305769.P12801143059200982687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317118 (n + 1) - A011731 (A022171 n).toNat

end

end A305769.P12801143059200982687

/-!
# A305770: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305770, there is no canonical definition to state claims against.
-/

/-! ## A305770.P4790044608255096612

`A305776(∑[4*n]+1)`
-/

namespace A305770.P4790044608255096612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305776 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305770.P4790044608255096612

/-! ## A305770.P2651661313699356138

`record[A305776(Δ[A235355(n)])]`
-/

namespace A305770.P2651661313699356138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305776 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305770.P2651661313699356138

/-! ## A305770.P6557703824283015335

`record[A305776(A330613(n+1))]`
-/

namespace A305770.P6557703824283015335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305776 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305770.P6557703824283015335

/-! ## A305770.P9448672355348904289

`record[A305776(Δ[A079824(n+1)])]`
-/

namespace A305770.P9448672355348904289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305776 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305770.P9448672355348904289

/-! ## A305770.P10801194532608322142

`record[A305776(A001844(val(n+1, 2)))]`
-/

namespace A305770.P10801194532608322142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305776 (A001844 (SequenceMachineLib.valuation (n + 1) 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305770.P10801194532608322142

/-!
# A305771: Number of n X 3 0..1 arrays with every element unequal to 0, 1, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305771, there is no canonical definition to state claims against.
-/

/-! ## A305771.P5428807616388818667

`A305776(∑[n+2]+4)`
-/

namespace A305771.P5428807616388818667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305776 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305771.P5428807616388818667

/-! ## A305771.P2505207268999868698

`A305776(A167614(n+1))+char[17]`
-/

namespace A305771.P2505207268999868698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305776 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305771.P2505207268999868698

/-! ## A305771.P11738921238857155463

`record[A132013(n)*A305776(n+4)]`
-/

namespace A305771.P11738921238857155463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132013 n * A305776 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305771.P11738921238857155463

/-! ## A305771.P13502215321935069681

`A036225(n)*A305776(A167614(n+1))`
-/

namespace A305771.P13502215321935069681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A305776 (A167614 (n + 1)).toNat

end

end A305771.P13502215321935069681

/-! ## A305771.P2025881918499983175

`A305776(A167614(n+1))%A016938(n)`
-/

namespace A305771.P2025881918499983175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305776 (A167614 (n + 1)).toNat) (A016938 n)

end

end A305771.P2025881918499983175

/-!
# A305772: Number of n X 4 0..1 arrays with every element unequal to 0, 1, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305772, there is no canonical definition to state claims against.
-/

/-! ## A305772.P2321135443177331141

`A305776(∑[n+3]+7)`
-/

namespace A305772.P2321135443177331141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305776 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A305772.P2321135443177331141

/-! ## A305772.P14067655812300661585

`A305776(A052905(n)+9)+char[16]`
-/

namespace A305772.P14067655812300661585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305776 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305772.P14067655812300661585

/-! ## A305772.P8288036742993415712

`A305776(A055999(n)+10)+char[48]`
-/

namespace A305772.P8288036742993415712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  48

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305776 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305772.P8288036742993415712

/-! ## A305772.P4175941956713744404

`A007318(C(2, n))*A305776(A052905(n)+9)`
-/

namespace A305772.P4175941956713744404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A305776 (A052905 n + 9).toNat

end

end A305772.P4175941956713744404

/-! ## A305772.P18060939415918774679

`A007318(C(2, n))*A305776(A055999(n)+10)`
-/

namespace A305772.P18060939415918774679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A305776 (A055999 n + 10).toNat

end

end A305772.P18060939415918774679

/-!
# A305773: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305773, there is no canonical definition to state claims against.
-/

/-! ## A305773.P8181460076743467122

`A305776(∑[n+4]+11)`
-/

namespace A305773.P8181460076743467122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305776 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A305773.P8181460076743467122

/-! ## A305773.P478307003880116005

`A305776(A056000(n)+15)+char[16]`
-/

namespace A305773.P478307003880116005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305776 (A056000 n + 15).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305773.P478307003880116005

/-! ## A305773.P18331677090048127681

`A007318(C(n, 2))*A305776(A056000(n)+15)`
-/

namespace A305773.P18331677090048127681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A305776 (A056000 n + 15).toNat

end

end A305773.P18331677090048127681

/-! ## A305773.P1336398682983357166

`A000041(C(2, 2*n))*A305776(A056000(n)+15)`
-/

namespace A305773.P1336398682983357166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (2 * n)) * A305776 (A056000 n + 15).toNat

end

end A305773.P1336398682983357166

/-! ## A305773.P13021333855634811053

`A305776(A056000(n)+15)/A007318(A007318(2*n))`
-/

namespace A305773.P13021333855634811053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305776 (A056000 n + 15).toNat : ℚ) / (A007318 (A007318 (2 * n)).toNat : ℚ)

end

end A305773.P13021333855634811053

/-!
# A305774: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305774, there is no canonical definition to state claims against.
-/

/-! ## A305774.P1460545033151518378

`A305776(A374007(n+1))`
-/

namespace A305774.P1460545033151518378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305776 (A374007 (n + 1)).toNat

end

end A305774.P1460545033151518378

/-! ## A305774.P12012860835439791674

`A305776(A166136(n+4))`
-/

namespace A305774.P12012860835439791674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305776 (A166136 (n + 4)).toNat

end

end A305774.P12012860835439791674

/-! ## A305774.P976603424838648709

`A305776(A056115(n)+21)`
-/

namespace A305774.P976603424838648709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305776 (A056115 n + 21).toNat

end

end A305774.P976603424838648709

/-! ## A305774.P11939467142385951377

`A305776(A167499(n+4)+1)`
-/

namespace A305774.P11939467142385951377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305776 (A167499 (n + 4) + 1).toNat

end

end A305774.P11939467142385951377

/-! ## A305774.P3599642973097991162

`A305776(A167487(n+4)-1)`
-/

namespace A305774.P3599642973097991162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305776 (A167487 (n + 4) - 1).toNat

end

end A305774.P3599642973097991162

/-!
# A305775: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305775, there is no canonical definition to state claims against.
-/

/-! ## A305775.P16489406279729935825

`A305776(A374008(n+1))`
-/

namespace A305775.P16489406279729935825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305776 (A374008 (n + 1)).toNat

end

end A305775.P16489406279729935825

/-! ## A305775.P13144803527213670669

`A305776(A167487(n+5))`
-/

namespace A305775.P13144803527213670669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305776 (A167487 (n + 5)).toNat

end

end A305775.P13144803527213670669

/-! ## A305775.P8106409156130435631

`A305776(A056119(n)+28)`
-/

namespace A305775.P8106409156130435631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305776 (A056119 n + 28).toNat

end

end A305775.P8106409156130435631

/-! ## A305775.P16776021146062149018

`A305776(eq[11, A066657(n)])`
-/

namespace A305775.P16776021146062149018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305775.P16776021146062149018

/-! ## A305775.P7457440204716425487

`A305776(A077169(n+7)+2)`
-/

namespace A305775.P7457440204716425487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305776 (A077169 (n + 7) + 2).toNat

end

end A305775.P7457440204716425487

/-!
# A305776: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305776, there is no canonical definition to state claims against.
-/

/-! ## A305776.P6993205355240560433

`A317125(n+1)-A010894(A003401(n+1))`
-/

namespace A305776.P6993205355240560433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317125 (n + 1) - A010894 ((A003401 (n + 1)).toNat + 21)

end

end A305776.P6993205355240560433

/-! ## A305776.P1074081945396458617

`A317125(n+1)+A016389(A022166(n))`
-/

namespace A305776.P1074081945396458617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317125 (n + 1) + A016389 (A022166 n).toNat

end

end A305776.P1074081945396458617

/-! ## A305776.P13476077274988534409

`A317125(n+1)+A016389(A027336(n))`
-/

namespace A305776.P13476077274988534409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317125 (n + 1) + A016389 (A027336 n).toNat

end

end A305776.P13476077274988534409

/-! ## A305776.P13091267797965987519

`A317125(n+1)+A178798(A008459(n))`
-/

namespace A305776.P13091267797965987519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317125 (n + 1) + A178798 (A008459 n).toNat

end

end A305776.P13091267797965987519

/-! ## A305776.P423282334209150395

`A317125(n+1)-A011731(A022171(n))`
-/

namespace A305776.P423282334209150395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317125 (n + 1) - A011731 (A022171 n).toNat

end

end A305776.P423282334209150395

/-!
# A305777: Number of set partitions of [n] with alternating parity of elements and exactly three blocks.

The programs for A305777, there is no canonical definition to state claims against.
-/

/-! ## A305777.P15979926037175910258

`A274581(A167614(n+2))`
-/

namespace A305777.P15979926037175910258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (A167614 (n + 2)).toNat

end

end A305777.P15979926037175910258

/-! ## A305777.P17184803762368338703

`A274581(A052905(n)+8)`
-/

namespace A305777.P17184803762368338703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (A052905 n + 8).toNat

end

end A305777.P17184803762368338703

/-! ## A305777.P3048233904361919137

`A274581(A055999(n)+9)`
-/

namespace A305777.P3048233904361919137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (A055999 n + 9).toNat

end

end A305777.P3048233904361919137

/-! ## A305777.P1817613115865767529

`A274581(Δ[A005286(n)]+4)`
-/

namespace A305777.P1817613115865767529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (f1 (n + 1) - f1 n + 4).toNat

end

end A305777.P1817613115865767529

/-! ## A305777.P8399328802904550823

`record[A274581(A133263(n)+1)]`
-/

namespace A305777.P8399328802904550823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (A133263 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305777.P8399328802904550823

/-!
# A305778: Number of set partitions of [n] with alternating parity of elements and exactly four blocks.

The programs for A305778, there is no canonical definition to state claims against.
-/

/-! ## A305778.P2036949460434154009

`record[A274581(A167499(n)-1)]`
-/

namespace A305778.P2036949460434154009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (A167499 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305778.P2036949460434154009

/-! ## A305778.P17748685412560055051

`record[A274581(A000124(n)+3)]`
-/

namespace A305778.P17748685412560055051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (A000124 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305778.P17748685412560055051

/-! ## A305778.P3601258304128695531

`record[A274581(A000217(n)+4)]`
-/

namespace A305778.P3601258304128695531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (A000217 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305778.P3601258304128695531

/-! ## A305778.P4156283936489357028

`A274581(A167614(n+3)+1)`
-/

namespace A305778.P4156283936489357028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (A167614 (n + 3) + 1).toNat

end

end A305778.P4156283936489357028

/-! ## A305778.P442368427059144936

`A274581(A055999(n+1)+10)`
-/

namespace A305778.P442368427059144936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (A055999 (n + 1) + 10).toNat

end

end A305778.P442368427059144936

/-!
# A305779: Number of set partitions of [n] with alternating parity of elements and exactly five blocks.

The programs for A305779, there is no canonical definition to state claims against.
-/

/-! ## A305779.P4633635875421953710

`A274581(A167499(n+4))`
-/

namespace A305779.P4633635875421953710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (A167499 (n + 4)).toNat

end

end A305779.P4633635875421953710

/-! ## A305779.P13005908051390796687

`A274581(A000217(n+5)+5)`
-/

namespace A305779.P13005908051390796687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (A000217 (n + 5) + 5).toNat

end

end A305779.P13005908051390796687

/-! ## A305779.P1207749372429092081

`A274581(A055999(n+2)+11)`
-/

namespace A305779.P1207749372429092081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (A055999 (n + 2) + 11).toNat

end

end A305779.P1207749372429092081

/-! ## A305779.P240122507614537469

`record[A274581(A061579(A055999(n)))]`
-/

namespace A305779.P240122507614537469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (A061579 (A055999 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305779.P240122507614537469

/-! ## A305779.P8111390049393795645

`record[A274581(A271439(A167499(n)))]`
-/

namespace A305779.P8111390049393795645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (A271439 (A167499 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305779.P8111390049393795645

/-!
# A305780: Number of set partitions of [n] with alternating parity of elements and exactly six blocks.

The programs for A305780, there is no canonical definition to state claims against.
-/

/-! ## A305780.P10057825503431954632

`A274581(C(n+8, 2)-n-1)`
-/

namespace A305780.P10057825503431954632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 ((Nat.choose (n + 8) 2 : ℤ) - (n : ℤ) - 1).toNat

end

end A305780.P10057825503431954632

/-! ## A305780.P7568717579968604919

`A274581(A166136(n+5))`
-/

namespace A305780.P7568717579968604919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (A166136 (n + 5)).toNat

end

end A305780.P7568717579968604919

/-! ## A305780.P1069234884007634573

`A274581(eq[6, A002262(n)])`
-/

namespace A305780.P1069234884007634573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305780.P1069234884007634573

/-! ## A305780.P17913960975503258774

`A274581(A167499(n+5)+1)`
-/

namespace A305780.P17913960975503258774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (A167499 (n + 5) + 1).toNat

end

end A305780.P17913960975503258774

/-! ## A305780.P12911228299957817497

`A274581(A000124(n+6)+5)`
-/

namespace A305780.P12911228299957817497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (A000124 (n + 6) + 5).toNat

end

end A305780.P12911228299957817497

/-!
# A305781: Number of set partitions of [n] with alternating parity of elements and exactly seven blocks.

The programs for A305781, there is no canonical definition to state claims against.
-/

/-! ## A305781.P8433444250793380531

`A274581(A167487(n+6))`
-/

namespace A305781.P8433444250793380531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (A167487 (n + 6)).toNat

end

end A305781.P8433444250793380531

/-! ## A305781.P12749980234333665193

`A274581(eq[7, A002262(n)])`
-/

namespace A305781.P12749980234333665193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305781.P12749980234333665193

/-! ## A305781.P1685887177369349223

`A274581(eq[7, A191532(n)])`
-/

namespace A305781.P1685887177369349223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305781.P1685887177369349223

/-! ## A305781.P10961702240149522416

`A274581(A167499(n+6)+2)`
-/

namespace A305781.P10961702240149522416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (A167499 (n + 6) + 2).toNat

end

end A305781.P10961702240149522416

/-! ## A305781.P4323549341001142441

`A274581(A167614(n+6)+4)`
-/

namespace A305781.P4323549341001142441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (A167614 (n + 6) + 4).toNat

end

end A305781.P4323549341001142441

/-!
# A305782: Number of set partitions of [n] with alternating parity of elements and exactly eight blocks.

The programs for A305782, there is no canonical definition to state claims against.
-/

/-! ## A305782.P15688841122189632788

`A274581(eq[8, A002262(n)])`
-/

namespace A305782.P15688841122189632788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305782.P15688841122189632788

/-! ## A305782.P4357290535023540008

`A274581(A167487(n+7)+1)`
-/

namespace A305782.P4357290535023540008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (A167487 (n + 7) + 1).toNat

end

end A305782.P4357290535023540008

/-! ## A305782.P7051141284300532416

`A274581(A000096(n+7)+9)`
-/

namespace A305782.P7051141284300532416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (A000096 (n + 7) + 9).toNat

end

end A305782.P7051141284300532416

/-! ## A305782.P15058640935934153435

`A274581(A000217(n+8)+8)`
-/

namespace A305782.P15058640935934153435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (A000217 (n + 8) + 8).toNat

end

end A305782.P15058640935934153435

/-! ## A305782.P11914101623960503899

`A274581(eq[9, A002260(n+1)])`
-/

namespace A305782.P11914101623960503899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305782.P11914101623960503899

/-!
# A305783: Number of set partitions of [n] with alternating parity of elements and exactly nine blocks.

The programs for A305783, there is no canonical definition to state claims against.
-/

/-! ## A305783.P1216079304476054280

`A274581(eq[9, A002262(n)])`
-/

namespace A305783.P1216079304476054280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305783.P1216079304476054280

/-! ## A305783.P6370610880334996531

`A274581(A000096(n+8)+10)`
-/

namespace A305783.P6370610880334996531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (A000096 (n + 8) + 10).toNat

end

end A305783.P6370610880334996531

/-! ## A305783.P955590741628364092

`A274581(A000217(n+9)+9)`
-/

namespace A305783.P955590741628364092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (A000217 (n + 9) + 9).toNat

end

end A305783.P955590741628364092

/-! ## A305783.P16473659787026002293

`A274581(eq[10, A002260(n+1)])`
-/

namespace A305783.P16473659787026002293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305783.P16473659787026002293

/-! ## A305783.P15404046298148739302

`A274581(A055999(n)+A008458(n+9))`
-/

namespace A305783.P15404046298148739302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (A055999 n + A008458 (n + 9)).toNat

end

end A305783.P15404046298148739302

/-!
# A305784: Number of set partitions of [n] with alternating parity of elements and exactly ten blocks.

The programs for A305784, there is no canonical definition to state claims against.
-/

/-! ## A305784.P17185274077883481512

`A274581(eq[10, A002262(n)])`
-/

namespace A305784.P17185274077883481512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305784.P17185274077883481512

/-! ## A305784.P15743264870957118168

`A274581(A000124(n+10)+9)`
-/

namespace A305784.P15743264870957118168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (A000124 (n + 10) + 9).toNat

end

end A305784.P15743264870957118168

/-! ## A305784.P8644975546483402113

`A274581(eq[11, A002260(n+1)])`
-/

namespace A305784.P8644975546483402113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305784.P8644975546483402113

/-! ## A305784.P4944103760433755964

`A274581(eq[11, A135223(n+1)])`
-/

namespace A305784.P4944103760433755964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305784.P4944103760433755964

/-! ## A305784.P9089694374080672130

`A274581(A002620(n+6)+A002620(n+15))`
-/

namespace A305784.P9089694374080672130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (A002620 (n + 6) + A002620 (n + 15)).toNat

end

end A305784.P9089694374080672130

/-!
# A305785: Number of set partitions of [n] with alternating parity of elements and exactly ceiling(n/2) blocks.

The programs for A305785, there is no canonical definition to state claims against.
-/

/-! ## A305785.P6375324848466806748

`A274581(∑[n%2+n])`
-/

namespace A305785.P6375324848466806748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A305785.P6375324848466806748

/-! ## A305785.P5146165318359470293

`A274581(floor((n+1)²/2))`
-/

namespace A305785.P5146165318359470293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 ⌊((n + 1) ^ 2 : ℚ) / 2⌋.toNat

end

end A305785.P5146165318359470293

/-! ## A305785.P9377438790538839708

`gcd(floor(acot(n)), A274581(A008818(2*n+1)))`
-/

namespace A305785.P9377438790538839708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A274581 (A008818 (2 * n + 1)).toNat)

end

end A305785.P9377438790538839708

/-! ## A305785.P14188883370410302125

`A274581(A008818(2*n+1))+A000007(n+1)`
-/

namespace A305785.P14188883370410302125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (A008818 (2 * n + 1)).toNat + A000007 (n + 1)

end

end A305785.P14188883370410302125

/-! ## A305785.P1042703689703000717

`A274581(A008818(2*n+1))+A159075(2*(n+1))`
-/

namespace A305785.P1042703689703000717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (A008818 (2 * n + 1)).toNat + A159075 (2 * (n + 1))

end

end A305785.P1042703689703000717

/-!
# A305786: Inverse Euler transform of (-1)^n * n!.

The programs for A305786, there is no canonical definition to state claims against.
-/

/-! ## A305786.P12498355124547608114

`∑{d}[n+1, A154955(#)*A306153((n+1)/#)]`
-/

namespace A305786.P12498355124547608114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A154955 d * A306153 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305786.P12498355124547608114

/-! ## A305786.P3799245713993446914

`∑{d}[n+1, A240354(#-1)*A306153((n+1)/#)]`
-/

namespace A305786.P3799245713993446914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A240354 (d - 1) * A306153 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305786.P3799245713993446914

/-! ## A305786.P2398195071843740475

`∑{d}[n+1, A240356(#-1)*A306153((n+1)/#)]`
-/

namespace A305786.P2398195071843740475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A240356 (d - 1) * A306153 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305786.P2398195071843740475

/-!
# A305788: Restricted growth sequence transform of A278233, filter-sequence for GF(2)[X]-factorization.

The programs for A305788, there is no canonical definition to state claims against.
-/

/-! ## A305788.P6637779717872816184

`A159081(A305814(n+1))`
-/

namespace A305788.P6637779717872816184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159081 (A305814 (n + 1)).toNat

end

end A305788.P6637779717872816184

/-! ## A305788.P15405646521340134176

`A181819(A278233(n+1))%A265775(n+1)`
-/

namespace A305788.P15405646521340134176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181819 (A278233 (n + 1)).toNat) (A265775 (n + 1))

end

end A305788.P15405646521340134176

/-! ## A305788.P7122824915820238988

`A091220(n+1)-A121373(A024450(n+1))`
-/

namespace A305788.P7122824915820238988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091220 (n + 1) - A121373 (A024450 (n + 1)).toNat

end

end A305788.P7122824915820238988

/-! ## A305788.P3363437739581982445

`A334032(A004280(3*n+2))+A334032(n+1)`
-/

namespace A305788.P3363437739581982445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334032 (A004280 (3 * n + 2)).toNat + A334032 (n + 1)

end

end A305788.P3363437739581982445

/-! ## A305788.P16365724125857553527

`A327161(n+1)+A327127(A071945(n))`
-/

namespace A305788.P16365724125857553527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327161 (n + 1) + A327127 (A071945 n).toNat

end

end A305788.P16365724125857553527

/-!
# A305789: Filter-sequence combining prime signature of n (A046523) and similar signature for GF(2)[X]-factorization (A278233).

The programs for A305789, there is no canonical definition to state claims against.
-/

/-! ## A305789.P12826018764155079904

`A305815(A187829(n+1)+A185274(n))`
-/

namespace A305789.P12826018764155079904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305815 (A187829 (n + 1) + A185274 n).toNat

end

end A305789.P12826018764155079904

/-! ## A305789.P9135615197021063070

`A305815(A187829(n+1)+A034412(n+1))`
-/

namespace A305789.P9135615197021063070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305815 (A187829 (n + 1) + A034412 (n + 1)).toNat

end

end A305789.P9135615197021063070

/-! ## A305789.P1910635983203264400

`A305815(n+1)+A184946(A296753(n+1))`
-/

namespace A305789.P1910635983203264400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305815 (n + 1) + A184946 (A296753 (n + 1)).toNat

end

end A305789.P1910635983203264400

/-! ## A305789.P9985072138453171947

`A305815(n+1)+A259667(A259676(n+1))`
-/

namespace A305789.P9985072138453171947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305815 (n + 1) + A259667 (A259676 (n + 1)).toNat

end

end A305789.P9985072138453171947

/-! ## A305789.P1265541000274918123

`A305815(A179892(n+1)%A153048(n+1))`
-/

namespace A305789.P1265541000274918123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305815 (Int.tmod (A179892 (n + 1)) (A153048 (n + 1))).toNat

end

end A305789.P1265541000274918123

/-!
# A305790: Filter-sequence combining prime signature of n (A046523) and similar signature obtained when (0,1)-polynomial encoded in the binary expansion of n is factored over Q (A304751).

The programs for A305790, there is no canonical definition to state claims against.
-/

/-! ## A305790.P2533039460158095670

`A294877(n+1)%A023675(n+2)`
-/

namespace A305790.P2533039460158095670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294877 (n + 1)) (A023675 (n + 2))

end

end A305790.P2533039460158095670

/-! ## A305790.P498576589419509967

`A294877(n+1)%A357972(A256130(n))`
-/

namespace A305790.P498576589419509967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294877 (n + 1)) (A357972 (A256130 n).toNat)

end

end A305790.P498576589419509967

/-!
# A305791: Dirichlet convolution of A175851 with itself.

The programs for A305791, the canonical program `A305791.P13240285142475897368` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305791 has offset 1).

The definition of A305791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305791.P13240285142475897368

`∑{d}[n+1, A175851(#)*A175851((n+1)/#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A305791

/-- `∑{d}[n+1, A175851(#)*A175851((n+1)/#)]` -/
def P13240285142475897368.Spec : Prop :=
  ∀ n, P13240285142475897368.a n = A305791 (n + 1)

theorem P13240285142475897368.correct : P13240285142475897368.Spec := by
  intro n
  simp only [A305791, Nat.add_sub_cancel]

end A305791

/-! ## A305791.P899311651703976169

`or(A035179(A061672(n+1)), A348717(n+1))`
-/

namespace A305791.P899311651703976169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035179 (A061672 (n + 1)).toNat) (A348717 (n + 1))

end

end A305791.P899311651703976169

namespace A305791

/-- `or(A035179(A061672(n+1)), A348717(n+1))` -/
def P899311651703976169.Spec : Prop :=
  ∀ n, P899311651703976169.a n = A305791 (n + 1)

end A305791

/-!
# A305792: a(n) = Product_{d|n, d<n} prime(A286622(d)-1).

The programs for A305792, there is no canonical definition to state claims against.
-/

/-! ## A305792.P16438979706315146856

`A052126(2*A305794(n+1))`
-/

namespace A305792.P16438979706315146856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (2 * A305794 (n + 1)).toNat

end

end A305792.P16438979706315146856

/-! ## A305792.P17713219651648703873

`A052126(A305794(n+1)+A305794(n+1))`
-/

namespace A305792.P17713219651648703873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A305794 (n + 1) + A305794 (n + 1)).toNat

end

end A305792.P17713219651648703873

/-! ## A305792.P9127768882900004395

`A317942(n+1)%A250120(A337215(n+2))`
-/

namespace A305792.P9127768882900004395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317942 (n + 1)) (A250120 (A337215 (n + 2)).toNat)

end

end A305792.P9127768882900004395

/-! ## A305792.P13270696564657940241

`A109680(A317942(n+1))`
-/

namespace A305792.P13270696564657940241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (A317942 (n + 1)).toNat

end

end A305792.P13270696564657940241

/-! ## A305792.P7575041716587552097

`A317942(A000005(2^n))`
-/

namespace A305792.P7575041716587552097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317942 (A000005 (2 ^ n)).toNat

end

end A305792.P7575041716587552097

/-!
# A305794: a(n) = Product_{d|n, d>1} prime(A286622(d)-1).

The programs for A305794, there is no canonical definition to state claims against.
-/

/-! ## A305794.P14561685997599216264

`∏{p}[n+1, #]*A303707(A005179(n+1))`
-/

namespace A305794.P14561685997599216264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A303707 (A005179 (n + 1)).toNat

end

end A305794.P14561685997599216264

/-! ## A305794.P15345087095064363757

`A007947(n+1)*A372515(A220418(n+1))`
-/

namespace A305794.P15345087095064363757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A372515 (A220418 (n + 1)).toNat

end

end A305794.P15345087095064363757

/-!
# A305796: Dirichlet convolution of A246277 with itself.

The programs for A305796, the canonical program `A305796.P7638338548158228048` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305796 has offset 1).

The definition of A305796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305796.P7638338548158228048

`∑{d}[n+1, A246277(#)*A246277((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A305796

/-- `∑{d}[n+1, A246277(#)*A246277((n+1)/#)]` -/
def P7638338548158228048.Spec : Prop :=
  ∀ n, P7638338548158228048.a n = A305796 (n + 1)

theorem P7638338548158228048.correct : P7638338548158228048.Spec := by
  intro n
  simp only [A305796, Nat.add_sub_cancel]

end A305796

/-! ## A305796.P14873874852979877387

`A287870(A123108(p?[A330061(n+1)]))`
-/

namespace A305796.P14873874852979877387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287870 (A123108 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A305796.P14873874852979877387

namespace A305796

/-- `A287870(A123108(p?[A330061(n+1)]))` -/
def P14873874852979877387.Spec : Prop :=
  ∀ n, P14873874852979877387.a n = A305796 (n + 1)

end A305796

/-! ## A305796.P8206410506487925132

`A277120(n+1)-A304118(A250120(n))`
-/

namespace A305796.P8206410506487925132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277120 (n + 1) - A304118 (A250120 n).toNat

end

end A305796.P8206410506487925132

namespace A305796

/-- `A277120(n+1)-A304118(A250120(n))` -/
def P8206410506487925132.Spec : Prop :=
  ∀ n, P8206410506487925132.a n = A305796 (n + 1)

end A305796

/-! ## A305796.P8275703321102725951

`A069905(A057567(n+1)%A005113(n+1))`
-/

namespace A305796.P8275703321102725951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (Int.tmod (A057567 (n + 1)) (A005113 (n + 1))).toNat

end

end A305796.P8275703321102725951

namespace A305796

/-- `A069905(A057567(n+1)%A005113(n+1))` -/
def P8275703321102725951.Spec : Prop :=
  ∀ n, P8275703321102725951.a n = A305796 (n + 1)

end A305796

/-! ## A305796.P7799218579045929378

`A300252(n+1)+A010893(A107106(n+1))`
-/

namespace A305796.P7799218579045929378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300252 (n + 1) + A010893 ((A107106 (n + 1)).toNat + 13)

end

end A305796.P7799218579045929378

namespace A305796

/-- `A300252(n+1)+A010893(A107106(n+1))` -/
def P7799218579045929378.Spec : Prop :=
  ∀ n, P7799218579045929378.a n = A305796 (n + 1)

end A305796

/-!
# A305797: Dirichlet convolution of A078898 with A078899.

The programs for A305797, there is no canonical definition to state claims against.
-/

/-! ## A305797.P8912979092676794027

`∑{d}[n+1, A078898(#)*A078899((n+1)/#)]`
-/

namespace A305797.P8912979092676794027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078898 d * A078899 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305797.P8912979092676794027

/-! ## A305797.P17739769477579274758

`A242560(A305799(n+1)+A305798(n+1))`
-/

namespace A305797.P17739769477579274758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242560 (A305799 (n + 1) + A305798 (n + 1)).toNat

end

end A305797.P17739769477579274758

/-! ## A305797.P17184358034273664122

`A349137(A001792(n))+Δ[A328893(n)]`
-/

namespace A305797.P17184358034273664122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (A001792 n).toNat + (f1 (n + 1) - f1 n)

end

end A305797.P17184358034273664122

/-! ## A305797.P11969530053520410721

`A349137(A001792(n))+A095112(n+1)`
-/

namespace A305797.P11969530053520410721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (A001792 n).toNat + A095112 (n + 1)

end

end A305797.P11969530053520410721

/-! ## A305797.P2641376317295235754

`A344442(n+1)+A118762(A217883(n+3))`
-/

namespace A305797.P2641376317295235754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344442 (n + 1) + A118762 (A217883 (n + 3)).toNat

end

end A305797.P2641376317295235754

/-!
# A305798: Dirichlet convolution of A078898 with itself.

The programs for A305798, there is no canonical definition to state claims against.
-/

/-! ## A305798.P16740265033380152457

`∑{d}[n+1, A078898(#)*A078898((n+1)/#)]`
-/

namespace A305798.P16740265033380152457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078898 d * A078898 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305798.P16740265033380152457

/-! ## A305798.P17336187781660315121

`A348717(n+1)+A274039(A057567(n+1)%A274027(n+1))`
-/

namespace A305798.P17336187781660315121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (n + 1) + A274039 (Int.tmod (A057567 (n + 1)) (A274027 (n + 1))).toNat

end

end A305798.P17336187781660315121

/-! ## A305798.P15174323155294394934

`∑{d}[A187829(n+1), A004273(A078898(#))]`
-/

namespace A305798.P15174323155294394934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A004273 (A078898 d).toNat

end

end A305798.P15174323155294394934

/-! ## A305798.P17885301916854056693

`A348717(A187829(n+1))+A305796(n+1)`
-/

namespace A305798.P17885301916854056693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (A187829 (n + 1)).toNat + A305796 (n + 1)

end

end A305798.P17885301916854056693

/-! ## A305798.P8569316348732040733

`A348717(n+1)+A104725(A120426(n+1))-1`
-/

namespace A305798.P8569316348732040733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (n + 1) + (A104725 (A120426 (n + 1)).toNat - 1)

end

end A305798.P8569316348732040733

/-!
# A305799: Dirichlet convolution of A078899 with itself.

The programs for A305799, there is no canonical definition to state claims against.
-/

/-! ## A305799.P8895451806288846128

`∑{d}[n+1, A078899(#)*A078899((n+1)/#)]`
-/

namespace A305799.P8895451806288846128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078899 d * A078899 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305799.P8895451806288846128

/-! ## A305799.P1016325459125562467

`or(A301830(n+1), A351234(A077168(n)))`
-/

namespace A305799.P1016325459125562467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A301830 (n + 1)) (A351234 (A077168 n).toNat)

end

end A305799.P1016325459125562467

/-! ## A305799.P9052354154601275938

`A301830(n+1)+A000122(A253367(2*n+1))`
-/

namespace A305799.P9052354154601275938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301830 (n + 1) + A000122 (A253367 (2 * n + 1)).toNat

end

end A305799.P9052354154601275938

/-! ## A305799.P2420136650966434488

`A301830(n+1)+A055668(A093702(3*n+4))`
-/

namespace A305799.P2420136650966434488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301830 (n + 1) + A055668 (A093702 (3 * n + 4)).toNat

end

end A305799.P2420136650966434488

