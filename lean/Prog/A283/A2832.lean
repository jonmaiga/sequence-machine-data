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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A283200: Number of nX5 0..1 arrays with no 1 equal to more than two of its horizontal and vertical neighbors, with the exception of exactly one element.

The programs for A283200, there is no canonical definition to state claims against.
-/

/-! ## A283200.P10821180044538002761

`A283203(A374005(n+1))`
-/

namespace A283200.P10821180044538002761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283203 (A374005 (n + 1)).toNat

end

end A283200.P10821180044538002761

/-! ## A283200.P9188050608167409945

`A283203(A167499(n+3))`
-/

namespace A283200.P9188050608167409945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283203 (A167499 (n + 3)).toNat

end

end A283200.P9188050608167409945

/-! ## A283200.P1776978538002993723

`A283203(A155212(n)+13)`
-/

namespace A283200.P1776978538002993723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283203 (A155212 n + 13).toNat

end

end A283200.P1776978538002993723

/-! ## A283200.P9833417757895012419

`A283203(eq[6, A131818(n+1)])`
-/

namespace A283200.P9833417757895012419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283200.P9833417757895012419

/-! ## A283200.P2332283241211626002

`A283203(eq[4, A193592(n)])`
-/

namespace A283200.P2332283241211626002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283200.P2332283241211626002

/-!
# A283201: Number of nX6 0..1 arrays with no 1 equal to more than two of its horizontal and vertical neighbors, with the exception of exactly one element.

The programs for A283201, there is no canonical definition to state claims against.
-/

/-! ## A283201.P9966863534234857899

`A283203(A374007(n+1))`
-/

namespace A283201.P9966863534234857899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283203 (A374007 (n + 1)).toNat

end

end A283201.P9966863534234857899

/-! ## A283201.P2903611763890453560

`A283203(eq[7, A131818(n+1)])`
-/

namespace A283201.P2903611763890453560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283201.P2903611763890453560

/-! ## A283201.P10151822326857302630

`A283203(eq[3, A219347(n)])`
-/

namespace A283201.P10151822326857302630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283201.P10151822326857302630

/-! ## A283201.P10516057492751334766

`A283203(eq[5, A193592(n)])`
-/

namespace A283201.P10516057492751334766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283201.P10516057492751334766

/-! ## A283201.P14402527488348155716

`A283203(eq[6, A200370(n+1)])`
-/

namespace A283201.P14402527488348155716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283201.P14402527488348155716

/-!
# A283202: Number of nX7 0..1 arrays with no 1 equal to more than two of its horizontal and vertical neighbors, with the exception of exactly one element.

The programs for A283202, there is no canonical definition to state claims against.
-/

/-! ## A283202.P9959071382735996182

`A283203(A374008(n+1))`
-/

namespace A283202.P9959071382735996182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283203 (A374008 (n + 1)).toNat

end

end A283202.P9959071382735996182

/-! ## A283202.P18075044858684028042

`A283203(eq[11, A066657(n)])`
-/

namespace A283202.P18075044858684028042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283202.P18075044858684028042

/-! ## A283202.P17759228809238159851

`A283203(eq[6, A002262(n)]+1)`
-/

namespace A283202.P17759228809238159851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A283202.P17759228809238159851

/-! ## A283202.P18104155336905493284

`A283203(eq[8, A131818(n+1)])`
-/

namespace A283202.P18104155336905493284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283202.P18104155336905493284

/-! ## A283202.P15727569970382173817

`A283203(eq[4, A219347(n)])`
-/

namespace A283202.P15727569970382173817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283202.P15727569970382173817

/-!
# A283203: T(n,k)=Number of nXk 0..1 arrays with no 1 equal to more than two of its horizontal and vertical neighbors, with the exception of exactly one element.

The programs for A283203, there is no canonical definition to state claims against.
-/

/-! ## A283203.P11489481330754963482

`floor(log2(A174119(n)!))`
-/

namespace A283203.P11489481330754963482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Nat.factorial (A174119 n).toNat)

end

end A283203.P11489481330754963482

/-! ## A283203.P1532100847052698348

`A025666(A022177(n))`
-/

namespace A283203.P1532100847052698348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025666 (A022177 n).toNat

end

end A283203.P1532100847052698348

/-! ## A283203.P10636261673718264435

`A011871(A157221(n))`
-/

namespace A283203.P10636261673718264435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011871 (A157221 n).toNat

end

end A283203.P10636261673718264435

/-! ## A283203.P3381979507163666758

`A007149(A176422(n))`
-/

namespace A283203.P3381979507163666758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007149 (A176422 n).toNat

end

end A283203.P3381979507163666758

/-! ## A283203.P7501876048170306358

`A144529(A056939(n))`
-/

namespace A283203.P7501876048170306358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144529 (A056939 n).toNat

end

end A283203.P7501876048170306358

/-!
# A283204: Numbers of the form x^2 + y^2 with x and y integers such that x + 2*y is a square.

The programs for A283204, there is no canonical definition to state claims against.
-/

/-! ## A283204.P11311692783302945049

`eq[0, A266003(5*n)]`
-/

namespace A283204.P11311692783302945049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266003 (5 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283204.P11311692783302945049

/-! ## A283204.P13335627270148132179

`record[gcd(A038608(n), A266003(5*n))]`
-/

namespace A283204.P13335627270148132179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038608 n) (A266003 (5 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283204.P13335627270148132179

/-! ## A283204.P9919704206706521139

`lt[A266003(5*n), 1/A016789(n)]`
-/

namespace A283204.P9919704206706521139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266003 (5 * n)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A016789 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A283204.P9919704206706521139

/-! ## A283204.P13861608939914691967

`lt[A266003(5*n), 1/A052938(n)]`
-/

namespace A283204.P13861608939914691967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266003 (5 * n)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A052938 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A283204.P13861608939914691967

/-! ## A283204.P9541409855469786177

`lt[A266003(5*n), 1/A128470(n)]`
-/

namespace A283204.P9541409855469786177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266003 (5 * n)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A128470 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A283204.P9541409855469786177

/-! ## A283204.P764424231811877499

`lt[A266003(5*n), 1/A166138(n)]`
-/

namespace A283204.P764424231811877499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266003 (5 * n)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A166138 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A283204.P764424231811877499

/-! ## A283204.P12267393181160218658

`record[gcd(n, A046092(n))/(A266003(5*n)+1)]`
-/

namespace A283204.P12267393181160218658
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A046092 n) : ℚ) / (A266003 (5 * n) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283204.P12267393181160218658

/-! ## A283204.P13730790998815151166

`and(1, A000040(n+1))*lt[A266003(5*n), 1]`
-/

namespace A283204.P13730790998815151166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266003 (5 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A283204.P13730790998815151166

/-! ## A283204.P13864088350241040856

`lt[A266003(5*n), 1/A016921(A007693(n+1))]`
-/

namespace A283204.P13864088350241040856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266003 (5 * n)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A016921 (A007693 (n + 1)).toNat : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A283204.P13864088350241040856

/-!
# A283205: Numbers of the form x^2 + y^2 with x and y integers such that x + 3*y is a square.

The programs for A283205, there is no canonical definition to state claims against.
-/

/-! ## A283205.P9477602956534001234

`record[A278529(A283204(n+2))]`
-/

namespace A283205.P9477602956534001234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A283204 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283205.P9477602956534001234

/-! ## A283205.P6267064733367116210

`record[A025480(A283204(n+1))]`
-/

namespace A283205.P6267064733367116210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A283204 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283205.P6267064733367116210

/-! ## A283205.P689902726508438905

`record[A001057(A283204(n+2)-1)]`
-/

namespace A283205.P689902726508438905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A283204 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283205.P689902726508438905

/-! ## A283205.P5398218790598984374

`record[A057979(A283204(n+1)+1)]`
-/

namespace A283205.P5398218790598984374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A283204 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283205.P5398218790598984374

/-! ## A283205.P734996269706134027

`record[A142150(A283204(A008619(n)))]`
-/

namespace A283205.P734996269706134027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A283204 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283205.P734996269706134027

/-! ## A283205.P1444018450541889529

`record[(A283204(n+1)+1)%A110654(A283204(n+1)+1)]`
-/

namespace A283205.P1444018450541889529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283204 (n + 1) + 1) (A110654 (A283204 (n + 1) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283205.P1444018450541889529

/-! ## A283205.P8771005661332757830

`eq[0, A266003(10*n)]`
-/

namespace A283205.P8771005661332757830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266003 (10 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283205.P8771005661332757830

/-! ## A283205.P13682158534717861189

`record[A025480(n)/(A266003(5*n)+1)]`
-/

namespace A283205.P13682158534717861189
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025480 n : ℚ) / (A266003 (5 * n) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283205.P13682158534717861189

/-!
# A283206: Fixed points of A283192.

The programs for A283206, there is no canonical definition to state claims against.
-/

/-! ## A283206.P14305928960301029063

`eq[n, A283192(abs(1-n)+1)]`
-/

namespace A283206.P14305928960301029063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283192 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283206.P14305928960301029063

/-! ## A283206.P7318853008188871288

`eq[n, A283194(abs(1-n)+1)]`
-/

namespace A283206.P7318853008188871288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283194 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283206.P7318853008188871288

/-! ## A283206.P11916874306222324861

`record[gcd(n+1, A283192(n+1))]`
-/

namespace A283206.P11916874306222324861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A283192 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283206.P11916874306222324861

/-! ## A283206.P4192867302965218217

`eq[n+1, A283194(n+1)]+1`
-/

namespace A283206.P4192867302965218217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283194 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283206.P4192867302965218217

/-! ## A283206.P14195158875156595926

`record[gcd(A103517(n), A283194(n+1))]`
-/

namespace A283206.P14195158875156595926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103517 n) (A283194 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283206.P14195158875156595926

/-!
# A283207: a(n) = a(floor(n/a(n-1))) + a(floor(n/a(n-2))) with a(1) = a(2) = 2.

The programs for A283207, the canonical program `A283207.P15731751053187143290` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283207 has offset 1).

The definition of A283207 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(floor((n+1)/a(n-1))-1)+a(floor((n+1)/a(n-2))-1)` (program `A283207.P15731751053187143290`, by `A283207.P15731751053187143290.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A283207.P15731751053187143290

`a(floor((n+1)/a(n-1))-1)+a(floor((n+1)/a(n-2))-1)` with `a(0)=2, a(1)=2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283207

/-- `a(floor((n+1)/a(n-1))-1)+a(floor((n+1)/a(n-2))-1)` -/
def P15731751053187143290.Spec : Prop :=
  ∀ n, (P15731751053187143290.a n : ℤ) = A283207 (n + 1)

theorem P15731751053187143290.correct : P15731751053187143290.Spec := by
  intro n
  simp only [A283207, Nat.add_sub_cancel]

end A283207

/-!
# A283208: Minimal exponent integer sequence associated with Vietoris sequence.

The programs for A283208, the canonical program `A283208.P4144003533356594521` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283208 has offset 0).

The definition of A283208 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283208.P4144003533356594521

`A005187(n+1)-1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A283208

/-- `A005187(n+1)-1` -/
def P4144003533356594521.Spec : Prop :=
  ∀ n, P4144003533356594521.a n = A283208 n

theorem P4144003533356594521.correct : P4144003533356594521.Spec := by
  intro n
  simp only [A283208]

end A283208

/-! ## A283208.P14384288034483384745

`∑[val(n+1, 2)]+n`
-/

namespace A283208.P14384288034483384745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A283208.P14384288034483384745

namespace A283208

/-- `∑[val(n+1, 2)]+n` -/
def P14384288034483384745.Spec : Prop :=
  ∀ n, (P14384288034483384745.a n : ℤ) = A283208 n

end A283208

/-! ## A283208.P18398787708787595012

`∑[val(record[2-xor(1, -n)], 2)]`
-/

namespace A283208.P18398787708787595012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283208.P18398787708787595012

namespace A283208

/-- `∑[val(record[2-xor(1, -n)], 2)]` -/
def P18398787708787595012.Spec : Prop :=
  ∀ n, (P18398787708787595012.a n : ℤ) = A283208 n

end A283208

/-! ## A283208.P14585965223458694580

`∑[floor(log2(xor(n, n+1)))]+n`
-/

namespace A283208.P14585965223458694580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Nat.xor n (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A283208.P14585965223458694580

namespace A283208

/-- `∑[floor(log2(xor(n, n+1)))]+n` -/
def P14585965223458694580.Spec : Prop :=
  ∀ n, (P14585965223458694580.a n : ℤ) = A283208 n

end A283208

/-! ## A283208.P13854440617016901974

`∑[log2(or(n, n+1)-n)]+n`
-/

namespace A283208.P13854440617016901974
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)

end

end A283208.P13854440617016901974

namespace A283208

/-- `∑[log2(or(n, n+1)-n)]+n` -/
def P13854440617016901974.Spec : Prop :=
  ∀ n, P13854440617016901974.a n = (A283208 n : ℝ)

end A283208

/-! ## A283208.P6490903059889598628

`∑[log2(xor(n, or(n, n+1)))]+n`
-/

namespace A283208.P6490903059889598628
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.xor n (Nat.lor n (n + 1)) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)

end

end A283208.P6490903059889598628

namespace A283208

/-- `∑[log2(xor(n, or(n, n+1)))]+n` -/
def P6490903059889598628.Spec : Prop :=
  ∀ n, P6490903059889598628.a n = (A283208 n : ℝ)

end A283208

/-! ## A283208.P11382913595256033743

`record[val(n, 2)-a(n-1)]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A283208.P11382913595256033743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n f1 =>
  (SequenceMachineLib.valuation n 2 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283208.P11382913595256033743

namespace A283208

/-- `record[val(n, 2)-a(n-1)]` -/
def P11382913595256033743.Spec : Prop :=
  ∀ n, P11382913595256033743.a n = A283208 n

end A283208

/-! ## A283208.P4524057867720846242

`a(floor((n-1)/2))+1+n` with `a(0)=0`
-/

namespace A283208.P4524057867720846242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + 1 + n

end

end A283208.P4524057867720846242

namespace A283208

/-- `a(floor((n-1)/2))+1+n` -/
def P4524057867720846242.Spec : Prop :=
  ∀ n, (P4524057867720846242.a n : ℤ) = A283208 n

end A283208

/-! ## A283208.P9091249714418340286

`a(∑[n%2]-1)+n+1` with `a(0)=0`
-/

namespace A283208.P9091249714418340286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j - 1) + (n + 1)

end

end A283208.P9091249714418340286

namespace A283208

/-- `a(∑[n%2]-1)+n+1` -/
def P9091249714418340286.Spec : Prop :=
  ∀ n, (P9091249714418340286.a n : ℤ) = A283208 n

end A283208

/-! ## A283208.P4250113453172794312

`val(n+1, 2)+a(n-1)+1` with `a(0)=0`
-/

namespace A283208.P4250113453172794312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.valuation (n + 1) 2 + (a (n - 1) + 1)

end

end A283208.P4250113453172794312

namespace A283208

/-- `val(n+1, 2)+a(n-1)+1` -/
def P4250113453172794312.Spec : Prop :=
  ∀ n, (P4250113453172794312.a n : ℤ) = A283208 n

end A283208

/-! ## A283208.P15699410941086380317

`a(floor(∑[n]/(n+2)))+n+1` with `a(0)=0`
-/

namespace A283208.P15699410941086380317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 2 : ℚ)⌋.toNat + (n + 1)

end

end A283208.P15699410941086380317

namespace A283208

/-- `a(floor(∑[n]/(n+2)))+n+1` -/
def P15699410941086380317.Spec : Prop :=
  ∀ n, (P15699410941086380317.a n : ℤ) = A283208 n

end A283208

/-! ## A283208.P16182706476374207083

`Δ[A122247(n)]-1`
-/

namespace A283208.P16182706476374207083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A283208.P16182706476374207083

namespace A283208

/-- `Δ[A122247(n)]-1` -/
def P16182706476374207083.Spec : Prop :=
  ∀ n, P16182706476374207083.a n = A283208 n

end A283208

/-! ## A283208.P7192472141200274516

`∑[val(A103517(n), 2)]`
-/

namespace A283208.P7192472141200274516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A103517 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283208.P7192472141200274516

namespace A283208

/-- `∑[val(A103517(n), 2)]` -/
def P7192472141200274516.Spec : Prop :=
  ∀ n, (P7192472141200274516.a n : ℤ) = A283208 n

end A283208

/-! ## A283208.P18217493886871293308

`Δ[A174605(n)]+n`
-/

namespace A283208.P18217493886871293308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A283208.P18217493886871293308

namespace A283208

/-- `Δ[A174605(n)]+n` -/
def P18217493886871293308.Spec : Prop :=
  ∀ n, P18217493886871293308.a n = A283208 n

end A283208

/-! ## A283208.P13654502459743190578

`eq[1, A082850(n+2)]`
-/

namespace A283208.P13654502459743190578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082850 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283208.P13654502459743190578

namespace A283208

/-- `eq[1, A082850(n+2)]` -/
def P13654502459743190578.Spec : Prop :=
  ∀ n, (P13654502459743190578.a n : ℤ) = A283208 n

end A283208

/-! ## A283208.P16589516721824263269

`A011371(n+1)+n`
-/

namespace A283208.P16589516721824263269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (n + 1) + (n : ℤ)

end

end A283208.P16589516721824263269

namespace A283208

/-- `A011371(n+1)+n` -/
def P16589516721824263269.Spec : Prop :=
  ∀ n, P16589516721824263269.a n = A283208 n

end A283208

/-! ## A283208.P13698412899006944864

`2*n-A048881(n)`
-/

namespace A283208.P13698412899006944864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A048881 n

end

end A283208.P13698412899006944864

namespace A283208

/-- `2*n-A048881(n)` -/
def P13698412899006944864.Spec : Prop :=
  ∀ n, P13698412899006944864.a n = A283208 n

theorem P13698412899006944864.correct : P13698412899006944864.Spec := by
  intro n
  simp only [A283208, Nat.add_sub_cancel, A283208.P13698412899006944864.a, A283208.P4144003533356594521.a, A005187, A005187.P3874015513960485494.a, A048881, A048881.P16567064232951496228.a, A000120, A000120.P2816527436160941581.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A283208

/-! ## A283208.P8491228151381356583

`comp[comp[A005187(n)]-1]`
-/

namespace A283208.P8491228151381356583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A283208.P8491228151381356583

namespace A283208

/-- `comp[comp[A005187(n)]-1]` -/
def P8491228151381356583.Spec : Prop :=
  ∀ n, (P8491228151381356583.a n : ℤ) = A283208 n

end A283208

/-! ## A283208.P11571187479796467395

`Δ[n²-A000788(n)]`
-/

namespace A283208.P11571187479796467395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A000788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283208.P11571187479796467395

namespace A283208

/-- `Δ[n²-A000788(n)]` -/
def P11571187479796467395.Spec : Prop :=
  ∀ n, P11571187479796467395.a n = A283208 n

end A283208

/-! ## A283208.P15537824534213508606

`∑[A001511(n+1)]-1`
-/

namespace A283208.P15537824534213508606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A283208.P15537824534213508606

namespace A283208

/-- `∑[A001511(n+1)]-1` -/
def P15537824534213508606.Spec : Prop :=
  ∀ n, P15537824534213508606.a n = A283208 n

end A283208

/-!
# A283210: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 595", based on the 5-celled von Neumann neighborhood.

The programs for A283210, there is no canonical definition to state claims against.
-/

/-! ## A283210.P6778107788289835461

`A007088(A283212(n))`
-/

namespace A283210.P6778107788289835461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283212 n).toNat

end

end A283210.P6778107788289835461

/-! ## A283210.P15771672895929109046

`A305989(A283213(n))`
-/

namespace A283210.P15771672895929109046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283213 n).toNat

end

end A283210.P15771672895929109046

/-! ## A283210.P17684600301811509635

`A185544(2*A283212(n))`
-/

namespace A283210.P17684600301811509635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283212 n).toNat

end

end A283210.P17684600301811509635

/-! ## A283210.P7578918444334824784

`A185544(lcm(2, A283212(n)))`
-/

namespace A283210.P7578918444334824784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283212 n))

end

end A283210.P7578918444334824784

/-!
# A283211: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 595", based on the 5-celled von Neumann neighborhood.

The programs for A283211, there is no canonical definition to state claims against.
-/

/-! ## A283211.P6822072572020985047

`A007088(A283213(n))`
-/

namespace A283211.P6822072572020985047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283213 n).toNat

end

end A283211.P6822072572020985047

/-! ## A283211.P1067384761338571239

`A185544(2*A283213(n))`
-/

namespace A283211.P1067384761338571239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283213 n).toNat

end

end A283211.P1067384761338571239

/-! ## A283211.P15116459988667331053

`A283249(A058834(n)+n)`
-/

namespace A283211.P15116459988667331053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283249 (A058834 n + (n : ℤ)).toNat

end

end A283211.P15116459988667331053

/-!
# A283212: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 595", based on the 5-celled von Neumann neighborhood.

The programs for A283212, there is no canonical definition to state claims against.
-/

/-! ## A283212.P5138142559263626379

`A057889(A000265(A283213(n)))`
-/

namespace A283212.P5138142559263626379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A000265 (A283213 n).toNat).toNat

end

end A283212.P5138142559263626379

/-! ## A283212.P2427956760351155531

`A030101(A283213(n))`
-/

namespace A283212.P2427956760351155531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A283213 n).toNat

end

end A283212.P2427956760351155531

/-!
# A283213: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 595", based on the 5-celled von Neumann neighborhood.

The programs for A283213, there is no canonical definition to state claims against.
-/

/-! ## A283213.P4237135556560827299

`A282953(n)+A107279(A278981(n+2))`
-/

namespace A283213.P4237135556560827299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282953 n + A107279 (A278981 (n + 2)).toNat

end

end A283213.P4237135556560827299

/-! ## A283213.P6526135744812964329

`record[and(A318343(n+1), A329120(n))]`
-/

namespace A283213.P6526135744812964329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A318343 (n + 1)) (A329120 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283213.P6526135744812964329

/-! ## A283213.P2197301823251835867

`and(A026644(n), A052938(A149588(n)))`
-/

namespace A283213.P2197301823251835867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026644 n) (A052938 (A149588 n).toNat)

end

end A283213.P2197301823251835867

/-!
# A283214: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 597", based on the 5-celled von Neumann neighborhood.

The programs for A283214, there is no canonical definition to state claims against.
-/

/-! ## A283214.P44725135585156453

`A007088(A283216(n))`
-/

namespace A283214.P44725135585156453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283216 n).toNat

end

end A283214.P44725135585156453

/-! ## A283214.P16982765653959037940

`A007088(floor(A262862(n)/A000079(n)))`
-/

namespace A283214.P16982765653959037940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ⌊(A262862 n : ℚ) / (A000079 n : ℚ)⌋.toNat

end

end A283214.P16982765653959037940

/-! ## A283214.P16658212043084242604

`A007088(ceil(A262862(n)/A000051(n)))`
-/

namespace A283214.P16658212043084242604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ⌈(A262862 n : ℚ) / (A000051 n : ℚ)⌉.toNat

end

end A283214.P16658212043084242604

/-! ## A283214.P16129530221196658888

`A007088(and(A281216(3*n), A283389(n)))`
-/

namespace A283214.P16129530221196658888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A281216 (3 * n)) (A283389 n)).toNat

end

end A283214.P16129530221196658888

/-! ## A283214.P8644775913816036305

`A185544(2*A283216(n))`
-/

namespace A283214.P8644775913816036305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283216 n).toNat

end

end A283214.P8644775913816036305

/-!
# A283215: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 597", based on the 5-celled von Neumann neighborhood.

The programs for A283215, there is no canonical definition to state claims against.
-/

/-! ## A283215.P11209183333473271532

`A007088(A283217(n))`
-/

namespace A283215.P11209183333473271532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283217 n).toNat

end

end A283215.P11209183333473271532

/-! ## A283215.P17227204782927230879

`A007088(A262862(n)%A198633(n))`
-/

namespace A283215.P17227204782927230879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A262862 n) (A198633 n)).toNat

end

end A283215.P17227204782927230879

/-! ## A283215.P16918498319777978259

`A007088(and(A126646(n), A262862(n)))`
-/

namespace A283215.P16918498319777978259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A126646 n) (A262862 n)).toNat

end

end A283215.P16918498319777978259

/-! ## A283215.P12897495457480174421

`A007088(and(A262862(n), A281482(n)))`
-/

namespace A283215.P12897495457480174421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A262862 n) (A281482 n)).toNat

end

end A283215.P12897495457480174421

/-! ## A283215.P12258593542367301753

`A007088(and(A262862(n), A283390(n)))`
-/

namespace A283215.P12258593542367301753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A262862 n) (A283390 n)).toNat

end

end A283215.P12258593542367301753

/-!
# A283216: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 597", based on the 5-celled von Neumann neighborhood.

The programs for A283216, the canonical program `A283216.P4310701736986714256` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283216 has offset 0).

The definition of A283216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283216.P15372627866097348751

`and(3, 1-a(n-2))+4*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A283216.P15372627866097348751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.land 3 (1 - a (n - 2)) + 4 * a (n - 2)

end

end A283216.P15372627866097348751

namespace A283216

/-- `and(3, 1-a(n-2))+4*a(n-2)` -/
def P15372627866097348751.Spec : Prop :=
  ∀ n, P15372627866097348751.a n = A283216 n

end A283216

/-! ## A283216.P12072090619571021917

`or(4*a(n-2), and(3, 1-a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A283216.P12072090619571021917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lor (4 * a (n - 2)) (Int.land 3 (1 - a (n - 2)))

end

end A283216.P12072090619571021917

namespace A283216

/-- `or(4*a(n-2), and(3, 1-a(n-2)))` -/
def P12072090619571021917.Spec : Prop :=
  ∀ n, P12072090619571021917.a n = A283216 n

end A283216

/-! ## A283216.P18155853961075331093

`xor(2, or(3, a(n-2))+3*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A283216.P18155853961075331093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.xor 2 (Nat.lor 3 (a (n - 2)) + 3 * a (n - 2))

end

end A283216.P18155853961075331093

namespace A283216

/-- `xor(2, or(3, a(n-2))+3*a(n-2))` -/
def P18155853961075331093.Spec : Prop :=
  ∀ n, (P18155853961075331093.a n : ℤ) = A283216 n

end A283216

/-! ## A283216.P15599111609974011810

`xor(4*a(n-2), and(3, 1-a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A283216.P15599111609974011810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.xor (4 * a (n - 2)) (Int.land 3 (1 - a (n - 2)))

end

end A283216.P15599111609974011810

namespace A283216

/-- `xor(4*a(n-2), and(3, 1-a(n-2)))` -/
def P15599111609974011810.Spec : Prop :=
  ∀ n, P15599111609974011810.a n = A283216 n

end A283216

/-! ## A283216.P1797258419862338082

`or(3, a(n-2)+2)+3*a(n-2)-2` with `a(0)=1, a(1)=2`
-/

namespace A283216.P1797258419862338082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lor 3 (a (n - 2) + 2) + (3 * a (n - 2) - 2)

end

end A283216.P1797258419862338082

namespace A283216

/-- `or(3, a(n-2)+2)+3*a(n-2)-2` -/
def P1797258419862338082.Spec : Prop :=
  ∀ n, P1797258419862338082.a n = A283216 n

end A283216

/-! ## A283216.P4310701736986714256

`4*a(n-2)+a(n-4)-4*a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=11, a(4)=17, a(5)=46`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283216

/-- `4*a(n-2)+a(n-4)-4*a(n-6)` -/
def P4310701736986714256.Spec : Prop :=
  ∀ n, P4310701736986714256.a n = A283216 n

theorem P4310701736986714256.correct : P4310701736986714256.Spec := by
  intro n
  simp only [A283216]

end A283216

/-! ## A283216.P6730154621465744141

`floor(A262862(n)/A000079(n))`
-/

namespace A283216.P6730154621465744141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A262862 n : ℚ) / (A000079 n : ℚ)⌋

end

end A283216.P6730154621465744141

namespace A283216

/-- `floor(A262862(n)/A000079(n))` -/
def P6730154621465744141.Spec : Prop :=
  ∀ n, P6730154621465744141.a n = A283216 n

end A283216

/-! ## A283216.P8233915557638711445

`ceil(A262862(n)/A000051(n))`
-/

namespace A283216.P8233915557638711445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A262862 n : ℚ) / (A000051 n : ℚ)⌉

end

end A283216.P8233915557638711445

namespace A283216

/-- `ceil(A262862(n)/A000051(n))` -/
def P8233915557638711445.Spec : Prop :=
  ∀ n, P8233915557638711445.a n = A283216 n

end A283216

/-!
# A283217: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 597", based on the 5-celled von Neumann neighborhood.

The programs for A283217, the canonical program `A283217.P11105619808869434602` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283217 has offset 0).

The definition of A283217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283217.P11105619808869434602

`a(n-2)+16*a(n-4)-16*a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=13, a(4)=17, a(5)=29`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283217

/-- `a(n-2)+16*a(n-4)-16*a(n-6)` -/
def P11105619808869434602.Spec : Prop :=
  ∀ n, P11105619808869434602.a n = A283217 n

theorem P11105619808869434602.correct : P11105619808869434602.Spec := by
  intro n
  simp only [A283217]

end A283217

/-! ## A283217.P4752127438649309129

`A262862(n)%A198633(n)`
-/

namespace A283217.P4752127438649309129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262862 n) (A198633 n)

end

end A283217.P4752127438649309129

namespace A283217

/-- `A262862(n)%A198633(n)` -/
def P4752127438649309129.Spec : Prop :=
  ∀ n, P4752127438649309129.a n = A283217 n

end A283217

/-! ## A283217.P8012802006829272114

`and(A126646(n), A262862(n))`
-/

namespace A283217.P8012802006829272114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A262862 n)

end

end A283217.P8012802006829272114

namespace A283217

/-- `and(A126646(n), A262862(n))` -/
def P8012802006829272114.Spec : Prop :=
  ∀ n, P8012802006829272114.a n = A283217 n

end A283217

/-! ## A283217.P17577207210393360774

`and(A262862(n), A283390(n))`
-/

namespace A283217.P17577207210393360774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A262862 n) (A283390 n)

end

end A283217.P17577207210393360774

namespace A283217

/-- `and(A262862(n), A283390(n))` -/
def P17577207210393360774.Spec : Prop :=
  ∀ n, P17577207210393360774.a n = A283217 n

end A283217

/-! ## A283217.P14088955930274239923

`and(A262862(n), A283606(n))`
-/

namespace A283217.P14088955930274239923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A262862 n) (A283606 n)

end

end A283217.P14088955930274239923

namespace A283217

/-- `and(A262862(n), A283606(n))` -/
def P14088955930274239923.Spec : Prop :=
  ∀ n, P14088955930274239923.a n = A283217 n

end A283217

/-! ## A283217.P16744815381107182425

`and(A262862(n), A284353(n))`
-/

namespace A283217.P16744815381107182425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A262862 n) (A284353 n)

end

end A283217.P16744815381107182425

namespace A283217

/-- `and(A262862(n), A284353(n))` -/
def P16744815381107182425.Spec : Prop :=
  ∀ n, P16744815381107182425.a n = A283217 n

end A283217

/-! ## A283217.P1527442724300739546

`and(A262862(n), A286521(n))`
-/

namespace A283217.P1527442724300739546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A262862 n) (A286521 n)

end

end A283217.P1527442724300739546

namespace A283217

/-- `and(A262862(n), A286521(n))` -/
def P1527442724300739546.Spec : Prop :=
  ∀ n, P1527442724300739546.a n = A283217 n

end A283217

/-! ## A283217.P18044859618515769870

`and(A262862(n), A290113(n))`
-/

namespace A283217.P18044859618515769870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A262862 n) (A290113 n)

end

end A283217.P18044859618515769870

namespace A283217

/-- `and(A262862(n), A290113(n))` -/
def P18044859618515769870.Spec : Prop :=
  ∀ n, P18044859618515769870.a n = A283217 n

end A283217

/-! ## A283217.P6306917709815191970

`and(A262862(n), A290662(n))`
-/

namespace A283217.P6306917709815191970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A262862 n) (A290662 n)

end

end A283217.P6306917709815191970

namespace A283217

/-- `and(A262862(n), A290662(n))` -/
def P6306917709815191970.Spec : Prop :=
  ∀ n, P6306917709815191970.a n = A283217 n

end A283217

/-! ## A283217.P8972278571321971942

`and(A262862(n), A281482(n))`
-/

namespace A283217.P8972278571321971942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A262862 n) (A281482 n)

end

end A283217.P8972278571321971942

namespace A283217

/-- `and(A262862(n), A281482(n))` -/
def P8972278571321971942.Spec : Prop :=
  ∀ n, P8972278571321971942.a n = A283217 n

end A283217

/-!
# A283218: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 601", based on the 5-celled von Neumann neighborhood.

The programs for A283218, there is no canonical definition to state claims against.
-/

/-! ## A283218.P8312618900360145386

`Δ[A014824(n)]%A281095(A028310(n))`
-/

namespace A283218.P8312618900360145386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A281095 (A028310 n).toNat)

end

end A283218.P8312618900360145386

/-! ## A283218.P1853525306072341781

`A000042(n+1)%A281095(A028310(n))`
-/

namespace A283218.P1853525306072341781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000042 (n + 1)) (A281095 (A028310 n).toNat)

end

end A283218.P1853525306072341781

/-! ## A283218.P14433439366647424680

`A282218(n)+A283136(n)-A281095(n)`
-/

namespace A283218.P14433439366647424680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282218 n + (A283136 n - A281095 n)

end

end A283218.P14433439366647424680

/-! ## A283218.P8603834328789464611

`A007088(A283220(n))`
-/

namespace A283218.P8603834328789464611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283220 n).toNat

end

end A283218.P8603834328789464611

/-! ## A283218.P3428062818796754781

`A007088(A095121(n)+1-A281892(n))`
-/

namespace A283218.P3428062818796754781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A281892 n)).toNat

end

end A283218.P3428062818796754781

/-!
# A283219: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 601", based on the 5-celled von Neumann neighborhood.

The programs for A283219, there is no canonical definition to state claims against.
-/

/-! ## A283219.P9440519789435767875

`A281095(n)+A283218(n)-A281096(n)`
-/

namespace A283219.P9440519789435767875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281095 n + (A283218 n - A281096 n)

end

end A283219.P9440519789435767875

/-! ## A283219.P14895042255210215763

`A282218(n)+A283136(n)-A281096(n)`
-/

namespace A283219.P14895042255210215763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282218 n + (A283136 n - A281096 n)

end

end A283219.P14895042255210215763

/-! ## A283219.P7116238817891309606

`A000042(n+1)-A178334(n)*A281096(n)`
-/

namespace A283219.P7116238817891309606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A178334 n * A281096 n

end

end A283219.P7116238817891309606

/-! ## A283219.P10982353648905383961

`A000042(A000027(n+1))-A281096(n)-A178334(n)+1`
-/

namespace A283219.P10982353648905383961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A000027 (n + 1)).toNat - A281096 n - A178334 n + 1

end

end A283219.P10982353648905383961

/-!
# A283220: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 601", based on the 5-celled von Neumann neighborhood.

The programs for A283220, there is no canonical definition to state claims against.
-/

/-! ## A283220.P16310787426849261272

`A095121(n)+1-A281892(n)`
-/

namespace A283220.P16310787426849261272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A281892 n)

end

end A283220.P16310787426849261272

/-! ## A283220.P7124441562078773436

`A126646(n)%A281892(A028310(n))`
-/

namespace A283220.P7124441562078773436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126646 n) (A281892 (A028310 n).toNat)

end

end A283220.P7124441562078773436

/-! ## A283220.P1713678993823563029

`∑[A000079(n)]%A281892(A028310(n))`
-/

namespace A283220.P1713678993823563029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A281892 (A028310 n).toNat)

end

end A283220.P1713678993823563029

/-! ## A283220.P17444982666295782764

`A000225(n+1)%A281892(A028310(n))`
-/

namespace A283220.P17444982666295782764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 (n + 1)) (A281892 (A028310 n).toNat)

end

end A283220.P17444982666295782764

/-! ## A283220.P11038382618505950029

`A281893(n)+A283221(n)-A281892(n)`
-/

namespace A283220.P11038382618505950029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281893 n + (A283221 n - A281892 n)

end

end A283220.P11038382618505950029

/-!
# A283221: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 601", based on the 5-celled von Neumann neighborhood.

The programs for A283221, there is no canonical definition to state claims against.
-/

/-! ## A283221.P4571655695614605797

`and(-A281893(n), A095121(n))`
-/

namespace A283221.P4571655695614605797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A281893 n) (A095121 n)

end

end A283221.P4571655695614605797

/-! ## A283221.P3817182399299718392

`A288699(n)+A289098(n)-A281893(n)`
-/

namespace A283221.P3817182399299718392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288699 n + (A289098 n - A281893 n)

end

end A283221.P3817182399299718392

/-! ## A283221.P6243780220363377555

`or(A000225(n), A052531(n))-A281893(n)`
-/

namespace A283221.P6243780220363377555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000225 n) (A052531 n) - A281893 n

end

end A283221.P6243780220363377555

/-! ## A283221.P5789590835536007320

`A126646(n)-A281893(n)%A051049(n+1)`
-/

namespace A283221.P5789590835536007320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A281893 n) (A051049 (n + 1))

end

end A283221.P5789590835536007320

/-! ## A283221.P3294993584100855552

`A126646(n)-A281893(n)%A281095(n)`
-/

namespace A283221.P3294993584100855552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A281893 n) (A281095 n)

end

end A283221.P3294993584100855552

/-!
# A283222: Integer area of integer-sided triangle such that the sides are of the form p, p+2, 2(p-1), where p, p+2 and (p-1)/2 are prime numbers.

The programs for A283222, there is no canonical definition to state claims against.
-/

/-! ## A283222.P9958596390730587802

`A257049(eq[A065626(n), A318691(n+1)])`
-/

namespace A283222.P9958596390730587802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065626 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257049 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A283222.P9958596390730587802

/-!
# A283223: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 603", based on the 5-celled von Neumann neighborhood.

The programs for A283223, there is no canonical definition to state claims against.
-/

/-! ## A283223.P8642272600672890756

`A007088(A283250(n))`
-/

namespace A283223.P8642272600672890756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283250 n).toNat

end

end A283223.P8642272600672890756

/-! ## A283223.P16803048396052185141

`A215256(or(1, A283250(n)))`
-/

namespace A283223.P16803048396052185141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215256 (Int.lor 1 (A283250 n)).toNat

end

end A283223.P16803048396052185141

/-! ## A283223.P13809840144098716467

`A305989(or(1, A283250(n)))`
-/

namespace A283223.P13809840144098716467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (Int.lor 1 (A283250 n)).toNat

end

end A283223.P13809840144098716467

/-! ## A283223.P12592254273168379677

`A215256(and(-3, A283250(n)))`
-/

namespace A283223.P12592254273168379677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215256 (Int.land (-3) (A283250 n)).toNat

end

end A283223.P12592254273168379677

/-! ## A283223.P8803748143471996641

`A215256(ceil(A283251(n)/2))`
-/

namespace A283223.P8803748143471996641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215256 ⌈(A283251 n : ℚ) / 2⌉.toNat

end

end A283223.P8803748143471996641

/-!
# A283225: Primes prime(k) such that prime(k)^2 mod prime(k+2) is different from prime(k+2)^2 mod prime(k).

The programs for A283225, there is no canonical definition to state claims against.
-/

/-! ## A283225.P1134271907864070644

`lt[A351078(A078806(3*n+4)), A055672(n)]`
-/

namespace A283225.P1134271907864070644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 (A078806 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A283225.P1134271907864070644

/-! ## A283225.P7457488409585510893

`A000040(lt[A084237(n), A000583(n)])`
-/

namespace A283225.P7457488409585510893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084237 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A283225.P7457488409585510893

/-! ## A283225.P6987222693191356433

`A000040(lt[A084237(n), A001599(n+1)])`
-/

namespace A283225.P6987222693191356433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084237 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A283225.P6987222693191356433

/-! ## A283225.P7328902295576966488

`A000040(lt[A084237(n), A033631(n+1)])`
-/

namespace A283225.P7328902295576966488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084237 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A283225.P7328902295576966488

/-! ## A283225.P16762900421054328533

`A000040(lt[A084237(n), A129212(n+1)])`
-/

namespace A283225.P16762900421054328533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084237 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A283225.P16762900421054328533

/-!
# A283226: Number of n X 2 0..1 arrays with no 1 equal to more than two of its horizontal and vertical neighbors, with the exception of exactly two elements.

The programs for A283226, there is no canonical definition to state claims against.
-/

/-! ## A283226.P10100317349419970775

`A283232(∑[n+1]+2)`
-/

namespace A283226.P10100317349419970775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283232 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A283226.P10100317349419970775

/-! ## A283226.P5533578867995950968

`A283784(∑[n+2])`
-/

namespace A283226.P5533578867995950968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283226.P5533578867995950968

/-! ## A283226.P15619341214278202809

`A057427(n)*A283784(A000096(n+1))`
-/

namespace A283226.P15619341214278202809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A283784 (A000096 (n + 1)).toNat

end

end A283226.P15619341214278202809

/-! ## A283226.P12429355122213913980

`A283784(A000096(n+1))%A282305(n)`
-/

namespace A283226.P12429355122213913980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283784 (A000096 (n + 1)).toNat) (A282305 n)

end

end A283226.P12429355122213913980

/-! ## A283226.P9387261863456494863

`A153683(n+1)*A283784(A000096(n+1))`
-/

namespace A283226.P9387261863456494863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153683 (n + 1) * A283784 (A000096 (n + 1)).toNat

end

end A283226.P9387261863456494863

/-!
# A283227: Number of n X 3 0..1 arrays with no 1 equal to more than two of its horizontal and vertical neighbors, with the exception of exactly two elements.

The programs for A283227, there is no canonical definition to state claims against.
-/

/-! ## A283227.P444230891499326604

`A283232(∑[n+2]+4)`
-/

namespace A283227.P444230891499326604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283232 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A283227.P444230891499326604

/-! ## A283227.P17362223179675586310

`A283232(A167614(n+1))+A025443(n)`
-/

namespace A283227.P17362223179675586310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283232 (A167614 (n + 1)).toNat + A025443 n

end

end A283227.P17362223179675586310

/-! ## A283227.P3905477394385516499

`A054977(n)*A283232(A167614(n+1))`
-/

namespace A283227.P3905477394385516499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A283232 (A167614 (n + 1)).toNat

end

end A283227.P3905477394385516499

/-! ## A283227.P6157872966426345405

`A057427(n)*A283232(A167614(n+1))`
-/

namespace A283227.P6157872966426345405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A283232 (A167614 (n + 1)).toNat

end

end A283227.P6157872966426345405

/-! ## A283227.P1479421392378170250

`A283232(A167614(n+1))%A016929(n)`
-/

namespace A283227.P1479421392378170250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283232 (A167614 (n + 1)).toNat) (A016929 n)

end

end A283227.P1479421392378170250

/-!
# A283228: Number of nX4 0..1 arrays with no 1 equal to more than two of its horizontal and vertical neighbors, with the exception of exactly two elements.

The programs for A283228, there is no canonical definition to state claims against.
-/

/-! ## A283228.P13913874012634213747

`A283232(A374004(n+1))`
-/

namespace A283228.P13913874012634213747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283232 (A374004 (n + 1)).toNat

end

end A283228.P13913874012634213747

/-! ## A283228.P8304481806117455799

`A283232(A052905(n)+9)`
-/

namespace A283228.P8304481806117455799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283232 (A052905 n + 9).toNat

end

end A283228.P8304481806117455799

/-! ## A283228.P1175662475026090101

`A283232(A167614(n+2)+1)`
-/

namespace A283228.P1175662475026090101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283232 (A167614 (n + 2) + 1).toNat

end

end A283228.P1175662475026090101

/-! ## A283228.P10936372792339717893

`A283232(eq[5, A131818(n+1)])`
-/

namespace A283228.P10936372792339717893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283232 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283228.P10936372792339717893

/-! ## A283228.P16866454064660411874

`A283232(Δ[A264443(n)-n²])`
-/

namespace A283228.P16866454064660411874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283232 (f1 (n + 1) - f1 n).toNat

end

end A283228.P16866454064660411874

/-!
# A283229: Number of n X 5 0..1 arrays with no 1 equal to more than two of its horizontal and vertical neighbors, with the exception of exactly two elements.

The programs for A283229, there is no canonical definition to state claims against.
-/

/-! ## A283229.P18283089641362900263

`A283232(A374005(n+1))`
-/

namespace A283229.P18283089641362900263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283232 (A374005 (n + 1)).toNat

end

end A283229.P18283089641362900263

/-! ## A283229.P4589669595982204921

`A283232(A167499(n+3))`
-/

namespace A283229.P4589669595982204921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283232 (A167499 (n + 3)).toNat

end

end A283229.P4589669595982204921

/-! ## A283229.P17707125776598827582

`A283232(A141214(n+1)+8)`
-/

namespace A283229.P17707125776598827582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283232 (A141214 (n + 1) + 8).toNat

end

end A283229.P17707125776598827582

/-! ## A283229.P2399821763893837848

`A283232(eq[6, A131818(n+1)])`
-/

namespace A283229.P2399821763893837848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283232 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283229.P2399821763893837848

/-! ## A283229.P12096862040752195483

`A283232(Δ[A264443(n)])`
-/

namespace A283229.P12096862040752195483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283232 (f1 (n + 1) - f1 n).toNat

end

end A283229.P12096862040752195483

/-!
# A283230: Number of nX6 0..1 arrays with no 1 equal to more than two of its horizontal and vertical neighbors, with the exception of exactly two elements.

The programs for A283230, there is no canonical definition to state claims against.
-/

/-! ## A283230.P3323426962516780518

`A283232(A374007(n+1))`
-/

namespace A283230.P3323426962516780518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283232 (A374007 (n + 1)).toNat

end

end A283230.P3323426962516780518

/-! ## A283230.P5417429234074706967

`A283232(A056115(n)+21)`
-/

namespace A283230.P5417429234074706967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283232 (A056115 n + 21).toNat

end

end A283230.P5417429234074706967

/-! ## A283230.P14595564156673359540

`A283232(eq[7, A131818(n+1)])`
-/

namespace A283230.P14595564156673359540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283232 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283230.P14595564156673359540

/-! ## A283230.P17929314831026999801

`A283232(A000217(n+7)-7-2*n)`
-/

namespace A283230.P17929314831026999801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283232 (A000217 (n + 7) - 7 - (2 * n : ℤ)).toNat

end

end A283230.P17929314831026999801

/-! ## A283230.P5033333250478132502

`A283232(A052905(n+3))`
-/

namespace A283230.P5033333250478132502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283232 (A052905 (n + 3)).toNat

end

end A283230.P5033333250478132502

/-!
# A283231: Number of nX7 0..1 arrays with no 1 equal to more than two of its horizontal and vertical neighbors, with the exception of exactly two elements.

The programs for A283231, there is no canonical definition to state claims against.
-/

/-! ## A283231.P16591074481102857366

`A283232(A374008(n+1))`
-/

namespace A283231.P16591074481102857366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283232 (A374008 (n + 1)).toNat

end

end A283231.P16591074481102857366

/-! ## A283231.P10869941315733889721

`A283232(eq[8, A131818(n+1)])`
-/

namespace A283231.P10869941315733889721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283232 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283231.P10869941315733889721

/-! ## A283231.P15612577496239389704

`A283232(A055999(n+4))`
-/

namespace A283231.P15612577496239389704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283232 (A055999 (n + 4)).toNat

end

end A283231.P15612577496239389704

/-! ## A283231.P7083386660654327881

`A283232(eq[4, A219347(n)])`
-/

namespace A283231.P7083386660654327881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283232 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283231.P7083386660654327881

/-! ## A283231.P11855653596287305269

`A283232(eq[6, A193592(n)])`
-/

namespace A283231.P11855653596287305269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283232 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283231.P11855653596287305269

/-!
# A283232: T(n,k)=Number of nXk 0..1 arrays with no 1 equal to more than two of its horizontal and vertical neighbors, with the exception of exactly two elements.

The programs for A283232, there is no canonical definition to state claims against.
-/

/-! ## A283232.P11093358218913732471

`A374767(A283522(n+1)+1)`
-/

namespace A283232.P11093358218913732471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374767 (A283522 (n + 1) + 1).toNat

end

end A283232.P11093358218913732471

/-! ## A283232.P3459099644875694865

`A094718(A278390(n+2))`
-/

namespace A283232.P3459099644875694865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094718 (A278390 (n + 2)).toNat

end

end A283232.P3459099644875694865

/-! ## A283232.P16839471138939351377

`floor(A002266(A244108(n))/13)`
-/

namespace A283232.P16839471138939351377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002266 (A244108 n).toNat : ℚ) / 13⌋

end

end A283232.P16839471138939351377

/-! ## A283232.P1960425780184322393

`A281936(n+1)+A185284(3*n)`
-/

namespace A283232.P1960425780184322393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281936 (n + 1) + A185284 (3 * n)

end

end A283232.P1960425780184322393

/-!
# A283233: 2*A000201.

The programs for A283233, the canonical program `A283233.P10814312052704964947` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283233 has offset 1).

The definition of A283233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283233.P760766721115170766

`2*floor(ϕ*(n+1))`
-/

namespace A283233.P760766721115170766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

end

end A283233.P760766721115170766

namespace A283233

/-- `2*floor(ϕ*(n+1))` -/
def P760766721115170766.Spec : Prop :=
  ∀ n, P760766721115170766.a n = A283233 (n + 1)

end A283233

/-! ## A283233.P13487906622793980268

`abs(2*∑[Δ[floor(ϕ*n)]%3])`
-/

namespace A283233.P13487906622793980268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A283233.P13487906622793980268

namespace A283233

/-- `abs(2*∑[Δ[floor(ϕ*n)]%3])` -/
def P13487906622793980268.Spec : Prop :=
  ∀ n, P13487906622793980268.a n = A283233 (n + 1)

end A283233

/-! ## A283233.P16817181631612986344

`abs(2*(ceil(ϕ*C(n+1, n))-1))`
-/

namespace A283233.P16817181631612986344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (⌈Real.goldenRatio * (Nat.choose (n + 1) n : ℝ)⌉ - 1)|

end

end A283233.P16817181631612986344

namespace A283233

/-- `abs(2*(ceil(ϕ*C(n+1, n))-1))` -/
def P16817181631612986344.Spec : Prop :=
  ∀ n, P16817181631612986344.a n = A283233 (n + 1)

end A283233

/-! ## A283233.P618629836995212372

`abs(2*ceil(ϕ*(n+1)-gcd(n, n+1)))`
-/

namespace A283233.P618629836995212372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * ⌈Real.goldenRatio * (n + 1 : ℝ) - (Nat.gcd n (n + 1) : ℝ)⌉|

end

end A283233.P618629836995212372

namespace A283233

/-- `abs(2*ceil(ϕ*(n+1)-gcd(n, n+1)))` -/
def P618629836995212372.Spec : Prop :=
  ∀ n, P618629836995212372.a n = A283233 (n + 1)

end A283233

/-! ## A283233.P10806082231336264049

`ceil(C(n+1, n)/ϕ+n)+ceil(ϕ*C(n+1, n))-1`
-/

namespace A283233.P10806082231336264049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 1) n : ℝ) / Real.goldenRatio + (n : ℝ)⌉ + (⌈Real.goldenRatio * (Nat.choose (n + 1) n : ℝ)⌉ - 1)

end

end A283233.P10806082231336264049

namespace A283233

/-- `ceil(C(n+1, n)/ϕ+n)+ceil(ϕ*C(n+1, n))-1` -/
def P10806082231336264049.Spec : Prop :=
  ∀ n, P10806082231336264049.a n = A283233 (n + 1)

end A283233

/-! ## A283233.P10814312052704964947

`∑[2*A001468(n)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A283233

/-- `∑[2*A001468(n)]` -/
def P10814312052704964947.Spec : Prop :=
  ∀ n, P10814312052704964947.a n = A283233 (n + 1)

theorem P10814312052704964947.correct : P10814312052704964947.Spec := by
  intro n
  simp only [A283233, Nat.add_sub_cancel]

end A283233

/-! ## A283233.P11161922717091389122

`Δ[2*A054347(n)]`
-/

namespace A283233.P11161922717091389122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283233.P11161922717091389122

namespace A283233

/-- `Δ[2*A054347(n)]` -/
def P11161922717091389122.Spec : Prop :=
  ∀ n, P11161922717091389122.a n = A283233 (n + 1)

end A283233

/-! ## A283233.P12003779666865655916

`A075317(n+1)+1`
-/

namespace A283233.P12003779666865655916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075317 (n + 1) + 1

end

end A283233.P12003779666865655916

namespace A283233

/-- `A075317(n+1)+1` -/
def P12003779666865655916.Spec : Prop :=
  ∀ n, P12003779666865655916.a n = A283233 (n + 1)

end A283233

/-! ## A283233.P17239930264254147838

`A035336(n+1)-n`
-/

namespace A283233.P17239930264254147838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (n + 1) - (n : ℤ)

end

end A283233.P17239930264254147838

namespace A283233

/-- `A035336(n+1)-n` -/
def P17239930264254147838.Spec : Prop :=
  ∀ n, P17239930264254147838.a n = A283233 (n + 1)

end A283233

/-! ## A283233.P12124608370780899807

`∑[2*Δ[A026351(n)]]`
-/

namespace A283233.P12124608370780899807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283233.P12124608370780899807

namespace A283233

/-- `∑[2*Δ[A026351(n)]]` -/
def P12124608370780899807.Spec : Prop :=
  ∀ n, P12124608370780899807.a n = A283233 (n + 1)

end A283233

/-! ## A283233.P3014288322334730112

`∑[2*Δ[A066096(n)]]`
-/

namespace A283233.P3014288322334730112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283233.P3014288322334730112

namespace A283233

/-- `∑[2*Δ[A066096(n)]]` -/
def P3014288322334730112.Spec : Prop :=
  ∀ n, P3014288322334730112.a n = A283233 (n + 1)

end A283233

/-! ## A283233.P2688372217379318463

`∑[2*(A282162(n)-1)]`
-/

namespace A283233.P2688372217379318463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A282162 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283233.P2688372217379318463

namespace A283233

/-- `∑[2*(A282162(n)-1)]` -/
def P2688372217379318463.Spec : Prop :=
  ∀ n, P2688372217379318463.a n = A283233 (n + 1)

theorem P2688372217379318463.correct : P2688372217379318463.Spec := by
  intro n
  simp only [A283233, Nat.add_sub_cancel, A283233.P2688372217379318463.f1, A283233.P2688372217379318463.a, A283233.P10814312052704964947.f1, A283233.P10814312052704964947.a, A001468, A001468.P12360075344960480253.a, A282162, A282162.P18356065537090708922.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A283233

/-! ## A283233.P7424359030089376278

`A050140(n+1)+1+n`
-/

namespace A283233.P7424359030089376278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050140 (n + 1) + 1 + (n : ℤ)

end

end A283233.P7424359030089376278

namespace A283233

/-- `A050140(n+1)+1+n` -/
def P7424359030089376278.Spec : Prop :=
  ∀ n, P7424359030089376278.a n = A283233 (n + 1)

end A283233

/-! ## A283233.P16725985451236703639

`A003623(n+1)-(n+1)`
-/

namespace A283233.P16725985451236703639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1) - (n + 1 : ℤ)

end

end A283233.P16725985451236703639

namespace A283233

/-- `A003623(n+1)-(n+1)` -/
def P16725985451236703639.Spec : Prop :=
  ∀ n, P16725985451236703639.a n = A283233 (n + 1)

end A283233

/-! ## A283233.P9535808774870778650

`A134859(n+1)+1-n`
-/

namespace A283233.P9535808774870778650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134859 (n + 1) + (1 - (n : ℤ))

end

end A283233.P9535808774870778650

namespace A283233

/-- `A134859(n+1)+1-n` -/
def P9535808774870778650.Spec : Prop :=
  ∀ n, P9535808774870778650.a n = A283233 (n + 1)

end A283233

/-! ## A283233.P3359011973563390049

`A284625(n+1)-1+n`
-/

namespace A283233.P3359011973563390049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284625 (n + 1) - 1 + (n : ℤ)

end

end A283233.P3359011973563390049

namespace A283233

/-- `A284625(n+1)-1+n` -/
def P3359011973563390049.Spec : Prop :=
  ∀ n, P3359011973563390049.a n = A283233 (n + 1)

end A283233

/-! ## A283233.P7590847650578547781

`A089910(n+1)-(n+2)`
-/

namespace A283233.P7590847650578547781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089910 (n + 1) - (n + 2 : ℤ)

end

end A283233.P7590847650578547781

namespace A283233

/-- `A089910(n+1)-(n+2)` -/
def P7590847650578547781.Spec : Prop :=
  ∀ n, P7590847650578547781.a n = A283233 (n + 1)

end A283233

/-!
# A283234: 2*A001950.

The programs for A283234, the canonical program `A283234.P14512764588910667133` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283234 has offset 1).

The definition of A283234 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283234.P10568737058114211276

`2*comp[floor(ϕ*n)]`
-/

namespace A283234.P10568737058114211276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A283234.P10568737058114211276

namespace A283234

/-- `2*comp[floor(ϕ*n)]` -/
def P10568737058114211276.Spec : Prop :=
  ∀ n, (P10568737058114211276.a n : ℤ) = A283234 (n + 1)

end A283234

/-! ## A283234.P17861044733679352860

`∑[C(4, Δ[floor(ϕ*n)])]`
-/

namespace A283234.P17861044733679352860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 4 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283234.P17861044733679352860

namespace A283234

/-- `∑[C(4, Δ[floor(ϕ*n)])]` -/
def P17861044733679352860.Spec : Prop :=
  ∀ n, (P17861044733679352860.a n : ℤ) = A283234 (n + 1)

end A283234

/-! ## A283234.P12947273317946958741

`lcm(2, 2*floor((n+1)*ϕ²))`
-/

namespace A283234.P12947273317946958741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (2 * ⌊(n + 1 : ℝ) * Real.goldenRatio ^ 2⌋)

end

end A283234.P12947273317946958741

namespace A283234

/-- `lcm(2, 2*floor((n+1)*ϕ²))` -/
def P12947273317946958741.Spec : Prop :=
  ∀ n, (P12947273317946958741.a n : ℤ) = A283234 (n + 1)

end A283234

/-! ## A283234.P1391109109270969823

`round(sqrt(4*floor((and(1, 2*n+1)+n)*ϕ²)²))`
-/

namespace A283234.P1391109109270969823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (4 * ⌊(Nat.land 1 (2 * n + 1) + n : ℝ) * Real.goldenRatio ^ 2⌋ ^ 2 : ℝ))

end

end A283234.P1391109109270969823

namespace A283234

/-- `round(sqrt(4*floor((and(1, 2*n+1)+n)*ϕ²)²))` -/
def P1391109109270969823.Spec : Prop :=
  ∀ n, P1391109109270969823.a n = A283234 (n + 1)

end A283234

/-! ## A283234.P5573874752377129882

`floor(record[(ϕ*(n-1))²]/(n+1))+floor(ϕ²*(n+1))`
-/

namespace A283234.P5573874752377129882
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.goldenRatio * ((n : ℤ) - 1 : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / (n + 1 : ℝ)⌋ + ⌊Real.goldenRatio ^ 2 * (n + 1 : ℝ)⌋

end

end A283234.P5573874752377129882

namespace A283234

/-- `floor(record[(ϕ*(n-1))²]/(n+1))+floor(ϕ²*(n+1))` -/
def P5573874752377129882.Spec : Prop :=
  ∀ n, P5573874752377129882.a n = A283234 (n + 1)

end A283234

/-! ## A283234.P4239934999014742954

`ceil(xor(1, 2*n)+(n+1)/ϕ)+floor(ϕ²*C(n+1, n))`
-/

namespace A283234.P4239934999014742954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (2 * n) : ℝ) + (n + 1 : ℝ) / Real.goldenRatio⌉ + ⌊Real.goldenRatio ^ 2 * (Nat.choose (n + 1) n : ℝ)⌋

end

end A283234.P4239934999014742954

namespace A283234

/-- `ceil(xor(1, 2*n)+(n+1)/ϕ)+floor(ϕ²*C(n+1, n))` -/
def P4239934999014742954.Spec : Prop :=
  ∀ n, P4239934999014742954.a n = A283234 (n + 1)

end A283234

/-! ## A283234.P14512764588910667133

`∑[2*A282162(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A283234

/-- `∑[2*A282162(n)]` -/
def P14512764588910667133.Spec : Prop :=
  ∀ n, P14512764588910667133.a n = A283234 (n + 1)

theorem P14512764588910667133.correct : P14512764588910667133.Spec := by
  intro n
  simp only [A283234, Nat.add_sub_cancel]

end A283234

/-! ## A283234.P6029755400962119069

`A075318(n+1)+1`
-/

namespace A283234.P6029755400962119069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075318 (n + 1) + 1

end

end A283234.P6029755400962119069

namespace A283234

/-- `A075318(n+1)+1` -/
def P6029755400962119069.Spec : Prop :=
  ∀ n, P6029755400962119069.a n = A283234 (n + 1)

end A283234

/-! ## A283234.P13819745437986442313

`A089910(n+1)+n`
-/

namespace A283234.P13819745437986442313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089910 (n + 1) + (n : ℤ)

end

end A283234.P13819745437986442313

namespace A283234

/-- `A089910(n+1)+n` -/
def P13819745437986442313.Spec : Prop :=
  ∀ n, P13819745437986442313.a n = A283234 (n + 1)

end A283234

/-! ## A283234.P9042326014072760493

`∑[2*(A001468(n)+1)]`
-/

namespace A283234.P9042326014072760493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001468 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283234.P9042326014072760493

namespace A283234

/-- `∑[2*(A001468(n)+1)]` -/
def P9042326014072760493.Spec : Prop :=
  ∀ n, P9042326014072760493.a n = A283234 (n + 1)

theorem P9042326014072760493.correct : P9042326014072760493.Spec := by
  intro n
  simp only [A283234, Nat.add_sub_cancel, A283234.P9042326014072760493.f1, A283234.P9042326014072760493.a, A283234.P14512764588910667133.f1, A283234.P14512764588910667133.a, A001468, A001468.P12360075344960480253.a, A282162, A282162.P18356065537090708922.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A283234

/-! ## A283234.P17561345319296317628

`∑[2*(A096270(n)+2)]`
-/

namespace A283234.P17561345319296317628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A096270 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283234.P17561345319296317628

namespace A283234

/-- `∑[2*(A096270(n)+2)]` -/
def P17561345319296317628.Spec : Prop :=
  ∀ n, P17561345319296317628.a n = A283234 (n + 1)

end A283234

/-! ## A283234.P17819433474772462866

`n+1+A003623(n+1)`
-/

namespace A283234.P17819433474772462866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A003623 (n + 1)

end

end A283234.P17819433474772462866

namespace A283234

/-- `n+1+A003623(n+1)` -/
def P17819433474772462866.Spec : Prop :=
  ∀ n, P17819433474772462866.a n = A283234 (n + 1)

end A283234

/-! ## A283234.P5002105949909890612

`A035336(n+1)+2+n`
-/

namespace A283234.P5002105949909890612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (n + 1) + 2 + (n : ℤ)

end

end A283234.P5002105949909890612

namespace A283234

/-- `A035336(n+1)+2+n` -/
def P5002105949909890612.Spec : Prop :=
  ∀ n, P5002105949909890612.a n = A283234 (n + 1)

end A283234

/-! ## A283234.P10216090161893552174

`A101868(n+1)-1+n`
-/

namespace A283234.P10216090161893552174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101868 (n + 1) - 1 + (n : ℤ)

end

end A283234.P10216090161893552174

namespace A283234

/-- `A101868(n+1)-1+n` -/
def P10216090161893552174.Spec : Prop :=
  ∀ n, P10216090161893552174.a n = A283234 (n + 1)

end A283234

/-! ## A283234.P15327282195397159054

`A134859(n+1)+n+3`
-/

namespace A283234.P15327282195397159054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134859 (n + 1) + (n + 3 : ℤ)

end

end A283234.P15327282195397159054

namespace A283234

/-- `A134859(n+1)+n+3` -/
def P15327282195397159054.Spec : Prop :=
  ∀ n, P15327282195397159054.a n = A283234 (n + 1)

end A283234

/-! ## A283234.P11731477781354905513

`∑[A018252(Δ[floor(n*ϕ²)])]`
-/

namespace A283234.P11731477781354905513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283234.P11731477781354905513

namespace A283234

/-- `∑[A018252(Δ[floor(n*ϕ²)])]` -/
def P11731477781354905513.Spec : Prop :=
  ∀ n, P11731477781354905513.a n = A283234 (n + 1)

end A283234

/-! ## A283234.P2998589348650578878

`A283233(n+1)+2*(n+1)`
-/

namespace A283234.P2998589348650578878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283233 (n + 1) + (2 * (n + 1) : ℤ)

end

end A283234.P2998589348650578878

namespace A283234

/-- `A283233(n+1)+2*(n+1)` -/
def P2998589348650578878.Spec : Prop :=
  ∀ n, P2998589348650578878.a n = A283234 (n + 1)

end A283234

/-!
# A283235: Triangle read by rows: n-th row gives the numbers of primes p such that p*prime(k) <= prime(n)^2, k=1..n.

The programs for A283235, there is no canonical definition to state claims against.
-/

/-! ## A283235.P11665786436812519465

`A130321(n)+A001221(A041023(n))`
-/

namespace A283235.P11665786436812519465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n + A001221 (A041023 n).toNat

end

end A283235.P11665786436812519465

/-!
# A283237: a(n) = sigma_2(3*n).

The programs for A283237, the canonical program `A283237.P17759055040848509895` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283237 has offset 1).

The definition of A283237 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A283237.P17759055040848509895

`A001157(3*(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A283237

/-- `A001157(3*(n+1))` -/
def P17759055040848509895.Spec : Prop :=
  ∀ n, P17759055040848509895.a n = A283237 (n + 1)

theorem P17759055040848509895.correct : P17759055040848509895.Spec := by
  intro n
  simp only [A283237, Nat.add_sub_cancel]

end A283237

/-! ## A283237.P2099528409378085218

`∑{d}[3*(n+1), #²]`
-/

namespace A283237.P2099528409378085218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ 2

end

end A283237.P2099528409378085218

namespace A283237

/-- `∑{d}[3*(n+1), #²]` -/
def P2099528409378085218.Spec : Prop :=
  ∀ n, (P2099528409378085218.a n : ℤ) = A283237 (n + 1)

end A283237

/-! ## A283237.P11552061105794449713

`sqrt(A356533(3*(n+1)))`
-/

namespace A283237.P11552061105794449713
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A356533 (3 * (n + 1)) : ℝ)

end

end A283237.P11552061105794449713

namespace A283237

/-- `sqrt(A356533(3*(n+1)))` -/
def P11552061105794449713.Spec : Prop :=
  ∀ n, P11552061105794449713.a n = (A283237 (n + 1) : ℝ)

end A283237

/-! ## A283237.P14903020331147963577

`A053807(3*n+4)+1`
-/

namespace A283237.P14903020331147963577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053807 (3 * n + 4) + 1

end

end A283237.P14903020331147963577

namespace A283237

/-- `A053807(3*n+4)+1` -/
def P14903020331147963577.Spec : Prop :=
  ∀ n, P14903020331147963577.a n = A283237 (n + 1)

end A283237

/-! ## A283237.P9007274049864112975

`∑{d}[3*(n+1), A001105(#)]/2`
-/

namespace A283237.P9007274049864112975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A001105 d : ℤ) : ℚ) / 2

end

end A283237.P9007274049864112975

namespace A283237

/-- `∑{d}[3*(n+1), A001105(#)]/2` -/
def P9007274049864112975.Spec : Prop :=
  ∀ n, P9007274049864112975.a n = (A283237 (n + 1) : ℚ)

end A283237

/-! ## A283237.P17718765073889834371

`A001157(A008585(n+1))%A060232(n+1)`
-/

namespace A283237.P17718765073889834371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001157 (A008585 (n + 1)).toNat) (A060232 (n + 1))

end

end A283237.P17718765073889834371

namespace A283237

/-- `A001157(A008585(n+1))%A060232(n+1)` -/
def P17718765073889834371.Spec : Prop :=
  ∀ n, P17718765073889834371.a n = A283237 (n + 1)

end A283237

/-! ## A283237.P2852975999664237157

`and(-A110873(n+1)%2, A001157(A008585(n+1)))`
-/

namespace A283237.P2852975999664237157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.tmod (-A110873 (n + 1)) 2) (A001157 (A008585 (n + 1)).toNat)

end

end A283237.P2852975999664237157

namespace A283237

/-- `and(-A110873(n+1)%2, A001157(A008585(n+1)))` -/
def P2852975999664237157.Spec : Prop :=
  ∀ n, P2852975999664237157.a n = A283237 (n + 1)

end A283237

/-!
# A283238: Expansion of exp( Sum_{n>=1} sigma_2(3*n)*x^n/n ) in powers of x.

The programs for A283238, there is no canonical definition to state claims against.
-/

/-! ## A283238.P12799174182715835912

`A313761(A137636(n)-A073154(n))`
-/

namespace A283238.P12799174182715835912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313761 (A137636 n - A073154 n).toNat

end

end A283238.P12799174182715835912

/-!
# A283245: Square root of the smallest square referenced in A280296 (Squarefree numbers n such that 2^n - 1 is divisible by a square > 1).

The programs for A283245, there is no canonical definition to state claims against.
-/

/-! ## A283245.P10449009508576177207

`sqrt(A283092(n+1))`
-/

namespace A283245.P10449009508576177207
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A283092 (n + 1) : ℝ)

end

end A283245.P10449009508576177207

/-! ## A283245.P16675615227019231026

`A000196(A283092(n+1)+1)`
-/

namespace A283245.P16675615227019231026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A283092 (n + 1) + 1).toNat

end

end A283245.P16675615227019231026

/-! ## A283245.P7602098220906063358

`A320471(A283092(n+1)+1)`
-/

namespace A283245.P7602098220906063358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320471 (A283092 (n + 1) + 1).toNat

end

end A283245.P7602098220906063358

/-! ## A283245.P18116823529215050477

`A002260(2*A283092(n+1))`
-/

namespace A283245.P18116823529215050477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (2 * A283092 (n + 1)).toNat

end

end A283245.P18116823529215050477

/-! ## A283245.P16933236034631131313

`A002262(2*A283092(n+1))`
-/

namespace A283245.P16933236034631131313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * A283092 (n + 1)).toNat

end

end A283245.P16933236034631131313

/-! ## A283245.P9926131330662503198

`A006530(2*A283092(n+1))`
-/

namespace A283245.P9926131330662503198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A283092 (n + 1)).toNat

end

end A283245.P9926131330662503198

/-! ## A283245.P10842654200674273904

`A127093(2*A283092(n+1))`
-/

namespace A283245.P10842654200674273904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (2 * A283092 (n + 1)).toNat

end

end A283245.P10842654200674273904

/-! ## A283245.P12637110519227416711

`A307641(2*A283092(n+1))`
-/

namespace A283245.P12637110519227416711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307641 (2 * A283092 (n + 1)).toNat

end

end A283245.P12637110519227416711

/-! ## A283245.P11835786022720167531

`A006530(root(A283092(n+1), 2))`
-/

namespace A283245.P11835786022720167531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A283092 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A283245.P11835786022720167531

/-! ## A283245.P10394757114607600956

`A014963(root(A283092(n+1), 2))`
-/

namespace A283245.P10394757114607600956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((A283092 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A283245.P10394757114607600956

/-!
# A283246: Numbers k such that (17*10^k - 179)/9 is prime.

The programs for A283246, there is no canonical definition to state claims against.
-/

/-! ## A283246.P4273274442442323640

`A205838(A018998(n+2))+1`
-/

namespace A283246.P4273274442442323640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205838 (A018998 (n + 2)).toNat + 1

end

end A283246.P4273274442442323640

/-! ## A283246.P1725174196336176113

`A079377(A002865(n)+n+1)+n+1`
-/

namespace A283246.P1725174196336176113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079377 (A002865 n + (n + 1 : ℤ)).toNat + (n + 1 : ℤ)

end

end A283246.P1725174196336176113

/-!
# A283248: Numbers that cannot be represented as a sum of one prime and two primes squared.

The programs for A283248, there is no canonical definition to state claims against.
-/

/-! ## A283248.P11935666496955716795

`lt[A325245(n), A292504(A325261(n+4))]`
-/

namespace A283248.P11935666496955716795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325245 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292504 (A325261 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A283248.P11935666496955716795

/-! ## A283248.P10218136957494916559

`lt[A090632(n), A002326(A008784(n+5))]`
-/

namespace A283248.P10218136957494916559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090632 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (A008784 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A283248.P10218136957494916559

/-!
# A283249: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 603", based on the 5-celled von Neumann neighborhood.

The programs for A283249, there is no canonical definition to state claims against.
-/

/-! ## A283249.P8360559571773745949

`A007088(A283251(n))`
-/

namespace A283249.P8360559571773745949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283251 n).toNat

end

end A283249.P8360559571773745949

/-! ## A283249.P9861789852719383863

`A185544(2*A283251(n))`
-/

namespace A283249.P9861789852719383863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283251 n).toNat

end

end A283249.P9861789852719383863

/-!
# A283250: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 603", based on the 5-celled von Neumann neighborhood.

The programs for A283250, there is no canonical definition to state claims against.
-/

/-! ## A283250.P18061138284150293450

`A302034(A283251(n))`
-/

namespace A283250.P18061138284150293450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302034 (A283251 n).toNat

end

end A283250.P18061138284150293450

/-! ## A283250.P16099783825610046434

`A000265(4*A283251(n))`
-/

namespace A283250.P16099783825610046434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (4 * A283251 n).toNat

end

end A283250.P16099783825610046434

/-! ## A283250.P16539320241397605840

`A000265(lcm(8, A283251(n)))`
-/

namespace A283250.P16539320241397605840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.lcm 8 (A283251 n))

end

end A283250.P16539320241397605840

/-! ## A283250.P2877401018485732571

`A030101(ceil(A283251(n)/2))`
-/

namespace A283250.P2877401018485732571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 ⌈(A283251 n : ℚ) / 2⌉.toNat

end

end A283250.P2877401018485732571

/-! ## A283250.P16813224154555619989

`A000265(A283251(n)/(1/2)²)`
-/

namespace A283250.P16813224154555619989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A283251 n : ℚ) / ((1 : ℚ) / 2) ^ 2)).toNat

end

end A283250.P16813224154555619989

/-!
# A283251: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 603", based on the 5-celled von Neumann neighborhood.

The programs for A283251, there is no canonical definition to state claims against.
-/

/-! ## A283251.P10935914726308282188

`A283250(n)*A283273(A131577(n))`
-/

namespace A283251.P10935914726308282188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283250 n * A283273 (A131577 n).toNat

end

end A283251.P10935914726308282188

/-! ## A283251.P6759664591075689533

`A066990(A000079(n))*A283250(n)`
-/

namespace A283251.P6759664591075689533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (A000079 n).toNat * A283250 n

end

end A283251.P6759664591075689533

/-! ## A283251.P7608873387723315884

`A036044(A126646(n)-A283250(n))`
-/

namespace A283251.P7608873387723315884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (A126646 n - A283250 n).toNat

end

end A283251.P7608873387723315884

/-! ## A283251.P14410931893922139402

`A036044(xor(A126646(n), A283250(n)))`
-/

namespace A283251.P14410931893922139402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (Int.xor (A126646 n) (A283250 n)).toNat

end

end A283251.P14410931893922139402

/-!
# A283252: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 605", based on the 5-celled von Neumann neighborhood.

The programs for A283252, there is no canonical definition to state claims against.
-/

/-! ## A283252.P2373722680231126171

`A007088(A283254(n))`
-/

namespace A283252.P2373722680231126171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283254 n).toNat

end

end A283252.P2373722680231126171

/-! ## A283252.P9975316181999676523

`A185544(2*A283254(n))`
-/

namespace A283252.P9975316181999676523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283254 n).toNat

end

end A283252.P9975316181999676523

/-! ## A283252.P15596310131815036550

`A185544(A283254(n)+A283254(n))`
-/

namespace A283252.P15596310131815036550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A283254 n + A283254 n).toNat

end

end A283252.P15596310131815036550

/-!
# A283253: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 605", based on the 5-celled von Neumann neighborhood.

The programs for A283253, there is no canonical definition to state claims against.
-/

/-! ## A283253.P4735965021726200537

`A007088(A283255(n))`
-/

namespace A283253.P4735965021726200537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283255 n).toNat

end

end A283253.P4735965021726200537

/-! ## A283253.P8614825396787580101

`A305989(A283254(n))`
-/

namespace A283253.P8614825396787580101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283254 n).toNat

end

end A283253.P8614825396787580101

/-! ## A283253.P12471918088458596425

`A185544(2*A283255(n))`
-/

namespace A283253.P12471918088458596425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283255 n).toNat

end

end A283253.P12471918088458596425

/-! ## A283253.P16803716343050816002

`A185544(lcm(2, A283255(n)))`
-/

namespace A283253.P16803716343050816002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283255 n))

end

end A283253.P16803716343050816002

/-! ## A283253.P12947739244489982172

`A185544(A283255(n)+A283255(n))`
-/

namespace A283253.P12947739244489982172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A283255 n + A283255 n).toNat

end

end A283253.P12947739244489982172

/-!
# A283254: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 605", based on the 5-celled von Neumann neighborhood.

The programs for A283254, there is no canonical definition to state claims against.
-/

/-! ## A283254.P17781630766500423036

`or(A032741(A283226(n+1)), A283216(n))`
-/

namespace A283254.P17781630766500423036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A032741 (A283226 (n + 1)).toNat) (A283216 n)

end

end A283254.P17781630766500423036

/-!
# A283255: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 605", based on the 5-celled von Neumann neighborhood.

The programs for A283255, there is no canonical definition to state claims against.
-/

/-! ## A283255.P17942748507652301854

`A325401(lcm(2, A283254(n)))`
-/

namespace A283255.P17942748507652301854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm 2 (A283254 n))

end

end A283255.P17942748507652301854

/-! ## A283255.P4983530245767633805

`A030101(A283254(n))`
-/

namespace A283255.P4983530245767633805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A283254 n).toNat

end

end A283255.P4983530245767633805

/-! ## A283255.P5929499365477530225

`A325401(2*A283254(n))`
-/

namespace A283255.P5929499365477530225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A283254 n).toNat

end

end A283255.P5929499365477530225

/-! ## A283255.P8193232035239434334

`A342122(2*A283254(n))`
-/

namespace A283255.P8193232035239434334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342122 (2 * A283254 n).toNat

end

end A283255.P8193232035239434334

/-! ## A283255.P15644025843225956270

`A126646(n)-A036044(A283254(n))`
-/

namespace A283255.P15644025843225956270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A036044 (A283254 n).toNat

end

end A283255.P15644025843225956270

/-!
# A283256: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 606", based on the 5-celled von Neumann neighborhood.

The programs for A283256, there is no canonical definition to state claims against.
-/

/-! ## A283256.P16057503908995718375

`A007088(A283258(n))`
-/

namespace A283256.P16057503908995718375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283258 n).toNat

end

end A283256.P16057503908995718375

/-! ## A283256.P13067558041942894103

`A305989(A283259(n))`
-/

namespace A283256.P13067558041942894103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283259 n).toNat

end

end A283256.P13067558041942894103

/-! ## A283256.P13646902943528436927

`A185544(2*A283258(n))`
-/

namespace A283256.P13646902943528436927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283258 n).toNat

end

end A283256.P13646902943528436927

/-! ## A283256.P4687251999760366222

`A185544(lcm(2, A283258(n)))`
-/

namespace A283256.P4687251999760366222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283258 n))

end

end A283256.P4687251999760366222

/-! ## A283256.P4269331512089466068

`A185544(A283258(n)+A283258(n))`
-/

namespace A283256.P4269331512089466068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A283258 n + A283258 n).toNat

end

end A283256.P4269331512089466068

/-!
# A283257: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 606", based on the 5-celled von Neumann neighborhood.

The programs for A283257, there is no canonical definition to state claims against.
-/

/-! ## A283257.P12360428564454906889

`A007088(A283259(n))`
-/

namespace A283257.P12360428564454906889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283259 n).toNat

end

end A283257.P12360428564454906889

/-! ## A283257.P6956439154357502204

`A305989(A283258(n))`
-/

namespace A283257.P6956439154357502204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283258 n).toNat

end

end A283257.P6956439154357502204

/-! ## A283257.P17265202568118117146

`A185544(2*A283259(n))`
-/

namespace A283257.P17265202568118117146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283259 n).toNat

end

end A283257.P17265202568118117146

/-! ## A283257.P11690099560142653505

`A185544(lcm(2, A283259(n)))`
-/

namespace A283257.P11690099560142653505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283259 n))

end

end A283257.P11690099560142653505

/-! ## A283257.P12018324290487305791

`A185544(A283259(n)+A283259(n))`
-/

namespace A283257.P12018324290487305791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A283259 n + A283259 n).toNat

end

end A283257.P12018324290487305791

/-!
# A283258: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 606", based on the 5-celled von Neumann neighborhood.

The programs for A283258, there is no canonical definition to state claims against.
-/

/-! ## A283258.P6400316577520831023

`A057889(A283259(n))`
-/

namespace A283258.P6400316577520831023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A283259 n).toNat

end

end A283258.P6400316577520831023

/-! ## A283258.P5826647024415471448

`A325402(or(1, A283259(n)))`
-/

namespace A283258.P5826647024415471448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325402 (Int.lor 1 (A283259 n)).toNat

end

end A283258.P5826647024415471448

/-! ## A283258.P50667660170887543

`A325402(lcm((-1)^n, A283259(n)))`
-/

namespace A283258.P50667660170887543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325402 (Int.lcm ((-1) ^ n) (A283259 n))

end

end A283258.P50667660170887543

/-! ## A283258.P6442925923693340515

`A325402(A283259(n)+A184946(n))`
-/

namespace A283258.P6442925923693340515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325402 (A283259 n + A184946 n).toNat

end

end A283258.P6442925923693340515

/-! ## A283258.P14822341860419214545

`A325402(A271839(n)*A283259(n))`
-/

namespace A283258.P14822341860419214545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325402 (A271839 n * A283259 n).toNat

end

end A283258.P14822341860419214545

/-!
# A283259: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 606", based on the 5-celled von Neumann neighborhood.

The programs for A283259, there is no canonical definition to state claims against.
-/

/-! ## A283259.P3036649352075249949

`A057889(A283258(n))`
-/

namespace A283259.P3036649352075249949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A283258 n).toNat

end

end A283259.P3036649352075249949

/-! ## A283259.P8357313222046821249

`A030101(or(1, A283258(n)))`
-/

namespace A283259.P8357313222046821249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.lor 1 (A283258 n)).toNat

end

end A283259.P8357313222046821249

/-! ## A283259.P12735613354511101842

`A030101(lcm((-1)^n, A283258(n)))`
-/

namespace A283259.P12735613354511101842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.lcm ((-1) ^ n) (A283258 n))

end

end A283259.P12735613354511101842

/-! ## A283259.P6256768657771415395

`A030101(abs(A283258(n)-n)+n)`
-/

namespace A283259.P6256768657771415395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (|A283258 n - (n : ℤ)| + (n : ℤ)).toNat

end

end A283259.P6256768657771415395

/-! ## A283259.P12766507435777457264

`A030101(A283258(n)+A000007(n))`
-/

namespace A283259.P12766507435777457264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A283258 n + A000007 n).toNat

end

end A283259.P12766507435777457264

/-!
# A283260: 

The programs for A283260, there is no canonical definition to state claims against.
-/

/-! ## A283260.P858841773728135488

`(n+1)!^2^n`
-/

namespace A283260.P858841773728135488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) ^ 2 ^ n

end

end A283260.P858841773728135488

/-!
# A283261: 

The programs for A283261, there is no canonical definition to state claims against.
-/

/-! ## A283261.P9499401313256631525

`n!^A263292(n)`
-/

namespace A283261.P9499401313256631525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) ^ (A263292 n : ℤ)

end

end A283261.P9499401313256631525

/-! ## A283261.P6650075554214866279

`sqrt(A000142(n))^A060957(n)`
-/

namespace A283261.P6650075554214866279
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000142 n : ℝ) ^ (A060957 n : ℤ)

end

end A283261.P6650075554214866279

/-!
# A283262: Numbers m such that tau(m^2) is a prime.

The programs for A283262, there is no canonical definition to state claims against.
-/

/-! ## A283262.P5789474881398791731

`∪[A000040(n+1), A051676(n+1)]`
-/

namespace A283262.P5789474881398791731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A283262.P5789474881398791731

/-! ## A283262.P4261294336029074492

`∪[A000430(n+1), A051676(n+1)]`
-/

namespace A283262.P4261294336029074492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A283262.P4261294336029074492

/-! ## A283262.P9907502986744323047

`∪[A051676(n+1), A175787(n+1)]`
-/

namespace A283262.P9907502986744323047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A283262.P9907502986744323047

/-! ## A283262.P5716281214628642349

`∪[A051676(n+1), A186285(n+1)]`
-/

namespace A283262.P5716281214628642349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A283262.P5716281214628642349

/-! ## A283262.P9922567448955639203

`∪[A051676(n+1), A268391(n+1)]`
-/

namespace A283262.P9922567448955639203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A283262.P9922567448955639203

/-! ## A283262.P14161620942249772076

`filter[A261355(n+1), A069513(#)]`
-/

namespace A283262.P14161620942249772076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A283262.P14161620942249772076

/-! ## A283262.P1423425281729185938

`∩[A000961(n+1), A261355(n+1)]`
-/

namespace A283262.P1423425281729185938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283262.P1423425281729185938

/-! ## A283262.P12389959330316635271

`∩[A246655(n+1), A261355(n+1)]`
-/

namespace A283262.P12389959330316635271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283262.P12389959330316635271

/-! ## A283262.P15746717011537125740

`filter[A261355(n+1), A010055(#)]`
-/

namespace A283262.P15746717011537125740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A283262.P15746717011537125740

/-! ## A283262.P16722210707997448528

`eq[1, A001222(A048691(n+1))]+1`
-/

namespace A283262.P16722210707997448528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A048691 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283262.P16722210707997448528

/-! ## A283262.P17154956342474333857

`eq[3, A048691(A048691(n+2))]+2`
-/

namespace A283262.P17154956342474333857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A048691 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A283262.P17154956342474333857

/-! ## A283262.P2243548585568399093

`record[A000015(n+2)/A001222(A048691(n+2))]`
-/

namespace A283262.P2243548585568399093
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000015 (n + 2) : ℚ) / (A001222 (A048691 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283262.P2243548585568399093

/-! ## A283262.P10399195156314983979

`sqrt(A036454(n+1))`
-/

namespace A283262.P10399195156314983979
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A036454 (n + 1) : ℝ)

end

end A283262.P10399195156314983979

/-! ## A283262.P2879230721853056895

`eq[1, ∑{e}[∏{e}[n², #+1], #]]`
-/

namespace A283262.P2879230721853056895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), (Nat.factorization (f4 n) p + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283262.P2879230721853056895

/-! ## A283262.P15111387332971912280

`eq[2, A000005(∏{e}[n², #+1])]`
-/

namespace A283262.P15111387332971912280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283262.P15111387332971912280

/-!
# A283263: Expansion of exp( Sum_{n>=1} -sigma_3(n)*x^n/n ) in powers of x.

The programs for A283263, there is no canonical definition to state claims against.
-/

/-! ## A283263.P11750180436873670706

`A283272(∑[n+3])`
-/

namespace A283263.P11750180436873670706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283263.P11750180436873670706

/-! ## A283263.P2369922469929443965

`A283272(A055998(n+1))+(16*n)%4`
-/

namespace A283263.P2369922469929443965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (A055998 (n + 1)).toNat + ((16 * n % 4 : ℕ) : ℤ)

end

end A283263.P2369922469929443965

/-! ## A283263.P977637962552464490

`A033999(n)²*A283272(A055998(n+1))`
-/

namespace A283263.P977637962552464490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A283272 (A055998 (n + 1)).toNat

end

end A283263.P977637962552464490

/-! ## A283263.P13766219476934107288

`or(A025439(n)², A283272(A055998(n+1)))`
-/

namespace A283263.P13766219476934107288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025439 n ^ 2) (A283272 (A055998 (n + 1)).toNat)

end

end A283263.P13766219476934107288

/-! ## A283263.P7843870389789741913

`A283272(A055998(n+1))+A000007(n+1)`
-/

namespace A283263.P7843870389789741913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (A055998 (n + 1)).toNat + A000007 (n + 1)

end

end A283263.P7843870389789741913

/-! ## A283263.P468679065733215299

`A283272(A055998(n+1))%A294584(n+2)`
-/

namespace A283263.P468679065733215299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283272 (A055998 (n + 1)).toNat) (A294584 (n + 2))

end

end A283263.P468679065733215299

/-! ## A283263.P4761878184322169347

`A007318(A000096(n))*A283272(A055998(n+1))`
-/

namespace A283263.P4761878184322169347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A283272 (A055998 (n + 1)).toNat

end

end A283263.P4761878184322169347

/-!
# A283264: Expansion of exp( Sum_{n>=1} -sigma_4(n)*x^n/n ) in powers of x.

The programs for A283264, there is no canonical definition to state claims against.
-/

/-! ## A283264.P3418701918248360095

`A283272(∑[n+3]+n+3)`
-/

namespace A283264.P3418701918248360095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A283264.P3418701918248360095

/-! ## A283264.P13543687576992073888

`A283272(A046691(n+2))%A034474(n)`
-/

namespace A283264.P13543687576992073888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283272 (A046691 (n + 2)).toNat) (A034474 n)

end

end A283264.P13543687576992073888

/-! ## A283264.P10983914865280016036

`A283272(A046691(n+2))+A000007(6*n+2)`
-/

namespace A283264.P10983914865280016036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (A046691 (n + 2)).toNat + A000007 (6 * n + 2)

end

end A283264.P10983914865280016036

/-! ## A283264.P778195127151061768

`A283272(A046691(n+2))+A151795(4*n+7)`
-/

namespace A283264.P778195127151061768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (A046691 (n + 2)).toNat + A151795 (4 * n + 7)

end

end A283264.P778195127151061768

/-!
# A283265: a(n) = 1 if n is neither 2 nor a lesser or greater twin prime (in A001097), 0 otherwise.

The programs for A283265, the canonical program `A283265.P16513607417697021488` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283265 has offset 1).

The definition of A283265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283265.P17540986314364515937

`char[comp[A099609(n+1)-1]]`
-/

namespace A283265.P17540986314364515937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099609 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A283265.P17540986314364515937

namespace A283265

/-- `char[comp[A099609(n+1)-1]]` -/
def P17540986314364515937.Spec : Prop :=
  ∀ n, (P17540986314364515937.a n : ℤ) = A283265 (n + 1)

end A283265

/-! ## A283265.P8788792579730966691

`1-A164292(char[1]+1+n)`
-/

namespace A283265.P8788792579730966691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A164292 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)

end

end A283265.P8788792579730966691

namespace A283265

/-- `1-A164292(char[1]+1+n)` -/
def P8788792579730966691.Spec : Prop :=
  ∀ n, P8788792579730966691.a n = A283265 (n + 1)

end A283265

/-! ## A283265.P4002053853608134428

`1-char[A171821(n+1)-1]`
-/

namespace A283265.P4002053853608134428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A283265.P4002053853608134428

namespace A283265

/-- `1-char[A171821(n+1)-1]` -/
def P4002053853608134428.Spec : Prop :=
  ∀ n, P4002053853608134428.a n = A283265 (n + 1)

end A283265

/-! ## A283265.P16513607417697021488

`a(a(1-A129950(n+1)))` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A283265

/-- `a(a(1-A129950(n+1)))` -/
def P16513607417697021488.Spec : Prop :=
  ∀ n, (P16513607417697021488.a n : ℤ) = A283265 (n + 1)

theorem P16513607417697021488.correct : P16513607417697021488.Spec := by
  intro n
  simp only [A283265, Nat.add_sub_cancel]

end A283265

/-! ## A283265.P12672254625414008950

`C(A057979(n), A175682(n+1))`
-/

namespace A283265.P12672254625414008950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A057979 n).toNat (A175682 (n + 1)).toNat

end

end A283265.P12672254625414008950

namespace A283265

/-- `C(A057979(n), A175682(n+1))` -/
def P12672254625414008950.Spec : Prop :=
  ∀ n, (P12672254625414008950.a n : ℤ) = A283265 (n + 1)

end A283265

/-! ## A283265.P7813949738650117168

`xor(A060576(n), A164292(n+1))`
-/

namespace A283265.P7813949738650117168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A060576 n) (A164292 (n + 1))

end

end A283265.P7813949738650117168

namespace A283265

/-- `xor(A060576(n), A164292(n+1))` -/
def P7813949738650117168.Spec : Prop :=
  ∀ n, P7813949738650117168.a n = A283265 (n + 1)

end A283265

/-! ## A283265.P8038160707463156356

`char[comp[A000010(A099609(n+1))]]`
-/

namespace A283265.P8038160707463156356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A099609 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A283265.P8038160707463156356

namespace A283265

/-- `char[comp[A000010(A099609(n+1))]]` -/
def P8038160707463156356.Spec : Prop :=
  ∀ n, (P8038160707463156356.a n : ℤ) = A283265 (n + 1)

end A283265

/-! ## A283265.P13767601162397101015

`1-char[A000010(A171821(n+1))]`
-/

namespace A283265.P13767601162397101015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A171821 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A283265.P13767601162397101015

namespace A283265

/-- `1-char[A000010(A171821(n+1))]` -/
def P13767601162397101015.Spec : Prop :=
  ∀ n, P13767601162397101015.a n = A283265 (n + 1)

end A283265

/-! ## A283265.P2375218619977185745

`A005132(a(and(1, A164292(n+1))))` with `a(0)=1, a(1)=0`
-/

namespace A283265.P2375218619977185745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A005132 (a (Int.land 1 (A164292 (n + 1))).toNat).toNat

end

end A283265.P2375218619977185745

namespace A283265

/-- `A005132(a(and(1, A164292(n+1))))` -/
def P2375218619977185745.Spec : Prop :=
  ∀ n, P2375218619977185745.a n = A283265 (n + 1)

end A283265

/-! ## A283265.P13226148030018702732

`1-(A164292(n+1)+A164292(A008486(n)))`
-/

namespace A283265.P13226148030018702732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A164292 (n + 1) + A164292 (A008486 n).toNat)

end

end A283265.P13226148030018702732

namespace A283265

/-- `1-(A164292(n+1)+A164292(A008486(n)))` -/
def P13226148030018702732.Spec : Prop :=
  ∀ n, P13226148030018702732.a n = A283265 (n + 1)

end A283265

/-! ## A283265.P7931828824668430871

`and(1, A164292(n+1)+A000961(A000040(n+1)+1))`
-/

namespace A283265.P7931828824668430871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A164292 (n + 1) + A000961 (A000040 (n + 1) + 1).toNat)

end

end A283265.P7931828824668430871

namespace A283265

/-- `and(1, A164292(n+1)+A000961(A000040(n+1)+1))` -/
def P7931828824668430871.Spec : Prop :=
  ∀ n, P7931828824668430871.a n = A283265 (n + 1)

end A283265

/-!
# A283266: Prime numbers p such that 2^p - 3 is prime.

The programs for A283266, there is no canonical definition to state claims against.
-/

/-! ## A283266.P14608390151414916390

`p?[A050414(n+1)]`
-/

namespace A283266.P14608390151414916390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A283266.P14608390151414916390

/-!
# A283267: Smallest b-a such that a < prime(n) < b, where a,b are semiprimes.

The programs for A283267, the canonical program `A283267.P1232210080466933230` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283267 has offset 3).

The definition of A283267 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102414, A102415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A283267.P1232210080466933230

`A102414(n+3)-A102415(n+3)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A283267

/-- `A102414(n+3)-A102415(n+3)` -/
def P1232210080466933230.Spec : Prop :=
  ∀ n, P1232210080466933230.a n = A283267 (n + 3)

theorem P1232210080466933230.correct : P1232210080466933230.Spec := by
  intro n
  simp only [A283267, Nat.add_sub_cancel]

end A283267

/-! ## A283267.P10777290703875742514

`A200927(A215848(n+1))`
-/

namespace A283267.P10777290703875742514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200927 (A215848 (n + 1)).toNat

end

end A283267.P10777290703875742514

namespace A283267

/-- `A200927(A215848(n+1))` -/
def P10777290703875742514.Spec : Prop :=
  ∀ n, P10777290703875742514.a n = A283267 (n + 3)

end A283267

/-! ## A283267.P3236035851950973490

`A200927(A045344(n+2))`
-/

namespace A283267.P3236035851950973490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200927 (A045344 (n + 2)).toNat

end

end A283267.P3236035851950973490

namespace A283267

/-- `A200927(A045344(n+2))` -/
def P3236035851950973490.Spec : Prop :=
  ∀ n, P3236035851950973490.a n = A283267 (n + 3)

end A283267

/-! ## A283267.P14004865193936628248

`A200927(A065091(n+2))`
-/

namespace A283267.P14004865193936628248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200927 (A065091 (n + 2)).toNat

end

end A283267.P14004865193936628248

namespace A283267

/-- `A200927(A065091(n+2))` -/
def P14004865193936628248.Spec : Prop :=
  ∀ n, P14004865193936628248.a n = A283267 (n + 3)

end A283267

/-! ## A283267.P6122908708228308521

`A200927(A140475(n+2))`
-/

namespace A283267.P6122908708228308521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200927 (A140475 (n + 2)).toNat

end

end A283267.P6122908708228308521

namespace A283267

/-- `A200927(A140475(n+2))` -/
def P6122908708228308521.Spec : Prop :=
  ∀ n, P6122908708228308521.a n = A283267 (n + 3)

end A283267

/-! ## A283267.P11753639610110361976

`A200927(A000040(n+3))`
-/

namespace A283267.P11753639610110361976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200927 (A000040 (n + 3)).toNat

end

end A283267.P11753639610110361976

namespace A283267

/-- `A200927(A000040(n+3))` -/
def P11753639610110361976.Spec : Prop :=
  ∀ n, P11753639610110361976.a n = A283267 (n + 3)

end A283267

/-! ## A283267.P16718974933188879407

`A178139(A102415(n+3))`
-/

namespace A283267.P16718974933188879407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178139 (A102415 (n + 3)).toNat

end

end A283267.P16718974933188879407

namespace A283267

/-- `A178139(A102415(n+3))` -/
def P16718974933188879407.Spec : Prop :=
  ∀ n, P16718974933188879407.a n = A283267 (n + 3)

end A283267

/-! ## A283267.P9571746316646832861

`A200927(p?[A066047(n+1)])`
-/

namespace A283267.P9571746316646832861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200927 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A283267.P9571746316646832861

namespace A283267

/-- `A200927(p?[A066047(n+1)])` -/
def P9571746316646832861.Spec : Prop :=
  ∀ n, P9571746316646832861.a n = A283267 (n + 3)

end A283267

/-! ## A283267.P1679413142840664620

`A200927(p?[A175212(n+1)])`
-/

namespace A283267.P1679413142840664620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200927 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A283267.P1679413142840664620

namespace A283267

/-- `A200927(p?[A175212(n+1)])` -/
def P1679413142840664620.Spec : Prop :=
  ∀ n, P1679413142840664620.a n = A283267 (n + 3)

end A283267

/-! ## A283267.P10637194905737873861

`A200927(A172367(n+1)+4)`
-/

namespace A283267.P10637194905737873861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200927 (A172367 (n + 1) + 4).toNat

end

end A283267.P10637194905737873861

namespace A283267

/-- `A200927(A172367(n+1)+4)` -/
def P10637194905737873861.Spec : Prop :=
  ∀ n, P10637194905737873861.a n = A283267 (n + 3)

end A283267

/-! ## A283267.P7387325332141828226

`A200927(eq[1, A001222(n+4)]+4)`
-/

namespace A283267.P7387325332141828226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200927 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 4)

end

end A283267.P7387325332141828226

namespace A283267

/-- `A200927(eq[1, A001222(n+4)]+4)` -/
def P7387325332141828226.Spec : Prop :=
  ∀ n, P7387325332141828226.a n = A283267 (n + 3)

end A283267

/-! ## A283267.P14553314517434486419

`A217612(n+3)+A121885(n+3)`
-/

namespace A283267.P14553314517434486419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217612 (n + 3) + A121885 (n + 3)

end

end A283267.P14553314517434486419

namespace A283267

/-- `A217612(n+3)+A121885(n+3)` -/
def P14553314517434486419.Spec : Prop :=
  ∀ n, P14553314517434486419.a n = A283267 (n + 3)

theorem P14553314517434486419.correct : P14553314517434486419.Spec := by
  intro n
  simp only [A283267, Nat.add_sub_cancel, A283267.P14553314517434486419.a, A283267.P1232210080466933230.a, A102414, A102414.P12501286491310177923.a, A102415, A102415.P2630728663582649578.a, A121885, A121885.P15919958393073517928.a, A217612, A217612.P9931106487089638916.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A111457, A111457.P8327054384123137751.a, A006093, A006093.P2906174024863549003.a, A072000, A072000.P3706059858088101648.a, A088707, A088707.P7291141647877559993.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A283267

/-!
# A283271: Expansion of exp( Sum_{n>=1} -sigma_5(n)*x^n/n ) in powers of x.

The programs for A283271, there is no canonical definition to state claims against.
-/

/-! ## A283271.P12000910283211576780

`A283272(A052905(n+2))`
-/

namespace A283271.P12000910283211576780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (A052905 (n + 2)).toNat

end

end A283271.P12000910283211576780

/-! ## A283271.P10661168007267940126

`A283272(eq[4, A025581(n)])`
-/

namespace A283271.P10661168007267940126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283271.P10661168007267940126

/-! ## A283271.P4489650612216605466

`A283272(eq[4, A116949(n)])`
-/

namespace A283271.P4489650612216605466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283271.P4489650612216605466

/-! ## A283271.P15051138410091610599

`A283272(A046691(n+3)-1)`
-/

namespace A283271.P15051138410091610599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (A046691 (n + 3) - 1).toNat

end

end A283271.P15051138410091610599

/-! ## A283271.P1468984949221982690

`A283272(A000217(n+5)-5)`
-/

namespace A283271.P1468984949221982690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (A000217 (n + 5) - 5).toNat

end

end A283271.P1468984949221982690

/-!
# A283272: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is expansion of Product_{j>=1} (1-x^j)^(j^k) in power of x.

The programs for A283272, there is no canonical definition to state claims against.
-/

/-! ## A283272.P8726413685673818512

`A292166(n)%A090276(n+1)`
-/

namespace A283272.P8726413685673818512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292166 n) (A090276 (n + 1))

end

end A283272.P8726413685673818512

/-! ## A283272.P4292203331338108183

`A292166(n)+A089311(A094544(n))`
-/

namespace A283272.P4292203331338108183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292166 n + A089311 (A094544 n).toNat

end

end A283272.P4292203331338108183

/-! ## A283272.P14538175799978931628

`A292166(n)+A025469(A163661(n))`
-/

namespace A283272.P14538175799978931628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292166 n + A025469 (A163661 n).toNat

end

end A283272.P14538175799978931628

/-! ## A283272.P7763059046095761991

`A292166(n)+A151795(A060475(n))`
-/

namespace A283272.P7763059046095761991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292166 n + A151795 (A060475 n).toNat

end

end A283272.P7763059046095761991

/-! ## A283272.P6700083726500442950

`A292166(n)+A025469(A256116(n))`
-/

namespace A283272.P6700083726500442950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292166 n + A025469 (A256116 n).toNat

end

end A283272.P6700083726500442950

/-!
# A283275: Number of n X n 0..1 arrays with no 1 equal to more than two of its horizontal, vertical and antidiagonal neighbors.

The programs for A283275, there is no canonical definition to state claims against.
-/

/-! ## A283275.P14272945662594361251

`A283282(∑[4*n]+1)`
-/

namespace A283275.P14272945662594361251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283282 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A283275.P14272945662594361251

/-! ## A283275.P1405412621504253342

`record[A003982(n)*A283282(n+1)]`
-/

namespace A283275.P1405412621504253342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A283282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283275.P1405412621504253342

/-! ## A283275.P468953977315634784

`record[gcd(A037012(n), A283282(n+1))]`
-/

namespace A283275.P468953977315634784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A283282 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283275.P468953977315634784

/-! ## A283275.P9156657154573889897

`gcd(A000038(n), A283282(A001844(n)))`
-/

namespace A283275.P9156657154573889897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A283282 (A001844 n).toNat)

end

end A283275.P9156657154573889897

/-! ## A283275.P1405979241635389227

`lcm(A033999(n), A283282(A001844(n)))`
-/

namespace A283275.P1405979241635389227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A283282 (A001844 n).toNat)

end

end A283275.P1405979241635389227

/-!
# A283276: Number of n X 2 0..1 arrays with no 1 equal to more than two of its horizontal, vertical and antidiagonal neighbors.

The programs for A283276, there is no canonical definition to state claims against.
-/

/-! ## A283276.P13002627033332650585

`A283282(∑[n+1]+2)`
-/

namespace A283276.P13002627033332650585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283282 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A283276.P13002627033332650585

/-! ## A283276.P9819097519095213659

`record[A283282(A286235(n+1)+1)]`
-/

namespace A283276.P9819097519095213659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283282 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283276.P9819097519095213659

/-! ## A283276.P5404880728114381320

`A000035(A293703(n+1))*A283282(A133263(n+1))`
-/

namespace A283276.P5404880728114381320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A293703 (n + 1)).toNat * A283282 (A133263 (n + 1)).toNat

end

end A283276.P5404880728114381320

/-! ## A283276.P6728171262384658073

`A000035(A269393(2*n+1))*A283282(A133263(n+1))`
-/

namespace A283276.P6728171262384658073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A269393 (2 * n + 1)).toNat * A283282 (A133263 (n + 1)).toNat

end

end A283276.P6728171262384658073

/-! ## A283276.P17753596540622578948

`record[A283282(Δ[A003453(n+5)])]`
-/

namespace A283276.P17753596540622578948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283282 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283276.P17753596540622578948

/-!
# A283277: Number of n X 3 0..1 arrays with no 1 equal to more than two of its horizontal, vertical and antidiagonal neighbors.

The programs for A283277, there is no canonical definition to state claims against.
-/

/-! ## A283277.P9078734647824504523

`A283282(∑[n+2]+4)`
-/

namespace A283277.P9078734647824504523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283282 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A283277.P9078734647824504523

/-! ## A283277.P14335498742808813079

`A262681(n)*A283282(A167614(n+1))`
-/

namespace A283277.P14335498742808813079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262681 n * A283282 (A167614 (n + 1)).toNat

end

end A283277.P14335498742808813079

/-! ## A283277.P9945028743092742510

`lcm(A158388(n), A283282(A167614(n+1)))`
-/

namespace A283277.P9945028743092742510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158388 n) (A283282 (A167614 (n + 1)).toNat)

end

end A283277.P9945028743092742510

/-! ## A283277.P10310434640913019552

`A283282(A167614(n+1))+A111859(n+1)`
-/

namespace A283277.P10310434640913019552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283282 (A167614 (n + 1)).toNat + A111859 (n + 1)

end

end A283277.P10310434640913019552

/-! ## A283277.P5031174376665400027

`A283282(A167614(n+1))%A106497(n+1)`
-/

namespace A283277.P5031174376665400027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283282 (A167614 (n + 1)).toNat) (A106497 (n + 1))

end

end A283277.P5031174376665400027

/-!
# A283278: Number of nX4 0..1 arrays with no 1 equal to more than two of its horizontal, vertical and antidiagonal neighbors.

The programs for A283278, there is no canonical definition to state claims against.
-/

/-! ## A283278.P10208722279487650850

`A283282(A374004(n+1))`
-/

namespace A283278.P10208722279487650850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283282 (A374004 (n + 1)).toNat

end

end A283278.P10208722279487650850

/-! ## A283278.P660095653021285093

`A283282(A141214(n)+7)`
-/

namespace A283278.P660095653021285093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283282 (A141214 n + 7).toNat

end

end A283278.P660095653021285093

/-! ## A283278.P12301646459360600455

`A283282(A052905(n)+9)`
-/

namespace A283278.P12301646459360600455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283282 (A052905 n + 9).toNat

end

end A283278.P12301646459360600455

/-! ## A283278.P14660458929885747827

`A283282(A055999(n)+10)`
-/

namespace A283278.P14660458929885747827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283282 (A055999 n + 10).toNat

end

end A283278.P14660458929885747827

/-! ## A283278.P6084741775856885405

`A283282(A167614(n+2)+1)`
-/

namespace A283278.P6084741775856885405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283282 (A167614 (n + 2) + 1).toNat

end

end A283278.P6084741775856885405

/-!
# A283279: Number of nX5 0..1 arrays with no 1 equal to more than two of its horizontal, vertical and antidiagonal neighbors.

The programs for A283279, there is no canonical definition to state claims against.
-/

/-! ## A283279.P13176959497700985415

`A283282(A374005(n+1))`
-/

namespace A283279.P13176959497700985415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283282 (A374005 (n + 1)).toNat

end

end A283279.P13176959497700985415

/-! ## A283279.P18062377273562406228

`A283282(A155212(n)+13)`
-/

namespace A283279.P18062377273562406228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283282 (A155212 n + 13).toNat

end

end A283279.P18062377273562406228

/-! ## A283279.P2456709419429874937

`A283282(A056000(n)+15)`
-/

namespace A283279.P2456709419429874937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283282 (A056000 n + 15).toNat

end

end A283279.P2456709419429874937

/-! ## A283279.P10522836674953002164

`A283282(eq[4, A193592(n)])`
-/

namespace A283279.P10522836674953002164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283282 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283279.P10522836674953002164

/-! ## A283279.P12250507372903459223

`A283282(eq[8, A209439(n)])`
-/

namespace A283279.P12250507372903459223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283282 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283279.P12250507372903459223

/-!
# A283280: Number of nX6 0..1 arrays with no 1 equal to more than two of its horizontal, vertical and antidiagonal neighbors.

The programs for A283280, there is no canonical definition to state claims against.
-/

/-! ## A283280.P17132365894365751547

`A283282(A374007(n+1))`
-/

namespace A283280.P17132365894365751547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283282 (A374007 (n + 1)).toNat

end

end A283280.P17132365894365751547

/-! ## A283280.P3606785062146459433

`A283282(eq[7, A131818(n+1)])`
-/

namespace A283280.P3606785062146459433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283282 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283280.P3606785062146459433

/-! ## A283280.P7638908313541103651

`A283282(eq[3, A219347(n)])`
-/

namespace A283280.P7638908313541103651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283282 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283280.P7638908313541103651

/-! ## A283280.P12009170005337991963

`A283282(eq[5, A193592(n)])`
-/

namespace A283280.P12009170005337991963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283282 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283280.P12009170005337991963

/-! ## A283280.P5767066453280755823

`A283282(eq[6, A200370(n+1)])`
-/

namespace A283280.P5767066453280755823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283282 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283280.P5767066453280755823

/-!
# A283281: Number of nX7 0..1 arrays with no 1 equal to more than two of its horizontal, vertical and antidiagonal neighbors.

The programs for A283281, there is no canonical definition to state claims against.
-/

/-! ## A283281.P7003426134303257396

`A283282(A374008(n+1))`
-/

namespace A283281.P7003426134303257396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283282 (A374008 (n + 1)).toNat

end

end A283281.P7003426134303257396

/-! ## A283281.P16093535118170670610

`A283282(A133263(n+6)+5)`
-/

namespace A283281.P16093535118170670610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283282 (A133263 (n + 6) + 5).toNat

end

end A283281.P16093535118170670610

/-! ## A283281.P11530849492902230956

`A283282(eq[8, A131818(n+1)])`
-/

namespace A283281.P11530849492902230956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283282 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283281.P11530849492902230956

/-! ## A283281.P4120859975203719961

`A283282(A055999(n+4))`
-/

namespace A283281.P4120859975203719961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283282 (A055999 (n + 4)).toNat

end

end A283281.P4120859975203719961

/-! ## A283281.P12890881708881336810

`A283282(eq[4, A219347(n)])`
-/

namespace A283281.P12890881708881336810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283282 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283281.P12890881708881336810

/-!
# A283282: T(n,k)=Number of nXk 0..1 arrays with no 1 equal to more than two of its horizontal, vertical and antidiagonal neighbors.

The programs for A283282, there is no canonical definition to state claims against.
-/

/-! ## A283282.P2607548897859665831

`A322554(A134346(n)+1)`
-/

namespace A283282.P2607548897859665831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322554 (A134346 n + 1).toNat

end

end A283282.P2607548897859665831

/-! ## A283282.P16474922998239876463

`A225687(A229320(n+1)-n)`
-/

namespace A283282.P16474922998239876463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (A229320 (n + 1) - (n : ℤ)).toNat

end

end A283282.P16474922998239876463

/-! ## A283282.P8506586483298235939

`char[4]+2*A346447(A184761(n+1))`
-/

namespace A283282.P8506586483298235939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 2 * A346447 (A184761 (n + 1)).toNat

end

end A283282.P8506586483298235939

/-! ## A283282.P5542166829363811941

`A219027(A154335(n))+∏[char[∑[n]]+1]`
-/

namespace A283282.P5542166829363811941
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219027 (A154335 n).toNat + ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A283282.P5542166829363811941

/-! ## A283282.P2794215144923198612

`A181245(n+1)+A124762(A181245(n+1))`
-/

namespace A283282.P2794215144923198612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181245 (n + 1) + A124762 (A181245 (n + 1)).toNat

end

end A283282.P2794215144923198612

/-!
# A283283: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 609", based on the 5-celled von Neumann neighborhood.

The programs for A283283, there is no canonical definition to state claims against.
-/

/-! ## A283283.P16546351496657985530

`A000042(n+1)%A282602(A028310(n))`
-/

namespace A283283.P16546351496657985530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000042 (n + 1)) (A282602 (A028310 n).toNat)

end

end A283283.P16546351496657985530

/-! ## A283283.P17425353237514670250

`A282305(n)+A283372(n)-A282602(n)`
-/

namespace A283283.P17425353237514670250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282305 n + (A283372 n - A282602 n)

end

end A283283.P17425353237514670250

/-! ## A283283.P12846714638367459744

`A282306(n)+A283373(n)-A282602(n)`
-/

namespace A283283.P12846714638367459744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282306 n + (A283373 n - A282602 n)

end

end A283283.P12846714638367459744

/-! ## A283283.P4611816423125015766

`A282603(n)+A283284(n)-A282602(n)`
-/

namespace A283283.P4611816423125015766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282603 n + (A283284 n - A282602 n)

end

end A283283.P4611816423125015766

/-! ## A283283.P6585757725071492230

`A007088(A283285(n))`
-/

namespace A283283.P6585757725071492230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283285 n).toNat

end

end A283283.P6585757725071492230

/-!
# A283284: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 609", based on the 5-celled von Neumann neighborhood.

The programs for A283284, there is no canonical definition to state claims against.
-/

/-! ## A283284.P15176790198620319574

`A282305(n)+A283372(n)-A282603(n)`
-/

namespace A283284.P15176790198620319574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282305 n + (A283372 n - A282603 n)

end

end A283284.P15176790198620319574

/-! ## A283284.P5659300200265386319

`A282306(n)+A283373(n)-A282603(n)`
-/

namespace A283284.P5659300200265386319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282306 n + (A283373 n - A282603 n)

end

end A283284.P5659300200265386319

/-! ## A283284.P15534738898749401225

`A282602(n)+A283283(n)-A282603(n)`
-/

namespace A283284.P15534738898749401225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282602 n + (A283283 n - A282603 n)

end

end A283284.P15534738898749401225

/-! ## A283284.P14764936209071371130

`A282305(n)+A007088(A283374(n))-A282603(n)`
-/

namespace A283284.P14764936209071371130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282305 n + (A007088 (A283374 n).toNat - A282603 n)

end

end A283284.P14764936209071371130

/-! ## A283284.P17118064338712467584

`A282306(n)+A007088(A283375(n))-A282603(n)`
-/

namespace A283284.P17118064338712467584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282306 n + (A007088 (A283375 n).toNat - A282603 n)

end

end A283284.P17118064338712467584

/-!
# A283285: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 609", based on the 5-celled von Neumann neighborhood.

The programs for A283285, there is no canonical definition to state claims against.
-/

/-! ## A283285.P14981668781761872422

`A282307(n)+A283374(n)-A282604(n)`
-/

namespace A283285.P14981668781761872422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282307 n + (A283374 n - A282604 n)

end

end A283285.P14981668781761872422

/-! ## A283285.P15695141834300788840

`A095121(n)+1-A282604(n)`
-/

namespace A283285.P15695141834300788840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A282604 n)

end

end A283285.P15695141834300788840

/-! ## A283285.P14858787256334971327

`A126646(n)%A282604(A028310(n))`
-/

namespace A283285.P14858787256334971327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126646 n) (A282604 (A028310 n).toNat)

end

end A283285.P14858787256334971327

/-! ## A283285.P16358401524330049413

`A282308(n)+A283375(n)-A282604(n)`
-/

namespace A283285.P16358401524330049413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282308 n + (A283375 n - A282604 n)

end

end A283285.P16358401524330049413

/-! ## A283285.P16614191280939693758

`A282605(n)+A283286(n)-A282604(n)`
-/

namespace A283285.P16614191280939693758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282605 n + (A283286 n - A282604 n)

end

end A283285.P16614191280939693758

/-!
# A283286: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 609", based on the 5-celled von Neumann neighborhood.

The programs for A283286, there is no canonical definition to state claims against.
-/

/-! ## A283286.P3342397657940618643

`and(-A282605(n), A095121(n))`
-/

namespace A283286.P3342397657940618643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A282605 n) (A095121 n)

end

end A283286.P3342397657940618643

/-! ## A283286.P17933662662854788385

`A282307(n)+A283374(n)-A282605(n)`
-/

namespace A283286.P17933662662854788385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282307 n + (A283374 n - A282605 n)

end

end A283286.P17933662662854788385

/-! ## A283286.P6407089238852054802

`A282308(n)+A283375(n)-A282605(n)`
-/

namespace A283286.P6407089238852054802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282308 n + (A283375 n - A282605 n)

end

end A283286.P6407089238852054802

/-! ## A283286.P14916389250426169719

`A282604(n)+A283285(n)-A282605(n)`
-/

namespace A283286.P14916389250426169719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282604 n + (A283285 n - A282605 n)

end

end A283286.P14916389250426169719

/-! ## A283286.P16085888134614593466

`and(A126646(n)*A282605(n), A095121(n))`
-/

namespace A283286.P16085888134614593466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n * A282605 n) (A095121 n)

end

end A283286.P16085888134614593466

/-!
# A283287: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 611", based on the 5-celled von Neumann neighborhood.

The programs for A283287, there is no canonical definition to state claims against.
-/

/-! ## A283287.P2235129889760804633

`A007088(A283289(n))`
-/

namespace A283287.P2235129889760804633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283289 n).toNat

end

end A283287.P2235129889760804633

/-! ## A283287.P3319777687915120064

`A305989(ceil(A283290(n)/2))`
-/

namespace A283287.P3319777687915120064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 ⌈(A283290 n : ℚ) / 2⌉.toNat

end

end A283287.P3319777687915120064

/-! ## A283287.P18051967763775096816

`A305989(A283290(n)/A040001(2*n))`
-/

namespace A283287.P18051967763775096816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A283290 n : ℚ) / (A040001 (2 * n) : ℚ))).toNat

end

end A283287.P18051967763775096816

/-! ## A283287.P589713416318477265

`A185544(2*A283289(n))`
-/

namespace A283287.P589713416318477265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283289 n).toNat

end

end A283287.P589713416318477265

/-! ## A283287.P11400576951023127155

`A185544(lcm(2, A283289(n)))`
-/

namespace A283287.P11400576951023127155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283289 n))

end

end A283287.P11400576951023127155

/-!
# A283288: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 611", based on the 5-celled von Neumann neighborhood.

The programs for A283288, there is no canonical definition to state claims against.
-/

/-! ## A283288.P9959160091171742016

`A007088(A283290(n))`
-/

namespace A283288.P9959160091171742016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283290 n).toNat

end

end A283288.P9959160091171742016

/-! ## A283288.P12633853219518431109

`A185544(2*A283290(n))`
-/

namespace A283288.P12633853219518431109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283290 n).toNat

end

end A283288.P12633853219518431109

/-!
# A283289: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 611", based on the 5-celled von Neumann neighborhood.

The programs for A283289, there is no canonical definition to state claims against.
-/

/-! ## A283289.P17130512341882357454

`A057889(A000265(A283290(n)))`
-/

namespace A283289.P17130512341882357454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A000265 (A283290 n).toNat).toNat

end

end A283289.P17130512341882357454

/-! ## A283289.P2705593225649342712

`A281589(A283290(n)/A040001(n))`
-/

namespace A283289.P2705593225649342712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (SequenceMachineLib.roundAway ((A283290 n : ℚ) / (A040001 n : ℚ))).toNat

end

end A283289.P2705593225649342712

/-! ## A283289.P13871192879541974679

`A325401(A283290(n)/A040001(n))`
-/

namespace A283289.P13871192879541974679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A283290 n : ℚ) / (A040001 n : ℚ))).toNat

end

end A283289.P13871192879541974679

/-! ## A283289.P17677455385034857277

`A030101(A283290(n)/A040001(2*n))`
-/

namespace A283289.P17677455385034857277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A283290 n : ℚ) / (A040001 (2 * n) : ℚ))).toNat

end

end A283289.P17677455385034857277

/-! ## A283289.P9886847515114190589

`A281589(A283290(n))`
-/

namespace A283289.P9886847515114190589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (A283290 n).toNat

end

end A283289.P9886847515114190589

/-!
# A283290: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 611", based on the 5-celled von Neumann neighborhood.

The programs for A283290, there is no canonical definition to state claims against.
-/

/-! ## A283290.P17878352543362318724

`∑[A016002(A016007(n!))]`
-/

namespace A283290.P17878352543362318724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016002 (A016007 (Nat.factorial n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283290.P17878352543362318724

/-! ## A283290.P10827863589833705885

`∑[A245898(p?[A008313(n)])]`
-/

namespace A283290.P10827863589833705885
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008313 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245898 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283290.P10827863589833705885

/-! ## A283290.P1256899154323827153

`∑[A245898(p?[A008482(n)])]`
-/

namespace A283290.P1256899154323827153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008482 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245898 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283290.P1256899154323827153

/-!
# A283291: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 613", based on the 5-celled von Neumann neighborhood.

The programs for A283291, there is no canonical definition to state claims against.
-/

/-! ## A283291.P12386952435013803568

`A007088(A283293(n))`
-/

namespace A283291.P12386952435013803568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283293 n).toNat

end

end A283291.P12386952435013803568

/-! ## A283291.P11812903594576974966

`A185544(2*A283293(n))`
-/

namespace A283291.P11812903594576974966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283293 n).toNat

end

end A283291.P11812903594576974966

/-! ## A283291.P8690767810004541835

`A185544(A283293(n)+A283293(n))`
-/

namespace A283291.P8690767810004541835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A283293 n + A283293 n).toNat

end

end A283291.P8690767810004541835

/-! ## A283291.P7495175058726490535

`A185544(A283293(n)-(A185284(n)-A283293(n)))`
-/

namespace A283291.P7495175058726490535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A283293 n - (A185284 n - A283293 n)).toNat

end

end A283291.P7495175058726490535

/-!
# A283292: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 613", based on the 5-celled von Neumann neighborhood.

The programs for A283292, there is no canonical definition to state claims against.
-/

/-! ## A283292.P10799307689703922758

`A007088(A283294(n))`
-/

namespace A283292.P10799307689703922758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283294 n).toNat

end

end A283292.P10799307689703922758

/-! ## A283292.P12858314186158524134

`A305989(A283293(n))`
-/

namespace A283292.P12858314186158524134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283293 n).toNat

end

end A283292.P12858314186158524134

/-! ## A283292.P4790264971253473468

`A185544(2*A283294(n))`
-/

namespace A283292.P4790264971253473468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283294 n).toNat

end

end A283292.P4790264971253473468

/-! ## A283292.P9733120937091243516

`A185544(lcm(2, A283294(n)))`
-/

namespace A283292.P9733120937091243516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283294 n))

end

end A283292.P9733120937091243516

/-!
# A283293: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 613", based on the 5-celled von Neumann neighborhood.

The programs for A283293, there is no canonical definition to state claims against.
-/

/-! ## A283293.P409957604833355066

`A283389(n)-A184955(A026351(n))`
-/

namespace A283293.P409957604833355066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283389 n - A184955 (A026351 n).toNat

end

end A283293.P409957604833355066

/-! ## A283293.P1135322462476725882

`A283389(n)-A184955(A160165(n))`
-/

namespace A283293.P1135322462476725882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283389 n - A184955 (A160165 n).toNat

end

end A283293.P1135322462476725882

/-! ## A283293.P18419372688700710948

`A283389(n)-A184955(A076521(n+2))`
-/

namespace A283293.P18419372688700710948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283389 n - A184955 (A076521 (n + 2)).toNat

end

end A283293.P18419372688700710948

/-! ## A283293.P15341974341700790133

`A283389(n)-A184955(A281589(3*(n+1)))`
-/

namespace A283293.P15341974341700790133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283389 n - A184955 (A281589 (3 * (n + 1))).toNat

end

end A283293.P15341974341700790133

/-!
# A283294: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 613", based on the 5-celled von Neumann neighborhood.

The programs for A283294, there is no canonical definition to state claims against.
-/

/-! ## A283294.P18342505869080199521

`A283293(n)-A055945(A283293(n))`
-/

namespace A283294.P18342505869080199521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283293 n - A055945 (A283293 n).toNat

end

end A283294.P18342505869080199521

/-! ## A283294.P10368679534260572003

`A030101(A283293(n))`
-/

namespace A283294.P10368679534260572003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A283293 n).toNat

end

end A283294.P10368679534260572003

/-! ## A283294.P4804219872863192525

`A281589(2*A283293(n))`
-/

namespace A283294.P4804219872863192525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A283293 n).toNat

end

end A283294.P4804219872863192525

/-! ## A283294.P8116773023219121124

`A325401(2*A283293(n))`
-/

namespace A283294.P8116773023219121124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A283293 n).toNat

end

end A283294.P8116773023219121124

/-! ## A283294.P18169044312257499631

`A342122(2*A283293(n))`
-/

namespace A283294.P18169044312257499631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342122 (2 * A283293 n).toNat

end

end A283294.P18169044312257499631

/-!
# A283295: Integers n such that floor(n^(3/2)) is squarefree.

The programs for A283295, the canonical program `A283295.P9519186107921099445` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283295 has offset 1).

The definition of A283295 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 898 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283295.P9519186107921099445

`eq[A000007(n), A105570(A000093(n))]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A283295

/-- `eq[A000007(n), A105570(A000093(n))]` -/
def P9519186107921099445.Spec : Prop :=
  ∀ n, (P9519186107921099445.a n : ℤ) = A283295 (n + 1)

theorem P9519186107921099445.correct : P9519186107921099445.Spec := by
  intro n
  simp only [A283295, Nat.add_sub_cancel]

end A283295

/-! ## A283295.P2146874777033217867

`eq[A000038(n), A105570(A000093(n))]`
-/

namespace A283295.P2146874777033217867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A000093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283295.P2146874777033217867

namespace A283295

/-- `eq[A000038(n), A105570(A000093(n))]` -/
def P2146874777033217867.Spec : Prop :=
  ∀ n, (P2146874777033217867.a n : ℤ) = A283295 (n + 1)

end A283295

/-! ## A283295.P17783833077840355625

`record[A028310(n)-A105570(A000093(n))]`
-/

namespace A283295.P17783833077840355625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A105570 (A000093 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283295.P17783833077840355625

namespace A283295

/-- `record[A028310(n)-A105570(A000093(n))]` -/
def P17783833077840355625.Spec : Prop :=
  ∀ n, P17783833077840355625.a n = A283295 (n + 1)

end A283295

/-! ## A283295.P6661331143136723370

`eq[A036987(2*n), A105570(A000093(n))]`
-/

namespace A283295.P6661331143136723370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A000093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283295.P6661331143136723370

namespace A283295

/-- `eq[A036987(2*n), A105570(A000093(n))]` -/
def P6661331143136723370.Spec : Prop :=
  ∀ n, (P6661331143136723370.a n : ℤ) = A283295 (n + 1)

end A283295

/-! ## A283295.P8355574501933631535

`record[A065033(2*n)-A105570(A000093(n))]`
-/

namespace A283295.P8355574501933631535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) - A105570 (A000093 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283295.P8355574501933631535

namespace A283295

/-- `record[A065033(2*n)-A105570(A000093(n))]` -/
def P8355574501933631535.Spec : Prop :=
  ∀ n, P8355574501933631535.a n = A283295 (n + 1)

end A283295

/-! ## A283295.P7593281594887188916

`record[A004277(n)-n-A105570(A000093(n))]`
-/

namespace A283295.P7593281594887188916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - (n : ℤ) - A105570 (A000093 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283295.P7593281594887188916

namespace A283295

/-- `record[A004277(n)-n-A105570(A000093(n))]` -/
def P7593281594887188916.Spec : Prop :=
  ∀ n, P7593281594887188916.a n = A283295 (n + 1)

end A283295

/-! ## A283295.P1172465773136774105

`eq[A105570(A000093(n)), A285700(2*(n+1))]`
-/

namespace A283295.P1172465773136774105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A000093 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285700 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283295.P1172465773136774105

namespace A283295

/-- `eq[A105570(A000093(n)), A285700(2*(n+1))]` -/
def P1172465773136774105.Spec : Prop :=
  ∀ n, (P1172465773136774105.a n : ℤ) = A283295 (n + 1)

end A283295

/-! ## A283295.P12877785684873737710

`eq[1, A255326(A000093(n))]`
-/

namespace A283295.P12877785684873737710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 (A000093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283295.P12877785684873737710

namespace A283295

/-- `eq[1, A255326(A000093(n))]` -/
def P12877785684873737710.Spec : Prop :=
  ∀ n, (P12877785684873737710.a n : ℤ) = A283295 (n + 1)

end A283295

/-! ## A283295.P43885147465980497

`eq[A057427(n), A284345(A000093(n))]`
-/

namespace A283295.P43885147465980497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284345 (A000093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283295.P43885147465980497

namespace A283295

/-- `eq[A057427(n), A284345(A000093(n))]` -/
def P43885147465980497.Spec : Prop :=
  ∀ n, (P43885147465980497.a n : ℤ) = A283295 (n + 1)

end A283295

/-!
# A283296: Integers n such that floor(n^(3/2)) is cubefree.

The programs for A283296, there is no canonical definition to state claims against.
-/

/-! ## A283296.P18156303558330711440

`eq[A057427(n), A294333(A000093(n))]`
-/

namespace A283296.P18156303558330711440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294333 (A000093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283296.P18156303558330711440

/-! ## A283296.P711472815910934415

`eq[A158388(n), A294333(A000093(n))]`
-/

namespace A283296.P711472815910934415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294333 (A000093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283296.P711472815910934415

/-! ## A283296.P14443269675036360672

`eq[A294333(A000093(n))², A056926(n)]`
-/

namespace A283296.P14443269675036360672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294333 (A000093 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283296.P14443269675036360672

/-! ## A283296.P17533759644237159923

`eq[A165471(n)², A294333(A000093(n))]`
-/

namespace A283296.P17533759644237159923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294333 (A000093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283296.P17533759644237159923

/-! ## A283296.P5281703216114597947

`eq[A000038(n)!, A294333(A000093(n))]`
-/

namespace A283296.P5281703216114597947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294333 (A000093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283296.P5281703216114597947

/-! ## A283296.P4139613205363898059

`eq[A019428(2*n), A294333(A000093(n))]`
-/

namespace A283296.P4139613205363898059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294333 (A000093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283296.P4139613205363898059

/-! ## A283296.P16320614038494433633

`eq[A166333(2*n+1), A294333(A000093(n))]`
-/

namespace A283296.P16320614038494433633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294333 (A000093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283296.P16320614038494433633

/-! ## A283296.P6424920284380770634

`record[A123108(2*n)/A294333(A000093(n))²]`
-/

namespace A283296.P6424920284380770634
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123108 (2 * n) : ℚ) / (A294333 (A000093 n).toNat ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283296.P6424920284380770634

/-! ## A283296.P17458128826138342874

`record[(A004275(n+1)-n)/A294333(A000093(n))]`
-/

namespace A283296.P17458128826138342874
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004275 (n + 1) - (n : ℤ) : ℚ) / (A294333 (A000093 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283296.P17458128826138342874

/-! ## A283296.P9772475126569369425

`eq[A294333(A000093(n))², A178334(n)]`
-/

namespace A283296.P9772475126569369425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294333 (A000093 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283296.P9772475126569369425

/-!
# A283297: The smallest cardinality of a difference-basis in the cyclic group of order n.

The programs for A283297, there is no canonical definition to state claims against.
-/

/-! ## A283297.P4729299169668638002

`A000196(A000408(n+1)-A147602(n))`
-/

namespace A283297.P4729299169668638002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000408 (n + 1) - A147602 n).toNat

end

end A283297.P4729299169668638002

/-! ## A283297.P12306124451058390406

`ceil(A274701(A016778(n))/A000267(n))`
-/

namespace A283297.P12306124451058390406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A274701 (A016778 n).toNat : ℚ) / (A000267 n : ℚ)⌉

end

end A283297.P12306124451058390406

/-!
# A283298: Diagonal of the Euler-Seidel matrix for the Catalan numbers.

The programs for A283298, there is no canonical definition to state claims against.
-/

/-! ## A283298.P12008376451762155978

`A055450(A062708(n))`
-/

namespace A283298.P12008376451762155978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055450 (A062708 n).toNat

end

end A283298.P12008376451762155978

/-! ## A283298.P2168585072698627572

`A055450(A051682(n)+n)`
-/

namespace A283298.P2168585072698627572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055450 (A051682 n + (n : ℤ)).toNat

end

end A283298.P2168585072698627572

/-! ## A283298.P14230929645249828070

`A106534(∑[4*n])`
-/

namespace A283298.P14230929645249828070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106534 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283298.P14230929645249828070

/-! ## A283298.P960450252750900780

`record[A003982(n)*A106534(n)]`
-/

namespace A283298.P960450252750900780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A106534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283298.P960450252750900780

/-! ## A283298.P6715159030861880010

`record[gcd(A106534(n), A114327(n))]`
-/

namespace A283298.P6715159030861880010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106534 n) (A114327 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283298.P6715159030861880010

