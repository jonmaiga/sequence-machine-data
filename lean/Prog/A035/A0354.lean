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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A035400: Differences of A035399.

The programs for A035400, there is no canonical definition to state claims against.
-/

/-! ## A035400.P6006778360412089570

`Δ[A035399(n+1)]`
-/

namespace A035400.P6006778360412089570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035400.P6006778360412089570

/-! ## A035400.P10526511735947141991

`A035399(n+2)-A035399(n+1)`
-/

namespace A035400.P10526511735947141991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035399 (n + 2) - A035399 (n + 1)

end

end A035400.P10526511735947141991

/-! ## A035400.P12090844069108565071

`Δ[record[A035399(A133310(n))]]`
-/

namespace A035400.P12090844069108565071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035399 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035400.P12090844069108565071

/-! ## A035400.P6183638767499489653

`Δ[record[A035399(A158416(n))]]`
-/

namespace A035400.P6183638767499489653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035399 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035400.P6183638767499489653

/-! ## A035400.P6886987203870792376

`Δ[record[A035399(A154958(n))]]`
-/

namespace A035400.P6886987203870792376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035399 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035400.P6886987203870792376

/-! ## A035400.P308761297849742416

`Δ[eq[A115623(n), A238966(n)]]`
-/

namespace A035400.P308761297849742416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115623 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238966 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A035400.P308761297849742416

/-!
# A035401: Limit of the position of the n-th partition into parts 5k+1 or 5k+4 in the list of all integer partitions sorted in reverse lexicographic order, for integers == 1 (mod 5).

The programs for A035401, there is no canonical definition to state claims against.
-/

/-! ## A035401.P1135748215937567236

`A035411(n)+a(n-1)` with `a(0)=1`
-/

namespace A035401.P1135748215937567236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A035411 n + a (n - 1)

end

end A035401.P1135748215937567236

/-! ## A035401.P2887085358743268137

`∑[A035411(A028310(n))]-2`
-/

namespace A035401.P2887085358743268137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035411 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A035401.P2887085358743268137

/-! ## A035401.P16360932295557572711

`A280560(2*n+1)+∑[A035411(A028310(n))]`
-/

namespace A035401.P16360932295557572711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035411 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035401.P16360932295557572711

/-! ## A035401.P10185619505726423991

`∑[A035411(A028310(n))%A022369(n)]`
-/

namespace A035401.P10185619505726423991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035411 (A028310 n).toNat) (A022369 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035401.P10185619505726423991

/-!
# A035402: Limit of the position of the n-th partition into parts 5k+1 or 5k+4 in the list of all integer partitions sorted in reverse lexicographic order, for integers == 2 (mod 5).

The programs for A035402, there is no canonical definition to state claims against.
-/

/-! ## A035402.P9002962670623958755

`A035412(n)+a(n-1)` with `a(0)=2`
-/

namespace A035402.P9002962670623958755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A035412 n + a (n - 1)

end

end A035402.P9002962670623958755

/-!
# A035403: Limit of the position of the n-th partition into parts 5k+1 or 5k+4 in the list of all integer partitions sorted in reverse lexicographic order, for integers == 3 (mod 5).

The programs for A035403, there is no canonical definition to state claims against.
-/

/-! ## A035403.P241434346458990679

`∑[A035413(round(acot(n)+n))]`
-/

namespace A035403.P241434346458990679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035413 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035403.P241434346458990679

/-! ## A035403.P17018626342361415753

`A035413(n)+a(n-1)` with `a(0)=4`
-/

namespace A035403.P17018626342361415753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A035413 n + a (n - 1)

end

end A035403.P17018626342361415753

/-! ## A035403.P1882267656104576664

`∑[A035413(abs(1-n)+1)]`
-/

namespace A035403.P1882267656104576664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035413 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035403.P1882267656104576664

/-!
# A035404: Limit of the position of the n-th partition into parts 5k+1 or 5k+4 in the list of all integer partitions sorted in reverse lexicographic order, for integers == 4 (mod 5).

The programs for A035404, there is no canonical definition to state claims against.
-/

/-! ## A035404.P2489678360315285641

`A035414(n)+a(n-1)` with `a(0)=1`
-/

namespace A035404.P2489678360315285641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A035414 n + a (n - 1)

end

end A035404.P2489678360315285641

/-! ## A035404.P12434855321023501552

`∑[A035414(n+1)]+1-A035414(n+1)`
-/

namespace A035404.P12434855321023501552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A035414 (n + 1))

end

end A035404.P12434855321023501552

/-! ## A035404.P9541352338060962947

`A024000(A035414(n+1))+∑[A035414(n+1)]`
-/

namespace A035404.P9541352338060962947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A035414 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035404.P9541352338060962947

/-! ## A035404.P2040399422708464978

`A153152(∑[A035414(n+1)])-A035414(n+1)`
-/

namespace A035404.P2040399422708464978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A035414 (n + 1)

end

end A035404.P2040399422708464978

/-!
# A035405: Limit of the position of the n-th partition into parts 5k+1 or 5k+4 in the list of all integer partitions sorted in reverse lexicographic order, for integers == 0 (mod 5).

The programs for A035405, there is no canonical definition to state claims against.
-/

/-! ## A035405.P7343940884806503608

`A035415(n)+a(n-1)` with `a(0)=2`
-/

namespace A035405.P7343940884806503608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A035415 n + a (n - 1)

end

end A035405.P7343940884806503608

/-! ## A035405.P1457615893998885776

`∑[A035415(A028310(n))]-4`
-/

namespace A035405.P1457615893998885776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035415 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A035405.P1457615893998885776

/-! ## A035405.P15917352101766550800

`∑[A035415(n+1)]+2-A035415(n+1)`
-/

namespace A035405.P15917352101766550800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A035415 (n + 1))

end

end A035405.P15917352101766550800

/-!
# A035406: Limit of the position of the n-th partition into parts 5k+2 or 5k+3 in the list of all integer partitions sorted in reverse lexicographic order, for integers == 1 (mod 5).

The programs for A035406, there is no canonical definition to state claims against.
-/

/-! ## A035406.P7753228886358994362

`A035416(n)+a(n-1)` with `a(0)=5`
-/

namespace A035406.P7753228886358994362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A035416 n + a (n - 1)

end

end A035406.P7753228886358994362

/-! ## A035406.P9871105495790107973

`∑[A035416(A028310(n))]`
-/

namespace A035406.P9871105495790107973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035416 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035406.P9871105495790107973

/-! ## A035406.P10091478436718137638

`∑[A035416(A000007(n)+n)]`
-/

namespace A035406.P10091478436718137638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035416 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035406.P10091478436718137638

/-! ## A035406.P7435632105957711959

`∑[A035416(A065033(2*n))]`
-/

namespace A035406.P7435632105957711959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035416 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035406.P7435632105957711959

/-! ## A035406.P847581547342544522

`∑[A035416(A007318(∑[n]+1))]`
-/

namespace A035406.P847581547342544522
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035416 (A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035406.P847581547342544522

/-!
# A035407: Limit of the position of the n-th partition into parts 5k+2 or 5k+3 in the list of all integer partitions sorted in reverse lexicographic order, for integers == 2 (mod 5).

The programs for A035407, there is no canonical definition to state claims against.
-/

/-! ## A035407.P3417421929126402214

`A035417(n)+a(n-1)` with `a(0)=1`
-/

namespace A035407.P3417421929126402214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A035417 n + a (n - 1)

end

end A035407.P3417421929126402214

/-! ## A035407.P8119521207362338889

`∑[A035417(n+1)]+1-A035417(n+1)`
-/

namespace A035407.P8119521207362338889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A035417 (n + 1))

end

end A035407.P8119521207362338889

/-! ## A035407.P8083677841247395974

`∑[A035417(n+1)]-A023443(A035417(n+1))`
-/

namespace A035407.P8083677841247395974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023443 (A035417 (n + 1)).toNat

end

end A035407.P8083677841247395974

/-!
# A035408: Limit of the position of the n-th partition into parts 5k+2 or 5k+3 in the list of all integer partitions sorted in reverse lexicographic order, for integers == 3 (mod 5).

The programs for A035408, there is no canonical definition to state claims against.
-/

/-! ## A035408.P4152319003103509858

`A035418(n)+a(n-1)` with `a(0)=1`
-/

namespace A035408.P4152319003103509858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A035418 n + a (n - 1)

end

end A035408.P4152319003103509858

/-! ## A035408.P736600496888691132

`∑[A035418(n+1)]+1-A035418(n+1)`
-/

namespace A035408.P736600496888691132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A035418 (n + 1))

end

end A035408.P736600496888691132

/-! ## A035408.P3548994185526977687

`∑[A035418(n+1)]-A023443(A035418(n+1))`
-/

namespace A035408.P3548994185526977687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023443 (A035418 (n + 1)).toNat

end

end A035408.P3548994185526977687

/-!
# A035409: Limit of the position of the n-th partition into parts 5k+2 or 5k+3 in the list of all integer partitions sorted in reverse lexicographic order, for integers == 4 (mod 5).

The programs for A035409, there is no canonical definition to state claims against.
-/

/-! ## A035409.P1730108710010340089

`A035419(n)+a(n-1)` with `a(0)=3`
-/

namespace A035409.P1730108710010340089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A035419 n + a (n - 1)

end

end A035409.P1730108710010340089

/-! ## A035409.P13826739052005788526

`∑[A035419(abs(1-n)+1)]`
-/

namespace A035409.P13826739052005788526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035419 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035409.P13826739052005788526

/-!
# A035410: Limit of the position of the n-th partition into parts 5k+2 or 5k+3 in the list of all integer partitions sorted in reverse lexicographic order, for integers == 0 (mod 5).

The programs for A035410, there is no canonical definition to state claims against.
-/

/-! ## A035410.P11803596111545142531

`A035420(n)+a(n-1)` with `a(0)=3`
-/

namespace A035410.P11803596111545142531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A035420 n + a (n - 1)

end

end A035410.P11803596111545142531

/-! ## A035410.P8838645431648199657

`∑[A035420(A028310(n))]+1`
-/

namespace A035410.P8838645431648199657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035420 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A035410.P8838645431648199657

/-! ## A035410.P12542354245011705403

`∑[A035420(n+1)]+3-A035420(n+1)`
-/

namespace A035410.P12542354245011705403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (3 - A035420 (n + 1))

end

end A035410.P12542354245011705403

/-! ## A035410.P113363018204620778

`A005408(n)-n-(n-∑[A035420(A028310(n))])`
-/

namespace A035410.P113363018204620778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035420 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (n : ℤ) - ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A035410.P113363018204620778

/-! ## A035410.P14917704721602957505

`A008619(2*n)-(n-∑[A035420(A028310(n))])`
-/

namespace A035410.P14917704721602957505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035420 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A035410.P14917704721602957505

/-!
# A035411: First differences of A035401.

The programs for A035411, there is no canonical definition to state claims against.
-/

/-! ## A035411.P6545981628482851249

`Δ[A035401(n+1)]`
-/

namespace A035411.P6545981628482851249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035411.P6545981628482851249

/-! ## A035411.P12831896052927026520

`A035401(n+2)-A035401(n+1)`
-/

namespace A035411.P12831896052927026520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035401 (n + 2) - A035401 (n + 1)

end

end A035411.P12831896052927026520

/-! ## A035411.P10419895310748508069

`Δ[record[A035401(A106466(n))]]`
-/

namespace A035411.P10419895310748508069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035401 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035411.P10419895310748508069

/-! ## A035411.P11449805092036705458

`Δ[record[A035401(A100727(n))]]`
-/

namespace A035411.P11449805092036705458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035401 (A100727 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035411.P11449805092036705458

/-! ## A035411.P14010535190225984745

`Δ[record[A035401(A065648(n))]]`
-/

namespace A035411.P14010535190225984745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035401 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035411.P14010535190225984745

/-! ## A035411.P9656851620107403195

`Δ[record[A035401(A109785(n))]]`
-/

namespace A035411.P9656851620107403195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035401 (A109785 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035411.P9656851620107403195

/-!
# A035412: First differences of A035402.

The programs for A035412, there is no canonical definition to state claims against.
-/

/-! ## A035412.P5274384265702292635

`Δ[A035402(n+1)]`
-/

namespace A035412.P5274384265702292635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035412.P5274384265702292635

/-! ## A035412.P17053102548321103350

`A035402(n+2)-A035402(n+1)`
-/

namespace A035412.P17053102548321103350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035402 (n + 2) - A035402 (n + 1)

end

end A035412.P17053102548321103350

/-! ## A035412.P16124423604996743230

`Δ[record[A035402(A106466(n))]]`
-/

namespace A035412.P16124423604996743230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035402 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035412.P16124423604996743230

/-! ## A035412.P15804440522547842215

`Δ[record[A035402(A100727(n))]]`
-/

namespace A035412.P15804440522547842215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035402 (A100727 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035412.P15804440522547842215

/-! ## A035412.P814350824644308053

`Δ[record[A035402(A065648(n))]]`
-/

namespace A035412.P814350824644308053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035402 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035412.P814350824644308053

/-! ## A035412.P5052395034816327357

`Δ[record[A035402(A109785(n))]]`
-/

namespace A035412.P5052395034816327357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035402 (A109785 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035412.P5052395034816327357

/-!
# A035413: First differences of A035403.

The programs for A035413, there is no canonical definition to state claims against.
-/

/-! ## A035413.P12666141638431011261

`Δ[A035403(n+1)]`
-/

namespace A035413.P12666141638431011261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035413.P12666141638431011261

/-! ## A035413.P3314814422923590392

`A035403(n+2)-A035403(n+1)`
-/

namespace A035413.P3314814422923590392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035403 (n + 2) - A035403 (n + 1)

end

end A035413.P3314814422923590392

/-! ## A035413.P14854225459398928611

`Δ[record[A035403(A100727(n))]]`
-/

namespace A035413.P14854225459398928611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035403 (A100727 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035413.P14854225459398928611

/-! ## A035413.P358099849336874075

`Δ[record[A035403(A065648(n))]]`
-/

namespace A035413.P358099849336874075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035403 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035413.P358099849336874075

/-! ## A035413.P15363731054450204629

`Δ[record[A035403(A020986(n))]]`
-/

namespace A035413.P15363731054450204629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035403 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035413.P15363731054450204629

/-! ## A035413.P17072172801632854425

`Δ[record[A035403(A051340(n))]]`
-/

namespace A035413.P17072172801632854425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035403 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035413.P17072172801632854425

/-!
# A035414: First differences of A035404.

The programs for A035414, there is no canonical definition to state claims against.
-/

/-! ## A035414.P3332021006711036203

`Δ[A035404(n+1)]`
-/

namespace A035414.P3332021006711036203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035414.P3332021006711036203

/-! ## A035414.P17936005897408117742

`A035404(n+2)-A035404(n+1)`
-/

namespace A035414.P17936005897408117742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035404 (n + 2) - A035404 (n + 1)

end

end A035414.P17936005897408117742

/-! ## A035414.P727387919341758293

`Δ[record[A035404(A106466(n))]]`
-/

namespace A035414.P727387919341758293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035404 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035414.P727387919341758293

/-! ## A035414.P11083377815214653545

`Δ[record[A035404(A100727(n))]]`
-/

namespace A035414.P11083377815214653545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035404 (A100727 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035414.P11083377815214653545

/-! ## A035414.P5472863520596991277

`Δ[record[A035404(A065648(n))]]`
-/

namespace A035414.P5472863520596991277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035404 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035414.P5472863520596991277

/-! ## A035414.P15483567870655529276

`Δ[record[A035404(A038569(n))]]`
-/

namespace A035414.P15483567870655529276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035404 (A038569 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035414.P15483567870655529276

/-!
# A035415: First differences of A035405.

The programs for A035415, there is no canonical definition to state claims against.
-/

/-! ## A035415.P12171891527348668065

`Δ[A035405(n+1)]`
-/

namespace A035415.P12171891527348668065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035415.P12171891527348668065

/-! ## A035415.P3126089147923489712

`A035405(n+2)-A035405(n+1)`
-/

namespace A035415.P3126089147923489712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035405 (n + 2) - A035405 (n + 1)

end

end A035415.P3126089147923489712

/-! ## A035415.P8020309079310614975

`Δ[record[A035405(A106466(n))]]`
-/

namespace A035415.P8020309079310614975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035405 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035415.P8020309079310614975

/-! ## A035415.P9831793234734111351

`Δ[record[A035405(A100727(n))]]`
-/

namespace A035415.P9831793234734111351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035405 (A100727 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035415.P9831793234734111351

/-! ## A035415.P7427404515178482975

`Δ[record[A035405(A065648(n))]]`
-/

namespace A035415.P7427404515178482975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035405 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035415.P7427404515178482975

/-! ## A035415.P1995140605068329516

`Δ[record[A035405(A020986(n))]]`
-/

namespace A035415.P1995140605068329516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035405 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035415.P1995140605068329516

/-!
# A035416: First differences of A035406.

The programs for A035416, there is no canonical definition to state claims against.
-/

/-! ## A035416.P17378032440282431269

`Δ[A035406(n+1)]`
-/

namespace A035416.P17378032440282431269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035416.P17378032440282431269

/-! ## A035416.P8004061034484905333

`A035406(n+2)-A035406(n+1)`
-/

namespace A035416.P8004061034484905333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035406 (n + 2) - A035406 (n + 1)

end

end A035416.P8004061034484905333

/-! ## A035416.P17951516995618753652

`Δ[record[A035406(A020986(n))]]`
-/

namespace A035416.P17951516995618753652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035406 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035416.P17951516995618753652

/-! ## A035416.P411416139894583240

`Δ[record[A035406(A028920(n))]]`
-/

namespace A035416.P411416139894583240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035406 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035416.P411416139894583240

/-!
# A035417: First differences of A035407.

The programs for A035417, there is no canonical definition to state claims against.
-/

/-! ## A035417.P4320574786939962306

`Δ[A035407(n+1)]`
-/

namespace A035417.P4320574786939962306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035407 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035417.P4320574786939962306

/-! ## A035417.P5721746825079280352

`A035407(n+2)-A035407(n+1)`
-/

namespace A035417.P5721746825079280352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035407 (n + 2) - A035407 (n + 1)

end

end A035417.P5721746825079280352

/-! ## A035417.P14501087560641467564

`Δ[record[A035407(A038568(n))]]`
-/

namespace A035417.P14501087560641467564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035407 (A038568 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035417.P14501087560641467564

/-! ## A035417.P459323301524563626

`Δ[record[A035407(A020986(n))]]`
-/

namespace A035417.P459323301524563626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035407 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035417.P459323301524563626

/-! ## A035417.P16011100821402580246

`Δ[record[A035407(A028920(n))]]`
-/

namespace A035417.P16011100821402580246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035407 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035417.P16011100821402580246

/-!
# A035418: First differences of A035408.

The programs for A035418, there is no canonical definition to state claims against.
-/

/-! ## A035418.P4336576101602709630

`Δ[A035408(n+1)]`
-/

namespace A035418.P4336576101602709630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035418.P4336576101602709630

/-! ## A035418.P1914257103374936339

`abs(Δ[A035408(1-(n-2*n))])`
-/

namespace A035418.P1914257103374936339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035408 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A035418.P1914257103374936339

/-! ## A035418.P2898563132427058741

`A035408(n+2)-A035408(n+1)`
-/

namespace A035418.P2898563132427058741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035408 (n + 2) - A035408 (n + 1)

end

end A035418.P2898563132427058741

/-! ## A035418.P18002164449997961991

`Δ[record[A035408(A038568(n))]]`
-/

namespace A035418.P18002164449997961991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035408 (A038568 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035418.P18002164449997961991

/-! ## A035418.P15561359505534980543

`Δ[record[A035408(A020986(n))]]`
-/

namespace A035418.P15561359505534980543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035408 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035418.P15561359505534980543

/-! ## A035418.P3008340535534706166

`Δ[record[A035408(A028920(n))]]`
-/

namespace A035418.P3008340535534706166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035408 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035418.P3008340535534706166

/-!
# A035419: First differences of A035409.

The programs for A035419, there is no canonical definition to state claims against.
-/

/-! ## A035419.P4909875104577692616

`Δ[A035409(n+1)]`
-/

namespace A035419.P4909875104577692616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035419.P4909875104577692616

/-! ## A035419.P12704718391526646246

`A035409(n+2)-A035409(n+1)`
-/

namespace A035419.P12704718391526646246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035409 (n + 2) - A035409 (n + 1)

end

end A035419.P12704718391526646246

/-! ## A035419.P605258278463422281

`Δ[record[A035409(A065648(n))]]`
-/

namespace A035419.P605258278463422281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035409 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035419.P605258278463422281

/-! ## A035419.P2227713786492720599

`Δ[record[A035409(A038569(n))]]`
-/

namespace A035419.P2227713786492720599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035409 (A038569 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035419.P2227713786492720599

/-! ## A035419.P16387484561390420068

`Δ[record[A035409(A020986(n))]]`
-/

namespace A035419.P16387484561390420068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035409 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035419.P16387484561390420068

/-! ## A035419.P9359711717855838595

`Δ[record[A035409(A028920(n))]]`
-/

namespace A035419.P9359711717855838595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035409 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035419.P9359711717855838595

/-!
# A035420: First differences of A035410.

The programs for A035420, there is no canonical definition to state claims against.
-/

/-! ## A035420.P5017874631220673349

`Δ[A035410(n+1)]`
-/

namespace A035420.P5017874631220673349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035420.P5017874631220673349

/-! ## A035420.P5779407283285499096

`A035410(n+2)-A035410(n+1)`
-/

namespace A035420.P5779407283285499096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035410 (n + 2) - A035410 (n + 1)

end

end A035420.P5779407283285499096

/-! ## A035420.P627367731175745737

`Δ[record[A035410(A038568(n))]]`
-/

namespace A035420.P627367731175745737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035410 (A038568 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035420.P627367731175745737

/-! ## A035420.P12376431371574698616

`Δ[record[A035410(A038569(n))]]`
-/

namespace A035420.P12376431371574698616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035410 (A038569 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035420.P12376431371574698616

/-! ## A035420.P17120144955156457342

`Δ[record[A035410(A020986(n))]]`
-/

namespace A035420.P17120144955156457342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035410 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035420.P17120144955156457342

/-! ## A035420.P7657692863608932412

`Δ[record[A035410(A028920(n))]]`
-/

namespace A035420.P7657692863608932412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035410 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035420.P7657692863608932412

/-!
# A035421: Limit of the position of the n-th partition such that the adjacent parts differ by at least 2 and such that the smallest part is at least 2 in the list of all integer partitions sorted in reverse lexicographic order.

The programs for A035421, there is no canonical definition to state claims against.
-/

/-! ## A035421.P286947359690761870

`A035425(n)+a(n-1)` with `a(0)=1`
-/

namespace A035421.P286947359690761870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A035425 n + a (n - 1)

end

end A035421.P286947359690761870

/-! ## A035421.P2115811561599578607

`∑[A035425(floor(acot(n)+n))]-1`
-/

namespace A035421.P2115811561599578607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035425 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A035421.P2115811561599578607

/-! ## A035421.P16715938043493488283

`∑[A035425(round(acot(n)+n))]-1`
-/

namespace A035421.P16715938043493488283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035425 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A035421.P16715938043493488283

/-! ## A035421.P9754558836281428240

`∑[A035425(abs(1-n)+1)]-1`
-/

namespace A035421.P9754558836281428240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035425 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A035421.P9754558836281428240

/-! ## A035421.P1949562742566971076

`abs(1-∑[A035425(A028310(n))])`
-/

namespace A035421.P1949562742566971076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035425 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A035421.P1949562742566971076

/-! ## A035421.P18279803925610760766

`∑[A035425(n*a(A054977(n)-1))]` with `a(0)=1`
-/

namespace A035421.P18279803925610760766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A035425 ((n : ℤ) * f1 (A054977 n - 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035421.P18279803925610760766

/-! ## A035421.P16292875639722216059

`∑[A035425(A028310(n))^(A000040(n+1)%2)]`
-/

namespace A035421.P16292875639722216059
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035425 (A028310 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035421.P16292875639722216059

/-! ## A035421.P2954313543448220304

`∑[A035425(A028310(n))+A008683(2*(n+1)²)]`
-/

namespace A035421.P2954313543448220304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035425 (A028310 n).toNat + A008683 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035421.P2954313543448220304

/-!
# A035422: Limit of the position of the n-th partition such that the adjacent parts differ by at least 2 in the list of all integer partitions sorted in reverse lexicographic order.

The programs for A035422, there is no canonical definition to state claims against.
-/

/-! ## A035422.P11126663275051448824

`∑[A035426(round(acot(n)+n))]`
-/

namespace A035422.P11126663275051448824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035426 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035422.P11126663275051448824

/-! ## A035422.P3400821865758692349

`A035426(n)+a(n-1)` with `a(0)=1`
-/

namespace A035422.P3400821865758692349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A035426 n + a (n - 1)

end

end A035422.P3400821865758692349

/-! ## A035422.P16376282263141606314

`∑[A035426(abs(1-n)+1)]`
-/

namespace A035422.P16376282263141606314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035426 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035422.P16376282263141606314

/-! ## A035422.P9697471607851323367

`∑[A035426(n+1)]+1-A035426(n+1)`
-/

namespace A035422.P9697471607851323367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A035426 (n + 1))

end

end A035422.P9697471607851323367

/-! ## A035422.P2092107266177929233

`A393670(A112820(n+2))`
-/

namespace A035422.P2092107266177929233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393670 (A112820 (n + 2)).toNat

end

end A035422.P2092107266177929233

/-!
# A035423: Limit of the position of the n-th partition such that with k parts the smallest part is at least k+1 in the list of all integer partitions sorted in reverse lexicographic order.

The programs for A035423, there is no canonical definition to state claims against.
-/

/-! ## A035423.P841030449576034217

`A035427(n)+a(n-1)` with `a(0)=1`
-/

namespace A035423.P841030449576034217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A035427 n + a (n - 1)

end

end A035423.P841030449576034217

/-! ## A035423.P2481815709531202546

`∑[A035427(round(sqrt(n²+1)))]-3`
-/

namespace A035423.P2481815709531202546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035427 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A035423.P2481815709531202546

/-! ## A035423.P11579693823613006223

`∑[A035427(n*a(A153881(n+1)+1))]` with `a(0)=1`
-/

namespace A035423.P11579693823613006223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A035427 ((n : ℤ) * f1 (A153881 (n + 1) + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035423.P11579693823613006223

/-! ## A035423.P12646217014302130816

`A035427(n)-A001489(a(n-1))` with `a(0)=1`
-/

namespace A035423.P12646217014302130816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A035427 n - A001489 (a (n - 1)).toNat

end

end A035423.P12646217014302130816

/-!
# A035424: Limit of the position of the n-th partition such that with k parts the smallest part is at least k in the list of all integer partitions sorted in reverse lexicographic order.

The programs for A035424, there is no canonical definition to state claims against.
-/

/-! ## A035424.P17800081294364631115

`A035428(n)+a(n-1)` with `a(0)=1`
-/

namespace A035424.P17800081294364631115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A035428 n + a (n - 1)

end

end A035424.P17800081294364631115

/-! ## A035424.P7966848016109030974

`∑[A035428(round(acot(n)+n))]-1`
-/

namespace A035424.P7966848016109030974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035428 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A035424.P7966848016109030974

/-! ## A035424.P4472686533573860099

`∑[A035428(abs(1-n)+1)]-1`
-/

namespace A035424.P4472686533573860099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035428 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A035424.P4472686533573860099

/-! ## A035424.P18056975817398103519

`abs(∑[A035428(A028310(n))]-1)`
-/

namespace A035424.P18056975817398103519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035428 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A035424.P18056975817398103519

/-! ## A035424.P13802161077850654761

`A024000(A035428(n+1))+∑[A035428(n+1)]`
-/

namespace A035424.P13802161077850654761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A035428 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035424.P13802161077850654761

/-! ## A035424.P12916858740725717319

`∑[A035428(A028310(n))]%A156997(n+1)-1`
-/

namespace A035424.P12916858740725717319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035428 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A156997 (n + 1)) - 1

end

end A035424.P12916858740725717319

/-!
# A035425: First differences of A035421.

The programs for A035425, there is no canonical definition to state claims against.
-/

/-! ## A035425.P18360367614378113609

`Δ[A035421(n+1)]`
-/

namespace A035425.P18360367614378113609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035425.P18360367614378113609

/-! ## A035425.P15524226406015077451

`Δ[record[A035421(A324346(n))]]`
-/

namespace A035425.P15524226406015077451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035421 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035425.P15524226406015077451

/-! ## A035425.P5297455722926606746

`Δ[record[A035421(A344180(n))]]`
-/

namespace A035425.P5297455722926606746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035421 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035425.P5297455722926606746

/-! ## A035425.P13025836047782667439

`A035421(n+2)-A035421(n+1)`
-/

namespace A035425.P13025836047782667439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035421 (n + 2) - A035421 (n + 1)

end

end A035425.P13025836047782667439

/-! ## A035425.P9071824465685137297

`Δ[record[A035421(A286544(n))]]`
-/

namespace A035425.P9071824465685137297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035421 (A286544 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035425.P9071824465685137297

/-! ## A035425.P15050032307638344359

`Δ[record[A035421(A143182(n))]]`
-/

namespace A035425.P15050032307638344359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035421 (A143182 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035425.P15050032307638344359

/-!
# A035426: First differences of A035422.

The programs for A035426, there is no canonical definition to state claims against.
-/

/-! ## A035426.P171373496619861428

`Δ[A035422(n+1)]`
-/

namespace A035426.P171373496619861428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035426.P171373496619861428

/-! ## A035426.P6090369923453821167

`A035422(n+2)-A035422(n+1)`
-/

namespace A035426.P6090369923453821167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035422 (n + 2) - A035422 (n + 1)

end

end A035426.P6090369923453821167

/-! ## A035426.P10933305102057963180

`abs(Δ[A035422(A008619(2*n))])`
-/

namespace A035426.P10933305102057963180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035422 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A035426.P10933305102057963180

/-! ## A035426.P4274726543724294898

`Δ[record[A035422(A152271(n))]]`
-/

namespace A035426.P4274726543724294898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035422 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035426.P4274726543724294898

/-! ## A035426.P961421567220088046

`abs(Δ[A035422(A063942(3*n))])`
-/

namespace A035426.P961421567220088046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035422 (A063942 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A035426.P961421567220088046

/-! ## A035426.P8461780171934551654

`Δ[A035422(A063942(3*n))]-A000035(2*n)`
-/

namespace A035426.P8461780171934551654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035422 (A063942 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000035 (2 * n)

end

end A035426.P8461780171934551654

/-!
# A035427: First differences of A035423.

The programs for A035427, there is no canonical definition to state claims against.
-/

/-! ## A035427.P16132997984384787589

`Δ[A035423(n+1)]`
-/

namespace A035427.P16132997984384787589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035427.P16132997984384787589

/-! ## A035427.P17373666462173548482

`A035423(n+2)-A035423(n+1)`
-/

namespace A035427.P17373666462173548482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035423 (n + 2) - A035423 (n + 1)

end

end A035427.P17373666462173548482

/-! ## A035427.P10190382394395427430

`Δ[record[A035423(A286544(n))]]`
-/

namespace A035427.P10190382394395427430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035423 (A286544 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035427.P10190382394395427430

/-! ## A035427.P8168794672769309684

`Δ[record[A035423(A134478(n))]]`
-/

namespace A035427.P8168794672769309684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035423 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035427.P8168794672769309684

/-! ## A035427.P3263159630979754200

`Δ[record[A035423(A143182(n))]]`
-/

namespace A035427.P3263159630979754200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035423 (A143182 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035427.P3263159630979754200

/-!
# A035428: First differences of A035424.

The programs for A035428, there is no canonical definition to state claims against.
-/

/-! ## A035428.P258066764937283802

`Δ[A035424(n+1)]`
-/

namespace A035428.P258066764937283802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035428.P258066764937283802

/-! ## A035428.P17651841054416990714

`Δ[record[A035424(A344180(n))]]`
-/

namespace A035428.P17651841054416990714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035424 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035428.P17651841054416990714

/-! ## A035428.P17949624942826855454

`A035424(n+2)-A035424(n+1)`
-/

namespace A035428.P17949624942826855454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035424 (n + 2) - A035424 (n + 1)

end

end A035428.P17949624942826855454

/-! ## A035428.P13442608910397535018

`Δ[record[A035424(A286544(n))]]`
-/

namespace A035428.P13442608910397535018
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035424 (A286544 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035428.P13442608910397535018

/-! ## A035428.P5669391733066556039

`Δ[record[A035424(A143182(n))]]`
-/

namespace A035428.P5669391733066556039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035424 (A143182 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035428.P5669391733066556039

/-! ## A035428.P8295339773240526967

`Δ[record[A035424(A193592(n))]]`
-/

namespace A035428.P8295339773240526967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035424 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035428.P8295339773240526967

/-! ## A035428.P13289604163362445804

`Δ[record[A035424(A193739(n))]]`
-/

namespace A035428.P13289604163362445804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035424 (A193739 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035428.P13289604163362445804

/-!
# A035429: Number of partitions of n into parts 7k+1 or 7k+5.

The programs for A035429, there is no canonical definition to state claims against.
-/

/-! ## A035429.P4757308916235769500

`A172263(A110654(A035555(n)+3))`
-/

namespace A035429.P4757308916235769500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (A110654 (A035555 n + 3).toNat).toNat

end

end A035429.P4757308916235769500

/-! ## A035429.P12791582773538412206

`Δ[A083277(A015128(n+3))]`
-/

namespace A035429.P12791582773538412206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083277 (A015128 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035429.P12791582773538412206

/-! ## A035429.P36725896938949343

`A172263(A002865(n)+A000523(n+1))`
-/

namespace A035429.P36725896938949343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (A002865 n + A000523 (n + 1)).toNat

end

end A035429.P36725896938949343

/-!
# A035431: Number of partitions of n into parts 7k+2 or 7k+3.

The programs for A035431, there is no canonical definition to state claims against.
-/

/-! ## A035431.P11243099848738680249

`or(A214130(n+1), A302777(A288018(n)))`
-/

namespace A035431.P11243099848738680249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A214130 (n + 1)) (A302777 (A288018 n).toNat)

end

end A035431.P11243099848738680249

/-!
# A035432: Number of partitions of n into parts 7k+2 or 7k+4.

The programs for A035432, there is no canonical definition to state claims against.
-/

/-! ## A035432.P6610951939585418096

`A029189(A187829(n+1))`
-/

namespace A035432.P6610951939585418096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029189 (A187829 (n + 1)).toNat

end

end A035432.P6610951939585418096

/-! ## A035432.P9546263471030177298

`A001221(A008809(n+1)!)`
-/

namespace A035432.P9546263471030177298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A008809 (n + 1)).toNat)

end

end A035432.P9546263471030177298

/-! ## A035432.P2438470617794372073

`A001221(A008821(n+1)!)`
-/

namespace A035432.P2438470617794372073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A008821 (n + 1)).toNat)

end

end A035432.P2438470617794372073

/-! ## A035432.P5738518966868795918

`A029189(∑[A146040(2^∑{e}[n+1, #])])`
-/

namespace A035432.P5738518966868795918
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146040 (2 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029189 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A035432.P5738518966868795918

/-!
# A035433: Number of partitions of n into parts 7k+2 or 7k+5.

The programs for A035433, there is no canonical definition to state claims against.
-/

/-! ## A035433.P16004464916986407309

`A029204(n)-A010059(A054552(A185452(n)))`
-/

namespace A035433.P16004464916986407309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029204 n - A010059 (A054552 (A185452 n).toNat).toNat

end

end A035433.P16004464916986407309

/-! ## A035433.P17533142535031225378

`A029210(n)+A025439(A307560(n))`
-/

namespace A035433.P17533142535031225378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029210 n + A025439 (A307560 n).toNat

end

end A035433.P17533142535031225378

/-! ## A035433.P5010649528727385202

`A335520(A006950(n))+A029210(n)`
-/

namespace A035433.P5010649528727385202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335520 (A006950 n).toNat + A029210 n

end

end A035433.P5010649528727385202

/-! ## A035433.P4893115361743981591

`A335520(A153176(n))+A029210(n)`
-/

namespace A035433.P4893115361743981591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335520 (A153176 n).toNat + A029210 n

end

end A035433.P4893115361743981591

/-! ## A035433.P18431985731730376624

`gcd(A000217(A126869(n)), A070093(n+1))`
-/

namespace A035433.P18431985731730376624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (A126869 n).toNat) (A070093 (n + 1))

end

end A035433.P18431985731730376624

/-!
# A035434: Number of partitions of n into parts 7k+2 or 7k+6.

The programs for A035434, there is no canonical definition to state claims against.
-/

/-! ## A035434.P1327204010695405834

`Δ[Δ[A347549(n+1)]]%A325333(3*n+1)`
-/

namespace A035434.P1327204010695405834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347549 (n + 1 + 10)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A325333 (3 * n + 1))

end

end A035434.P1327204010695405834

/-! ## A035434.P5280434433798022936

`A046081(A060395(n)^A025787(n))`
-/

namespace A035434.P5280434433798022936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (SequenceMachineLib.roundAway ((A060395 n : ℚ) ^ (A025787 n : ℤ))).toNat

end

end A035434.P5280434433798022936

/-! ## A035434.P5080501116628122118

`A015161(n)!*A282537(n)-A022598(n)/A107635(n)`
-/

namespace A035434.P5080501116628122118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (A015161 n).toNat : ℤ) * A282537 n : ℚ) - (A022598 n : ℚ) / (A107635 n : ℚ)

end

end A035434.P5080501116628122118

/-! ## A035434.P13620322871700221397

`A282537(n)-A056594(A059193(3*(n+1)))`
-/

namespace A035434.P13620322871700221397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282537 n - A056594 (A059193 (3 * (n + 1))).toNat

end

end A035434.P13620322871700221397

/-! ## A035434.P9933760000479437381

`A282537(n)+A033999(A075530(n+1))`
-/

namespace A035434.P9933760000479437381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282537 n + A033999 (A075530 (n + 1)).toNat

end

end A035434.P9933760000479437381

/-!
# A035435: Number of partitions of n into parts 7k+3 or 7k+4.

The programs for A035435, there is no canonical definition to state claims against.
-/

/-! ## A035435.P10176194494318424742

`A008676(record[A089869(A259153(n))])`
-/

namespace A035435.P10176194494318424742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (A259153 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A035435.P10176194494318424742

/-! ## A035435.P6329131161941128496

`A185284(A005187(n))+A029269(n)`
-/

namespace A035435.P6329131161941128496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A005187 n).toNat + A029269 n

end

end A035435.P6329131161941128496

/-!
# A035436: Number of partitions of n into parts 7k+3 or 7k+5.

The programs for A035436, there is no canonical definition to state claims against.
-/

/-! ## A035436.P10359985137332097157

`A044941(A219676(n))+A029290(n+1)`
-/

namespace A035436.P10359985137332097157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A219676 n).toNat + A029290 (n + 1)

end

end A035436.P10359985137332097157

/-! ## A035436.P6402048305468344868

`A082858(A170892(n)+5)`
-/

namespace A035436.P6402048305468344868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082858 (A170892 n + 5).toNat

end

end A035436.P6402048305468344868

/-! ## A035436.P17225490372146003261

`A029290(∑[∑[A018895(n)]])`
-/

namespace A035436.P17225490372146003261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018895 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029290 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A035436.P17225490372146003261

/-! ## A035436.P17355561940192160376

`A109705(2*(n+1))%A006203(n+1)`
-/

namespace A035436.P17355561940192160376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109705 (2 * (n + 1))) (A006203 (n + 1))

end

end A035436.P17355561940192160376

/-!
# A035437: Number of partitions of n into parts 7k+3 or 7k+6.

The programs for A035437, there is no canonical definition to state claims against.
-/

/-! ## A035437.P1323556729487367700

`Δ[A109701(2*(n+1))]%record[A339088(n)]`
-/

namespace A035437.P1323556729487367700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109701 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

end

end A035437.P1323556729487367700

/-! ## A035437.P9697824701299591508

`Δ[A116371(3*n+2)%A046413(n+1)]`
-/

namespace A035437.P9697824701299591508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116371 (3 * n + 2)) (A046413 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035437.P9697824701299591508

/-! ## A035437.P15863023902719777451

`Δ[∑{e}[A034900(n+1), A116371(3*n+2)^#]]`
-/

namespace A035437.P15863023902719777451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034900 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A116371 (3 * n + 2) ^ Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035437.P15863023902719777451

/-! ## A035437.P8288933781281660910

`A034876(A230123(n+1))`
-/

namespace A035437.P8288933781281660910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034876 (A230123 (n + 1)).toNat

end

end A035437.P8288933781281660910

/-! ## A035437.P3056145172918351881

`and(A062602(A060546(2*n)), A062602(n+1))`
-/

namespace A035437.P3056145172918351881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062602 (A060546 (2 * n)).toNat) (A062602 (n + 1))

end

end A035437.P3056145172918351881

/-!
# A035438: Number of partitions of n into parts 7k+4 or 7k+5.

The programs for A035438, there is no canonical definition to state claims against.
-/

/-! ## A035438.P10837442857906063056

`A297036(A033873(n)+A001591(n))`
-/

namespace A035438.P10837442857906063056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297036 (A033873 n + A001591 n).toNat

end

end A035438.P10837442857906063056

/-! ## A035438.P14139895811784056516

`A008615(Δ[A118759(A344470(n+1))])`
-/

namespace A035438.P14139895811784056516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A344470 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (f1 (n + 1) - f1 n).toNat

end

end A035438.P14139895811784056516

/-!
# A035439: Number of partitions of n into parts 7k+4 or 7k+6.

The programs for A035439, there is no canonical definition to state claims against.
-/

/-! ## A035439.P15908262844724083491

`A037800(or(A019431(n), A101333(n)))`
-/

namespace A035439.P15908262844724083491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (Int.lor (A019431 n) (A101333 n)).toNat

end

end A035439.P15908262844724083491

/-! ## A035439.P7826209812540962203

`A076489(A017895(2*(n+2))*A181762(n))`
-/

namespace A035439.P7826209812540962203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076489 (A017895 (2 * (n + 2)) * A181762 n).toNat

end

end A035439.P7826209812540962203

/-! ## A035439.P478123414036990778

`A234323(A103419(n+2))`
-/

namespace A035439.P478123414036990778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234323 (A103419 (n + 2)).toNat

end

end A035439.P478123414036990778

/-! ## A035439.P8067287083123075503

`A124760(A017913(n)+A016945(n))`
-/

namespace A035439.P8067287083123075503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A017913 n + A016945 n).toNat

end

end A035439.P8067287083123075503

/-! ## A035439.P103039516795602406

`A077267(A275784(n)+A185332(n+1))`
-/

namespace A035439.P103039516795602406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A275784 n + A185332 (n + 1)).toNat

end

end A035439.P103039516795602406

/-!
# A035440: Number of partitions of n into parts 7k+5 or 7k+6.

The programs for A035440, there is no canonical definition to state claims against.
-/

/-! ## A035440.P13474351911427005380

`A109707(A109712(2*n+3))%A109659(n+1)`
-/

namespace A035440.P13474351911427005380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109707 (A109712 (2 * n + 3)).toNat) (A109659 (n + 1))

end

end A035440.P13474351911427005380

/-! ## A035440.P16984139722351187334

`A102675(A354757(n)+A332377(n+1))`
-/

namespace A035440.P16984139722351187334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 (A354757 n + A332377 (n + 1)).toNat

end

end A035440.P16984139722351187334

/-! ## A035440.P622909536497345947

`A035468(lt[A214781(3*n+2), A305995(n+1)])`
-/

namespace A035440.P622909536497345947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214781 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035468 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A035440.P622909536497345947

/-! ## A035440.P3643945779352342736

`A035468(lt[A153665(n+1), A244137(3*n+4)])`
-/

namespace A035440.P3643945779352342736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244137 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035468 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A035440.P3643945779352342736

/-!
# A035442: Number of partitions of n into parts 8k or 8k+2.

The programs for A035442, there is no canonical definition to state claims against.
-/

/-! ## A035442.P6462792860171989273

`n%2*A035362(A065033(n))`
-/

namespace A035442.P6462792860171989273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A035362 (A065033 n).toNat

end

end A035442.P6462792860171989273

/-! ## A035442.P1570552065332786324

`∑{d}[n+1, A035362(#)*A063524((n+1)/#-1)]`
-/

namespace A035442.P1570552065332786324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035362 d * A063524 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A035442.P1570552065332786324

/-! ## A035442.P10545088355208359585

`A000035(n)*A035362(A008619(n))`
-/

namespace A035442.P10545088355208359585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A035362 (A008619 n).toNat

end

end A035442.P10545088355208359585

/-! ## A035442.P17587474449378221334

`A000035(n)*A035362(A065033(n))`
-/

namespace A035442.P17587474449378221334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A035362 (A065033 n).toNat

end

end A035442.P17587474449378221334

/-! ## A035442.P2837253019539299314

`A000035(n)*A035362(A159481(n))`
-/

namespace A035442.P2837253019539299314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A035362 (A159481 n).toNat

end

end A035442.P2837253019539299314

/-! ## A035442.P8484938428140972776

`Δ[A008619(n)]*A035362(A065033(n))`
-/

namespace A035442.P8484938428140972776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A035362 (A065033 n).toNat

end

end A035442.P8484938428140972776

/-! ## A035442.P15366203181223839110

`char[A005408(n)]*A035362(A008619(n))`
-/

namespace A035442.P15366203181223839110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A035362 (A008619 n).toNat

end

end A035442.P15366203181223839110

/-! ## A035442.P13197523814573444236

`char[A005408(n)]*A035362(A065033(n))`
-/

namespace A035442.P13197523814573444236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A035362 (A065033 n).toNat

end

end A035442.P13197523814573444236

/-! ## A035442.P1903527330862241374

`A001221(A006519(n+1))*A035362(A065033(n))`
-/

namespace A035442.P1903527330862241374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A006519 (n + 1)).toNat * A035362 (A065033 n).toNat

end

end A035442.P1903527330862241374

/-! ## A035442.P14260356287408728148

`Δ[A004526(n)]*A035362(A065033(n))`
-/

namespace A035442.P14260356287408728148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A035362 (A065033 n).toNat

end

end A035442.P14260356287408728148

/-! ## A035442.P2928042879582464933

`Δ[A065033(n+1)]*A035362(A065033(n+1))`
-/

namespace A035442.P2928042879582464933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A035362 (A065033 (n + 1)).toNat

end

end A035442.P2928042879582464933

/-! ## A035442.P12535066969616404617

`char[A003961(n+1)]*A035362(A065033(n))`
-/

namespace A035442.P12535066969616404617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A035362 (A065033 n).toNat

end

end A035442.P12535066969616404617

/-! ## A035442.P1164841160000600410

`char[A004448(2*n)]*A035362(A065033(n))`
-/

namespace A035442.P1164841160000600410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004448 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A035362 (A065033 n).toNat

end

end A035442.P1164841160000600410

/-!
# A035443: Number of partitions of n into parts 8k or 8k+3.

The programs for A035443, there is no canonical definition to state claims against.
-/

/-! ## A035443.P14335635981445797981

`A101662(record[A298919(n+1)])`
-/

namespace A035443.P14335635981445797981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101662 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A035443.P14335635981445797981

/-! ## A035443.P5756151113363457890

`A024361(A135764(A114576(n)))`
-/

namespace A035443.P5756151113363457890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (A135764 (A114576 n).toNat).toNat

end

end A035443.P5756151113363457890

/-! ## A035443.P9609986981195045587

`A025852(lt[2*a(n-3), 4*n])` with `a(0)=2, a(1)=1, a(2)=2`
-/

namespace A035443.P9609986981195045587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2] fun n f1 =>
  2 * f1 (n - 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025852 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A035443.P9609986981195045587

/-! ## A035443.P17072960486864979334

`A001610(n)%A001227(A342759(n))`
-/

namespace A035443.P17072960486864979334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001610 n) (A001227 (A342759 n).toNat)

end

end A035443.P17072960486864979334

/-! ## A035443.P1819775082631478318

`A341745(n+1)%A341771(A341578(n+1))`
-/

namespace A035443.P1819775082631478318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341745 (n + 1)) (A341771 (A341578 (n + 1)).toNat)

end

end A035443.P1819775082631478318

/-!
# A035444: Number of partitions of n into parts 4k.

The programs for A035444, there is no canonical definition to state claims against.
-/

/-! ## A035444.P6289208303670833360

`A035363(gcd(n, ∑[n]))`
-/

namespace A035444.P6289208303670833360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A035444.P6289208303670833360

/-! ## A035444.P4183904865278284489

`A035363(lcm(2, n)/2)`
-/

namespace A035444.P4183904865278284489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2)).toNat

end

end A035444.P4183904865278284489

/-! ## A035444.P17815849542603149784

`A035363(∑[∑[n+1]%2]-1)`
-/

namespace A035444.P17815849542603149784
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A035444.P17815849542603149784

/-! ## A035444.P4246927321724877885

`A035363(∑[and(1, ∑[n+1])]-1)`
-/

namespace A035444.P4246927321724877885
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A035444.P4246927321724877885

/-! ## A035444.P8153062502250962564

`A035363(A004525(n))`
-/

namespace A035444.P8153062502250962564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A004525 n).toNat

end

end A035444.P8153062502250962564

/-! ## A035444.P7857165305297933561

`A035363(A026741(n))`
-/

namespace A035444.P7857165305297933561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A026741 n).toNat

end

end A035444.P7857165305297933561

/-! ## A035444.P7502225670604512816

`A035363(A116921(n+1))`
-/

namespace A035444.P7502225670604512816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A116921 (n + 1)).toNat

end

end A035444.P7502225670604512816

/-! ## A035444.P5899812004317694055

`A035363(n-A142150(n))`
-/

namespace A035444.P5899812004317694055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 ((n : ℤ) - A142150 n).toNat

end

end A035444.P5899812004317694055

/-! ## A035444.P15785473690460843352

`A035363(1-A029579(n)+n)`
-/

namespace A035444.P15785473690460843352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (1 - A029579 n + (n : ℤ)).toNat

end

end A035444.P15785473690460843352

/-! ## A035444.P14937775767091539964

`A035363(1-(A029579(n)-n))`
-/

namespace A035444.P14937775767091539964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (1 - (A029579 n - (n : ℤ))).toNat

end

end A035444.P14937775767091539964

/-! ## A035444.P12111113737797336875

`A035363(n/(A059841(n)+1))`
-/

namespace A035444.P12111113737797336875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (SequenceMachineLib.roundAway ((n : ℚ) / (A059841 n + 1 : ℚ))).toNat

end

end A035444.P12111113737797336875

/-! ## A035444.P12093891265052202953

`A035363(n/(2-A000035(n)))`
-/

namespace A035444.P12093891265052202953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (SequenceMachineLib.roundAway ((n : ℚ) / (2 - A000035 n : ℚ))).toNat

end

end A035444.P12093891265052202953

/-! ## A035444.P11414457216452434921

`A035363(C(A004526(n), A057979(n)))`
-/

namespace A035444.P11414457216452434921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (Nat.choose (A004526 n).toNat (A057979 n).toNat)

end

end A035444.P11414457216452434921

/-! ## A035444.P11782718142922712140

`A035363(or(A000035(n), A004526(n)))`
-/

namespace A035444.P11782718142922712140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (Int.lor (A000035 n) (A004526 n)).toNat

end

end A035444.P11782718142922712140

/-! ## A035444.P12600746895309121578

`A035363(A004526(n)+1-A057979(n))`
-/

namespace A035444.P12600746895309121578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A004526 n + (1 - A057979 n)).toNat

end

end A035444.P12600746895309121578

/-! ## A035444.P12574101718811829193

`A035363(1-(A057979(n)-A004526(n)))`
-/

namespace A035444.P12574101718811829193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (1 - (A057979 n - A004526 n)).toNat

end

end A035444.P12574101718811829193

/-! ## A035444.P1558871203077223710

`A035363(A032766(n)-n)*A059841(n)`
-/

namespace A035444.P1558871203077223710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A032766 n - (n : ℤ)).toNat * A059841 n

end

end A035444.P1558871203077223710

/-! ## A035444.P10907211416027375313

`A035363(n-A004526(n)*A177704(n))`
-/

namespace A035444.P10907211416027375313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 ((n : ℤ) - A004526 n * A177704 n).toNat

end

end A035444.P10907211416027375313

/-! ## A035444.P4556396190596585540

`A035363(A057979(n+1))`
-/

namespace A035444.P4556396190596585540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A057979 (n + 1)).toNat

end

end A035444.P4556396190596585540

/-! ## A035444.P4156779345659449954

`A035363(A174239(n+1))`
-/

namespace A035444.P4156779345659449954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A174239 (n + 1)).toNat

end

end A035444.P4156779345659449954

/-!
# A035445: Number of partitions of n into parts 8k or 8k+5.

The programs for A035445, there is no canonical definition to state claims against.
-/

/-! ## A035445.P11786497499279183870

`A060128(Δ[A073063(A025778(n))])`
-/

namespace A035445.P11786497499279183870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073063 (A025778 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 (f1 (n + 1) - f1 n).toNat

end

end A035445.P11786497499279183870

/-! ## A035445.P1773678556297392824

`A146850(n+1)%A000041(A272620(n+1))`
-/

namespace A035445.P1773678556297392824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146850 (n + 1)) (A000041 (A272620 (n + 1)).toNat)

end

end A035445.P1773678556297392824

/-! ## A035445.P5575889942937838276

`A060272(A125199(3*(n+1)))%A060272(2*(n+2))`
-/

namespace A035445.P5575889942937838276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060272 (A125199 (3 * (n + 1))).toNat) (A060272 (2 * (n + 2)))

end

end A035445.P5575889942937838276

/-! ## A035445.P17270585830511540646

`and(A100912(n+2), A227310(n))`
-/

namespace A035445.P17270585830511540646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A100912 (n + 2)) (A227310 n)

end

end A035445.P17270585830511540646

/-! ## A035445.P15197068356206575240

`A007814(A303761(n))*A029359(n)`
-/

namespace A035445.P15197068356206575240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A303761 n).toNat * A029359 n

end

end A035445.P15197068356206575240

/-!
# A035446: Number of partitions of n into parts 8k or 8k+6.

The programs for A035446, there is no canonical definition to state claims against.
-/

/-! ## A035446.P4170941197385764243

`A035364(gcd(n+1, ∑[gcd(6, n%2)]))`
-/

namespace A035446.P4170941197385764243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 6 (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035364 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A035446.P4170941197385764243

/-! ## A035446.P12380636116657017782

`A035364(A152271(n))`
-/

namespace A035446.P12380636116657017782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035364 (A152271 n).toNat

end

end A035446.P12380636116657017782

/-! ## A035446.P15123727840534705142

`A035364(A057979(n)+1)`
-/

namespace A035446.P15123727840534705142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035364 (A057979 n + 1).toNat

end

end A035446.P15123727840534705142

/-! ## A035446.P10091033058125009957

`A035364(A133265(n)/2)`
-/

namespace A035446.P10091033058125009957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035364 (SequenceMachineLib.roundAway ((A133265 n : ℚ) / 2)).toNat

end

end A035446.P10091033058125009957

/-! ## A035446.P17328267495658299972

`A035364(∑[1-A097140(n)])`
-/

namespace A035446.P17328267495658299972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A097140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035364 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A035446.P17328267495658299972

/-! ## A035446.P15747612250844434623

`A035364((A093178(n)+1)/2)`
-/

namespace A035446.P15747612250844434623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035364 (SequenceMachineLib.roundAway ((A093178 n + 1 : ℚ) / 2)).toNat

end

end A035446.P15747612250844434623

/-! ## A035446.P3716234210594415464

`A035364(gcd(n+1, A008619(n)))`
-/

namespace A035446.P3716234210594415464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035364 (Int.gcd (n + 1 : ℤ) (A008619 n))

end

end A035446.P3716234210594415464

/-! ## A035446.P5081334701227985568

`A035364(gcd(-xor(n, -1), A065033(n)))`
-/

namespace A035446.P5081334701227985568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035364 (Int.gcd (-Int.xor (n : ℤ) (-1)) (A065033 n))

end

end A035446.P5081334701227985568

/-! ## A035446.P13246708713340419047

`∑{d}[n+1, A035364(#)*A063524((n+1)/#-1)]`
-/

namespace A035446.P13246708713340419047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035364 d * A063524 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A035446.P13246708713340419047

/-! ## A035446.P4533675025527236053

`A035364(A003602(A093178(n)))`
-/

namespace A035446.P4533675025527236053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035364 (A003602 (A093178 n).toNat).toNat

end

end A035446.P4533675025527236053

/-! ## A035446.P1142670126216586900

`A035364(A008619(A124625(n)))`
-/

namespace A035446.P1142670126216586900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035364 (A008619 (A124625 n).toNat).toNat

end

end A035446.P1142670126216586900

/-! ## A035446.P13186283404322743753

`A035364(A028310(∑[A001057(n)]))`
-/

namespace A035446.P13186283404322743753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035364 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A035446.P13186283404322743753

/-! ## A035446.P10822108697317051366

`A035364(A008619(Δ[A008794(n)]))`
-/

namespace A035446.P10822108697317051366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035364 (A008619 (f1 (n + 1) - f1 n).toNat).toNat

end

end A035446.P10822108697317051366

/-! ## A035446.P5274296720105643357

`A035364(A029579(n)-A004526(n))`
-/

namespace A035446.P5274296720105643357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035364 (A029579 n - A004526 n).toNat

end

end A035446.P5274296720105643357

/-! ## A035446.P67666371759091197

`A035364(gcd(A055562(n), A065033(n)))`
-/

namespace A035446.P67666371759091197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035364 (Int.gcd (A055562 n) (A065033 n))

end

end A035446.P67666371759091197

/-! ## A035446.P10165549619759288239

`A035364(gcd(A053698(n), A110654(n)))`
-/

namespace A035446.P10165549619759288239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035364 (Int.gcd (A053698 n) (A110654 n))

end

end A035446.P10165549619759288239

/-! ## A035446.P3989751861112075334

`A035364(Δ[A264754(n)/2])`
-/

namespace A035446.P3989751861112075334
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264754 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035364 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A035446.P3989751861112075334

/-! ## A035446.P239175949259245610

`A035364(A004526(A133265(n)))`
-/

namespace A035446.P239175949259245610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035364 (A004526 (A133265 n).toNat).toNat

end

end A035446.P239175949259245610

/-! ## A035446.P14838053602853694663

`A035364(A004525(Δ[A264754(n)]))`
-/

namespace A035446.P14838053602853694663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035364 (A004525 (f1 (n + 1) - f1 n).toNat).toNat

end

end A035446.P14838053602853694663

/-! ## A035446.P17021196712553008816

`A035364(gcd(A065033(2*n+1), A065033(n+1)))`
-/

namespace A035446.P17021196712553008816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035364 (Int.gcd (A065033 (2 * n + 1)) (A065033 (n + 1)))

end

end A035446.P17021196712553008816

/-!
# A035447: Number of partitions of n into parts 8k or 8k+7.

The programs for A035447, there is no canonical definition to state claims against.
-/

/-! ## A035447.P13944934409862688370

`A035395(A349775(n+1))`
-/

namespace A035447.P13944934409862688370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035395 (A349775 (n + 1)).toNat

end

end A035447.P13944934409862688370

/-! ## A035447.P14665513317584246070

`A035395(∑[A011558(A289868(n+1))])`
-/

namespace A035447.P14665513317584246070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (A289868 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035395 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A035447.P14665513317584246070

/-!
# A035448: Number of partitions of n into parts 8k+1 or 8k+2.

The programs for A035448, there is no canonical definition to state claims against.
-/

/-! ## A035448.P690145365436339168

`A322800(n)+A007895(A001911(n))`
-/

namespace A035448.P690145365436339168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322800 n + A007895 (A001911 n).toNat

end

end A035448.P690145365436339168

/-! ## A035448.P1431263653915097313

`∑[n%2]+A005710(A001222(2^n))`
-/

namespace A035448.P1431263653915097313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A005710 (A001222 (2 ^ n)).toNat

end

end A035448.P1431263653915097313

/-! ## A035448.P2837441871188249947

`A211270(A000079(n))+A005710(n)`
-/

namespace A035448.P2837441871188249947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211270 (A000079 n).toNat + A005710 n

end

end A035448.P2837441871188249947

/-! ## A035448.P8121849535482009748

`A072649(A337089(n)+A288723(n+1))`
-/

namespace A035448.P8121849535482009748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (A337089 n + A288723 (n + 1)).toNat

end

end A035448.P8121849535482009748

/-! ## A035448.P18432903407980538234

`A005710(A001222(2^n))+abs(A001057(n))`
-/

namespace A035448.P18432903407980538234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005710 (A001222 (2 ^ n)).toNat + |A001057 n|

end

end A035448.P18432903407980538234

/-!
# A035449: Number of partitions of n into parts 8k+1 or 8k+3.

The programs for A035449, there is no canonical definition to state claims against.
-/

/-! ## A035449.P6817942986119700336

`A029379(lt[A198339(2*n+1), A022904(n+1)])`
-/

namespace A035449.P6817942986119700336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198339 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029379 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A035449.P6817942986119700336

/-! ## A035449.P17420830372997305965

`A001222(A006794(n+1))*A029055(A130481(n))`
-/

namespace A035449.P17420830372997305965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006794 (n + 1)).toNat * A029055 (A130481 n).toNat

end

end A035449.P17420830372997305965

/-!
# A035451: Number of partitions of n into parts congruent to 1 mod 4.

The programs for A035451, there is no canonical definition to state claims against.
-/

/-! ## A035451.P5945866018333625698

`∑[A117957(n)]`
-/

namespace A035451.P5945866018333625698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035451.P5945866018333625698

/-! ## A035451.P3052245713692828622

`A117957(n%(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A035451.P3052245713692828622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A117957 (n % (n + 1)) + a (n - 1)

end

end A035451.P3052245713692828622

/-! ## A035451.P10954228576138834288

`a(n-1)+A117957(n)*A141044(n)` with `a(0)=1`
-/

namespace A035451.P10954228576138834288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A117957 n * A141044 n

end

end A035451.P10954228576138834288

/-! ## A035451.P300063438997243495

`A046768(n)-A046780(n)`
-/

namespace A035451.P300063438997243495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046768 n - A046780 n

end

end A035451.P300063438997243495

/-! ## A035451.P5619526453802944034

`A046768(n)+A046780(n)*A153881(n+1)`
-/

namespace A035451.P5619526453802944034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046768 n + A046780 n * A153881 (n + 1)

end

end A035451.P5619526453802944034

/-! ## A035451.P694237702775191888

`a(n-1)+A117957(n)*A340082(A181603(n+1))` with `a(0)=1`
-/

namespace A035451.P694237702775191888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A117957 n * A340082 (A181603 (n + 1)).toNat

end

end A035451.P694237702775191888

/-!
# A035452: Number of partitions of n into parts 8k+1 or 8k+6.

The programs for A035452, there is no canonical definition to state claims against.
-/

/-! ## A035452.P9043410299249414323

`floor(root(A222175(2*n+1), 9))`
-/

namespace A035452.P9043410299249414323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A222175 (2 * n + 1) : ℝ) ^ (1 / (9 : ℝ))⌋

end

end A035452.P9043410299249414323

/-! ## A035452.P18029751653267426265

`A048766(record[A036561(n)-A034534(n+1)])`
-/

namespace A035452.P18029751653267426265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n - A034534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A035452.P18029751653267426265

/-!
# A035454: Number of partitions of n into parts 8k+2 or 8k+3.

The programs for A035454, there is no canonical definition to state claims against.
-/

/-! ## A035454.P12364354039866795468

`A328482(A085289(n+3))`
-/

namespace A035454.P12364354039866795468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328482 (A085289 (n + 3)).toNat

end

end A035454.P12364354039866795468

/-! ## A035454.P15944339407531534071

`A076620(A126324(n)+A093411(n))`
-/

namespace A035454.P15944339407531534071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076620 (A126324 n + A093411 n).toNat

end

end A035454.P15944339407531534071

/-! ## A035454.P10622172436315295104

`A076620(A126324(n)+A104769(n))`
-/

namespace A035454.P10622172436315295104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076620 (A126324 n + A104769 n).toNat

end

end A035454.P10622172436315295104

/-! ## A035454.P4491804041165686781

`A076620(A328482(n)+A126324(n))`
-/

namespace A035454.P4491804041165686781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076620 (A328482 n + A126324 n).toNat

end

end A035454.P4491804041165686781

/-! ## A035454.P4049828436471761213

`A076620(A329320(n)+A126324(n))`
-/

namespace A035454.P4049828436471761213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076620 (A329320 n + A126324 n).toNat

end

end A035454.P4049828436471761213

/-!
# A035455: Number of partitions of n into parts 8k+2 or 8k+4.

The programs for A035455, there is no canonical definition to state claims against.
-/

/-! ## A035455.P888821677280940654

`n%2*A035365(A065033(n))`
-/

namespace A035455.P888821677280940654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A035365 (A065033 n).toNat

end

end A035455.P888821677280940654

/-! ## A035455.P10329146606172173968

`∑{d}[n+1, A035365(#)*A063524((n+1)/#-1)]`
-/

namespace A035455.P10329146606172173968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035365 d * A063524 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A035455.P10329146606172173968

/-! ## A035455.P5709593544648763081

`A000035(n)*A035365(A008619(n))`
-/

namespace A035455.P5709593544648763081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A035365 (A008619 n).toNat

end

end A035455.P5709593544648763081

/-! ## A035455.P2545865498185028668

`A000035(n)*A035365(A065033(n))`
-/

namespace A035455.P2545865498185028668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A035365 (A065033 n).toNat

end

end A035455.P2545865498185028668

/-! ## A035455.P2309513200297607323

`A000035(n)*A035365(A159481(n))`
-/

namespace A035455.P2309513200297607323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A035365 (A159481 n).toNat

end

end A035455.P2309513200297607323

/-! ## A035455.P14217403205544246463

`log2(A000034(n))*A035365(A065033(n))`
-/

namespace A035455.P14217403205544246463
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000034 n : ℝ) * (A035365 (A065033 n).toNat : ℝ)

end

end A035455.P14217403205544246463

/-! ## A035455.P13464167325075225367

`Δ[A008619(n)]*A035365(A065033(n))`
-/

namespace A035455.P13464167325075225367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A035365 (A065033 n).toNat

end

end A035455.P13464167325075225367

/-! ## A035455.P3456624517532186191

`char[A005408(n)]*A035365(A065033(n))`
-/

namespace A035455.P3456624517532186191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A035365 (A065033 n).toNat

end

end A035455.P3456624517532186191

/-! ## A035455.P511229261311512936

`A000035(n)*A035365(A032742(n+1))`
-/

namespace A035455.P511229261311512936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A035365 (A032742 (n + 1)).toNat

end

end A035455.P511229261311512936

/-! ## A035455.P15631142719977410604

`A000035(n)*A035365(A057979(n)+1)`
-/

namespace A035455.P15631142719977410604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A035365 (A057979 n + 1).toNat

end

end A035455.P15631142719977410604

/-! ## A035455.P14646878240404359188

`A000035(n)*A035365(A110654(n+1))`
-/

namespace A035455.P14646878240404359188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A035365 (A110654 (n + 1)).toNat

end

end A035455.P14646878240404359188

/-! ## A035455.P15039857857135159749

`Δ[A004526(n)]*A035365(A008619(n))`
-/

namespace A035455.P15039857857135159749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A035365 (A008619 n).toNat

end

end A035455.P15039857857135159749

/-! ## A035455.P9927444987137437535

`Δ[A004526(n)]*A035365(A065033(n))`
-/

namespace A035455.P9927444987137437535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A035365 (A065033 n).toNat

end

end A035455.P9927444987137437535

/-! ## A035455.P5662602967003770959

`Δ[A065033(n+1)]*A035365(A065033(n+1))`
-/

namespace A035455.P5662602967003770959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A035365 (A065033 (n + 1)).toNat

end

end A035455.P5662602967003770959

/-!
# A035456: Number of partitions of n into parts 8k+2 or 8k+5.

The programs for A035456, there is no canonical definition to state claims against.
-/

/-! ## A035456.P11569999093981970936

`A339365(n)+A295883(A068013(n))`
-/

namespace A035456.P11569999093981970936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339365 n + A295883 (A068013 n).toNat

end

end A035456.P11569999093981970936

/-! ## A035456.P12682666912596703455

`A339365(n)-A178798(A051433(n))`
-/

namespace A035456.P12682666912596703455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339365 n - A178798 (A051433 n).toNat

end

end A035456.P12682666912596703455

/-! ## A035456.P11641441014274681420

`A339365(n)+A010894(A175502(n+1))`
-/

namespace A035456.P11641441014274681420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339365 n + A010894 ((A175502 (n + 1)).toNat + 21)

end

end A035456.P11641441014274681420

/-! ## A035456.P11375385375137331196

`A339365(n)+A010052(A000009(3*n+4))`
-/

namespace A035456.P11375385375137331196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339365 n + A010052 (A000009 (3 * n + 4)).toNat

end

end A035456.P11375385375137331196

/-!
# A035457: Number of partitions of n into parts of the form 4*k + 2.

The programs for A035457, there is no canonical definition to state claims against.
-/

/-! ## A035457.P6743234901281104282

`char[2*n]*A172033(n)`
-/

namespace A035457.P6743234901281104282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A172033 n

end

end A035457.P6743234901281104282

/-! ## A035457.P10661795160285966721

`A117409(A319702(n+1))`
-/

namespace A035457.P10661795160285966721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117409 (A319702 (n + 1)).toNat

end

end A035457.P10661795160285966721

/-! ## A035457.P8078908041008130077

`lcm(A056594(n), A172033(n))`
-/

namespace A035457.P8078908041008130077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A172033 n)

end

end A035457.P8078908041008130077

/-! ## A035457.P15536145238302721795

`Δ[A000009(n)-A258259(n)]`
-/

namespace A035457.P15536145238302721795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A258259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035457.P15536145238302721795

/-! ## A035457.P18255084507086307548

`(n+1)%2*A000009(A026741(n))`
-/

namespace A035457.P18255084507086307548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 2 : ℕ) : ℤ) * A000009 (A026741 n).toNat

end

end A035457.P18255084507086307548

/-! ## A035457.P18049922758642601490

`A000009(A004526(n))-a(n-1)` with `a(0)=1`
-/

namespace A035457.P18049922758642601490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000009 (A004526 n).toNat - a (n - 1)

end

end A035457.P18049922758642601490

/-! ## A035457.P7798418406596207224

`A000009(A032766(n)-n)-a(n-1)` with `a(0)=1`
-/

namespace A035457.P7798418406596207224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000009 (A032766 n - (n : ℤ)).toNat - a (n - 1)

end

end A035457.P7798418406596207224

/-! ## A035457.P14560177389718898890

`A059841(n)*A172033(n)*A059841(n)`
-/

namespace A035457.P14560177389718898890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A172033 n * A059841 n

end

end A035457.P14560177389718898890

/-! ## A035457.P14558000767791329436

`Δ[A111133(n)-A258259(n)]`
-/

namespace A035457.P14558000767791329436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n - A258259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035457.P14558000767791329436

/-! ## A035457.P17847620030931836797

`A046767(n)-A046779(n)`
-/

namespace A035457.P17847620030931836797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046767 n - A046779 n

end

end A035457.P17847620030931836797

/-! ## A035457.P3661294231177367303

`A116675(A327672(n))`
-/

namespace A035457.P3661294231177367303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116675 (A327672 n).toNat

end

end A035457.P3661294231177367303

/-! ## A035457.P8305960933530988305

`A172033(n)%A052552(n)`
-/

namespace A035457.P8305960933530988305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172033 n) (A052552 n)

end

end A035457.P8305960933530988305

/-! ## A035457.P14091430609259371854

`and(A077896(n), A172033(n))`
-/

namespace A035457.P14091430609259371854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077896 n) (A172033 n)

end

end A035457.P14091430609259371854

/-! ## A035457.P11166266950818240637

`and(A097110(n), A172033(n))`
-/

namespace A035457.P11166266950818240637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097110 n) (A172033 n)

end

end A035457.P11166266950818240637

/-! ## A035457.P4883052364661870819

`and(A172033(n), A278755(n))`
-/

namespace A035457.P4883052364661870819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A172033 n) (A278755 n)

end

end A035457.P4883052364661870819

/-! ## A035457.P10250030400087591272

`and(A172033(n), A282417(n))`
-/

namespace A035457.P10250030400087591272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A172033 n) (A282417 n)

end

end A035457.P10250030400087591272

/-! ## A035457.P8573098830577245090

`and(A172033(n), A288663(n))`
-/

namespace A035457.P8573098830577245090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A172033 n) (A288663 n)

end

end A035457.P8573098830577245090

/-! ## A035457.P4293825461997667592

`and(A172033(n), A279872(n))`
-/

namespace A035457.P4293825461997667592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A172033 n) (A279872 n)

end

end A035457.P4293825461997667592

/-! ## A035457.P8279180408656295901

`and(A172033(n), A282414(n))`
-/

namespace A035457.P8279180408656295901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A172033 n) (A282414 n)

end

end A035457.P8279180408656295901

/-! ## A035457.P9902297007922163512

`and(A172033(n), A290234(n))`
-/

namespace A035457.P9902297007922163512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A172033 n) (A290234 n)

end

end A035457.P9902297007922163512

/-!
# A035458: Number of partitions of n into parts 8k+2 or 8k+7.

The programs for A035458, there is no canonical definition to state claims against.
-/

/-! ## A035458.P5954486387231948166

`A172263(A172263(Δ[A222045(n)]))`
-/

namespace A035458.P5954486387231948166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (A172263 (f1 (n + 1) - f1 n).toNat).toNat

end

end A035458.P5954486387231948166

/-! ## A035458.P17163785591312742269

`A037828(xor(A007662(n), A046092(n)))`
-/

namespace A035458.P17163785591312742269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037828 (Int.xor (A007662 n) (A046092 n)).toNat

end

end A035458.P17163785591312742269

/-! ## A035458.P9716264219276557941

`Δ[A143824(A317707(n+1))]`
-/

namespace A035458.P9716264219276557941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143824 (A317707 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035458.P9716264219276557941

/-! ## A035458.P8858190848769161737

`∑{p}[A146431(n+2), A001222(#)]`
-/

namespace A035458.P8858190848769161737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146431 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A035458.P8858190848769161737

/-! ## A035458.P611741196910114977

`∑{p}[A146431(n+2), A003415(#)]`
-/

namespace A035458.P611741196910114977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146431 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003415 p

end

end A035458.P611741196910114977

/-!
# A035459: Number of partitions of n into parts 8k+3 or 8k+4.

The programs for A035459, there is no canonical definition to state claims against.
-/

/-! ## A035459.P18246356852375616689

`A062108(A078134(3*(n+1))%A115172(n+1))`
-/

namespace A035459.P18246356852375616689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (Int.tmod (A078134 (3 * (n + 1))) (A115172 (n + 1))).toNat

end

end A035459.P18246356852375616689

/-! ## A035459.P4241968905192900896

`A029271(lt[A029268(2*n), n])`
-/

namespace A035459.P4241968905192900896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029268 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029271 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A035459.P4241968905192900896

/-! ## A035459.P3388772981587404994

`A185284(2*n+1)+A029271(n+1)`
-/

namespace A035459.P3388772981587404994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (2 * n + 1) + A029271 (n + 1)

end

end A035459.P3388772981587404994

/-! ## A035459.P8067996256807212746

`A029271(∑[A109409(n+1)!])`
-/

namespace A035459.P8067996256807212746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A109409 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029271 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A035459.P8067996256807212746

/-!
# A035460: Number of partitions of n into parts 8k+3 or 8k+5.

The programs for A035460, there is no canonical definition to state claims against.
-/

/-! ## A035460.P12037363528773419977

`A029284(n)-A025432(n)^A115593(n)`
-/

namespace A035460.P12037363528773419977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029284 n : ℚ) - (A025432 n : ℚ) ^ (A115593 n : ℤ)

end

end A035460.P12037363528773419977

/-! ## A035460.P14826409773365995130

`A029284(n)-A025432(n)^A193771(n)`
-/

namespace A035460.P14826409773365995130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029284 n : ℚ) - (A025432 n : ℚ) ^ (A193771 n : ℤ)

end

end A035460.P14826409773365995130

/-! ## A035460.P14364445500967843189

`A025919(eq[A011646(n), A056594(n)])`
-/

namespace A035460.P14364445500967843189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011646 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025919 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A035460.P14364445500967843189

/-! ## A035460.P17563059669805336104

`Δ[A103298(A115593(n+2))]`
-/

namespace A035460.P17563059669805336104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A115593 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035460.P17563059669805336104

/-! ## A035460.P5955302633678012508

`A005136(A025836(n)*A052938(n))`
-/

namespace A035460.P5955302633678012508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (A025836 n * A052938 n).toNat

end

end A035460.P5955302633678012508

/-!
# A035461: Number of partitions of n into parts 8k+3 or 8k+6.

The programs for A035461, there is no canonical definition to state claims against.
-/

/-! ## A035461.P18084996652201712456

`and(∑[A121374(n+1)], A100405(n+1))`
-/

namespace A035461.P18084996652201712456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A100405 (n + 1))

end

end A035461.P18084996652201712456

/-! ## A035461.P10969110291001945140

`A025842(∏{p}[n+1, gcd((n+1)*(n+2), #²)])%A345216(n+1)`
-/

namespace A035461.P10969110291001945140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025842 (∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd ((n + 1) * (n + 2)) (p ^ 2))) (A345216 (n + 1))

end

end A035461.P10969110291001945140

/-! ## A035461.P3497640455273960178

`A215879(lcm(A001107(n), A035327(n)))`
-/

namespace A035461.P3497640455273960178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215879 (Int.lcm (A001107 n) (A035327 n))

end

end A035461.P3497640455273960178

/-! ## A035461.P10412389227400529066

`and(A000196(n), A048766(A008412(n)))`
-/

namespace A035461.P10412389227400529066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000196 n) (A048766 (A008412 n).toNat)

end

end A035461.P10412389227400529066

/-! ## A035461.P5369556483680929419

`A302826(A280154(n))%A000005(n+1)`
-/

namespace A035461.P5369556483680929419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302826 (A280154 n).toNat) (A000005 (n + 1))

end

end A035461.P5369556483680929419

/-!
# A035462: Number of partitions of n into parts 4k-1.

The programs for A035462, there is no canonical definition to state claims against.
-/

/-! ## A035462.P13024382687605670257

`A046766(n)-A046778(n)`
-/

namespace A035462.P13024382687605670257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046766 n - A046778 n

end

end A035462.P13024382687605670257

/-! ## A035462.P10643931435290836870

`gcd(A002620(A281446(n)), A029315(n))`
-/

namespace A035462.P10643931435290836870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002620 (A281446 n).toNat) (A029315 n)

end

end A035462.P10643931435290836870

/-! ## A035462.P7314913776753597536

`A005136(∑{d}[A046766(n), #])`
-/

namespace A035462.P7314913776753597536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A035462.P7314913776753597536

/-! ## A035462.P17408551732173915046

`A029315(n)-A137331(A184628(n+1))`
-/

namespace A035462.P17408551732173915046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029315 n - A137331 (A184628 (n + 1)).toNat

end

end A035462.P17408551732173915046

/-! ## A035462.P11586256458196718515

`A097795(A051916(n+1))`
-/

namespace A035462.P11586256458196718515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (A051916 (n + 1)).toNat

end

end A035462.P11586256458196718515

/-!
# A035463: Number of partitions of n into parts 8k+4 or 8k+5.

The programs for A035463, there is no canonical definition to state claims against.
-/

/-! ## A035463.P17901145934944809373

`A037820(∑[A128562(n)]²)`
-/

namespace A035463.P17901145934944809373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037820 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A035463.P17901145934944809373

/-! ## A035463.P17778980835844117099

`A102677(A233768(n+1)+A089688(n))`
-/

namespace A035463.P17778980835844117099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (A233768 (n + 1) + A089688 n).toNat

end

end A035463.P17778980835844117099

/-!
# A035464: Number of partitions of n into parts 8k+4 or 8k+6.

The programs for A035464, there is no canonical definition to state claims against.
-/

/-! ## A035464.P8312674370617632689

`A035366(A152271(n))`
-/

namespace A035464.P8312674370617632689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035366 (A152271 n).toNat

end

end A035464.P8312674370617632689

/-! ## A035464.P15337192846859934058

`A035366(A133265(n)/2)`
-/

namespace A035464.P15337192846859934058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035366 (SequenceMachineLib.roundAway ((A133265 n : ℚ) / 2)).toNat

end

end A035464.P15337192846859934058

/-! ## A035464.P18289321608163940340

`A035366((A093178(n)+1)/2)`
-/

namespace A035464.P18289321608163940340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035366 (SequenceMachineLib.roundAway ((A093178 n + 1 : ℚ) / 2)).toNat

end

end A035464.P18289321608163940340

/-! ## A035464.P16968203165372508778

`A035366(gcd(n+1, A008619(n)))`
-/

namespace A035464.P16968203165372508778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035366 (Int.gcd (n + 1 : ℤ) (A008619 n))

end

end A035464.P16968203165372508778

/-! ## A035464.P14403458089131026442

`∑{d}[n+1, A035366(#)*A063524((n+1)/#-1)]`
-/

namespace A035464.P14403458089131026442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035366 d * A063524 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A035464.P14403458089131026442

/-! ## A035464.P17242967406521049620

`A035366(A008619(A093178(n)))`
-/

namespace A035464.P17242967406521049620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035366 (A008619 (A093178 n).toNat).toNat

end

end A035464.P17242967406521049620

/-! ## A035464.P6016971993084536476

`A035366(A004525(A133265(n)))`
-/

namespace A035464.P6016971993084536476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035366 (A004525 (A133265 n).toNat).toNat

end

end A035464.P6016971993084536476

/-! ## A035464.P8315183403685600656

`A035366(A029579(n)-A004526(n))`
-/

namespace A035464.P8315183403685600656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035366 (A029579 n - A004526 n).toNat

end

end A035464.P8315183403685600656

/-! ## A035464.P5033861157282234381

`A035366(A008619(n)-A142150(n))`
-/

namespace A035464.P5033861157282234381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035366 (A008619 n - A142150 n).toNat

end

end A035464.P5033861157282234381

/-! ## A035464.P9925557318266552813

`A035366(A065033(n*A000035(n)))`
-/

namespace A035464.P9925557318266552813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035366 (A065033 ((n : ℤ) * A000035 n).toNat).toNat

end

end A035464.P9925557318266552813

/-! ## A035464.P3146001983859049660

`A035366(gcd(A008619(n)², A000217(n)))`
-/

namespace A035464.P3146001983859049660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035366 (Int.gcd (A008619 n ^ 2) (A000217 n))

end

end A035464.P3146001983859049660

/-! ## A035464.P17766536627759634171

`A000035(n)*A035366(A032742(n+1))`
-/

namespace A035464.P17766536627759634171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A035366 (A032742 (n + 1)).toNat

end

end A035464.P17766536627759634171

/-! ## A035464.P11514338694214438156

`A035366(A000463(n+1)/A008619(n))`
-/

namespace A035464.P11514338694214438156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035366 (SequenceMachineLib.roundAway ((A000463 (n + 1) : ℚ) / (A008619 n : ℚ))).toNat

end

end A035464.P11514338694214438156

/-! ## A035464.P10409307582954207017

`A035366(A008619(n)/(A142150(n)+1))`
-/

namespace A035464.P10409307582954207017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035366 (SequenceMachineLib.roundAway ((A008619 n : ℚ) / (A142150 n + 1 : ℚ))).toNat

end

end A035464.P10409307582954207017

/-! ## A035464.P5551659528904028037

`A035366(gcd(A000463(n+1), A065033(n)))`
-/

namespace A035464.P5551659528904028037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035366 (Int.gcd (A000463 (n + 1)) (A065033 n))

end

end A035464.P5551659528904028037

/-! ## A035464.P2890531412162951180

`A035366(gcd(A032742(n+1), A110654(n)))`
-/

namespace A035464.P2890531412162951180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035366 (Int.gcd (A032742 (n + 1)) (A110654 n))

end

end A035464.P2890531412162951180

/-! ## A035464.P1885986246606559316

`A035366(A057979(n+2))`
-/

namespace A035464.P1885986246606559316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035366 (A057979 (n + 2)).toNat

end

end A035464.P1885986246606559316

/-! ## A035464.P9713194835178671121

`A035366(A008621(A267352(n)))`
-/

namespace A035464.P9713194835178671121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035366 (A008621 (A267352 n).toNat).toNat

end

end A035464.P9713194835178671121

/-! ## A035464.P8736006886808749589

`A035366(gcd(A110654(2*n+1), A110654(n+1)))`
-/

namespace A035464.P8736006886808749589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035366 (Int.gcd (A110654 (2 * n + 1)) (A110654 (n + 1)))

end

end A035464.P8736006886808749589

/-! ## A035464.P13393340290896709227

`A035366(A065033(n))%A094024(n)`
-/

namespace A035464.P13393340290896709227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035366 (A065033 n).toNat) (A094024 n)

end

end A035464.P13393340290896709227

/-!
# A035465: Number of partitions of n into parts 8k+4 or 8k+7.

The programs for A035465, there is no canonical definition to state claims against.
-/

/-! ## A035465.P1169255064380631202

`A144754(A008859(n))%A358371(n+1)`
-/

namespace A035465.P1169255064380631202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144754 (A008859 n).toNat) (A358371 (n + 1))

end

end A035465.P1169255064380631202

/-! ## A035465.P1200915140969990443

`A325759(gcd(A047749(n), A297447(n+1)))`
-/

namespace A035465.P1200915140969990443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325759 (Int.gcd (A047749 n) (A297447 (n + 1)))

end

end A035465.P1200915140969990443

/-! ## A035465.P7080897501255960502

`and(A126206(n), A358772(A296372(n+5)))`
-/

namespace A035465.P7080897501255960502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126206 n) (A358772 (A296372 (n + 5)).toNat)

end

end A035465.P7080897501255960502

/-! ## A035465.P4450833774898228642

`and(A137910(n+1), A339895(A237599(3*n+5)))`
-/

namespace A035465.P4450833774898228642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A137910 (n + 1)) (A339895 (A237599 (3 * n + 5)).toNat)

end

end A035465.P4450833774898228642

/-! ## A035465.P11101268291666397705

`A365545(or(A001222(2*n+5), A256663(3*(n+1))))`
-/

namespace A035465.P11101268291666397705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365545 (Int.lor (A001222 (2 * n + 5)) (A256663 (3 * (n + 1)))).toNat

end

end A035465.P11101268291666397705

/-!
# A035467: Number of partitions of n into parts 8k+5 or 8k+7.

The programs for A035467, there is no canonical definition to state claims against.
-/

/-! ## A035467.P13508851569445020217

`A035468(A023443(n)+Δ[A239218(3*n+5)])`
-/

namespace A035467.P13508851569445020217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239218 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035468 (A023443 n + (f1 (n + 1) - f1 n)).toNat

end

end A035467.P13508851569445020217

/-! ## A035467.P4960758310004875334

`A324923(n+4)%A055642(A119678(3*n+1))`
-/

namespace A035467.P4960758310004875334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324923 (n + 4)) (A055642 (A119678 (3 * n + 1)).toNat)

end

end A035467.P4960758310004875334

/-! ## A035467.P1735595676309546738

`A035206(A318808(n+1))%A054576(A001523(n))`
-/

namespace A035467.P1735595676309546738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035206 (A318808 (n + 1)).toNat) (A054576 (A001523 n).toNat)

end

end A035467.P1735595676309546738

/-! ## A035467.P9910395538779670883

`A002487(A295120(n+1))%A324121(A094967(n))`
-/

namespace A035467.P9910395538779670883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002487 (A295120 (n + 1)).toNat) (A324121 (A094967 n).toNat)

end

end A035467.P9910395538779670883

/-! ## A035467.P15147813541809724789

`A127324(A194439(n+1)+1)`
-/

namespace A035467.P15147813541809724789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127324 (A194439 (n + 1) + 1).toNat

end

end A035467.P15147813541809724789

/-!
# A035468: Number of partitions of n into parts 8k+6 or 8k+7.

The programs for A035468, there is no canonical definition to state claims against.
-/

/-! ## A035468.P9469621905391539610

`A007521(A028321(n))%A096601(n+1)`
-/

namespace A035468.P9469621905391539610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007521 (A028321 n).toNat) (A096601 (n + 1))

end

end A035468.P9469621905391539610

/-! ## A035468.P16039274951414941208

`A096603(A096545(n+1))%A096601(n+1)`
-/

namespace A035468.P16039274951414941208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096603 (A096545 (n + 1)).toNat) (A096601 (n + 1))

end

end A035468.P16039274951414941208

/-! ## A035468.P1025723763679699414

`(A020484(3*(n+1))*A096603(3*n+5))%A096601(n+1)`
-/

namespace A035468.P1025723763679699414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020484 (3 * (n + 1)) * A096603 (3 * n + 5)) (A096601 (n + 1))

end

end A035468.P1025723763679699414

/-!
# A035469: Triangle read by rows, the Bell transform of the triple factorial numbers A007559(n+1) without column 0.

The programs for A035469, there is no canonical definition to state claims against.
-/

/-! ## A035469.P14983334282404880010

`A371080(comp[∑[n]])`
-/

namespace A035469.P14983334282404880010
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371080 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A035469.P14983334282404880010

/-! ## A035469.P3947109964050305414

`filter[A371080(n+1), A022932(#)]`
-/

namespace A035469.P3947109964050305414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022932 (f1 j).toNat = 1) n)

end

end A035469.P3947109964050305414

/-! ## A035469.P16444547771842641195

`filter[A371080(n+1), A023532(#)]`
-/

namespace A035469.P16444547771842641195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A023532 (f1 j).toNat = 1) n)

end

end A035469.P16444547771842641195

/-! ## A035469.P3575864793715491409

`filter[A371080(n+1), A090171(#)]`
-/

namespace A035469.P3575864793715491409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A090171 (f1 j).toNat = 1) n)

end

end A035469.P3575864793715491409

/-! ## A035469.P1850673958032981267

`filter[A371080(n+1), A145568(#)]`
-/

namespace A035469.P1850673958032981267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A035469.P1850673958032981267

/-!
# A035470: Number of ways to break {1,2,3,...,n} into sets with equal sums.

The programs for A035470, there is no canonical definition to state claims against.
-/

/-! ## A035470.P12604210035742917094

`A112956(n+1)+1`
-/

namespace A035470.P12604210035742917094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112956 (n + 1) + 1

end

end A035470.P12604210035742917094

/-!
# A035471: Coordination sequence for lattice D*_4 (with edges defined by l_1 norm = 1).

The programs for A035471, the canonical program `A035471.P11443095032712327449` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035471 has offset 0).

The definition of A035471 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035471.P11443095032712327449

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=8, a(2)=48, a(3)=152, a(4)=352`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A035471

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P11443095032712327449.Spec : Prop :=
  ∀ n, P11443095032712327449.a n = A035471 n

theorem P11443095032712327449.correct : P11443095032712327449.Spec := by
  intro n
  simp only [A035471]

end A035471

/-! ## A035471.P15066876183261739739

`ceil(A007900(n)/3)`
-/

namespace A035471.P15066876183261739739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007900 n : ℚ) / 3⌉

end

end A035471.P15066876183261739739

namespace A035471

/-- `ceil(A007900(n)/3)` -/
def P15066876183261739739.Spec : Prop :=
  ∀ n, P15066876183261739739.a n = A035471 n

end A035471

/-! ## A035471.P16618626170831513123

`A001386(n)-4*n`
-/

namespace A035471.P16618626170831513123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001386 n - (4 * n : ℤ)

end

end A035471.P16618626170831513123

namespace A035471

/-- `A001386(n)-4*n` -/
def P16618626170831513123.Spec : Prop :=
  ∀ n, P16618626170831513123.a n = A035471 n

theorem P16618626170831513123.correct : P16618626170831513123.Spec := by
  intro n
  simp only [A035471, Nat.add_sub_cancel, A035471.P16618626170831513123.a, A035471.P11443095032712327449.a, A001386, A001386.P3145657325654465222.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035471

/-! ## A035471.P12703619928007744184

`round((A019560(n)+1)/4)`
-/

namespace A035471.P12703619928007744184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A019560 n + 1 : ℚ) / 4)

end

end A035471.P12703619928007744184

namespace A035471

/-- `round((A019560(n)+1)/4)` -/
def P12703619928007744184.Spec : Prop :=
  ∀ n, P12703619928007744184.a n = A035471 n

end A035471

/-! ## A035471.P7464848704326559010

`A136264(n)+A016743(n)`
-/

namespace A035471.P7464848704326559010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136264 n + A016743 n

end

end A035471.P7464848704326559010

namespace A035471

/-- `A136264(n)+A016743(n)` -/
def P7464848704326559010.Spec : Prop :=
  ∀ n, P7464848704326559010.a n = A035471 n

end A035471

/-! ## A035471.P8417523613321557269

`A152100(n)-A014635(n)`
-/

namespace A035471.P8417523613321557269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152100 n - A014635 n

end

end A035471.P8417523613321557269

namespace A035471

/-- `A152100(n)-A014635(n)` -/
def P8417523613321557269.Spec : Prop :=
  ∀ n, P8417523613321557269.a n = A035471 n

end A035471

/-! ## A035471.P6495336717213815414

`A007900(n)/A122553(n)`
-/

namespace A035471.P6495336717213815414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007900 n : ℚ) / (A122553 n : ℚ)

end

end A035471.P6495336717213815414

namespace A035471

/-- `A007900(n)/A122553(n)` -/
def P6495336717213815414.Spec : Prop :=
  ∀ n, P6495336717213815414.a n = (A035471 n : ℚ)

end A035471

/-! ## A035471.P8547223491655231038

`A019560(n)/A123932(n)`
-/

namespace A035471.P8547223491655231038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019560 n : ℚ) / (A123932 n : ℚ)

end

end A035471.P8547223491655231038

namespace A035471

/-- `A019560(n)/A123932(n)` -/
def P8547223491655231038.Spec : Prop :=
  ∀ n, P8547223491655231038.a n = (A035471 n : ℚ)

end A035471

/-! ## A035471.P7354110109278520422

`gcd(A007900(n), A019560(n))`
-/

namespace A035471.P7354110109278520422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007900 n) (A019560 n)

end

end A035471.P7354110109278520422

namespace A035471

/-- `gcd(A007900(n), A019560(n))` -/
def P7354110109278520422.Spec : Prop :=
  ∀ n, (P7354110109278520422.a n : ℤ) = A035471 n

end A035471

/-! ## A035471.P8830913971762877963

`2*A008412(n)-A022144(n)`
-/

namespace A035471.P8830913971762877963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008412 n - A022144 n

end

end A035471.P8830913971762877963

namespace A035471

/-- `2*A008412(n)-A022144(n)` -/
def P8830913971762877963.Spec : Prop :=
  ∀ n, P8830913971762877963.a n = A035471 n

end A035471

/-! ## A035471.P17934817315876321933

`A019560(n)/(A057427(n)+1)²`
-/

namespace A035471.P17934817315876321933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019560 n : ℚ) / ((A057427 n + 1) ^ 2 : ℚ)

end

end A035471.P17934817315876321933

namespace A035471

/-- `A019560(n)/(A057427(n)+1)²` -/
def P17934817315876321933.Spec : Prop :=
  ∀ n, P17934817315876321933.a n = (A035471 n : ℚ)

end A035471

/-! ## A035471.P10675058669612437487

`A033547(n)+A008531(n)-4*n`
-/

namespace A035471.P10675058669612437487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033547 n + A008531 n - (4 * n : ℤ)

end

end A035471.P10675058669612437487

namespace A035471

/-- `A033547(n)+A008531(n)-4*n` -/
def P10675058669612437487.Spec : Prop :=
  ∀ n, P10675058669612437487.a n = A035471 n

end A035471

/-! ## A035471.P7958369227839900571

`A028310(2*n)+A005900(2*n)`
-/

namespace A035471.P7958369227839900571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * n) + A005900 (2 * n)

end

end A035471.P7958369227839900571

namespace A035471

/-- `A028310(2*n)+A005900(2*n)` -/
def P7958369227839900571.Spec : Prop :=
  ∀ n, P7958369227839900571.a n = A035471 n

end A035471

/-! ## A035471.P14810137613972259045

`A036987(2*n)+2*A006527(2*n)`
-/

namespace A035471.P14810137613972259045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n) + 2 * A006527 (2 * n)

end

end A035471.P14810137613972259045

namespace A035471

/-- `A036987(2*n)+2*A006527(2*n)` -/
def P14810137613972259045.Spec : Prop :=
  ∀ n, P14810137613972259045.a n = A035471 n

end A035471

/-! ## A035471.P11392516511117749525

`A004277(2*n)+2*A007290(2*n+1)`
-/

namespace A035471.P11392516511117749525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n) + 2 * A007290 (2 * n + 1)

end

end A035471.P11392516511117749525

namespace A035471

/-- `A004277(2*n)+2*A007290(2*n+1)` -/
def P11392516511117749525.Spec : Prop :=
  ∀ n, P11392516511117749525.a n = A035471 n

end A035471

/-! ## A035471.P3708846676389242399

`A004275(2*n+1)+∑[A004275(2*n)²]`
-/

namespace A035471.P3708846676389242399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035471.P3708846676389242399

namespace A035471

/-- `A004275(2*n+1)+∑[A004275(2*n)²]` -/
def P3708846676389242399.Spec : Prop :=
  ∀ n, P3708846676389242399.a n = A035471 n

end A035471

/-! ## A035471.P6439337606179134068

`A004275(2*n+1)+2*A007290(2*n+1)`
-/

namespace A035471.P6439337606179134068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (2 * n + 1) + 2 * A007290 (2 * n + 1)

end

end A035471.P6439337606179134068

namespace A035471

/-- `A004275(2*n+1)+2*A007290(2*n+1)` -/
def P6439337606179134068.Spec : Prop :=
  ∀ n, P6439337606179134068.a n = A035471 n

end A035471

/-! ## A035471.P14290892240512474593

`A006527(2*n)+A006527(A004277(n))`
-/

namespace A035471.P14290892240512474593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 (2 * n) + A006527 (A004277 n).toNat

end

end A035471.P14290892240512474593

namespace A035471

/-- `A006527(2*n)+A006527(A004277(n))` -/
def P14290892240512474593.Spec : Prop :=
  ∀ n, P14290892240512474593.a n = A035471 n

end A035471

/-! ## A035471.P11303475300179009428

`A103290(2*n+1)+A000007(n)-A103290(2*n)`
-/

namespace A035471.P11303475300179009428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103290 (2 * n + 1) + (A000007 n - A103290 (2 * n))

end

end A035471.P11303475300179009428

namespace A035471

/-- `A103290(2*n+1)+A000007(n)-A103290(2*n)` -/
def P11303475300179009428.Spec : Prop :=
  ∀ n, P11303475300179009428.a n = A035471 n

end A035471

/-!
# A035472: Coordination sequence for lattice D*_6 (with edges defined by l_1 norm = 1).

The programs for A035472, there is no canonical definition to state claims against.
-/

/-! ## A035472.P3267402834318188733

`A130347(A008000(n)²)`
-/

namespace A035472.P3267402834318188733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130347 (A008000 n ^ 2).toNat

end

end A035472.P3267402834318188733

/-!
# A035473: Coordination sequence for lattice D*_8 (with edges defined by l_1 norm = 1).

The programs for A035473, there is no canonical definition to state claims against.
-/

/-! ## A035473.P2039452130248125514

`2*A045651(n)-A008416(n)`
-/

namespace A035473.P2039452130248125514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045651 n - A008416 n

end

end A035473.P2039452130248125514

/-! ## A035473.P6007239659828631213

`A045651(n)+A010369(n)%A008416(n)`
-/

namespace A035473.P6007239659828631213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045651 n + Int.tmod (A010369 n) (A008416 n)

end

end A035473.P6007239659828631213

/-!
# A035475: Coordination sequence for lattice D*_12 (with edges defined by l_1 norm = 1).

The programs for A035475, there is no canonical definition to state claims against.
-/

/-! ## A035475.P9933031855106447309

`A035707(n)%A037033(n)`
-/

namespace A035475.P9933031855106447309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035707 n) (A037033 n)

end

end A035475.P9933031855106447309

/-! ## A035475.P4425168658875154153

`filter[A035707(n), A353682(#)]`
-/

namespace A035475.P4425168658875154153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353682 (f1 j).toNat = 1) n)

end

end A035475.P4425168658875154153

/-!
# A035476: Coordination sequence for lattice D*_14 (with edges defined by l_1 norm = 1).

The programs for A035476, there is no canonical definition to state claims against.
-/

/-! ## A035476.P1464055392901159605

`A035709(A228050(n+1))`
-/

namespace A035476.P1464055392901159605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035709 (A228050 (n + 1)).toNat

end

end A035476.P1464055392901159605

/-! ## A035476.P392240490306730550

`A035709(A068418(10*n+1)%4+n)`
-/

namespace A035476.P392240490306730550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035709 (Int.tmod (A068418 (10 * n + 1)) 4 + (n : ℤ)).toNat

end

end A035476.P392240490306730550

/-! ## A035476.P3019710027968005643

`A035709(A297240((n-2)^n+4)+n)`
-/

namespace A035476.P3019710027968005643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035709 (A297240 (((n : ℤ) - 2) ^ n + 4).toNat + (n : ℤ)).toNat

end

end A035476.P3019710027968005643

/-!
# A035477: Coordination sequence for lattice D*_16 (with edges defined by l_1 norm = 1).

The programs for A035477, there is no canonical definition to state claims against.
-/

/-! ## A035477.P5001565004604955841

`A035711(A032551(n+1))`
-/

namespace A035477.P5001565004604955841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035711 (A032551 (n + 1)).toNat

end

end A035477.P5001565004604955841

/-! ## A035477.P11974007921182109430

`A035711(A036193(2^n))`
-/

namespace A035477.P11974007921182109430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035711 (A036193 (2 ^ n)).toNat

end

end A035477.P11974007921182109430

/-! ## A035477.P18092186593339877076

`A035711(A001222(5^n))`
-/

namespace A035477.P18092186593339877076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035711 (A001222 (5 ^ n)).toNat

end

end A035477.P18092186593339877076

/-! ## A035477.P458287757498327444

`A035711(n^A010194(n))`
-/

namespace A035477.P458287757498327444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035711 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A010194 n : ℤ))).toNat

end

end A035477.P458287757498327444

/-!
# A035478: Coordination sequence for lattice D*_18 (with edges defined by l_1 norm = 1).

The programs for A035478, there is no canonical definition to state claims against.
-/

/-! ## A035478.P5567602665534613858

`A035713(A293497(n²))`
-/

namespace A035478.P5567602665534613858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035713 (A293497 (n ^ 2)).toNat

end

end A035478.P5567602665534613858

/-! ## A035478.P15356271013228052319

`A035713(n)%A057802(n)²`
-/

namespace A035478.P15356271013228052319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035713 n) (A057802 n ^ 2)

end

end A035478.P15356271013228052319

/-! ## A035478.P1796164895933833611

`A035713(n)^A036423(n)!`
-/

namespace A035478.P1796164895933833611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035713 n ^ Nat.factorial (A036423 n).toNat

end

end A035478.P1796164895933833611

/-! ## A035478.P10823817366388632234

`A035713(A276142(n+1)-1)`
-/

namespace A035478.P10823817366388632234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035713 (A276142 (n + 1) - 1).toNat

end

end A035478.P10823817366388632234

/-! ## A035478.P11262202626254209591

`A035713(n^A101183(n+1))`
-/

namespace A035478.P11262202626254209591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035713 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A101183 (n + 1) : ℤ))).toNat

end

end A035478.P11262202626254209591

/-!
# A035480: Pseudoperfect numbers (A005835) that are not practical (second definition, A007620).

The programs for A035480, there is no canonical definition to state claims against.
-/

/-! ## A035480.P7824807899811224224

`A007621(A157334(2*(n+2))+n+1)`
-/

namespace A035480.P7824807899811224224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007621 (A157334 (2 * (n + 2)) + (n + 1 : ℤ)).toNat

end

end A035480.P7824807899811224224

/-! ## A035480.P8484687651313755173

`A007621(n+2)/A001222(A132257(n+1))`
-/

namespace A035480.P8484687651313755173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007621 (n + 2) : ℚ) / (A001222 (A132257 (n + 1)).toNat : ℚ)

end

end A035480.P8484687651313755173

/-! ## A035480.P7148883232688906533

`A331902(A000124(3*(n+1)))+A007621(n+2)`
-/

namespace A035480.P7148883232688906533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331902 (A000124 (3 * (n + 1))).toNat + A007621 (n + 2)

end

end A035480.P7148883232688906533

/-! ## A035480.P2220976096084503981

`A001222(A132257(n+2))*A007621(n+2)`
-/

namespace A035480.P2220976096084503981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A132257 (n + 2)).toNat * A007621 (n + 2)

end

end A035480.P2220976096084503981

/-! ## A035480.P11425911633597335034

`A007621(n+2)+A000122(A235617(n+1))`
-/

namespace A035480.P11425911633597335034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007621 (n + 2) + A000122 (A235617 (n + 1)).toNat

end

end A035480.P11425911633597335034

/-!
# A035481: Number of n X n symmetric matrices whose first row is 1..n and whose rows and columns are all permutations of 1..n.

The programs for A035481, there is no canonical definition to state claims against.
-/

/-! ## A035481.P2154377818537134959

`A035482(n)/n!`
-/

namespace A035481.P2154377818537134959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035482 n : ℚ) / (Nat.factorial n : ℚ)

end

end A035481.P2154377818537134959

/-! ## A035481.P7322014283655525336

`A035482(n)/A000142(n)`
-/

namespace A035481.P7322014283655525336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035482 n : ℚ) / (A000142 n : ℚ)

end

end A035481.P7322014283655525336

/-! ## A035481.P14679263929633143050

`abs(A035482(n)/A133942(n))`
-/

namespace A035481.P14679263929633143050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A035482 n : ℚ) / (A133942 n : ℚ)|

end

end A035481.P14679263929633143050

/-! ## A035481.P3660351596486881776

`A035482(n)/A104150(n+1)`
-/

namespace A035481.P3660351596486881776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035482 n : ℚ) / (A104150 (n + 1) : ℚ)

end

end A035481.P3660351596486881776

/-! ## A035481.P9142942204339606252

`A035482(n)/∏{d}[floor(2^(n-1)), A000005(#)]`
-/

namespace A035481.P9142942204339606252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035482 n : ℚ) / ((∏ d ∈ Nat.divisors (f1 n).natAbs, A000005 d : ℤ) : ℚ)

end

end A035481.P9142942204339606252

/-!
# A035482: Number of n X n symmetric matrices each of whose rows is a permutation of 1..n.

The programs for A035482, there is no canonical definition to state claims against.
-/

/-! ## A035482.P1391507941993733558

`A035481(n)*n!`
-/

namespace A035482.P1391507941993733558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035481 n * (Nat.factorial n : ℤ)

end

end A035482.P1391507941993733558

/-! ## A035482.P8953920107653491308

`A000142(n)*A035481(n)`
-/

namespace A035482.P8953920107653491308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A035481 n

end

end A035482.P8953920107653491308

/-! ## A035482.P12955137285961712941

`sqrt(A001044(n))*A035481(n)`
-/

namespace A035482.P12955137285961712941
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001044 n : ℝ) * (A035481 n : ℝ)

end

end A035482.P12955137285961712941

/-! ## A035482.P10262863874432964552

`(A033312(n)+1)*A035481(n)`
-/

namespace A035482.P10262863874432964552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033312 n + 1) * A035481 n

end

end A035482.P10262863874432964552

/-! ## A035482.P9923903180121239731

`∏{d}[floor(2^(n-1)), A000005(#)]*A035481(n)`
-/

namespace A035482.P9923903180121239731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f1 n).natAbs, A000005 d) * A035481 n

end

end A035482.P9923903180121239731

/-!
# A035483: Number of 2n X 2n symmetric matrices whose first row is 1..2n and whose rows and columns are all permutations of 1..2n.

The programs for A035483, there is no canonical definition to state claims against.
-/

/-! ## A035483.P18196198123540643291

`A035481(2*n)`
-/

namespace A035483.P18196198123540643291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035481 (2 * n)

end

end A035483.P18196198123540643291

/-! ## A035483.P16173755608704188162

`A035482(2*n)/A000142(2*n)`
-/

namespace A035483.P16173755608704188162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035482 (2 * n) : ℚ) / (A000142 (2 * n) : ℚ)

end

end A035483.P16173755608704188162

/-!
# A035485: Card on top of deck at n-th stage of R. K. Guy's shuffling problem.

The programs for A035485, there is no canonical definition to state claims against.
-/

/-! ## A035485.P6604598687296075589

`A035491(A002061(n))-floor(acot(n))`
-/

namespace A035485.P6604598687296075589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035491 (A002061 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A035485.P6604598687296075589

/-! ## A035485.P7510914938240958370

`A035491(A028310(n)+(1-n)²)`
-/

namespace A035485.P7510914938240958370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035491 (A028310 n + (1 - (n : ℤ)) ^ 2).toNat

end

end A035485.P7510914938240958370

/-! ## A035485.P4297185403422521064

`A035491(A054977(n)-(n-n²))`
-/

namespace A035485.P4297185403422521064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035491 (A054977 n - ((n : ℤ) - (n ^ 2 : ℤ))).toNat

end

end A035485.P4297185403422521064

/-! ## A035485.P4223317123545470627

`A035491(A123108(2*n)+(1-n)²)`
-/

namespace A035485.P4223317123545470627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035491 (A123108 (2 * n) + (1 - (n : ℤ)) ^ 2).toNat

end

end A035485.P4223317123545470627

/-! ## A035485.P8566612476812526142

`A035491(A002061(n)+A000007(n))`
-/

namespace A035485.P8566612476812526142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035491 (A002061 n + A000007 n).toNat

end

end A035485.P8566612476812526142

/-! ## A035485.P12554184873141358613

`A035491(A169585(n)+A002061(n))`
-/

namespace A035485.P12554184873141358613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035491 (A169585 n + A002061 n).toNat

end

end A035485.P12554184873141358613

/-! ## A035485.P7986732492192535345

`A035491(A027688(n)-A103517(n))`
-/

namespace A035485.P7986732492192535345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035491 (A027688 n - A103517 n).toNat

end

end A035485.P7986732492192535345

/-! ## A035485.P17738941512701502852

`A035491(A002061(n)*A054977(n))`
-/

namespace A035485.P17738941512701502852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035491 (A002061 n * A054977 n).toNat

end

end A035485.P17738941512701502852

/-! ## A035485.P8240062579717447800

`A035491(lcm(A002061(n), A054977(n)))`
-/

namespace A035485.P8240062579717447800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035491 (Int.lcm (A002061 n) (A054977 n))

end

end A035485.P8240062579717447800

/-! ## A035485.P3737467675742477181

`A035491(A000038(n)!*A002061(n))`
-/

namespace A035485.P3737467675742477181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035491 ((Nat.factorial (A000038 n).toNat : ℤ) * A002061 n).toNat

end

end A035485.P3737467675742477181

/-! ## A035485.P12249638214273611653

`A035491(A002061(n))-A169585(2*n)`
-/

namespace A035485.P12249638214273611653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035491 (A002061 n).toNat - A169585 (2 * n)

end

end A035485.P12249638214273611653

/-! ## A035485.P1687648110009395110

`n-(A028310(n)-A035491(A002061(n)))`
-/

namespace A035485.P1687648110009395110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A028310 n - A035491 (A002061 n).toNat)

end

end A035485.P1687648110009395110

/-! ## A035485.P8792786127551934783

`A035491(A002061(n))-val(A000040(n+1), 2)`
-/

namespace A035485.P8792786127551934783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035491 (A002061 n).toNat - (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A035485.P8792786127551934783

/-! ## A035485.P17625106472221840194

`A035491(A002061(n))/A054977(A118759(n))`
-/

namespace A035485.P17625106472221840194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035491 (A002061 n).toNat : ℚ) / (A054977 (A118759 n).toNat : ℚ)

end

end A035485.P17625106472221840194

/-! ## A035485.P5031864508638017416

`A035491(2*(∑[n]+1))`
-/

namespace A035485.P5031864508638017416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035491 (2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A035485.P5031864508638017416

/-!
# A035487: Second column of Stolarsky array.

The programs for A035487, the canonical program `A035487.P12920524519173018273` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035487 has offset 1).

The definition of A035487 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007064, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A035487.P12920524519173018273

`A007067(A007064(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A035487

/-- `A007067(A007064(n+1))` -/
def P12920524519173018273.Spec : Prop :=
  ∀ n, P12920524519173018273.a n = A035487 (n + 1)

theorem P12920524519173018273.correct : P12920524519173018273.Spec := by
  intro n
  simp only [A035487, Nat.add_sub_cancel]

end A035487

/-! ## A035487.P916394563202405923

`ceil(n*ϕ^3+ϕ)`
-/

namespace A035487.P916394563202405923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.goldenRatio ^ 3 + Real.goldenRatio⌉

end

end A035487.P916394563202405923

namespace A035487

/-- `ceil(n*ϕ^3+ϕ)` -/
def P916394563202405923.Spec : Prop :=
  ∀ n, P916394563202405923.a n = A035487 (n + 1)

end A035487

/-! ## A035487.P15274102886676505792

`ceil(ϕ*xor(1, 2*n))+n`
-/

namespace A035487.P15274102886676505792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (Nat.xor 1 (2 * n) : ℝ)⌉ + (n : ℤ)

end

end A035487.P15274102886676505792

namespace A035487

/-- `ceil(ϕ*xor(1, 2*n))+n` -/
def P15274102886676505792.Spec : Prop :=
  ∀ n, P15274102886676505792.a n = A035487 (n + 1)

end A035487

/-! ## A035487.P9382134510863788770

`floor((n+ϕ)²-lcm(n, n-1))`
-/

namespace A035487.P9382134510863788770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℝ) + Real.goldenRatio) ^ 2 - (Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℝ)⌋

end

end A035487.P9382134510863788770

namespace A035487

/-- `floor((n+ϕ)²-lcm(n, n-1))` -/
def P9382134510863788770.Spec : Prop :=
  ∀ n, P9382134510863788770.a n = A035487 (n + 1)

end A035487

/-! ## A035487.P14737817245422939497

`floor(ϕ*or(1, 2*n)+n+1)`
-/

namespace A035487.P14737817245422939497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (Nat.lor 1 (2 * n) : ℝ) + (n + 1 : ℝ)⌋

end

end A035487.P14737817245422939497

namespace A035487

/-- `floor(ϕ*or(1, 2*n)+n+1)` -/
def P14737817245422939497.Spec : Prop :=
  ∀ n, P14737817245422939497.a n = A035487 (n + 1)

end A035487

/-! ## A035487.P5844616716527991681

`floor(ϕ*xor(1, 2*n)+n+1)`
-/

namespace A035487.P5844616716527991681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (Nat.xor 1 (2 * n) : ℝ) + (n + 1 : ℝ)⌋

end

end A035487.P5844616716527991681

namespace A035487

/-- `floor(ϕ*xor(1, 2*n)+n+1)` -/
def P5844616716527991681.Spec : Prop :=
  ∀ n, P5844616716527991681.a n = A035487 (n + 1)

end A035487

/-! ## A035487.P618416550919295194

`floor(ϕ*(2*n+1))+C(n+1, n)`
-/

namespace A035487.P618416550919295194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (2 * n + 1 : ℝ)⌋ + (Nat.choose (n + 1) n : ℤ)

end

end A035487.P618416550919295194

namespace A035487

/-- `floor(ϕ*(2*n+1))+C(n+1, n)` -/
def P618416550919295194.Spec : Prop :=
  ∀ n, P618416550919295194.a n = A035487 (n + 1)

end A035487

/-! ## A035487.P4625592131486122139

`ceil(ϕ*(2*n+1))+gcd(n, 2*n)`
-/

namespace A035487.P4625592131486122139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (2 * n + 1 : ℝ)⌉ + (Nat.gcd n (2 * n) : ℤ)

end

end A035487.P4625592131486122139

namespace A035487

/-- `ceil(ϕ*(2*n+1))+gcd(n, 2*n)` -/
def P4625592131486122139.Spec : Prop :=
  ∀ n, P4625592131486122139.a n = A035487 (n + 1)

end A035487

/-! ## A035487.P10292569856722122586

`ceil(ϕ*C(2*n+1, 2*n))+n`
-/

namespace A035487.P10292569856722122586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (Nat.choose (2 * n + 1) (2 * n) : ℝ)⌉ + (n : ℤ)

end

end A035487.P10292569856722122586

namespace A035487

/-- `ceil(ϕ*C(2*n+1, 2*n))+n` -/
def P10292569856722122586.Spec : Prop :=
  ∀ n, P10292569856722122586.a n = A035487 (n + 1)

end A035487

/-! ## A035487.P11475312952090531137

`ceil(ϕ*or(2*n+1, 2*n))+n`
-/

namespace A035487.P11475312952090531137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (Nat.lor (2 * n + 1) (2 * n) : ℝ)⌉ + (n : ℤ)

end

end A035487.P11475312952090531137

namespace A035487

/-- `ceil(ϕ*or(2*n+1, 2*n))+n` -/
def P11475312952090531137.Spec : Prop :=
  ∀ n, P11475312952090531137.a n = A035487 (n + 1)

end A035487

/-! ## A035487.P11791100652442956616

`floor(gcd(n+1, ∑[2*n])+ϕ*(2*n+1))`
-/

namespace A035487.P11791100652442956616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ) + Real.goldenRatio * (2 * n + 1 : ℝ)⌋

end

end A035487.P11791100652442956616

namespace A035487

/-- `floor(gcd(n+1, ∑[2*n])+ϕ*(2*n+1))` -/
def P11791100652442956616.Spec : Prop :=
  ∀ n, P11791100652442956616.a n = A035487 (n + 1)

end A035487

/-! ## A035487.P12488531638788693528

`A001966(n)-n`
-/

namespace A035487.P12488531638788693528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001966 n - (n : ℤ)

end

end A035487.P12488531638788693528

namespace A035487

/-- `A001966(n)-n` -/
def P12488531638788693528.Spec : Prop :=
  ∀ n, P12488531638788693528.a n = A035487 (n + 1)

end A035487

/-! ## A035487.P2323369926684399520

`A342279(n)+1+n`
-/

namespace A035487.P2323369926684399520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342279 n + 1 + (n : ℤ)

end

end A035487.P2323369926684399520

namespace A035487

/-- `A342279(n)+1+n` -/
def P2323369926684399520.Spec : Prop :=
  ∀ n, P2323369926684399520.a n = A035487 (n + 1)

end A035487

/-! ## A035487.P1119623546903199254

`A184517(n+1)-(n+1)`
-/

namespace A035487.P1119623546903199254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184517 (n + 1) - (n + 1 : ℤ)

end

end A035487.P1119623546903199254

namespace A035487

/-- `A184517(n+1)-(n+1)` -/
def P1119623546903199254.Spec : Prop :=
  ∀ n, P1119623546903199254.a n = A035487 (n + 1)

end A035487

/-! ## A035487.P5602862495652624592

`A184516(n+1)+3*n+1`
-/

namespace A035487.P5602862495652624592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184516 (n + 1) + (3 * n + 1 : ℤ)

end

end A035487.P5602862495652624592

namespace A035487

/-- `A184516(n+1)+3*n+1` -/
def P5602862495652624592.Spec : Prop :=
  ∀ n, P5602862495652624592.a n = A035487 (n + 1)

end A035487

/-! ## A035487.P3878541912585853826

`A003622(2*n+1)-(n-1)`
-/

namespace A035487.P3878541912585853826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (2 * n + 1) - ((n : ℤ) - 1)

end

end A035487.P3878541912585853826

namespace A035487

/-- `A003622(2*n+1)-(n-1)` -/
def P3878541912585853826.Spec : Prop :=
  ∀ n, P3878541912585853826.a n = A035487 (n + 1)

end A035487

/-! ## A035487.P12512498363166325124

`floor(ϕ*(2*n+1))+lcm(n+1, A006530(n+1))`
-/

namespace A035487.P12512498363166325124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (2 * n + 1 : ℝ)⌋ + (Int.lcm (n + 1 : ℤ) (A006530 (n + 1)) : ℤ)

end

end A035487.P12512498363166325124

namespace A035487

/-- `floor(ϕ*(2*n+1))+lcm(n+1, A006530(n+1))` -/
def P12512498363166325124.Spec : Prop :=
  ∀ n, P12512498363166325124.a n = A035487 (n + 1)

end A035487

/-! ## A035487.P13043155307034386140

`A016789(n)+A001965(n)`
-/

namespace A035487.P13043155307034386140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n + A001965 n

end

end A035487.P13043155307034386140

namespace A035487

/-- `A016789(n)+A001965(n)` -/
def P13043155307034386140.Spec : Prop :=
  ∀ n, P13043155307034386140.a n = A035487 (n + 1)

end A035487

/-! ## A035487.P16685615430397308671

`A035488(n)-A007064(n+1)`
-/

namespace A035487.P16685615430397308671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035488 n - A007064 (n + 1)

end

end A035487.P16685615430397308671

namespace A035487

/-- `A035488(n)-A007064(n+1)` -/
def P16685615430397308671.Spec : Prop :=
  ∀ n, P16685615430397308671.a n = A035487 (n + 1)

end A035487

/-! ## A035487.P8388336045401668442

`A380804(n+1)+A380151(n+1)`
-/

namespace A035487.P8388336045401668442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380804 (n + 1) + A380151 (n + 1)

end

end A035487.P8388336045401668442

namespace A035487

/-- `A380804(n+1)+A380151(n+1)` -/
def P8388336045401668442.Spec : Prop :=
  ∀ n, P8388336045401668442.a n = A035487 (n + 1)

theorem P8388336045401668442.correct : P8388336045401668442.Spec := by
  intro n
  simp only [A035487, Nat.add_sub_cancel, A035487.P8388336045401668442.a, A035487.P12920524519173018273.a, A007064, A007064.P15353569760162023814.a, A007067, A007067.P5177700815103506680.a, A380151, A380151.P6636326723691283784.a, A380804, A380804.P3432496646295256472.a, A001966, A001966.P7022639990780230216.a, A001965, A001965.P8161936400494253645.a, A005206, A005206.P7910201692454662432.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035487

/-!
# A035488: 3rd column of Stolarsky array.

The programs for A035488, the canonical program `A035488.P7581911865808934078` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035488 has offset 0).

The definition of A035488 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035487, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A035488.P7581911865808934078

`A007067(A035487(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A035488

/-- `A007067(A035487(n+1))` -/
def P7581911865808934078.Spec : Prop :=
  ∀ n, P7581911865808934078.a n = A035488 n

theorem P7581911865808934078.correct : P7581911865808934078.Spec := by
  intro n
  simp only [A035488]

end A035488

/-! ## A035488.P2747158071182696497

`round(ϕ*floor((ϕ*n+1)*ϕ²))`
-/

namespace A035488.P2747158071182696497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (⌊(Real.goldenRatio * (n : ℝ) + 1) * Real.goldenRatio ^ 2⌋ : ℝ))

end

end A035488.P2747158071182696497

namespace A035488

/-- `round(ϕ*floor((ϕ*n+1)*ϕ²))` -/
def P2747158071182696497.Spec : Prop :=
  ∀ n, P2747158071182696497.a n = A035488 n

end A035488

/-! ## A035488.P16016136702805005894

`comp[round(ϕ*n)]+round(ϕ*A007064(n+1))`
-/

namespace A035488.P16016136702805005894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + SequenceMachineLib.roundAway (Real.goldenRatio * (A007064 (n + 1) : ℝ))

end

end A035488.P16016136702805005894

namespace A035488

/-- `comp[round(ϕ*n)]+round(ϕ*A007064(n+1))` -/
def P16016136702805005894.Spec : Prop :=
  ∀ n, P16016136702805005894.a n = A035488 n

end A035488

/-! ## A035488.P13238107296995667293

`comp[round(ϕ*n)]+A184517(n+1)-(n+1)`
-/

namespace A035488.P13238107296995667293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (A184517 (n + 1) - (n + 1 : ℤ))

end

end A035488.P13238107296995667293

namespace A035488

/-- `comp[round(ϕ*n)]+A184517(n+1)-(n+1)` -/
def P13238107296995667293.Spec : Prop :=
  ∀ n, P13238107296995667293.a n = A035488 n

end A035488

/-! ## A035488.P7947142407777503146

`A035487(n+1)+A007064(n+1)`
-/

namespace A035488.P7947142407777503146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035487 (n + 1) + A007064 (n + 1)

end

end A035488.P7947142407777503146

namespace A035488

/-- `A035487(n+1)+A007064(n+1)` -/
def P7947142407777503146.Spec : Prop :=
  ∀ n, P7947142407777503146.a n = A035488 n

end A035488

/-! ## A035488.P9630570835281526719

`A007064(n+1)+A001966(n)-n`
-/

namespace A035488.P9630570835281526719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1) + (A001966 n - (n : ℤ))

end

end A035488.P9630570835281526719

namespace A035488

/-- `A007064(n+1)+A001966(n)-n` -/
def P9630570835281526719.Spec : Prop :=
  ∀ n, P9630570835281526719.a n = A035488 n

end A035488

/-! ## A035488.P3608621977293744596

`A007064(n+1)+A184516(n+1)+3*n+1`
-/

namespace A035488.P3608621977293744596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1) + (A184516 (n + 1) + (3 * n + 1 : ℤ))

end

end A035488.P3608621977293744596

namespace A035488

/-- `A007064(n+1)+A184516(n+1)+3*n+1` -/
def P3608621977293744596.Spec : Prop :=
  ∀ n, P3608621977293744596.a n = A035488 n

end A035488

/-! ## A035488.P1956225687722800414

`A356218(2*n+1)+n+2`
-/

namespace A035488.P1956225687722800414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356218 (2 * n + 1) + (n + 2 : ℤ)

end

end A035488.P1956225687722800414

namespace A035488

/-- `A356218(2*n+1)+n+2` -/
def P1956225687722800414.Spec : Prop :=
  ∀ n, P1956225687722800414.a n = A035488 n

end A035488

/-! ## A035488.P3145677689653910395

`A000201(2*n+1)+A108598(2*n+1)+1`
-/

namespace A035488.P3145677689653910395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (2 * n + 1) + (A108598 (2 * n + 1) + 1)

end

end A035488.P3145677689653910395

namespace A035488

/-- `A000201(2*n+1)+A108598(2*n+1)+1` -/
def P3145677689653910395.Spec : Prop :=
  ∀ n, P3145677689653910395.a n = A035488 n

end A035488

/-! ## A035488.P623763337213066809

`A066096(2*n+1)+A108598(2*n+1)+1`
-/

namespace A035488.P623763337213066809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (2 * n + 1) + (A108598 (2 * n + 1) + 1)

end

end A035488.P623763337213066809

namespace A035488

/-- `A066096(2*n+1)+A108598(2*n+1)+1` -/
def P623763337213066809.Spec : Prop :=
  ∀ n, P623763337213066809.a n = A035488 n

end A035488

/-! ## A035488.P8816514068201523587

`A022342(2*n+1)+A108598(2*n+1)+2`
-/

namespace A035488.P8816514068201523587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (2 * n + 1) + (A108598 (2 * n + 1) + 2)

end

end A035488.P8816514068201523587

namespace A035488

/-- `A022342(2*n+1)+A108598(2*n+1)+2` -/
def P8816514068201523587.Spec : Prop :=
  ∀ n, P8816514068201523587.a n = A035488 n

end A035488

/-! ## A035488.P12776928212513116467

`A007064(n+1)+A000201(2*n+1)+n+1`
-/

namespace A035488.P12776928212513116467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1) + (A000201 (2 * n + 1) + (n + 1 : ℤ))

end

end A035488.P12776928212513116467

namespace A035488

/-- `A007064(n+1)+A000201(2*n+1)+n+1` -/
def P12776928212513116467.Spec : Prop :=
  ∀ n, P12776928212513116467.a n = A035488 n

end A035488

/-! ## A035488.P7430826034098714019

`A004937(A007064(n+1))`
-/

namespace A035488.P7430826034098714019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 (A007064 (n + 1)).toNat

end

end A035488.P7430826034098714019

namespace A035488

/-- `A004937(A007064(n+1))` -/
def P7430826034098714019.Spec : Prop :=
  ∀ n, P7430826034098714019.a n = A035488 n

end A035488

/-! ## A035488.P9402435813972696177

`A108598(A342279(n)+1)+n`
-/

namespace A035488.P9402435813972696177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (A342279 n + 1).toNat + (n : ℤ)

end

end A035488.P9402435813972696177

namespace A035488

/-- `A108598(A342279(n)+1)+n` -/
def P9402435813972696177.Spec : Prop :=
  ∀ n, P9402435813972696177.a n = A035488 n

end A035488

/-! ## A035488.P345353819241593194

`A187952(A000201(2*n+1))+2`
-/

namespace A035488.P345353819241593194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187952 (A000201 (2 * n + 1)).toNat + 2

end

end A035488.P345353819241593194

namespace A035488

/-- `A187952(A000201(2*n+1))+2` -/
def P345353819241593194.Spec : Prop :=
  ∀ n, P345353819241593194.a n = A035488 n

end A035488

/-! ## A035488.P18133806072141422038

`A007067(A001966(n)-n)`
-/

namespace A035488.P18133806072141422038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (A001966 n - (n : ℤ)).toNat

end

end A035488.P18133806072141422038

namespace A035488

/-- `A007067(A001966(n)-n)` -/
def P18133806072141422038.Spec : Prop :=
  ∀ n, P18133806072141422038.a n = A035488 n

end A035488

/-! ## A035488.P7349514909369311211

`A022342(A035487(n+1)+1)`
-/

namespace A035488.P7349514909369311211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (A035487 (n + 1) + 1).toNat

end

end A035488.P7349514909369311211

namespace A035488

/-- `A022342(A035487(n+1)+1)` -/
def P7349514909369311211.Spec : Prop :=
  ∀ n, P7349514909369311211.a n = A035488 n

end A035488

/-! ## A035488.P12453602314061479500

`A000201(A342279(n)+n)+2`
-/

namespace A035488.P12453602314061479500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A342279 n + (n : ℤ)).toNat + 2

end

end A035488.P12453602314061479500

namespace A035488

/-- `A000201(A342279(n)+n)+2` -/
def P12453602314061479500.Spec : Prop :=
  ∀ n, P12453602314061479500.a n = A035488 n

end A035488

/-! ## A035488.P4698388493586135347

`A022342(A047924(2*n+1)/2)`
-/

namespace A035488.P4698388493586135347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (SequenceMachineLib.roundAway ((A047924 (2 * n + 1) : ℚ) / 2)).toNat

end

end A035488.P4698388493586135347

namespace A035488

/-- `A022342(A047924(2*n+1)/2)` -/
def P4698388493586135347.Spec : Prop :=
  ∀ n, P4698388493586135347.a n = A035488 n

end A035488

/-! ## A035488.P7528615020059960502

`A007067(A004956(2*n+1)+n)`
-/

namespace A035488.P7528615020059960502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (A004956 (2 * n + 1) + (n : ℤ)).toNat

end

end A035488.P7528615020059960502

namespace A035488

/-- `A007067(A004956(2*n+1)+n)` -/
def P7528615020059960502.Spec : Prop :=
  ∀ n, P7528615020059960502.a n = A035488 n

end A035488

/-!
# A035489: Main diagonal of the Stolarsky array.

The programs for A035489, there is no canonical definition to state claims against.
-/

/-! ## A035489.P16377292168884395717

`A035506(∑[4*n])`
-/

namespace A035489.P16377292168884395717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035506 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A035489.P16377292168884395717

/-! ## A035489.P3702662812393428106

`record[A003982(n)*A035506(n)]`
-/

namespace A035489.P3702662812393428106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A035506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035489.P3702662812393428106

/-! ## A035489.P2292510355972827771

`record[gcd(A035506(n), A114327(n))]`
-/

namespace A035489.P2292510355972827771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035506 n) (A114327 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035489.P2292510355972827771

/-! ## A035489.P8147955296835849345

`record[and(A035506(n), A185917(n+1))]`
-/

namespace A035489.P8147955296835849345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035506 n) (A185917 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035489.P8147955296835849345

/-! ## A035489.P4678159420690701060

`A035506(A046092(n))%Δ[A296000(n)]`
-/

namespace A035489.P4678159420690701060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035506 (A046092 n).toNat) (f1 (n + 1) - f1 n)

end

end A035489.P4678159420690701060

/-! ## A035489.P14853140417521257159

`A007318(A000096(n))*A035506(A046092(n))`
-/

namespace A035489.P14853140417521257159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A035506 (A046092 n).toNat

end

end A035489.P14853140417521257159

/-!
# A035490: Step at which card n appears on top of deck for first time in Guy's shuffling problem A035485.

The programs for A035490, there is no canonical definition to state claims against.
-/

/-! ## A035490.P5447118305933674557

`A060750(n+1)%Δ[n^7]`
-/

namespace A035490.P5447118305933674557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060750 (n + 1)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A035490.P5447118305933674557

/-! ## A035490.P12490125525580531106

`A057427(n)*A060750(n+1)`
-/

namespace A035490.P12490125525580531106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A060750 (n + 1)

end

end A035490.P12490125525580531106

/-! ## A035490.P13118657438647902128

`A060750(n+1)*A178334(n)`
-/

namespace A035490.P13118657438647902128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060750 (n + 1) * A178334 n

end

end A035490.P13118657438647902128

/-! ## A035490.P17040279015714841681

`A060750(n+1)*A178489(n)`
-/

namespace A035490.P17040279015714841681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060750 (n + 1) * A178489 n

end

end A035490.P17040279015714841681

/-! ## A035490.P4265008550026461912

`lcm(A011599(n), A060750(n+1))`
-/

namespace A035490.P4265008550026461912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011599 n) (A060750 (n + 1))

end

end A035490.P4265008550026461912

/-! ## A035490.P15386485694039921155

`and(A024036(n), A060750(n+1))`
-/

namespace A035490.P15386485694039921155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A024036 n) (A060750 (n + 1))

end

end A035490.P15386485694039921155

/-! ## A035490.P9241451621312279284

`and(A057428(n), A060750(n+1))`
-/

namespace A035490.P9241451621312279284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A060750 (n + 1))

end

end A035490.P9241451621312279284

/-! ## A035490.P3455996562433691909

`and(A060750(n+1), A114569(n))`
-/

namespace A035490.P3455996562433691909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060750 (n + 1)) (A114569 n)

end

end A035490.P3455996562433691909

/-! ## A035490.P10552369380416181326

`and(A060750(n+1), A134824(n))`
-/

namespace A035490.P10552369380416181326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060750 (n + 1)) (A134824 n)

end

end A035490.P10552369380416181326

/-! ## A035490.P931703972778906889

`and(A060750(n+1), A156760(n))`
-/

namespace A035490.P931703972778906889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060750 (n + 1)) (A156760 n)

end

end A035490.P931703972778906889

/-!
# A035491: Relevant part of deck in Guy's shuffling problem (A035485): row n of the table lists the first 2n "cards" (numbers) after the n-th shuffle.

The programs for A035491, there is no canonical definition to state claims against.
-/

/-! ## A035491.P17564343577831447215

`A318574(A077168(n)+2)`
-/

namespace A035491.P17564343577831447215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318574 (A077168 n + 2).toNat

end

end A035491.P17564343577831447215

/-! ## A035491.P14152189630876852950

`A318574(A067029(2^n)+3)`
-/

namespace A035491.P14152189630876852950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318574 (A067029 (2 ^ n) + 3).toNat

end

end A035491.P14152189630876852950

/-! ## A035491.P5698554036070400418

`A121373(A220248(n+5))+A061395(n+3)`
-/

namespace A035491.P5698554036070400418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A220248 (n + 5)).toNat + A061395 (n + 3)

end

end A035491.P5698554036070400418

/-! ## A035491.P12094180350996867970

`A061395(n+3)-A086074(A211904(2*(n+1)))`
-/

namespace A035491.P12094180350996867970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 3) - A086074 (A211904 (2 * (n + 1))).toNat

end

end A035491.P12094180350996867970

/-! ## A035491.P9930220565623886372

`A318574(n+3)+A000161(A085595(2*n+5))`
-/

namespace A035491.P9930220565623886372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318574 (n + 3) + A000161 (A085595 (2 * n + 5)).toNat

end

end A035491.P9930220565623886372

/-!
# A035492: Position of card 1 after n-th shuffle in Guy's shuffling problem (A035485).

The programs for A035492, the canonical program `A035492.P4305810262129971172` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035492 has offset 0).

The definition of A035492 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035492.P4305810262129971172

`(2*a(n-1))%Δ[n²]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A035492

/-- `(2*a(n-1))%Δ[n²]` -/
def P4305810262129971172.Spec : Prop :=
  ∀ n, P4305810262129971172.a n = A035492 n

theorem P4305810262129971172.correct : P4305810262129971172.Spec := by
  intro n
  simp only [A035492]

end A035492

/-! ## A035492.P10504216143939343322

`floor(2*a(n-1))%(2*n+1)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A035492.P10504216143939343322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) % (2 * n + 1)

end

end A035492.P10504216143939343322

namespace A035492

/-- `floor(2*a(n-1))%(2*n+1)` -/
def P10504216143939343322.Spec : Prop :=
  ∀ n, (P10504216143939343322.a n : ℤ) = A035492 n

end A035492

/-! ## A035492.P4247108557787722323

`(a(n-1)+a(n-1))%Δ[n²]` with `a(0)=1`
-/

namespace A035492.P4247108557787722323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) + a (n - 1)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A035492.P4247108557787722323

namespace A035492

/-- `(a(n-1)+a(n-1))%Δ[n²]` -/
def P4247108557787722323.Spec : Prop :=
  ∀ n, P4247108557787722323.a n = A035492 n

theorem P4247108557787722323.correct : P4247108557787722323.Spec := by
  intro n
  simp only [A035492, Nat.add_sub_cancel, A035492.P4247108557787722323.f1, A035492.P4247108557787722323.a, A035492.P4305810262129971172.f1, A035492.P4305810262129971172.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A035492

/-! ## A035492.P3141922896738606417

`xor(1, 2*a(n-1)+1)%(2*n+1)` with `a(0)=1`
-/

namespace A035492.P3141922896738606417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (2 * a (n - 1) + 1) % (2 * n + 1)

end

end A035492.P3141922896738606417

namespace A035492

/-- `xor(1, 2*a(n-1)+1)%(2*n+1)` -/
def P3141922896738606417.Spec : Prop :=
  ∀ n, (P3141922896738606417.a n : ℤ) = A035492 n

end A035492

/-! ## A035492.P4920854143889646929

`(a(n-1)+floor(a(n-1)))%(n+1+n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A035492.P4920854143889646929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + a (n - 1)) % (n + 1 + n)

end

end A035492.P4920854143889646929

namespace A035492

/-- `(a(n-1)+floor(a(n-1)))%(n+1+n)` -/
def P4920854143889646929.Spec : Prop :=
  ∀ n, (P4920854143889646929.a n : ℤ) = A035492 n

end A035492

/-! ## A035492.P2476103447576198011

`A005843(a(n-1))%Δ[n²]` with `a(0)=1`
-/

namespace A035492.P2476103447576198011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A005843 (a (n - 1)).toNat) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A035492.P2476103447576198011

namespace A035492

/-- `A005843(a(n-1))%Δ[n²]` -/
def P2476103447576198011.Spec : Prop :=
  ∀ n, P2476103447576198011.a n = A035492 n

end A035492

/-! ## A035492.P674796727520519728

`A004277(a(n-1))%(2*n+1)` with `a(0)=1`
-/

namespace A035492.P674796727520519728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A004277 (a (n - 1)).toNat) (2 * n + 1 : ℤ)

end

end A035492.P674796727520519728

namespace A035492

/-- `A004277(a(n-1))%(2*n+1)` -/
def P674796727520519728.Spec : Prop :=
  ∀ n, P674796727520519728.a n = A035492 n

end A035492

/-! ## A035492.P11068805323291024776

`A005843(floor(a(n-1)))%(2*n+1)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A035492.P11068805323291024776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A005843 (a (n - 1)).toNat) (2 * n + 1 : ℤ)

end

end A035492.P11068805323291024776

namespace A035492

/-- `A005843(floor(a(n-1)))%(2*n+1)` -/
def P11068805323291024776.Spec : Prop :=
  ∀ n, P11068805323291024776.a n = A035492 n

end A035492

/-! ## A035492.P13194289871444580612

`(A004273(a(n-1))+1)%A004273(n+1)` with `a(0)=1`
-/

namespace A035492.P13194289871444580612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A004273 (a (n - 1)).toNat + 1) (A004273 (n + 1))

end

end A035492.P13194289871444580612

namespace A035492

/-- `(A004273(a(n-1))+1)%A004273(n+1)` -/
def P13194289871444580612.Spec : Prop :=
  ∀ n, P13194289871444580612.a n = A035492 n

end A035492

/-! ## A035492.P14952975090642067095

`A171746(a(n-1)+n²)` with `a(0)=1`
-/

namespace A035492.P14952975090642067095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A171746 (a (n - 1) + (n ^ 2 : ℤ)).toNat

end

end A035492.P14952975090642067095

namespace A035492

/-- `A171746(a(n-1)+n²)` -/
def P14952975090642067095.Spec : Prop :=
  ∀ n, P14952975090642067095.a n = A035492 n

end A035492

/-!
# A035493: Order in which new cards appear on top of deck in Guy's shuffling problem A035485.

The programs for A035493, there is no canonical definition to state claims against.
-/

/-! ## A035493.P8474318423259376117

`A035485(A035500(n+1))`
-/

namespace A035493.P8474318423259376117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035485 (A035500 (n + 1)).toNat

end

end A035493.P8474318423259376117

/-! ## A035493.P9527818983637428566

`A035485(record[A035490(A035485(n))])`
-/

namespace A035493.P9527818983637428566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035490 (A035485 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035485 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A035493.P9527818983637428566

/-! ## A035493.P1961266231030180916

`A035485(eq[n, A035490(A035485(n))])`
-/

namespace A035493.P1961266231030180916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035490 (A035485 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035485 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035493.P1961266231030180916

/-!
# A035494: Order in which record high new cards appear for first time on top of deck in Guy's shuffling problem A035485.

The programs for A035494, there is no canonical definition to state claims against.
-/

/-! ## A035494.P9747049359351322310

`record[A035493(n+1)]`
-/

namespace A035494.P9747049359351322310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035494.P9747049359351322310

/-! ## A035494.P5171762261085200518

`record[A035493(A028310(n))%A027688(n)]`
-/

namespace A035494.P5171762261085200518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035493 (A028310 n).toNat) (A027688 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035494.P5171762261085200518

/-! ## A035494.P4865267368907987635

`∑{d}[record[A035493(A028310(n))], A000010(#)]`
-/

namespace A035494.P4865267368907987635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035493 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A035494.P4865267368907987635

/-! ## A035494.P3739185619738102081

`record[A035485(n)]`
-/

namespace A035494.P3739185619738102081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035494.P3739185619738102081

/-! ## A035494.P5855900214534924160

`A035485(A035501(n+1))`
-/

namespace A035494.P5855900214534924160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035485 (A035501 (n + 1)).toNat

end

end A035494.P5855900214534924160

/-!
# A035495: Number of musical scales consisting of n notes.

The programs for A035495, there is no canonical definition to state claims against.
-/

/-! ## A035495.P3702290862738349344

`A241926(n+55)`
-/

namespace A035495.P3702290862738349344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241926 (n + 55)

end

end A035495.P3702290862738349344

/-! ## A035495.P955721285411307427

`A037306(n+66)`
-/

namespace A035495.P955721285411307427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (n + 66)

end

end A035495.P955721285411307427

/-! ## A035495.P4205760546000844904

`A047996(n+78)`
-/

namespace A035495.P4205760546000844904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (n + 78)

end

end A035495.P4205760546000844904

/-!
# A035496: Numbers of the form x*y^2 + y*z^2 + z*x^2, x,y,z >= 1.

The programs for A035496, there is no canonical definition to state claims against.
-/

/-! ## A035496.P12098948282020646156

`eq[A004018(A078896(n+1)), A028240(n)]`
-/

namespace A035496.P12098948282020646156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (A078896 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028240 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035496.P12098948282020646156

/-! ## A035496.P16586615119705104773

`eq[A086971(n+1), A329070(A269845(n+1))]`
-/

namespace A035496.P16586615119705104773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329070 (A269845 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035496.P16586615119705104773

/-!
# A035497: Happy primes: primes that eventually reach 1 under iteration of "x -> sum of squares of digits of x".

The programs for A035497, there is no canonical definition to state claims against.
-/

/-! ## A035497.P2388667769766437425

`p?[A007770(n+1)]`
-/

namespace A035497.P2388667769766437425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A035497.P2388667769766437425

/-! ## A035497.P15213311070776325875

`∩[A348283(n+1), A007770(n+1)]`
-/

namespace A035497.P15213311070776325875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035497.P15213311070776325875

/-! ## A035497.P17542443255199554958

`∩[A007770(n+1), A106118(n+1)]`
-/

namespace A035497.P17542443255199554958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035497.P17542443255199554958

/-! ## A035497.P2366166719423232654

`∩[A007770(n+1), A108719(n+1)]`
-/

namespace A035497.P2366166719423232654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035497.P2366166719423232654

/-! ## A035497.P7362131193119836465

`∩[A004139(n+1), A007770(n+1)]`
-/

namespace A035497.P7362131193119836465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035497.P7362131193119836465

/-! ## A035497.P15590260443062023048

`∩[A007770(n+1), A045319(n+1)]`
-/

namespace A035497.P15590260443062023048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035497.P15590260443062023048

/-! ## A035497.P9943961326606810498

`∩[A007770(n+1), A045344(n+1)]`
-/

namespace A035497.P9943961326606810498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035497.P9943961326606810498

/-! ## A035497.P5501982173461360634

`∩[A007770(n+1), A065091(n+1)]`
-/

namespace A035497.P5501982173461360634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035497.P5501982173461360634

/-! ## A035497.P13666153128524643056

`∩[A000040(n+1), A007770(n+1)]`
-/

namespace A035497.P13666153128524643056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035497.P13666153128524643056

/-! ## A035497.P12110153595880040024

`∩[A007770(n+1), A083249(n+1)]`
-/

namespace A035497.P12110153595880040024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035497.P12110153595880040024

/-! ## A035497.P4079545801594154282

`∩[A007770(n+1), A116974(n+1)]`
-/

namespace A035497.P4079545801594154282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035497.P4079545801594154282

/-! ## A035497.P13189353430301496890

`∩[A007770(n+1), A161428(n+1)]`
-/

namespace A035497.P13189353430301496890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035497.P13189353430301496890

/-! ## A035497.P7053076995978138327

`∩[A007770(n+1), A175787(n+1)]`
-/

namespace A035497.P7053076995978138327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035497.P7053076995978138327

/-! ## A035497.P14702026875853349331

`∩[A007770(n+1), A182986(n+1)]`
-/

namespace A035497.P14702026875853349331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035497.P14702026875853349331

/-! ## A035497.P12405963483834300425

`∩[A007770(n+1), A051948(n+1)]`
-/

namespace A035497.P12405963483834300425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035497.P12405963483834300425

/-! ## A035497.P10833628138041623304

`∩[A007770(n+1), A161346(n+1)]`
-/

namespace A035497.P10833628138041623304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035497.P10833628138041623304

/-! ## A035497.P16165800612280654188

`∩[A007770(n+1), A064728(n+1)]`
-/

namespace A035497.P16165800612280654188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035497.P16165800612280654188

/-! ## A035497.P2531210294812940769

`∩[A007770(n+1), A140826(n+1)]`
-/

namespace A035497.P2531210294812940769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035497.P2531210294812940769

/-! ## A035497.P13945381710450024773

`∩[A007770(n+1), A182140(n+1)]`
-/

namespace A035497.P13945381710450024773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035497.P13945381710450024773

/-! ## A035497.P12412628677321404980

`record[A006530(A007770(n+2))]`
-/

namespace A035497.P12412628677321404980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A007770 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035497.P12412628677321404980

/-!
# A035499: Turns at which card 1 surfaces in Guy's shuffling problem (A035485).

The programs for A035499, there is no canonical definition to state claims against.
-/

/-! ## A035499.P10051131045117000403

`eq[1, A035485(n)]`
-/

namespace A035499.P10051131045117000403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035485 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035499.P10051131045117000403

/-! ## A035499.P11579861879170176185

`eq[1, A035492(n)]`
-/

namespace A035499.P11579861879170176185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035492 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035499.P11579861879170176185

/-! ## A035499.P17388204333141476633

`A004176(lt[A035485(n), 2])`
-/

namespace A035499.P17388204333141476633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035485 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A035499.P17388204333141476633

/-! ## A035499.P16842343863666217295

`lt[A035485(n), A000040(A097031(n+1))]`
-/

namespace A035499.P16842343863666217295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035485 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A097031 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035499.P16842343863666217295

